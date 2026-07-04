#pragma once

#include <system/window.h>

#include <android/hardware_buffer.h>

#ifdef __cplusplus
extern "C" {
#endif

// From libnativewindow's vndk/window.h.
static inline ANativeWindowBuffer* AHardwareBuffer_to_ANativeWindowBuffer(
        AHardwareBuffer* buffer) {
    return reinterpret_cast<ANativeWindowBuffer*>(buffer);
}

#ifdef __cplusplus
}
#endif
