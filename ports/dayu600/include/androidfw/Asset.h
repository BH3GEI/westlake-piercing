#pragma once

#include <stddef.h>
#include <stdint.h>
#include <sys/types.h>
#include <unistd.h>

namespace android {

class Asset {
public:
    virtual ~Asset() = default;

    virtual ssize_t read(void* buf, size_t count) = 0;
    virtual off64_t seek(off64_t offset, int whence) = 0;
    virtual off64_t getLength() const = 0;
    virtual off64_t getRemainingLength() const = 0;
};

}  // namespace android
