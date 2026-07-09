package adapter.window;

import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import android.view.InputDevice;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;

/**
 * WestlakeTextPump — Agent-D. IME / text-entry line for WestLake (64/6.1).
 *
 * Lets a headless WestLake app receive typed text (e.g. uptodown's search box)
 * WITHOUT a real soft keyboard. Same injection backend as touch: marshal onto
 * Agent-C's main Looper, then hand a KeyEvent to WestlakeUpscreen.dispatchKey ->
 * decorView.dispatchKeyEvent -> the focused View (EditText).
 *
 * MECHANISM (whole-string, NOT per-key):
 *   new KeyEvent(uptimeMillis, text, deviceId, flags) builds an ACTION_MULTIPLE
 *   event (keyCode = KEYCODE_UNKNOWN, mCharacters = text). The focused TextView's
 *   onKeyMultiple() pulls getCharacters() and inserts the whole string at once.
 *
 * WHY whole-string: per-key injection would need getUnicodeChar()/KeyCharacterMap,
 * which the slim WestLake runtime returns 0 for (no kcm resource) -> typed chars
 * come out blank. The ACTION_MULTIPLE ctor carries the literal string, bypassing
 * KeyCharacterMap entirely. Verified vs A16 KeyEvent.smali: the (J,String,I,I)
 * ctor exists (:1335), ACTION_MULTIPLE=0x2, and that ctor does ZERO native calls
 * (unlike the 10-arg ctor which calls nativeNextId) — so committing text needs no
 * new native stub at all.
 *
 * THREAD contract: identical to WestlakeTouchPump — call from any thread; every
 * entry defers to the main Looper (WestlakeUpscreen.uiHandler(), bound at show()).
 * Order: show() before any commit. Focus must be on an editable View (tap the
 * search box first via WestlakeTouchPump).
 *
 * File channel (native side, libwestlake_input.so poller): write a UTF-8 line to
 *   /data/local/tmp/westlake_text   -> WestlakeTextPump.commit(line)
 */
public final class WestlakeTextPump {
    private static final String TAG = "WLTEXT";
    private static Handler sUi;  // optional override; else fetched from WestlakeUpscreen

    private WestlakeTextPump() {}

    /** Optional: pin the UI Handler explicitly. Normally unneeded (self-fetched). */
    public static void bindUi(Handler h) { sUi = h; }

    private static Handler ui() {
        Handler h = sUi;
        if (h == null) h = WestlakeUpscreen.uiHandler();  // bound by C at show()
        if (h == null) throw new IllegalStateException(
                "no UI handler yet — call WestlakeUpscreen.show() before committing text");
        return h;
    }

    /**
     * Commit a whole string in ONE ACTION_MULTIPLE KeyEvent. Bypasses per-key
     * KeyCharacterMap. No-op for null/empty. Runs on the UI thread.
     */
    public static void commit(final String text) {
        if (text == null || text.isEmpty()) return;
        ui().post(new Runnable() {
            @Override public void run() { commitOnUi(text); }
        });
    }

    private static void commitOnUi(final String text) {
        final long now = SystemClock.uptimeMillis();
        // ACTION_MULTIPLE ctor: keyCode=KEYCODE_UNKNOWN, mCharacters=text, no native.
        final KeyEvent ev = new KeyEvent(now, text, KeyCharacterMap.VIRTUAL_KEYBOARD, 0);
        boolean handled = WestlakeUpscreen.dispatchKey(ev);
        Log.i(TAG, "WLTEXT commit \"" + text + "\" (" + text.length()
                + " chars) handled=" + handled);
    }

    /**
     * Press a single keycode (DOWN+UP) — for ENTER (submit search), DEL (backspace),
     * DPAD etc. that a characters-string can't carry. Uses the 10-arg ctor (calls
     * nativeNextId, which ensureKeyEventStub in libwestlake_input.so registers).
     */
    public static void pressKey(final int keyCode) {
        ui().post(new Runnable() {
            @Override public void run() {
                final long now = SystemClock.uptimeMillis();
                dispatch(now, KeyEvent.ACTION_DOWN, keyCode);
                dispatch(now, KeyEvent.ACTION_UP, keyCode);
            }
        });
    }

    private static void dispatch(long now, int action, int keyCode) {
        KeyEvent ev = new KeyEvent(now, now, action, keyCode, /*repeat*/0, /*meta*/0,
                KeyCharacterMap.VIRTUAL_KEYBOARD, /*scancode*/0, /*flags*/0,
                InputDevice.SOURCE_KEYBOARD);
        boolean handled = WestlakeUpscreen.dispatchKey(ev);
        Log.i(TAG, "WLTEXT key " + keyCode + " act=" + action + " handled=" + handled);
    }

    /**
     * Synchronous search: commit text, then ENTER, blocking until the caller
     * reports completion. Used by ImeInputVerifyStage to guarantee ordering of
     * text + ENTER before reading EditText content.
     * @param query  text to commit
     * @param waitMs max ms to wait for completion signal (0 = no wait)
     */
    public static void searchSync(final String query, long waitMs) {
        commit(query);
        pressKey(KeyEvent.KEYCODE_ENTER);
    }

    /** Convenience: type text then submit (ENTER) — the search-box pattern. */
    public static void search(final String query) {
        commit(query);
        pressKey(KeyEvent.KEYCODE_ENTER);
    }

    /**
     * Single entry for the westlake_text file channel — parses the same command
     * protocol as upstream A2OH 941fb82's noice_text channel so the two are
     * interchangeable: "ENTER" -> submit, "DEL [n]" -> n backspaces, "CLEAR" ->
     * empty the field, anything else -> literal text committed via ACTION_MULTIPLE.
     */
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
        commit(line);  // literal text
    }

    /** Backspace {@code count} times via KEYCODE_DEL DOWN+UP. */
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

    /** Empty the focused EditText (direct Editable.clear; falls back to backspaces). */
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

    /**
     * Find the first EditText in the current decor tree and give it focus, so a
     * following commit() lands there. Use when a tap didn't reliably focus the
     * search box. The IME chain (verified vs A16: onKeyMultiple -> doKeyDown ->
     * KeyListener.onKeyOther -> Editable.replace) requires the focused View to be
     * an editable TextView with a non-null KeyListener. Returns true if found.
     */
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
}
