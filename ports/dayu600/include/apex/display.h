#pragma once

// Stub of frameworks/native's apex/display.h (libandroid display APEX API)
// for the OpenHarmony bringup build.

#include <stdint.h>

#include <android/data_space.h>
#include <android/hardware_buffer.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct ADisplay ADisplay;

typedef enum ADisplayType {
    DISPLAY_TYPE_INTERNAL = 0,
    DISPLAY_TYPE_EXTERNAL = 1,
} ADisplayType;

typedef struct ADisplayConfig ADisplayConfig;

typedef uint32_t AHardwareBuffer_Format;

static inline int ADisplay_acquirePhysicalDisplays(ADisplay*** outDisplays) {
    if (outDisplays) *outDisplays = nullptr;
    return 0;
}

static inline void ADisplay_release(ADisplay** displays) {
    (void)displays;
}

static inline ADisplayType ADisplay_getDisplayType(ADisplay* display) {
    (void)display;
    return DISPLAY_TYPE_INTERNAL;
}

static inline void ADisplay_getPreferredWideColorFormat(ADisplay* display,
                                                        ADataSpace* outDataspace,
                                                        AHardwareBuffer_Format* outPixelFormat) {
    (void)display;
    if (outDataspace) *outDataspace = ADATASPACE_UNKNOWN;
    if (outPixelFormat) *outPixelFormat = 1 /* AHARDWAREBUFFER_FORMAT_R8G8B8A8_UNORM */;
}

static inline float ADisplay_getMaxSupportedFps(ADisplay* display) {
    (void)display;
    return 60.0f;
}

#ifdef __cplusplus
}
#endif
