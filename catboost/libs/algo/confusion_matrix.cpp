#include "confusion_matrix.h"

#include <catboost/libs/algo/apply.h>
#include <catboost/libs/model/model.h>
#include <catboost/libs/target/data_providers.h>
#include <catboost/libs/metrics/classification_utils.h>
#include <catboost/libs/options/enum_helpers.h>
#include <catboost/libs/options/data_processing_options.h>

#include <library/threading/local_executor/local_executor.h>

#include <util/generic/array_ref.h>
#include <util/generic/vector.h>
#include <util/generic/ymath.h>
#include <util/stream/fwd.h>

using namespace NCB;
using namespace NCatboostOptions;

static constexpr int MinParallelBlockSize = 10000;
static constexpr int BinaryClassesCount = 2;

TVector<double> MakeConfusionMatrix(
    TConstArrayRef<TVector<double>> approxes,
    TConstArrayRef<float> labels,
    NPar::TLocalExecutor* localExecutor
) {
    const bool isMultiClass = approxes.size() > 1;
    const int classesCount = isMultiClass ? approxes.size() : BinaryClassesCount;
    const int objectsCount = approxes.front().size();
    const int blockCount = Max(1, Min(localExecutor->GetThreadCount(), objectsCount / MinParallelBlockSize));
    const int blockSize = (objectsCount + blockCount - 1) / blockCount;

    TVector<TVector<double>> blockCms(blockCount, TVector<double>(Sqr(classesCount)));

    NPar::ParallelFor(*localExecutor, 0, blockCount, [&] (int blockId) {
        const int begin = blockId * blockSize;
        const int end = Min(objectsCount, begin + blockSize);
        for (auto i : xrange(begin, end)) {
            const int realLabel = isMultiClass ? int(labels[i]) : labels[i] > GetDefaultTargetBorder();
            const int predictedLabel = GetApproxClass(approxes, i);

            CB_ENSURE(0 <= realLabel && realLabel < classesCount, "Target label out of range");
            blockCms[blockId][realLabel * classesCount + predictedLabel] += 1;
        }
    });

    TVector<double> cm(Sqr(classesCount));
    for (const auto& blockCm : blockCms) {
        for (int i : xrange(Sqr(classesCount))) {
            cm[i] += blockCm[i];
        }
    }

    return cm;
}

TVector<double> MakeConfusionMatrix(const TFullModel& model, const TDataProviderPtr dataset, int threadCount) {
    TRestorableFastRng64 rand(0);
    NPar::TLocalExecutor localExecutor;
    localExecutor.RunAdditionalThreads(threadCount - 1);

    TProcessedDataProvider processedData = CreateClassificationCompatibleDataProvider(
        *dataset,
        model,
        &rand,
        &localExecutor
    );

    CB_ENSURE(processedData.TargetData->GetTarget(), "Calculating confusion matrix requires target");

    TConstArrayRef<float> labels = *(processedData.TargetData->GetTarget());
    TVector<TVector<double>> approxes = ApplyModelMulti(
        model,
        *processedData.ObjectsData,
        EPredictionType::RawFormulaVal,
        0,
        SafeIntegerCast<int>(processedData.ObjectsData->GetObjectCount()),
        &localExecutor
    );

    return MakeConfusionMatrix(approxes, labels, &localExecutor);
}
