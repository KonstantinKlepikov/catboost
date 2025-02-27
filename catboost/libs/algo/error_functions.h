#pragma once

#include "approx_updater_helpers.h"
#include "custom_objective_descriptor.h"
#include "ders_holder.h"
#include "hessian.h"

#include <catboost/libs/data_types/pair.h>
#include <catboost/libs/model/eval_processing.h>
#include <catboost/libs/options/catboost_options.h>
#include <catboost/libs/options/enums.h>
#include <catboost/libs/options/restrictions.h>

#include <library/containers/2d_array/2d_array.h>
#include <library/fast_exp/fast_exp.h>
#include <library/threading/local_executor/local_executor.h>

#include <util/generic/algorithm.h>
#include <util/generic/vector.h>
#include <util/generic/ymath.h>
#include <util/string/split.h>
#include <util/system/yassert.h>

#include <cmath>

class IDerCalcer {
public:
    explicit IDerCalcer(
        bool isExpApprox,
        ui32 maxDerivativeOrder = 3,
        EErrorType errorType = EErrorType::PerObjectError,
        EHessianType hessianType = EHessianType::Symmetric
    )
        : IsExpApprox(isExpApprox)
        , MaxSupportedDerivativeOrder(maxDerivativeOrder)
        , ErrorType(errorType)
        , HessianType(hessianType)
    {
        Y_ASSERT(maxDerivativeOrder >= 1 && maxDerivativeOrder <= 3);
    }

    virtual ~IDerCalcer() = default;

    bool GetIsExpApprox() const {
        return IsExpApprox;
    }

    ui32 GetMaxSupportedDerivativeOrder() const {
        return MaxSupportedDerivativeOrder;
    }

    EErrorType GetErrorType() const {
        return ErrorType;
    }

    EHessianType GetHessianType() const {
        return HessianType;
    }

    virtual void CalcFirstDerRange(
        int start,
        int count,
        const double* approxes,
        const double* approxDeltas,
        const float* targets,
        const float* weights,
        double* firstDers
    ) const {
        CalcDersRange(
            start,
            count,
            /*maxDerivativeOrder*/ 1,
            approxes,
            approxDeltas,
            targets,
            weights,
            /*ders*/ nullptr,
            firstDers);
    }

    virtual void CalcDersRange(
        int start,
        int count,
        bool calcThirdDer,
        const double* approxes,
        const double* approxDeltas,
        const float* targets,
        const float* weights,
        TDers* ders
    ) const {
        const int maxDerivativeOrder = calcThirdDer ? 3 : Min(MaxSupportedDerivativeOrder, 2u);
        CalcDersRange(
            start,
            count,
            maxDerivativeOrder,
            approxes,
            approxDeltas,
            targets,
            weights,
            ders,
            /*firstDers*/ nullptr);
    }

    virtual void CalcDersMulti(
        const TVector<double>& /*approx*/,
        float /*target*/,
        float /*weight*/,
        TVector<double>* /*der*/,
        THessianInfo* /*der2*/
    ) const {
        CB_ENSURE(false, "Not implemented");
    }

    virtual void CalcDersForQueries(
        int /*queryStartIndex*/,
        int /*queryEndIndex*/,
        const TVector<double>& /*approx*/,
        const TVector<float>& /*target*/,
        const TVector<float>& /*weight*/,
        const TVector<TQueryInfo>& /*queriesInfo*/,
        TArrayRef<TDers> /*ders*/,
        ui64 /*randomSeed*/,
        NPar::TLocalExecutor* /*localExecutor*/
    ) const {
        CB_ENSURE(false, "Not implemented");
    }

private:
    virtual double CalcDer(double /*approx*/, float /*target*/) const {
        CB_ENSURE(false, "Not implemented");
    }

    virtual double CalcDer2(double /*approx*/, float /*target*/) const {
        CB_ENSURE(false, "Not implemented");
    }

    virtual double CalcDer3(double /*approx*/, float /*target*/) const {
        CB_ENSURE(false, "Not implemented");
    }

    template <int MaxDerivativeOrder, bool UseTDers, bool UseExpApprox, bool HasDelta>
    void CalcDersRangeImpl(
        int start,
        int count,
        const double* approxes,
        const double* approxDeltas,
        const float* targets,
        const float* weights,
        TDers* ders,
        double* firstDers
    ) const;

    void CalcDersRange(
        int start,
        int count,
        int maxDerivativeOrder,
        const double* approxes,
        const double* approxDeltas,
        const float* targets,
        const float* weights,
        TDers* ders,
        double* firstDers
    ) const;

private:
    const bool IsExpApprox;
    const ui32 MaxSupportedDerivativeOrder;
    const EErrorType ErrorType;
    const EHessianType HessianType;
};

class TCrossEntropyError final : public IDerCalcer {
public:
    explicit TCrossEntropyError(bool isExpApprox)
        : IDerCalcer(isExpApprox)
    {
    }

    void CalcFirstDerRange(
        int start,
        int count,
        const double* approxes,
        const double* approxDeltas,
        const float* targets,
        const float* weights,
        double* ders
    ) const override;

    void CalcDersRange(
        int start,
        int count,
        bool calcThirdDer,
        const double* approxes,
        const double* approxDeltas,
        const float* targets,
        const float* weights,
        TDers* ders
    ) const override;
};

class TRMSEError final : public IDerCalcer {
public:
    static constexpr double RMSE_DER2 = -1.0;
    static constexpr double RMSE_DER3 = 0.0;

public:
    explicit TRMSEError(bool isExpApprox)
        : IDerCalcer(isExpApprox)
    {
        CB_ENSURE(isExpApprox == false, "Approx format does not match");
    }

private:
    double CalcDer(double approx, float target) const override {
        return target - approx;
    }

    double CalcDer2(double /*approx*/, float /*target*/) const override {
        return RMSE_DER2;
    }

    double CalcDer3(double /*approx*/, float /*target*/) const override {
        return RMSE_DER3;
    }
};

class TQuantileError final : public IDerCalcer {
public:
    static constexpr double QUANTILE_DER2_AND_DER3 = 0.0;

public:
    const double Alpha;

public:
    explicit TQuantileError(bool isExpApprox)
        : IDerCalcer(isExpApprox)
        , Alpha(0.5)
    {
        CB_ENSURE(isExpApprox == false, "Approx format does not match");
    }

    TQuantileError(double alpha, bool isExpApprox)
        : IDerCalcer(isExpApprox)
        , Alpha(alpha)
    {
        Y_ASSERT(Alpha > -1e-6 && Alpha < 1.0 + 1e-6);
        CB_ENSURE(isExpApprox == false, "Approx format does not match");
    }

private:
    double CalcDer(double approx, float target) const override {
        return (target - approx > 0) ? Alpha : -(1 - Alpha);
    }

    double CalcDer2(double /*approx*/, float /*target*/) const override {
        return QUANTILE_DER2_AND_DER3;
    }

    double CalcDer3(double /*approx*/, float /*target*/) const override {
        return QUANTILE_DER2_AND_DER3;
    }
};

class TExpectileError final : public IDerCalcer {
public:
    static constexpr double EXPECTILE_DER3 = 0.0;

public:
    const double Alpha;

public:
    explicit TExpectileError(bool isExpApprox)
        : IDerCalcer(isExpApprox)
        , Alpha(0.5)
    {
        CB_ENSURE(isExpApprox == false, "Approx format does not match");
    }

    TExpectileError(double alpha, bool isExpApprox)
        : IDerCalcer(isExpApprox)
        , Alpha(alpha)
    {
        Y_ASSERT(Alpha > -1e-6 && Alpha < 1.0 + 1e-6);
        CB_ENSURE(isExpApprox == false, "Approx format does not match");
    }

private:
    double CalcDer(double approx, float target) const override {
        double e = target - approx;
        return (e > 0) ? 2.0 * Alpha * e : 2.0 * (1 - Alpha) * e;
    }

    double CalcDer2(double approx, float target) const override {
        double e = target - approx;
        return (e > 0) ? -2.0 * Alpha : -2.0 * (1 - Alpha);
    }

    double CalcDer3(double /*approx*/, float /*target*/) const override {
        return EXPECTILE_DER3;
    }
};

class TLqError final : public IDerCalcer {
public:
    const double Q;

public:
    TLqError(double q, bool isExpApprox)
        : IDerCalcer(isExpApprox, /*maxDerivativeOrder*/ q >= 2 ?  3 : 1)
        , Q(q)
    {
        Y_ASSERT(Q >= 1);
        CB_ENSURE(isExpApprox == false, "Approx format does not match");
    }

private:
    double CalcDer(double approx, float target) const override {
        const double absLoss = abs(approx - target);
        const double absLossQ = std::pow(absLoss, Q - 1);
        return Q * (approx - target > 0 ? 1 : -1)  * absLossQ;
    }

    double CalcDer2(double approx, float target) const override {
        const double absLoss = abs(target - approx);
        return Q * (Q - 1) * std::pow(absLoss, Q - 2);
    }

    double CalcDer3(double approx, float target) const override {
        const double absLoss = abs(target - approx);
        return Q * (Q - 1) *  (Q - 2) * std::pow(absLoss, Q - 3) * (approx - target > 0 ? 1 : -1);
    }
};

class TLogLinQuantileError final : public IDerCalcer {
public:
    static constexpr double QUANTILE_DER2_AND_DER3 = 0.0;

public:
    const double Alpha;

public:
    explicit TLogLinQuantileError(bool isExpApprox)
        : IDerCalcer(isExpApprox)
        , Alpha(0.5)
    {
        CB_ENSURE(isExpApprox == true, "Approx format does not match");
    }

    TLogLinQuantileError(double alpha, bool isExpApprox)
        : IDerCalcer(isExpApprox)
        , Alpha(alpha)
    {
        Y_ASSERT(Alpha > -1e-6 && Alpha < 1.0 + 1e-6);
        CB_ENSURE(isExpApprox == true, "Approx format does not match");
    }

private:
    double CalcDer(double approxExp, float target) const override {
        return (target - approxExp > 0) ? Alpha * approxExp : -(1 - Alpha) * approxExp;
    }

    double CalcDer2(double /*approx*/, float /*target*/) const override {
        return QUANTILE_DER2_AND_DER3;
    }

    double CalcDer3(double /*approx*/, float /*target*/) const override {
        return QUANTILE_DER2_AND_DER3;
    }
};

class TMAPError final : public IDerCalcer {
public:
    static constexpr double MAPE_DER2_AND_DER3 = 0.0;

public:
    explicit TMAPError(bool isExpApprox)
        : IDerCalcer(isExpApprox)
    {
        CB_ENSURE(isExpApprox == false, "Approx format does not match");
    }

private:
    double CalcDer(double approx, float target) const override {
        return (target - approx > 0) ? 1 / target : -1 / target;
    }

    double CalcDer2(double /*approx*/, float /*target*/) const override {
        return MAPE_DER2_AND_DER3;
    }

    double CalcDer3(double /*approx*/, float /*target*/) const override {
        return MAPE_DER2_AND_DER3;
    }
};

class TPoissonError final : public IDerCalcer {
public:
    explicit TPoissonError(bool isExpApprox)
        : IDerCalcer(isExpApprox)
    {
        CB_ENSURE(isExpApprox == true, "Approx format does not match");
    }

private:
    double CalcDer(double approxExp, float target) const override {
        return target - approxExp;
    }

    double CalcDer2(double approxExp, float) const override {
        return -approxExp;
    }

    double CalcDer3(double approxExp, float /*target*/) const override {
        return -approxExp;
    }
};

class TMultiClassError final : public IDerCalcer {
public:
    explicit TMultiClassError(bool isExpApprox)
        : IDerCalcer(isExpApprox, /*maxDerivativeOrder*/ 2)
    {
        CB_ENSURE(isExpApprox == false, "Approx format does not match");
    }

    void CalcDersMulti(
        const TVector<double>& approx,
        float target,
        float weight,
        TVector<double>* der,
        THessianInfo* der2
    ) const override {
        const auto derRef = MakeArrayRef(*der);
        CalcSoftmax(approx, derRef);

        if (der2 != nullptr) {
            const int approxDimension = approx.ysize();
            Y_ASSERT(der2->HessianType == EHessianType::Symmetric &&
                     der2->ApproxDimension == approxDimension);
            const auto der2Ref = MakeArrayRef(der2->Data);
            int idx = 0;
            for (int dimY : xrange(approxDimension)) {
                const double derY = derRef[dimY];
                der2Ref[idx++] = derY * (derY - 1);
                for (int dimX : xrange(dimY + 1, approxDimension)) {
                    der2Ref[idx++] = derY * derRef[dimX];
                }
            }
        }

        for (auto& value : derRef) {
            value = -value;
        }
        const int targetClass = static_cast<int>(target);
        derRef[targetClass] += 1;

        if (weight != 1) {
            for (auto& value : derRef) {
                value *= weight;
            }
            if (der2 != nullptr) {
                const auto der2Ref = MakeArrayRef(der2->Data);
                for (auto& value : der2Ref) {
                    value *= weight;
                }
            }
        }
    }
};

class TMultiClassOneVsAllError final : public IDerCalcer {
public:
    explicit TMultiClassOneVsAllError(bool isExpApprox)
        : IDerCalcer(isExpApprox, /*maxDerivativeOrder*/ 2, EErrorType::PerObjectError, EHessianType::Diagonal)
    {
        CB_ENSURE(isExpApprox == false, "Approx format does not match");
    }

    void CalcDersMulti(
        const TVector<double>& approx,
        float target,
        float weight,
        TVector<double>* der,
        THessianInfo* der2
    ) const override {
        const int approxDimension = approx.ysize();

        TVector<double> prob = approx;
        FastExpInplace(prob.data(), prob.ysize());
        for (int dim = 0; dim < approxDimension; ++dim) {
            prob[dim] /= (1 + prob[dim]);
            (*der)[dim] = -prob[dim];
        }
        int targetClass = static_cast<int>(target);
        (*der)[targetClass] += 1;

        if (der2 != nullptr) {
            Y_ASSERT(der2->HessianType == EHessianType::Diagonal && der2->ApproxDimension == approxDimension);
            for (int dim = 0; dim < approxDimension; ++ dim) {
                der2->Data[dim] = -prob[dim] * (1 - prob[dim]);
            }
        }

        if (weight != 1) {
            for (int dim = 0; dim < approxDimension; ++dim) {
                (*der)[dim] *= weight;
            }
            if (der2 != nullptr) {
                for (int dim = 0; dim < approxDimension; ++dim) {
                    der2->Data[dim] *= weight;
                }
            }
        }
    }
};

class TPairLogitError final : public IDerCalcer {
public:
    explicit TPairLogitError(bool isExpApprox)
        : IDerCalcer(isExpApprox, /*maxDerivativeOrder*/ 2, EErrorType::PairwiseError)
    {
        CB_ENSURE(isExpApprox == true, "Approx format does not match");
    }

    void CalcDersForQueries(
        int queryStartIndex,
        int queryEndIndex,
        const TVector<double>& expApproxes,
        const TVector<float>& /*targets*/,
        const TVector<float>& /*weights*/,
        const TVector<TQueryInfo>& queriesInfo,
        TArrayRef<TDers> ders,
        ui64 /*randomSeed*/,
        NPar::TLocalExecutor* localExecutor
    ) const override {
        CB_ENSURE(queryStartIndex < queryEndIndex);
        const int start = queriesInfo[queryStartIndex].Begin;
        NPar::ParallelFor(
            *localExecutor,
            queryStartIndex,
            queryEndIndex,
            [&] (ui32 queryIndex) {
                const int begin = queriesInfo[queryIndex].Begin;
                const int end = queriesInfo[queryIndex].End;
                TDers* dersData = ders.data() + begin - start;
                Fill(dersData, dersData + end - begin, TDers{/*1st*/0.0, /*2nd*/0.0, /*3rd*/0.0});
                for (int docId = begin; docId < end; ++docId) {
                    double winnerDer = 0.0;
                    double winnerSecondDer = 0.0;
                    for (const auto& competitor : queriesInfo[queryIndex].Competitors[docId - begin]) {
                        const double p = expApproxes[competitor.Id + begin] /
                            (expApproxes[competitor.Id + begin] + expApproxes[docId]);
                        winnerDer += competitor.Weight * p;
                        dersData[competitor.Id].Der1 -= competitor.Weight * p;
                        winnerSecondDer += competitor.Weight * p * (p - 1);
                        dersData[competitor.Id].Der2 += competitor.Weight * p * (p - 1);
                    }
                    dersData[docId - begin].Der1 += winnerDer;
                    dersData[docId - begin].Der2 += winnerSecondDer;
                }
            });
    }
};

class TQueryRmseError final : public IDerCalcer {
public:
    explicit TQueryRmseError(bool isExpApprox)
        : IDerCalcer(isExpApprox, /*maxDerivativeOrder*/ 2, EErrorType::QuerywiseError)
    {
        CB_ENSURE(isExpApprox == false, "Approx format does not match");
    }

    void CalcDersForQueries(
        int queryStartIndex,
        int queryEndIndex,
        const TVector<double>& approxes,
        const TVector<float>& targets,
        const TVector<float>& weights,
        const TVector<TQueryInfo>& queriesInfo,
        TArrayRef<TDers> ders,
        ui64 /*randomSeed*/,
        NPar::TLocalExecutor* localExecutor
    ) const override {
        const int start = queriesInfo[queryStartIndex].Begin;
        NPar::ParallelFor(
            *localExecutor,
            queryStartIndex,
            queryEndIndex,
            [&] (ui32 queryIndex) {
                const int begin = queriesInfo[queryIndex].Begin;
                const int end = queriesInfo[queryIndex].End;
                const int querySize = end - begin;

                const double queryAvrg = CalcQueryAvrg(begin, querySize, approxes, targets, weights);
                for (int docId = begin; docId < end; ++docId) {
                    ders[docId - start].Der1 = targets[docId] - approxes[docId] - queryAvrg;
                    ders[docId - start].Der2 = -1;
                    if (!weights.empty()) {
                        ders[docId - start].Der1 *= weights[docId];
                        ders[docId - start].Der2 *= weights[docId];
                    }
                }
            });
    }
private:
    double CalcQueryAvrg(
        int start,
        int count,
        const TVector<double>& approxes,
        const TVector<float>& targets,
        const TVector<float>& weights
    ) const {
        double querySum = 0;
        double queryCount = 0;
        for (int docId = start; docId < start + count; ++docId) {
            double w = weights.empty() ? 1 : weights[docId];
            querySum += (targets[docId] - approxes[docId]) * w;
            queryCount += w;
        }

        double queryAvrg = 0;
        if (queryCount > 0) {
            queryAvrg = querySum / queryCount;
        }
        return queryAvrg;
    }
};

class TQuerySoftMaxError final : public IDerCalcer {
public:
    const double LambdaReg;

public:
    explicit TQuerySoftMaxError(double lambdaReg, bool isExpApprox)
        : IDerCalcer(isExpApprox, /*maxDerivativeOrder*/ 2, EErrorType::QuerywiseError)
        , LambdaReg(lambdaReg)
    {
        CB_ENSURE(isExpApprox == false, "Approx format does not match");
    }

    void CalcDersForQueries(
        int queryStartIndex,
        int queryEndIndex,
        const TVector<double>& approxes,
        const TVector<float>& targets,
        const TVector<float>& weights,
        const TVector<TQueryInfo>& queriesInfo,
        TArrayRef<TDers> ders,
        ui64 /*randomSeed*/,
        NPar::TLocalExecutor* localExecutor
    ) const override {
        int start = queriesInfo[queryStartIndex].Begin;
        NPar::ParallelFor(
            *localExecutor,
            queryStartIndex,
            queryEndIndex,
            [&](int queryIndex) {
                int begin = queriesInfo[queryIndex].Begin;
                int end = queriesInfo[queryIndex].End;
                CalcDersForSingleQuery(start, begin - start, end - begin, approxes, targets, weights, ders);
            });
    }

private:
    void CalcDersForSingleQuery(
        int start,
        int offset,
        int count,
        TConstArrayRef<double> approxes,
        TConstArrayRef<float> targets,
        TConstArrayRef<float> weights,
        TArrayRef<TDers> ders
    ) const;
};

class TCustomError final : public IDerCalcer {
public:
    TCustomError(
        const NCatboostOptions::TCatBoostOptions& params,
        const TMaybe<TCustomObjectiveDescriptor>& descriptor
    )
        : IDerCalcer(/*IsExpApprox*/ false)
        , Descriptor(*descriptor)
    {
        CB_ENSURE(
            IsStoreExpApprox(params.LossFunctionDescription->GetLossFunction()) == false,
            "Approx format does not match");
    }

    void CalcDersMulti(
        const TVector<double>& approx,
        float target,
        float weight,
        TVector<double>* der,
        THessianInfo* der2
    ) const override {
        Descriptor.CalcDersMulti(approx, target, weight, der, der2, Descriptor.CustomData);
    }

    void CalcDersRange(
        int start,
        int count,
        bool /*calcThirdDer*/,
        const double* approxes,
        const double* approxDeltas,
        const float* targets,
        const float* weights,
        TDers* ders
    ) const override {
        memset(ders + start, 0, sizeof(*ders) * count);
        if (approxDeltas != nullptr) {
            TVector<double> updatedApproxes(count);
            for (int i = start; i < start + count; ++i) {
                updatedApproxes[i - start] = approxes[i] + approxDeltas[i];
            }
            Descriptor.CalcDersRange(
                count,
                updatedApproxes.data(),
                targets + start,
                weights ? (weights + start) : nullptr,
                ders + start,
                Descriptor.CustomData);
        } else {
            Descriptor.CalcDersRange(
                count,
                approxes + start,
                targets + start,
                weights ? (weights + start) : nullptr,
                ders + start,
                Descriptor.CustomData);
        }
    }

    void CalcFirstDerRange(
        int start,
        int count,
        const double* approxes,
        const double* approxDeltas,
        const float* targets,
        const float* weights,
        double* ders
    ) const override {
        TVector<TDers> derivatives(count, {0.0, 0.0, 0.0});
        CalcDersRange(
            start,
            count, /*calcThirdDer=*/
            false,
            approxes,
            approxDeltas,
            targets,
            weights,
            derivatives.data() - start);
        for (int i = start; i < start + count; ++i) {
            ders[i] = derivatives[i - start].Der1;
        }
    }
private:
    TCustomObjectiveDescriptor Descriptor;
};

inline double GetNumericParameter(const TMap<TString, TString>& params, const TString& key) {
    if (params.contains(key)) {
        return FromString<double>(params.at(key));
    } else {
        return 0.0;
    }
}

class TUserDefinedPerObjectError final : public IDerCalcer {
public:
    const double Alpha;

public:
    TUserDefinedPerObjectError(const TMap<TString, TString>& params, bool isExpApprox)
        : IDerCalcer(isExpApprox)
        , Alpha(GetNumericParameter(params, "alpha"))
    {
        CB_ENSURE(isExpApprox == false, "Approx format does not match");
    }
};

class TUserDefinedQuerywiseError final : public IDerCalcer {
public:
    const double Alpha;

public:
    TUserDefinedQuerywiseError(const TMap<TString, TString>& params, bool isExpApprox)
        : IDerCalcer(isExpApprox, /*maxDerivativeOrder*/ 2, EErrorType::QuerywiseError)
        , Alpha(GetNumericParameter(params, "alpha"))
    {
        CB_ENSURE(isExpApprox == false, "Approx format does not match");
    }
};

/* TStochasticFilterError */
class TStochasticFilterError final : public IDerCalcer {
public:
    const double Sigma;
    const int NumEstimations;

public:
    TStochasticFilterError(double sigma, int numEstimations, bool isExpApprox)
        : IDerCalcer(false, 1, EErrorType::QuerywiseError)
        , Sigma(sigma)
        , NumEstimations(numEstimations)
    {
        CB_ENSURE(isExpApprox == false, "Approx format does not match");
        CB_ENSURE(Sigma > 0, "Scale parameter 'sigma' for DCG-RR loss must be positive");
        CB_ENSURE(NumEstimations > 0, "Number of estimations must be positive integer");
    }

    void CalcDersForQueries(
        int queryStartIndex,
        int queryEndIndex,
        const TVector<double>& approx,
        const TVector<float>& target,
        const TVector<float>& /*weights*/,
        const TVector<TQueryInfo>& queriesInfo,
        TArrayRef<TDers> ders,
        ui64 randomSeed,
        NPar::TLocalExecutor* localExecutor
    ) const override {
        NPar::TLocalExecutor::TExecRangeParams blockParams(queryStartIndex, queryEndIndex);
        blockParams.SetBlockCount(CB_THREAD_LIMIT);
        const int blockSize = blockParams.GetBlockSize();
        const int blockCount = blockParams.GetBlockCount();
        const TVector<ui64> randomSeeds = GenRandUI64Vector(blockCount, randomSeed);
        const int start = queriesInfo[queryStartIndex].Begin;

        NPar::ParallelFor(
            *localExecutor,
            0,
            static_cast<ui32>(blockCount),
            [&](int blockId) {
                TRestorableFastRng64 rand(randomSeeds[blockId]);
                rand.Advance(10);
                const int from = blockId * blockSize;
                const int to = Min<int>((blockId + 1) * blockSize, queryEndIndex);
                for (int queryIndex = from; queryIndex < to; ++queryIndex) {
                    int begin = queriesInfo[queryIndex].Begin;
                    int end = queriesInfo[queryIndex].End;
                    CalcQueryDers(begin, begin - start, end - begin, approx, target, ders, &rand);
                }
            });
    }

private:
    void CalcQueryDers(
        int offset,
        int offsetDer,
        int querySize,
        TConstArrayRef<double> approx,
        TConstArrayRef<float> target,
        TArrayRef<TDers> ders,
        TRestorableFastRng64* Rand
    ) const {
        Fill(ders.begin() + offsetDer, ders.begin() + offsetDer + querySize, TDers { 0.f, 0.f, 0.f });
        const double baselineLoss = CalcBaseline(offset, querySize, approx, target);
        TVector<double> probs(querySize, 0.);

        for (int i = 0; i < NumEstimations; ++i) {
            int pos = 0;
            double loss = 0.0;

            for (int j = 0; j < querySize; ++j) {
                const double prob = Sigmoid(approx[offset + j] * Sigma);
                const bool isFiltered = prob >= Rand->GenRandReal1();
                loss += isFiltered ? target[offset + j] / (pos + 1) : 0.;
                pos += isFiltered;
                probs[j] = isFiltered ? (1 - prob) : -prob;
            }
            for (int j = 0; j < querySize; ++j) {
                ders[offsetDer + j].Der1 += probs[j] * (loss - baselineLoss) / NumEstimations;
            }
        }
    }

    double CalcBaseline(
        int offset,
        int count,
        TConstArrayRef<double> approx,
        TConstArrayRef<float> target
    ) const {
        double baselineValue = 0.0;
        int pos = 0;
        for (int i = 0; i < count; ++i) {
            if (approx[offset + i] >= 0) {
                baselineValue += target[offset + i] / (++pos);
            }
        }
        return baselineValue;
    }
};

class THuberError final : public IDerCalcer {
    static constexpr double HUBER_DER2 = -1.0;
    static constexpr double HUBER_DER3 = 0.0;

    const double Delta;
public:

    explicit THuberError(double delta, bool isExpApprox)
        : IDerCalcer(isExpApprox)
        , Delta(delta)
    {
        CB_ENSURE(isExpApprox == false, "Approx format does not match");
    }

private:
    double CalcDer(double approx, float target) const override {
        double diff = target - approx;
        if (fabs(diff) < Delta) {
            return diff;
        } else {
            return diff > 0.0 ? Delta : -Delta;
        }
    }

    double CalcDer2(double approx, float target) const override {
        double diff = target - approx;
        if (fabs(diff) < Delta) {
            return HUBER_DER2;
        } else {
            return 0.0;
        }
    }

    double CalcDer3(double /*approx*/, float /*target*/) const override {
        return HUBER_DER3;
    }
};

void CheckDerivativeOrderForTrain(ui32 derivativeOrder, ELeavesEstimation estimationMethod);
void CheckDerivativeOrderForObjectImportance(ui32 derivativeOrder, ELeavesEstimation estimationMethod);
