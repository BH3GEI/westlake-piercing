#pragma once

// Stub of libui's ui/PixelFormat.h for the OpenHarmony bringup build.

#include <stdint.h>

#include <hardware/hardware.h>

namespace android {

typedef int32_t PixelFormat;

enum {
    PIXEL_FORMAT_UNKNOWN = 0,
    PIXEL_FORMAT_NONE = 0,
    PIXEL_FORMAT_CUSTOM = -4,
    PIXEL_FORMAT_TRANSLUCENT = -3,
    PIXEL_FORMAT_TRANSPARENT = -2,
    PIXEL_FORMAT_OPAQUE = -1,
    PIXEL_FORMAT_RGBA_8888 = 1,
    PIXEL_FORMAT_RGBX_8888 = 2,
    PIXEL_FORMAT_RGB_888 = 3,
    PIXEL_FORMAT_RGB_565 = 4,
    PIXEL_FORMAT_BGRA_8888 = 5,
    PIXEL_FORMAT_RGBA_5551 = 6,
    PIXEL_FORMAT_RGBA_4444 = 7,
    PIXEL_FORMAT_RGBA_FP16 = 22,
    PIXEL_FORMAT_RGBA_1010102 = 43,
};

inline uint32_t bytesPerPixel(PixelFormat format) {
    switch (format) {
        case PIXEL_FORMAT_RGBA_8888:
        case PIXEL_FORMAT_RGBX_8888:
        case PIXEL_FORMAT_BGRA_8888:
        case PIXEL_FORMAT_RGBA_1010102:
            return 4;
        case PIXEL_FORMAT_RGB_888:
            return 3;
        case PIXEL_FORMAT_RGB_565:
        case PIXEL_FORMAT_RGBA_5551:
        case PIXEL_FORMAT_RGBA_4444:
            return 2;
        case PIXEL_FORMAT_RGBA_FP16:
            return 8;
        default:
            return 0;
    }
}

}  // namespace android
