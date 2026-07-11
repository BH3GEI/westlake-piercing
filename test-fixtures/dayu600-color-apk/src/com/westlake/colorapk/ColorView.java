package com.westlake.colorapk;

import android.content.Context;
import android.graphics.Canvas;
import android.view.View;

/**
 * The APK's OWN render code. The color pixels on the panel are produced by THIS
 * class's onDraw() issuing an Android Canvas.drawColor() op — recorded into the
 * app's RenderNode display list and rasterized by libhwui (skia). OpenHarmony only
 * composites the resulting buffer to the panel; it does NOT fill the color.
 *
 * The color cycles (nextColor) so the on-screen change is undeniable proof that the
 * Android app stack is alive and driving the pixels — not a one-shot native fill.
 *
 * No resources, no fonts, no vector drawables: the only framework native this touches
 * is Canvas.drawColor (nDrawColor), which the substrate interpreter already binds.
 */
public class ColorView extends View {

    // App-defined palette. Distinct channel values so a panel-buffer readback can be
    // matched unambiguously against the app's currently-set color (provenance oracle).
    public static final int[] PALETTE = new int[] {
        0xFFFF0000, // red
        0xFF00FF00, // green
        0xFFFF00FF, // magenta
        0xFFFFFF00, // yellow
    };

    private int mIndex = 0;
    public int mColor = PALETTE[0];

    public ColorView(Context context) {
        super(context);
    }

    /** Advance to the next palette color and request a redraw. Called by the driver. */
    public int nextColor() {
        mIndex = (mIndex + 1) % PALETTE.length;
        mColor = PALETTE[mIndex];
        invalidate();
        return mColor;
    }

    /** Set an explicit ARGB color and request a redraw. */
    public void setColor(int argb) {
        mColor = argb;
        invalidate();
    }

    public int currentColor() {
        return mColor;
    }

    @Override
    protected void onDraw(Canvas canvas) {
        // THE app-issued Android draw op. This is what produces the pixels.
        canvas.drawColor(mColor);
    }
}
