/*
 * upscreen_smoke_launcher — faithfully mirrors Agent-B's integration scenario for risk R1:
 * dlopen the renderer .so (RTLD_GLOBAL) into a process, then let hwui (pulled in as the .so's
 * dependency) run its EGL/skia calls, and see whether the egl_interposer/skia_interposer
 * compiled INTO the .so preempt the real libEGL/libskia. If the panel paints, the in-.so
 * interposer approach works when dlopen'd => R1 is a non-issue for B with RTLD_GLOBAL.
 * Zero ART — the .so's plain-C westlake_upscreen_color_smoke builds+renders a color RenderNode.
 */
#include <dlfcn.h>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char** argv) {
    const char* so = argc > 1 ? argv[1] : "./libwestlake_upscreen_renderer.so";
    int w = argc > 2 ? atoi(argv[2]) : 1200;
    int h = argc > 3 ? atoi(argv[3]) : 1920;
    unsigned argb = argc > 4 ? (unsigned)strtoul(argv[4], NULL, 16) : 0xFF3366CCu;
    int secs = argc > 5 ? atoi(argv[5]) : 20;

    /* Faithful ART mirror: if WL_DLOPEN_FIRST is set, dlopen it (like graphics registration
     * dlopen'ing libhwui) BEFORE the renderer, mid-main (NOT via LD_PRELOAD, which would run
     * libhwui's constructors pre-main and hang). Then load the renderer after — testing that a
     * self-binding adapter libhwui still interposes when it was resident before the renderer. */
    const char* first = getenv("WL_DLOPEN_FIRST");
    if (first && first[0]) {
        void* fh = dlopen(first, RTLD_NOW | RTLD_GLOBAL);
        if (!fh) { fprintf(stderr, "[launcher] WL_DLOPEN_FIRST dlopen failed: %s\n", dlerror()); return 4; }
        printf("[launcher] pre-dlopen'd %s (mirrors ART registration loading libhwui first)\n", first);
        fflush(stdout);
    }

    void* hdl = dlopen(so, RTLD_NOW | RTLD_GLOBAL);
    if (!hdl) { fprintf(stderr, "[launcher] dlopen failed: %s\n", dlerror()); return 2; }

    typedef int (*smoke_fn)(int, int, unsigned, int);
    smoke_fn smoke = (smoke_fn)dlsym(hdl, "westlake_upscreen_color_smoke");
    if (!smoke) { fprintf(stderr, "[launcher] dlsym failed: %s\n", dlerror()); return 3; }

    printf("[launcher] dlopen+dlsym OK, calling smoke %dx%d argb=%08x %ds\n", w, h, argb, secs);
    fflush(stdout);
    int r = smoke(w, h, argb, secs);
    printf("[launcher] smoke returned %d\n", r);
    return r;
}
