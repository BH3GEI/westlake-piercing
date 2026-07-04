#pragma once

// Stub of libui's ui/GraphicBufferMapper.h for the OpenHarmony bringup build.

#include <stdint.h>

#include <ui/GraphicBuffer.h>
#include <utils/Errors.h>

namespace android {

class GraphicBufferMapper {
public:
    static GraphicBufferMapper& get() {
        static GraphicBufferMapper sInstance;
        return sInstance;
    }

    status_t getAllocationSize(buffer_handle_t /* handle */, uint64_t* outSize) {
        if (outSize) *outSize = 0;
        return UNKNOWN_ERROR;
    }

private:
    GraphicBufferMapper() = default;
};

}  // namespace android
