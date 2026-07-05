/* Westlake layout renderer — the custom-engine path that BYPASSES framework.jar.
 *
 * v2: reads a node tree parsed at runtime from test.apk by libandroidfw (dump_layout ->
 * /data/local/tmp/hwui/tree.txt, lines "depth|tag|wspec|hspec"), lays it out (naive nested
 * vertical stack), and renders each node as a typed rect via the gate-2 hwui pipeline
 * (RenderProxy -> RenderThread -> OHOS Surface). No Java / framework.jar / Binder / ActivityThread.
 * Falls back to a built-in demo tree if the file is absent.
 */
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>
#include <vector>
#include <unistd.h>

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

static inline SkColor rgb(uint32_t v) { return (SkColor)(0xFF000000u | (v & 0x00FFFFFFu)); }

struct TNode {
    int depth;
    std::string tag;
    int parent = -1;
    std::vector<int> kids;
    float x = 0, y = 0, w = 0, h = 0;
};

// Read "depth|tag|w|h" lines into a flat node list, then link parents by depth.
static std::vector<TNode> readTree(const char* path) {
    std::vector<TNode> ns;
    FILE* f = fopen(path, "r");
    if (!f) return ns;
    char line[512];
    while (fgets(line, sizeof(line), f)) {
        int d = -1; char tag[256] = {0}; int w = 0, h = 0;
        if (sscanf(line, "%d|%255[^|]|%d|%d", &d, tag, &w, &h) >= 2 && d >= 0) {
            TNode n; n.depth = d; n.tag = tag; ns.push_back(n);
        }
    }
    fclose(f);
    // link parents: nearest previous node with depth-1
    std::vector<int> stack;
    for (size_t i = 0; i < ns.size(); i++) {
        while (!stack.empty() && ns[stack.back()].depth >= ns[i].depth) stack.pop_back();
        if (!stack.empty()) { ns[i].parent = stack.back(); ns[stack.back()].kids.push_back((int)i); }
        stack.push_back((int)i);
    }
    return ns;
}

// Naive layout: each container splits its inner box among children as a vertical stack.
static void layoutNode(std::vector<TNode>& ns, int i, float x, float y, float w, float h, float pad) {
    ns[i].x = x; ns[i].y = y; ns[i].w = w; ns[i].h = h;
    auto& kids = ns[i].kids;
    if (kids.empty()) return;
    float ix = x + pad, iy = y + pad, iw = w - 2 * pad, ih = h - 2 * pad;
    if (iw < 8 || ih < 8) return;
    float each = ih / (float)kids.size();
    float cy = iy;
    float cpad = pad * 0.65f; if (cpad < 3) cpad = 3;
    for (int k : kids) { layoutNode(ns, k, ix, cy, iw, each - cpad * 0.5f, cpad); cy += each; }
}

// Color/style by widget role.
static bool isLeaf(const std::string& t) {
    return t == "TextView" || t == "ImageView" || t == "ProgressBar" || t == "View" ||
           t == "Button" || t == "Space" || t == "ImageButton";
}
static uint32_t nodeColor(const std::string& t, int depth) {
    if (t == "ImageView" || t == "ImageButton") return 0x4e8ea8;      // image = blue
    if (t == "TextView") return 0x9fb7c0;                             // text = light grey
    if (t == "ProgressBar") return 0x3ea06a;                          // progress = green
    if (t == "Button") return 0x3ea06a;
    static const uint32_t pal[] = {0x1b2b34, 0x22333b, 0x2c3e46, 0x37505b, 0x466570, 0x557784};
    return pal[depth < 6 ? depth : 5];
}

void renderTree(Canvas* canvas, const std::vector<TNode>& ns, int width, int height) {
    canvas->drawColor(rgb(0x0d1418), SkBlendMode::kSrcOver);
    for (const TNode& n : ns) {
        if (n.w < 2 || n.h < 2) continue;
        bool leaf = isLeaf(n.tag);
        Paint p; p.setColor(rgb(nodeColor(n.tag, n.depth))); p.setAntiAlias(true);
        float rad = 8.0f;
        if (leaf) {
            canvas->drawRoundRect(n.x, n.y, n.x + n.w, n.y + n.h, rad, rad, p);
        } else {
            p.setStyle(Paint::kStroke_Style); p.setStrokeWidth(2.5f);
            canvas->drawRoundRect(n.x, n.y, n.x + n.w, n.y + n.h, rad, rad, p);
        }
    }
}

}  // namespace

int main(int argc, char** argv) {
    const int width = 1200, height = 1920;
    const int seconds = argc > 1 ? atoi(argv[1]) : 30;
    const char* treePath = argc > 2 ? argv[2] : "/data/local/tmp/hwui/tree.txt";

    Properties::isolatedProcess = true;
    printf("%screating display window %dx%d, tree=%s\n", kTag, width, height, treePath);

    std::vector<TNode> tree = readTree(treePath);
    if (tree.empty()) { printf("%sNO TREE at %s — nothing to render\n", kTag, treePath); return 2; }
    // layout inside a content area (leave a top status margin).
    layoutNode(tree, 0, 20, 60, (float)width - 40, (float)height - 120, 18);
    printf("%sparsed+laid-out %zu nodes from test.apk layout\n", kTag, tree.size());

    int w = 0, h = 0;
    void* raw = westlake_ohos_make_display_window(width, height, &w, &h);
    if (!raw) { printf("%sno OHNativeWindow\n", kTag); return 1; }
    ANativeWindow* window = reinterpret_cast<ANativeWindow*>(oh_anw_wrap(raw));
    if (!window) { printf("%soh_anw_wrap failed\n", kTag); return 1; }

    sp<RenderNode> rootNode(new RenderNode());
    RenderProperties& props = rootNode->mutateStagingProperties();
    props.setLeftTopRightBottom(0, 0, width, height);
    props.setClipToBounds(false);
    rootNode->setPropertyFieldsDirty(0xFFFFFFFF);
    {
        std::unique_ptr<Canvas> canvas(Canvas::create_recording_canvas(width, height, rootNode.get()));
        renderTree(canvas.get(), tree, width, height);
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
        printf("%ssetSurface done, holding test.apk layout on panel\n", kTag);
        const int frames = seconds * 10;
        for (int i = 0; i < frames; i++) {
            nsecs_t vsync = systemTime(SYSTEM_TIME_MONOTONIC);
            UiFrameInfoBuilder(proxy.frameInfo())
                    .setVsync(vsync, vsync, UiFrameInfoBuilder::INVALID_VSYNC_ID,
                              UiFrameInfoBuilder::UNKNOWN_DEADLINE, UiFrameInfoBuilder::UNKNOWN_FRAME_INTERVAL);
            {
                std::unique_ptr<Canvas> canvas(Canvas::create_recording_canvas(width, height, rootNode.get()));
                renderTree(canvas.get(), tree, width, height);
                canvas->finishRecording(rootNode.get());
            }
            proxy.forceDrawNextFrame();
            proxy.syncAndDrawFrame();
            if (i == 0) { proxy.fence(); printf("%sfirst frame drawn + fenced\n", kTag); }
            usleep(100 * 1000);
        }
        proxy.fence();
    }
    printf("%sdone\n", kTag);
    westlake_ohos_teardown();
    return 0;
}
