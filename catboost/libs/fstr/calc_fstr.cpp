#include "calc_fstr.h"

#include "compare_documents.h"
#include "feature_str.h"
#include "shap_values.h"
#include "util.h"

#include <catboost/libs/algo/apply.h>
#include <catboost/libs/algo/plot.h>
#include <catboost/libs/algo/yetirank_helpers.h>
#include <catboost/libs/algo/tree_print.h>
#include <catboost/libs/helpers/exception.h>
#include <catboost/libs/helpers/query_info_helper.h>
#include <catboost/libs/logging/logging.h>
#include <catboost/libs/logging/profile_info.h>
#include <catboost/libs/loggers/logger.h>
#include <catboost/libs/options/enum_helpers.h>
#include <catboost/libs/options/json_helper.h>
#include <catboost/libs/options/restrictions.h>
#include <catboost/libs/target/data_providers.h>

#include <util/generic/algorithm.h>
#include <util/generic/hash.h>
#include <util/generic/xrange.h>
#include <util/string/builder.h>
#include <util/string/cast.h>
#include <util/system/compiler.h>

#include <cmath>
#include <functional>


using namespace NCB;


static TVector<TFeature>  GetCombinationClassFeatures(const TObliviousTrees& forest) {
    NCB::TFeaturesLayout layout(forest.FloatFeatures, forest.CatFeatures);
    TVector<std::pair<TVector<int>, TFeature>> featuresCombinations;

    for (const TFloatFeature& floatFeature : forest.FloatFeatures) {
        if (!floatFeature.UsedInModel()) {
            continue;
        }
        featuresCombinations.emplace_back();
        featuresCombinations.back().first = { floatFeature.Position.FlatIndex };
        featuresCombinations.back().second = TFeature(floatFeature);
    }
    for (const TOneHotFeature& oneHotFeature: forest.OneHotFeatures) {
        featuresCombinations.emplace_back();
        featuresCombinations.back().first = {
                (int)layout.GetExternalFeatureIdx(oneHotFeature.CatFeatureIndex,
                                                  EFeatureType::Categorical)
        };
        featuresCombinations.back().second = TFeature(oneHotFeature);
    }
    for (const TCtrFeature& ctrFeature : forest.CtrFeatures) {
        const TFeatureCombination& combination = ctrFeature.Ctr.Base.Projection;
        featuresCombinations.emplace_back();
        for (int catFeatureIdx : combination.CatFeatures) {
            featuresCombinations.back().first.push_back(
                    layout.GetExternalFeatureIdx(catFeatureIdx, EFeatureType::Categorical));
        }
        featuresCombinations.back().second = TFeature(ctrFeature);
    }
    TVector<int> sortedBinFeatures(featuresCombinations.size());
    Iota(sortedBinFeatures.begin(), sortedBinFeatures.end(), 0);
    Sort(
            sortedBinFeatures.begin(),
            sortedBinFeatures.end(),
            [featuresCombinations](int feature1, int feature2) {
                return featuresCombinations[feature1].first < featuresCombinations[feature2].first;
            }
    );
    TVector<TFeature> combinationClassFeatures;

    for (ui32 featureIdx = 0; featureIdx < featuresCombinations.size(); ++featureIdx) {
        int currentFeature = sortedBinFeatures[featureIdx];
        int previousFeature = featureIdx == 0 ? -1 : sortedBinFeatures[featureIdx - 1];
        if (featureIdx == 0 || featuresCombinations[currentFeature].first != featuresCombinations[previousFeature].first) {
            combinationClassFeatures.push_back(featuresCombinations[currentFeature].second);
        }
    }
    return combinationClassFeatures;
}

static TVector<TMxTree> BuildTrees(
    const THashMap<TFeature, int, TFeatureHash>& featureToIdx,
    const TFullModel& model)
{
    TVector<TMxTree> trees(model.GetTreeCount());
    auto& binFeatures = model.ObliviousTrees->GetBinFeatures();
    for (int treeIdx = 0; treeIdx < trees.ysize(); ++treeIdx) {
        auto& tree = trees[treeIdx];
        const int leafCount = (1uLL << model.ObliviousTrees->TreeSizes[treeIdx]);

        tree.Leaves.resize(leafCount);
        for (int leafIdx = 0; leafIdx < leafCount; ++leafIdx) {
            tree.Leaves[leafIdx].Vals.resize(model.ObliviousTrees->ApproxDimension);
        }
        auto firstTreeLeafPtr = model.ObliviousTrees->GetFirstLeafPtrForTree(treeIdx);
        for (int leafIdx = 0; leafIdx < leafCount; ++leafIdx) {
            for (int dim = 0; dim < model.ObliviousTrees->ApproxDimension; ++dim) {
                tree.Leaves[leafIdx].Vals[dim] = firstTreeLeafPtr[leafIdx
                    * model.ObliviousTrees->ApproxDimension + dim];
            }
        }
        auto treeSplitsStart = model.ObliviousTrees->TreeStartOffsets[treeIdx];
        auto treeSplitsStop = treeSplitsStart + model.ObliviousTrees->TreeSizes[treeIdx];
        for (auto splitIdx = treeSplitsStart; splitIdx < treeSplitsStop; ++splitIdx) {
            auto feature = GetFeature(binFeatures[model.ObliviousTrees->TreeSplits[splitIdx]]);
            tree.SrcFeatures.push_back(featureToIdx.at(feature));
        }
    }
    return trees;
}

static THashMap<TFeature, int, TFeatureHash> GetFeatureToIdxMap(
    const TFullModel& model,
    TVector<TFeature>* features)
{
    THashMap<TFeature, int, TFeatureHash> featureToIdx;
    const auto& modelBinFeatures = model.ObliviousTrees->GetBinFeatures();
    for (auto binSplit : model.ObliviousTrees->TreeSplits) {
        TFeature feature = GetFeature(modelBinFeatures[binSplit]);
        if (featureToIdx.contains(feature)) {
            continue;
        }
        int featureIdx = featureToIdx.ysize();
        featureToIdx[feature] = featureIdx;
        features->push_back(feature);
    }
    return featureToIdx;
}

static const TDataProvider GetSubset(
        const TDataProvider& dataset,
        ui32 maxDocumentCount,
        NPar::TLocalExecutor* localExecutor
) {
    auto documentCount = dataset.ObjectsData->GetObjectCount();

    if (documentCount > maxDocumentCount) {
        ui32 foldCount = documentCount / maxDocumentCount;

        TVector<NCB::TArraySubsetIndexing<ui32>> testSubsets;

        testSubsets = NCB::Split(*dataset.ObjectsGrouping, foldCount, /*oldCvStyleSplit*/ true);

        auto subset = dataset.GetSubset(
                GetSubset(
                        dataset.ObjectsGrouping,
                        std::move(testSubsets[0]),
                        NCB::EObjectsOrder::Ordered
                ),
                localExecutor
        );
        return *subset.Get();
    } else {
        return dataset;
    }
}

static TVector<std::pair<double, TFeature>> CalcFeatureEffectAverageChange(
    const TFullModel& model,
    const TDataProviderPtr dataset,
    NPar::TLocalExecutor* localExecutor)
{
    if (model.GetTreeCount() == 0) {
        return TVector<std::pair<double, TFeature>>();
    }
    TVector<double> effect;
    TVector<TFeature> features;

    TVector<TVector<double>> leavesStatisticsOnPool;
    if (model.ObliviousTrees->LeafWeights.empty()) {
        CB_ENSURE(dataset, "CalcFeatureEffect requires either non-empty LeafWeights in model"
            " or provided dataset");
        CB_ENSURE(dataset->GetObjectCount() != 0, "no docs in pool");
        CB_ENSURE(dataset->MetaInfo.GetFeatureCount() > 0, "no features in pool");

        leavesStatisticsOnPool = CollectLeavesStatistics(*dataset, model, localExecutor);
    } else {
        if (dataset) {
            CATBOOST_NOTICE_LOG << "Dataset is provided, but not used, because importance values are cached in the model." << Endl;
        }
    }

    THashMap<TFeature, int, TFeatureHash> featureToIdx = GetFeatureToIdxMap(model, &features);
    if(model.IsOblivious()) {
        TVector<TMxTree> trees = BuildTrees(featureToIdx, model);
        effect = CalcEffect(
            trees,
            model.ObliviousTrees->LeafWeights.empty() ? leavesStatisticsOnPool : model.ObliviousTrees->LeafWeights
        );
    } else {
        effect = CalcEffect(
            model,
            featureToIdx,
             model.ObliviousTrees->LeafWeights.empty() ? leavesStatisticsOnPool : model.ObliviousTrees->LeafWeights
        );
    }

    TVector<std::pair<double, int>> effectWithFeature;
    for (int i = 0; i < effect.ysize(); ++i) {
        effectWithFeature.emplace_back(effect[i], i);
    }
    Sort(effectWithFeature.begin(), effectWithFeature.end(), std::greater<std::pair<double, int>>());

    TVector<std::pair<double, TFeature>> result;
    for (int i = 0; i < effectWithFeature.ysize(); ++i) {
        result.emplace_back(effectWithFeature[i].first, features[effectWithFeature[i].second]);
    }
    return result;
}

static bool TryGetLossDescription(const TFullModel& model, NCatboostOptions::TLossDescription& lossDescription) {
    if (!(model.ModelInfo.contains("loss_function") ||  model.ModelInfo.contains("params") && ReadTJsonValue(model.ModelInfo.at("params")).Has("loss_function"))) {
        return false;
    }
    if (model.ModelInfo.contains("loss_function")) {
        lossDescription.Load(ReadTJsonValue(model.ModelInfo.at("loss_function")));
    } else {
        lossDescription.Load(ReadTJsonValue(model.ModelInfo.at("params"))["loss_function"]);
    }
    return true;
}

static bool TryGetObjectiveMetric(const TFullModel& model, NCatboostOptions::TLossDescription& lossDescription) {
    if (model.ModelInfo.contains("params")) {
        const auto &params = ReadTJsonValue(model.ModelInfo.at("params"));
        if (params.Has("metrics") && params["metrics"].Has("objective_metric")) {
            lossDescription.Load(params["metrics"]["objective_metric"]);
            return true;
        }
    }
    return TryGetLossDescription(model, lossDescription);
}

static TVector<std::pair<double, TFeature>> CalcFeatureEffectLossChange(
        const TFullModel& model,
        const TDataProvider& dataProvider,
        NPar::TLocalExecutor* localExecutor)
{
    NCatboostOptions::TLossDescription metricDescription;
    CB_ENSURE(TryGetObjectiveMetric(model, metricDescription), "Cannot calculate LossFunctionChange feature importances without metric, need model with params");
    CATBOOST_INFO_LOG << "Used " << metricDescription << " metric for fstr calculation" << Endl;
    int approxDimension = model.ObliviousTrees->ApproxDimension;

    auto combinationClassFeatures = GetCombinationClassFeatures(*model.ObliviousTrees);
    int featuresCount = combinationClassFeatures.size();
    if (featuresCount == 0) {
        TVector<std::pair<double, TFeature>> result;
        return result;
    }

    ui32 totalDocumentCount = dataProvider.ObjectsData->GetObjectCount();
    ui32 maxDocuments = Min(totalDocumentCount, Max(ui32(2e5), ui32(2e9 / dataProvider.ObjectsData->GetFeaturesLayout()->GetExternalFeatureCount())));

    const auto dataset = GetSubset(dataProvider, maxDocuments, localExecutor);

    ui32 documentCount = dataset.ObjectsData->GetObjectCount();
    const TObjectsDataProvider& objectsData = *dataset.ObjectsData;

    CATBOOST_INFO_LOG << "Selected " << documentCount << " documents from " << totalDocumentCount << " for LossFunctionChange calculation." << Endl;

    TRestorableFastRng64 rand(0);
    auto targetData = CreateModelCompatibleProcessedDataProvider(dataset, {metricDescription}, model, &rand, localExecutor).TargetData;
    TShapPreparedTrees preparedTrees = PrepareTrees(model, &dataset, 0, EPreCalcShapValues::Auto, localExecutor, true);

    TVector<TMetricHolder> scores(featuresCount + 1);

    TConstArrayRef<TQueryInfo> targetQueriesInfo = targetData->GetGroupInfo().GetOrElse(TConstArrayRef<TQueryInfo>());
    TVector<TVector<double>> approx = ApplyModelMulti(model, objectsData, EPredictionType::RawFormulaVal, 0, documentCount,
                                                      localExecutor);
    TVector<TQueryInfo> queriesInfo(targetQueriesInfo.begin(), targetQueriesInfo.end());

    ui32 blockCount = queriesInfo.empty() ? documentCount : queriesInfo.size();
    ui32 blockSize = Min(ui32(10000), ui32(1e6) / (featuresCount * approx.ysize())); // shapValues[blockSize][featuresCount][dim] double

    NCatboostOptions::TLossDescription lossDescription;
    CB_ENSURE(TryGetLossDescription(model, lossDescription), "No loss_function in model params");

    // NDCG and PFound metrics are possible for YetiRank
    // PFound replace with PairLogit (with YetiRank generated pairs) due to quality
    // NDCG used for labels not in [0., 1.] and don't use YetiRank pairs
    bool needYetiRankPairs = IsYetiRankLossFunction(lossDescription.GetLossFunction())
                             && metricDescription.LossFunction != ELossFunction::NDCG;
    if (needYetiRankPairs) {
        metricDescription = NCatboostOptions::ParseLossDescription("PairLogit");
        ui32 maxQuerySize = 0;
        for (const auto& query : queriesInfo) {
            maxQuerySize = Max(maxQuerySize, query.GetSize());
        }
        blockSize = Min(blockSize, ui32(ceil(20000. / maxQuerySize)));
    }
    THolder<IMetric> metric = std::move(CreateMetricFromDescription(metricDescription, approxDimension)[0]);
    CB_ENSURE(metric->IsAdditiveMetric(), "LossFunctionChange support only additive metric");

    TProfileInfo profile(documentCount);
    TImportanceLogger importanceLogger(documentCount, "Process documents", "Started LossFunctionChange calculation", 1);
    for (ui32 queryBegin = 0; queryBegin < blockCount; queryBegin += blockSize) {
        profile.StartIterationBlock();
        ui32 queryEnd = Min(blockCount, queryBegin + blockSize);
        ui32 begin, end;
        if (queriesInfo.empty()) {
            begin = queryBegin;
            end = queryEnd;
        } else {
            begin = queriesInfo[queryBegin].Begin;
            end = queriesInfo[queryEnd - 1].End;
        }
        if (needYetiRankPairs) {
            UpdatePairsForYetiRank(
                approx[0],
                *targetData->GetTarget(),
                lossDescription,
                /*randomSeed*/ 0,
                queryBegin,
                queryEnd,
                &queriesInfo,
                localExecutor
            );
        }
        scores.back().Add(
            metric->Eval(approx, *targetData->GetTarget(), GetWeights(*targetData), queriesInfo, queryBegin, queryEnd, *localExecutor)
        );
        TVector<TVector<TVector<double>>> shapValues;
        CalcShapValuesInternalForFeature(
            preparedTrees,
            model,
            0,
            begin,
            end,
            featuresCount,
            objectsData,
            &shapValues,
            localExecutor);

        for (int featureIdx = 0; featureIdx < featuresCount; ++featureIdx) {
            NPar::TLocalExecutor::TExecRangeParams blockParams(begin, end);
            blockParams.SetBlockCountToThreadCount();
            localExecutor->ExecRange([&](ui32 docIdx) {
                for (int dimensionIdx = 0; dimensionIdx < approxDimension; ++dimensionIdx) {
                    approx[dimensionIdx][docIdx] -= shapValues[docIdx - begin][featureIdx][dimensionIdx];
                }
            }, blockParams, NPar::TLocalExecutor::WAIT_COMPLETE);
            scores[featureIdx].Add(
                    metric->Eval(approx, *targetData->GetTarget(), GetWeights(*targetData), queriesInfo, queryBegin, queryEnd,
                                 *localExecutor)
            );
            localExecutor->ExecRange([&](ui32 docIdx) {
                for (int dimensionIdx = 0; dimensionIdx < approxDimension; ++dimensionIdx) {
                    approx[dimensionIdx][docIdx] += shapValues[docIdx - begin][featureIdx][dimensionIdx];
                }
            }, blockParams, NPar::TLocalExecutor::WAIT_COMPLETE);
        }
        if (needYetiRankPairs) {
            for (ui32 queryIndex = queryBegin; queryIndex < queryEnd; ++queryIndex) {
                queriesInfo[queryIndex].Competitors.clear();
                queriesInfo[queryIndex].Competitors.shrink_to_fit();
            }
        }
        profile.FinishIterationBlock(end - begin);
        importanceLogger.Log(profile.GetProfileResults());
    }

    TVector<std::pair<double, int>> featureScore(featuresCount);

    EMetricBestValue valueType;
    float bestValue;
    metric->GetBestValue(&valueType, &bestValue);
    for (int idx = 0; idx < featuresCount; ++idx) {
        double score = metric->GetFinalError(scores[idx]) - metric->GetFinalError(scores.back());
        switch(valueType) {
            case EMetricBestValue::Min:
                break;
            case EMetricBestValue::Max:
                score = -score;
                break;
            case EMetricBestValue::FixedValue:
                score = abs(metric->GetFinalError(scores[idx]) - bestValue) - abs(metric->GetFinalError(scores.back()) - bestValue);
            default:
                ythrow TCatBoostException() << "unsupported bestValue metric type";
        }
        featureScore[idx].first = score;
        featureScore[idx].second = idx;
    }
    Sort(featureScore.begin(), featureScore.end(), std::greater<std::pair<double, int>>());
    TVector<std::pair<double, TFeature>> result;

    for (const auto& score: featureScore) {
        result.emplace_back();
        result.back().first = score.first;
        result.back().second = combinationClassFeatures[score.second];
    }
    return result;
}

TVector<std::pair<double, TFeature>> CalcFeatureEffect(
        const TFullModel& model,
        const TDataProviderPtr dataset,
        EFstrType type,
        NPar::TLocalExecutor* localExecutor)
{
    type = GetFeatureImportanceType(model, bool(dataset), type);
    if (type == EFstrType::LossFunctionChange) {
        CB_ENSURE(dataset, "dataset is not provided");
        CB_ENSURE(model.IsOblivious(), "LossFunctionChange supported only for symmetric trees");
        return CalcFeatureEffectLossChange(model, *dataset.Get(), localExecutor);
    } else {
        return CalcFeatureEffectAverageChange(model, dataset, localExecutor);
    }
}

TVector<TFeatureEffect> CalcRegularFeatureEffect(
    const TVector<std::pair<double, TFeature>>& internalEffect,
    int catFeaturesCount,
    int floatFeaturesCount)
{
    TVector<double> catFeatureEffect(catFeaturesCount);
    TVector<double> floatFeatureEffect(floatFeaturesCount);

    for (const auto& effectWithSplit : internalEffect) {
        TFeature feature = effectWithSplit.second;
        switch (feature.Type) {
            case ESplitType::FloatFeature:
                floatFeatureEffect[feature.FeatureIdx] += effectWithSplit.first;
                break;
            case ESplitType::OneHotFeature:
                catFeatureEffect[feature.FeatureIdx] += effectWithSplit.first;
                break;
            case ESplitType::OnlineCtr:
                auto& proj = feature.Ctr.Base.Projection;
                int featuresInSplit = proj.BinFeatures.ysize() + proj.CatFeatures.ysize()
                    + proj.OneHotFeatures.ysize();
                double addEffect = effectWithSplit.first / featuresInSplit;
                for (const auto& binFeature : proj.BinFeatures) {
                    floatFeatureEffect[binFeature.FloatFeature] += addEffect;
                }
                for (auto catIndex : proj.CatFeatures) {
                    catFeatureEffect[catIndex] += addEffect;
                }
                for (auto oneHotFeature : proj.OneHotFeatures) {
                    catFeatureEffect[oneHotFeature.CatFeatureIdx] += addEffect;
                }
                break;
        }
    }

    TVector<TFeatureEffect> regularFeatureEffect;
    for (int i = 0; i < catFeatureEffect.ysize(); ++i) {
        regularFeatureEffect.push_back(
            TFeatureEffect(catFeatureEffect[i], EFeatureType::Categorical, i));
    }
    for (int i = 0; i < floatFeatureEffect.ysize(); ++i) {
        regularFeatureEffect.push_back(
            TFeatureEffect(floatFeatureEffect[i], EFeatureType::Float, i));
    }

    Sort(
        regularFeatureEffect.rbegin(),
        regularFeatureEffect.rend(),
        [](const TFeatureEffect& left, const TFeatureEffect& right) {
            return left.Score < right.Score ||
                (left.Score == right.Score && left.Feature.Index > right.Feature.Index);
        });
    return regularFeatureEffect;
}

TVector<double> CalcRegularFeatureEffect(
    const TFullModel& model,
    const TDataProviderPtr dataset,
    EFstrType type,
    NPar::TLocalExecutor* localExecutor)
{
    const NCB::TFeaturesLayout layout(
        model.ObliviousTrees->FloatFeatures,
        model.ObliviousTrees->CatFeatures);

    TVector<TFeatureEffect> regularEffect = CalcRegularFeatureEffect(
        CalcFeatureEffect(model, dataset, type, localExecutor),
        model.GetNumCatFeatures(),
        model.GetNumFloatFeatures());

    TVector<double> effect(layout.GetExternalFeatureCount());
    for (const auto& featureEffect : regularEffect) {
        int externalFeatureIdx = layout.GetExternalFeatureIdx(
            featureEffect.Feature.Index,
            featureEffect.Feature.Type);
        effect[externalFeatureIdx] = featureEffect.Score;
    }

    return effect;
}

TVector<TInternalFeatureInteraction> CalcInternalFeatureInteraction(const TFullModel& model) {
    if (model.GetTreeCount() == 0) {
        return TVector<TInternalFeatureInteraction>();
    }

    TVector<TFeature> features;
    THashMap<TFeature, int, TFeatureHash> featureToIdx = GetFeatureToIdxMap(model, &features);
    TVector<TMxTree> trees = BuildTrees(featureToIdx, model);

    TVector<TFeaturePairInteractionInfo> pairwiseEffect = CalcMostInteractingFeatures(trees);
    TVector<TInternalFeatureInteraction> result;
    result.reserve(pairwiseEffect.size());
    for (const auto& efffect : pairwiseEffect) {
        result.emplace_back(efffect.Score, features[efffect.Feature1], features[efffect.Feature2]);
    }
    return result;
}

TVector<TFeatureInteraction> CalcFeatureInteraction(
    const TVector<TInternalFeatureInteraction>& internalFeatureInteraction,
    const NCB::TFeaturesLayout& layout)
{
    THashMap<std::pair<int, int>, double> sumInteraction;
    double totalEffect = 0;

    for (const auto& effectWithFeaturePair : internalFeatureInteraction) {
        TVector<TFeature> features{effectWithFeaturePair.FirstFeature, effectWithFeaturePair.SecondFeature};

        TVector<TVector<int>> internalToRegular;
        for (const auto& internalFeature : features) {
            TVector<int> regularFeatures;
            if (internalFeature.Type == ESplitType::FloatFeature) {
                regularFeatures.push_back(
                    layout.GetExternalFeatureIdx(internalFeature.FeatureIdx, EFeatureType::Float));
            } else {
                auto proj = internalFeature.Ctr.Base.Projection;
                for (auto& binFeature : proj.BinFeatures) {
                    regularFeatures.push_back(
                        layout.GetExternalFeatureIdx(binFeature.FloatFeature, EFeatureType::Float));
                }
                for (auto catFeature : proj.CatFeatures) {
                    regularFeatures.push_back(
                        layout.GetExternalFeatureIdx(catFeature, EFeatureType::Categorical));
                }
            }
            internalToRegular.push_back(regularFeatures);
        }

        double effect = effectWithFeaturePair.Score;
        for (int f0 : internalToRegular[0]) {
            for (int f1 : internalToRegular[1]) {
                if (f0 == f1) {
                    continue;
                }
                if (f1 < f0) {
                    DoSwap(f0, f1);
                }
                sumInteraction[std::make_pair(f0, f1)] += effect
                    / (internalToRegular[0].ysize() * internalToRegular[1].ysize());
            }
        }
        totalEffect += effect;
    }

    TVector<TFeatureInteraction> regularFeatureEffect;
    for (const auto& pairInteraction : sumInteraction) {
        int f0 = pairInteraction.first.first;
        int f1 = pairInteraction.first.second;
        regularFeatureEffect.push_back(
            TFeatureInteraction(
                sumInteraction[pairInteraction.first] / totalEffect * 100,
                layout.GetExternalFeatureType(f0),
                layout.GetInternalFeatureIdx(f0),
                layout.GetExternalFeatureType(f1),
                layout.GetInternalFeatureIdx(f1)));
    }

    Sort(
        regularFeatureEffect.rbegin(),
        regularFeatureEffect.rend(),
        [](const TFeatureInteraction& left, const TFeatureInteraction& right) {
            return left.Score < right.Score;
        });
    return regularFeatureEffect;
}

static TVector<TVector<double>> CalcFstr(
    const TFullModel& model,
    const TDataProviderPtr dataset,
    EFstrType type,
    NPar::TLocalExecutor* localExecutor)
{
    CB_ENSURE(
        !model.ObliviousTrees->LeafWeights.empty() || (dataset != nullptr),
        "CalcFstr requires either non-empty LeafWeights in model or provided dataset");

    TVector<double> regularEffect = CalcRegularFeatureEffect(model, dataset, type, localExecutor);
    TVector<TVector<double>> result;
    for (const auto& value : regularEffect){
        TVector<double> vec = {value};
        result.push_back(vec);
    }
    return result;
}

TVector<TVector<double>> CalcInteraction(const TFullModel& model) {
    const TFeaturesLayout layout(
        model.ObliviousTrees->FloatFeatures,
        model.ObliviousTrees->CatFeatures);

    TVector<TInternalFeatureInteraction> internalInteraction = CalcInternalFeatureInteraction(model);
    TVector<TFeatureInteraction> interaction = CalcFeatureInteraction(internalInteraction, layout);
    TVector<TVector<double>> result;
    for (const auto& value : interaction){
        int featureIdxFirst = layout.GetExternalFeatureIdx(value.FirstFeature.Index, value.FirstFeature.Type);
        int featureIdxSecond = layout.GetExternalFeatureIdx(
            value.SecondFeature.Index,
            value.SecondFeature.Type);
        TVector<double> vec = {
            static_cast<double>(featureIdxFirst),
            static_cast<double>(featureIdxSecond),
            value.Score
        };
        result.push_back(vec);
    }
    return result;
}


static bool AllFeatureIdsEmpty(TConstArrayRef<TFeatureMetaInfo> featuresMetaInfo) {
    return AllOf(
        featuresMetaInfo.begin(),
        featuresMetaInfo.end(),
        [](const auto& featureMetaInfo) { return featureMetaInfo.Name.empty(); }
    );
}


TVector<TVector<double>> GetFeatureImportances(
    const EFstrType fstrType,
    const TFullModel& model,
    const TDataProviderPtr dataset, // can be nullptr
    int threadCount,
    EPreCalcShapValues mode,
    int logPeriod)
{
    TSetLoggingVerboseOrSilent inThisScope(logPeriod);
    CB_ENSURE(model.GetTreeCount(), "Model is not trained");

    switch (fstrType) {
        case EFstrType::PredictionValuesChange:
        case EFstrType::LossFunctionChange:
        case EFstrType::FeatureImportance: {
            NPar::TLocalExecutor localExecutor;
            localExecutor.RunAdditionalThreads(threadCount - 1);

            return CalcFstr(model, dataset, fstrType, &localExecutor);
        }
        case EFstrType::Interaction:
            if (dataset) {
                CATBOOST_NOTICE_LOG << "Dataset is provided, but not used, because importance values are cached in the model." << Endl;
            }
            return CalcInteraction(model);
        case EFstrType::ShapValues: {
            CB_ENSURE(dataset, "dataset is not provided");

            NPar::TLocalExecutor localExecutor;
            localExecutor.RunAdditionalThreads(threadCount - 1);

            return CalcShapValues(model, *dataset, logPeriod, mode, &localExecutor);
        }
        case EFstrType::PredictionDiff: {
            NPar::TLocalExecutor localExecutor;
            localExecutor.RunAdditionalThreads(threadCount - 1);

            CB_ENSURE(dataset, "Documents for comparison are not provided");
            return GetPredictionDiff(model, *dataset, &localExecutor);
        }
        default:
            Y_UNREACHABLE();
    }
}

TVector<TVector<TVector<double>>> GetFeatureImportancesMulti(
    const EFstrType fstrType,
    const TFullModel& model,
    const TDataProviderPtr dataset,
    int threadCount,
    EPreCalcShapValues mode,
    int logPeriod)
{
    TSetLoggingVerboseOrSilent inThisScope(logPeriod);
    CB_ENSURE(model.GetTreeCount(), "Model is not trained");

    CB_ENSURE(fstrType == EFstrType::ShapValues, "Only shap values can provide multi approxes.");

    CB_ENSURE(dataset, "dataset is not provided");

    NPar::TLocalExecutor localExecutor;
    localExecutor.RunAdditionalThreads(threadCount - 1);

    return CalcShapValuesMulti(model, *dataset, logPeriod, mode, &localExecutor);
}

TVector<TString> GetMaybeGeneratedModelFeatureIds(const TFullModel& model, const TDataProviderPtr dataset) {
    const NCB::TFeaturesLayout modelFeaturesLayout(
        model.ObliviousTrees->FloatFeatures,
        model.ObliviousTrees->CatFeatures);
    TVector<TString> modelFeatureIds(modelFeaturesLayout.GetExternalFeatureCount());
    if (AllFeatureIdsEmpty(modelFeaturesLayout.GetExternalFeaturesMetaInfo())) {
        if (dataset) {
            const auto& datasetFeaturesLayout = *dataset->MetaInfo.FeaturesLayout;
            const auto datasetFeaturesMetaInfo = datasetFeaturesLayout.GetExternalFeaturesMetaInfo();
            if (!AllFeatureIdsEmpty(datasetFeaturesMetaInfo)) {
                CB_ENSURE(
                    datasetFeaturesMetaInfo.size() >= modelFeatureIds.size(),
                    "dataset has less features than the model"
                );
                for (auto i : xrange(modelFeatureIds.size())) {
                    modelFeatureIds[i] = datasetFeaturesMetaInfo[i].Name;
                }
            }
        }
    } else {
        modelFeatureIds = modelFeaturesLayout.GetExternalFeatureIds();
    }
    for (size_t i = 0; i < modelFeatureIds.size(); ++i) {
        if (modelFeatureIds[i].empty()) {
            modelFeatureIds[i] = ToString(i);
        }
    }
    return modelFeatureIds;
}

EFstrType GetFeatureImportanceType(
    const TFullModel& model,
    bool haveDataset,
    EFstrType type)
{
    if (type == EFstrType::FeatureImportance) {
        const auto& lossName = model.GetLossFunctionName();
        if (lossName) {
            if (IsGroupwiseMetric(lossName)) {
                if (haveDataset) {
                    return EFstrType::LossFunctionChange;
                } else {
                    CATBOOST_WARNING_LOG << "Can't calculate LossFunctionChange feature importance without dataset for ranking metric,"
                                            " will use PredictionValuesChange feature importance" << Endl;
                }
            }
        } else {
            CATBOOST_WARNING_LOG << "Optimized objective is not known,"
                                    " so use PredictionValuesChange for feature importance." << Endl;
        }
        return EFstrType::PredictionValuesChange;
    } else {
        return type;
    }
}
