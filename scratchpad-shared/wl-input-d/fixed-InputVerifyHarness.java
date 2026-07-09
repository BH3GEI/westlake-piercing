package adapter.window;

/**
 * Fixed version of InputVerifyHarness.java addressing:
 * - BUG 2: prepareMainLooper moved before View creation
 * - BUG 6: Added -Ximage:none flag documentation
 *
 * Changes from original:
 * 1. prepareMainLooper() called FIRST, before any Looper-dependent code
 * 2. Added documentation about -Ximage:none requirement
 */

import android.os.Handler;
import android.os.Looper;
import android.util.Log;

public final class InputVerifyHarness {
    private static final String TAG = "WLTouchPump";
    private static final String TAG_TEST = "WLTEST";

    private InputVerifyHarness() {}

    /**
     * Run the harness. The caller must supply a Context that is sufficient to
     * construct a FrameLayout (i.e. getResources() returns non-null Resources).
     *
     * IMPORTANT: This harness must be invoked with -Ximage:none to avoid boot image
     * mismatch crashes. See BOOT-IMAGE-MISMATCH.md for details.
     *
     * Correct invocation:
     *   /data/local/tmp/wl-imgboot/dalvikvm \
     *     -Ximage:none \
     *     -Xbootclasspath:/data/local/tmp/westlake-dayu600-substrate/android/framework/framework.jar:... \
     *     -classpath /data/local/tmp/ivs-classes.jar \
     *     adapter.window.InputVerifyHarness
     */
    public static void run(android.content.Context ctx) {
        // FIX BUG 2: prepareMainLooper FIRST before any Looper-dependent code.
        // This makes the current thread the UI thread that show() expects.
        Looper.prepareMainLooper();
        Log.i(TAG, "InputVerifyHarness: Looper prepared (this thread is now the UI thread)");

        android.view.View v = WestlakeInputTestView.make(ctx);
        Log.i(TAG, "InputVerifyHarness: WestlakeInputTestView created");

        int r = WestlakeUpscreen.show(v, 1200, 1920);
        Log.i(TAG, "InputVerifyHarness: show() returned " + r + " (2=on panel)");

        try {
            // Try primary path first (no subdirectory)
            System.load("/data/local/tmp/libwestlake_input.so");
            Log.i(TAG, "InputVerifyHarness: libwestlake_input.so loaded");
        } catch (Throwable t) {
            // Try alternative path
            try {
                System.load("/data/local/tmp/wl-input-d/libwestlake_input.so");
                Log.i(TAG, "InputVerifyHarness: libwestlake_input.so loaded (alt path)");
            } catch (Throwable t2) {
                Log.e(TAG, "InputVerifyHarness: failed to load libwestlake_input", t);
            }
        }

        Log.i(TAG, "InputVerifyHarness: entering Looper.loop()");
        Log.i(TAG_TEST, "InputVerifyHarness: waiting for taps on /data/local/tmp/westlake_tap");
        Looper.loop();
    }

    /**
     * Convenience: run with default tap sequence and text.
     */
    public static void runWithSequence(android.content.Context ctx,
                                       float tapX, float tapY,
                                       String textToCommit) {
        Looper.prepareMainLooper();
        Log.i(TAG, "InputVerifyHarness: Looper prepared");

        android.view.View v = WestlakeInputTestView.make(ctx);
        int r = WestlakeUpscreen.show(v, 1200, 1920);
        Log.i(TAG, "InputVerifyHarness: show() returned " + r);

        try {
            System.load("/data/local/tmp/libwestlake_input.so");
        } catch (Throwable t) {
            try {
                System.load("/data/local/tmp/wl-input-d/libwestlake_input.so");
            } catch (Throwable t2) {
                Log.e(TAG, "InputVerifyHarness: so load failed", t);
            }
        }

        // Send taps
        final android.os.Handler h = new android.os.Handler(Looper.myLooper());
        for (int i = 0; i < 3; i++) {
            final int seq = i;
            h.postDelayed(new Runnable() {
                public void run() {
                    try {
                        java.io.File f = new java.io.File("/data/local/tmp/westlake_tap");
                        java.io.FileOutputStream fos = new java.io.FileOutputStream(f);
                        String cmd = tapX + " " + tapY + "\n";
                        fos.write(cmd.getBytes());
                        fos.close();
                        Log.i(TAG_TEST, "Harness tap[" + seq + "] at (" + tapX + "," + tapY + ")");
                    } catch (Throwable t) {
                        Log.e(TAG, "Harness tap[" + seq + "] FAILED", t);
                    }
                }
            }, seq * 200L);
        }

        // Send text
        h.postDelayed(new Runnable() {
            public void run() {
                try {
                    java.io.File f = new java.io.File("/data/local/tmp/westlake_text");
                    java.io.FileOutputStream fos = new java.io.FileOutputStream(f);
                    fos.write((textToCommit + "\n").getBytes());
                    fos.close();
                    Log.i(TAG_TEST, "Harness text: \"" + textToCommit + "\"");
                } catch (Throwable t) {
                    Log.e(TAG, "Harness text FAILED", t);
                }
            }
        }, 1000L);

        Log.i(TAG, "InputVerifyHarness: entering loop");
        Looper.loop();
    }
}
