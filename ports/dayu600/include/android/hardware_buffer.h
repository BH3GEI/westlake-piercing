#pragma once

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

#ifndef ANDROID_API
#define ANDROID_API __attribute__((visibility("default")))
#endif

typedef struct AHardwareBuffer AHardwareBuffer;

typedef uint32_t AHardwareBuffer_Format;

typedef struct AHardwareBuffer_Desc {
    uint32_t width;
    uint32_t height;
    uint32_t layers;
    uint32_t format;
    uint64_t usage;
    uint32_t stride;
    uint32_t rfu0;
    uint64_t rfu1;
} AHardwareBuffer_Desc;

enum {
    AHARDWAREBUFFER_FORMAT_R8G8B8A8_UNORM = 1,
    AHARDWAREBUFFER_FORMAT_R8G8B8X8_UNORM = 2,
    AHARDWAREBUFFER_FORMAT_R8G8B8_UNORM = 3,
    AHARDWAREBUFFER_FORMAT_R5G6B5_UNORM = 4,
    AHARDWAREBUFFER_FORMAT_R16G16B16A16_FLOAT = 0x16,
    AHARDWAREBUFFER_FORMAT_R10G10B10A2_UNORM = 0x2b,
    AHARDWAREBUFFER_FORMAT_R8_UNORM = 0x38,
};

enum {
    AHARDWAREBUFFER_USAGE_CPU_READ_NEVER = 0UL,
    AHARDWAREBUFFER_USAGE_CPU_WRITE_NEVER = 0UL,
    AHARDWAREBUFFER_USAGE_GPU_SAMPLED_IMAGE = 1UL << 8,
    AHARDWAREBUFFER_USAGE_GPU_FRAMEBUFFER = 1UL << 9,
    AHARDWAREBUFFER_USAGE_COMPOSER_OVERLAY = 1UL << 11,
    AHARDWAREBUFFER_USAGE_PROTECTED_CONTENT = 1UL << 14,
};

ANDROID_API int AHardwareBuffer_allocate(const AHardwareBuffer_Desc* desc,
                                         AHardwareBuffer** outBuffer);
ANDROID_API void AHardwareBuffer_acquire(AHardwareBuffer* buffer);
ANDROID_API void AHardwareBuffer_release(AHardwareBuffer* buffer);
ANDROID_API void AHardwareBuffer_describe(const AHardwareBuffer* buffer,
                                          AHardwareBuffer_Desc* outDesc);
ANDROID_API int AHardwareBuffer_lock(AHardwareBuffer* buffer, uint64_t usage, int32_t fence,
                                     const struct ARect* rect, void** outVirtualAddress);
ANDROID_API int AHardwareBuffer_unlock(AHardwareBuffer* buffer, int32_t* fence);

#ifdef __cplusplus
}
#endif
