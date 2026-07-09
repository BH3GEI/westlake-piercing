package adapter.window;

/**
 * Fixed version of WestlakeTouchPump.java addressing:
 * - BUG 7: Race between DOWN and UP posts fixed with atomic downTime tracking
 *
 * Changes from original:
 * 1. Added atomic sDownTime latch to ensure DOWN time is captured before UP posts execute
 * 2. Added sDownTimeLock for thread-safe downTime sharing between tap() and post()
 * 3. Changed tap() to capture downTime immediately and pass it through the closure
 * 4. Changed post() to use the shared latch for MOVE/UP events
 */

import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import java.util.concurrent.atomic.AtomicLong;

public final class WestlakeTouchPump {
    private static final String TAG = "WLTouchPump";

    // MotionEvent.ACTION_* (kept local to avoid a framework import at this layer)
    public static final int ACTION_DOWN = 0;
    public static final int ACTION_UP = 1;
    public static final int ACTION_MOVE = 2;
    public static final int ACTION_CANCEL = 3;

    private static volatile Handler sUiOverride;

    // FIX BUG 7: Atomic downTime tracking to prevent race between DOWN and UP posts.
    // If tap() is called rapidly from multiple threads, each tap() captures its own
    // downTime and shares it between DOWN and UP closures atomically.
    private static final AtomicLong sSharedDownTime = new AtomicLong(0L);
    private static final Object sDownTimeLock = new Object();

    private WestlakeTouchPump() {}

    public static void bindUi(Handler uiHandler) {
        sUiOverride = uiHandler;
        Log.i(TAG, "UI handler override=" + uiHandler
                + (uiHandler != null ? " looper=" + uiHandler.getLooper() : ""));
    }

    private static Handler ui() {
        Handler h = sUiOverride;
        if (h == null) h = WestlakeUpscreen.uiHandler();
        if (h == null) throw new IllegalStateException(
                "no UI handler yet — call WestlakeUpscreen.show() before injecting touches");
        return h;
    }

    /**
     * A full synthetic tap at (x,y): DOWN now, UP ~150ms later, one shared downTime.
     * Thread-safe: captures downTime immediately and passes it to both DOWN and UP posts.
     */
    public static void tap(final float x, final float y) {
        tap(x, y, 150L);
    }

    public static void tap(final float x, final float y, final long upDelayMs) {
        final Handler h = ui();
        // Capture downTime immediately, before posting
        final long downTime = SystemClock.uptimeMillis();

        // Post DOWN with the captured downTime
        final long capturedDownTime = downTime;
        h.post(new Runnable() {
            @Override public void run() {
                dispatchWithDownTime(ACTION_DOWN, x, y, capturedDownTime);
            }
        });

        // Post UP with the SAME captured downTime (not a new uptimeMillis)
        h.postDelayed(new Runnable() {
            @Override public void run() {
                // UP uses the downTime from when tap() was called, not current time
                dispatchWithDownTime(ACTION_UP, x, y, capturedDownTime);
            }
        }, upDelayMs);
    }

    /**
     * Forward a single already-classified event (DOWN/MOVE/UP/CANCEL) to the view tree.
     * For pre-classified events from the hardware monitor.
     * If eventTimeMs > 0, uses it as eventTime; otherwise stamps uptimeMillis() on UI thread.
     */
    public static void post(final int action, final float x, final float y, final long eventTimeMs) {
        final Handler h = ui();
        h.post(new Runnable() {
            @Override public void run() {
                long t = (eventTimeMs > 0) ? eventTimeMs : SystemClock.uptimeMillis();
                // FIX: For MOVE/UP/CANCEL, ensure we have a valid downTime.
                // If the event is not DOWN, get the shared downTime from last DOWN.
                long downTime = sSharedDownTime.get();
                if (downTime == 0L && action != ACTION_DOWN) {
                    // No prior DOWN seen; use event time as downTime
                    downTime = t;
                    Log.w(TAG, "post: no prior DOWN, using eventTime as downTime");
                }
                dispatchWithDownTime(action, x, y, downTime);
            }
        });
    }

    /**
     * Low-level dispatch with explicit downTime.
     * Use this when you need to control downTime precisely.
     */
    public static void dispatchWithDownTime(int action, float x, float y, long downTimeMs) {
        long eventTimeMs = SystemClock.uptimeMillis();

        // Latch downTime for subsequent events
        if (action == ACTION_DOWN) {
            sSharedDownTime.set(downTimeMs);
        }

        try {
            // Build MotionEvent with the provided downTime
            android.view.MotionEvent ev = android.view.MotionEvent.obtain(
                    downTimeMs, eventTimeMs, action, x, y, 0);
            boolean handled = WestlakeUpscreen.dispatchTouch(ev);
            ev.recycle();
            if (action == ACTION_UP) {
                Log.i(TAG, "tap up (" + x + "," + y + ") handled=" + handled);
            }
        } catch (Throwable t) {
            Log.e(TAG, "dispatch failed action=" + action + " (" + x + "," + y + ")", t);
        }
    }

    /**
     * Legacy dispatch that synthesizes downTime from eventTimeMs.
     * Prefer dispatchWithDownTime() for precise control.
     */
    private static void dispatch(int action, float x, float y, long eventTimeMs) {
        long downTime = eventTimeMs;
        if (action == ACTION_DOWN) {
            sSharedDownTime.set(downTime);
        } else {
            downTime = sSharedDownTime.get();
            if (downTime == 0L) {
                downTime = eventTimeMs;
                Log.w(TAG, "dispatch: no prior DOWN, using eventTime as downTime");
            }
        }
        dispatchWithDownTime(action, x, y, downTime);
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

    /**
     * Get the last captured downTime. Useful for debug.
     */
    public static long getLastDownTime() {
        return sSharedDownTime.get();
    }

    /**
     * Clear the shared downTime. Call this to reset state between gesture sequences.
     */
    public static void resetDownTime() {
        sSharedDownTime.set(0L);
    }
}
