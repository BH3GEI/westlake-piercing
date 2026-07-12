package com.gltri.demo;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.view.View;

/**
 * The APK's OWN render code — a rich, anti-aliased, animated "aurora gauge" dashboard.
 *
 * This is the Android-APK proof that the real Android View/Canvas/RenderNode stack drives the
 * DAYU600 panel: onDraw() issues real Android Canvas ops recorded into the app's RenderNode
 * display list and rasterised by libhwui (skia) on the RenderThread. OpenHarmony only composites
 * the resulting buffer; it draws none of this.
 *
 * FILL-ONLY palette (every op dispatch-verified bound + crash-safe on this substrate, all AA):
 *   drawOval      -> circles / rings / dots / needle-dots   (VJFFFFJ, bound)
 *   drawRoundRect -> cards / pills / bars / ticks            (VJFFFFFFJ, bound)
 *   drawRect      -> panels                                   (VJFFFFJ, bound)
 *   drawColor     -> backdrop                                 (VJII, bound)
 * The DAYU600 ART interpreter binds JNI natives by shorty-arm; drawCircle/drawArc/drawPath/
 * drawVertices silently no-op, and — critically — Paint.nSetStrokeWidth is an UNHANDLED
 * @CriticalNative (VJF) whose fallback corrupts state and SIGBUSes when hammered per-frame.
 * So this scene uses NO stroke paint and NO drawLine at all: a circle is a square-bounds
 * drawOval, a ring is an outer oval fill then an inner oval in the backdrop colour, a needle
 * is a tapered row of drawOval dots, a tick is a tiny drawRoundRect. Result: smooth edges,
 * ~90 GPU draw calls per frame -> comfortable 60fps, and zero unhandled-native calls.
 *
 * The animation clock is kept in int (mAngleDeg / mTick): this ART's iput-float and reflective
 * set/getFloat silently no-op, while int fields write correctly.
 *
 * mMode < 0 draws the dashboard. mMode >= 0 selects the capability probe. The provenance anchor
 * is the centre hub disc, whose colour == the app's mColor (cycles every 8 frames) => the panel's
 * exact centre pixel IS the app's state.
 */
public class TriangleView extends View {

    // App-defined palette; distinct channels so a readback of the centre hub matches the app's
    // current colour unambiguously (provenance oracle).
    public static final int[] PALETTE = new int[] {
        0xFFFF3B30, // red
        0xFF34C759, // green
        0xFF3A8CFF, // blue
        0xFFFFCC00, // amber
    };

    // Scene accent colours.
    private static final int BG    = 0xFF0B0E1A;
    private static final int PANEL = 0xFF0E1226;
    private static final int GLOW  = 0xFF141A34;
    private static final int CARD  = 0xFF161C34;
    private static final int TRACK = 0xFF232A45;
    private static final int LINE  = 0xFF39406A;
    private static final int CYAN  = 0xFF37C0FF;
    private static final int MAG   = 0xFFFF4FA0;
    private static final int GRN   = 0xFF34C759;
    private static final int AMB   = 0xFFFFCC00;
    private static final int PUR   = 0xFFB06CFF;
    private static final int[] ACCENT = { CYAN, MAG, GRN, AMB, PUR };

    // Not final / lazily created: unsafe-alloc (no ctor) on this substrate skips field inits.
    private Paint mPaint;   // FILL only — this substrate has no usable stroke width
    private Path  mPath;    // (capability probe only)
    private Bitmap mIcon;   // cached raster bitmap for the drawBitmap proof overlay

    private int   mIndex = 0;
    private int   mTick  = 0;
    public  int   mColor = PALETTE[0];
    public  int   mAngleDeg = 0;   // int clock (float fields no-op on this ART)
    public  int   mMode     = -1;  // <0 = scene; >=0 = capability probe op selector
    public  int   mExpected = 0;
    private int   mW = 1200, mH = 1920;

    public TriangleView(Context context) { super(context); ensurePaint(); }

    private void ensurePaint() {
        if (mPaint == null) { mPaint = new Paint(Paint.ANTI_ALIAS_FLAG); mPaint.setStyle(Paint.Style.FILL); }
        if (mPath == null) mPath = new Path();
        // Cache a small solid raster once (per-frame createBitmap would pressure the skia atlas). If
        // this substrate's Bitmap.nativeCreate is unbound the handle stays null and the drawBitmap
        // overlay is simply skipped — never a crash.
        if (mIcon == null) {
            try {
                int iw = 96, ih = 96;
                int[] ipx = new int[iw * ih];
                for (int i = 0; i < ipx.length; i++) ipx[i] = MAG;
                mIcon = Bitmap.createBitmap(ipx, iw, ih, Bitmap.Config.ARGB_8888);
            } catch (Throwable ig) { mIcon = null; }
        }
    }

    private Paint fill(int color) { mPaint.setColor(color); return mPaint; }

    /** A filled circle, composed from the bound drawOval (drawCircle is a no-op here). */
    private void disc(Canvas c, float cx, float cy, float r, int color) {
        c.drawOval(cx - r, cy - r, cx + r, cy + r, fill(color));
    }
    /** A thin ring: outer disc then inner disc in a backdrop colour (drawArc is a no-op here). */
    private void ring(Canvas c, float cx, float cy, float r, float width, int color, int bg) {
        disc(c, cx, cy, r, color);
        disc(c, cx, cy, r - width, bg);
    }
    /** A tapered "needle": a row of shrinking drawOval dots from centre outward (no drawLine). */
    private void needle(Canvas c, float cx, float cy, float len, int deg, float baseR, int color) {
        double a = Math.toRadians(deg - 90);
        float ca = (float) Math.cos(a), sa = (float) Math.sin(a);
        for (int i = 1; i <= 12; i++) {
            float t = i / 12f;
            disc(c, cx + ca * len * t, cy + sa * len * t, baseR * (1f - 0.55f * t), color);
        }
    }

    /** Advance one animation step: spin, cycle colour, request a redraw. */
    public int nextFrame() {
        mAngleDeg += 6;
        if (mAngleDeg >= 360) mAngleDeg -= 360;
        mTick++;
        if (mTick % 8 == 0) { mIndex = (mIndex + 1) % PALETTE.length; mColor = PALETTE[mIndex]; }
        invalidate();
        return mColor;
    }

    public void setFrame(float angleDeg, int argb) { mAngleDeg = (int) angleDeg; mColor = argb; invalidate(); }
    public void setSize(int w, int h) { if (w > 0) mW = w; if (h > 0) mH = h; }
    public int currentColor() { return mColor; }

    @Override
    protected void onDraw(Canvas canvas) {
        ensurePaint();
        int w = canvas.getWidth();  if (w <= 0) w = mW;
        int h = canvas.getHeight(); if (h <= 0) h = mH;
        float cx = w * 0.5f, cy = h * 0.5f;
        canvas.drawColor(BG);
        if (mMode >= 0) { drawCapabilityProbe(canvas, w, h, cx, cy); return; }
        drawScene(canvas, w, h, cx, cy);
    }

    // ------------------------------------------------------------------ the scene (fill-only)

    private void drawScene(Canvas canvas, int w, int h, float cx, float cy) {
        float u = Math.min(w, h);
        int   ang = mAngleDeg;

        // 1) Glass backing panel.
        canvas.drawRoundRect(cx - u * 0.46f, u * 0.03f, cx + u * 0.46f, h - u * 0.03f,
                u * 0.05f, u * 0.05f, fill(PANEL));

        // 2) Top status card: LED (cycles with app colour) + two "text" bars (thin roundrects).
        float tcT = cy - u * 0.64f, tcB = cy - u * 0.50f;
        canvas.drawRoundRect(cx - u * 0.34f, tcT, cx + u * 0.34f, tcB, u * 0.02f, u * 0.02f, fill(CARD));
        disc(canvas, cx - u * 0.28f, (tcT + tcB) * 0.5f, u * 0.028f, mColor);
        canvas.drawRoundRect(cx - u * 0.22f, tcT + u * 0.040f, cx + u * 0.10f, tcT + u * 0.052f,
                u * 0.006f, u * 0.006f, fill(CYAN));
        canvas.drawRoundRect(cx - u * 0.22f, tcT + u * 0.082f, cx - u * 0.02f, tcT + u * 0.092f,
                u * 0.005f, u * 0.005f, fill(LINE));

        // 3) Central gauge — glow + concentric AA rings.
        disc(canvas, cx, cy, u * 0.42f, GLOW);
        ring(canvas, cx, cy, u * 0.42f, u * 0.014f, 0xFF1C2440, GLOW);
        ring(canvas, cx, cy, u * 0.40f, u * 0.006f, CYAN,       GLOW);
        ring(canvas, cx, cy, u * 0.30f, u * 0.004f, TRACK,      GLOW);
        ring(canvas, cx, cy, u * 0.22f, u * 0.004f, MAG,        GLOW);

        // 4) 24 tick dots; every 6th is larger + brighter (major).
        for (int k = 0; k < 24; k++) {
            double a = Math.toRadians(k * 15);
            boolean major = (k % 6 == 0);
            float r = u * 0.36f;
            disc(canvas, cx + (float) Math.cos(a) * r, cy + (float) Math.sin(a) * r,
                    u * (major ? 0.010f : 0.005f), major ? CYAN : LINE);
        }

        // 5) Rotating needle + a faster secondary sweep hand (both tapered dot rows), UNDER the hub.
        needle(canvas, cx, cy, u * 0.38f, ang,        u * 0.014f, AMB);
        needle(canvas, cx, cy, u * 0.28f, ang * 3,    u * 0.009f, MAG);

        // 6) Orbiting dots riding the outer track, colour-cycling.
        for (int k = 0; k < 8; k++) {
            double a = Math.toRadians(ang + k * 45);
            disc(canvas, cx + (float) Math.cos(a) * u * 0.33f, cy + (float) Math.sin(a) * u * 0.33f,
                    u * (0.010f + 0.010f * ((k % 4) / 3f)), ACCENT[(k + mIndex) % ACCENT.length]);
        }

        // 7) Centre hub — provenance anchor: the exact centre pixel == the app's mColor.
        disc(canvas, cx, cy, u * 0.055f, mColor);
        ring(canvas, cx, cy, u * 0.055f, u * 0.008f, 0xFFFFFFFF, mColor);

        // 8) Three metric cards along the bottom, each with an icon dot + an animated mini-bar.
        float y0 = cy + u * 0.47f, y1 = cy + u * 0.57f;
        for (int k = 0; k < 3; k++) {
            float x0 = cx - u * 0.36f + k * u * 0.245f, x1 = x0 + u * 0.205f;
            int acc = ACCENT[(k + mIndex) % ACCENT.length];
            canvas.drawRoundRect(x0, y0, x1, y1, u * 0.014f, u * 0.014f, fill(CARD));
            disc(canvas, x0 + u * 0.032f, y0 + u * 0.030f, u * 0.016f, acc);
            float p = ((mTick + k * 17) % 60) / 60f;
            float bx0 = x0 + u * 0.020f, bx1 = x1 - u * 0.020f, by = y1 - u * 0.028f;
            canvas.drawRoundRect(bx0, by, bx1, by + u * 0.012f, u * 0.006f, u * 0.006f, fill(TRACK));
            canvas.drawRoundRect(bx0, by, bx0 + (bx1 - bx0) * p, by + u * 0.012f,
                    u * 0.006f, u * 0.006f, fill(acc));
        }

        // 9) Master progress bar (track + fill + moving thumb).
        float barL = cx - u * 0.34f, barR = cx + u * 0.34f, barT = cy + u * 0.60f, barB = barT + u * 0.020f;
        float prog = (mTick % 90) / 90f;
        canvas.drawRoundRect(barL, barT, barR, barB, u * 0.010f, u * 0.010f, fill(TRACK));
        canvas.drawRoundRect(barL, barT, barL + (barR - barL) * prog, barB, u * 0.010f, u * 0.010f, fill(CYAN));
        disc(canvas, barL + (barR - barL) * prog, (barT + barB) * 0.5f, u * 0.016f, 0xFFFFFFFF);

        // 10) Equalizer row: 14 bars whose heights breathe with the animation phase.
        int bars = 14;
        float eqL = cx - u * 0.40f, eqW = (u * 0.80f) / bars, eqBase = cy + u * 0.72f;
        for (int k = 0; k < bars; k++) {
            float amp = (float) Math.abs(Math.sin(Math.toRadians(ang * 2 + k * 32)));
            float bh = u * (0.014f + 0.055f * amp);
            canvas.drawRoundRect(eqL + k * eqW + eqW * 0.18f, eqBase - bh,
                    eqL + (k + 1) * eqW - eqW * 0.18f, eqBase, u * 0.006f, u * 0.006f,
                    fill(ACCENT[(k + mIndex) % ACCENT.length]));
        }

        // 11) [drawop proof overlay] The NEW interpreter arms in action: a filled Path chevron
        //     (drawPath) and a raster Bitmap chip (drawBitmap) — BOTH silent no-ops before this
        //     session's ART arms. Drawn last so they sit on top of the dashboard. By the time the
        //     hold phase renders, the capability probe has already exercised both ops crash-free, so
        //     this overlay cannot introduce a new native failure. Its presence on the panel photo is
        //     the visual twin of the numeric "cap 6 drawPath OK / cap 9 drawBitmap OK" evidence.
        float bx = cx, by = cy - u * 0.845f;
        mPath.reset();
        mPath.moveTo(bx, by - u * 0.055f);
        mPath.lineTo(bx + u * 0.060f, by + u * 0.040f);
        mPath.lineTo(bx, by + u * 0.018f);
        mPath.lineTo(bx - u * 0.060f, by + u * 0.040f);
        mPath.close();
        canvas.drawPath(mPath, fill(CYAN));
        if (mIcon != null) {
            canvas.drawBitmap(mIcon, cx + u * 0.16f, by - u * 0.05f, null);
        }
    }

    // ------------------------------------------------------------- capability probe

    /**
     * Draw exactly ONE candidate Canvas op, center-covering, in a known colour; record it in
     * mExpected. A driver reads back the panel center pixel: pixel==mExpected => the op paints.
     * Uses a FILL paint throughout (no setStrokeWidth — that op is an unhandled @CriticalNative
     * that SIGBUSes when hammered). No shader/bitmap op is probed (null-handle shader SIGSEGVs
     * skia). Unbound ops here at worst no-op safely, leaving the backdrop at centre.
     */
    private void drawCapabilityProbe(Canvas canvas, int w, int h, float cx, float cy) {
        float R = Math.min(w, h) * 0.42f;
        switch (mMode) {
            case 0:  mExpected = 0xFF008080;   // drawRect (control)
                canvas.drawRect(cx - R, cy - R, cx + R, cy + R, fill(mExpected)); break;
            case 1:  mExpected = 0xFFE01050;   // drawCircle (expected no-op)
                canvas.drawCircle(cx, cy, R, fill(mExpected)); break;
            case 2:  mExpected = 0xFF10E050;   // drawOval
                canvas.drawOval(cx - R, cy - R, cx + R, cy + R, fill(mExpected)); break;
            case 3:  mExpected = 0xFF3050FF;   // drawRoundRect
                canvas.drawRoundRect(cx - R, cy - R, cx + R, cy + R, 60f, 60f, fill(mExpected)); break;
            case 4:  mExpected = 0xFFFFC020;   // drawArc useCenter (expected no-op)
                canvas.drawArc(cx - R, cy - R, cx + R, cy + R, 0f, 360f, true, fill(mExpected)); break;
            case 5:  mExpected = 0xFF00E0E0;   // drawLine (bound; hairline — no stroke width here)
                canvas.drawLine(0, cy, w, cy, fill(mExpected)); break;
            case 6:  mExpected = 0xFFE0E040;   // drawPath (expected no-op)
                mPath.reset(); mPath.moveTo(cx, cy - R); mPath.lineTo(cx + R, cy + R);
                mPath.lineTo(cx - R, cy + R); mPath.close();
                canvas.drawPath(mPath, fill(mExpected)); break;
            case 7:  mExpected = 0xFFFFFFFF;   // drawVertices (expected no-op)
                try {
                    float[] v = { cx - R, cy - R, cx + R, cy - R, cx + R, cy + R,
                                  cx - R, cy - R, cx + R, cy + R, cx - R, cy + R };
                    int[] cc = { -1, -1, -1, -1, -1, -1 };
                    canvas.drawVertices(Canvas.VertexMode.TRIANGLES, v.length, v, 0,
                            null, 0, cc, 0, null, 0, 0, fill(0xFFFFFFFF));
                } catch (Throwable t) { mExpected = 0; }
                break;
            case 8:  mExpected = 0xFF806040;   // drawPaint (fill clip)
                try { canvas.drawPaint(fill(mExpected)); } catch (Throwable t) { mExpected = 0; }
                break;
            case 9:  mExpected = 0xFF20C0A0;   // drawBitmap (was a silent no-op before the ART arm):
                // a center-covering solid-colour raster. pixel==mExpected => the drawBitmap arm paints
                // the real skia bitmap on panel. Requires Bitmap.nativeCreate to be live too (if the
                // handle can't be made the op has nothing to draw -> mExpected=0 -> scores '--').
                try {
                    int bw = 480, bh = 480;
                    int[] bpx = new int[bw * bh];
                    for (int i = 0; i < bpx.length; i++) bpx[i] = mExpected;
                    Bitmap bmp = Bitmap.createBitmap(bpx, bw, bh, Bitmap.Config.ARGB_8888);
                    if (bmp == null) { mExpected = 0; }
                    else { canvas.drawBitmap(bmp, cx - bw / 2f, cy - bh / 2f, null); }
                } catch (Throwable t) { mExpected = 0; }
                break;
            case 10: mExpected = 0xFFF04080;   // drawTextRun liveness (char[] run path). Glyphs are
                // sparse so the CENTER pixel won't equal mExpected -> this scores '--' BY DESIGN. The
                // real signal is survival: reaching case 10 and continuing to the hold phase proves the
                // nDrawTextRun char[] marshalling arm is ABI-correct (glyph shaping is a separate
                // minikin/font question, checked visually, not by this center-pixel oracle).
                try {
                    mPaint.setColor(mExpected);
                    mPaint.setTextSize(Math.min(w, h) * 0.12f);
                    char[] tr = "WESTLAKE".toCharArray();
                    canvas.drawTextRun(tr, 0, tr.length, 0, tr.length, cx - R, cy, false, mPaint);
                } catch (Throwable t) { mExpected = 0; }
                break;
            default: mExpected = 0; break;
        }
    }
}
