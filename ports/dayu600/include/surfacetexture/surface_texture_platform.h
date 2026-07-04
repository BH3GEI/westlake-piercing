#pragma once

// Stub of frameworks/native's platform-private
// surfacetexture/surface_texture_platform.h used by hwui's
// DeferredLayerUpdater. Compile-only no-ops.

#include <EGL/egl.h>
#include <EGL/eglext.h>
#include <android/hardware_buffer.h>
#include <android/rect.h>
#include <android/surface_texture.h>
#include <system/graphics.h>

// AOSP 12+ defines this in system/graphics.h; the AOSP 11 copy used by this
// bringup build does not have it yet.
typedef enum {
    HDR10_SMPTE2086 = 1,
    HDR10_CTA861_3 = 2,
    HDR10PLUS_SEI = 4,
} AHdrMetadataType;

namespace android {

typedef int (*ASurfaceTexture_createReleaseFence)(bool useFenceSync, EGLSyncKHR* sync,
                                                  EGLDisplay* display, int* releaseFence,
                                                  void* fencePassThroughHandle);
typedef int (*ASurfaceTexture_fenceWait)(int fence, void* fencePassThroughHandle);

}  // namespace android

static inline unsigned int ASurfaceTexture_getCurrentTextureTarget(ASurfaceTexture* st) {
    (void)st;
    return 0;
}

static inline void ASurfaceTexture_takeConsumerOwnership(ASurfaceTexture* st) {
    (void)st;
}

static inline void ASurfaceTexture_releaseConsumerOwnership(ASurfaceTexture* st) {
    (void)st;
}

static inline AHardwareBuffer* ASurfaceTexture_dequeueBuffer(
        ASurfaceTexture* st, int* outSlotid, android_dataspace* outDataspace,
        AHdrMetadataType* outHdrType, android_cta861_3_metadata* outCta861_3,
        android_smpte2086_metadata* outSmpte2086, float* outTransformMatrix,
        uint32_t* outTransform, bool* outNewContent,
        android::ASurfaceTexture_createReleaseFence createFence,
        android::ASurfaceTexture_fenceWait fenceWait, void* fencePassThroughHandle,
        ARect* currentCrop) {
    (void)st;
    (void)createFence;
    (void)fenceWait;
    (void)fencePassThroughHandle;
    if (outSlotid) *outSlotid = 0;
    if (outDataspace) *outDataspace = HAL_DATASPACE_UNKNOWN;
    if (outHdrType) *outHdrType = static_cast<AHdrMetadataType>(0);
    if (outCta861_3) *outCta861_3 = android_cta861_3_metadata{};
    if (outSmpte2086) *outSmpte2086 = android_smpte2086_metadata{};
    if (outTransformMatrix) {
        for (int i = 0; i < 16; ++i) outTransformMatrix[i] = (i % 5 == 0) ? 1.0f : 0.0f;
    }
    if (outTransform) *outTransform = 0;
    if (outNewContent) *outNewContent = false;
    if (currentCrop) *currentCrop = ARect{0, 0, 0, 0};
    return nullptr;
}
