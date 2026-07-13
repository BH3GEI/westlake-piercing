# starnest — self-authored real-time GPU demo on the DAYU600 5ce panel

A fullscreen, **touch-steerable "Star Nest" (Kali) volumetric-fractal** GLES2 shader,
authored end-to-end by us and running as an OH-native app on the 5ce OpenHarmony panel.
No Unity, no engine, no colleague payload — every pixel is ours.

Proof it's live (own-eyes, on-panel): `evidence/W-001/starnest-oh-hap-2026-07-13/`.

## Why this rides the same rail as the real target
The ArkUI `<XComponent type:SURFACE libraryname:'entry'>` dlopens `libentry.so`, hands
us an `OH_NativeWindow`, and we drive **EGL → GLES2 → render_service → panel** — the
identical surface rail the Tuanjie il2cpp game uses. So this is both a stunning demo and
a live interactivity/throughput probe of that rail, with content we fully control.

## How it's built (no DevEco, no ArkTS recompile)
We compile only the native `libentry.so` and swap it into a **prebuilt, signed** OH
XComponent shell hap (module `entry`, bundle `com.westlake.glxc2`). One command:

```
bash build-starnest-hap.sh [shell.hap] [out.hap]
```

Pipeline: `clang++` (OH NDK) → `libentry.so` → unpack shell → swap `.so` →
(optional) `patch_abc_title.py` re-titles the baked ArkTS strings → repack →
`zipalign_hap.py` (4096) → `resign-oh-hap.sh` (5ce). Steps 2/6/7 are the proven ones
reused from `../../tuanjie-fmt-fix`.

Deploy (only when 5ce is idle — no concurrent ART bring-up; see memory
`no-concurrent-5ce-bringup`):
```
hdc -t 5ce2dcee00000000000000000923012c install starnest-5ce.hap
hdc -t 5ce2dcee00000000000000000923012c shell aa start -b com.westlake.glxc2 -a EntryAbility
```

## Files
- `starnest_xcomponent.cpp` — the whole demo: EGL bring-up on the XComponent surface,
  a fullscreen triangle-strip, the Star Nest fragment shader (GLSL ES 1.00, Mali-safe:
  compile-time loop bounds, `highp`), a render thread, and `DispatchTouchEvent` wiring
  so a finger steers the fly-through (autonomous slow orbit when untouched).
- `build-starnest-hap.sh` — turnkey compile → swap → (title) → repack → align → resign.
- `patch_abc_title.py` — equal-length in-place string edit of `modules.abc` + adler32
  recompute, so the shell can be re-titled without an ArkTS build. Refuses any
  length-changing or non-unique edit (offset-safety guard).

## Shader knobs (in `starnest_xcomponent.cpp`)
`VOLSTEPS` (ray march steps) and `ITER` (fractal folds) trade FPS for depth/detail on
Mali. Ship values are conservative; the render loop logs `~fps` every 2s under hilog tag
`wl-glxc` — raise them until the FPS line stops being comfortable.

Star Nest fractal © Kali (Shadertoy XlfGRj), adapted to GLSL ES 1.00 + touch steering.
