#pragma once

// Stub of frameworks/native's libshaders shaders/shaders.h used by hwui's
// Tonemapper.cpp. Compile-only: SkSL source is empty and uniforms are none.

#include <stdint.h>

#include <string>
#include <vector>

#include <ui/GraphicTypes.h>

namespace android {

struct vec4 {
    float x = 0.0f;
    float y = 0.0f;
    float z = 0.0f;
    float w = 0.0f;

    vec4() = default;
    constexpr vec4(float x, float y, float z, float w) : x(x), y(y), z(z), w(w) {}
};

struct mat4 {
    // Identity by default; contents unused by the stub.
    float m[16] = {1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1};

    mat4() = default;

    static mat4 scale(const vec4& s) {
        mat4 r;
        r.m[0] = s.x;
        r.m[5] = s.y;
        r.m[10] = s.z;
        r.m[15] = s.w;
        return r;
    }
};

namespace shaders {

struct LinearEffect {
    enum class SkSLType { Shader, ColorFilter };

    ui::Dataspace inputDataspace = ui::Dataspace::UNKNOWN;
    ui::Dataspace outputDataspace = ui::Dataspace::UNKNOWN;
    bool undoPremultipliedAlpha = false;
    ui::Dataspace fakeInputDataspace = ui::Dataspace::UNKNOWN;
    SkSLType type = SkSLType::Shader;
};

inline std::string buildLinearEffectSkSL(const LinearEffect& /* linearEffect */) {
    return std::string();
}

struct ShaderUniform {
    std::string name;
    std::vector<float> value;
};

inline std::vector<ShaderUniform> buildLinearEffectUniforms(
        const LinearEffect& /* linearEffect */, const mat4& /* colorTransform */,
        float /* maxDisplayLuminance */, float /* currentDisplayLuminanceNits */,
        float /* maxLuminance */) {
    return {};
}

}  // namespace shaders
}  // namespace android
