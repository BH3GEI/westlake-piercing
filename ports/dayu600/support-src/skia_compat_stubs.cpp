// Bridges the gap between what hwui expects from AOSP's framework skia build
// and what the device's libskia_canvaskit.z.so exports.
//
// Two classes of gaps:
//  1. Android-framework-only skia APIs compiled out of the canvaskit build
//     (SK_BUILD_FOR_ANDROID_FRAMEWORK guarded). Implemented locally where the
//     public API suffices, no-op/nullptr where the feature is Android-only
//     (hardware bitmaps, WebView stencil clips, runtime-shader image filters).
//  2. Exported-but-ABI-mismatched symbols: the device lib was built against
//     libc++ inline namespace std::__h, our objects against the SDK's
//     std::__n1, so any signature carrying std:: types does not bind. Those
//     are defined here under our namespace (codec factories currently return
//     nullptr; revisit for gate 5 image decode).
#include "include/codec/SkCodec.h"
#include "include/core/SkBitmap.h"
#include "include/core/SkCanvas.h"
#include "include/core/SkData.h"
#include "include/core/SkFontMgr.h"
#include "include/core/SkImageFilter.h"
#include "include/core/SkMesh.h"
#include "include/core/SkRegion.h"
#include "include/core/SkStream.h"
#include "include/core/SkString.h"
#include "include/core/SkSurface.h"
#include "include/core/SkTypeface.h"
#include "include/effects/SkImageFilters.h"
#include "include/effects/SkRuntimeEffect.h"
#include "include/gpu/ganesh/GrDirectContext.h"

#include <cstring>
#include <string>
#include <string_view>

// ---- simple local implementations over public API ----

sk_sp<SkData> SkCopyStreamToData(SkStream* stream) {
    if (!stream) return nullptr;
    SkDynamicMemoryWStream out;
    char buf[4096];
    while (!stream->isAtEnd()) {
        size_t n = stream->read(buf, sizeof(buf));
        if (n == 0) break;
        out.write(buf, n);
    }
    return out.detachAsData();
}

sk_sp<SkFontMgr> SkFontMgr_New_Custom_Empty() {
    return SkFontMgr::RefEmpty();
}

// SkFontMgr public wrappers carry std::unique_ptr in their signature (ABI
// namespace mismatch vs device lib) — define our-namespace versions that
// forward to the protected virtuals, exactly like upstream.
sk_sp<SkTypeface> SkFontMgr::makeFromStream(std::unique_ptr<SkStreamAsset> stream,
                                            int ttcIndex) const {
    if (!stream) return nullptr;
    return this->onMakeFromStreamIndex(std::move(stream), ttcIndex);
}
sk_sp<SkTypeface> SkFontMgr::makeFromStream(std::unique_ptr<SkStreamAsset> stream,
                                            const SkFontArguments& args) const {
    if (!stream) return nullptr;
    return this->onMakeFromStreamArgs(std::move(stream), args);
}

SkString::SkString(const std::string& src) : SkString(src.data(), src.size()) {}

char* SkRegion::toString() {
    return strdup("SkRegion");
}

// SkCanvas raster ctor with Android legacy color behavior → plain raster ctor.
SkCanvas::SkCanvas(const SkBitmap& bitmap, ColorBehavior) : SkCanvas(bitmap) {}

const SkRuntimeEffect::Uniform* SkRuntimeEffect::findUniform(std::string_view name) const {
    for (const auto& u : this->uniforms()) {
        if (u.name == name) return &u;
    }
    return nullptr;
}
const SkRuntimeEffect::Child* SkRuntimeEffect::findChild(std::string_view name) const {
    for (const auto& c : this->children()) {
        if (c.name == name) return &c;
    }
    return nullptr;
}

const SkMeshSpecification::Uniform* SkMeshSpecification::findUniform(std::string_view name) const {
    for (const auto& u : this->uniforms()) {
        if (u.name == name) return &u;
    }
    return nullptr;
}

// GrDirectContext deferred cleanup: signature carries std::chrono → mismatch.
// Map to an immediate unlocked-resource purge (safe, slightly eager).
void GrDirectContext::performDeferredCleanup(std::chrono::milliseconds,
                                             GrPurgeResourceOptions opts) {
    this->purgeUnlockedResources(opts);
}

// ---- SkAndroidFrameworkUtils (WebView/stencil/legacy paths) ----
class SkShader;
class SkAndroidFrameworkUtils {
public:
    struct LinearGradientInfo;
    static bool clipWithStencil(SkCanvas*);
    static int SaveBehind(SkCanvas*, const SkRect*);
    static SkCanvas* getBaseWrappedCanvas(SkCanvas*);
    static bool ShaderAsALinearGradient(SkShader*, LinearGradientInfo*);
    static void ResetClip(SkCanvas*);
};
bool SkAndroidFrameworkUtils::clipWithStencil(SkCanvas*) { return false; }
int SkAndroidFrameworkUtils::SaveBehind(SkCanvas* canvas, const SkRect* bounds) {
    return canvas ? canvas->saveLayer(bounds, nullptr) : 0;
}
SkCanvas* SkAndroidFrameworkUtils::getBaseWrappedCanvas(SkCanvas* canvas) { return canvas; }
bool SkAndroidFrameworkUtils::ShaderAsALinearGradient(SkShader*, LinearGradientInfo*) {
    return false;
}
void SkAndroidFrameworkUtils::ResetClip(SkCanvas*) {}

class SkAndroidFrameworkTraceUtil {
public:
    static bool gEnableAndroidTracing;
};
bool SkAndroidFrameworkTraceUtil::gEnableAndroidTracing = false;

// ---- codec / animated image cluster (nullptr for now; gate 5 revisits) ----
class SkPngChunkReader;
struct SkGainmapInfo;

std::unique_ptr<SkCodec> SkCodec::MakeFromStream(std::unique_ptr<SkStream>, Result* result,
                                                 SkPngChunkReader*, SelectionPolicy) {
    if (result) *result = kUnimplemented;
    return nullptr;
}

#include "include/codec/SkAndroidCodec.h"
std::unique_ptr<SkAndroidCodec> SkAndroidCodec::MakeFromStream(std::unique_ptr<SkStream>,
                                                               SkPngChunkReader*) {
    return nullptr;
}
std::unique_ptr<SkAndroidCodec> SkAndroidCodec::MakeFromCodec(std::unique_ptr<SkCodec>) {
    return nullptr;
}
bool SkAndroidCodec::getAndroidGainmap(SkGainmapInfo*, std::unique_ptr<SkStream>*) {
    return false;
}

#include "include/android/SkAnimatedImage.h"
sk_sp<SkAnimatedImage> SkAnimatedImage::Make(std::unique_ptr<SkAndroidCodec>, const SkImageInfo&,
                                             SkIRect, sk_sp<SkPicture>) {
    return nullptr;
}

#include "client_utils/android/FrontBufferedStream.h"
namespace android {
namespace skia {
std::unique_ptr<SkStreamRewindable> FrontBufferedStream::Make(std::unique_ptr<SkStream>, size_t) {
    return nullptr;
}
}  // namespace skia
}  // namespace android

// ---- documents / effects / gpu-interop (Android-only; disabled) ----
class SkWStream;
struct SkSerialProcs;
class SkPicture;
class SkDocument;
namespace SkMultiPictureDocument {
sk_sp<SkDocument> Make(SkWStream*, const SkSerialProcs*,
                       std::function<void(const SkPicture*)> onEndPage);
sk_sp<SkDocument> Make(SkWStream*, const SkSerialProcs*,
                       std::function<void(const SkPicture*)>) {
    return nullptr;
}
}  // namespace SkMultiPictureDocument

sk_sp<SkImageFilter> SkImageFilters::RuntimeShader(const SkRuntimeEffectBuilder&, float,
                                                   std::string_view, sk_sp<SkImageFilter>) {
    return nullptr;
}

class SkColorFilter;
class SkColorFilterPriv {
public:
    static sk_sp<SkColorFilter> MakeColorSpaceXform(sk_sp<SkColorSpace>, sk_sp<SkColorSpace>);
};
sk_sp<SkColorFilter> SkColorFilterPriv::MakeColorSpaceXform(sk_sp<SkColorSpace>,
                                                            sk_sp<SkColorSpace>) {
    return nullptr;
}

class SkBlurMaskFilter {
public:
    static sk_sp<SkMaskFilter> MakeEmboss(SkScalar, const SkScalar[3], SkScalar, SkScalar);
};
sk_sp<SkMaskFilter> SkBlurMaskFilter::MakeEmboss(SkScalar, const SkScalar[3], SkScalar, SkScalar) {
    return nullptr;
}
