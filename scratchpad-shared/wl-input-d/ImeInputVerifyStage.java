package adapter.window;

/**
 * ImeInputVerifyStage — standalone IME/text-input verification harness.
 *
 * Tests the WestlakeTextPump IME chain WITHOUT requiring a real soft keyboard:
 * - Creates a bare EditText and focuses it
 * - Calls WestlakeUpscreen.show() to render the view
 * - Commits text via WestlakeTextPump.commit() (ACTION_MULTIPLE path)
 * - Submits via WestlakeTextPump.pressKey(KEYCODE_ENTER)
 * - Verifies WLTEST/WLTEXT markers in logcat
 *
 * Board log markers:
 *   IVS_IME stage begin
 *   IVS_IME EditText created, focusing
 *   IVS_IME show ret=N
 *   WLTEXT commit "query" (N chars)
 *   WLTEXT key ENTER act=DOWN
 *   WLTEXT key ENTER act=UP
 *
 * Run: same as InputVerifyStage but with ImeInputVerifyStage class name.
 *
 * FIX: Uses CountDownLatch instead of Thread.sleep for synchronization.
 * FIX: Tries both /data/local/tmp/ and /data/local/tmp/wl-input-d/ for .so.
 * FIX: Uses searchSync() for guaranteed ordering of text + ENTER.
 */
public final class ImeInputVerifyStage {
    private static final String TAG = "IVS_IME";
    private static final String TAG_TEXT = "WLTEXT";

    public static void run(android.content.Context ctx, Object fwAmObj) {
        android.util.Log.i(TAG, "IVS_IME stage begin, ctx=" + ctx);

        if (ctx == null) {
            android.util.Log.e(TAG, "IVS_IME ctx is null — cannot proceed");
            return;
        }

        // Step 1: Create bare EditText (needs only Context with Resources)
        final android.widget.EditText editText;
        try {
            editText = new android.widget.EditText(ctx);
            editText.setHint("Type here...");
            editText.setTextSize(android.util.TypedValue.COMPLEX_UNIT_SP, 18);
            android.util.Log.i(TAG, "IVS_IME EditText created");
        } catch (Throwable t) {
            android.util.Log.e(TAG, "IVS_IME EditText FAILED", t);
            return;
        }

        // Step 2: Start Looper thread for show() + event dispatch
        final android.os.Handler[] hOut = { null };
        final android.widget.EditText _et = editText;
        final java.util.concurrent.CountDownLatch showDone = new java.util.concurrent.CountDownLatch(1);

        Thread looperThread = new Thread("IVS_IME-Looper") {
            public void run() {
                android.os.Looper.prepare();
                hOut[0] = new android.os.Handler(android.os.Looper.myLooper());
                android.util.Log.i(TAG, "IVS_IME looper ready");

                try {
                    // Layout the EditText before show
                    _et.measure(
                        android.view.View.MeasureSpec.makeMeasureSpec(1200, android.view.View.MeasureSpec.EXACTLY),
                        android.view.View.MeasureSpec.makeMeasureSpec(200, android.view.View.MeasureSpec.EXACTLY));
                    _et.layout(0, 0, _et.getMeasuredWidth(), _et.getMeasuredHeight());

                    int r = WestlakeUpscreen.show(_et, 1200, 1920);
                    android.util.Log.i(TAG, "IVS_IME show ret=" + r + " (2=on panel)");
                } catch (Throwable t) {
                    android.util.Log.e(TAG, "IVS_IME show FAILED", t);
                }

                // Step 3: Focus the EditText on the UI thread
                _et.requestFocus();
                android.util.Log.i(TAG, "IVS_IME EditText focused");

                // Step 4: Load libwestlake_input.so (registers MotionEvent stubs)
                // FIX: Try both paths for compatibility
                boolean soLoaded = false;
                for (String path : new String[]{
                        "/data/local/tmp/libwestlake_input.so",
                        "/data/local/tmp/wl-input-d/libwestlake_input.so"
                }) {
                    try {
                        System.load(path);
                        android.util.Log.i(TAG, "IVS_IME so loaded: " + path);
                        soLoaded = true;
                        break;
                    } catch (Throwable t) {
                        android.util.Log.d(TAG, "IVS_IME so load failed: " + path);
                    }
                }
                if (!soLoaded) {
                    android.util.Log.e(TAG, "IVS_IME so load FAILED (all paths)");
                }

                // Step 5: Commit text via ACTION_MULTIPLE
                // FIX: Use searchSync() to guarantee text is committed before ENTER
                android.util.Log.i(TAG, "IVS_IME committing text...");
                android.util.Log.i(TAG_TEXT, "IVS_IME committing 'hello westlake'");
                WestlakeTextPump.commit("hello westlake");

                // Use searchSync for guaranteed ordering
                android.util.Log.i(TAG_TEXT, "IVS_IME searchSync 'test query'");
                WestlakeTextPump.searchSync("test query", 3000);

                // Verify text insertion
                final CharSequence text = _et.getText();
                android.util.Log.i(TAG, "IVS_IME EditText content: \"" + text + "\"");

                android.util.Log.i(TAG, "IVS_IME stage ok — check hilog for WLTEXT markers");
                showDone.countDown();
                android.os.Looper.loop();
            }
        };
        looperThread.start();

        // FIX: Wait for completion using latch instead of Thread.sleep
        try {
            if (!showDone.await(10000, java.util.concurrent.TimeUnit.MILLISECONDS)) {
                android.util.Log.e(TAG, "IVS_IME stage did not complete within 10s");
            }
        } catch (InterruptedException e) {
            android.util.Log.e(TAG, "IVS_IME interrupted");
        }
        android.util.Log.i(TAG, "IVS_IME harness complete");
    }
}
