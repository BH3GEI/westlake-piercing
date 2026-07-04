/*
 * Gate-2 harness — OHOS side.
 *
 * Reuses the *exact* working setup proven by westlake_rs_smoke.cpp:
 *   RSSurfaceNode (attached straight to the display, bootanimation-style)
 *     -> GetSurface() -> OHNativeWindow (buffer geometry + format set)
 * and hands the raw OHNativeWindow* back to the hwui-driving TU so hwui's own
 * EglManager can eglCreateWindowSurface on it.
 *
 * This TU is compiled with the render-service-client include set / C++17 /
 * RTTI+exceptions (the RS headers need them); the hwui TU is compiled with the
 * hwui include set. They meet only through the small C ABI below, so the two
 * incompatible header worlds never share a translation unit.
 */
#include <cstdio>
#include <cstdlib>

#include "transaction/rs_interfaces.h"
#include "transaction/rs_transaction.h"
#include "ui/rs_surface_node.h"

#include <window.h>  // OH native window C API (external_window.h family)

using namespace OHOS;
using namespace OHOS::Rosen;

namespace {
const char* kTag = "[hwui-harness/ohos] ";
// Keep the node + surface alive for the whole process; RenderProxy holds the
// OHNativeWindow and the producer must outlive it.
std::shared_ptr<RSSurfaceNode> g_surfaceNode;
sptr<Surface> g_surface;
OHNativeWindow* g_nativeWindow = nullptr;
}  // namespace

extern "C" {

// Create a display-attached RSSurfaceNode, return its OHNativeWindow as void*.
// out_w/out_h receive the buffer geometry that was set (== width/height).
// Returns nullptr on failure.
void* westlake_ohos_make_display_window(int width, int height, int* out_w, int* out_h) {
    RSSurfaceNodeConfig config;
    config.SurfaceNodeName = "westlake_hwui_harness";
    g_surfaceNode = RSSurfaceNode::Create(config);
    if (!g_surfaceNode) {
        printf("%sRSSurfaceNode::Create failed\n", kTag);
        return nullptr;
    }
    printf("%sRSSurfaceNode created id=%llu\n", kTag,
           (unsigned long long)g_surfaceNode->GetId());

    g_surfaceNode->SetBounds(0, 0, width, height);
    // Deep-blue RS background so an empty producer buffer is visibly distinct from
    // hwui's green frame. Set WESTLAKE_NO_BG=1 to drop it (diagnostic: if hwui
    // content then appears, the background had been composited over the buffer;
    // if the screen goes blank, the producer buffer is genuinely empty).
    if (getenv("WESTLAKE_NO_BG") == nullptr) {
        g_surfaceNode->SetBackgroundColor(0xff202080);
    } else {
        printf("%sWESTLAKE_NO_BG set: skipping SetBackgroundColor\n", kTag);
    }
    // raise above SceneBoard so the frame is not composited under the system UI
    g_surfaceNode->SetPositionZ(100000000.0f);
    g_surfaceNode->AttachToDisplay(0);  // screenId 0 = primary display
    RSTransaction::FlushImplicitTransaction();
    printf("%sattached to display, background flushed\n", kTag);

    g_surface = g_surfaceNode->GetSurface();
    if (!g_surface) {
        printf("%sGetSurface failed\n", kTag);
        return nullptr;
    }

    g_nativeWindow = CreateNativeWindowFromSurface(&g_surface);
    if (!g_nativeWindow) {
        printf("%sCreateNativeWindowFromSurface failed\n", kTag);
        return nullptr;
    }
    printf("%sOHNativeWindow=%p\n", kTag, (void*)g_nativeWindow);

    // SetBounds does not propagate to the producer's buffer geometry, so the
    // native window starts at 0x0. Set width/height + pixel format explicitly
    // (RGBA_8888 == 12) exactly as the raw-GLES smoke does.
    NativeWindowHandleOpt(g_nativeWindow, SET_BUFFER_GEOMETRY, width, height);
    NativeWindowHandleOpt(g_nativeWindow, SET_FORMAT, /*PIXEL_FMT_RGBA_8888=*/12);

    if (out_w) *out_w = width;
    if (out_h) *out_h = height;
    return (void*)g_nativeWindow;
}

void westlake_ohos_teardown() {
    if (g_surfaceNode) {
        g_surfaceNode->DetachToDisplay(0);
        RSTransaction::FlushImplicitTransaction();
    }
    g_nativeWindow = nullptr;
    g_surface = nullptr;
    g_surfaceNode = nullptr;
}

}  // extern "C"
