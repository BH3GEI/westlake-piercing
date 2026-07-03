#pragma once

#include <stddef.h>

#include <string>

namespace android {

class BlobCache {
public:
    enum class InsertResult {
        kInserted,
        kDidClean,
        kNotEnoughSpace,
        kInvalidValueSize,
        kInvalidKeySize,
        kKeyTooBig,
        kValueTooBig,
        kCombinedTooBig,
    };
};

class FileBlobCache : public BlobCache {
public:
    FileBlobCache(size_t, size_t, size_t, const std::string&) {}
    FileBlobCache(size_t, size_t, size_t, const char*) {}

    void clear() {}

    size_t get(const void*, size_t, void*, size_t) { return 0; }

    InsertResult set(const void*, size_t, const void*, size_t) {
        return InsertResult::kInserted;
    }

    void writeToFile() {}
};

}  // namespace android
