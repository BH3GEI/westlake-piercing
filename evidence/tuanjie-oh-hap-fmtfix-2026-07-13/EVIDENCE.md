# Tuanjie OH-native .hap black-screen — ROOT-CAUSED & FIXED in-house (5ce, 2026-07-13)

Board: `5ce2dcee…0923012c` (DAYU600 / uis7885, OpenHarmony 6.1.0.31, pure arm64).
Bundle: `com.tuanjie.ohmin` (colleague's turnkey Tuanjie/Unity il2cpp min_mono demo).

## Symptom
The colleague's signed hap installed, launched, the il2cpp engine ran (EGL init, orientation
set), but the panel stayed **black**. hilog flooded with
`C01401/Bufferqueue: Alloc Failed -5` + `the format can not support 1` +
`failed to convert to bufferInfo`, and thousands of orientation retries.

## Root cause (proven, not inferred)
Pixel-format **enum-space mismatch**. The engine is ported from Android, where
`WINDOW_FORMAT_RGBA_8888 = 1`. It passes `1` to OH's `SET_FORMAT`. But on OH
(`native_buffer/native_buffer.h`): `NATIVEBUFFER_PIXEL_FMT_CLUT1 = 1` (a 1-bit palette
format that cannot back a GPU render surface); `NATIVEBUFFER_PIXEL_FMT_RGBA_8888 = 12`.
The allocator rejects format 1 → no buffer is ever allocated → infinite retry → black.

Confirmed live: `libtuanjie.so` imports `OH_NativeWindow_NativeWindowHandleOpt` (the setter)
and our interposer logged the actual call: `WLFMT: SET_FORMAT remap 1 -> 12 (RGBA_8888)`.

## Fix (in-house, no colleague, no engine source)
A small OH-native interposer `libwlfmtshim.so` (`ports/dayu600/tuanjie-fmt-fix/wl_fmt_shim.c`,
built with the OH NDK clang for aarch64) that:
- on `OH_NativeWindow_NativeWindowHandleOpt(SET_FORMAT, fmt)`, remaps the OH palette range
  `{0,1,2}` → `12` (RGBA_8888); everything ≥3 passes through untouched;
- forces `SET_FORMAT=12` on the window right before `eglCreateWindowSurface` (belt-and-suspenders).

**Deterministic interposition** (no LD_PRELOAD, no global-scope-order luck): the two relevant
UND import symbol strings in `libtuanjie.so`'s `.dynstr` are renamed **in place, same length**
to the shim's exported names, so the engine can bind only to the shim; the shim calls the real
functions (linked from `libnative_window.so` / `libEGL.so`). Shim is added as a `DT_NEEDED` of
`libtuanjie.so` via `patchelf`. See `patch_rename.py`.

Repack keeps every other byte of the hap intact: `app_unpacking_tool` → swap the two `.so` →
`app_packing_tool` → **`zipalign_hap.py` re-pads all STORED entries to 4096** (OH mmaps
uncompressed `.so`/rawfile directly; the original hvigor hap was page-aligned, the OH CLI packer
is not) → `resign-oh-hap.sh` for 5ce (signature-block insertion preserves alignment).
il2cpp/global-metadata/data.tj3d verified byte-identical across the round-trip.

## Result (observed)
- `WLFMT: SET_FORMAT remap 1 -> 12` fires; `Alloc Failed` frozen at 1 (loop stopped);
  orientation retries 5679 → 4.
- `hidumper RenderService`: `TuanjiePlayerSurface` is a real RS layer, 1200×1920, 5-buffer
  FIFO, 45 MB allocated, cycling — a healthy render surface (was: could not allocate one).
- **snapshot_display captured the game rendering on the panel**:
  `panel-game-rendered-180flip.jpeg` — 「泡泡游戏 / Tap the spheres! / Score:0 Taps:0」 +
  magenta GL viewport. Black screen resolved.

Fixed hap: `/tmp/wlfmt/hapwork/tuanjie-fmtfix-5ce.hap` (format fix only; the canonical minimal fix).

## Known remaining (NOT the black screen; non-blocking)
The whole display (incl. system UI) renders **180° inverted**. Ruled out: display rotation
(our hook logged `GetDefaultDisplayRotation real=0` — board is already upright, lockscreen
snapshots upright too) and the ability's static `orientation` (setting it `portrait` had no
effect). Actual driver: the engine requests an inverted portrait at runtime via
`WindowUtils.setOrientation` (NAPI → ArkTS `window.setPreferredOrientation`; strings
`PORTRAIT_INVERTED` / `kPortraitUpsideDown` live in `modules.abc`), baked from the Unity build's
default-orientation setting. Proper fix is the game's Unity PlayerSettings (Default Orientation →
Portrait) for the real-game build, or ArkTS `.abc` surgery on `WindowUtils.setOrientation`
(heavier; low value for this throwaway min_mono demo). Does not block rendering.
