#pragma once

#include "columns.h"
#include "exclusive_feature_bundling.h"
#include "feature_index.h"
#include "features_layout.h"
#include "meta_info.h"
#include "objects_grouping.h"
#include "order.h"
#include "quantized_features_info.h"
#include "util.h"

#include <catboost/libs/data_types/groupid.h>
#include <catboost/libs/helpers/array_subset.h>
#include <catboost/libs/helpers/exception.h>
#include <catboost/libs/helpers/resource_holder.h>
#include <catboost/libs/helpers/serialization.h>

#include <catboost/libs/options/binarization_options.h>

#include <library/binsaver/bin_saver.h>
#include <library/dbg_output/dump.h>
#include <library/threading/local_executor/local_executor.h>

#include <util/generic/array_ref.h>
#include <util/generic/maybe.h>
#include <util/generic/hash.h>
#include <util/generic/ptr.h>
#include <util/generic/strbuf.h>
#include <util/generic/string.h>
#include <util/generic/vector.h>
#include <util/generic/xrange.h>
#include <util/system/types.h>

#include <utility>


class IOutputStream;


namespace NCB {

    // if objectsGrouping is defined - check that groupIds correspond to it
    void CheckGroupIds(
        ui32 objectCount,
        TMaybeData<TConstArrayRef<TGroupId>> groupIds,
        TMaybe<TObjectsGroupingPtr> objectsGrouping = Nothing()
    );

    /* if groupIds is empty return trivial grouping
     *  checks that groupIds are consecutive
     */
    TObjectsGrouping CreateObjectsGroupingFromGroupIds(
        ui32 objectCount,
        TMaybeData<TConstArrayRef<TGroupId>> groupIds
    );


    // for use while building
    struct TCommonObjectsData {
    public:
        TVector<TIntrusivePtr<IResourceHolder>> ResourceHolders;

        TFeaturesLayoutPtr FeaturesLayout;

        /* this dataset can be a view from a bigger objects dataset
           this field provides this data to columns in derived classes
        */
        TAtomicSharedPtr<TArraySubsetIndexing<ui32>> SubsetIndexing;

        EObjectsOrder Order = EObjectsOrder::Undefined;

        TMaybeData<TVector<TGroupId>> GroupIds; // [objectIdx]
        TMaybeData<TVector<TSubgroupId>> SubgroupIds; // [objectIdx]
        TMaybeData<TVector<ui64>> Timestamp; // [objectIdx]

        /* can be empty if there's no cat features
           elements can be empty, it is allowed for some cat features to have hashed representation only
        */
        TAtomicSharedPtr<TVector<THashMap<ui32, TString>>> CatFeaturesHashToString; // [catFeatureIdx]

    public:
        bool operator==(const TCommonObjectsData& rhs) const;

        // not a constructor to enable reuse of allocated data
        void PrepareForInitialization(const TDataMetaInfo& metaInfo, ui32 objectCount, ui32 prevTailCount);

        /* used in TObjectsDataProvider to avoid double checking
         * when ObjectsGrouping is created from GroupIds and GroupId's consistency is already checked
         * in this process
         */
        void CheckAllExceptGroupIds() const;

        // if objectsGrouping is defined and GroupIds are defined check that they are consistent
        void Check(TMaybe<TObjectsGroupingPtr> objectsGrouping) const;

        TCommonObjectsData GetSubset(
            const TObjectsGroupingSubset& objectsGroupingSubset,
            NPar::TLocalExecutor* localExecutor
        ) const;

        void Load(TFeaturesLayoutPtr featuresLayout, ui32 objectCount, IBinSaver* binSaver);
        void SaveNonSharedPart(IBinSaver* binSaver) const;
    };


    class TObjectsDataProvider : public TThrRefBase {
    public:
        TObjectsDataProvider(
            // if not defined - call CreateObjectsGroupingFromGroupIds
            TMaybe<TObjectsGroupingPtr> objectsGrouping,
            TCommonObjectsData&& commonData,
            bool skipCheck
        );

        virtual bool operator==(const TObjectsDataProvider& rhs) const {
            return (*ObjectsGrouping == *rhs.ObjectsGrouping) && (CommonData == rhs.CommonData);
        }

        ui32 GetObjectCount() const {
            return ObjectsGrouping->GetObjectCount();
        }

        TObjectsGroupingPtr GetObjectsGrouping() const {
            return ObjectsGrouping;
        }

        virtual TIntrusivePtr<TObjectsDataProvider> GetSubset(
            const TObjectsGroupingSubset& objectsGroupingSubset,
            NPar::TLocalExecutor* localExecutor
        ) const = 0;

        // The following Get* functions are common for all implementations, so they're in this base class

        TFeaturesLayoutPtr GetFeaturesLayout() const {
            return CommonData.FeaturesLayout;
        }

        EObjectsOrder GetOrder() const {
            return CommonData.Order;
        }

        TMaybeData<TConstArrayRef<TGroupId>> GetGroupIds() const { // [objectIdx]
            return CommonData.GroupIds;
        }

        TMaybeData<TConstArrayRef<TSubgroupId>> GetSubgroupIds() const { // [objectIdx]
            return CommonData.SubgroupIds;
        }

        TMaybeData<TConstArrayRef<ui64>> GetTimestamp() const { // [objectIdx]
            return CommonData.Timestamp;
        }

        const THashMap<ui32, TString>& GetCatFeaturesHashToString(ui32 catFeatureIdx) const {
            return (*CommonData.CatFeaturesHashToString)[catFeatureIdx];
        }

        /* set functions are needed for current python mutable Pool interface
           builders should prefer to set fields directly to avoid unnecessary data copying
        */

        // updates ObjectsGrouping
        void SetGroupIds(TConstArrayRef<TGroupId> groupIds); // [objectIdx]

        void SetSubgroupIds(TConstArrayRef<TSubgroupId> subgroupIds); // [objectIdx]


        void SaveCommonDataNonSharedPart(IBinSaver* binSaver) const {
            CommonData.SaveNonSharedPart(binSaver);
        }

    private:
        friend class TQuantizationImpl;
        friend class TRawBuilderDataHelper;

    protected:
        TObjectsGroupingPtr ObjectsGrouping;
        TCommonObjectsData CommonData;
    };

    using TObjectsDataProviderPtr = TIntrusivePtr<TObjectsDataProvider>;
    using TObjectsDataProviderConstPtr = TIntrusiveConstPtr<TObjectsDataProvider>;


    // for use while building and storing this part in TRawObjectsDataProvider
    struct TRawObjectsData {
    public:
        /* some feature holders can contain nullptr
         *  (ignored or this data provider contains only subset of features)
         */
        TVector<THolder<TFloatValuesHolder>> FloatFeatures; // [floatFeatureIdx]
        TVector<THolder<THashedCatValuesHolder>> CatFeatures; // [catFeatureIdx]
        TVector<THolder<TStringTextValuesHolder>> TextFeatures; // [textFeatureIdx]

    public:
        bool operator==(const TRawObjectsData& rhs) const;

        // not a constructor to enable reuse of allocated data
        void PrepareForInitialization(const TDataMetaInfo& metaInfo);

        // TODO(akhropov): Is cat features hashes check too expensive/should be optional for release?
        void Check(
            ui32 objectCount,
            const TFeaturesLayout& featuresLayout,

            // can be nullptr is there's no categorical features
            const TVector<THashMap<ui32, TString>>* catFeaturesHashToString,
            NPar::TLocalExecutor* localExecutor
        ) const;
    };

    class TRawObjectsDataProvider : public TObjectsDataProvider {
    public:
        using TData = TRawObjectsData;

    public:
        TRawObjectsDataProvider(
            TMaybe<TObjectsGroupingPtr> objectsGrouping, // if not defined - init from groupId
            TCommonObjectsData&& commonData,
            TRawObjectsData&& data,

            bool skipCheck,

            // needed for check parallelization, can pass Nothing() if skipCheck is true
            TMaybe<NPar::TLocalExecutor*> localExecutor
        )
            : TObjectsDataProvider(std::move(objectsGrouping), std::move(commonData), skipCheck)
        {
            if (!skipCheck) {
                data.Check(
                    GetObjectCount(),
                    *GetFeaturesLayout(),
                    CommonData.CatFeaturesHashToString.Get(),
                    *localExecutor
                );
            }
            Data = std::move(data);
        }

        bool operator==(const TObjectsDataProvider& rhs) const override {
            const auto* rhsRawObjectsData = dynamic_cast<const TRawObjectsDataProvider*>(&rhs);
            if (!rhsRawObjectsData) {
                return false;
            }
            return TObjectsDataProvider::operator==(rhs) && (Data == rhsRawObjectsData->Data);
        }

        TObjectsDataProviderPtr GetSubset(
            const TObjectsGroupingSubset& objectsGroupingSubset,
            NPar::TLocalExecutor* localExecutor
        ) const override;

        // needed for effective application of models
        TIntrusiveConstPtr<TRawObjectsDataProvider> GetWithPermutedConsecutiveArrayFeaturesData(
            NPar::TLocalExecutor* localExecutor,

            // if result is already in the same order as this return Nothing()
            TMaybe<TVector<ui32>>* srcArrayPermutation
        ) const;

        // needed for low-level optimizations in CPU applying code
        const TFeaturesArraySubsetIndexing& GetFeaturesArraySubsetIndexing() const {
            return *CommonData.SubsetIndexing;
        }

        /* can return nullptr if this feature is unavailable
         * (ignored or this data provider contains only subset of features)
         */
        TMaybeData<const TFloatValuesHolder*> GetFloatFeature(ui32 floatFeatureIdx) const {
            return MakeMaybeData<const TFloatValuesHolder>(Data.FloatFeatures[floatFeatureIdx]);
        }

        /* can return nullptr if this feature is unavailable
         * (ignored or this data provider contains only subset of features)
         */
        TMaybeData<const THashedCatValuesHolder*> GetCatFeature(ui32 catFeatureIdx) const {
            return MakeMaybeData<const THashedCatValuesHolder>(Data.CatFeatures[catFeatureIdx]);
        }

        /* can return nullptr if this feature is unavailable
         * (ignored or this data provider contains only subset of features)
         */
        TMaybeData<const TStringTextValuesHolder*> GetTextFeature(ui32 textFeatureIdx) const {
            return MakeMaybeData<const TStringTextValuesHolder>(Data.TextFeatures[textFeatureIdx]);
        }

        /* set functions are needed for current python mutable Pool interface
           builders should prefer to set fields directly to avoid unnecessary data copying
        */

        void SetGroupIds(TConstArrayRef<TStringBuf> groupStringIds);
        void SetSubgroupIds(TConstArrayRef<TStringBuf> subgroupStringIds);

    private:
        friend class TQuantizationImpl;
        friend class TRawBuilderDataHelper;

    private:
        TRawObjectsData Data;
    };

    // for use while building and storing this part in TQuantizedObjectsDataProvider
    struct TQuantizedObjectsData {
    public:
        /* some feature holders can contain nullptr
         *  (ignored or this data provider contains only subset of features)
         */
        TVector<THolder<IQuantizedFloatValuesHolder>> FloatFeatures; // [floatFeatureIdx]
        TVector<THolder<IQuantizedCatValuesHolder>> CatFeatures; // [catFeatureIdx]
        TVector<THolder<TTokenizedTextValuesHolder>> TextFeatures; // [textFeatureIdx]

        TQuantizedFeaturesInfoPtr QuantizedFeaturesInfo;

        mutable TMaybe<ui32> CachedFeaturesCheckSum;

    public:
        bool operator==(const TQuantizedObjectsData& rhs) const;

        // not a constructor to enable reuse of allocated data
        void PrepareForInitialization(
            const TDataMetaInfo& metaInfo,
            const NCatboostOptions::TBinarizationOptions& binarizationOptions,
            const TMap<ui32, NCatboostOptions::TBinarizationOptions>& perFloatFeatureQuantization
        );

        void Check(
            ui32 objectCount,
            const TFeaturesLayout& featuresLayout,
            NPar::TLocalExecutor* localExecutor
        ) const;

        void Load(
            const TArraySubsetIndexing<ui32>* subsetIndexing,
            const TFeaturesLayout& featuresLayout,
            TQuantizedFeaturesInfoPtr quantizedFeaturesInfo,
            IBinSaver* binSaver
        );
        void SaveNonSharedPart(const TFeaturesLayout& featuresLayout, IBinSaver* binSaver) const;
    };

    using TRawObjectsDataProviderPtr = TIntrusivePtr<TRawObjectsDataProvider>;


    class TQuantizedObjectsDataProvider : public TObjectsDataProvider {
    public:
        using TData = TQuantizedObjectsData;

    public:
        TQuantizedObjectsDataProvider(
            TMaybe<TObjectsGroupingPtr> objectsGrouping, // if not defined - init from groupId
            TCommonObjectsData&& commonData,
            TQuantizedObjectsData&& data,
            bool skipCheck,

            // needed for check, can pass Nothing() if skipCheck is true
            TMaybe<NPar::TLocalExecutor*> localExecutor
        )
            : TObjectsDataProvider(std::move(objectsGrouping), std::move(commonData), skipCheck)
        {
            if (!skipCheck) {
                data.Check(GetObjectCount(), *GetFeaturesLayout(), *localExecutor);
            }
            Data = std::move(data);
        }

        bool operator==(const TObjectsDataProvider& rhs) const override {
            const auto* rhsQuantizedObjectsData = dynamic_cast<const TQuantizedObjectsDataProvider*>(&rhs);
            if (!rhsQuantizedObjectsData) {
                return false;
            }
            return TObjectsDataProvider::operator==(rhs) && (Data == rhsQuantizedObjectsData->Data);
        }

        TObjectsDataProviderPtr GetSubset(
            const TObjectsGroupingSubset& objectsGroupingSubset,
            NPar::TLocalExecutor* localExecutor
        ) const override;

        TIntrusiveConstPtr<TQuantizedObjectsDataProvider> GetWithPermutedConsecutiveArrayFeaturesData(
            NPar::TLocalExecutor* localExecutor,
            TMaybe<TVector<ui32>>* srcArrayPermutation
        ) const;

        /* can return nullptr if this feature is unavailable
         * (ignored or this data provider contains only subset of features)
         */
        TMaybeData<const IQuantizedFloatValuesHolder*> GetFloatFeature(ui32 floatFeatureIdx) const {
            return MakeMaybeData<const IQuantizedFloatValuesHolder>(Data.FloatFeatures[floatFeatureIdx]);
        }

        /* can return nullptr if this feature is unavailable
         * (ignored or this data provider contains only subset of features)
         */
        TMaybeData<const IQuantizedCatValuesHolder*> GetCatFeature(ui32 catFeatureIdx) const {
            return MakeMaybeData<const IQuantizedCatValuesHolder>(Data.CatFeatures[catFeatureIdx]);
        }

        /* can return nullptr if this feature is unavailable
         * (ignored or this data provider contains only subset of features)
         */
        TMaybeData<const TTokenizedTextValuesHolder*> GetTextFeature(ui32 textFeatureIdx) const {
            return MakeMaybeData<const TTokenizedTextValuesHolder>(Data.TextFeatures[textFeatureIdx]);
        }

        TQuantizedFeaturesInfoPtr GetQuantizedFeaturesInfo() const {
            return Data.QuantizedFeaturesInfo;
        }

        ui32 CalcFeaturesCheckSum(NPar::TLocalExecutor* localExecutor) const;

    protected:
        friend class TObjectsSerialization;

    protected:
        void SaveDataNonSharedPart(IBinSaver* binSaver) const {
            Data.SaveNonSharedPart(*GetFeaturesLayout(), binSaver);
        }

        bool AllFeaturesDataIsCompressedArrays() const;

    protected:
        TQuantizedObjectsData Data;
    };

    using TQuantizedObjectsDataProviderPtr = TIntrusivePtr<TQuantizedObjectsDataProvider>;

    void DbgDumpQuantizedFeatures(
        const TQuantizedObjectsDataProvider& quantizedObjectsDataProvider,
        IOutputStream* out
    );


    struct TExclusiveFeatureBundlesData {
        // lookups
        TVector<TMaybe<TExclusiveBundleIndex>> FlatFeatureIndexToBundlePart; // [flatFeatureIdx]

        TVector<TExclusiveFeaturesBundle> MetaData; // [bundleIdx]

        /* supported TExclusiveFeatureBundleHolder types are TExclusiveFeatureBundleArrayHolder
         * and TExclusiveFeatureBundleSparseArrayHolder
         */
        TVector<THolder<TExclusiveFeatureBundleHolder>> SrcData; // [bundleIdx]

    public:
        TExclusiveFeatureBundlesData() = default;

        // SrcData is not initialized here - create separately
        TExclusiveFeatureBundlesData(
            const NCB::TFeaturesLayout& featuresLayout,
            TVector<TExclusiveFeaturesBundle>&& metaData
        );

        void GetSubset(
            const TFeaturesArraySubsetIndexing* subsetIndexing,
            TExclusiveFeatureBundlesData* subsetData
        ) const;

        void Save(NPar::TLocalExecutor* localExecutor, IBinSaver* binSaver) const;
        void Load(const TArraySubsetIndexing<ui32>* subsetIndexing, IBinSaver* binSaver);
    };


    struct TPackedBinaryFeaturesData {
        // lookups
        TVector<TMaybe<TPackedBinaryIndex>> FlatFeatureIndexToPackedBinaryIndex; // [flatFeatureIdx]
        TVector<std::pair<EFeatureType, ui32>> PackedBinaryToSrcIndex; // [linearPackedBinaryIndex]

        // supported TBinaryPacksHolder types are TBinaryPacksArrayHolder or TBinaryPacksSparseArrayHolder
        TVector<THolder<TBinaryPacksHolder>> SrcData; // [packIdx][objectIdx][bitIdx]

    public:
        TPackedBinaryFeaturesData() = default;

        // does not init data in SrcData elements, it has to be filled later if necessary
        TPackedBinaryFeaturesData(
            const TFeaturesLayout& featuresLayout,
            const TQuantizedFeaturesInfo& quantizedFeaturesInfo,
            const TExclusiveFeatureBundlesData& exclusiveFeatureBundlesData,
            bool dontPack = false // set true to disable binary features packing
        );

        void GetSubset(
            const TFeaturesArraySubsetIndexing* subsetIndexing,
            TPackedBinaryFeaturesData* subsetData
        ) const;

        void Save(NPar::TLocalExecutor* localExecutor, IBinSaver* binSaver) const;
        void Load(const TArraySubsetIndexing<ui32>* subsetIndexing, IBinSaver* binSaver);
    };

}

template <>
struct TDumper<TMaybe<NCB::TPackedBinaryIndex>> {
    template <class S>
    static inline void Dump(S& s, const TMaybe<NCB::TPackedBinaryIndex>& maybePackedBinaryIndex) {
        if (maybePackedBinaryIndex) {
            s << DbgDump(*maybePackedBinaryIndex);
        } else {
            s << '-';
        }
    }
};


namespace NCB {
    TString DbgDumpMetaData(const TPackedBinaryFeaturesData& packedBinaryFeaturesData);


    struct TQuantizedForCPUObjectsData {
        TQuantizedObjectsData Data;
        TPackedBinaryFeaturesData PackedBinaryFeaturesData;
        TExclusiveFeatureBundlesData ExclusiveFeatureBundlesData;

    public:
        void Load(
            const TArraySubsetIndexing<ui32>* subsetIndexing,
            const TFeaturesLayout& featuresLayout,
            TQuantizedFeaturesInfoPtr quantizedFeaturesInfo,
            IBinSaver* binSaver
        );
    };


    class TQuantizedForCPUObjectsDataProvider : public TQuantizedObjectsDataProvider {
    public:
        using TData = TQuantizedForCPUObjectsData;

    public:
        TQuantizedForCPUObjectsDataProvider(
            TMaybe<TObjectsGroupingPtr> objectsGrouping, // if not defined - init from groupId
            TCommonObjectsData&& commonData,
            TQuantizedForCPUObjectsData&& data,
            bool skipCheck,

            // needed for check, can pass Nothing() if skipCheck is true
            TMaybe<NPar::TLocalExecutor*> localExecutor
        );

        TQuantizedForCPUObjectsDataProvider(
            TQuantizedObjectsDataProvider&& arg
        );

        TObjectsDataProviderPtr GetSubset(
            const TObjectsGroupingSubset& objectsGroupingSubset,
            NPar::TLocalExecutor* localExecutor
        ) const override;

        // needed for effective calculation with Permutation blocks on CPU
        void EnsureConsecutiveFeaturesData(NPar::TLocalExecutor* localExecutor);

        // needed for low-level optimizations in CPU training code
        const TFeaturesArraySubsetIndexing& GetFeaturesArraySubsetIndexing() const {
            return *CommonData.SubsetIndexing;
        }

        TMaybeData<const IQuantizedFloatValuesHolder*> GetNonPackedFloatFeature(ui32 floatFeatureIdx) const {
            CheckFeatureIsNotBinaryPackedOrBundled(EFeatureType::Float, "Float", floatFeatureIdx);
            return MakeMaybeData(Data.FloatFeatures[floatFeatureIdx].Get());
        }

        TMaybeData<const IQuantizedCatValuesHolder*> GetNonPackedCatFeature(ui32 catFeatureIdx) const {
            CheckFeatureIsNotBinaryPackedOrBundled(EFeatureType::Categorical, "Cat", catFeatureIdx);
            return MakeMaybeData(Data.CatFeatures[catFeatureIdx].Get());
        }

        TCatFeatureUniqueValuesCounts GetCatFeatureUniqueValuesCounts(ui32 catFeatureIdx) const {
            return CatFeatureUniqueValuesCounts[catFeatureIdx];
        }


        size_t GetPackedBinaryFeaturesSize() const {
            return PackedBinaryFeaturesData.PackedBinaryToSrcIndex.size();
        }

        size_t GetBinaryFeaturesPacksSize() const {
            return PackedBinaryFeaturesData.SrcData.size();
        }

        const TBinaryPacksHolder& GetBinaryFeaturesPack(ui32 packIdx) const {
            return *(PackedBinaryFeaturesData.SrcData[packIdx]);
        }

        TMaybe<TPackedBinaryIndex> GetFloatFeatureToPackedBinaryIndex(TFloatFeatureIdx floatFeatureIdx) const {
            return GetFeatureToPackedBinaryIndex(floatFeatureIdx);
        }

        TMaybe<TPackedBinaryIndex> GetCatFeatureToPackedBinaryIndex(TCatFeatureIdx catFeatureIdx) const {
            return GetFeatureToPackedBinaryIndex(catFeatureIdx);
        }

        template <EFeatureType FeatureType>
        inline TMaybe<TPackedBinaryIndex> GetFeatureToPackedBinaryIndex(TFeatureIdx<FeatureType> featureIdx) const {
            const ui32 flatFeatureIdx = GetFeaturesLayout()->GetExternalFeatureIdx(*featureIdx, FeatureType);
            return PackedBinaryFeaturesData.FlatFeatureIndexToPackedBinaryIndex[flatFeatureIdx];
        }

        template <EFeatureType FeatureType>
        bool IsFeaturePackedBinary(TFeatureIdx<FeatureType> featureIdx) const {
            return GetFeatureToPackedBinaryIndex(featureIdx).Defined();
        }

        std::pair<EFeatureType, ui32> GetPackedBinaryFeatureSrcIndex(
            TPackedBinaryIndex packedBinaryIndex
        ) const {
            return PackedBinaryFeaturesData.PackedBinaryToSrcIndex[packedBinaryIndex.GetLinearIdx()];
        }


        size_t GetExclusiveFeatureBundlesSize() const {
            return ExclusiveFeatureBundlesData.MetaData.size();
        }

        TConstArrayRef<TExclusiveFeaturesBundle> GetExclusiveFeatureBundlesMetaData() const {
            return ExclusiveFeatureBundlesData.MetaData;
        }

        const TExclusiveFeatureBundleHolder& GetExclusiveFeaturesBundle(ui32 bundleIdx) const {
            return *ExclusiveFeatureBundlesData.SrcData[bundleIdx];
        }

        TMaybe<TExclusiveBundleIndex> GetFloatFeatureToExclusiveBundleIndex(
            TFloatFeatureIdx floatFeatureIdx
        ) const {
            return GetFeatureToExclusiveBundleIndex(floatFeatureIdx);
        }

        TMaybe<TExclusiveBundleIndex> GetCatFeatureToExclusiveBundleIndex(TCatFeatureIdx catFeatureIdx) const {
            return GetFeatureToExclusiveBundleIndex(catFeatureIdx);
        }

        template <EFeatureType FeatureType>
        inline TMaybe<TExclusiveBundleIndex> GetFeatureToExclusiveBundleIndex(
            TFeatureIdx<FeatureType> featureIdx
        ) const {
            const ui32 flatFeatureIdx = GetFeaturesLayout()->GetExternalFeatureIdx(*featureIdx, FeatureType);
            return ExclusiveFeatureBundlesData.FlatFeatureIndexToBundlePart[flatFeatureIdx];
        }

        template <EFeatureType FeatureType>
        bool IsFeatureInExclusiveBundle(TFeatureIdx<FeatureType> featureIdx) const {
            return GetFeatureToExclusiveBundleIndex(featureIdx).Defined();
        }

        /* binary packs and bundles in *this are compatible with rhs
         * useful for low-level compatibility (for example when calculating hashes by packs/bundles)
         */
        bool IsPackingCompatibleWith(const TQuantizedForCPUObjectsDataProvider& rhs) const;

    protected:
        friend class TObjectsSerialization;

    protected:
        void SaveDataNonSharedPart(IBinSaver* binSaver) const {
            NPar::TLocalExecutor localExecutor;

            PackedBinaryFeaturesData.Save(&localExecutor, binSaver);
            ExclusiveFeatureBundlesData.Save(&localExecutor, binSaver);
            Data.SaveNonSharedPart(*GetFeaturesLayout(), binSaver);
        }

    private:
        void Check(
            const TPackedBinaryFeaturesData& packedBinaryData,
            const TExclusiveFeatureBundlesData& exclusiveFeatureBundlesData
        ) const;

        void CheckFeatureIsNotBinaryPackedOrBundled(
            EFeatureType featureType,
            const TStringBuf featureTypeName,
            ui32 perTypeFeatureIdx
        ) const;

    private:
        TPackedBinaryFeaturesData PackedBinaryFeaturesData;
        TExclusiveFeatureBundlesData ExclusiveFeatureBundlesData;

        // store directly instead of looking up in Data.QuantizedFeaturesInfo for runtime efficiency
        TVector<TCatFeatureUniqueValuesCounts> CatFeatureUniqueValuesCounts; // [catFeatureIdx]
    };


    // calls generic f with 'const T' pointer to raw data of compressedArray with the appropriate T
    template <class F>
    inline void DispatchBitsPerKeyToDataType(
        const TCompressedArray& compressedArray,
        const TStringBuf errorMessagePrefix,
        F&& f
    ) {
        const auto bitsPerKey = compressedArray.GetBitsPerKey();
        const char* rawDataPtr = compressedArray.GetRawPtr();
        switch (bitsPerKey) {
            case 8:
                f((const ui8*)rawDataPtr);
                break;
            case 16:
                f((const ui16*)rawDataPtr);
                break;
            case 32:
                f((const ui32*)rawDataPtr);
                break;
            default:
                CB_ENSURE_INTERNAL(
                    false,
                    errorMessagePrefix << "unsupported bitsPerKey: " << bitsPerKey);
        }
    }


    // needed to make friends with TObjectsDataProvider s
    class TObjectsSerialization {
    public:
        template <class TObjectsDataProviderType>
        static void Load(
            TFeaturesLayoutPtr featuresLayout,
            TObjectsGroupingPtr objectsGrouping,
            IBinSaver* binSaver,
            TIntrusivePtr<TObjectsDataProviderType>* objectsData
        ) {
            TCommonObjectsData commonObjectsData;
            commonObjectsData.Load(featuresLayout, objectsGrouping->GetObjectCount(), binSaver);

            TQuantizedFeaturesInfoPtr quantizedFeaturesInfo;
            AddWithShared(binSaver, &quantizedFeaturesInfo);

            typename TObjectsDataProviderType::TData quantizedObjectsData;
            quantizedObjectsData.Load(
                commonObjectsData.SubsetIndexing.Get(),
                *featuresLayout,
                quantizedFeaturesInfo,
                binSaver
            );
            *objectsData = MakeIntrusive<TObjectsDataProviderType>(
                objectsGrouping,
                std::move(commonObjectsData),
                std::move(quantizedObjectsData),
                true,
                Nothing()
            );
        }

        template <class TObjectsDataProviderType>
        static void SaveNonSharedPart(const TObjectsDataProviderType& objectsData, IBinSaver* binSaver) {
            objectsData.SaveCommonDataNonSharedPart(binSaver);

            TQuantizedFeaturesInfoPtr quantizedFeaturesInfo = objectsData.GetQuantizedFeaturesInfo();
            AddWithShared(binSaver, &quantizedFeaturesInfo);

            objectsData.SaveDataNonSharedPart(binSaver);
        }
    };

    THashMap<ui32, TString> MergeCatFeaturesHashToString(const TObjectsDataProvider& objectsData);

}
