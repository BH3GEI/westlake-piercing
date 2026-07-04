#pragma once

// Header-only stub of the minikin API surface used by AOSP 15 libhwui.
// Mirrors declarations from frameworks/minikin/include/minikin/*.h but with
// inline no-op / zero-return implementations and no external dependencies
// (no harfbuzz, no icu, no libutils).

#include <stdint.h>
#include <sys/types.h>

#include <algorithm>
#include <cmath>
#include <cstddef>
#include <cstring>
#include <functional>
#include <limits>
#include <memory>
#include <optional>
#include <ostream>
#include <string>
#include <string_view>
#include <utility>
#include <vector>

namespace minikin {

// ---------------------------------------------------------------- Buffer.h

class BufferReader {
public:
    static constexpr size_t kMaxAlignment = 8;

    explicit BufferReader(const void* buffer) : BufferReader(buffer, 0) {}
    BufferReader(const void* buffer, uint32_t pos)
        : mCurrent(buffer == nullptr ? nullptr
                                     : reinterpret_cast<const uint8_t*>(buffer) + pos) {}

    template <typename T, size_t AlignT = sizeof(T)>
    static const uint8_t* align(const uint8_t* p) {
        constexpr size_t mask = AlignT - 1;
        intptr_t i = reinterpret_cast<intptr_t>(p);
        intptr_t aligned = (i + mask) & ~mask;
        return reinterpret_cast<const uint8_t*>(aligned);
    }

    template <typename T, size_t align = sizeof(T)>
    const T& read() {
        const T* data = map<T, align>(sizeof(T));
        return *data;
    }

    template <typename T, size_t align = sizeof(T)>
    const T* map(uint32_t size) {
        mCurrent = BufferReader::align<T, align>(mCurrent);
        const T* data = reinterpret_cast<const T*>(mCurrent);
        mCurrent += size;
        return data;
    }

    template <typename T, size_t align = sizeof(T)>
    void skip() {
        mCurrent = BufferReader::align<T, align>(mCurrent);
        mCurrent += sizeof(T);
    }

    template <typename T, size_t align = sizeof(T)>
    std::pair<const T*, uint32_t> readArray() {
        uint32_t size = read<uint32_t>();
        mCurrent = BufferReader::align<T, align>(mCurrent);
        const T* data = reinterpret_cast<const T*>(mCurrent);
        mCurrent += size * sizeof(T);
        return std::make_pair(data, size);
    }

    template <typename T, size_t align = sizeof(T)>
    void skipArray() {
        uint32_t size = read<uint32_t>();
        mCurrent = BufferReader::align<T, align>(mCurrent);
        mCurrent += size * sizeof(T);
    }

    std::string_view readString() {
        auto [data, size] = readArray<char>();
        return std::string_view(data, size);
    }

    void skipString() { skipArray<char>(); }

    const void* current() const { return mCurrent; }

private:
    const uint8_t* mCurrent;
};

class BufferWriter {
public:
    explicit BufferWriter(void* buffer) : BufferWriter(buffer, 0) {}
    BufferWriter(void* buffer, uint32_t pos)
        : mData(reinterpret_cast<uint8_t*>(buffer)), mPos(pos) {}

    BufferWriter(BufferWriter&&) = default;
    BufferWriter& operator=(BufferWriter&&) = default;

    template <typename T, size_t align = sizeof(T)>
    void write(const std::common_type_t<T>& data) {
        T* buf = reserve<T, align>(sizeof(T));
        if (buf != nullptr) {
            memcpy(buf, &data, sizeof(T));
        }
    }

    template <typename T, size_t align = sizeof(T)>
    T* reserve(uint32_t size) {
        mPos = alignPos<T, align>(mPos);
        uint32_t pos = static_cast<uint32_t>(mPos);
        mPos += size;
        return mData == nullptr ? nullptr : reinterpret_cast<T*>(mData + pos);
    }

    template <typename T, size_t align = sizeof(T)>
    void writeArray(const std::common_type_t<T>* data, uint32_t size) {
        write<uint32_t>(size);
        mPos = alignPos<T, align>(mPos);
        if (mData != nullptr) {
            memcpy(mData + mPos, data, size * sizeof(T));
        }
        mPos += size * sizeof(T);
    }

    void writeString(std::string_view string) {
        writeArray<char>(string.data(), static_cast<uint32_t>(string.size()));
    }

    size_t size() const { return mPos; }

private:
    uint8_t* mData;
    size_t mPos;

    template <typename T, size_t AlignT>
    size_t alignPos(size_t pos) const {
        constexpr size_t mask = AlignT - 1;
        return (pos + mask) & ~mask;
    }

    BufferWriter(const BufferWriter&) = delete;
    void operator=(const BufferWriter&) = delete;
};

// ----------------------------------------------------------------- Point.h

struct Point {
    Point() : x(0), y(0) {}
    Point(float x, float y) : x(x), y(y) {}
    float x;
    float y;
};

// ----------------------------------------------------------- MinikinRect.h

struct MinikinRect {
    MinikinRect() : mLeft(0), mTop(0), mRight(0), mBottom(0) {}
    MinikinRect(float left, float top, float right, float bottom)
        : mLeft(left), mTop(top), mRight(right), mBottom(bottom) {}

    bool isEmpty() const { return mLeft == mRight || mTop == mBottom; }
    bool isValid() const { return !std::isnan(mLeft); }
    float width() const { return mRight - mLeft; }

    void setEmpty() { mLeft = mRight = mTop = mBottom = 0; }

    void offset(float dx, float dy) {
        mLeft += dx;
        mTop += dy;
        mRight += dx;
        mBottom += dy;
    }

    void join(float l, float t, float r, float b, float dx, float dy) {
        if (isEmpty()) {
            mLeft = l + dx;
            mTop = t + dy;
            mRight = r + dx;
            mBottom = b + dy;
        } else {
            mLeft = std::min(mLeft, l + dx);
            mTop = std::min(mTop, t + dy);
            mRight = std::max(mRight, r + dx);
            mBottom = std::max(mBottom, b + dy);
        }
    }

    void offset(const Point& p) { offset(p.x, p.y); }
    void join(const MinikinRect& r) { return join(r.mLeft, r.mTop, r.mRight, r.mBottom, 0, 0); }
    void join(const MinikinRect& r, float dx, float dy) {
        return join(r.mLeft, r.mTop, r.mRight, r.mBottom, dx, dy);
    }
    void join(const MinikinRect& r, const Point& p) {
        return join(r.mLeft, r.mTop, r.mRight, r.mBottom, p.x, p.y);
    }

    static MinikinRect makeInvalid() {
        return MinikinRect(
                std::numeric_limits<float>::quiet_NaN(), std::numeric_limits<float>::quiet_NaN(),
                std::numeric_limits<float>::quiet_NaN(), std::numeric_limits<float>::quiet_NaN());
    }

    float mLeft;
    float mTop;
    float mRight;
    float mBottom;
};

inline std::ostream& operator<<(std::ostream& os, const MinikinRect& r) {
    return os << "(" << r.mLeft << ", " << r.mTop << ")-(" << r.mRight << ", " << r.mBottom << ")";
}

inline bool operator==(const MinikinRect& l, const MinikinRect& r) {
    return l.mLeft == r.mLeft && l.mTop == r.mTop && l.mRight == r.mRight && l.mBottom == r.mBottom;
}

inline bool operator!=(const MinikinRect& l, const MinikinRect& r) {
    return !(l == r);
}

// --------------------------------------------------------- MinikinExtent.h

struct MinikinExtent {
    MinikinExtent() : ascent(0), descent(0) {}
    MinikinExtent(float ascent, float descent) : ascent(ascent), descent(descent) {}

    void extendBy(const MinikinExtent& e) {
        ascent = std::min(ascent, e.ascent);
        descent = std::max(descent, e.descent);
    }

    float ascent;   // negative
    float descent;  // positive
};

inline std::ostream& operator<<(std::ostream& os, const MinikinExtent& e) {
    return os << "(ascent = " << e.ascent << ", descent = " << e.descent << ")";
}

inline bool operator==(const MinikinExtent& l, const MinikinExtent& r) {
    return l.ascent == r.ascent && l.descent == r.descent;
}

inline bool operator!=(const MinikinExtent& l, const MinikinExtent& r) {
    return !(l == r);
}

// ----------------------------------------------------------------- Range.h

class Range {
public:
    static constexpr uint32_t NOWHERE = std::numeric_limits<uint32_t>::max();

    Range(uint32_t start, uint32_t end) : mStart(start), mEnd(end) {}
    Range() : Range(NOWHERE, NOWHERE) {}

    Range(const Range&) = default;
    Range& operator=(const Range&) = default;

    static Range invalidRange() { return Range(NOWHERE, NOWHERE); }
    inline bool isValid() const { return mStart != NOWHERE && mEnd != NOWHERE; }

    inline uint32_t getStart() const { return mStart; }
    inline void setStart(uint32_t start) { mStart = start; }

    inline uint32_t getEnd() const { return mEnd; }
    inline void setEnd(uint32_t end) { mEnd = end; }

    inline uint32_t getLength() const { return mEnd - mStart; }

    inline bool isEmpty() const { return mStart == mEnd; }

    inline uint32_t toRangeOffset(uint32_t globalPos) const { return globalPos - mStart; }
    inline uint32_t toGlobalOffset(uint32_t rangePos) const { return mStart + rangePos; }

    inline std::pair<Range, Range> split(uint32_t pos) const {
        return std::make_pair(Range(mStart, pos), Range(pos, mEnd));
    }

    inline bool contains(const Range& other) const {
        return mStart <= other.mStart && other.mEnd <= mEnd;
    }

    inline bool contains(uint32_t pos) const { return mStart <= pos && pos < mEnd; }

    inline static bool intersects(const Range& left, const Range& right) {
        return left.isValid() && right.isValid() && left.mStart < right.mEnd &&
               right.mStart < left.mEnd;
    }
    inline static Range intersection(const Range& left, const Range& right) {
        return Range(std::max(left.mStart, right.mStart), std::min(left.mEnd, right.mEnd));
    }

    static Range merge(const Range& left, const Range& right) {
        return Range({std::min(left.mStart, right.mStart), std::max(left.mEnd, right.mEnd)});
    }

    inline bool operator==(const Range& o) const { return mStart == o.mStart && mEnd == o.mEnd; }
    inline bool operator!=(const Range& o) const { return !(*this == o); }

    inline Range operator+(int32_t shift) const { return Range(mStart + shift, mEnd + shift); }
    inline Range operator-(int32_t shift) const { return Range(mStart - shift, mEnd - shift); }

private:
    class RangeIterator {
    public:
        RangeIterator(uint32_t pos) : mPos(pos) {}

        inline bool operator!=(const RangeIterator& o) const { return o.mPos != mPos; }
        inline uint32_t operator*() const { return mPos; }
        inline RangeIterator& operator++() {
            mPos++;
            return *this;
        }

    private:
        uint32_t mPos;
    };

public:
    inline RangeIterator begin() const { return RangeIterator(mStart); }
    inline RangeIterator end() const { return RangeIterator(mEnd); }

private:
    uint32_t mStart;
    uint32_t mEnd;
};

inline std::ostream& operator<<(std::ostream& os, const Range& r) {
    return os << "(" << r.getStart() << ", " << r.getEnd() << ")";
}

// -------------------------------------------------------- U16StringPiece.h

class U16StringPiece {
public:
    U16StringPiece() : mData(nullptr), mLength(0) {}
    U16StringPiece(const uint16_t* data, uint32_t length) : mData(data), mLength(length) {}
    U16StringPiece(const std::vector<uint16_t>& v)  // Intentionally not explicit.
        : mData(v.data()), mLength(static_cast<uint32_t>(v.size())) {}
    template <uint32_t length>
    U16StringPiece(uint16_t const (&data)[length]) : mData(data), mLength(length) {}

    U16StringPiece(const U16StringPiece&) = default;
    U16StringPiece& operator=(const U16StringPiece&) = default;

    inline const uint16_t* data() const { return mData; }
    inline uint32_t size() const { return mLength; }
    inline uint32_t length() const { return mLength; }

    inline const uint16_t& at(uint32_t pos) const { return mData[pos]; }
    inline const uint16_t& operator[](uint32_t pos) const { return mData[pos]; }

    inline U16StringPiece substr(const Range& range) const {
        return U16StringPiece(mData + range.getStart(), range.getLength());
    }

    inline bool hasChar(uint16_t c) const {
        const uint16_t* end = mData + mLength;
        return std::find(mData, end, c) != end;
    }

    uint32_t codePointAt(uint32_t pos) const { return mData[pos]; }

private:
    const uint16_t* mData;
    uint32_t mLength;
};

// ------------------------------------------------------------ LocaleList.h

const static uint32_t kEmptyLocaleListId = 0;

inline uint32_t registerLocaleList(const std::string& /* locales */) {
    return kEmptyLocaleListId;
}

inline std::string getLocaleString(uint32_t /* id */) {
    return std::string();
}

// --------------------------------------------------------- FamilyVariant.h

enum class FamilyVariant : uint8_t {
    DEFAULT = 0,
    COMPACT = 1,
    ELEGANT = 2,
};

// -------------------------------------------------- FontFamily.h (enum part)

enum VariationFamilyType : uint8_t {
    None = 0,
    SingleFont_wghtOnly = 1,
    SingleFont_wght_ital = 2,
    TwoFont_wght = 3,
};

// ------------------------------------------------------ Layout.h (enum part)

enum class Bidi : uint8_t {
    LTR = 0b0000,
    RTL = 0b0001,
    DEFAULT_LTR = 0b0010,
    DEFAULT_RTL = 0b0011,
    FORCE_LTR = 0b0100,
    FORCE_RTL = 0b0101,
};

inline bool isRtl(Bidi bidi) {
    return static_cast<uint8_t>(bidi) & 0b0001;
}
inline bool isOverride(Bidi bidi) {
    return static_cast<uint8_t>(bidi) & 0b0100;
}

enum RunFlag : uint8_t {
    NONE = 0,
    LEFT_EDGE = 1,
    RIGHT_EDGE = 2,
    WHOLE_LINE = LEFT_EDGE | RIGHT_EDGE,
};

// ------------------------------------------------------------- Hyphenator.h

enum class HyphenationType : uint8_t {
    DONT_BREAK = 0,
    BREAK_AND_INSERT_HYPHEN = 1,
    BREAK_AND_INSERT_ARMENIAN_HYPHEN = 2,
    BREAK_AND_INSERT_MAQAF = 3,
    BREAK_AND_INSERT_UCAS_HYPHEN = 4,
    BREAK_AND_DONT_INSERT_HYPHEN = 5,
    BREAK_AND_REPLACE_WITH_HYPHEN = 6,
    BREAK_AND_INSERT_HYPHEN_AT_NEXT_LINE = 7,
    BREAK_AND_INSERT_HYPHEN_AND_ZWJ = 8,
};

enum class EndHyphenEdit : uint8_t {
    NO_EDIT = 0b000,
    REPLACE_WITH_HYPHEN = 0b001,
    INSERT_HYPHEN = 0b010,
    INSERT_ARMENIAN_HYPHEN = 0b011,
    INSERT_MAQAF = 0b100,
    INSERT_UCAS_HYPHEN = 0b101,
    INSERT_ZWJ_AND_HYPHEN = 0b110,
};

enum class StartHyphenEdit : uint8_t {
    NO_EDIT = 0b00,
    INSERT_HYPHEN = 0b01,
    INSERT_ZWJ = 0b10,
};

typedef uint8_t HyphenEdit;
constexpr uint8_t START_BITS_SHIFT = 3;
constexpr uint8_t MASK_END_OF_LINE = 0b00111;
constexpr uint8_t MASK_START_OF_LINE = 0b11000;

inline HyphenEdit packHyphenEdit(StartHyphenEdit start, EndHyphenEdit end) {
    return static_cast<uint8_t>(start) << START_BITS_SHIFT | static_cast<uint8_t>(end);
}

inline EndHyphenEdit endHyphenEdit(HyphenEdit hyphenEdit) {
    return static_cast<EndHyphenEdit>(hyphenEdit & MASK_END_OF_LINE);
}

inline StartHyphenEdit startHyphenEdit(HyphenEdit hyphenEdit) {
    return static_cast<StartHyphenEdit>(hyphenEdit >> START_BITS_SHIFT);
}

inline bool isReplacement(EndHyphenEdit hyph) {
    return hyph == EndHyphenEdit::REPLACE_WITH_HYPHEN;
}

inline bool isInsertion(StartHyphenEdit hyph) {
    return hyph != StartHyphenEdit::NO_EDIT;
}

inline bool isInsertion(EndHyphenEdit hyph) {
    return static_cast<uint8_t>(hyph) >= static_cast<uint8_t>(EndHyphenEdit::INSERT_HYPHEN);
}

inline EndHyphenEdit editForThisLine(HyphenationType /* type */) {
    return EndHyphenEdit::NO_EDIT;
}

inline StartHyphenEdit editForNextLine(HyphenationType /* type */) {
    return StartHyphenEdit::NO_EDIT;
}

class Hyphenator {
public:
    virtual ~Hyphenator() {}

    virtual void hyphenate(const U16StringPiece& /* word */, HyphenationType* /* out */) const {}

    void hyphenate(const U16StringPiece& word, std::vector<HyphenationType>* out) const {
        out->assign(word.size(), HyphenationType::DONT_BREAK);
    }

    static bool isLineBreakingHyphen(uint32_t /* cp */) { return false; }

    static Hyphenator* loadBinary(const uint8_t* /* patternData */, size_t /* dataSize */,
                                  size_t /* minPrefix */, size_t /* minSuffix */,
                                  const std::string& /* locale */) {
        return new Hyphenator();
    }
};

inline void addHyphenator(const std::string& /* localeStr */,
                          const Hyphenator* /* hyphenator */) {}
inline void addHyphenatorAlias(const std::string& /* fromLocaleStr */,
                               const std::string& /* toLocaleStr */) {}

// -------------------------------------------------------------- FontStyle.h

class FontStyle {
public:
    enum class Weight : uint16_t {
        THIN = 100,
        EXTRA_LIGHT = 200,
        LIGHT = 300,
        NORMAL = 400,
        MEDIUM = 500,
        SEMI_BOLD = 600,
        BOLD = 700,
        EXTRA_BOLD = 800,
        BLACK = 900,
        EXTRA_BLACK = 1000,
    };

    enum class Slant : bool {
        ITALIC = true,
        UPRIGHT = false,
    };

    constexpr FontStyle() : FontStyle(Weight::NORMAL, Slant::UPRIGHT) {}
    constexpr explicit FontStyle(Weight weight) : FontStyle(weight, Slant::UPRIGHT) {}
    constexpr explicit FontStyle(Slant slant) : FontStyle(Weight::NORMAL, slant) {}
    constexpr FontStyle(Weight weight, Slant slant)
        : FontStyle(static_cast<uint16_t>(weight), slant) {}
    constexpr FontStyle(uint16_t weight, Slant slant) : mWeight(weight), mSlant(slant) {}
    explicit FontStyle(BufferReader* reader) {
        mWeight = reader->read<uint16_t>();
        mSlant = static_cast<Slant>(reader->read<uint8_t>());
    }

    void writeTo(BufferWriter* writer) const {
        writer->write<uint16_t>(mWeight);
        writer->write<uint8_t>(static_cast<uint8_t>(mSlant));
    }

    constexpr uint16_t weight() const { return mWeight; }
    constexpr Slant slant() const { return mSlant; }

    constexpr uint32_t identifier() const {
        return (static_cast<uint32_t>(weight()) << 16) | static_cast<uint32_t>(slant());
    }

private:
    uint16_t mWeight;
    Slant mSlant;
};

constexpr bool operator==(const FontStyle& l, const FontStyle& r) {
    return l.weight() == r.weight() && l.slant() == r.slant();
}

constexpr bool operator!=(const FontStyle& l, const FontStyle& r) {
    return !(l == r);
}

// ---------------------------------------------------------- FontVariation.h

typedef uint32_t AxisTag;

struct FontVariation {
    FontVariation() = default;
    FontVariation(AxisTag axisTag, float value) : axisTag(axisTag), value(value) {}
    AxisTag axisTag;
    float value;
};

constexpr bool operator==(const FontVariation& l, const FontVariation& r) {
    return l.axisTag == r.axisTag && l.value == r.value;
}

constexpr bool operator!=(const FontVariation& l, const FontVariation& r) {
    return !(l == r);
}

constexpr bool operator<(const FontVariation& l, const FontVariation& r) {
    return l.axisTag < r.axisTag;
}

constexpr bool operator>(const FontVariation& l, const FontVariation& r) {
    return l.axisTag > r.axisTag;
}

constexpr bool operator<=(const FontVariation& l, const FontVariation& r) {
    return l.axisTag <= r.axisTag;
}

constexpr bool operator>=(const FontVariation& l, const FontVariation& r) {
    return l.axisTag >= r.axisTag;
}

// Immutable variation settings (real minikin uses SortedPackedVector).
using VariationSettings = std::vector<FontVariation>;

// ------------------------------------------------------------ FontFeature.h

struct FontFeature {
    uint32_t tag;
    uint32_t value;

    static std::vector<FontFeature> parse(std::string_view /* fontFeatureString */) {
        return {};
    }
};

constexpr bool operator==(const FontFeature& l, const FontFeature& r) {
    return l.tag == r.tag && l.value == r.value;
}

constexpr bool operator!=(const FontFeature& l, const FontFeature& r) {
    return !(l == r);
}

// -------------------------------------------------- MinikinPaint.h (flags)

enum MinikinFontFlags {
    Embolden_Shift = 0,
    LinearMetrics_Shift = 1,
    Subpixel_Shift = 2,
    EmbeddedBitmaps_Shift = 3,
    ForceAutoHinting_Shift = 4,

    Embolden_Flag = 1 << Embolden_Shift,
    LinearMetrics_Flag = 1 << LinearMetrics_Shift,
    Subpixel_Flag = 1 << Subpixel_Shift,
    EmbeddedBitmaps_Flag = 1 << EmbeddedBitmaps_Shift,
    ForceAutoHinting_Flag = 1 << ForceAutoHinting_Shift,
};

// ------------------------------------------------------------- FontFakery.h

class FontFakery {
public:
    FontFakery() : FontFakery(false, false, -1, -1, VariationSettings()) {}
    FontFakery(bool fakeBold, bool fakeItalic)
        : FontFakery(fakeBold, fakeItalic, -1, -1, VariationSettings()) {}
    FontFakery(bool fakeBold, bool fakeItalic, int16_t wghtAdjustment, int8_t italAdjustment)
        : FontFakery(fakeBold, fakeItalic, wghtAdjustment, italAdjustment, VariationSettings()) {}
    FontFakery(bool fakeBold, bool fakeItalic, VariationSettings&& variationSettings)
        : FontFakery(fakeBold, fakeItalic, -1, -1, std::move(variationSettings)) {}
    FontFakery(bool fakeBold, bool fakeItalic, int16_t wghtAdjustment, int8_t italAdjustment,
               VariationSettings&& variationSettings)
        : mBits(pack(fakeBold, fakeItalic, wghtAdjustment, italAdjustment)),
          mVariationSettings(std::move(variationSettings)) {}

    bool isFakeBold() const { return (mBits & MASK_FAKE_BOLD) != 0; }
    bool isFakeItalic() const { return (mBits & MASK_FAKE_ITALIC) != 0; }
    bool hasAdjustment() const { return hasWghtAdjustment() || hasItalAdjustment(); }
    bool hasWghtAdjustment() const { return (mBits & MASK_HAS_WGHT_ADJUSTMENT) != 0; }
    bool hasItalAdjustment() const { return (mBits & MASK_HAS_ITAL_ADJUSTMENT) != 0; }
    int16_t wghtAdjustment() const {
        if (hasWghtAdjustment()) {
            return (mBits & MASK_WGHT_ADJUSTMENT) >> WGHT_ADJUSTMENT_SHIFT;
        } else {
            return -1;
        }
    }

    int8_t italAdjustment() const {
        if (hasItalAdjustment()) {
            return (mBits & MASK_ITAL_ADJUSTMENT) != 0 ? 1 : 0;
        } else {
            return -1;
        }
    }

    uint16_t bits() const { return mBits; }

    const VariationSettings& variationSettings() const { return mVariationSettings; }

    inline bool operator==(const FontFakery& o) const {
        return mBits == o.mBits && mVariationSettings == o.mVariationSettings;
    }
    inline bool operator!=(const FontFakery& o) const { return !(*this == o); }

private:
    static constexpr uint16_t MASK_FAKE_BOLD = 1u;
    static constexpr uint16_t MASK_FAKE_ITALIC = 1u << 1;
    static constexpr uint16_t MASK_HAS_WGHT_ADJUSTMENT = 1u << 2;
    static constexpr uint16_t MASK_HAS_ITAL_ADJUSTMENT = 1u << 3;
    static constexpr uint16_t MASK_ITAL_ADJUSTMENT = 1u << 4;
    static constexpr uint16_t MASK_WGHT_ADJUSTMENT = 0b1111111111u << 5;
    static constexpr uint16_t WGHT_ADJUSTMENT_SHIFT = 5;

    uint16_t pack(bool isFakeBold, bool isFakeItalic, int16_t wghtAdjustment,
                  int8_t italAdjustment) {
        uint16_t bits = 0u;
        bits |= isFakeBold ? MASK_FAKE_BOLD : 0;
        bits |= isFakeItalic ? MASK_FAKE_ITALIC : 0;
        if (wghtAdjustment != -1) {
            bits |= MASK_HAS_WGHT_ADJUSTMENT;
            bits |= (static_cast<uint16_t>(wghtAdjustment) << WGHT_ADJUSTMENT_SHIFT) &
                    MASK_WGHT_ADJUSTMENT;
        }
        if (italAdjustment != -1) {
            bits |= MASK_HAS_ITAL_ADJUSTMENT;
            bits |= (italAdjustment == 1) ? MASK_ITAL_ADJUSTMENT : 0;
        }
        return bits;
    }

    uint16_t mBits;
    VariationSettings mVariationSettings;
};

// ------------------------------------------------------------ MinikinFont.h

struct MinikinPaint;

class MinikinFont {
public:
    MinikinFont() {}

    virtual ~MinikinFont() {}

    virtual float GetHorizontalAdvance(uint32_t /* glyph_id */, const MinikinPaint& /* paint */,
                                       const FontFakery& /* fakery */) const {
        return 0.0f;
    }

    virtual void GetHorizontalAdvances(uint16_t* glyph_ids, uint32_t count,
                                       const MinikinPaint& paint, const FontFakery& fakery,
                                       float* outAdvances) const {
        for (uint32_t i = 0; i < count; ++i) {
            outAdvances[i] = GetHorizontalAdvance(glyph_ids[i], paint, fakery);
        }
    }

    virtual void GetBounds(MinikinRect* bounds, uint32_t /* glyph_id */,
                           const MinikinPaint& /* paint */, const FontFakery& /* fakery */) const {
        if (bounds != nullptr) {
            bounds->setEmpty();
        }
    }

    virtual void GetFontExtent(MinikinExtent* extent, const MinikinPaint& /* paint */,
                               const FontFakery& /* fakery */) const {
        if (extent != nullptr) {
            *extent = MinikinExtent();
        }
    }

    virtual const std::string& GetFontPath() const {
        static const std::string kEmpty;
        return kEmpty;
    }

    virtual const void* GetFontData() const { return nullptr; }

    virtual size_t GetFontSize() const { return 0; }

    virtual int GetFontIndex() const { return 0; }

    virtual int GetSourceId() const { return 0; }

    virtual const std::vector<FontVariation>& GetAxes() const {
        static const std::vector<FontVariation> kEmptyAxes;
        return kEmptyAxes;
    }

    virtual std::shared_ptr<MinikinFont> createFontWithVariation(
            const std::vector<FontVariation>&) const {
        return nullptr;
    }
};

// ------------------------------------------------------------------- Font.h

class Font {
public:
    class Builder {
    public:
        Builder(const std::shared_ptr<MinikinFont>& typeface) : mTypeface(typeface) {}

        Builder& setStyle(FontStyle style) {
            mWeight = style.weight();
            mSlant = style.slant();
            return *this;
        }

        Builder& setWeight(uint16_t weight) {
            mWeight = weight;
            return *this;
        }

        Builder& setSlant(FontStyle::Slant slant) {
            mSlant = slant;
            return *this;
        }

        Builder& setLocaleListId(uint32_t id) {
            mLocaleListId = id;
            return *this;
        }

        std::shared_ptr<Font> build() {
            return std::make_shared<Font>(std::shared_ptr<MinikinFont>(mTypeface),
                                          FontStyle(mWeight, mSlant), mLocaleListId);
        }

    private:
        std::shared_ptr<MinikinFont> mTypeface;
        uint16_t mWeight = static_cast<uint16_t>(FontStyle::Weight::NORMAL);
        FontStyle::Slant mSlant = FontStyle::Slant::UPRIGHT;
        uint32_t mLocaleListId = kEmptyLocaleListId;
    };

    Font() : mStyle(), mLocaleListId(kEmptyLocaleListId), mTypefaceMetadataReader(nullptr) {}
    Font(std::shared_ptr<MinikinFont>&& typeface, FontStyle style,
         uint32_t localeListId = kEmptyLocaleListId)
        : mTypeface(std::move(typeface)),
          mStyle(style),
          mLocaleListId(localeListId),
          mTypefaceMetadataReader(nullptr) {}

    uint32_t getLocaleListId() const { return mLocaleListId; }
    inline FontStyle style() const { return mStyle; }

    const std::shared_ptr<MinikinFont>& baseTypeface() const { return mTypeface; }

    const std::shared_ptr<MinikinFont>& getAdjustedTypeface(int /* wght */, int /* ital */) const {
        return mTypeface;
    }

    BufferReader typefaceMetadataReader() const { return mTypefaceMetadataReader; }

    uint16_t getSupportedAxesCount() const { return 0; }
    const AxisTag* getSupportedAxes() const { return nullptr; }
    bool isAxisSupported(uint32_t /* tag */) const { return false; }

private:
    std::shared_ptr<MinikinFont> mTypeface;
    FontStyle mStyle;
    uint32_t mLocaleListId;
    BufferReader mTypefaceMetadataReader;
};

struct FakedFont {
    FakedFont() : font(nullptr), fakery() {}
    FakedFont(std::shared_ptr<Font> font, FontFakery fakery)
        : font(std::move(font)), fakery(fakery) {}

    inline bool operator==(const FakedFont& o) const {
        return font == o.font && fakery == o.fakery;
    }
    inline bool operator!=(const FakedFont& o) const { return !(*this == o); }

    const std::shared_ptr<MinikinFont>& typeface() const {
        static const std::shared_ptr<MinikinFont> kNullTypeface;
        return font != nullptr ? font->baseTypeface() : kNullTypeface;
    }

    // Note: the real minikin holds this as a reference to the owning
    // FontCollection's font; the stub stores it by value for simplicity.
    std::shared_ptr<Font> font;
    FontFakery fakery;
};

// ------------------------------------------------------------ SparseBitSet.h

class SparseBitSet {
public:
    SparseBitSet() = default;

    uint32_t length() const { return 0; }
    bool get(uint32_t /* ch */) const { return false; }
};

// -------------------------------------------------------------- FontFamily.h

class FontFamily {
public:
    static std::shared_ptr<FontFamily> create(std::vector<std::shared_ptr<Font>>&& fonts) {
        return create(kEmptyLocaleListId, FamilyVariant::DEFAULT, std::move(fonts), false, false,
                      VariationFamilyType::None);
    }

    static std::shared_ptr<FontFamily> create(FamilyVariant variant,
                                              std::vector<std::shared_ptr<Font>>&& fonts) {
        return create(kEmptyLocaleListId, variant, std::move(fonts), false, false,
                      VariationFamilyType::None);
    }

    static std::shared_ptr<FontFamily> create(uint32_t localeListId, FamilyVariant variant,
                                              std::vector<std::shared_ptr<Font>>&& fonts,
                                              bool /* isCustomFallback */,
                                              bool /* isDefaultFallback */,
                                              VariationFamilyType /* varFamilyType */) {
        return std::make_shared<FontFamily>(localeListId, variant, std::move(fonts));
    }

    static std::shared_ptr<FontFamily> create(const std::shared_ptr<FontFamily>& parent,
                                              const std::vector<FontVariation>& /* axesOverride */) {
        return parent;
    }

    FontFamily() : mLocaleListId(kEmptyLocaleListId), mVariant(FamilyVariant::DEFAULT) {}
    FontFamily(uint32_t localeListId, FamilyVariant variant,
               std::vector<std::shared_ptr<Font>>&& fonts)
        : mFonts(std::move(fonts)), mLocaleListId(localeListId), mVariant(variant) {}

    static std::vector<std::shared_ptr<FontFamily>> readVector(BufferReader* /* reader */) {
        return {};
    }
    static void writeVector(BufferWriter* /* writer */,
                            const std::vector<std::shared_ptr<FontFamily>>& /* families */) {}

    FakedFont getClosestMatch(FontStyle /* style */) const {
        return FakedFont(mFonts.empty() ? nullptr : mFonts[0], FontFakery());
    }
    FakedFont getVariationFamilyAdjustment(FontStyle /* style */) const {
        return getClosestMatch(FontStyle());
    }

    uint32_t localeListId() const { return mLocaleListId; }
    FamilyVariant variant() const { return mVariant; }

    size_t getNumFonts() const { return mFonts.size(); }
    const Font* getFont(size_t index) const { return mFonts[index].get(); }
    const std::shared_ptr<Font>& getFontRef(size_t index) const { return mFonts[index]; }
    FontStyle getStyle(size_t index) const { return mFonts[index]->style(); }
    bool isColorEmojiFamily() const { return false; }
    size_t getSupportedAxesCount() const { return 0; }
    AxisTag getSupportedAxisAt(size_t /* index */) const { return 0; }
    bool isCustomFallback() const { return false; }
    bool isDefaultFallback() const { return false; }

    const SparseBitSet& getCoverage() const {
        static const SparseBitSet kEmptyCoverage;
        return kEmptyCoverage;
    }

    const SparseBitSet& getCmap14Coverage(uint16_t /* vsIndex */) const { return getCoverage(); }

    bool hasGlyph(uint32_t /* codepoint */, uint32_t /* variationSelector */) const {
        return false;
    }

    bool hasVSTable() const { return false; }

    std::shared_ptr<FontFamily> createFamilyWithVariation(
            const std::vector<FontVariation>& /* variations */) const {
        return nullptr;
    }

private:
    std::vector<std::shared_ptr<Font>> mFonts;
    uint32_t mLocaleListId;
    FamilyVariant mVariant;
};

// ---------------------------------------------------------- FontCollection.h

constexpr uint32_t MAX_FAMILY_COUNT = 254;

class FontCollection {
public:
    static std::shared_ptr<FontCollection> create(
            const std::vector<std::shared_ptr<FontFamily>>& typefaces) {
        return std::make_shared<FontCollection>(typefaces);
    }
    static std::shared_ptr<FontCollection> create(std::shared_ptr<FontFamily>&& typeface) {
        std::vector<std::shared_ptr<FontFamily>> families;
        families.push_back(std::move(typeface));
        return std::make_shared<FontCollection>(families);
    }

    static std::vector<std::shared_ptr<FontCollection>> readVector(BufferReader* /* reader */) {
        return {};
    }
    static void writeVector(
            BufferWriter* /* writer */,
            const std::vector<std::shared_ptr<FontCollection>>& /* fontCollections */) {}

    FontCollection() = default;
    explicit FontCollection(const std::vector<std::shared_ptr<FontFamily>>& typefaces)
        : mFamilies(typefaces) {}

    MinikinExtent getReferenceExtentForLocale(const MinikinPaint& /* paint */) const {
        return MinikinExtent();
    }

    bool hasVariationSelector(uint32_t /* baseCodepoint */,
                              uint32_t /* variationSelector */) const {
        return false;
    }

    FakedFont baseFontFaked(FontStyle style) {
        if (!mFamilies.empty()) {
            return mFamilies[0]->getClosestMatch(style);
        }
        return FakedFont();
    }

    std::shared_ptr<FontCollection> createCollectionWithVariation(
            const std::vector<FontVariation>& /* variations */) {
        return nullptr;
    }

    std::shared_ptr<FontCollection> createCollectionWithFamilies(
            std::vector<std::shared_ptr<FontFamily>>&& families) const {
        std::vector<std::shared_ptr<FontFamily>> merged = std::move(families);
        merged.insert(merged.end(), mFamilies.begin(), mFamilies.end());
        return std::make_shared<FontCollection>(merged);
    }

    size_t getSupportedAxesCount() const { return 0; }
    AxisTag getSupportedAxisAt(size_t /* index */) const { return 0; }

    uint32_t getId() const { return 0; }

    size_t getFamilyCount() const { return mFamilies.size(); }

    const std::shared_ptr<FontFamily>& getFamilyAt(size_t index) const {
        return mFamilies[index];
    }

private:
    std::vector<std::shared_ptr<FontFamily>> mFamilies;
};

// ------------------------------------------------------------- MinikinPaint.h

struct MinikinPaint {
    MinikinPaint(const std::shared_ptr<FontCollection>& font)
        : size(0),
          scaleX(0),
          skewX(0),
          letterSpacing(0),
          wordSpacing(0),
          fontFlags(0),
          localeListId(0),
          familyVariant(FamilyVariant::DEFAULT),
          fontFeatureSettings(),
          font(font) {}

    float size;
    float scaleX;
    float skewX;
    float letterSpacing;
    float wordSpacing;
    uint32_t fontFlags;
    uint32_t localeListId;
    FontStyle fontStyle;
    FamilyVariant familyVariant;
    std::vector<FontFeature> fontFeatureSettings;
    std::shared_ptr<FontCollection> font;
    VariationSettings fontVariationSettings;

    void copyFrom(const MinikinPaint& paint) { *this = paint; }

    MinikinPaint(const MinikinPaint&) = default;
    MinikinPaint& operator=(const MinikinPaint&) = default;

    MinikinPaint(MinikinPaint&&) = default;
    MinikinPaint& operator=(MinikinPaint&&) = default;

    float getLetterSpacingInPx() const { return letterSpacing * size * scaleX; }

    inline bool operator==(const MinikinPaint& paint) const {
        return size == paint.size && scaleX == paint.scaleX && skewX == paint.skewX &&
               letterSpacing == paint.letterSpacing && wordSpacing == paint.wordSpacing &&
               fontFlags == paint.fontFlags && localeListId == paint.localeListId &&
               fontStyle == paint.fontStyle && familyVariant == paint.familyVariant &&
               fontFeatureSettings == paint.fontFeatureSettings && font.get() == paint.font.get() &&
               fontVariationSettings == paint.fontVariationSettings;
    }

    uint32_t hash() const { return 0; }
};

// ------------------------------------------------------------------ Layout.h

struct LayoutGlyph {
    LayoutGlyph(FakedFont font, uint32_t glyph_id, uint32_t cluster, float x, float y)
        : font(std::move(font)), glyph_id(glyph_id), cluster(cluster), x(x), y(y) {}
    FakedFont font;

    uint32_t glyph_id;
    uint32_t cluster;
    float x;
    float y;
};

class Layout {
public:
    Layout() : mAdvance(0) {}

    Layout(const U16StringPiece& /* str */, const Range& /* range */, Bidi /* bidiFlags */,
           const MinikinPaint& /* paint */, StartHyphenEdit /* startHyphen */,
           EndHyphenEdit /* endHyphen */, uint32_t /* runFlag */)
        : mAdvance(0) {}

    Layout(const U16StringPiece& /* str */, const Range& /* range */, Bidi /* bidiFlags */,
           const MinikinPaint& /* paint */, StartHyphenEdit /* startHyphen */,
           EndHyphenEdit /* endHyphen */)
        : mAdvance(0) {}

    Layout(uint32_t count) : mAdvance(0) { mAdvances.resize(count, 0); }

    static float measureText(const U16StringPiece& /* str */, const Range& /* range */,
                             Bidi /* bidiFlags */, const MinikinPaint& /* paint */,
                             StartHyphenEdit /* startHyphen */, EndHyphenEdit /* endHyphen */,
                             float* /* advances */) {
        return 0.0f;
    }

    static float measureText(const U16StringPiece& /* str */, const Range& /* range */,
                             Bidi /* bidiFlags */, const MinikinPaint& /* paint */,
                             StartHyphenEdit /* startHyphen */, EndHyphenEdit /* endHyphen */,
                             float* /* advances */, MinikinRect* /* bounds */,
                             uint32_t* /* clusterCount */) {
        return 0.0f;
    }

    static float measureText(const U16StringPiece& /* str */, const Range& /* range */,
                             Bidi /* bidiFlags */, const MinikinPaint& /* paint */,
                             StartHyphenEdit /* startHyphen */, EndHyphenEdit /* endHyphen */,
                             float* /* advances */, MinikinRect* /* bounds */,
                             uint32_t* /* clusterCount */, RunFlag /* runFlag */) {
        return 0.0f;
    }

    const std::vector<float>& advances() const { return mAdvances; }

    size_t nGlyphs() const { return mGlyphs.size(); }
    const Font* getFont(int i) const { return mGlyphs[i].font.font.get(); }
    const std::shared_ptr<Font>& getFontRef(int i) const { return mGlyphs[i].font.font; }
    FontFakery getFakery(int i) const { return mGlyphs[i].font.fakery; }
    const std::shared_ptr<MinikinFont>& typeface(int i) const { return mGlyphs[i].font.typeface(); }
    unsigned int getGlyphId(int i) const { return mGlyphs[i].glyph_id; }
    float getX(int i) const { return mGlyphs[i].x; }
    float getY(int i) const { return mGlyphs[i].y; }
    float getAdvance() const { return mAdvance; }
    float getCharAdvance(size_t i) const { return mAdvances[i]; }
    const std::vector<float>& getAdvances() const { return mAdvances; }

    uint32_t getFontRunCount() const { return static_cast<uint32_t>(mFonts.size()); }
    uint32_t getFontRunStart(uint32_t i) const { return i == 0 ? 0 : mEnds[i - 1]; }
    uint32_t getFontRunEnd(uint32_t i) const { return mEnds[i]; }
    const FakedFont& getFontRunFont(uint32_t i) const { return mFonts[i]; }

    static void purgeCaches() {}
    static void dumpMinikinStats(int /* fd */) {}

private:
    std::vector<FakedFont> mFonts;
    std::vector<uint32_t> mEnds;
    std::vector<LayoutGlyph> mGlyphs;
    std::vector<float> mAdvances;
    float mAdvance;
};

// -------------------------------------------------------------- Measurement.h

inline float getRunAdvance(const float* /* advances */, const uint16_t* /* buf */,
                           size_t /* start */, size_t /* count */, size_t /* offset */) {
    return 0.0f;
}

inline void distributeAdvances(float* /* advances */, const uint16_t* /* buf */,
                               size_t /* start */, size_t /* count */) {}

inline size_t getOffsetForAdvance(const float* /* advances */, const uint16_t* /* buf */,
                                  size_t start, size_t /* count */, float /* advance */) {
    return start;
}

inline void getBounds(const U16StringPiece& /* str */, const Range& /* range */,
                      Bidi /* bidiFlags */, const MinikinPaint& /* paint */,
                      StartHyphenEdit /* startHyphen */, EndHyphenEdit /* endHyphen */,
                      MinikinRect* out) {
    if (out != nullptr) {
        out->setEmpty();
    }
}

inline MinikinExtent getFontExtent(const U16StringPiece& /* str */, const Range& /* range */,
                                   Bidi /* bidiFlags */, const MinikinPaint& /* paint */) {
    return MinikinExtent();
}

// ----------------------------------------------------------- LineBreakStyle.h

enum class LineBreakStyle : uint8_t {
    None = 0,
    Loose = 1,
    Normal = 2,
    Strict = 3,
    NoBreak = 4,
    Auto = 5,
};

enum class LineBreakWordStyle : uint8_t {
    None = 0,
    Phrase = 1,
    Auto = 2,
};

// ------------------------------------------------------------- MeasuredText.h

struct LineMetrics {
    LineMetrics() : advance(0) {}
    LineMetrics(const MinikinExtent& extent, const MinikinRect& bounds, float advance)
        : extent(extent), bounds(bounds), advance(advance) {}

    void append(const LineMetrics& metrics) {
        append(metrics.extent, metrics.bounds, metrics.advance);
    }

    void append(const MinikinExtent& nextExtent, const MinikinRect& nextBounds,
                float nextAdvance) {
        extent.extendBy(nextExtent);
        bounds.join(nextBounds, advance, 0);
        advance += nextAdvance;
    }

    MinikinExtent extent;
    MinikinRect bounds;
    float advance;
};

struct HyphenBreak {
    uint32_t offset;
    HyphenationType type;
    float first;
    float second;

    HyphenBreak(uint32_t offset, HyphenationType type, float first, float second)
        : offset(offset), type(type), first(first), second(second) {}
};

class MeasuredText {
public:
    MeasuredText() = default;
    explicit MeasuredText(uint32_t textSize) : widths(textSize, 0), flags(textSize, 0) {}

    MeasuredText(MeasuredText&&) = default;
    MeasuredText& operator=(MeasuredText&&) = default;

    // Character widths.
    std::vector<float> widths;

    // Hyphenation points.
    std::vector<HyphenBreak> hyphenBreaks;

    // Per character flags.
    static constexpr uint8_t MAY_OVERHANG_BIT = 0b0000'0001;
    std::vector<uint8_t> flags;

    bool hasOverhang(const Range& /* range */) const { return false; }

    uint32_t getMemoryUsage() const {
        return static_cast<uint32_t>(sizeof(float) * widths.size() +
                                     sizeof(HyphenBreak) * hyphenBreaks.size());
    }

    Layout buildLayout(const U16StringPiece& /* textBuf */, const Range& /* range */,
                       const Range& /* contextRange */, const MinikinPaint& /* paint */,
                       StartHyphenEdit /* startHyphen */, EndHyphenEdit /* endHyphen */) {
        return Layout();
    }
    MinikinRect getBounds(const U16StringPiece& /* textBuf */, const Range& /* range */) const {
        return MinikinRect();
    }
    MinikinExtent getExtent(const U16StringPiece& /* textBuf */, const Range& /* range */) const {
        return MinikinExtent();
    }
    LineMetrics getLineMetrics(const U16StringPiece& /* textBuf */,
                               const Range& /* range */) const {
        return LineMetrics();
    }

private:
    MeasuredText(const MeasuredText&) = delete;
    MeasuredText& operator=(const MeasuredText&) = delete;
};

class MeasuredTextBuilder {
public:
    MeasuredTextBuilder() {}

    void addStyleRun(int32_t /* start */, int32_t /* end */, MinikinPaint&& /* paint */,
                     int /* lineBreakStyle */, int /* lineBreakWordStyle */,
                     bool /* hyphenation */, bool /* isRtl */) {}

    void addReplacementRun(int32_t /* start */, int32_t /* end */, float /* width */,
                           uint32_t /* localeListId */) {}

    template <class T, typename... Args>
    void addCustomRun(Args&&... /* args */) {}

    std::unique_ptr<MeasuredText> build(const U16StringPiece& textBuf, bool computeHyphenation,
                                        bool computeLayout, bool ignoreHyphenKerning,
                                        MeasuredText* hint) {
        return build(textBuf, computeHyphenation, computeLayout, false, ignoreHyphenKerning, hint);
    }

    std::unique_ptr<MeasuredText> build(const U16StringPiece& textBuf,
                                        bool /* computeHyphenation */, bool /* computeLayout */,
                                        bool /* computeBounds */, bool /* ignoreHyphenKerning */,
                                        MeasuredText* /* hint */) {
        return std::unique_ptr<MeasuredText>(new MeasuredText(textBuf.size()));
    }

private:
    MeasuredTextBuilder(const MeasuredTextBuilder&) = delete;
    MeasuredTextBuilder& operator=(const MeasuredTextBuilder&) = delete;
};

// -------------------------------------------------------------- LineBreaker.h

enum class BreakStrategy : uint8_t {
    Greedy = 0,
    HighQuality = 1,
    Balanced = 2,
};

enum class HyphenationFrequency : uint8_t {
    None = 0,
    Normal = 1,
    Full = 2,
};

class TabStops {
public:
    TabStops(const float* stops, size_t nStops, float tabWidth)
        : mStops(stops), mStopsSize(nStops), mTabWidth(tabWidth) {}

    float nextTab(float widthSoFar) const {
        for (size_t i = 0; i < mStopsSize; i++) {
            if (mStops[i] > widthSoFar) {
                return mStops[i];
            }
        }
        if (mTabWidth == 0) {
            return 0;
        }
        return std::floor(widthSoFar / mTabWidth + 1) * mTabWidth;
    }

private:
    const float* mStops;
    size_t mStopsSize;
    float mTabWidth;
};

class LineWidth {
public:
    virtual ~LineWidth() {}

    virtual float getAt(size_t lineNo) const = 0;

    virtual float getMin() const = 0;
};

struct LineBreakResult {
public:
    LineBreakResult() = default;

    std::vector<int> breakPoints;
    std::vector<float> widths;
    std::vector<float> ascents;
    std::vector<float> descents;
    std::vector<int> flags;
    std::vector<MinikinRect> bounds;

    LineBreakResult(LineBreakResult&&) = default;
    LineBreakResult& operator=(LineBreakResult&&) = default;

    void reverse() {
        std::reverse(breakPoints.begin(), breakPoints.end());
        std::reverse(widths.begin(), widths.end());
        std::reverse(ascents.begin(), ascents.end());
        std::reverse(descents.begin(), descents.end());
        std::reverse(flags.begin(), flags.end());
        std::reverse(bounds.begin(), bounds.end());
    }

private:
    LineBreakResult(const LineBreakResult&) = delete;
    LineBreakResult& operator=(const LineBreakResult&) = delete;
};

inline LineBreakResult breakIntoLines(const U16StringPiece& /* textBuffer */,
                                      BreakStrategy /* strategy */,
                                      HyphenationFrequency /* frequency */, bool /* justified */,
                                      const MeasuredText& /* measuredText */,
                                      const LineWidth& /* lineWidth */,
                                      const TabStops& /* tabStops */,
                                      bool /* useBoundsForWidth */) {
    return LineBreakResult();
}

// -------------------------------------------------- AndroidLineBreakerHelper.h

namespace android {

class AndroidLineWidth : public LineWidth {
public:
    AndroidLineWidth(float firstWidth, int32_t firstLineCount, float restWidth,
                     const std::vector<float>& indents, int32_t indentsOffset)
        : mFirstWidth(firstWidth),
          mFirstLineCount(firstLineCount),
          mRestWidth(restWidth),
          mIndents(indents),
          mOffset(indentsOffset) {}

    float getAt(size_t lineNo) const override {
        const float width = ((ssize_t)lineNo < (ssize_t)mFirstLineCount) ? mFirstWidth : mRestWidth;
        return std::max(0.0f, width - get(mIndents, lineNo));
    }

    float getMin() const override {
        float minWidth = std::min(getAt(0), getAt(mFirstLineCount));
        for (size_t lineNo = 1; lineNo + mOffset < mIndents.size(); lineNo++) {
            minWidth = std::min(minWidth, getAt(lineNo));
        }
        return minWidth;
    }

private:
    float get(const std::vector<float>& vec, size_t lineNo) const {
        if (vec.empty()) {
            return 0;
        }
        const size_t index = lineNo + mOffset;
        if (index < vec.size()) {
            return vec[index];
        } else {
            return vec.back();
        }
    }

    const float mFirstWidth;
    const int32_t mFirstLineCount;
    const float mRestWidth;
    const std::vector<float>& mIndents;
    const int32_t mOffset;
};

class StaticLayoutNative {
public:
    StaticLayoutNative(BreakStrategy strategy, HyphenationFrequency frequency, bool isJustified,
                       std::vector<float>&& indents, bool useBoundsForWidth)
        : mStrategy(strategy),
          mFrequency(frequency),
          mIsJustified(isJustified),
          mIndents(std::move(indents)),
          mUseBoundsForWidth(useBoundsForWidth) {}

    StaticLayoutNative(BreakStrategy strategy, HyphenationFrequency frequency, bool isJustified,
                       std::vector<float>&& indents)
        : StaticLayoutNative(strategy, frequency, isJustified, std::move(indents),
                             false /* useBoundsForWidth */) {}

    LineBreakResult computeBreaks(const U16StringPiece& textBuf, const MeasuredText& measuredText,
                                  float firstWidth, int32_t firstWidthLineCount, float restWidth,
                                  int32_t indentsOffset, const float* tabStops,
                                  int32_t tabStopSize, float defaultTabStopWidth) const {
        AndroidLineWidth lineWidth(firstWidth, firstWidthLineCount, restWidth, mIndents,
                                   indentsOffset);
        return breakIntoLines(textBuf, mStrategy, mFrequency, mIsJustified, measuredText, lineWidth,
                              TabStops(tabStops, tabStopSize, defaultTabStopWidth),
                              mUseBoundsForWidth);
    }

    inline BreakStrategy getStrategy() const { return mStrategy; }
    inline HyphenationFrequency getFrequency() const { return mFrequency; }
    inline bool isJustified() const { return mIsJustified; }

private:
    const BreakStrategy mStrategy;
    const HyphenationFrequency mFrequency;
    const bool mIsJustified;
    const std::vector<float> mIndents;
    const bool mUseBoundsForWidth;
};

}  // namespace android

// ------------------------------------------------------------ GraphemeBreak.h

class GraphemeBreak {
public:
    // These values must be kept in sync with CURSOR_AFTER etc in Paint.java
    enum MoveOpt { AFTER = 0, AT_OR_AFTER = 1, BEFORE = 2, AT_OR_BEFORE = 3, AT = 4 };

    static bool isGraphemeBreak(const float* /* advances */, const uint16_t* /* buf */,
                                size_t /* start */, size_t /* count */, size_t /* offset */) {
        return true;
    }

    static size_t getTextRunCursor(const float* /* advances */, const uint16_t* /* buf */,
                                   size_t /* start */, size_t /* count */, size_t offset,
                                   MoveOpt /* opt */) {
        return offset;
    }
};

// ------------------------------------------------------------ FontFileParser.h

class FontFileParser {
public:
    FontFileParser(const void* /* buffer */, size_t /* size */, uint32_t /* index */) {}

    virtual ~FontFileParser() {}

    std::optional<uint32_t> getFontRevision() const { return std::nullopt; }
    std::optional<std::string> getPostScriptName() const { return std::nullopt; }
    std::optional<bool> isPostScriptType1Font() const { return std::nullopt; }
};

// --------------------------------------------------------------- SystemFonts.h

class SystemFonts {
public:
    static std::shared_ptr<FontCollection> findFontCollection(
            const std::string& /* familyName */) {
        return nullptr;
    }

    static void registerFallback(const std::string& /* familyName */,
                                 const std::shared_ptr<FontCollection>& /* fc */) {}

    static void registerDefault(const std::shared_ptr<FontCollection>& /* fc */) {}

    using FontMapDeleter = std::function<void()>;

    static void addFontMap(std::shared_ptr<FontCollection>&& /* collections */) {}

    static void getFontSet(std::function<void(const std::vector<std::shared_ptr<Font>>&)> func) {
        static const std::vector<std::shared_ptr<Font>> kEmptyFonts;
        func(kEmptyFonts);
    }
};

// -------------------------------------------------------- MinikinFontFactory.h

class MinikinFontFactory {
public:
    MinikinFontFactory() {}

    virtual ~MinikinFontFactory() {}

    virtual std::shared_ptr<MinikinFont> create(BufferReader reader) const = 0;

    virtual void skip(BufferReader* reader) const = 0;

    virtual void write(BufferWriter* writer, const MinikinFont* minikinFont) const = 0;

    // Declared only; the smoke build never links against this.
    static const MinikinFontFactory& getInstance();

    static void setInstance(const MinikinFontFactory* /* factory */) {}
};

}  // namespace minikin
