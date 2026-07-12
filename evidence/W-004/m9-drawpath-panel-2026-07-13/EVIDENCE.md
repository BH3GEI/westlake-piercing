# W-004 · drawPath PROVEN on-panel via a NEW substrate-ART interpreter arm (5ce, 2026-07-13)

Board: `5ce2dcee00000000000000000923012c` (uis7885, OpenHarmony 6.1.0.31, pure arm64).
Lane: isolated `/data/local/tmp/wl-mcat-w004` (cp -a clone of the frozen color lane; only
`art/libwestlake_art.so` + `apks/{triangle.apk,dayu600-apk-probe.dex}` swapped in — the frozen
color lane `wl-color-codex` (ART dc1d5e82) and the baseline substrate are byte-for-byte untouched).

## What was achieved (observed, thrice-reproduced)

A previously **silently-no-op** Canvas op — `drawPath` — now **paints on the real 5ce panel**,
because I added a new arm to the DAYU600 substrate-ART interpreter (`interpreter.cc`) that binds
`Canvas.nDrawPath` (shorty `VJJJ`) to its native. Built to an **isolated** ART
`libwestlake_art.so` **efde66c7** (28,463,792 B, valid aarch64 ELF) reproducibly on this Mac
(`/Users/yao/.claude/jobs/00aef3d2/tmp/build-iso-art.sh`), from a genuinely-distinct ART tree
(iso interpreter.cc inode ≠ codex canonical — verified before editing; codex's tree untouched).

### Proof mechanism (same as the accepted color-smoke oracle)
A real Android APK (`com.gltri.demo.TriangleView`) runs a capability-probe: for each op it draws
ONLY that op, center-covering, in a known color `mExpected`; the egl_interposer reads the
panel-bound EGL surface's **pre-swap center pixel** at `eglSwapBuffers`. `pixel == mExpected` =>
that op paints on the panel. This is the identical pre-swap-readback mechanism as the already-
accepted color-smoke oracle (not `snapshot_display` — see the "surface path" note below).

### Cap-probe verdicts (run3, reproduced across all 3 runs) — `run3-triangle-result.txt`
```
cap 0 drawRect     expected=ff008080 pixel=ff008080 OK
cap 1 drawCircle   expected=ffe01050 pixel=ff0b0e1a --   (no arm; silent no-op — known)
cap 2 drawOval     expected=ff10e050 pixel=ff10e050 OK
cap 3 drawRoundRect expected=ff3050ff pixel=ff3050ff OK
cap 4 drawArc      expected=ffffc020 pixel=ff0b0e1a --   (no arm)
cap 5 drawLine     expected=ff00e0e0 pixel=ff06777d --   (no arm; partial blend only)
cap 6 drawPath     expected=ffe0e040 pixel=ffe0e040 OK   ← NEW ARM (efde66c7). PROVEN ON-PANEL.
cap 7 drawVertices expected=ffffffff pixel=ff0b0e1a --   (no arm)
cap 8 drawPaint    expected=ff806040 pixel=ff806040 OK
cap 9 drawBitmap   expected=00000000 pixel=ff0b0e1a --   (inconclusive — see below)
```
The matching egl swap for cap 6 (`run3-egl-digest.txt`):
`center_argb=0xffe0e040` — the panel surface's actual center pixel == the app's drawPath fill.

### Animated hold rendered live on-panel
After the cap probe, the aurora dashboard held and animated; the panel-bound surface's center
pixel cycled the app's palette `ff3b30→34c759→3a8cff→ffcc00→…` (provenance-locked to the app's
`mColor`), i.e. the dashboard — with the drawPath chevron overlay — rendered live for many frames.

## Honest findings / limits (NOT achieved)

1. **drawBitmap arm: INCONCLUSIVE.** The arm marshals `nDrawBitmap` (`VJJFFJIII`) correctly, but
   `Bitmap.createBitmap(int[],…)` returns null on this substrate (missing `nativeCreate`), so
   `mExpected=00000000` and the op was never exercised with a real bitmap handle. This is a
   separate substrate gap (bitmap-handle creation), not a flaw in the arm.

2. **drawText arm: REMOVED (crashes).** The arm marshals `nDrawTextRun` (`VJLIIIIFFZJJ`) correctly
   and reaches the native, but shaping with no live minikin/font/Typeface stack SIGSEGVs the
   RenderThread — exactly the board-observable risk the spec flagged. Removed from the probe.

3. **`snapshot_display` cannot photograph this surface.** The Route-B embedded-ART rail renders to
   a **raw `OHNativeWindow`** (`westlake_ohos_make_display_window`); OHOS RenderService composites
   the lockscreen *over* that raw layer, so `snapshot_display` (which reads RS-composited output)
   shows only the OHOS lockscreen — see `snapshot_display-shows-RS-lockscreen-NOT-westlake-surface.jpeg`.
   The egl-interposer pre-swap readback is the on-panel proof for this rail. (This differs from the
   OH-native XComponent hap, which is a real RS window and *is* snapshot-able — task #18.)

4. **literal-M9 (Material Catalog full Activity/ViewRootImpl lifecycle) remains architecturally
   blocked.** Leg (b) — `ViewRootImpl.setView → relayout → measure/layout/draw` — needs a Surface
   from `IWindowSession.relayout` + `BLASTBufferQueue` + `SurfaceControl` (SurfaceFlinger/WMS),
   which do not exist headless on OHOS (atom L05.A12, unbuilt / deprioritized by the .hap pivot).
   The embedded-ART rail drives draw ops directly and never runs the Activity/measure/layout path,
   so it cannot satisfy literal-M9. This is an architectural wall, not a board-availability issue.

## Artifacts in this dir
- `run3-triangle-result.txt` — the 3-run-reproduced cap-probe verdicts (crash-safe per-op flush).
- `run3-egl-digest.txt` — distilled egl-interposer pre-swap center_argb per op + hold + crash tail.
- `mcat-run3.log.gz` — full raw run3 log (egl swaps + OHBridge trace), gzipped.
- `snapshot_display-shows-RS-lockscreen-NOT-westlake-surface.jpeg` — documents finding #3.
- `postcrash-panel.jpeg`, `hold15s-panel.jpeg` — earlier snapshots (also RS lockscreen; kept as record).

## Provenance
- ART: `libwestlake_art.so` efde66c7 (3 draw-op arms: drawPath live, drawBitmap/drawText present
  but unexercised/removed). Build script + patched `interpreter.cc` in the isolated tree
  `/Users/yao/.claude/jobs/00aef3d2/tmp/art-w004-iso/` (codex canonical NOT touched).
- APK: `triangle.apk` d9865cdf (extended TriangleView with cap cases 6/9 + drawPath chevron).
- Probe: `dayu600-apk-probe.dex` 2fe9c450 (cap opNames incl. drawBitmap; drawTextRun reverted).
