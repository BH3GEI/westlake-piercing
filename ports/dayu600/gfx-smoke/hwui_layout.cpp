/* Westlake layout wireframe renderer — the custom-engine path that BYPASSES framework.jar.
 *
 * Prior art (docs/agent-memory/project_real_framework_jar_arch.md) proved a custom
 * AXML-inflate + layout + render engine renders real app UIs, sidestepping the
 * framework.jar Binder/ServiceManager dead-end. This is a minimal on-DAYU600 rebuild:
 *   v1 (this file): render a view-hierarchy node tree as nested rounded rects on the
 *       OHOS panel via the proven gate-2 hwui pipeline (RenderProxy -> RenderThread).
 *   v2 (next): feed the node tree from libandroidfw's real AXML parse of test.apk.
 *
 * Reuses hwui_2048's window/RenderProxy setup verbatim; only the draw fn changes.
 */
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <unistd.h>
#include <vector>

#include <SkBlendMode.h>
#include <SkColor.h>

#include "AnimationContext.h"
#include "FrameInfo.h"
#include "IContextFactory.h"
#include "Properties.h"
#include "RenderNode.h"
#include "RenderProperties.h"
#include "hwui/Canvas.h"
#include "hwui/Paint.h"
#include "renderthread/RenderProxy.h"
#include "renderthread/TimeLord.h"

#include <utils/StrongPointer.h>
#include <utils/Timers.h>

using namespace android;
using namespace android::uirenderer;
using namespace android::uirenderer::renderthread;

extern "C" void* westlake_ohos_make_display_window(int width, int height, int* out_w, int* out_h);
extern "C" void westlake_ohos_teardown();
extern "C" void* oh_anw_wrap(void* oh);

namespace {
const char* kTag = "[hwui-layout] ";

class ContextFactory : public IContextFactory {
public:
    AnimationContext* createAnimationContext(TimeLord& clock) override {
        return new AnimationContext(clock);
    }
};

static inline SkColor rgb(uint32_t v) {
    return (SkColor)(0xFF000000u | (v & 0x00FFFFFFu));
}

// A laid-out view node: bounds already computed (px), colored by depth/role.
struct Node {
    float x, y, w, h;
    int depth;
    uint32_t color;
    bool stroke;   // true = outline only (containers), false = filled (leaf widgets)
};

// Depth palette (dark UI).
static uint32_t depthColor(int d) {
    static const uint32_t pal[] = {0x1b2b34, 0x22333b, 0x2c3e46, 0x3a5561, 0x4a6b78};
    return pal[d < 5 ? d : 4];
}

// Build a representative com.uptodown store-app hierarchy, laid out in a WxH window.
// v1: hand-laid (proves the render side). v2 replaces this with a libandroidfw AXML walk.
static std::vector<Node> buildTree(int W, int H) {
    std::vector<Node> t;
    // root FrameLayout
    t.push_back({0, 0, (float)W, (float)H, 0, depthColor(0), false});
    // status bar strip
    t.push_back({0, 0, (float)W, 54, 1, 0x0d1418, false});
    // AppBarLayout / Toolbar
    float toolTop = 54, toolH = 150;
    t.push_back({0, toolTop, (float)W, toolH, 1, depthColor(1), false});
    t.push_back({40, toolTop + 45, 60, 60, 2, 0x6ab0c9, false});                 // nav icon
    t.push_back({130, toolTop + 55, 420, 42, 2, 0x9fb7c0, false});               // title text bar
    t.push_back({(float)W - 100, toolTop + 45, 60, 60, 2, 0x6ab0c9, false});     // search icon
    // content RecyclerView
    float listTop = toolTop + toolH + 20, listBottom = (float)H - 210;
    t.push_back({20, listTop, (float)W - 40, listBottom - listTop, 1, depthColor(1), true});
    // list item cards
    float cardH = 210, gap = 24, y = listTop + gap;
    int card = 0;
    while (y + cardH < listBottom && card < 6) {
        float cx = 40, cw = (float)W - 80;
        t.push_back({cx, y, cw, cardH, 2, depthColor(2), false});                // card
        t.push_back({cx + 24, y + 24, 162, 162, 3, 0x4e8ea8, false});            // app icon
        t.push_back({cx + 210, y + 32, 520, 40, 3, 0x9fb7c0, false});            // app name
        t.push_back({cx + 210, y + 92, 360, 30, 3, 0x6f8792, false});            // subtitle
        t.push_back({cw - 160, y + 66, 150, 70, 3, 0x3ea06a, false});            // install btn
        y += cardH + gap;
        card++;
    }
    // BottomNavigationView
    float navTop = (float)H - 190;
    t.push_back({0, navTop, (float)W, 190, 1, depthColor(1), false});
    for (int i = 0; i < 4; i++) {
        float tabW = (float)W / 4.0f, tx = i * tabW;
        uint32_t tint = (i == 0) ? 0xffffff : 0x74909b;   // first tab selected
        t.push_back({tx + tabW / 2 - 34, navTop + 40, 68, 68, 2, tint, false});  // tab icon
        t.push_back({tx + tabW / 2 - 60, navTop + 120, 120, 26, 2, tint, false}); // tab label
    }
    return t;
}

void renderLayout(Canvas* canvas, const std::vector<Node>& nodes, int width, int height) {
    canvas->drawColor(rgb(0x0d1418), SkBlendMode::kSrcOver);   // page bg
    for (const Node& n : nodes) {
        Paint p;
        p.setColor(rgb(n.color));
        p.setAntiAlias(true);
        float rad = 10.0f;
        if (n.stroke) {
            p.setStyle(Paint::kStroke_Style);
            p.setStrokeWidth(3.0f);
            canvas->drawRoundRect(n.x, n.y, n.x + n.w, n.y + n.h, rad, rad, p);
        } else {
            canvas->drawRoundRect(n.x, n.y, n.x + n.w, n.y + n.h, rad, rad, p);
            // hairline border so nested boxes read as a hierarchy
            Paint b;
            b.setColor(rgb(0x0d1418));
            b.setAntiAlias(true);
            b.setStyle(Paint::kStroke_Style);
            b.setStrokeWidth(2.0f);
            canvas->drawRoundRect(n.x, n.y, n.x + n.w, n.y + n.h, rad, rad, b);
        }
    }
}

}  // namespace

int main(int argc, char** argv) {
    const int width = 1200;
    const int height = 1920;
    const int seconds = argc > 1 ? atoi(argv[1]) : 30;

    Properties::isolatedProcess = true;

    printf("%screating display window %dx%d\n", kTag, width, height);
    int w = 0, h = 0;
    void* raw = westlake_ohos_make_display_window(width, height, &w, &h);
    if (!raw) { printf("%sfailed to obtain OHNativeWindow\n", kTag); return 1; }
    ANativeWindow* window = reinterpret_cast<ANativeWindow*>(oh_anw_wrap(raw));
    if (!window) { printf("%soh_anw_wrap failed\n", kTag); return 1; }
    printf("%sOHNativeWindow=%p wrapped=%p (%dx%d)\n", kTag, raw, (void*)window, w, h);

    std::vector<Node> tree = buildTree(width, height);
    printf("%sbuilt layout tree: %zu nodes\n", kTag, tree.size());

    sp<RenderNode> rootNode(new RenderNode());
    RenderProperties& props = rootNode->mutateStagingProperties();
    props.setLeftTopRightBottom(0, 0, width, height);
    props.setClipToBounds(false);
    rootNode->setPropertyFieldsDirty(0xFFFFFFFF);

    {
        std::unique_ptr<Canvas> canvas(
                Canvas::create_recording_canvas(width, height, rootNode.get()));
        renderLayout(canvas.get(), tree, width, height);
        canvas->finishRecording(rootNode.get());
    }
    printf("%sinitial layout recorded\n", kTag);

    android::uirenderer::Properties::isolatedProcess = true;
    ContextFactory factory;
    {
        RenderProxy proxy(/*opaque=*/true, rootNode.get(), &factory);
        proxy.loadSystemProperties();
        proxy.setName("westlake_hwui_layout");
        proxy.setSurface(window);
        proxy.setLightAlpha(255 * 0.075, 255 * 0.15);
        proxy.setLightGeometry({(float)width / 2.0f, -200.0f, 800.0f}, 800.0f);
        printf("%ssetSurface done, holding layout on panel\n", kTag);

        const int fps = 10;
        const int frames = seconds * fps;
        for (int i = 0; i < frames; i++) {
            nsecs_t vsync = systemTime(SYSTEM_TIME_MONOTONIC);
            UiFrameInfoBuilder(proxy.frameInfo())
                    .setVsync(vsync, vsync, UiFrameInfoBuilder::INVALID_VSYNC_ID,
                              UiFrameInfoBuilder::UNKNOWN_DEADLINE,
                              UiFrameInfoBuilder::UNKNOWN_FRAME_INTERVAL);
            {
                std::unique_ptr<Canvas> canvas(
                        Canvas::create_recording_canvas(width, height, rootNode.get()));
                renderLayout(canvas.get(), tree, width, height);
                canvas->finishRecording(rootNode.get());
            }
            proxy.forceDrawNextFrame();
            proxy.syncAndDrawFrame();
            if (i == 0) { proxy.fence(); printf("%sfirst frame drawn + fenced\n", kTag); }
            usleep(100 * 1000);
        }
        proxy.fence();
    }

    printf("%sdone, tearing down\n", kTag);
    westlake_ohos_teardown();
    return 0;
}
