#pragma once

#include <SkBitmap.h>
#include <SkCodec.h>

namespace android {
namespace skia {

class BRDAllocator : public SkBitmap::Allocator {
public:
    virtual ~BRDAllocator() = default;

    virtual SkCodec::ZeroInitialized zeroInit() const {
        return SkCodec::kNo_ZeroInitialized;
    }
};

}  // namespace skia
}  // namespace android
