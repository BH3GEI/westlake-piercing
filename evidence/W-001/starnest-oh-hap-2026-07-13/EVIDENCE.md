# EVIDENCE — self-authored "Star Nest" GPU demo, live on the DAYU600 5ce panel (2026-07-13)

**Claim (observed, on-panel):** a fullscreen, real-time, touch-steerable *Star Nest*
(Kali) volumetric-fractal GLES2 shader — authored by us end-to-end, no engine — runs as
an OH-native app (`com.westlake.glxc2`) on the 5ce OpenHarmony panel, animating and
reacting to touch.

## What was done
- Wrote `starnest_xcomponent.cpp` (fragment shader + EGL bring-up + render thread + touch
  wiring), compiled with the OH NDK clang → `libentry.so` (aarch64, md5
  `ab936be86da098bdb40fa5ed954a8f37`), and swapped it into a prebuilt **signed** OH
  XComponent shell hap (module `entry`). Re-titled the shell's baked ArkTS strings via an
  equal-length `modules.abc` byte-patch (adler32 recomputed). Repacked → 4096-aligned →
  re-signed for 5ce. Source + turnkey script: `ports/dayu600/oh-xcomponent-hap/starnest/`.
- Deployed to 5ce (board idle; codex artboot **not** in the process list → no concurrent
  ART bring-up, per memory `no-concurrent-5ce-bringup`). In-place upgrade of our own app.

## Liveness proof (all frames own-eyes verified, 1200×1920, snapshot_display)
| file | what it shows |
|---|---|
| `starnest-a.jpeg` / `starnest-b.jpeg` | two frames 1.6 s apart — starfield + kaleidoscopic core **visibly moved** (forward flight). Distinct md5s. |
| `starnest-c.jpeg` | third advancing frame (with system USB dialog overlaid). |
| `starnest-clean.jpeg` | **money shot** — dialog dismissed; full-screen fractal: stars, blue nebula filaments, amber dust. |
| `starnest-touch1.jpeg` | OH touch indicator (gray dot) landing **on our XComponent** at mid-screen during a synthetic swipe; composition steered. |
| `starnest-touch2.jpeg` | finger dragged toward bottom-right → a third, distinctly steered composition. |
| `starnest-titled.jpeg` | final titled build: header **"西湖 · GLES2 星穹穿越"**, footer **"kali star-nest fx · OH-native rail · 5ce panel"**, camera flown into a blazing golden stellar core. |

All snapshots have distinct md5s (animation is real, not a static fill — meets the
on-screen acceptance bar). hilog tag `wl-glxc`: full bring-up logged — `XComponent
callbacks registered → OnSurfaceCreated → EGL up → window surface current →
program/aPos/uTime/uRes/uTouch resolved → frame … fps` ticking every 2 s, with **no**
`shader compile FAILED` / `link FAILED` (the Star Nest shader compiled on Mali).

## Artifacts
- Board-verified titled hap: `~/Downloads/westlake-starnest-5ce.hap`
  sha256 `31b520444ffe1a03f955edce62317f0adb9632153bb29f8bc00751ac30e9f06d`.
- Turnkey build reproduces the identical payload `.so` (md5 match above); whole-hap sha
  varies only by the signature nonce/zip order.

## Why it matters
Recon established we cannot author new Unity content on this Mac (no editor). But we fully
control the OH-native GLES rail — the same one the real game rides. This demo turns that
control into something unmistakably ours and unmistakably live, and the touch path
exercises `OH_NativeXComponent` input on that rail.

## Rebrand (2026-07-13) — remove 西湖, fix launcher name + icon
Swapping only `libentry.so` left the shell's baked identity stale: the launcher showed the
app as **旋转三角** with a generic icon, and the in-app title carried **西湖**. Fixed without
an ArkTS/restool rebuild:
- **in-app title** (`ets/modules.abc`): `"西湖 · GLES2 旋转三角"` → `"GLES2 星穹穿越 · 实时"`
  (equal-length 28 B, adler32 recomputed) — 西湖 gone.
- **launcher name** (`resources.index`, RestoolV2, no checksum): `app_name` `"GL 旋转三角"` →
  `"星穹穿越 fx"` (15 B), `EntryAbility_label` `"旋转三角"` → `"星穹穿越"` (12 B), both
  equal-length so no offset shift. Home screen now reads **星穹穿越**.
- **icon** (`resources/base/media/{icon,app_icon}.png`, 512×512): replaced with the actual
  golden-core frame cropped from `starnest-titled.jpeg` — the icon IS the demo's own output.
- decluttered: uninstalled the stray gradient app `com.westlake.glxc` ("GL三角").

On-panel proof: `launcher-after.jpeg` (home screen: **星穹穿越** + golden-core icon, old name
gone, gradient app gone) and `starnest-clean-titled.jpeg` (in-app title **"GLES2 星穹穿越 ·
实时"**, no 西湖, 60fps per the HiSmartPerf overlay). The rebrand is folded into
`build-starnest-hap.sh` (via `patch_abc_title.py` + `patch_res_labels.py` + `starnest-icon.png`),
which reproduces a clean-named hap from the pristine shell. Artifact:
`~/Downloads/westlake-starnest-5ce.hap` sha256
`325cd7e202ac7de1ce7cc24760b8008073d6fd783b819d95ecb0bc03de080a33`.
