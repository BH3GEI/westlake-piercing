// xcomponent_interposer.cpp — T2a seam: host an OH-native XComponent engine
// (e.g. the Tuanjie/Unity il2cpp libtuanjie.so) inside a *native* process, with
// NO ArkUI / NO .hap, by shadowing the libace_ndk XComponent NDK and feeding the
// engine my already-proven display-attached OHNativeWindow.
//
// WHY THIS EXISTS (2026-07-12 convergence, docs/reference/convergence-bionic-musl-2026-07-12.md):
//   The arm64 libtuanjie.so shipped by the vendor is ALREADY an OpenHarmony-native
//   il2cpp build (296 OH_* NDK imports, 16 OH_NativeXComponent_*, zero JNI/bionic).
//   A normal OH app would host it via an ArkUI <XComponent> whose OnSurfaceCreated
//   hands the engine a window. We have no ArkUI/hvigor toolchain (SDK is native-only),
//   so instead we INTERPOSE the XComponent NDK: when the engine registers its
//   callbacks, we synthesize a component, hand it MY display window, and pump frames.
//
// The window itself is the proven pipeline from ohos_display_surface.cpp:
//   RSSurfaceNode::Create -> AttachToDisplay(0) -> GetSurface -> CreateNativeWindowFromSurface
//   (westlake_rs_smoke.cpp proved a GL client can eglCreateWindowSurface on it and
//    swap real pixels to the DAYU600 panel via the live render_service/composer_host).
//
// STATUS / SEAM VERDICT (2026-07-12 RE of libtuanjie.so .dynsym, locally parsed):
//   The engine imports napi_module_register (UND) and exposes NO callable bring-up
//   entry — its only exports are FreeType (FT_*/UNITY_FT_*), LZ4, UnitySendMessage,
//   _init/_fini. i.e. it is a napi/ArkTS MODULE: it self-registers on dlopen and is
//   kicked off only when an ArkTS runtime loads it and hands its init a napi_env +
//   an ArkUI XComponent. => A pure-native host CANNOT bootstrap it (shape (B) below);
//   the cheapest T2a is a thin OH .hap (ArkUI XComponent bound to the engine's module
//   + il2cpp data), which rides OH's OWN XComponent->RS->render_service->panel path
//   (so this file's window-feed is NOT needed for the OH-native game).
//
//   Therefore this interposer is DEMOTED to a T1 / fallback tool: it is the right
//   mechanism for forcing a FOREIGN (Android/NDK) native-GL app that uses the
//   XComponent NDK onto OH's display via my proven window, and a fallback if we ever
//   must host an OH napi engine outside ArkUI by embedding a napi_env. The ABI-fixed
//   core below (shadow + window-feed + vsync pump) is complete and buildable against
//   the OHOS native SDK; only the ArkTS-less kick-off (TODO(kickoff)) is unsolved and,
//   per the verdict, is not the T2a path.
//
// Build (on compiler, OHOS clang 15, --target aarch64):
//   clang++ --target=aarch64-linux-ohos -shared -fPIC -O2 \
//     -I<sdk>/sysroot/usr/include \
//     xcomponent_interposer.cpp ohos_display_surface.cpp \
//     -o libwestlake_xcomponent_interposer.so
//   On device: LD_PRELOAD it (or place ahead of libace_ndk.z.so) for the engine host.

#include <ace/xcomponent/native_interface_xcomponent.h>
#include <native_vsync/native_vsync.h>
#include <native_window/external_window.h>

#include <cstdint>
#include <cstdio>
#include <cstring>

// ── proven display-window producer (ohos_display_surface.cpp) ────────────────
// Creates a display-attached RSSurfaceNode and returns its OHNativeWindow* as void*.
extern "C" void* westlake_ohos_make_display_window(int width, int height,
                                                   int* out_w, int* out_h);

namespace {
constexpr const char* kTag = "[wl-xcomp] ";

// The engine treats OH_NativeXComponent* as an opaque handle it only ever passes
// back to us. We hand it the address of this token; we never dereference it as a
// real ACE component, so a 1-byte sentinel is sufficient and ABI-safe.
struct FakeComponent { uint32_t magic; };
FakeComponent g_component{0x5743314D};  // 'WC1M'

OH_NativeXComponent_Callback g_engineCb{};   // captured from the engine
bool                         g_haveCb = false;

void*    g_window = nullptr;   // OHNativeWindow* from the proven producer
int      g_w = 0, g_h = 0;
OH_NativeVSync* g_vsync = nullptr;

// The engine's per-frame callback, if it registers one via RegisterOnFrameCallback.
void (*g_onFrame)(OH_NativeXComponent*, uint64_t, uint64_t) = nullptr;

void vsyncTick(long long ts, void* /*data*/) {
    if (g_onFrame) g_onFrame(reinterpret_cast<OH_NativeXComponent*>(&g_component),
                             static_cast<uint64_t>(ts), 0);
    // Re-arm for the next vsync so the engine keeps getting frame ticks. The engine
    // owns its own render thread / nativeRender; we only supply the beat (never a
    // second driver — see convergence report SEAM rule "绝不双驱").
    if (g_vsync)
        OH_NativeVSync_RequestFrame(g_vsync, vsyncTick, nullptr);
}
}  // namespace

// ── shadowed libace_ndk XComponent NDK ───────────────────────────────────────
// These definitions shadow libace_ndk.z.so's exports for the engine. Because the
// engine imports them by name, LD_PRELOAD (or link-order ahead of libace_ndk) makes
// the engine call ours. We record what the engine wants and drive it off MY window.

extern "C" {

int32_t OH_NativeXComponent_RegisterCallback(OH_NativeXComponent* /*component*/,
                                             OH_NativeXComponent_Callback* callback) {
    if (!callback) return -1;
    g_engineCb = *callback;
    g_haveCb = true;
    printf("%sengine registered XComponent callbacks (OnSurfaceCreated=%p)\n",
           kTag, reinterpret_cast<void*>(g_engineCb.OnSurfaceCreated));
    return 0;
}

int32_t OH_NativeXComponent_GetXComponentSize(OH_NativeXComponent* /*component*/,
                                              const void* /*window*/,
                                              uint64_t* width, uint64_t* height) {
    if (width)  *width  = static_cast<uint64_t>(g_w);
    if (height) *height = static_cast<uint64_t>(g_h);
    return 0;
}

// Engine may register a frame callback; capture it and let vsync pump it.
int32_t OH_NativeXComponent_RegisterOnFrameCallback(
        OH_NativeXComponent* /*component*/,
        void (*callback)(OH_NativeXComponent*, uint64_t, uint64_t)) {
    g_onFrame = callback;
    printf("%sengine registered OnFrame callback=%p\n", kTag, reinterpret_cast<void*>(callback));
    return 0;
}

}  // extern "C"

// ── host driver ──────────────────────────────────────────────────────────────
// Call after the engine has registered its callbacks. Creates the proven display
// window, tells the engine "surface created" with MY window, and starts the vsync
// beat. Returns 0 on success.
extern "C" int westlake_t2a_present_engine(int reqW, int reqH) {
    if (!g_haveCb || !g_engineCb.OnSurfaceCreated) {
        printf("%sno engine callback captured yet — kick off the engine first\n", kTag);
        return -1;
    }
    g_window = westlake_ohos_make_display_window(reqW, reqH, &g_w, &g_h);
    if (!g_window) {
        printf("%swestlake_ohos_make_display_window failed\n", kTag);
        return -2;
    }
    printf("%sdisplay window=%p geom=%dx%d — handing to engine OnSurfaceCreated\n",
           kTag, g_window, g_w, g_h);

    auto* comp = reinterpret_cast<OH_NativeXComponent*>(&g_component);
    g_engineCb.OnSurfaceCreated(comp, g_window);   // engine now owns rendering into MY surface

    // Supply the frame beat. The engine drives its own render loop; we only tick.
    g_vsync = OH_NativeVSync_Create("wl-t2a", 6);
    if (g_vsync) OH_NativeVSync_RequestFrame(g_vsync, vsyncTick, nullptr);
    else printf("%sOH_NativeVSync_Create failed — engine's own vsync may still work\n", kTag);
    return 0;
}

// TODO(kickoff): RESOLVED by RE — the engine self-registers a napi module (imports
// napi_module_register; no plain init export). Kicking it off without ArkTS would
// require standing up a napi_env by embedding the ArkTS/napi VM (libace_napi + the
// ArkJS runtime) in this process and driving the module's registered init manually.
// That is deliberately NOT pursued: the cheapest T2a is a thin OH .hap (see file
// header). Keep this TU for T1 / foreign-native-GL hosting where the kick-off is our
// own main() and we simply need to feed a display window to XComponent-NDK code.
