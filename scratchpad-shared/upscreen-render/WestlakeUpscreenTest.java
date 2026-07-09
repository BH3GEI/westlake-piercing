package adapter.window;

/**
 * Minimal harness to test WestlakeUpscreen.injectTouch() on device.
 *
 * Run via B's embedded-art-dlopen-probe: add this class to the classpath
 * and call WestlakeUpscreenTest.run() from the probe's main.
 *
 * Expected output in probe log:
 *   WLTEST show=2, uiHandler=OK, decor=w:h
 *   WLTEST touch DOWN at 600,960
 *   WLTEST touch UP at 600,960
 *   WLTEST click handled=true
 *   WLTEST redraw OK
 */
public class WestlakeUpscreenTest {
    private static final String TAG = "WLTEST";

    public static void run(android.content.Context ctx) {
        android.os.Handler uiHandler = WestlakeUpscreen.uiHandler();
        android.os.Looper uiLooper = WestlakeUpscreen.uiLooper();
        log(TAG, "upscreen-api: uiHandler=" + (uiHandler != null)
            + ", uiLooper=" + (uiLooper != null));

        // Create a simple colored view to render
        android.view.View root = WestlakeUpscreen.pureColorView(ctx, 0xFF00FF00); // green
        log(TAG, "view created: " + root);

        // Show it
        int r = WestlakeUpscreen.show(root, 1200, 1920);
        log(TAG, "show result=" + r + " (2=on panel, 1=offscreen, 0=error)");

        // Verify handler now available
        uiHandler = WestlakeUpscreen.uiHandler();
        if (uiHandler == null) {
            log(TAG, "FAIL: uiHandler still null after show()");
            return;
        }
        log(TAG, "uiHandler OK after show");

        // Post a touch test to the UI thread
        uiHandler.post(() -> {
            try {
                // Small delay to let first frame settle
                Thread.sleep(100);

                long evMs = android.os.SystemClock.uptimeMillis();
                // Tap at center: 600, 960
                boolean down = WestlakeUpscreen.injectTouch(
                    android.view.MotionEvent.ACTION_DOWN, 600f, 960f, evMs);
                log(TAG, "touch DOWN at 600,960 -> handled=" + down);

                long evMs2 = android.os.SystemClock.uptimeMillis();
                boolean up = WestlakeUpscreen.injectTouch(
                    android.view.MotionEvent.ACTION_UP, 600f, 960f, evMs2);
                log(TAG, "touch UP at 600,960 -> handled=" + up);

                // Redraw after touch
                WestlakeUpscreen.requestRedraw();
                log(TAG, "redraw requested");

                // Now show red to confirm render still works
                android.view.View red = WestlakeUpscreen.pureColorView(ctx, 0xFFFF0000); // red
                int r2 = WestlakeUpscreen.show(red, 1200, 1920);
                log(TAG, "show red result=" + r2);

                log(TAG, "=== INJECT-TOUCH TEST COMPLETE ===");
            } catch (Exception e) {
                log(TAG, "EXCEPTION: " + e);
                e.printStackTrace();
            }
        });
    }

    private static void log(String tag, String msg) {
        android.util.Log.i(tag, msg);
        // Also echo to probe log via stderr
        System.err.println(tag + " " + msg);
    }
}
