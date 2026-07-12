# W-004 — real Android APK renders a rich 60fps AA dashboard on the DAYU600 panel

**Board:** `5ce2dcee00000000000000000923012c` (uis7885, OpenHarmony 6.1.0.31 / API 23, pure 64-bit).
**Date:** 2026-07-12. **Lane:** isolated `/data/local/tmp/wl-tri-codex` (baseline substrate untouched).

## What this proves
A real, unmodified Android APK's OWN render code (`com.gltri.demo.TriangleView.onDraw`, loaded from
`triangle.apk`'s own dex) draws a rich, anti-aliased, animated "aurora gauge" dashboard that appears
live on the physical panel. Path: Android `Canvas` fill ops → the app's Android `RenderNode` display
list → our `libhwui` (skia) on the RenderThread → OHOS `RSSurfaceNode(display 0)` → panel. OpenHarmony
only composites the finished buffer; it draws none of the scene. **Provenance > visual**: the panel's
exact center pixel is read back pre-swap and equals the app's own `mColor` field on every frame.

## Pipeline & artifacts (all verified on-device this run)
| role | file | sha256 |
|------|------|--------|
| app under test | `triangle.apk` (dex container, no aapt2/manifest) | `ad404dbce5a8ce58936f6f45253f11bac11b88e1bd86e7adfb9e09deeaffb261` |
| ART render driver | `dayu600-apk-probe.dex` | `eea33dcb2cf995bc5b6a648329004d899c62db3a06221dc3384cfc7f339b8d98` |
| independent ART | `libwestlake_art.so` | `dc1d5e8239dc6fb4aeff6d70e21c12985fe7f85e6e02efcfa7f433cb3b257a83` |

Source: `test-fixtures/dayu600-triangle-apk/src/com/gltri/demo/TriangleView.java`
(sha `8f723ae0ffa72c0df61b773112ddd14d9ab0bf5bf4df3f93dd69425b96b45f05`).
Driver: `test-fixtures/dayu600-apk-probe/Dayu600ApkStageProbe.java` (`runTriangleApk`).

## Canonical result (`triangle-result.txt`, this dir)
- **`fps=75.6–80.9`** (70 frames, renderMs 865–926) — **> 60fps**, the explicit ask. Render-only timing
  (record+draw+swap, excludes the 120ms/frame photo sleep); ~90 GPU draw calls/frame.
- **`centerProvenance=match provFrames=70/70`** — every one of the 70 held frames' on-panel center
  pixel exactly equalled the app's own `mColor`. The panel center pixel IS the APK's state.
- **`changed=yes` `distinctFrames=48` `colorA=ffff3b30 colorB=ff34c759`** — the app's int-field colour
  cycle (red→green→blue→amber, every 8 frames) actually painted distinct colours live on glass.
- **`frame0 angle=6 color=ffff3b30 pixel=ffff3b30`** — first-frame red-hub anchor.
- **Capability map (in-app probe, read back off the panel):** `drawRect/drawOval/drawRoundRect/drawPaint
  = OK`; `drawCircle/drawArc/drawPath/drawVertices = --` (backdrop `ff0b0e1a`, silent no-op). Confirms
  the DAYU600 ART binds Canvas natives by JNI shorty-arm at interpreter dispatch, and the scene uses
  ONLY the ops that really rasterise. (See memory `substrate-canvas-op-shorty-map`.) `ladder=99-done`
  (clean, no crash — 70 frames sits under this substrate's ~180-frame skia-atlas SIGBUS ceiling).

## Screenshots (live, captured during the hold via `snapshot_display`)
- `wl-dash-canonical-1..3.jpeg` — THIS run, three distinct frames (needle/sweep/equalizer differ =
  live animation). Center hub is red = `mColor` = frame0's `ffff3b30` readback (provenance visible).
- `panel-dashboard-shot1..4.jpeg` — earlier live-hold captures of the byte-identical scene.
The dashboard: glass panel, top status card + LED, radar gauge (cyan outer ring, magenta inner ring,
concentric tracks), amber tapered needle + magenta sweep hand (drawOval dot rows), multicolor orbiting
dots, tick dots, red center hub + white ring, 3 metric cards with progress bars, master slider with
white thumb, 14-bar rainbow equalizer — all anti-aliased (Paint ANTI_ALIAS_FLAG), zero jaggies.

## Reproduce / verify
```
# device (isolated lane): hdc -t 5ce2dcee00000000000000000923012c shell "cd /data/local/tmp/wl-tri-codex && sh run-triangle-5ce.sh"
WTRI_ART_SHA=dc1d5e8239dc6fb4aeff6d70e21c12985fe7f85e6e02efcfa7f433cb3b257a83 \
WTRI_DEX_SHA=eea33dcb2cf995bc5b6a648329004d899c62db3a06221dc3384cfc7f339b8d98 \
  bash oracle/verify/triangle-smoke-5ce.sh 5ce2dcee00000000000000000923012c   # -> PASS
```
Older stale frames in this dir (`panel-triangle-red-up`, `-yellow-angle90`, `-gouraud-gradient-*`) are
from the pre-dashboard flat-triangle era; superseded by the dashboard captures above.
