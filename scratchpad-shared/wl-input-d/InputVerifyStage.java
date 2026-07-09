package adapter.window;

/**
 * InputVerifyStage — Agent-D3 (2026-07-08).
 *
 * Minimal input-chain verification harness that injects into the EXISTING
 * Dayu600ApkStageProbe embedded-VM run at line ~1356 (after framework setup,
 * before AppCompat theme wall at line 3145).
 *
 * This stage:
 *   1. Creates a WestlakeInputTestView from the probe's framework Context.
 *   2. Calls WestlakeUpscreen.show(view, 1200, 1920) — this needs a Looper thread.
 *      We use the probe's main thread Looper (Looper.prepareMainLooper / loop in a
 *      separate thread so we can send messages to it).
 *   3. Loads libwestlake_input.so — registers MotionEvent/VelocityTracker/KeyEvent
 *      native stubs and starts the westlake_tap poller on a native background thread.
 *   4. Posts 3 taps at (600,960) to westlake_tap (triggers poller → pump → show chain).
 *   5. Posts a text commit to westlake_text.
 *   6. Returns immediately (the Looper thread keeps running for the background taps).
 *
 * Board log markers (hilog /data/local/tmp/wl-input-harness.log):
 *   - "IVS stage begin" / "IVS show ret=N" / "IVS so loaded" / "IVS stage ok"
 *   - "WLTEST touch DOWN/UP" + "WLTEST CLICK" (proves full touch chain)
 *   - "WLTEXT commit" (proves text chain)
 *
 * Run from Dayu600ApkStageProbe.runResolved: insert after framework setup (line ~1356)
 * by adding this to the probe's switch/case or calling the static entry:
 *   adapter.window.InputVerifyStage.run(ctx, fwAmObj);
 */
public final class InputVerifyStage {
    private static final String TAG = "IVS";

    private InputVerifyStage() {}

    /**
     * Entry point. Call from the probe's embedded VM main thread.
     * @param ctx   framework Context (available after ctxAttach=OK in probe)
     * @param fwAmObj  framework ActivityManager object (unused, for signature compatibility)
     */
    public static void run(android.content.Context ctx, Object fwAmObj) {
        android.util.Log.i(TAG, "IVS stage begin, ctx=" + ctx);

        // --- Step 0: install WindowManager stub BEFORE any View construction ---
        // ViewConfiguration.<clinit> calls WindowManagerGlobal.getWindowManagerService()
        // which dereferences the returned IWindowManager without null check. On OHOS
        // DAYU600 there is no real window service, so inject a no-op proxy.
        installWindowManagerStub();

        // --- Step 1: create test View (no inflate, no theme needed) ---
        android.view.View testView = WestlakeInputTestView.make(ctx);
        android.util.Log.i(TAG, "IVS test view created");

        // --- Step 2: start Looper thread for show() + event dispatch ---
        // show() needs a Looper. Start a dedicated thread so the probe thread
        // can post to it and return immediately.
        final android.content.Context _ctx = ctx;
        final android.view.View _view = testView;
        final android.os.Handler[] _hOut = { null };
        Thread looperThread = new Thread("IVS-Looper") {
            public void run() {
                android.os.Looper.prepare();
                _hOut[0] = new android.os.Handler(android.os.Looper.myLooper());
                android.util.Log.i(TAG, "IVS looper ready, calling show()");
                try {
                    int r = WestlakeUpscreen.show(_view, 1200, 1920);
                    android.util.Log.i(TAG, "IVS show ret=" + r + " (2=on panel)");
                } catch (Throwable t) {
                    android.util.Log.e(TAG, "IVS show FAILED", t);
                }
                android.util.Log.i(TAG, "IVS show done, entering loop");
                android.os.Looper.loop(); // block here; harness keeps alive for tap events
            }
        };
        looperThread.start();

        // Give the Looper thread time to enter loop() and bind uiHandler
        try { Thread.sleep(500); } catch (InterruptedException ignored) {}

        android.util.Log.i(TAG, "IVS looper thread started");

        // --- Step 3: load libwestlake_input.so ---
        // JNI_OnLoad registers MotionEvent/VelocityTracker/KeyEvent stubs
        // and starts the /data/local/tmp/westlake_tap poller.
        String soPath = "/data/local/tmp/libwestlake_input.so";
        try {
            System.load(soPath);
            android.util.Log.i(TAG, "IVS so loaded: " + soPath);
        } catch (Throwable t) {
            android.util.Log.e(TAG, "IVS so load FAILED: " + soPath, t);
        }

        // --- Step 4: fire 3 test taps via westlake_tap (poller picks them up) ---
        // Each "X Y\n" in westlake_tap triggers one WestlakeTouchPump.tap(x,y) call
        // on the Looper thread → WestlakeUpscreen.injectTouch → decorView.dispatchTouchEvent.
        // WLTEST markers appear in hilog.
        android.os.Handler h = _hOut[0];
        if (h != null) {
            for (int i = 0; i < 3; i++) {
                final int seq = i;
                h.postDelayed(new Runnable() {
                    public void run() {
                        String cmd = "600 960\n";
                        try {
                            java.io.File f = new java.io.File("/data/local/tmp/westlake_tap");
                            java.io.FileOutputStream fos = new java.io.FileOutputStream(f);
                            fos.write(cmd.getBytes());
                            fos.close();
                            android.util.Log.i(TAG, "IVS tap[" + seq + "] wrote to westlake_tap");
                        } catch (Throwable t) {
                            android.util.Log.e(TAG, "IVS tap[" + seq + "] write FAILED", t);
                        }
                    }
                }, seq * 200L);
            }

            // --- Step 5: fire a text commit via westlake_text ---
            h.postDelayed(new Runnable() {
                public void run() {
                    String cmd = "hello westlake\n";
                    try {
                        java.io.File f = new java.io.File("/data/local/tmp/westlake_text");
                        java.io.FileOutputStream fos = new java.io.FileOutputStream(f);
                        fos.write(cmd.getBytes());
                        fos.close();
                        android.util.Log.i(TAG, "IVS text wrote to westlake_text");
                    } catch (Throwable t) {
                        android.util.Log.e(TAG, "IVS text write FAILED", t);
                    }
                }
            }, 1000L);
        }

        android.util.Log.i(TAG, "IVS stage ok — tap/text pollers running, check hilog for WLTEST/WLTEXT markers");
    }

    /**
     * Inject a no-op IWindowManager proxy into WindowManagerGlobal before any
     * View is constructed. On DAYU600 OHOS there is no real window service, so
     * ViewConfiguration.<clinit> dereferences a null service and SIGSEGVs.
     */
    private static void installWindowManagerStub() {
        try {
            Class<?> wmg = Class.forName("android.view.WindowManagerGlobal");
            java.lang.reflect.Field f = wmg.getDeclaredField("sWindowManagerService");
            f.setAccessible(true);
            Object proxy = westlake.adapter.window.WindowManagerAdapter.createProxy();
            f.set(null, proxy);
            android.util.Log.i(TAG, "IVS WM stub installed");
        } catch (NoSuchFieldException nsf) {
            // Some framework versions name it sWindowManager.
            try {
                Class<?> wmg = Class.forName("android.view.WindowManagerGlobal");
                java.lang.reflect.Field f = wmg.getDeclaredField("sWindowManager");
                f.setAccessible(true);
                Object proxy = westlake.adapter.window.WindowManagerAdapter.createProxy();
                f.set(null, proxy);
                android.util.Log.i(TAG, "IVS WM stub installed (sWindowManager)");
            } catch (Throwable t2) {
                android.util.Log.e(TAG, "IVS WM stub install FAILED (fallback)", t2);
            }
        } catch (Throwable t) {
            android.util.Log.e(TAG, "IVS WM stub install FAILED", t);
        }
    }

    /**
     * Standalone entry point for app_process64.
     *
     * app_process64 crashes in its Dayu600ApkStageProbe fast-path on the current
     * board image, but running a plain class main() works. This main bootstraps a
     * framework Context via ActivityThread.systemMain(), installs the WindowManager
     * stub, and drives the same input chain as {@link #run(Context,Object)}.
     */
    public static void main(String[] args) {
        android.util.Log.i(TAG, "IVS standalone main begin");
        try {
            installWindowManagerStub();

            Class<?> atCls = Class.forName("android.app.ActivityThread");
            Object at = null;
            try {
                at = atCls.getMethod("currentActivityThread").invoke(null);
            } catch (Throwable ignored) {}
            if (at == null) {
                android.util.Log.i(TAG, "IVS standalone: calling systemMain");
                at = atCls.getMethod("systemMain").invoke(null);
            }
            android.content.Context ctx = (android.content.Context)
                    atCls.getMethod("getSystemContext").invoke(at);
            android.util.Log.i(TAG, "IVS standalone ctx=" + ctx);

            run(ctx, null);

            // Keep the process alive long enough for the delayed taps/text to fire.
            android.util.Log.i(TAG, "IVS standalone: sleeping 15s for tap/text delivery");
            Thread.sleep(15000);
        } catch (Throwable t) {
            android.util.Log.e(TAG, "IVS standalone main FAILED", t);
        }
        android.util.Log.i(TAG, "IVS standalone main exit");
    }
}
