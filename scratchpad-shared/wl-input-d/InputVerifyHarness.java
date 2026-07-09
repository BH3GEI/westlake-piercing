package adapter.window;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;

/**
 * Agent-D3 standalone input verification harness for DAYU600 5583f5be.
 *
 * This class is meant to be invoked from a running ART process after the
 * substrate/framework stubs required to construct a View are already in place
 * (i.e. from Agent-B's probe stage, after WindowManagerService stub etc.).
 *
 * It does the minimum needed to exercise the full input chain:
 *   1. prepareMainLooper on the current thread (this thread becomes the UI thread).
 *   2. Show WestlakeInputTestView through WestlakeUpscreen.show() (triggers attachForInput).
 *   3. Load libwestlake_input.so (registers MotionEvent/VelocityTracker/KeyEvent stubs
 *      and starts the westlake_tap / westlake_text pollers).
 *   4. Keep the Looper alive so touches can be injected.
 *
 * Expected hilog markers after success:
 *   - tap  (600,960): "WLTEST touch DOWN", "WLTEST touch UP", "WLTEST CLICK"
 *   - text "hello westlake": "WLTEXT commit \"hello westlake\""
 */
public final class InputVerifyHarness {
    private static final String TAG = "WLTouchPump";

    private InputVerifyHarness() {}

    /**
     * Run the harness. The caller must supply a Context that is sufficient to
     * construct a FrameLayout (i.e. getResources() returns non-null Resources).
     * In Agent-B's probe this is the existing probe Context.
     */
    public static void run(android.content.Context ctx) {
        Looper.prepareMainLooper();
        Log.i(TAG, "InputVerifyHarness: Looper prepared");

        android.view.View v = WestlakeInputTestView.make(ctx);
        int r = WestlakeUpscreen.show(v, 1200, 1920);
        Log.i(TAG, "InputVerifyHarness: show() returned " + r + " (2=on panel)");

        try {
            System.loadLibrary("westlake_input");
            Log.i(TAG, "InputVerifyHarness: libwestlake_input loaded");
        } catch (Throwable t) {
            Log.e(TAG, "InputVerifyHarness: failed to load libwestlake_input", t);
        }

        // If we got here the pollers are running. Enter the main loop so the
        // thread stays alive and can process posted touch/key events.
        Log.i(TAG, "InputVerifyHarness: entering Looper.loop(); inject via /data/local/tmp/westlake_tap");
        Looper.loop();
    }
}
