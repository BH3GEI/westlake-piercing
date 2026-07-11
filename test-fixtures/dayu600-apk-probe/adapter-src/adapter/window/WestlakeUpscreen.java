package adapter.window;

import android.graphics.RecordingCanvas;
import android.graphics.RenderNode;
import android.view.View;

/**
 * Agent-C 上屏 host — strategy B (BYPASS ViewRootImpl), render-only slice.
 *
 * Paints a laid-out View tree (e.g. the color-apk's ColorView, or a pure-color decor)
 * to the DAYU600 panel through libwestlake_upscreen_renderer.so, which drives OUR
 * libhwui.so RenderProxy -> OHOS RSSurfaceNode(display 0) -> panel. Proven gate-2 pipe.
 *
 * WHY strategy B (source-grounded, android-15.0.0_r9):
 *   - The real ViewRootImpl path needs a native SurfaceControl + BLASTBufferQueue that
 *     do NOT exist on the headless OHOS board -> strategy A is a dead end here.
 *   - record() draws the View with a NULL AttachInfo, so View.draw/ViewGroup.dispatchDraw
 *     take the SOFTWARE child-draw branch -> ONE flat display list on the RecordingCanvas,
 *     exactly what our RenderProxy consumes. No Choreographer / IWindowSession / WMG.
 *
 * NOTE (loader): the .so must be loaded RTLD_GLOBAL / early so its egl_interposer +
 * skia_interposer win global-scope PLT resolution over libEGL/libskia inside the ART
 * process (risk R1). System.loadLibrary uses RTLD_LOCAL; the native launcher dlopens
 * the .so RTLD_GLOBAL before first frame (or the adapter libhwui self-binds).
 *
 * This is the RENDER-ONLY slice used by the #53 color-liveness path. The archived
 * scratchpad copy (scratchpad-shared/upscreen-render) additionally carries Agent-D's
 * input-dispatch machinery + a setBackgroundColor pureColorView; both are deliberately
 * excluded here — input is a generalization-phase concern and setBackgroundColor is a
 * rejected provenance path (the color must come from the app's Canvas.drawColor).
 */
public final class WestlakeUpscreen {
    static { System.loadLibrary("westlake_upscreen_renderer"); }

    // Registered by JNI_OnLoad in libwestlake_upscreen_renderer.so on THIS class.
    static native long nativeRenderNodePtr(RenderNode node); // reads RenderNode.mNativeRenderNode (native, no hidden-API check)
    static native int  nativeInit(long rootNodePtr, int w, int h);
    static native void nativeDrawFrame();
    static native void nativeTeardown();
    static native long nativeLastSwapArgb(); // egl_interposer's pre-swap center pixel (ARGB); -1 if no swap yet

    private static RenderNode sRoot;
    private static int sW, sH;

    private WestlakeUpscreen() {}

    /** Measure + layout a DETACHED View tree to exactly w x h. No ViewRootImpl/AttachInfo. */
    public static void layout(View v, int w, int h) {
        v.measure(View.MeasureSpec.makeMeasureSpec(w, View.MeasureSpec.EXACTLY),
                  View.MeasureSpec.makeMeasureSpec(h, View.MeasureSpec.EXACTLY));
        v.layout(0, 0, w, h);
    }

    /**
     * Record a laid-out View into the root RenderNode (route a). Reuses sRoot so the
     * native ptr stays stable across frames (beginRecording updates the SAME native node).
     */
    public static RenderNode record(View v, int w, int h) {
        if (sRoot == null) sRoot = new RenderNode("westlake-upscreen-root");
        // beginRecording(w,h) sizes the recording canvas but NOT the node bounds; set them
        // explicitly or an unbounded root clips to nothing. clipToBounds stays default(true):
        // it clips children to (0,0,w,h)==full screen, correct for a full-screen first frame.
        sRoot.setPosition(0, 0, w, h);
        RecordingCanvas c = sRoot.beginRecording(w, h);
        try {
            v.draw(c); // flat display list (null AttachInfo => software child-draw branch)
        } finally {
            sRoot.endRecording();
        }
        return sRoot;
    }

    /** One-shot: measure + layout + record + attach OHOS surface + first frame. 2 == on panel. */
    public static int show(View v, int w, int h) {
        sW = w; sH = h;
        layout(v, w, h);
        record(v, w, h);
        long ptr = nativeRenderNodePtr(sRoot);
        if (ptr == 0L) return 0;
        int r = nativeInit(ptr, w, h);
        if (r == 2) nativeDrawFrame();
        return r;
    }

    /**
     * Re-record (content changed, e.g. ColorView.nextColor) + push one frame. MUST be used
     * for cycling color: pushFrame() alone reuses the previously-recorded display list, so
     * the on-panel color would never change (the exact false-pass trap the oracle guards).
     */
    public static void drawFrame(View v) {
        if (sRoot == null) return;
        record(v, sW, sH);
        nativeDrawFrame();
    }

    /** Push one frame WITHOUT re-recording (static content only). */
    public static void pushFrame() {
        if (sRoot != null) nativeDrawFrame();
    }

    public static void teardown() {
        nativeTeardown();
        sRoot = null;
    }
}
