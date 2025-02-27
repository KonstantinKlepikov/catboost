#include "string.h"

#include <util/string/ascii.h>
#include <util/system/sys_alloc.h>
#include <util/charset/wide.h>

#include <iostream>
#include <cctype>

namespace NDetail {
    struct TStaticData {
        TStringData Data;
        size_t Buf[4];
    };

    static const TStaticData STATIC_DATA = {{0, 0, 0}, {0, 0, 0, 0}};
    void const* STRING_DATA_NULL = STATIC_DATA.Buf;

    template <typename TCharType>
    TCharType* Allocate(size_t oldLen, size_t newLen, TStringData* oldData) {
        static_assert(offsetof(TStaticData, Buf) == sizeof(TStringData), "expect offsetof(TStaticData, Buf) == sizeof(TStringData)");
        static_assert(sizeof(STATIC_DATA.Buf) >= sizeof(TCharType), "expect sizeof(STATIC_DATA.Buf) >= sizeof(TCharType)");

        using TData = TStringData;
        using TDataTraits = TStringDataTraits<TCharType>;

        if (0 == newLen) {
            return TDataTraits::GetNull();
        }

        if (Y_UNLIKELY(newLen >= TDataTraits::MaxSize)) {
            throw std::length_error("Allocate() will fail");
        }

        size_t bufLen = newLen;
        const size_t dataSize = TDataTraits::CalcAllocationSizeAndCapacity(bufLen);
        Y_ASSERT(bufLen >= newLen);

        auto ret = reinterpret_cast<TData*>(oldData == nullptr ? y_allocate(dataSize) : y_reallocate(oldData, dataSize));

        ret->Refs = 1;
        ret->BufLen = bufLen;
        ret->Length = oldLen;

        TCharType* chars = TDataTraits::GetChars(ret);

        chars[oldLen] = TCharType();

        return chars;
    }

    template char* Allocate<char>(size_t oldLen, size_t newLen, TStringData* oldData);
    template wchar16* Allocate<wchar16>(size_t oldLen, size_t newLen, TStringData* oldData);
    template wchar32* Allocate<wchar32>(size_t oldLen, size_t newLen, TStringData* oldData);

    void Deallocate(void* data) {
        y_deallocate(data);
    }
}

std::ostream& operator<<(std::ostream& os, const TString& s) {
    return os.write(s.data(), s.size());
}

template<>
bool TBasicString<TString, char, TCharTraits<char>>::to_lower(size_t pos, size_t n) {
    return Transform([](size_t, char c) { return AsciiToLower(c); }, pos, n);
}

template<>
bool TBasicString<TString, char, TCharTraits<char>>::to_upper(size_t pos, size_t n) {
    return Transform([](size_t, char c) { return AsciiToUpper(c); }, pos, n);
}

template<>
bool TBasicString<TString, char, TCharTraits<char>>::to_title(size_t pos, size_t n) {
    if (n == 0) {
        return false;
    }
    bool changed = to_upper(pos, 1);
    return to_lower(pos + 1, n - 1) || changed;
}

template<>
TUtf16String&
TBasicString<TUtf16String, wchar16, TCharTraits<wchar16>>::AppendAscii(const ::TFixedString<char>& s) {
    ReserveAndResize(size() + s.Length);

    auto dst = begin() + size() - s.Length;

    for (const char* src = s.Start; dst != end(); ++dst, ++src) {
        *dst = static_cast<wchar16>(*src);
    }

    return *This();
}

template<>
TUtf16String&
TBasicString<TUtf16String, wchar16, TCharTraits<wchar16>>::AppendUtf8(const ::TFixedString<char>& s) {
    size_t oldSize = size();
    ReserveAndResize(size() + s.Length * 4);
    size_t written = 0;
    size_t pos = UTF8ToWideImpl(s.Start, s.Length, begin() + oldSize, written);
    if (pos != s.Length)
        ythrow yexception() << "failed to decode UTF-8 string at pos " << pos << ::NDetail::InStringMsg(s.Start, s.Length);
    remove(oldSize + written);

    return *This();
}

template<>
bool TBasicString<TUtf16String, wchar16, TCharTraits<wchar16>>::to_lower(size_t pos, size_t n) {
    return ToLower(*This(), pos, n);
}

template<>
bool TBasicString<TUtf16String, wchar16, TCharTraits<wchar16>>::to_upper(size_t pos, size_t n) {
    return ToUpper(*This(), pos, n);
}

template<>
bool TBasicString<TUtf16String, wchar16, TCharTraits<wchar16>>::to_title(size_t pos, size_t n) {
    return ToTitle(*This(), pos, n);
}

template<>
TUtf32String&
TBasicString<TUtf32String, wchar32, TCharTraits<wchar32>>::AppendAscii(const ::TFixedString<char>& s) {
    ReserveAndResize(size() + s.Length);

    auto dst = begin() + size() - s.Length;

    for (const char* src = s.Start; dst != end(); ++dst, ++src) {
        *dst = static_cast<wchar32>(*src);
    }

    return *This();
}

template<>
TUtf32String&
TBasicString<TUtf32String, wchar32, TCharTraits<wchar32>>::AppendUtf8(const ::TFixedString<char>& s) {
    size_t oldSize = size();
    ReserveAndResize(size() + s.Length * 4);
    size_t written = 0;
    size_t pos = UTF8ToWideImpl(s.Start, s.Length, begin() + oldSize, written);
    if (pos != s.Length)
        ythrow yexception() << "failed to decode UTF-8 string at pos " << pos << ::NDetail::InStringMsg(s.Start, s.Length);
    remove(oldSize + written);

    return *This();
}

template<>
TUtf32String&
TBasicString<TUtf32String, wchar32, TCharTraits<wchar32>>::AppendUtf16(const ::TFixedString<wchar16>& s) {
    size_t oldSize = size();
    ReserveAndResize(size() + s.Length * 2);

    wchar32* oldEnd = begin() + oldSize;
    wchar32* end = oldEnd;
    NDetail::UTF16ToUTF32ImplScalar(s.Start, s.Start + s.Length, end);
    size_t written = end - oldEnd;

    remove(oldSize + written);

    return *This();
}


template<>
bool TBasicString<TUtf32String, wchar32, TCharTraits<wchar32>>::to_lower(size_t pos, size_t n) {
    return ToLower(*This(), pos, n);
}

template<>
bool TBasicString<TUtf32String, wchar32, TCharTraits<wchar32>>::to_upper(size_t pos, size_t n) {
    return ToUpper(*This(), pos, n);
}

template<>
bool TBasicString<TUtf32String, wchar32, TCharTraits<wchar32>>::to_title(size_t pos, size_t n) {
    return ToTitle(*This(), pos, n);
}
