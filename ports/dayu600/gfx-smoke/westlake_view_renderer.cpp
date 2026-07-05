/*
 * westlake_view_renderer — in-process JNI bridge that renders a Java
 * android.graphics.RenderNode (recorded from the app's real DecorView) to the
 * DAYU600 panel via OUR libhwui.so. Loaded by the ART app process; reuses the
 * proven gate-2 pipeline (RenderProxy -> RenderThread -> CanvasContext -> EGL).
 *
 * Java side: build the Activity + setContentView, measure/layout the DecorView,
 * record it into an android.graphics.RenderNode, hand its native ptr here.
 */
#include <jni.h>

#include "AnimationContext.h"
#include "FrameInfo.h"
#include "IContextFactory.h"
#include "Properties.h"
#include "RenderNode.h"
#include "renderthread/RenderProxy.h"
#include "renderthread/TimeLord.h"

#include <utils/StrongPointer.h>
#include <utils/Timers.h>
#include <android/log.h>

using namespace android;
using namespace android::uirenderer;
using namespace android::uirenderer::renderthread;

// From ohos_display_surface.cpp / oh_anativewindow_shim.cpp (bundled into this .so).
extern "C" void* westlake_ohos_make_display_window(int width, int height, int* out_w, int* out_h);
extern "C" void westlake_ohos_teardown();
extern "C" void* oh_anw_wrap(void* oh);

#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, "wl-view-renderer", __VA_ARGS__)

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

// Returns 2 on success, 0 on failure. rootNodePtr = android.graphics.RenderNode
// native ptr (an android::uirenderer::RenderNode*, same libhwui).
jint nativeRenderInit(JNIEnv*, jclass, jlong rootNodePtr, jint w, jint h) {
    if (g_proxy) return 2;
    if (rootNodePtr == 0) { LOGI("null rootNode"); return 0; }
    Properties::isolatedProcess = true;
    int ow = 0, oh = 0;
    void* raw = westlake_ohos_make_display_window(w, h, &ow, &oh);
    if (!raw) { LOGI("make_display_window failed"); return 0; }
    g_window = reinterpret_cast<ANativeWindow*>(oh_anw_wrap(raw));
    if (!g_window) { LOGI("oh_anw_wrap failed"); return 0; }
    RenderNode* rootNode = reinterpret_cast<RenderNode*>(rootNodePtr);
    g_proxy = new RenderProxy(/*opaque=*/true, rootNode, &g_factory);
    g_proxy->loadSystemProperties();
    g_proxy->setName("westlake_app_view");
    g_proxy->setSurface(g_window);
    g_proxy->setLightAlpha(255 * 0.075, 255 * 0.15);
    g_proxy->setLightGeometry({(float)w / 2.0f, -200.0f, 800.0f}, 800.0f);
    LOGI("render init ok %dx%d rootNode=%p", w, h, rootNode);
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
}

void nativeTeardown(JNIEnv*, jclass) {
    if (g_proxy) { g_proxy->fence(); delete g_proxy; g_proxy = nullptr; }
    westlake_ohos_teardown();
    g_window = nullptr;
}

const JNINativeMethod kMethods[] = {
    {"nativeRenderInit", "(JII)I", reinterpret_cast<void*>(nativeRenderInit)},
    {"nativeDrawFrame", "()V", reinterpret_cast<void*>(nativeDrawFrame)},
    {"nativeTeardown", "()V", reinterpret_cast<void*>(nativeTeardown)},
};
}  // namespace

extern "C" JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM* vm, void*) {
    JNIEnv* env = nullptr;
    if (vm->GetEnv(reinterpret_cast<void**>(&env), JNI_VERSION_1_6) != JNI_OK) return -1;
    jclass cls = env->FindClass("Dayu600ApkStageProbe");
    if (cls == nullptr) { LOGI("FindClass Dayu600ApkStageProbe failed"); return -1; }
    if (env->RegisterNatives(cls, kMethods, 3) != JNI_OK) { LOGI("RegisterNatives failed"); return -1; }
    LOGI("JNI_OnLoad: 3 render natives registered");
    return JNI_VERSION_1_6;
}
