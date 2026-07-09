package adapter.window;

import android.content.Context;
import android.graphics.RecordingCanvas;
import android.graphics.RenderNode;
import android.view.View;

/**
 * Agent-C 上屏 host — strategy B (BYPASS ViewRootImpl).
 *
 * Paints a laid-out View tree (starting with a pure-color DecorView) to the DAYU600
 * panel through libwestlake_upscreen_renderer.so, which drives OUR libhwui.so
 * RenderProxy -> OHOS RSSurfaceNode(display 0) -> panel. Proven gate-2 pipeline.
 *
 * WHY strategy B (source-grounded, android-15.0.0_r9):
 *   - The real ViewRootImpl path needs a valid native SurfaceControl + BLASTBufferQueue
 *     (relayout -> mSurface.transferFrom(new BLASTBufferQueue(mSurfaceControl,...)
 *     .createSurface())). Those are SurfaceFlinger/BufferQueue constructs that DO NOT
 *     exist on the headless OHOS board -> strategy A is a dead end here.
 *   - Route (a) below records the View with a NULL AttachInfo. With mAttachInfo==null,
 *     View.draw()/ViewGroup.dispatchDraw() take the SOFTWARE child-draw branch (no
 *     per-child hardware RenderNode), so everything is inlined into ONE flat display
 *     list on the RecordingCanvas -> exactly what our RenderProxy consumes. No
 *     Choreographer, no IWindowSession, no WindowManagerGlobal.addView needed.
 *
 * Integration (in Agent-B's runtime, after MainActivity.onCreate builds the DecorView):
 *     View decor = activity.getWindow().getDecorView();     // or pureColorView(ctx, color)
 *     int r = WestlakeUpscreen.show(decor, 1200, 1920);      // r==2 => on panel
 *     // for a redraw after content changes: WestlakeUpscreen.drawFrame(decor);
 *     // static content: WestlakeUpscreen.pushFrame();
 *     WestlakeUpscreen.teardown();
 *
 * NOTE (loader): load the .so with RTLD_GLOBAL / early so its egl_interposer +
 * skia_interposer win global-scope PLT resolution over libEGL/libskia_canvaskit
 * inside the ART process (see 30-design-and-standins.md, risk R1). System.loadLibrary
 * uses RTLD_LOCAL; if the interposers don't preempt, dlopen the .so RTLD_GLOBAL from
 * the native launcher before first frame, or use the adapter libhwui (self-binding).
 */
public final class WestlakeUpscreen {
    static { System.loadLibrary("westlake_upscreen_renderer"); }

    // Registered by JNI_OnLoad in libwestlake_upscreen_renderer.so on THIS class.
    static native long nativeRenderNodePtr(RenderNode node); // reads RenderNode.mNativeRenderNode (native, no hidden-API check)
    static native int  nativeInit(long rootNodePtr, int w, int h);
    static native void nativeDrawFrame();
    static native void nativeTeardown();

    private static RenderNode sRoot;
    private static android.view.View sDecor; // the hosted root View (for input dispatch + re-render)
    private static int sW, sH;
    private static long sDownTimeMs;         // tracks the gesture's ACTION_DOWN time for injectTouch
    private static android.os.Looper sUiLooper; // the thread show() ran on == the UI thread
    /** show() auto-installs a fake AttachInfo so onClick fires (Agent-D's blocker). Off => no attach. */
    public static boolean sAutoAttach = true;

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
        // MUST set the node's layout bounds: beginRecording(w,h) only sizes the recording
        // canvas, it does NOT set the node bounds; an unbounded root clips to nothing.
        sRoot.setPosition(0, 0, w, h);
        // NOTE: setClipToBounds(false) intentionally OMITTED to shrink the @CriticalNative
        // surface B must Path-B-wrap. Default clipToBounds==true clips children to the node
        // bounds (0,0,w,h)==full screen, which is correct for a full-screen decor/first-frame.
        // (Re-add via Path B later only if elevation shadows need to draw outside bounds.)
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
        sDecor = v;
        // The thread that calls show() is the UI thread — the ONLY thread that may touch the
        // View tree / RenderNode / record / dispatch input (none are thread-safe). It MUST be
        // a Looper thread (the probe's Looper.prepareMainLooper() thread). Captured for Agent-D.
        sUiLooper = android.os.Looper.myLooper();
        if (sUiLooper == null) sUiLooper = android.os.Looper.getMainLooper();
        layout(v, w, h);
        if (sAutoAttach) attachForInput(v, uiHandler()); // so onClick fires (never breaks rendering; see method)
        record(v, w, h);
        // NOTE: hasDisplayList() guard (shorty ZJ, @CriticalNative) intentionally OMITTED to
        // shrink the crit surface B must Path-B-wrap. It was only an early-return safety check;
        // if the record produced nothing we simply proceed (native render yields a black frame,
        // which is still diagnosable). Removing it drops ZJ from show()'s @CriticalNative needs.
        long ptr = nativeRenderNodePtr(sRoot);
        if (ptr == 0L) return 0;
        int r = nativeInit(ptr, w, h);
        if (r == 2) nativeDrawFrame();
        return r;
    }

    /** Re-record (content changed) + push one frame. */
    public static void drawFrame(View v) {
        if (sRoot == null) return;
        record(v, sW, sH);
        nativeDrawFrame();
    }

    /** Push one frame without re-recording (static content). */
    public static void pushFrame() {
        if (sRoot != null) nativeDrawFrame();
    }

    public static void teardown() {
        nativeTeardown();
        sRoot = null;
        sDecor = null;
    }

    // ---- Input entry (for Agent-D). Strategy B has NO ViewRootImpl, so events go
    //      straight to the root View's dispatch* methods, and we re-render afterward
    //      (there is no automatic invalidate->Choreographer->traversal->draw loop). ----

    /** Feed a MotionEvent to the hosted View tree, then push a frame (state may have changed). */
    public static boolean dispatchTouch(android.view.MotionEvent ev) {
        if (sDecor == null) return false;
        boolean handled = sDecor.dispatchTouchEvent(ev);
        drawFrame(sDecor);
        return handled;
    }

    /** Feed a KeyEvent to the hosted View tree, then push a frame. */
    public static boolean dispatchKey(android.view.KeyEvent ev) {
        if (sDecor == null) return false;
        boolean handled = sDecor.dispatchKeyEvent(ev);
        drawFrame(sDecor);
        return handled;
    }

    /**
     * Shared hook for Agent-D (adopted signature). Build + dispatch a single-pointer touch,
     * then re-render (via dispatchTouch). `action` is a MotionEvent.ACTION_* constant.
     * `eventTimeMs` is SystemClock.uptimeMillis() (MILLISECONDS — that is what MotionEvent.obtain
     * expects, NOT nanos). downTime is tracked automatically: it's latched on ACTION_DOWN and
     * reused for the rest of the gesture, so callers only pass the current event time.
     * Requires MotionEvent.obtain's native init to work (Agent-D's half). For full control
     * (multi-touch, historical points, custom downTime) build the MotionEvent yourself and call
     * dispatchTouch(MotionEvent) instead.
     */
    public static boolean injectTouch(int action, float x, float y, long eventTimeMs) {
        if (action == android.view.MotionEvent.ACTION_DOWN) sDownTimeMs = eventTimeMs;
        android.view.MotionEvent ev =
                android.view.MotionEvent.obtain(sDownTimeMs, eventTimeMs, action, x, y, 0);
        try { return dispatchTouch(ev); } finally { ev.recycle(); }
    }

    /** Root View the events dispatch to (Agent-D may prefer to hold this directly). */
    public static android.view.View decor() { return sDecor; }

    /** Force a re-record + frame (e.g. after external invalidation). */
    public static void requestRedraw() { if (sDecor != null) drawFrame(sDecor); }

    /** The UI thread's Looper (== the thread show() was called on). Null before show(). For Agent-D. */
    public static android.os.Looper uiLooper() { return sUiLooper; }

    /**
     * A Handler bound to the UI thread's Looper, so Agent-D's touch pump can post events onto the
     * exact thread that owns the View tree. Call injectTouch/dispatchTouch from inside a posted
     * Runnable. Returns null before show() has run.
     */
    public static android.os.Handler uiHandler() {
        android.os.Looper l = (sUiLooper != null) ? sUiLooper : android.os.Looper.getMainLooper();
        return (l != null) ? new android.os.Handler(l) : null;
    }

    /**
     * Install a minimal fake AttachInfo on the View tree so click/press machinery works
     * (Agent-D's blocker): with mAttachInfo==null, View.post(mPerformClick) queues into an
     * un-drained RunQueue and returns true, so onClick never fires. We set mHardwareAccelerated
     * = FALSE, which keeps View.draw's `drawingWithRenderNode` false → the software child-draw
     * branch → strategy-B flat display list is UNCHANGED (rendering safe). mHandler = the UI
     * Looper handler so posted PerformClick/CheckForTap actually run. Version-robust: introspects
     * the package-private AttachInfo ctor and fills Handler/Context slots by type, rest null.
     * Fully guarded — any failure returns false and rendering proceeds regardless. Uses the MINIMAL
     * approach (Agent-D's milestone recommendation): recursively sets mAttachInfo on the tree
     * WITHOUT dispatchAttachedToWindow, so complex real-app views can't NPE in onAttachedToWindow on
     * null mViewRootImpl/mSession. Trade-off: onAttachedToWindow side effects don't run; if a real
     * app needs them, escalate to the full dispatchAttachedToWindow variant.
     */
    public static boolean attachForInput(View root, android.os.Handler h) {
        try {
            Class<?> aiCls = Class.forName("android.view.View$AttachInfo");
            java.lang.reflect.Constructor<?> ctor = aiCls.getDeclaredConstructors()[0];
            ctor.setAccessible(true);
            Class<?>[] pts = ctor.getParameterTypes();
            Object[] args = new Object[pts.length];
            for (int i = 0; i < pts.length; i++) {
                if (pts[i] == android.os.Handler.class) args[i] = h;
                else if (pts[i] == android.content.Context.class) args[i] = root.getContext();
                else if (pts[i] == boolean.class) args[i] = Boolean.FALSE;
                else if (pts[i] == int.class) args[i] = Integer.valueOf(0);
                else if (pts[i] == long.class) args[i] = Long.valueOf(0L);
                else args[i] = null;
            }
            Object ai = ctor.newInstance(args);
            trySetField(aiCls, ai, "mHardwareAccelerated", Boolean.FALSE); // keep C's software flatten
            java.lang.reflect.Field hf = findField(aiCls, "mHandler");
            if (hf != null && h != null) { hf.setAccessible(true); if (hf.get(ai) == null) hf.set(ai, h); }
            // MINIMAL variant (Agent-D's milestone recommendation): recursively set mAttachInfo on
            // every View WITHOUT dispatchAttachedToWindow. Enough for View.post() to route to
            // mAttachInfo.mHandler (so PerformClick/CheckForTap run -> onClick fires), while AVOIDING
            // onAttachedToWindow deref of null mViewRootImpl/mSession on complex real-app views.
            java.lang.reflect.Field aiField = View.class.getDeclaredField("mAttachInfo");
            aiField.setAccessible(true);
            setAttachInfoRecursive(root, aiField, ai);
            return true;
        } catch (Throwable t) {
            return false; // rendering does not depend on this
        }
    }

    private static void setAttachInfoRecursive(View v, java.lang.reflect.Field aiField, Object ai)
            throws IllegalAccessException {
        aiField.set(v, ai);
        if (v instanceof android.view.ViewGroup) {
            android.view.ViewGroup g = (android.view.ViewGroup) v;
            for (int i = 0; i < g.getChildCount(); i++) setAttachInfoRecursive(g.getChildAt(i), aiField, ai);
        }
    }

    private static void trySetField(Class<?> c, Object o, String name, Object val) {
        try { java.lang.reflect.Field f = c.getDeclaredField(name); f.setAccessible(true); f.set(o, val); }
        catch (Throwable ignore) {}
    }

    private static java.lang.reflect.Field findField(Class<?> c, String name) {
        try { return c.getDeclaredField(name); } catch (Throwable t) { return null; }
    }

    /**
     * Milestone helper: a full-screen pure-color View. Needs only a Context whose
     * getResources() works (Agent-A/B's ProbeContext) — no inflation, no layout XML,
     * no framework-res drawables.
     */
    public static View pureColorView(Context ctx, int argb) {
        View v = new View(ctx);
        v.setBackgroundColor(argb);
        return v;
    }
}
