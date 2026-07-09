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
 *   adapter.window.InputVerifyStage.run(ctx, fwAmObj)
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
        // Defensive: the probe's classloader-only path may pass null Context.
        // Without a Context we cannot construct Views, but we can still verify
        // the native input .so loads and the westlake_tap channel is reachable.
        if (ctx == null) {
            safeLog(TAG, "IVS stage begin, ctx=NULL");
            safeLog(TAG, "IVS ABORT: null Context; loading native .so only, then returning");
            loadInputSo();
            return;
        }

        safeLog(TAG, "IVS stage begin, ctx=" + ctx.getClass().getName());

        // --- Step 0: install WindowManager stub BEFORE any View construction ---
        // ViewConfiguration.<clinit> calls WindowManagerGlobal.getWindowManagerService()
        // which dereferences the returned IWindowManager without null check. On OHOS
        // DAYU600 there is no real window service, so inject a no-op proxy.
        installWindowManagerStub();

        // --- Step 1: create test View (no inflate, no theme needed) ---
        android.view.View testView = WestlakeInputTestView.make(ctx);
        safeLog(TAG, "IVS test view created");

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
                safeLog(TAG, "IVS looper ready, calling show()");
                try {
                    int r = WestlakeUpscreen.show(_view, 1200, 1920);
                    safeLog(TAG, "IVS show ret=" + r + " (2=on panel)");
                } catch (Throwable t) {
                    safeLog(TAG, "IVS show FAILED: " + t);
                }
                safeLog(TAG, "IVS show done, entering loop");
                android.os.Looper.loop(); // block here; harness keeps alive for tap events
            }
        };
        looperThread.start();

        // Give the Looper thread time to enter loop() and bind uiHandler
        try { Thread.sleep(500); } catch (InterruptedException ignored) {}

        safeLog(TAG, "IVS looper thread started");

        // --- Step 3: load libwestlake_input.so ---
        loadInputSo();

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
                        writeFile("/data/local/tmp/westlake_tap", "600 960\n", "tap[" + seq + "]");
                    }
                }, seq * 200L);
            }

            // --- Step 5: fire a text commit via westlake_text ---
            h.postDelayed(new Runnable() {
                public void run() {
                    writeFile("/data/local/tmp/westlake_text", "hello westlake\n", "text");
                }
            }, 1000L);
        }

        safeLog(TAG, "IVS stage ok — tap/text pollers running, check hilog for WLTEST/WLTEXT markers");
    }

    private static void loadInputSo() {
        String soPath = "/data/local/tmp/libwestlake_input.so";
        try {
            System.load(soPath);
            safeLog(TAG, "IVS so loaded: " + soPath);
        } catch (Throwable t) {
            safeLog(TAG, "IVS so load FAILED: " + soPath + " " + t);
        }
    }

    private static void writeFile(String path, String cmd, String label) {
        try {
            java.io.File f = new java.io.File(path);
            java.io.FileOutputStream fos = new java.io.FileOutputStream(f);
            fos.write(cmd.getBytes());
            fos.close();
            safeLog(TAG, "IVS " + label + " wrote to " + path);
        } catch (Throwable t) {
            safeLog(TAG, "IVS " + label + " write FAILED: " + t);
        }
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
            safeLog(TAG, "IVS WM stub installed");
        } catch (NoSuchFieldException nsf) {
            // Some framework versions name it sWindowManager.
            try {
                Class<?> wmg = Class.forName("android.view.WindowManagerGlobal");
                java.lang.reflect.Field f = wmg.getDeclaredField("sWindowManager");
                f.setAccessible(true);
                Object proxy = westlake.adapter.window.WindowManagerAdapter.createProxy();
                f.set(null, proxy);
                safeLog(TAG, "IVS WM stub installed (sWindowManager)");
            } catch (Throwable t2) {
                safeLog(TAG, "IVS WM stub install FAILED (fallback): " + t2);
            }
        } catch (Throwable t) {
            safeLog(TAG, "IVS WM stub install FAILED: " + t);
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
        safeLog(TAG, "IVS standalone main begin");
        try {
            installWindowManagerStub();

            Class<?> atCls = Class.forName("android.app.ActivityThread");
            Object at = null;
            try {
                at = atCls.getMethod("currentActivityThread").invoke(null);
            } catch (Throwable ignored) {}
            if (at == null) {
                safeLog(TAG, "IVS standalone: calling systemMain");
                at = atCls.getMethod("systemMain").invoke(null);
            }
            android.content.Context ctx = (android.content.Context)
                    atCls.getMethod("getSystemContext").invoke(at);
            safeLog(TAG, "IVS standalone ctx=" + ctx);

            run(ctx, null);

            // Keep the process alive long enough for the delayed taps/text to fire.
            safeLog(TAG, "IVS standalone: sleeping 15s for tap/text delivery");
            Thread.sleep(15000);
        } catch (Throwable t) {
            safeLog(TAG, "IVS standalone main FAILED: " + t);
        }
        safeLog(TAG, "IVS standalone main exit");
    }

    /**
     * Logging helper that writes to System.err as a fallback when android.util.Log
     * may be patched/unavailable or when the message/tag could be null.
     */
    private static void safeLog(String tag, String msg) {
        String line = "[" + (tag == null ? "IVS" : tag) + "] " + (msg == null ? "null" : msg);
        try {
            System.err.println(line);
        } catch (Throwable __e) {}
        try {
            android.util.Log.i(tag == null ? "IVS" : tag, msg == null ? "null" : msg);
        } catch (Throwable __e) {
            // Framework Log may be broken on this substrate; System.err is the oracle.
        }
    }
}
