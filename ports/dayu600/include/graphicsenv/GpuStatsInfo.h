#pragma once

// Stub of frameworks/native's graphicsenv/GpuStatsInfo.h for the bringup
// build. hwui only uses the SKIP_TELEMETRY EGL context attribute constant.

#include <stdint.h>

namespace android {

class GpuStatsInfo {
public:
    // Matches EGL_TELEMETRY_HINT_ANDROID semantics used by hwui.
    enum : int32_t {
        NO_HINT = 0,
        SKIP_TELEMETRY = 1,
    };
};

}  // namespace android
