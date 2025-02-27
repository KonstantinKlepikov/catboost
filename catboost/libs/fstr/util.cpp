#include "util.h"

#include <catboost/libs/algo/features_data_helpers.h>
#include <catboost/libs/algo/index_calcer.h>
#include <catboost/libs/helpers/exception.h>
#include <catboost/libs/model/cpu/evaluator.h>
#include <catboost/libs/options/json_helper.h>
#include <catboost/libs/target/data_providers.h>

#include <util/generic/mapfindptr.h>


using namespace NCB;


TVector<TVector<double>> CollectLeavesStatistics(
    const NCB::TDataProvider& dataset,
    const TFullModel& model,
    NPar::TLocalExecutor* localExecutor) {

    TConstArrayRef<float> weights;

    if (const auto* modelInfoParams = MapFindPtr(model.ModelInfo, "params")) {
        NJson::TJsonValue paramsJson = ReadTJsonValue(*modelInfoParams);
        if (paramsJson.Has("loss_function")) {
            TRestorableFastRng64 rand(0);

            TProcessedDataProvider processedData = CreateModelCompatibleProcessedDataProvider(
                dataset,
                {},
                model,
                &rand,
                localExecutor);

            weights = GetWeights(*processedData.TargetData);
        }
    }

    // If it is impossible to get properly adjusted weights use raw weights from RawTargetData
    if (weights.empty()) {
        const TWeights<float>& rawWeights = dataset.RawTargetData.GetWeights();
        if (!rawWeights.IsTrivial()) {
            weights = rawWeights.GetNonTrivialData();
        }
    }

    size_t treeCount;
    TVector<TVector<double>> leavesStatistics;
    if (model.IsOblivious()) {
        treeCount = model.GetTreeCount();
        leavesStatistics.resize(treeCount);
        for (size_t index = 0; index < treeCount; ++index) {
            leavesStatistics[index].resize(1 << model.ObliviousTrees->TreeSizes[index]);
        }
    } else {
        treeCount = 1;
        leavesStatistics.resize(1);
        leavesStatistics[0].resize(model.ObliviousTrees->LeafValues.size());
    }

    auto binFeatures = MakeQuantizedFeaturesForEvaluator(model, *dataset.ObjectsData.Get());

    const auto documentsCount = dataset.GetObjectCount();
    for (size_t treeIdx = 0; treeIdx < treeCount; ++treeIdx) {
        TVector<TIndexType> indices = BuildIndicesForBinTree(model, binFeatures.Get(), treeIdx);

        if (indices.empty()) {
            continue;
        }

        if (weights.empty()) {
            for (size_t doc = 0; doc < documentsCount; ++doc) {
                const TIndexType valueIndex = indices[doc];
                leavesStatistics[treeIdx][valueIndex] += 1.0;
            }
        } else {
            for (size_t doc = 0; doc < documentsCount; ++doc) {
                const TIndexType valueIndex = indices[doc];
                leavesStatistics[treeIdx][valueIndex] += weights[doc];
            }
        }
    }
    return leavesStatistics;
}
