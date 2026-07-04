#pragma once

// Stub of libui's ui/GraphicBuffer.h for the OpenHarmony bringup build.

#include <stdint.h>

#include <android/native_window.h>

namespace android {

typedef const void* buffer_handle_t;

class GraphicBuffer : public ANativeWindowBuffer {
public:
    GraphicBuffer() = default;
};

}  // namespace android

#include <ui/PixelFormat.h>
