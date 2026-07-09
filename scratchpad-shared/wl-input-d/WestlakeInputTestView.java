package adapter.window;

import android.content.Context;
import android.graphics.Color;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;

/**
 * WestlakeInputTestView — Agent-D. A self-contained clickable test surface to
 * PROVE the input chain end-to-end WITHOUT waiting on real framework-res inflate.
 *
 * Agent-C's decoupling insight: the render chain can be shown on a pure-color
 * view (needs only a bare Resources), before real inflate works. Same for the
 * INPUT chain — feed this as the DecorView:
 *
 *     View v = WestlakeInputTestView.make(ctx);
 *     WestlakeUpscreen.show(v, 1200, 1920);         // C: attach(minimal)+render
 *     ... ensureVelocityTrackerStub + ensureMotionEventStub ...
 *     // then: echo "600 960" > /data/local/tmp/westlake_tap
 *
 * On each tap it (a) Log.i's a distinctive marker AND (b) flips its background
 * color, so chain-proof.sh can confirm BOTH the log and a visible change. It
 * logs onTouch (down/up) and onClick separately so you can tell exactly how far
 * the chain got:
 *   - "WLTEST touch DOWN/UP" but no "WLTEST CLICK"  => dispatch works, click path
 *     broken (the mAttachInfo==null wall — check attachForInput ran).
 *   - no "WLTEST touch" at all                       => event never reached the
 *     view (pump/looper/coords/show-order problem).
 *
 * Uses only View/FrameLayout/Color/Log — no resources, no inflate, no theme.
 */
public final class WestlakeInputTestView {
    private static final String TAG = "WLTEST";
    private static final int COLOR_A = 0xFF3366CC; // blue
    private static final int COLOR_B = 0xFFCC5533; // orange
    private WestlakeInputTestView() {}

    /** Build the clickable test DecorView-substitute. */
    public static View make(Context ctx) {
        final FrameLayout root = new FrameLayout(ctx);
        root.setBackgroundColor(COLOR_A);
        final int[] state = {0};

        root.setClickable(true);
        root.setFocusable(true);
        root.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) {
                state[0] ^= 1;
                v.setBackgroundColor(state[0] == 0 ? COLOR_A : COLOR_B);
                // Emit the full "WLTEST CLICK" token IN THE MESSAGE so a grep for the
                // documented proof marker matches (logcat renders "TAG: message", so the
                // tag alone would not make "WLTEST CLICK" contiguous).
                Log.i(TAG, "WLTEST CLICK -> bg=" + (state[0] == 0 ? "A(blue)" : "B(orange)")
                        + "  [INPUT CHAIN PROVEN: touch reached onClick]");
            }
        });
        root.setOnTouchListener(new View.OnTouchListener() {
            @Override public boolean onTouch(View v, MotionEvent e) {
                int a = e.getActionMasked();
                String name = (a == MotionEvent.ACTION_DOWN) ? "DOWN"
                        : (a == MotionEvent.ACTION_UP) ? "UP"
                        : (a == MotionEvent.ACTION_MOVE) ? "MOVE"
                        : (a == MotionEvent.ACTION_CANCEL) ? "CANCEL" : ("act" + a);
                Log.i(TAG, "WLTEST touch " + name + " (" + e.getX() + "," + e.getY() + ")");
                return false; // don't consume — let the normal click path run
            }
        });
        return root;
    }
}
