#pragma once

// Stub of frameworks/native's private AHardwareBufferHelpers.h.

#include <android/hardware_buffer.h>
#include <ui/GraphicBuffer.h>

namespace android {

static inline GraphicBuffer* AHardwareBuffer_to_GraphicBuffer(AHardwareBuffer* buffer) {
    return reinterpret_cast<GraphicBuffer*>(buffer);
}

static inline const GraphicBuffer* AHardwareBuffer_to_GraphicBuffer(
        const AHardwareBuffer* buffer) {
    return reinterpret_cast<const GraphicBuffer*>(buffer);
}

static inline AHardwareBuffer* AHardwareBuffer_from_GraphicBuffer(GraphicBuffer* buffer) {
    return reinterpret_cast<AHardwareBuffer*>(buffer);
}

}  // namespace android
