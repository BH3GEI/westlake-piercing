/*
 * Gate-2 harness — hwui side (drives OUR libhwui.so).
 *
 * Proves that hwui itself (its RenderThread / EglManager / CanvasContext /
 * SkiaOpenGLPipeline), not raw GLES, paints onto the DAYU600 panel.
 *
 * Flow (mirrors libs/hwui/tests/macrobench/TestSceneRunner.cpp, the canonical
 * minimal RenderProxy driver, and jni/android_graphics_HardwareRenderer.cpp's
 * ContextFactory):
 *   1. Get a display-attached OHNativeWindow from the OHOS side (proven setup,
 *      see ohos_display_surface.cpp).
 *   2. Build a root RenderNode and record a DisplayList into it with a hwui
 *      Canvas (drawColor + drawRect with an android::Paint).
 *   3. RenderProxy(opaque, rootNode, &contextFactory); setSurface(ANativeWindow*).
 *   4. syncAndDrawFrame() in a loop; fence().
 *
 * The OHNativeWindow* is passed to setSurface() cast to ANativeWindow*. hwui's
 * ReliableSurface stores it unchanged and EglManager hands that exact pointer to
 * eglCreateWindowSurface, which is what OHOS EGL requires. See the report for the
 * full ANativeWindow-path analysis.
 */
#include <cstdio>
#include <cstdlib>
#include <unistd.h>

#include <SkBlendMode.h>
#include <SkColor.h>

#include "AnimationContext.h"
#include "FrameInfo.h"
#include "IContextFactory.h"
#include "Properties.h"
#include "RenderNode.h"
#include "RenderProperties.h"
#include "Vector.h"
#include "hwui/Canvas.h"
#include "hwui/Paint.h"
#include "renderthread/RenderProxy.h"
#include "renderthread/TimeLord.h"
#include "Properties.h"

#include <utils/StrongPointer.h>
#include <utils/Timers.h>

using namespace android;
using namespace android::uirenderer;
using namespace android::uirenderer::renderthread;

// Provided by ohos_display_surface.cpp (OHOS include world, separate TU).
extern "C" void* westlake_ohos_make_display_window(int width, int height, int* out_w, int* out_h);
extern "C" void westlake_ohos_teardown();
// Provided by bridge-src/oh_anativewindow_shim.cpp: wrap the raw OHNativeWindow
// in an AOSP-ABI ANativeWindow so hwui's fixed-offset struct access works. The
// EGL interposer (egl_interposer.cpp) unwraps it before the real libEGL sees it.
extern "C" void* oh_anw_wrap(void* oh);

namespace {
const char* kTag = "[hwui-harness] ";

// Canonical minimal factory, identical to the one in
// jni/android_graphics_HardwareRenderer.cpp and TestSceneRunner.cpp.
class ContextFactory : public IContextFactory {
public:
    AnimationContext* createAnimationContext(TimeLord& clock) override {
        return new AnimationContext(clock);
    }
};
}  // namespace

int main(int argc, char** argv) {
    const int width = 1200;
    const int height = 1920;
    const int seconds = argc > 1 ? atoi(argv[1]) : 10;

    // OHOS has no AChoreographer; force RenderThread onto its DummyVsyncSource
    // path (RenderThread::initializeChoreographer) instead of crashing. Must be
    // set before the RenderThread is spun up by the first RenderProxy.
    Properties::isolatedProcess = true;

    printf("%screating display window %dx%d\n", kTag, width, height);
    int w = 0, h = 0;
    void* raw = westlake_ohos_make_display_window(width, height, &w, &h);
    if (!raw) {
        printf("%sfailed to obtain OHNativeWindow\n", kTag);
        return 1;
    }
    // Wrap the raw OHNativeWindow in the AOSP-ABI shim before handing to hwui.
    // hwui dereferences window->query/perform at fixed struct offsets; a raw
    // OHNativeWindow has a different layout and would crash (setBufferCount).
    ANativeWindow* window = reinterpret_cast<ANativeWindow*>(oh_anw_wrap(raw));
    if (!window) {
        printf("%soh_anw_wrap failed\n", kTag);
        return 1;
    }
    printf("%sOHNativeWindow=%p wrapped=%p (%dx%d) -> handing to hwui\n", kTag, raw,
           (void*)window, w, h);

    // --- Build the root RenderNode and record a DisplayList into it. ---
    sp<RenderNode> rootNode(new RenderNode());
    RenderProperties& props = rootNode->mutateStagingProperties();
    props.setLeftTopRightBottom(0, 0, width, height);
    props.setClipToBounds(false);
    {
        std::unique_ptr<Canvas> canvas(
                Canvas::create_recording_canvas(width, height, rootNode.get()));
        // Fill the whole node so we can unambiguously see hwui paint.
        canvas->drawColor(SkColorSetARGB(0xFF, 0x10, 0x80, 0x40), SkBlendMode::kSrcOver);
        // Diagnostic: WESTLAKE_DRAWCOLOR_ONLY=1 records ONLY the solid fill (no
        // drawRect), so the frame contains a single GPU rect-fill op that cannot
        // reach any path renderer — an atlas-independent "does hwui paint at all"
        // test. Default also draws a distinct rect via drawRect + Paint.
        if (getenv("WESTLAKE_DRAWCOLOR_ONLY") == nullptr) {
            Paint paint;
            paint.setColor(SkColorSetARGB(0xFF, 0xE0, 0x30, 0x30));
            paint.setAntiAlias(true);
            canvas->drawRect(width * 0.20f, height * 0.33f, width * 0.80f, height * 0.66f, paint);
        } else {
            printf("%sWESTLAKE_DRAWCOLOR_ONLY set: solid green fill only\n", kTag);
        }
        canvas->finishRecording(rootNode.get());
    }
    rootNode->setPropertyFieldsDirty(0xFFFFFFFF);
    printf("%sroot RenderNode display list recorded\n", kTag);

    // --- Stand up the RenderProxy on the OHNativeWindow. ---
    // Scoped so RenderProxy (and thus its EGLSurface bound to the window) is
    // fully destroyed before westlake_ohos_teardown() detaches/frees the window.
    // OHOS has no AChoreographer vsync source; take hwui's isolated-process
    // path so RenderThread uses DummyVsyncSource instead of AChoreographer_*.
    android::uirenderer::Properties::isolatedProcess = true;

    ContextFactory factory;
    {
        RenderProxy proxy(/*opaque=*/true, rootNode.get(), &factory);
        proxy.loadSystemProperties();
        proxy.setName("westlake_hwui_harness");
        printf("%sRenderProxy constructed, calling setSurface...\n", kTag);
        proxy.setSurface(window);
        proxy.setLightAlpha(255 * 0.075, 255 * 0.15);
        proxy.setLightGeometry({(float)width / 2.0f, -200.0f, 800.0f}, 800.0f);
        printf("%ssetSurface done, entering draw loop\n", kTag);

        const int frames = seconds * 10;
        for (int i = 0; i < frames; i++) {
            nsecs_t vsync = systemTime(SYSTEM_TIME_MONOTONIC);
            UiFrameInfoBuilder(proxy.frameInfo())
                    .setVsync(vsync, vsync, UiFrameInfoBuilder::INVALID_VSYNC_ID,
                              UiFrameInfoBuilder::UNKNOWN_DEADLINE,
                              UiFrameInfoBuilder::UNKNOWN_FRAME_INTERVAL);
            proxy.forceDrawNextFrame();
            proxy.syncAndDrawFrame();
            if (i == 0) {
                proxy.fence();
                printf("%sfirst frame drawn + fenced\n", kTag);
            }
            usleep(100 * 1000);
        }
        proxy.fence();
    }

    printf("%sdone, tearing down\n", kTag);
    westlake_ohos_teardown();
    return 0;
}
