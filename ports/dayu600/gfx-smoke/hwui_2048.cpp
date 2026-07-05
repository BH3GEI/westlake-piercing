/*
 * hwui_2048 — a playable 2048 game rendered by OUR libhwui.so on the DAYU600
 * panel. Milestone binary: a real game visibly running + updating on-screen via
 * the proven gate-2 hwui pipeline (RenderProxy -> RenderThread -> CanvasContext
 * -> SkiaOpenGLPipeline -> Mali-G57 -> OHNativeWindow -> RenderService -> panel).
 *
 * The ENTIRE hwui/EGL/surface setup is copied verbatim from
 * hwui_render_harness.cpp (see that file for the wall-by-wall analysis). The
 * ONLY difference: instead of recording a static green+red DisplayList once, we
 * re-record the RenderNode's staging DisplayList from live game state EVERY
 * frame, and step the game on a timer.
 *
 * Text without minikin: minikin is stubbed in our libhwui, so canvas->drawText
 * cannot render glyphs. Numbers are drawn with a 3x5 filled-rect pixel font —
 * every lit pixel of a digit is a drawRect scaled into the tile. This sidesteps
 * the text/font stack entirely.
 *
 * Modes:
 *   default                : autoplay. Every ~500ms pick the first direction
 *                            that changes the board, apply, spawn, re-render.
 *                            Proves the game runs + updates on-panel with no
 *                            input wired. Loops for N seconds (argv[1], def 60).
 *   WESTLAKE_2048_INPUT=1  : read moves from stdin lines (u/d/l/r) or the
 *                            control file /data/local/tmp/noice_tap (single
 *                            char u/d/l/r) — a stub for real touch input.
 */
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <fcntl.h>
#include <poll.h>
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

// From ohos_display_surface.cpp (OHOS include world, separate TU).
extern "C" void* westlake_ohos_make_display_window(int width, int height, int* out_w, int* out_h);
extern "C" void westlake_ohos_teardown();
// From bridge-src/oh_anativewindow_shim.cpp.
extern "C" void* oh_anw_wrap(void* oh);

namespace {
const char* kTag = "[hwui-2048] ";

class ContextFactory : public IContextFactory {
public:
    AnimationContext* createAnimationContext(TimeLord& clock) override {
        return new AnimationContext(clock);
    }
};

// ---------------------------------------------------------------------------
// Game model — self-contained 4x4 2048. ~80 lines.
// ---------------------------------------------------------------------------
struct Game {
    int board[4][4] = {{0}};
    uint32_t rng;          // LCG state, seeded fixed + move counter
    int moves = 0;
    int score = 0;

    explicit Game(uint32_t seed) : rng(seed) {}

    uint32_t next() {                          // LCG (Numerical Recipes)
        rng = rng * 1664525u + 1013904223u;
        return rng >> 16;
    }

    void reseed() { rng = 0xC0FFEEu + 2654435761u * (uint32_t)moves; }

    void spawn() {
        int empties[16], n = 0;
        for (int r = 0; r < 4; r++)
            for (int c = 0; c < 4; c++)
                if (board[r][c] == 0) empties[n++] = r * 4 + c;
        if (n == 0) return;
        int cell = empties[next() % n];
        board[cell / 4][cell % 4] = (next() % 10 == 0) ? 4 : 2;
    }

    // Traversal mapping: pos 0 is the destination edge for the given direction.
    // dir: 0=up 1=down 2=left 3=right.
    int& at(int line, int pos, int dir) {
        switch (dir) {
            case 0: return board[pos][line];       // up:    col=line, row=pos
            case 1: return board[3 - pos][line];   // down
            case 2: return board[line][pos];       // left:  row=line, col=pos
            default: return board[line][3 - pos];  // right
        }
    }

    bool move(int dir) {
        bool changed = false;
        for (int line = 0; line < 4; line++) {
            int v[4], n = 0;
            for (int p = 0; p < 4; p++)              // compact non-zero
                if (int x = at(line, p, dir)) v[n++] = x;
            int out[4] = {0, 0, 0, 0}, m = 0;
            for (int i = 0; i < n; i++) {            // merge equal neighbours
                if (i + 1 < n && v[i] == v[i + 1]) {
                    out[m++] = v[i] * 2;
                    score += v[i] * 2;
                    i++;
                } else {
                    out[m++] = v[i];
                }
            }
            for (int p = 0; p < 4; p++) {            // write back
                int& cell = at(line, p, dir);
                if (cell != out[p]) changed = true;
                cell = out[p];
            }
        }
        if (changed) moves++;
        return changed;
    }

    bool hasMoves() {
        for (int r = 0; r < 4; r++)
            for (int c = 0; c < 4; c++) {
                if (board[r][c] == 0) return true;
                if (c < 3 && board[r][c] == board[r][c + 1]) return true;
                if (r < 3 && board[r][c] == board[r + 1][c]) return true;
            }
        return false;
    }
};

// ---------------------------------------------------------------------------
// 3x5 pixel font for digits 0-9. Each row's low 3 bits are columns L->R.
// ---------------------------------------------------------------------------
const uint8_t kDigits[10][5] = {
    {0b111, 0b101, 0b101, 0b101, 0b111},  // 0
    {0b010, 0b110, 0b010, 0b010, 0b111},  // 1
    {0b111, 0b001, 0b111, 0b100, 0b111},  // 2
    {0b111, 0b001, 0b111, 0b001, 0b111},  // 3
    {0b101, 0b101, 0b111, 0b001, 0b001},  // 4
    {0b111, 0b100, 0b111, 0b001, 0b111},  // 5
    {0b111, 0b100, 0b111, 0b101, 0b111},  // 6
    {0b111, 0b001, 0b010, 0b010, 0b010},  // 7
    {0b111, 0b101, 0b111, 0b101, 0b111},  // 8
    {0b111, 0b101, 0b111, 0b001, 0b111},  // 9
};

inline SkColor rgb(uint32_t hex) {
    return SkColorSetARGB(0xFF, (hex >> 16) & 0xFF, (hex >> 8) & 0xFF, hex & 0xFF);
}

// Classic 2048 tile colors by value.
SkColor tileColor(int v) {
    switch (v) {
        case 0:    return rgb(0xcdc1b4);
        case 2:    return rgb(0xeee4da);
        case 4:    return rgb(0xede0c8);
        case 8:    return rgb(0xf2b179);
        case 16:   return rgb(0xf59563);
        case 32:   return rgb(0xf67c5f);
        case 64:   return rgb(0xf65e3b);
        case 128:  return rgb(0xedcf72);
        case 256:  return rgb(0xedcc61);
        case 512:  return rgb(0xedc850);
        case 1024: return rgb(0xedc53f);
        case 2048: return rgb(0xedc22e);
        default:   return rgb(0x3c3a32);  // >2048 dark warm
    }
}
// Ink: dark for 2/4, light otherwise.
SkColor inkColor(int v) { return (v <= 4) ? rgb(0x776e65) : rgb(0xf9f6f2); }

// Draw one lit-pixel run as a filled rect. digit occupies [x,y] with pixel size
// pxW/pxH; gap leaves a hairline between font pixels so digits read crisply.
void drawDigit(Canvas* canvas, int d, float x, float y, float px, const Paint& paint) {
    const float gap = px * 0.12f;
    for (int row = 0; row < 5; row++) {
        for (int col = 0; col < 3; col++) {
            if (kDigits[d][row] & (1 << (2 - col))) {
                float l = x + col * px;
                float t = y + row * px;
                canvas->drawRect(l, t, l + px - gap, t + px - gap, paint);
            }
        }
    }
}

// Draw an integer centered in the tile rect using the pixel font.
void drawNumber(Canvas* canvas, int value, float cx, float cy, float cellW, float cellH) {
    char buf[16];
    int len = snprintf(buf, sizeof(buf), "%d", value);
    if (len <= 0) return;
    // font pixel size: fit len digits (3 cols each + 1 col spacing between).
    float glyphCols = len * 3 + (len - 1) * 1.0f;  // in font-pixel units
    float px = cellW * 0.62f / glyphCols;
    float pxByH = cellH * 0.52f / 5.0f;
    if (pxByH < px) px = pxByH;
    float totalW = glyphCols * px;
    float totalH = 5 * px;
    float x0 = cx - totalW / 2.0f;
    float y0 = cy - totalH / 2.0f;

    Paint ink;
    ink.setColor(inkColor(value));
    ink.setAntiAlias(false);  // crisp pixel edges

    float x = x0;
    for (int i = 0; i < len; i++) {
        drawDigit(canvas, buf[i] - '0', x, y0, px, ink);
        x += 4 * px;  // 3 cols + 1 col spacing
    }
}

// ---------------------------------------------------------------------------
// Render the whole board into the recording canvas from game state.
// ---------------------------------------------------------------------------
void renderBoard(Canvas* canvas, const Game& g, int width, int height) {
    // Background (2048 page bg).
    canvas->drawColor(rgb(0xfaf8ef), SkBlendMode::kSrcOver);

    // Square board panel, centered.
    float panel = (float)(width < height ? width : height) * 0.92f;
    float px0 = (width - panel) / 2.0f;
    float py0 = (height - panel) / 2.0f;
    Paint panelPaint;
    panelPaint.setColor(rgb(0xbbada0));
    panelPaint.setAntiAlias(true);
    float radius = panel * 0.03f;
    canvas->drawRoundRect(px0, py0, px0 + panel, py0 + panel, radius, radius, panelPaint);

    // 16 cells.
    float pad = panel * 0.028f;
    float cell = (panel - pad * 5.0f) / 4.0f;
    float cellRad = cell * 0.06f;
    for (int r = 0; r < 4; r++) {
        for (int c = 0; c < 4; c++) {
            int v = g.board[r][c];
            float l = px0 + pad + c * (cell + pad);
            float t = py0 + pad + r * (cell + pad);
            Paint cp;
            cp.setColor(tileColor(v));
            cp.setAntiAlias(true);
            canvas->drawRoundRect(l, t, l + cell, t + cell, cellRad, cellRad, cp);
            if (v != 0) {
                drawNumber(canvas, v, l + cell / 2.0f, t + cell / 2.0f, cell, cell);
            }
        }
    }

    // Score strip above the board: draw the score as pixel digits on a dark tab.
    float sw = panel * 0.34f, sh = panel * 0.09f;
    float sx = px0 + panel - sw, sy = py0 - sh - panel * 0.02f;
    if (sy > 0) {
        Paint sp;
        sp.setColor(rgb(0xbbada0));
        sp.setAntiAlias(true);
        canvas->drawRoundRect(sx, sy, sx + sw, sy + sh, sh * 0.15f, sh * 0.15f, sp);
        drawNumber(canvas, g.score, sx + sw / 2.0f, sy + sh / 2.0f, sw, sh);
    }
}

// ---------------------------------------------------------------------------
// Input stub: poll stdin (non-blocking) + control file for u/d/l/r.
// Returns -1 if no input, else dir 0=up 1=down 2=left 3=right.
// ---------------------------------------------------------------------------
int charToDir(char ch) {
    switch (ch) {
        case 'u': case 'U': case 'w': return 0;
        case 'd': case 'D': case 's': return 1;
        case 'l': case 'L': case 'a': return 2;
        case 'r': case 'R': return 3;
        default: return -1;
    }
}

int pollInput() {
    // stdin (non-blocking).
    struct pollfd pfd = {0, POLLIN, 0};
    if (poll(&pfd, 1, 0) > 0 && (pfd.revents & POLLIN)) {
        char ch = 0;
        if (read(0, &ch, 1) == 1) {
            int d = charToDir(ch);
            if (d >= 0) return d;
        }
    }
    // control file (single char, consumed by truncation).
    const char* path = "/data/local/tmp/noice_tap";
    int fd = open(path, O_RDWR);
    if (fd >= 0) {
        char ch = 0;
        ssize_t n = read(fd, &ch, 1);
        if (n == 1) {
            (void)!ftruncate(fd, 0);
            close(fd);
            int d = charToDir(ch);
            if (d >= 0) return d;
        }
        close(fd);
    }
    return -1;
}

}  // namespace

int main(int argc, char** argv) {
    const int width = 1200;
    const int height = 1920;
    const int seconds = argc > 1 ? atoi(argv[1]) : 60;
    const bool inputMode = getenv("WESTLAKE_2048_INPUT") != nullptr;

    // OHOS has no AChoreographer; take the isolated-process DummyVsyncSource path.
    Properties::isolatedProcess = true;

    printf("%screating display window %dx%d (mode=%s)\n", kTag, width, height,
           inputMode ? "input" : "autoplay");
    int w = 0, h = 0;
    void* raw = westlake_ohos_make_display_window(width, height, &w, &h);
    if (!raw) {
        printf("%sfailed to obtain OHNativeWindow\n", kTag);
        return 1;
    }
    ANativeWindow* window = reinterpret_cast<ANativeWindow*>(oh_anw_wrap(raw));
    if (!window) {
        printf("%soh_anw_wrap failed\n", kTag);
        return 1;
    }
    printf("%sOHNativeWindow=%p wrapped=%p (%dx%d)\n", kTag, raw, (void*)window, w, h);

    // --- Game init. ---
    Game game(0xC0FFEEu);
    game.spawn();
    game.spawn();

    // --- Root RenderNode. Properties set once; DisplayList re-recorded/frame. ---
    sp<RenderNode> rootNode(new RenderNode());
    RenderProperties& props = rootNode->mutateStagingProperties();
    props.setLeftTopRightBottom(0, 0, width, height);
    props.setClipToBounds(false);
    rootNode->setPropertyFieldsDirty(0xFFFFFFFF);

    // Record the first frame so the node is valid before setSurface.
    {
        std::unique_ptr<Canvas> canvas(
                Canvas::create_recording_canvas(width, height, rootNode.get()));
        renderBoard(canvas.get(), game, width, height);
        canvas->finishRecording(rootNode.get());
    }
    printf("%sinitial board recorded\n", kTag);

    android::uirenderer::Properties::isolatedProcess = true;
    ContextFactory factory;
    {
        RenderProxy proxy(/*opaque=*/true, rootNode.get(), &factory);
        proxy.loadSystemProperties();
        proxy.setName("westlake_hwui_2048");
        proxy.setSurface(window);
        proxy.setLightAlpha(255 * 0.075, 255 * 0.15);
        proxy.setLightGeometry({(float)width / 2.0f, -200.0f, 800.0f}, 800.0f);
        printf("%ssetSurface done, entering game loop\n", kTag);

        const int fps = 10;                 // 100ms/frame, matches harness
        const int frames = seconds * fps;
        const int stepEveryFrames = 5;      // autoplay: a move every ~500ms
        // Rotating direction preference keeps autoplay lively.
        const int order[4] = {2, 0, 3, 1};  // left, up, right, down
        int spin = 0;

        for (int i = 0; i < frames; i++) {
            nsecs_t vsync = systemTime(SYSTEM_TIME_MONOTONIC);
            UiFrameInfoBuilder(proxy.frameInfo())
                    .setVsync(vsync, vsync, UiFrameInfoBuilder::INVALID_VSYNC_ID,
                              UiFrameInfoBuilder::UNKNOWN_DEADLINE,
                              UiFrameInfoBuilder::UNKNOWN_FRAME_INTERVAL);

            // --- Step the game. ---
            bool stepped = false;
            if (inputMode) {
                int d = pollInput();
                if (d >= 0 && game.move(d)) {
                    game.reseed();
                    game.spawn();
                    stepped = true;
                }
            } else if (i % stepEveryFrames == 0) {
                for (int k = 0; k < 4; k++) {
                    int d = order[(spin + k) % 4];
                    if (game.move(d)) {
                        game.reseed();
                        game.spawn();
                        stepped = true;
                        spin = (spin + 1) % 4;
                        break;
                    }
                }
                if (!game.hasMoves()) {
                    printf("%sboard full, no moves — resetting\n", kTag);
                    memset(game.board, 0, sizeof(game.board));
                    game.score = 0;
                    game.spawn();
                    game.spawn();
                    stepped = true;
                }
            }

            // --- Re-record the DisplayList from live game state EVERY frame. ---
            {
                std::unique_ptr<Canvas> canvas(
                        Canvas::create_recording_canvas(width, height, rootNode.get()));
                renderBoard(canvas.get(), game, width, height);
                canvas->finishRecording(rootNode.get());
            }
            (void)stepped;

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
