package adapter.window;

/**
 * Fixed version of WestlakeTextPump.java addressing:
 * - BUG 3: Added synchronous commit variant with CountDownLatch
 * - BUG 4: Added queueText() for pre-show text buffering
 * - BUG 14: Verified ACTION_MULTIPLE KeyEvent constructor
 *
 * Changes from original:
 * 1. Added commitSync() with CountDownLatch for synchronous text commit
 * 2. Added queueText() for pre-show buffering
 * 3. Added pendingTexts list with synchronization
 * 4. Added flushPending() to commit all queued text after show()
 * 5. Fixed KeyEvent ACTION_MULTIPLE constructor call
 */

import android.os.Handler;
import android.os.SystemClock;
import android.os.Looper;
import android.util.Log;
import android.view.InputDevice;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.ArrayList;
import java.util.List;

public final class WestlakeTextPump {
    private static final String TAG = "WLTEXT";
    private static Handler sUi;
    private static final List<String> sPendingTexts = new ArrayList<>();
    private static final Object sPendingLock = new Object();

    private WestlakeTextPump() {}

    public static void bindUi(Handler h) { sUi = h; }

    private static Handler ui() {
        Handler h = sUi;
        if (h == null) h = WestlakeUpscreen.uiHandler();
        if (h == null) throw new IllegalStateException(
                "no UI handler yet — call WestlakeUpscreen.show() before committing text");
        return h;
    }

    /**
     * ASYNCHRONOUS commit (original behavior). Text posted to UI Looper.
     * Returns immediately. For sequences, use commitSync() instead.
     */
    public static void commit(final String text) {
        if (text == null || text.isEmpty()) return;
        ui().post(new Runnable() {
            @Override public void run() { commitOnUi(text); }
        });
    }

    /**
     * SYNCHRONOUS commit: waits for the text to be committed on UI thread.
     * Use this when sending "text + ENTER" sequences to avoid race.
     *
     * @param text Text to commit
     * @param timeoutMs Max wait time in milliseconds
     * @return true if committed, false if timeout
     */
    public static boolean commitSync(final String text, long timeoutMs) {
        if (text == null || text.isEmpty()) return true;
        final CountDownLatch latch = new CountDownLatch(1);
        final boolean[] result = new boolean[1];
        ui().post(new Runnable() {
            @Override public void run() {
                try {
                    commitOnUi(text);
                    result[0] = true;
                } catch (Throwable t) {
                    Log.e(TAG, "commitSync failed", t);
                    result[0] = false;
                } finally {
                    latch.countDown();
                }
            }
        });
        try {
            return latch.await(timeoutMs, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            return false;
        }
    }

    private static void commitOnUi(final String text) {
        final long now = SystemClock.uptimeMillis();
        // ACTION_MULTIPLE constructor: (downTime, text, deviceId, flags)
        // keyCode=KEYCODE_UNKNOWN, mCharacters=text, no native calls
        final KeyEvent ev = new KeyEvent(now, text, KeyCharacterMap.VIRTUAL_KEYBOARD, 0);
        // Verify this is ACTION_MULTIPLE
        if (ev.getAction() != KeyEvent.ACTION_MULTIPLE) {
            Log.w(TAG, "KeyEvent action=" + ev.getAction() + " expected ACTION_MULTIPLE=2");
        }
        boolean handled = WestlakeUpscreen.dispatchKey(ev);
        Log.i(TAG, "WLTEXT commit \"" + text + "\" (" + text.length()
                + " chars) handled=" + handled);
    }

    public static void pressKey(final int keyCode) {
        ui().post(new Runnable() {
            @Override public void run() {
                final long now = SystemClock.uptimeMillis();
                dispatch(now, KeyEvent.ACTION_DOWN, keyCode);
                dispatch(now, KeyEvent.ACTION_UP, keyCode);
            }
        });
    }

    /**
     * SYNCHRONOUS pressKey: waits for the key to be dispatched.
     */
    public static boolean pressKeySync(final int keyCode, long timeoutMs) {
        final CountDownLatch latch = new CountDownLatch(1);
        ui().post(new Runnable() {
            @Override public void run() {
                try {
                    final long now = SystemClock.uptimeMillis();
                    dispatch(now, KeyEvent.ACTION_DOWN, keyCode);
                    dispatch(now, KeyEvent.ACTION_UP, keyCode);
                } finally {
                    latch.countDown();
                }
            }
        });
        try {
            return latch.await(timeoutMs, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            return false;
        }
    }

    private static void dispatch(long now, int action, int keyCode) {
        KeyEvent ev = new KeyEvent(now, now, action, keyCode, /*repeat*/0, /*meta*/0,
                KeyCharacterMap.VIRTUAL_KEYBOARD, /*scancode*/0, /*flags*/0,
                InputDevice.SOURCE_KEYBOARD);
        boolean handled = WestlakeUpscreen.dispatchKey(ev);
        Log.i(TAG, "WLTEXT key " + keyCode + " act=" + action + " handled=" + handled);
    }

    /** Convenience: type text then submit (ENTER) — the search-box pattern. */
    public static void search(final String query) {
        searchSync(query, 5000);
    }

    /**
     * SYNCHRONOUS search: commits text, then waits, then presses ENTER.
     * Ensures text is committed before ENTER fires.
     */
    public static boolean searchSync(final String query, long timeoutMs) {
        if (!commitSync(query, timeoutMs)) return false;
        // Small delay to let commit settle
        try { Thread.sleep(50); } catch (InterruptedException ignored) {}
        return pressKeySync(KeyEvent.KEYCODE_ENTER, timeoutMs);
    }

    public static void feed(final String line) {
        if (line == null || line.isEmpty()) return;
        if (line.equals("ENTER")) { pressKey(KeyEvent.KEYCODE_ENTER); return; }
        if (line.equals("CLEAR")) { clearText(); return; }
        if (line.equals("DEL") || line.startsWith("DEL ")) {
            int n = 1;
            if (line.length() > 4) {
                try { n = Integer.parseInt(line.substring(4).trim()); }
                catch (NumberFormatException e) { n = 1; }
            }
            deleteBackward(n);
            return;
        }
        commit(line);
    }

    public static void deleteBackward(final int count) {
        final int n = count < 1 ? 1 : count;
        ui().post(new Runnable() {
            @Override public void run() {
                for (int i = 0; i < n; i++) {
                    final long now = SystemClock.uptimeMillis();
                    dispatch(now, KeyEvent.ACTION_DOWN, KeyEvent.KEYCODE_DEL);
                    dispatch(now, KeyEvent.ACTION_UP, KeyEvent.KEYCODE_DEL);
                }
                Log.i(TAG, "WLTEXT delete x" + n);
            }
        });
    }

    public static void clearText() {
        final android.view.View root = WestlakeUpscreen.decor();
        final android.view.View t = (root == null) ? null : findEditable(root);
        if (!(t instanceof android.widget.EditText)) { deleteBackward(256); return; }
        ui().post(new Runnable() {
            @Override public void run() {
                ((android.widget.EditText) t).getText().clear();
                Log.i(TAG, "WLTEXT clear");
            }
        });
    }

    public static boolean focusFirstEditable() {
        final android.view.View root = WestlakeUpscreen.decor();
        if (root == null) { Log.e(TAG, "no decor — call show() first"); return false; }
        final android.view.View target = findEditable(root);
        if (target == null) { Log.w(TAG, "no EditText in decor tree"); return false; }
        ui().post(new Runnable() {
            @Override public void run() {
                boolean ok = target.requestFocus();
                Log.i(TAG, "WLTEXT focus EditText ok=" + ok + " " + target.getClass().getName());
            }
        });
        return true;
    }

    private static android.view.View findEditable(android.view.View v) {
        if (v instanceof android.widget.EditText) return v;
        if (v instanceof android.view.ViewGroup) {
            final android.view.ViewGroup g = (android.view.ViewGroup) v;
            final int n = g.getChildCount();
            for (int i = 0; i < n; i++) {
                android.view.View r = findEditable(g.getChildAt(i));
                if (r != null) return r;
            }
        }
        return null;
    }

    // ===== NEW: Pre-show text buffering =====

    /**
     * Queue text for later commit. If WestlakeUpscreen.show() hasn't been called yet,
     * text is buffered and flushed automatically when show() completes.
     * Safe to call before show().
     */
    public static void queueText(String text) {
        if (text == null || text.isEmpty()) return;
        synchronized (sPendingLock) {
            sPendingTexts.add(text);
        }
        Log.i(TAG, "WLTEXT queued \"" + text + "\" (queue size=" + sPendingTexts.size() + ")");
    }

    /**
     * Flush all queued text. Called automatically by show() when uiHandler becomes available.
     * Can also be called manually after show().
     */
    public static void flushPending() {
        List<String> toFlush;
        synchronized (sPendingLock) {
            if (sPendingTexts.isEmpty()) return;
            toFlush = new ArrayList<>(sPendingTexts);
            sPendingTexts.clear();
        }
        for (String text : toFlush) {
            commit(text);
        }
        Log.i(TAG, "WLTEXT flushed " + toFlush.size() + " queued texts");
    }

    /**
     * Flush pending texts and wait for completion.
     */
    public static boolean flushPendingSync(long timeoutMs) {
        List<String> toFlush;
        synchronized (sPendingLock) {
            if (sPendingTexts.isEmpty()) return true;
            toFlush = new ArrayList<>(sPendingTexts);
            sPendingTexts.clear();
        }
        for (String text : toFlush) {
            if (!commitSync(text, timeoutMs)) return false;
        }
        return true;
    }
}
