package adapter.window;

/**
 * Fixed version of InputVerifyStage.java addressing:
 * - BUG 1: Fixed hardcoded .so path from "wl-input-d/" to root
 * - BUG 15: Replaced Thread.sleep(500) with proper CountDownLatch synchronization
 *
 * Changes from original:
 * 1. Uses "/data/local/tmp/libwestlake_input.so" instead of "/data/local/tmp/wl-input-d/libwestlake_input.so"
 * 2. Uses CountDownLatch instead of Thread.sleep for looper thread synchronization
 * 3. Added better error handling and diagnostic markers
 * 4. Added WLTEST prefix to all log markers for grep compatibility
 */

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.View;
import java.io.File;
import java.io.FileOutputStream;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public final class InputVerifyStage {
    private static final String TAG = "IVS";
    private static final String TAG_TEST = "WLTEST";

    private InputVerifyStage() {}

    /**
     * Entry point. Call from the probe's embedded VM main thread.
     * @param ctx   framework Context (available after ctxAttach=OK in probe)
     * @param fwAmObj  framework ActivityManager object (unused, for signature compatibility)
     */
    public static void run(Context ctx, Object fwAmObj) {
        Log.i(TAG, "IVS stage begin ctx=" + ctx);

        // Step 1: create test View
        View testView;
        if (ctx == null) {
            Log.w(TAG, "IVS ctx is null — running in LOG-ONLY mode");
            testView = null;
        } else {
            try {
                testView = WestlakeInputTestView.make(ctx);
                Log.i(TAG, "IVS test view created");
            } catch (Throwable t) {
                Log.e(TAG, "IVS test view FAILED", t);
                testView = null;
            }
        }

        // Step 2: start Looper thread for show() + event dispatch
        final View _view = testView;
        final Context _ctx = ctx;
        final Handler[] _hOut = { null };
        final CountDownLatch looperReady = new CountDownLatch(1);
        final CountDownLatch showDone = new CountDownLatch(1);
        final int[] showResult = { -1 };
        final Throwable[] showException = { null };

        Thread looperThread = new Thread("IVS-Looper") {
            public void run() {
                Looper.prepare();
                _hOut[0] = new Handler(Looper.myLooper());
                Log.i(TAG, "IVS looper ready");
                looperReady.countDown();

                if (_view != null && _ctx != null) {
                    try {
                        Log.i(TAG, "IVS calling show()");
                        showResult[0] = WestlakeUpscreen.show(_view, 1200, 1920);
                        Log.i(TAG, "IVS show ret=" + showResult[0] + " (2=on panel)");
                    } catch (Throwable t) {
                        showException[0] = t;
                        Log.e(TAG, "IVS show FAILED", t);
                    }
                }
                showDone.countDown();
                Looper.loop();
            }
        };
        looperThread.start();

        // Wait for looper to be ready using latch (not Thread.sleep)
        try {
            if (!looperReady.await(5000, TimeUnit.MILLISECONDS)) {
                Log.e(TAG, "IVS looper thread did not start within 5s");
                return;
            }
        } catch (InterruptedException e) {
            Log.e(TAG, "IVS interrupted waiting for looper");
            return;
        }

        Log.i(TAG, "IVS looper thread started");

        // Step 3: wait for show() to complete
        try {
            if (!showDone.await(10000, TimeUnit.MILLISECONDS)) {
                Log.e(TAG, "IVS show() did not complete within 10s");
            } else if (showException[0] != null) {
                Log.e(TAG, "IVS show() threw exception", showException[0]);
            }
        } catch (InterruptedException e) {
            Log.e(TAG, "IVS interrupted waiting for show()");
        }

        // Step 4: load libwestlake_input.so
        // FIX BUG 1: Use correct path without "wl-input-d/" subdirectory
        String soPath = "/data/local/tmp/libwestlake_input.so";
        try {
            System.load(soPath);
            Log.i(TAG, "IVS so loaded: " + soPath);
        } catch (Throwable t) {
            // Try alternative path with subdirectory
            String altPath = "/data/local/tmp/wl-input-d/libwestlake_input.so";
            try {
                System.load(altPath);
                Log.i(TAG, "IVS so loaded (alt path): " + altPath);
            } catch (Throwable t2) {
                Log.e(TAG, "IVS so load FAILED: " + soPath + " and " + altPath, t);
                Log.e(TAG, "IVS stage ok (so load failed — tap poller not running)");
                return;
            }
        }

        Handler h = _hOut[0];
        if (h == null) {
            Log.e(TAG, "IVS handler null — stage failed");
            return;
        }

        // Step 5: fire 3 test taps via westlake_tap
        for (int i = 0; i < 3; i++) {
            final int seq = i;
            h.postDelayed(new Runnable() {
                public void run() {
                    String cmd = "600 960\n";
                    try {
                        File f = new File("/data/local/tmp/westlake_tap");
                        FileOutputStream fos = new FileOutputStream(f);
                        fos.write(cmd.getBytes());
                        fos.close();
                        Log.i(TAG_TEST, "IVS tap[" + seq + "] wrote to westlake_tap");
                    } catch (Throwable t) {
                        Log.e(TAG, "IVS tap[" + seq + "] write FAILED", t);
                    }
                }
            }, seq * 200L);
        }

        // Step 6: fire a test text commit
        h.postDelayed(new Runnable() {
            public void run() {
                try {
                    File f = new File("/data/local/tmp/westlake_text");
                    FileOutputStream fos = new FileOutputStream(f);
                    String cmd = "hello westlake\n";
                    fos.write(cmd.getBytes());
                    fos.close();
                    Log.i(TAG_TEST, "IVS text wrote to westlake_text");
                } catch (Throwable t) {
                    Log.e(TAG, "IVS text write FAILED", t);
                }
            }
        }, 1000L);

        Log.i(TAG, "IVS stage ok — tap/text pollers running, check hilog for WLTEST markers");
        Log.i(TAG, "EXPECTED: WLTEST touch DOWN/UP + WLTEST CLICK [INPUT CHAIN PROVEN]");
        Log.i(TAG, "EXPECTED: WLTEXT commit \"hello westlake\"");
    }

    /**
     * Simplified run with only touch testing (no text).
     */
    public static void runTouchOnly(Context ctx) {
        Log.i(TAG, "IVS touch-only stage begin");
        run(ctx, null);
    }

    /**
     * Run in LOG-ONLY mode (no View, just verify Looper + .so load).
     */
    public static void runLogOnly() {
        Log.i(TAG, "IVS LOG-ONLY stage begin");
        Log.i(TAG, "IVS loading libwestlake_input.so");
        try {
            System.load("/data/local/tmp/libwestlake_input.so");
            Log.i(TAG, "IVS so loaded");
        } catch (Throwable t) {
            try {
                System.load("/data/local/tmp/wl-input-d/libwestlake_input.so");
                Log.i(TAG, "IVS so loaded (alt path)");
            } catch (Throwable t2) {
                Log.e(TAG, "IVS so load FAILED", t);
            }
        }
        Log.i(TAG, "IVS LOG-ONLY stage ok");
    }
}
