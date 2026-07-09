package adapter.window;

/**
 * Fixed version of WestlakeUpscreen.java addressing:
 * - BUG 8: Uninitialized sDownTimeMs on first call
 *
 * Changes from original:
 * 1. Added sDownTimeInitialized flag to detect first ACTION_DOWN
 * 2. injectTouch() now handles the case where first event is not ACTION_DOWN
 * 3. Added getDownTimeMs() and isReady() for diagnostics
 */

import android.content.Context;
import android.graphics.RecordingCanvas;
import android.graphics.RenderNode;
import android.os.SystemClock;
import android.util.Log;
import android.view.View;

public final class WestlakeUpscreen {
    static { System.loadLibrary("westlake_upscreen_renderer"); }

    static native long nativeRenderNodePtr(RenderNode node);
    static native int  nativeInit(long rootNodePtr, int w, int h);
    static native void nativeDrawFrame();
    static native void nativeTeardown();

    private static RenderNode sRoot;
    private static android.view.View sDecor;
    private static int sW, sH;
    private static long sDownTimeMs;
    private static boolean sDownTimeInitialized;
    private static android.os.Looper sUiLooper;
    public static boolean sAutoAttach = true;

    private WestlakeUpscreen() {}

    /** Measure + layout a DETACHED View tree to exactly w x h. No ViewRootImpl/AttachInfo. */
    public static void layout(View v, int w, int h) {
        v.measure(View.MeasureSpec.makeMeasureSpec(w, View.MeasureSpec.EXACTLY),
                  View.MeasureSpec.makeMeasureSpec(h, View.MeasureSpec.EXACTLY));
        v.layout(0, 0, w, h);
    }

    public static RenderNode record(View v, int w, int h) {
        if (sRoot == null) sRoot = new RenderNode("westlake-upscreen-root");
        sRoot.setPosition(0, 0, w, h);
        RecordingCanvas c = sRoot.beginRecording(w, h);
        try {
            v.draw(c);
        } finally {
            sRoot.endRecording();
        }
        return sRoot;
    }

    public static int show(View v, int w, int h) {
        sW = w; sH = h;
        sDecor = v;
        sDownTimeMs = SystemClock.uptimeMillis();
        sDownTimeInitialized = true;
        sUiLooper = android.os.Looper.myLooper();
        if (sUiLooper == null) sUiLooper = android.os.Looper.getMainLooper();
        layout(v, w, h);
        if (sAutoAttach) attachForInput(v, uiHandler());
        record(v, w, h);
        long ptr = nativeRenderNodePtr(sRoot);
        if (ptr == 0L) return 0;
        int r = nativeInit(ptr, w, h);
        if (r == 2) nativeDrawFrame();

        // Auto-flush any pending text from WestlakeTextPump
        try {
            Class<?> textPump = Class.forName("adapter.window.WestlakeTextPump");
            java.lang.reflect.Method flush = textPump.getMethod("flushPending");
            flush.invoke(null);
        } catch (Throwable ignored) {}

        return r;
    }

    public static void drawFrame(View v) {
        if (sRoot == null) return;
        record(v, sW, sH);
        nativeDrawFrame();
    }

    public static void pushFrame() {
        if (sRoot != null) nativeDrawFrame();
    }

    public static void teardown() {
        nativeTeardown();
        sRoot = null;
        sDecor = null;
        sDownTimeMs = 0L;
        sDownTimeInitialized = false;
    }

    public static boolean dispatchTouch(android.view.MotionEvent ev) {
        if (sDecor == null) return false;
        boolean handled = sDecor.dispatchTouchEvent(ev);
        drawFrame(sDecor);
        return handled;
    }

    public static boolean dispatchKey(android.view.KeyEvent ev) {
        if (sDecor == null) return false;
        boolean handled = sDecor.dispatchKeyEvent(ev);
        drawFrame(sDecor);
        return handled;
    }

    /**
     * Shared hook for Agent-D (adopted signature). Build + dispatch a single-pointer touch,
     * then re-render (via dispatchTouch).
     *
     * FIX BUG 8: Handles uninitialized sDownTimeMs gracefully.
     * If first event is not ACTION_DOWN, initializes downTime from eventTimeMs.
     */
    public static boolean injectTouch(int action, float x, float y, long eventTimeMs) {
        if (!sDownTimeInitialized) {
            sDownTimeMs = eventTimeMs;
            sDownTimeInitialized = true;
        }
        if (action == android.view.MotionEvent.ACTION_DOWN) {
            sDownTimeMs = eventTimeMs;
        }
        android.view.MotionEvent ev =
                android.view.MotionEvent.obtain(sDownTimeMs, eventTimeMs, action, x, y, 0);
        try { return dispatchTouch(ev); } finally { ev.recycle(); }
    }

    /**
     * Inject touch with explicit downTime. Use this for precise gesture control.
     */
    public static boolean injectTouchWithDownTime(int action, float x, float y,
                                                   long downTimeMs, long eventTimeMs) {
        sDownTimeMs = downTimeMs;
        sDownTimeInitialized = true;
        android.view.MotionEvent ev =
                android.view.MotionEvent.obtain(downTimeMs, eventTimeMs, action, x, y, 0);
        try { return dispatchTouch(ev); } finally { ev.recycle(); }
    }

    public static android.view.View decor() { return sDecor; }
    public static void requestRedraw() { if (sDecor != null) drawFrame(sDecor); }
    public static android.os.Looper uiLooper() { return sUiLooper; }

    public static android.os.Handler uiHandler() {
        android.os.Looper l = (sUiLooper != null) ? sUiLooper : android.os.Looper.getMainLooper();
        return (l != null) ? new android.os.Handler(l) : null;
    }

    /**
     * Check if the upscreen is ready for input. Returns true after show() has been called.
     */
    public static boolean isReady() {
        return sDecor != null && sUiLooper != null;
    }

    /**
     * Get the current downTime. For debug/diagnostics.
     */
    public static long getDownTimeMs() { return sDownTimeMs; }

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
            trySetField(aiCls, ai, "mHardwareAccelerated", Boolean.FALSE);
            java.lang.reflect.Field hf = findField(aiCls, "mHandler");
            if (hf != null && h != null) { hf.setAccessible(true); if (hf.get(ai) == null) hf.set(ai, h); }
            java.lang.reflect.Field aiField = View.class.getDeclaredField("mAttachInfo");
            aiField.setAccessible(true);
            setAttachInfoRecursive(root, aiField, ai);
            return true;
        } catch (Throwable t) {
            return false;
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

    public static View pureColorView(Context ctx, int argb) {
        View v = new View(ctx);
        v.setBackgroundColor(argb);
        return v;
    }
}
