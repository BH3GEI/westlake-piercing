#pragma once

// Stub of libui's ui/ColorSpace.h for the OpenHarmony bringup build. Only
// the small API surface used by hwui's utils/Color.cpp (Lab conversion) is
// provided, with self-contained minimal math types.

#include <cmath>
#include <string>

namespace android {

struct float2 {
    float x = 0.0f;
    float y = 0.0f;

    float2() = default;
    constexpr float2(float x, float y) : x(x), y(y) {}
};

struct float3 {
    union {
        struct {
            float x, y, z;
        };
        struct {
            float r, g, b;
        };
    };

    constexpr float3() : x(0.0f), y(0.0f), z(0.0f) {}
    constexpr float3(float x, float y, float z) : x(x), y(y), z(z) {}
    constexpr float3(const float2& v, float z) : x(v.x), y(v.y), z(z) {}

    float& operator[](int i) { return (&x)[i]; }
    const float& operator[](int i) const { return (&x)[i]; }
};

inline float3 operator*(const float3& a, const float3& b) {
    return float3(a.x * b.x, a.y * b.y, a.z * b.z);
}

inline float3 operator/(const float3& a, const float3& b) {
    return float3(a.x / b.x, a.y / b.y, a.z / b.z);
}

struct mat3 {
    // Column-major, like the real math library.
    float3 c0, c1, c2;

    constexpr mat3()
        : c0(1.0f, 0.0f, 0.0f), c1(0.0f, 1.0f, 0.0f), c2(0.0f, 0.0f, 1.0f) {}
    constexpr mat3(const float3& c0, const float3& c1, const float3& c2)
        : c0(c0), c1(c1), c2(c2) {}
    // Diagonal matrix from a vector (like the real math library).
    explicit constexpr mat3(const float3& d)
        : c0(d.x, 0.0f, 0.0f), c1(0.0f, d.y, 0.0f), c2(0.0f, 0.0f, d.z) {}
};

// Stub inverse: identity is fine for the smoke build.
inline mat3 inverse(const mat3& /* m */) {
    return mat3();
}

inline float3 operator*(const mat3& m, const float3& v) {
    return float3(m.c0.x * v.x + m.c1.x * v.y + m.c2.x * v.z,
                  m.c0.y * v.x + m.c1.y * v.y + m.c2.y * v.z,
                  m.c0.z * v.x + m.c1.z * v.y + m.c2.z * v.z);
}

inline mat3 operator*(const mat3& a, const mat3& b) {
    return mat3(a * b.c0, a * b.c1, a * b.c2);
}

// Bradford chromatic adaptation matrix (matches libui).
constexpr mat3 BRADFORD = mat3{float3{0.8951f, -0.7502f, 0.0389f},
                               float3{0.2664f, 1.7135f, -0.0685f},
                               float3{-0.1614f, 0.0367f, 1.0296f}};

constexpr float3 ILLUMINANT_D50_XYZ = {0.964212f, 1.0f, 0.825188f};

class ColorSpace {
public:
    static const ColorSpace& sRGB() {
        static const ColorSpace kSRGB;
        return kSRGB;
    }

    static constexpr float3 XYZ(const float3& xyY) {
        return float3(xyY.x * xyY.z / xyY.y, xyY.z,
                      (1.0f - xyY.x - xyY.y) * xyY.z / xyY.y);
    }

    float2 getWhitePoint() const { return float2(0.3127f, 0.3290f); }

    // Stub conversions: identity transforms are fine for the smoke build.
    float3 rgbToXYZ(const float3& rgb) const { return rgb; }
    float3 xyzToRGB(const float3& xyz) const { return xyz; }
};

}  // namespace android
