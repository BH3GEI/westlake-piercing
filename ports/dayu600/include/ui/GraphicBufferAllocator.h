#pragma once

// Stub of libui's ui/GraphicBufferAllocator.h for the OpenHarmony bringup
// build. hwui only calls getInstance().dump().

#include <string>

namespace android {

class GraphicBufferAllocator {
public:
    static GraphicBufferAllocator& getInstance() {
        static GraphicBufferAllocator sInstance;
        return sInstance;
    }

    void dump(std::string& result, bool /* less */ = true) const { (void)result; }

private:
    GraphicBufferAllocator() = default;
};

}  // namespace android
