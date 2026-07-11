/*
 * Gate-2 harness — Skia GrContext interposer.
 *
 * Root cause of the empty backbuffer (buffer queued to the producer, RS
 * composites it, but it has no hwui pixels):
 *
 * The OHOS libskia_canvaskit customizes GrDrawingManager::flush to GATE the
 * whole flush on onFlush-callback preFlush success (upstream Skia never does):
 *
 *     bool preFlushSuccessful = true;
 *     for (cb : fOnFlushCBObjects) preFlushSuccessful &= cb->preFlush(...);
 *     if (preFlushSuccessful) { ...execute render tasks / submit GPU work... }
 *
 * The only registered onFlush callback is AtlasPathRenderer. On this GL driver
 * its MSAA-alpha8 atlas texture fails to instantiate, so preFlush() returns
 * false, preFlushSuccessful=0, and the entire render-task execution is skipped
 * -> nothing is submitted to FBO 0 -> swap posts an empty buffer.
 * (Confirmed in openharmony-third-party-skia GrDrawingManager.cpp:172-179 and
 *  AtlasPathRenderer.cpp; matches the device log preFlushSuccessful=0.)
 *
 * AtlasPathRenderer is created + registered by PathRendererChain only when
 * (options.fGpuPathRenderers & GpuPathRenderers::kAtlas) is set
 * (PathRendererChain.cpp:43, fed straight from GrContextOptions via
 * GrRecordingContext.cpp:70). fDisableTessellationPathRenderer did NOT unregister
 * it on this device build (IsSupported's tessellation dependency evidently does
 * not hold here), so we clear the path-renderer mask outright:
 * fGpuPathRenderers = kNone. Our content is pure rectangle fills (drawColor +
 * drawRect), which go through the GPU direct rect-fill op and need NO path
 * renderer at all — so with kNone the atlas is never created/registered,
 * fOnFlushCBObjects stays empty, and the preFlush gate is never armed.
 *
 * hwui builds its context via GrDirectContexts::MakeGL(glInterface, options)
 * (RenderThread::requireGlContext) — a PLT call into device Skia. We interpose
 * that exported symbol (executable is linked --export-dynamic, so it wins the
 * global-scope lookup of libhwui's PLT slot), flip the flag on a copy of the
 * options, and forward to the real MakeGL via RTLD_NEXT.
 */
#define _GNU_SOURCE
#include <dlfcn.h>
#include <stdio.h>

#include <utility>

#include <include/core/SkRefCnt.h>
#include <include/gpu/ganesh/GrContextOptions.h>
#include <include/gpu/ganesh/GrDirectContext.h>
#include <include/gpu/ganesh/gl/GrGLDirectContext.h>
#include <include/gpu/ganesh/gl/GrGLInterface.h>

namespace GrDirectContexts {

sk_sp<GrDirectContext> MakeGL(sk_sp<const GrGLInterface> iface, const GrContextOptions& opts) {
    // ABI bridge: the device libskia_canvaskit was built WITH GPU_TEST_UTILS (its
    // GrOnFlushResourceProvider::failFlushTimeCallbacks symbol is exported), so its
    // GrContextOptions carries the trailing test-only fields (fGpuPathRenderers,
    // ...). libhwui was built WITHOUT GPU_TEST_UTILS, so the `opts` it hands us is
    // the SHORTER struct and the device has been reading GARBAGE for those trailing
    // fields (hence a stray kAtlas bit -> AtlasPathRenderer registered -> failing
    // preFlush gate). This TU is compiled -DGPU_TEST_UTILS so our GrContextOptions
    // matches the device layout. The copy below fills the non-test prefix correctly
    // (identical offsets; fProcessName etc. copied properly); the trailing POD test
    // fields get garbage from past the shorter object, so we reset ALL of them to
    // safe values before forwarding.
    GrContextOptions patched = opts;
    // Primary fix: no GPU path renderers -> AtlasPathRenderer (the only onFlush
    // callback, whose failing MSAA-alpha8 atlas texture gates the whole flush) is
    // never created/registered. Our content is rect fills; paths still fall back to
    // DefaultPathRenderer.
    patched.fGpuPathRenderers = GpuPathRenderers::kNone;
    patched.fResourceCacheLimitOverride = -1;
    patched.fMaxTextureAtlasSize = 2048;
    patched.fFailFlushTimeCallbacks = false;
    patched.fSuppressDualSourceBlending = false;
    patched.fSuppressAdvancedBlendEquations = false;
    patched.fSuppressFramebufferFetch = false;
    patched.fAllPathsVolatile = false;
    patched.fWireframeMode = false;
    patched.fClearAllTextures = false;
    patched.fRandomGLOOM = false;
    patched.fDisallowWriteAndTransferPixelRowBytes = false;
    // Non-test field, also disables the atlas path renderer's dependency chain.
    patched.fDisableTessellationPathRenderer = true;

    using Fn = sk_sp<GrDirectContext> (*)(sk_sp<const GrGLInterface>, const GrContextOptions&);
    static Fn real = nullptr;
    if (!real) {
        // RTLD_NEXT fails in the ART process: libskia is a DT_NEEDED of libhwui and is
        // loaded *before* libhwui, so RTLD_NEXT (search after this .so) never sees it.
        // Resolve the real MakeGL from libskia explicitly.
        const char* skia_paths[] = {
            "libskia_canvaskit.z.so",
            "/system/lib64/libskia_canvaskit.z.so",
            "/system/lib64/platformsdk/libskia_canvaskit.z.so",
            "/data/local/tmp/westlake-dayu600-substrate/android/lib64/libskia_canvaskit.z.so",
        };
        void* skia = nullptr;
        for (const char* p : skia_paths) {
            skia = dlopen(p, RTLD_NOW | RTLD_NOLOAD);
            if (!skia) skia = dlopen(p, RTLD_NOW | RTLD_GLOBAL);
            if (skia) break;
        }
        if (skia) {
            real = reinterpret_cast<Fn>(dlsym(
                    skia,
                    "_ZN16GrDirectContexts6MakeGLE5sk_spIK13GrGLInterfaceERK16GrContextOptions"));
        }
        if (!real) {
            real = reinterpret_cast<Fn>(dlsym(
                    RTLD_DEFAULT,
                    "_ZN16GrDirectContexts6MakeGLE5sk_spIK13GrGLInterfaceERK16GrContextOptions"));
        }
        if (!real) {
            real = reinterpret_cast<Fn>(dlsym(
                    RTLD_NEXT,
                    "_ZN16GrDirectContexts6MakeGLE5sk_spIK13GrGLInterfaceERK16GrContextOptions"));
        }
    }
    fprintf(stderr,
            "[skia-interposer] GrDirectContexts::MakeGL: fGpuPathRenderers=kNone "
            "(no AtlasPathRenderer -> empty onFlush list -> gate never armed) real=%p\n",
            reinterpret_cast<void*>(real));
    if (!real) {
        fprintf(stderr, "[skia-interposer] FATAL: real MakeGL not found via skia/RTLD_DEFAULT\n");
        return nullptr;
    }
    return real(std::move(iface), patched);
}

}  // namespace GrDirectContexts
