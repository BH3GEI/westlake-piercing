#pragma once

// Stub of the NDK <android/hdr_metadata.h> for the OpenHarmony bringup
// build. Mirrors the AOSP struct definitions.

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

struct AColor_xy {
    float x;
    float y;
};

struct AHdrMetadata_smpte2086 {
    struct AColor_xy displayPrimaryRed;
    struct AColor_xy displayPrimaryGreen;
    struct AColor_xy displayPrimaryBlue;
    struct AColor_xy whitePoint;
    float maxLuminance;
    float minLuminance;
};

struct AHdrMetadata_cta861_3 {
    float maxContentLightLevel;
    float maxFrameAverageLightLevel;
};

#ifdef __cplusplus
}
#endif
