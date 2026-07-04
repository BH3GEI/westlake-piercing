#pragma once

// Stub of libui's ui/Fence.h for the OpenHarmony bringup build. hwui only
// uses the SIGNAL_TIME_* constants.

#include <stdint.h>

#include <limits>

namespace android {

class Fence {
public:
    Fence() = default;

    static constexpr int64_t SIGNAL_TIME_PENDING = std::numeric_limits<int64_t>::max();
    static constexpr int64_t SIGNAL_TIME_INVALID = -1;

    int getFd() const { return -1; }
    bool isValid() const { return false; }
    int64_t getSignalTime() const { return SIGNAL_TIME_INVALID; }
};

}  // namespace android
