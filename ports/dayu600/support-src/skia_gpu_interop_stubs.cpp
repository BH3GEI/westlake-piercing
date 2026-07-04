// AHardwareBuffer↔skia GPU interop + runtime-effect private entry points.
// All Android-only; disabled on OHOS for gate 1 (hardware bitmaps and
// runtime-shader image filters return null → hwui takes software paths).
#include "include/core/SkColorSpace.h"
#include "include/core/SkImage.h"
#include "include/core/SkMatrix.h"
#include "include/core/SkPixmap.h"
#include "include/core/SkSurface.h"
#include "include/core/SkSurfaceProps.h"
#include "include/effects/SkRuntimeEffect.h"
#include "include/gpu/ganesh/GrBackendSurface.h"
#include "include/gpu/ganesh/GrDirectContext.h"
#include "include/gpu/ganesh/GrTypes.h"
#include "include/gpu/vk/VulkanExtensions.h"

typedef struct AHardwareBuffer AHardwareBuffer;

// ---- GrAHardwareBufferUtils (src/gpu/ganesh/android) ----
namespace GrAHardwareBufferUtils {
typedef void* TexImageCtx;
typedef void (*DeleteImageProc)(TexImageCtx);
typedef void (*UpdateImageProc)(TexImageCtx, GrDirectContext*);

SkColorType GetSkColorTypeFromBufferFormat(uint32_t);
GrBackendFormat GetGLBackendFormat(GrDirectContext*, uint32_t, bool);
GrBackendFormat GetVulkanBackendFormat(GrDirectContext*, AHardwareBuffer*, uint32_t, bool);
GrBackendTexture MakeGLBackendTexture(GrDirectContext*, AHardwareBuffer*, int, int,
                                      DeleteImageProc*, UpdateImageProc*, TexImageCtx*, bool,
                                      const GrBackendFormat&, bool);
GrBackendTexture MakeVulkanBackendTexture(GrDirectContext*, AHardwareBuffer*, int, int,
                                          DeleteImageProc*, UpdateImageProc*, TexImageCtx*, bool,
                                          const GrBackendFormat&, bool, bool);

SkColorType GetSkColorTypeFromBufferFormat(uint32_t) {
    return kUnknown_SkColorType;
}
GrBackendFormat GetGLBackendFormat(GrDirectContext*, uint32_t, bool) {
    return GrBackendFormat();
}
GrBackendFormat GetVulkanBackendFormat(GrDirectContext*, AHardwareBuffer*, uint32_t, bool) {
    return GrBackendFormat();
}
GrBackendTexture MakeGLBackendTexture(GrDirectContext*, AHardwareBuffer*, int, int,
                                      DeleteImageProc*, UpdateImageProc*, TexImageCtx*, bool,
                                      const GrBackendFormat&, bool) {
    return GrBackendTexture();
}
GrBackendTexture MakeVulkanBackendTexture(GrDirectContext*, AHardwareBuffer*, int, int,
                                          DeleteImageProc*, UpdateImageProc*, TexImageCtx*, bool,
                                          const GrBackendFormat&, bool, bool) {
    return GrBackendTexture();
}
}  // namespace GrAHardwareBufferUtils

// ---- SkImages / SkSurfaces AHardwareBuffer entry points ----
namespace SkImages {
sk_sp<SkImage> DeferredFromAHardwareBuffer(AHardwareBuffer*, SkAlphaType, sk_sp<SkColorSpace>,
                                           GrSurfaceOrigin);
sk_sp<SkImage> DeferredFromAHardwareBuffer(AHardwareBuffer*, SkAlphaType, sk_sp<SkColorSpace>,
                                           GrSurfaceOrigin) {
    return nullptr;
}
sk_sp<SkImage> TextureFromAHardwareBufferWithData(GrDirectContext*, const SkPixmap&,
                                                  AHardwareBuffer*, GrSurfaceOrigin);
sk_sp<SkImage> TextureFromAHardwareBufferWithData(GrDirectContext*, const SkPixmap&,
                                                  AHardwareBuffer*, GrSurfaceOrigin) {
    return nullptr;
}
}  // namespace SkImages

namespace SkSurfaces {
sk_sp<SkSurface> WrapAndroidHardwareBuffer(GrDirectContext*, AHardwareBuffer*, GrSurfaceOrigin,
                                           sk_sp<SkColorSpace>, const SkSurfaceProps*, bool);
sk_sp<SkSurface> WrapAndroidHardwareBuffer(GrDirectContext*, AHardwareBuffer*, GrSurfaceOrigin,
                                           sk_sp<SkColorSpace>, const SkSurfaceProps*, bool) {
    return nullptr;
}
}  // namespace SkSurfaces

// ---- SkRuntimeEffectPriv::MakeDeferredShader ----
#include "src/core/SkRuntimeEffectPriv.h"
sk_sp<SkShader> SkRuntimeEffectPriv::MakeDeferredShader(
        const SkRuntimeEffect* effect, UniformsCallback uniformsCallback,
        SkSpan<const SkRuntimeEffect::ChildPtr> children, const SkMatrix* localMatrix) {
    (void)effect;
    (void)uniformsCallback;
    (void)children;
    (void)localMatrix;
    return nullptr;
}

// ---- skgpu::VulkanExtensions::init (device lib exports only __h variant) ----
namespace skgpu {
void VulkanExtensions::init(VulkanGetProc getProc, VkInstance instance,
                            VkPhysicalDevice physDev, uint32_t instanceExtensionCount,
                            const char* const* instanceExtensions,
                            uint32_t deviceExtensionCount,
                            const char* const* deviceExtensions) {
    (void)getProc;
    (void)instance;
    (void)physDev;
    (void)instanceExtensionCount;
    (void)instanceExtensions;
    (void)deviceExtensionCount;
    (void)deviceExtensions;
}
}  // namespace skgpu
