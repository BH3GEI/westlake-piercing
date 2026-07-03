#pragma once

#include <stdint.h>

#include <memory>
#include <string>
#include <string_view>
#include <utility>
#include <vector>

namespace minikin {

enum class FamilyVariant : uint8_t {
    DEFAULT = 0,
    COMPACT = 1,
    ELEGANT = 2,
};

enum class VariationFamilyType : uint8_t {
    None = 0,
    Compact = 1,
    Elegant = 2,
};

enum class Bidi : uint8_t {
    LTR = 0,
    RTL = 1,
    DEFAULT_LTR = 2,
    DEFAULT_RTL = 3,
    FORCE_LTR = 4,
    FORCE_RTL = 5,
};

enum class RunFlag : uint8_t {
    NONE = 0,
    WHOLE_LINE = 1,
};

enum class StartHyphenEdit : uint8_t {
    NO_EDIT = 0,
};

enum class EndHyphenEdit : uint8_t {
    NO_EDIT = 0,
};

inline uint32_t packHyphenEdit(StartHyphenEdit start, EndHyphenEdit end) {
    return (static_cast<uint32_t>(start) << 16) | static_cast<uint32_t>(end);
}

inline StartHyphenEdit startHyphenEdit(uint32_t edit) {
    return static_cast<StartHyphenEdit>((edit >> 16) & 0xffff);
}

inline EndHyphenEdit endHyphenEdit(uint32_t edit) {
    return static_cast<EndHyphenEdit>(edit & 0xffff);
}

using AxisTag = uint32_t;

struct FontVariation {
    AxisTag axisTag = 0;
    float value = 0.0f;

    FontVariation() = default;
    FontVariation(AxisTag tag, float styleValue) : axisTag(tag), value(styleValue) {}
};

struct FontFeature {
    uint32_t tag = 0;
    uint32_t value = 0;

    static std::vector<FontFeature> parse(std::string_view) {
        return {};
    }
};

class FontStyle {
public:
    enum class Slant : uint8_t {
        UPRIGHT = 0,
        ITALIC = 1,
    };

    FontStyle() = default;
    explicit FontStyle(int weight, Slant slant = Slant::UPRIGHT) : mWeight(weight), mSlant(slant) {}

    int weight() const { return mWeight; }
    Slant slant() const { return mSlant; }

private:
    int mWeight = 400;
    Slant mSlant = Slant::UPRIGHT;
};

class MinikinFont {
public:
    virtual ~MinikinFont() = default;
    virtual const std::vector<FontVariation>& GetAxes() const {
        static const std::vector<FontVariation> kEmpty;
        return kEmpty;
    }
    virtual const void* GetFontData() const { return nullptr; }
    virtual size_t GetFontSize() const { return 0; }
};

class Font {
public:
    class Builder {
    public:
        explicit Builder(std::shared_ptr<MinikinFont> typeface) : mFont(std::move(typeface)) {}
        Builder& setWeight(int weight) {
            mStyle = FontStyle(weight, mStyle.slant());
            return *this;
        }
        Builder& setSlant(FontStyle::Slant slant) {
            mStyle = FontStyle(mStyle.weight(), slant);
            return *this;
        }
        std::shared_ptr<Font> build() {
            return std::make_shared<Font>(std::move(mFont), mStyle);
        }

    private:
        std::shared_ptr<MinikinFont> mFont;
        FontStyle mStyle;
    };

    Font() = default;
    Font(std::shared_ptr<MinikinFont> typeface, FontStyle style)
        : mTypeface(std::move(typeface)), mStyle(style) {}

    const std::shared_ptr<MinikinFont>& baseTypeface() const { return mTypeface; }
    FontStyle style() const { return mStyle; }

private:
    std::shared_ptr<MinikinFont> mTypeface;
    FontStyle mStyle;
};

class FontFamily {
public:
    static std::shared_ptr<FontFamily> create(uint32_t, FamilyVariant,
                                              std::vector<std::shared_ptr<Font>>&&,
                                              std::vector<FontVariation>&&,
                                              VariationFamilyType) {
        return std::make_shared<FontFamily>();
    }

    std::shared_ptr<Font> getFontRef(size_t) const { return {}; }
};

struct FakedFont {
    std::shared_ptr<Font> font;
};

class FontCollection {
public:
    explicit FontCollection(std::vector<std::shared_ptr<FontFamily>>&& families = {})
        : mFamilies(std::move(families)) {}

    FakedFont baseFontFaked(const FontStyle&) const { return {}; }

private:
    std::vector<std::shared_ptr<FontFamily>> mFamilies;
};

class Hyphenator {};
class Layout {
public:
    static void purgeCaches() {}
};
class MeasuredText {};

inline uint32_t registerLocaleList(const char*) { return 0; }
inline std::string getLocaleString(uint32_t) { return {}; }

}  // namespace minikin
