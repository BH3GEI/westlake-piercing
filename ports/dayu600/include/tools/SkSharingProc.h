#pragma once

// Stub of Skia's tools/SkSharingProc.h (a tools/ helper not shipped in the
// m133 include tree) used by hwui's SkiaPipeline multi-frame SKP capture.

#include <unordered_map>
#include <vector>

#include "include/core/SkData.h"
#include "include/core/SkImage.h"
#include "include/core/SkPicture.h"
#include "include/core/SkRefCnt.h"
#include "include/core/SkSerialProcs.h"

struct SkSharingSerialContext {
    // Map from image digest to ids (unused in the stub).
    std::unordered_map<uint32_t, int> fImageMap;

    static sk_sp<SkData> serializeImage(SkImage* /* img */, void* /* ctx */) {
        return nullptr;
    }

    static void collectNonTextureImagesFromPicture(const SkPicture* /* pic */,
                                                   SkSharingSerialContext* /* sharingCtx */) {}
};
