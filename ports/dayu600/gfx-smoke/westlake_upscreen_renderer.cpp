/*
 * westlake_upscreen_renderer — Agent-C's in-process JNI bridge that paints a Java
 * android.graphics.RenderNode (recorded from a real View / DecorView) to the
 * DAYU600 panel via OUR libhwui.so. Reuses the gate-2-proven pipeline
 * (RenderProxy -> RenderThread -> CanvasContext -> EGL -> OHOS RSSurfaceNode).
 *
 * This is Agent-C's OWN copy — it registers natives on the class `WestlakeUpscreen`
 * (NOT Agent-B's Dayu600ApkStageProbe). The Java host builds/grabs a View, measures
 * + lays it out, records it into a RenderNode via a RecordingCanvas, then:
 *     long ptr = WestlakeUpscreen.nativeRenderNodePtr(renderNode);
 *     WestlakeUpscreen.nativeInit(ptr, w, h);
 *     WestlakeUpscreen.nativeDrawFrame();   // repeat per frame
 *     WestlakeUpscreen.nativeTeardown();
 *
 * nativeRenderNodePtr() reads android.graphics.RenderNode.mNativeRenderNode via JNI
 * GetFieldID/GetLongField — native field access is NOT subject to hidden-API
 * enforcement, so no reflection/@hide unblocking is needed on the Java side.
 */
#include <jni.h>
#include <dlfcn.h>

#include "AnimationContext.h"
#include "FrameInfo.h"
#include "IContextFactory.h"
#include "Properties.h"
#include "RenderNode.h"
#include "RenderProperties.h"
#include "hwui/Canvas.h"
#include "renderthread/RenderProxy.h"
#include "renderthread/TimeLord.h"

#include <SkBlendMode.h>
#include <SkColor.h>
#include <cstdint>
#include <memory>
#include <unistd.h>
#include <utils/StrongPointer.h>
#include <utils/Timers.h>
#include <android/log.h>

using namespace android;
using namespace android::uirenderer;
using namespace android::uirenderer::renderthread;

// From ohos_display_surface.cpp / oh_anativewindow_shim.cpp (linked into this .so).
extern "C" void* westlake_ohos_make_display_window(int width, int height, int* out_w, int* out_h);
extern "C" void westlake_ohos_teardown();
extern "C" void* oh_anw_wrap(void* oh);

// Published by egl_interposer.cpp (same .so): center pixel of the most recent swap,
// captured pre-swap on the RenderThread where the EGL context is current.
extern "C" volatile uint32_t g_wl_last_swap_argb;
extern "C" volatile int g_wl_swap_count;

#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, "wl-upscreen", __VA_ARGS__)

namespace {
class ContextFactory : public IContextFactory {
public:
    AnimationContext* createAnimationContext(renderthread::TimeLord& clock) override {
        return new AnimationContext(clock);
    }
};
ContextFactory g_factory;
RenderProxy* g_proxy = nullptr;
ANativeWindow* g_window = nullptr;
int g_w = 0, g_h = 0;

// Read android.graphics.RenderNode.mNativeRenderNode (a long holding an
// android::uirenderer::RenderNode*). Returns 0 on failure.
jlong nativeRenderNodePtr(JNIEnv* env, jclass, jobject renderNode) {
    if (renderNode == nullptr) { LOGI("renderNodePtr: null RenderNode"); return 0; }
    jclass cls = env->GetObjectClass(renderNode);
    if (cls == nullptr) { LOGI("renderNodePtr: GetObjectClass failed"); return 0; }
    // Field name is stable across AOSP: android.graphics.RenderNode.mNativeRenderNode : long
    jfieldID fid = env->GetFieldID(cls, "mNativeRenderNode", "J");
    if (fid == nullptr) {
        env->ExceptionClear();
        LOGI("renderNodePtr: no mNativeRenderNode field (RenderNode layout changed?)");
        return 0;
    }
    jlong ptr = env->GetLongField(renderNode, fid);
    LOGI("renderNodePtr: mNativeRenderNode=%p", reinterpret_cast<void*>(ptr));
    return ptr;
}

// Attach our OHOS display Surface to a RenderProxy driven by rootNodePtr.
// Returns 2 on success (matches westlake_view_renderer convention), 0 on failure.
jint nativeInit(JNIEnv*, jclass, jlong rootNodePtr, jint w, jint h) {
    if (g_proxy) return 2;
    if (rootNodePtr == 0) { LOGI("init: null rootNode ptr"); return 0; }
    Properties::isolatedProcess = true;
    // Seed DeviceInfo::maxTextureSize before first prepareTree — otherwise
    // layer promotion LOG_ALWAYS_FATALs ("MaxTextureSize has not been initialized").
    {
        using SetFn = void (*)(int);
        void* hwui = dlopen("libhwui.so", RTLD_NOW | RTLD_NOLOAD);
        if (!hwui) hwui = dlopen("libhwui.so", RTLD_NOW | RTLD_GLOBAL);
        if (hwui) {
            auto set = reinterpret_cast<SetFn>(dlsym(
                    hwui, "_ZN7android10uirenderer10DeviceInfo17setMaxTextureSizeEi"));
            if (set) set(8192);
            else LOGI("init: setMaxTextureSize symbol missing");
        }
    }
    int ow = 0, oh = 0;
    void* raw = westlake_ohos_make_display_window(w, h, &ow, &oh);
    if (!raw) { LOGI("init: make_display_window failed"); return 0; }
    g_window = reinterpret_cast<ANativeWindow*>(oh_anw_wrap(raw));
    if (!g_window) { LOGI("init: oh_anw_wrap failed"); return 0; }
    RenderNode* rootNode = reinterpret_cast<RenderNode*>(rootNodePtr);
    // #49 workaround (render path): Java RenderNode.setPosition() dispatches through
    // @CriticalNative nSetLeftTopRightBottom, which is UNBOUND (realfn=0) on this imageless
    // ART -> the root node keeps empty bounds -> hwui clips the app's Canvas.drawColor to an
    // empty rect and the panel stays black (buffer reads 0x00000000). We hold the native
    // RenderNode* here, so set the bounds + disable clipping DIRECTLY in C++ (native field
    // access, no JNI), exactly as the proven pure-C westlake_upscreen_color_smoke does. The
    // app's drawColor op is already in the display list (recorded via @FastNative nDrawColor,
    // which IS bound); only the node geometry was missing.
    {
        RenderProperties& props = rootNode->mutateStagingProperties();
        props.setLeftTopRightBottom(0, 0, w, h);
        props.setClipToBounds(false);
        rootNode->setPropertyFieldsDirty(0xFFFFFFFF);
    }
    g_proxy = new RenderProxy(/*opaque=*/true, rootNode, &g_factory);
    g_proxy->loadSystemProperties();
    g_proxy->setName("westlake_upscreen");
    g_proxy->setSurface(g_window);
    g_proxy->setLightAlpha(255 * 0.075, 255 * 0.15);
    g_proxy->setLightGeometry({(float)w / 2.0f, -200.0f, 800.0f}, 800.0f);
    g_w = w; g_h = h;
    LOGI("init ok %dx%d rootNode=%p", w, h, rootNode);
    return 2;
}

void nativeDrawFrame(JNIEnv*, jclass) {
    if (!g_proxy) return;
    nsecs_t vsync = systemTime(SYSTEM_TIME_MONOTONIC);
    UiFrameInfoBuilder(g_proxy->frameInfo())
            .setVsync(vsync, vsync, UiFrameInfoBuilder::INVALID_VSYNC_ID,
                      UiFrameInfoBuilder::UNKNOWN_DEADLINE,
                      UiFrameInfoBuilder::UNKNOWN_FRAME_INTERVAL);
    g_proxy->forceDrawNextFrame();
    g_proxy->syncAndDrawFrame();
    // Block until the RenderThread finishes this frame (incl. eglSwapBuffers, where
    // egl_interposer captures the center pixel). Makes the swap-pixel readable
    // synchronously by the Java color driver right after this returns; without the
    // fence the caller races the RenderThread and reads a stale/blank g_wl_last_swap_argb.
    g_proxy->fence();
}

// Center pixel (ARGB) captured by egl_interposer at the most recent swap, or -1 if no
// swap has happened yet. The Java color-smoke driver calls this AFTER nativeDrawFrame
// (which fences) to record the on-panel color for the provenance oracle. -1 is
// distinguishable from any real opaque ARGB (alpha 0xff => value >= 0 as a 32-bit uint).
jlong nativeLastSwapArgb(JNIEnv*, jclass) {
    if (g_wl_swap_count <= 0) return -1;
    return static_cast<jlong>(static_cast<uint32_t>(g_wl_last_swap_argb));
}

void nativeTeardown(JNIEnv*, jclass) {
    if (g_proxy) { g_proxy->fence(); delete g_proxy; g_proxy = nullptr; }
    westlake_ohos_teardown();
    g_window = nullptr;
}

const JNINativeMethod kMethods[] = {
    {"nativeRenderNodePtr", "(Landroid/graphics/RenderNode;)J", reinterpret_cast<void*>(nativeRenderNodePtr)},
    {"nativeInit", "(JII)I", reinterpret_cast<void*>(nativeInit)},
    {"nativeDrawFrame", "()V", reinterpret_cast<void*>(nativeDrawFrame)},
    {"nativeTeardown", "()V", reinterpret_cast<void*>(nativeTeardown)},
    {"nativeLastSwapArgb", "()J", reinterpret_cast<void*>(nativeLastSwapArgb)},
};
}  // namespace

// Plain-C smoke entry (no ART/JNI): builds a pure-color RenderNode natively (mirrors the flat
// display list that strategy-B route-a produces) and renders it via the SAME in-.so pipeline.
// A dlopen(RTLD_GLOBAL) launcher calls this to verify on hardware that the EGL/skia interposers
// compiled INTO this .so preempt when the .so is dlopen'd (integration risk R1) — zero ART.
extern "C" int westlake_upscreen_color_smoke(int w, int h, unsigned int argb, int seconds) {
    Properties::isolatedProcess = true;
    sp<RenderNode> root(new RenderNode());
    RenderProperties& props = root->mutateStagingProperties();
    props.setLeftTopRightBottom(0, 0, w, h);
    props.setClipToBounds(false);
    root->setPropertyFieldsDirty(0xFFFFFFFF);
    {
        std::unique_ptr<Canvas> canvas(Canvas::create_recording_canvas(w, h, root.get()));
        canvas->drawColor(static_cast<SkColor>(argb), SkBlendMode::kSrcOver);
        canvas->finishRecording(root.get());
    }
    if (nativeInit(nullptr, nullptr, reinterpret_cast<jlong>(root.get()), w, h) != 2) {
        LOGI("color_smoke: nativeInit failed");
        return 1;
    }
    int frames = (seconds < 1 ? 1 : seconds) * 10;
    for (int i = 0; i < frames; i++) {
        nativeDrawFrame(nullptr, nullptr);
        usleep(100 * 1000);
    }
    nativeTeardown(nullptr, nullptr);
    return 0;
}

extern "C" JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM* vm, void*) {
    JNIEnv* env = nullptr;
    if (vm->GetEnv(reinterpret_cast<void**>(&env), JNI_VERSION_1_6) != JNI_OK) return -1;
    // WestlakeUpscreen is in package adapter.window (same as Agent-D's input classes, so
    // their bare `WestlakeUpscreen.*` references resolve at dex-compile). JNI uses '/' form.
    jclass cls = env->FindClass("adapter/window/WestlakeUpscreen");
    if (cls == nullptr) {
        env->ExceptionClear();
        LOGI("JNI_OnLoad: FindClass adapter/window/WestlakeUpscreen failed (defer to explicit register)");
        return JNI_VERSION_1_6;  // allow Java-side registerNatives fallback
    }
    const jint nMethods = sizeof(kMethods) / sizeof(kMethods[0]);
    if (env->RegisterNatives(cls, kMethods, nMethods) != JNI_OK) {
        LOGI("JNI_OnLoad: RegisterNatives failed");
        return -1;
    }
    LOGI("JNI_OnLoad: %d upscreen natives registered on WestlakeUpscreen", nMethods);
    return JNI_VERSION_1_6;
}
