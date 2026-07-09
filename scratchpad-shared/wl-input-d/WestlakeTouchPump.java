package adapter.window;

import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;

/**
 * WestlakeTouchPump — Agent-D's main-Looper input marshal for DAYU600 Strategy B.
 *
 * Replaces the noice-specific smali `OHTouchInjector` (hardcoded at
 * oh_input_bridge.cpp:575, loadClass-fails for any other app). Compile this into
 * the SAME dex as Agent-C's adapter/WestlakeUpscreen so the native shim can find
 * it and injectTouch is reachable.
 *
 * Contract (see FINDINGS.md §4):
 *  - injectTouch/dispatchTouch/dispatchKey must run on the ONE main-Looper thread
 *    Agent-C uses for show()/drawFrame (RenderNode/RecordingCanvas are not
 *    thread-safe; off-thread dispatch throws "Animators may only be run on
 *    Looper threads"). This class marshals every native-thread event onto that
 *    Looper via Handler.post.
 *  - A tap is DOWN then UP ~150ms apart, sharing one downTime. We pace with
 *    postDelayed — NEVER Thread.sleep on the main thread (deadlocks the pattern).
 *  - eventTime is milliseconds = SystemClock.uptimeMillis() (what MotionEvent.obtain
 *    wants). Agent-C's injectTouch latches downTime on ACTION_DOWN internally.
 *  - show(decor,w,h) must have returned before any pump call (layout first).
 *
 * Native side (westlake_input.cpp) calls the static entry points below via JNI.
 * All public statics are safe to call from the OHOS monitor thread; they defer
 * to the UI Handler.
 */
public final class WestlakeTouchPump {
    private static final String TAG = "WLTouchPump";

    // MotionEvent.ACTION_* (kept local to avoid a framework import at this layer)
    public static final int ACTION_DOWN = 0;
    public static final int ACTION_UP = 1;
    public static final int ACTION_MOVE = 2;
    public static final int ACTION_CANCEL = 3;

    private static volatile Handler sUiOverride;   // optional test override; normally null

    private WestlakeTouchPump() {}

    /**
     * Normally UNNEEDED: the pump fetches WestlakeUpscreen.uiHandler() (bound by
     * Agent-C to the show()-thread Looper) on every post, so it always delivers
     * to the correct thread regardless of which thread show() ran on. Use this
     * only to force a specific Handler in a standalone test harness (no
     * WestlakeUpscreen). Passing null clears the override.
     */
    public static void bindUi(Handler uiHandler) {
        sUiOverride = uiHandler;
        Log.i(TAG, "UI handler override=" + uiHandler
                + (uiHandler != null ? " looper=" + uiHandler.getLooper() : ""));
    }

    /**
     * The UI Looper Handler to post onto: Agent-C's WestlakeUpscreen.uiHandler()
     * (bound to the show()-thread Looper) unless a test override is set. Returns
     * null until WestlakeUpscreen.show() has run — inject AFTER show().
     */
    private static Handler ui() {
        Handler h = sUiOverride;
        if (h == null) h = WestlakeUpscreen.uiHandler();   // bound by C at show()
        if (h == null) throw new IllegalStateException(
                "no UI handler yet — call WestlakeUpscreen.show() before injecting touches");
        return h;
    }

    /**
     * A full synthetic tap at (x,y): DOWN now, UP ~150ms later, one shared downTime.
     * Safe to call from any thread (marshals to the UI Looper).
     * Called by the native monitor shim for a quick tap, and by the westlake_tap
     * file channel.
     */
    public static void tap(final float x, final float y) {
        tap(x, y, 150L);
    }

    public static void tap(final float x, final float y, final long upDelayMs) {
        final Handler h = ui();
        h.post(new Runnable() {
            @Override public void run() {
                long t = SystemClock.uptimeMillis();
                // injectTouch latches downTime on ACTION_DOWN internally.
                dispatch(ACTION_DOWN, x, y, t);
            }
        });
        h.postDelayed(new Runnable() {
            @Override public void run() {
                long t = SystemClock.uptimeMillis();
                dispatch(ACTION_UP, x, y, t);
            }
        }, upDelayMs);
    }

    /**
     * Forward a single already-classified event (DOWN/MOVE/UP/CANCEL) to the view
     * tree on the UI Looper. Used by the hardware monitor for real multi-event
     * gestures (it already knows the true action) so we DON'T re-synthesize.
     * Safe from any thread.
     */
    public static void post(final int action, final float x, final float y, final long eventTimeMs) {
        ui().post(new Runnable() {
            @Override public void run() {
                // Sources whose native time base differs from uptime (e.g. /dev/input
                // evdev CLOCK_MONOTONIC) pass eventTimeMs<=0; stamp uptimeMillis() here,
                // on the UI thread, so obtain() gets the base it expects.
                long t = (eventTimeMs > 0) ? eventTimeMs : SystemClock.uptimeMillis();
                dispatch(action, x, y, t);
            }
        });
    }

    /** Runs ON the UI thread. Bridges to Agent-C's WestlakeUpscreen.injectTouch (4-arg, ms). */
    private static void dispatch(int action, float x, float y, long eventTimeMs) {
        try {
            boolean handled = WestlakeUpscreen.injectTouch(action, x, y, eventTimeMs);
            if (action == ACTION_UP) {
                Log.i(TAG, "tap up (" + x + "," + y + ") handled=" + handled);
            }
        } catch (Throwable t) {
            // A missing MotionEvent/VelocityTracker native stub surfaces here as
            // UnsatisfiedLinkError — the single most likely first-run failure.
            Log.e(TAG, "dispatch failed action=" + action + " (" + x + "," + y + ")", t);
        }
    }

    // --- Key path (post-milestone). Native key monitor calls this. ---
    public static void postKey(final int androidAction, final int androidKeyCode, final long eventTimeMs) {
        ui().post(new Runnable() {
            @Override public void run() {
                try {
                    android.view.KeyEvent ev = new android.view.KeyEvent(
                        eventTimeMs, eventTimeMs, androidAction, androidKeyCode,
                        /*repeat*/0, /*meta*/0, /*deviceId*/-1, /*scancode*/0,
                        /*flags*/0, /*source*/0x101 /*SOURCE_KEYBOARD*/);
                    boolean handled = WestlakeUpscreen.dispatchKey(ev);
                    Log.i(TAG, "key " + androidKeyCode + " act=" + androidAction + " handled=" + handled);
                } catch (Throwable t) {
                    Log.e(TAG, "key dispatch failed code=" + androidKeyCode, t);
                }
            }
        });
    }
}
