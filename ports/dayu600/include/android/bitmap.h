#pragma once

#include <stdint.h>
#include <stddef.h>

#ifdef __cplusplus
extern "C" {
#endif

#ifndef ANDROID_API
#define ANDROID_API __attribute__((visibility("default")))
#endif

typedef enum AndroidBitmapFormat {
    ANDROID_BITMAP_FORMAT_NONE = 0,
    ANDROID_BITMAP_FORMAT_RGBA_8888 = 1,
    ANDROID_BITMAP_FORMAT_RGB_565 = 4,
    ANDROID_BITMAP_FORMAT_RGBA_4444 = 7,
    ANDROID_BITMAP_FORMAT_A_8 = 8,
    ANDROID_BITMAP_FORMAT_RGBA_F16 = 9,
    ANDROID_BITMAP_FORMAT_RGBA_1010102 = 10,
} AndroidBitmapFormat;

enum {
    ANDROID_BITMAP_RESULT_SUCCESS = 0,
    ANDROID_BITMAP_RESULT_BAD_PARAMETER = -1,
    ANDROID_BITMAP_RESULT_JNI_EXCEPTION = -2,
    ANDROID_BITMAP_RESULT_ALLOCATION_FAILED = -3,
};

enum {
    ANDROID_BITMAP_FLAGS_ALPHA_MASK = 0x3,
    ANDROID_BITMAP_FLAGS_ALPHA_OPAQUE = 0x1,
    ANDROID_BITMAP_FLAGS_ALPHA_PREMUL = 0x2,
    ANDROID_BITMAP_FLAGS_ALPHA_UNPREMUL = 0x0,
    ANDROID_BITMAP_FLAGS_IS_HARDWARE = 0x80000000u,
};

typedef struct AndroidBitmapInfo {
    uint32_t width;
    uint32_t height;
    uint32_t stride;
    int32_t format;
    uint32_t flags;
} AndroidBitmapInfo;

typedef enum AndroidBitmapCompressFormat {
    ANDROID_BITMAP_COMPRESS_FORMAT_JPEG = 0,
    ANDROID_BITMAP_COMPRESS_FORMAT_PNG = 1,
    ANDROID_BITMAP_COMPRESS_FORMAT_WEBP_LOSSY = 3,
    ANDROID_BITMAP_COMPRESS_FORMAT_WEBP_LOSSLESS = 4,
} AndroidBitmapCompressFormat;

typedef int (*AndroidBitmap_CompressWriteFunc)(void* userContext, const void* data, size_t size);

#ifdef __cplusplus
}
#endif
