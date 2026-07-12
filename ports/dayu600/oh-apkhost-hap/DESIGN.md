# oh-apkhost-hap — DESIGN / PROPOSAL: render a REAL Android APK inside an OH-native HAP

**Status (2026-07-13):** design captured + off-board scaffold staged (`~/wl-apkhost-hvigor/`,
with `BUILD-PLAN.md`). **NOT started as code** in this repo. This is a *proposal/handoff*, not an
in-flight build — it is deliberately gated (see GATING) because its weld consumes **W-004 lane's**
live ART/renderer/probe, and W-004 (codex) is actively writing those files right now.

## What it is
A tappable OH HAP whose native side boots the embedded Android **interpreter-ART**, loads a real
APK's own dex, and paints its `Canvas` onto the **HAP's own XComponent SURFACE** — i.e. the same
OH-native rail already first-framed on 5ce (`../oh-xcomponent-hap`, glxc), but the payload is a real
Android APK's self-draw instead of a GLES2 clear. This gives the W-004 transient shell-lane a real,
tappable, sandboxed OH app face (`bm`/`hdc install` a HAP; there is no Android app runtime on OH).
It is also the same shell that would later host `libtuanjie` (see `../oh-tuanjie-hap`).

## The weld — VERIFIED read-only (this is the load-bearing fact)
All ART rendering funnels through one call in **W-004's** renderer:
```
ports/dayu600/gfx-smoke/westlake_upscreen_renderer.cpp
  :46   extern "C" void* westlake_ohos_make_display_window(int w,int h,int* ow,int* oh);   // factored out
  :107  void* raw = westlake_ohos_make_display_window(w, h, &ow, &oh);                      // gets the window
  :129  g_proxy->setSurface(g_window);   // g_window = oh_anw_wrap(raw); hwui renders here
```
`nm -D ports/dayu600/out/gfx-smoke/libwestlake_upscreen_renderer.so`:
```
T westlake_ohos_make_display_window     ← window-making is a SEPARATE, dynamically-exported symbol
T westlake_upscreen_color_smoke
U android::uirenderer::renderthread::RenderProxy::setSurface(ANativeWindow*, bool)
```
**hwui does not care where the `OHNativeWindow` came from.** Today `make_display_window` self-creates
an `RSSurfaceNode` on display 0 via a faked WMS session (needs shell privilege — the shell lane).
Inside a HAP, ArkUI legitimately hands us an `OHNativeWindow` in `OnSurfaceCreated`. So the retarget
is purely: **make `setSurface` receive the XComponent window instead of the self-made one.**

## Two ways to retarget — prefer (a), it needs NO edit to W-004's source
- **(a) interpose the factory (no-edit, PREFERRED).** `make_display_window` is a factored, dynamically
  exported `extern "C"` symbol that the renderer calls through the PLT. The HAP glue `.so` provides its
  **own** `westlake_ohos_make_display_window` that returns `oh_anw_wrap(the XComponent OHNativeWindow)`
  captured in `OnSurfaceCreated`, and is loaded so its definition wins. Renderer core untouched →
  **zero writes to W-004 files.**
  **CONFIRMED interposable (read-only, 2026-07-13):** `aarch64-readelf -d` shows `FLAGS: BIND_NOW`
  but **no `DF_SYMBOLIC`** (BIND_NOW = eager resolution, NOT self-first search — interposition still
  follows global symbol order); dyn-sym is `g DF .text` **default visibility**; and the call site
  disassembles to `bl <westlake_ohos_make_display_window@plt>` — **PLT-routed** through the GOT to the
  first global definition. Only remaining lever: **load order** (our glue `.so` searched before the
  renderer), which we control in the HAP. → option (a) is a green light, no W-004 edit needed.
- **(b) add an entry to the renderer (clean, but EDITS W-004).** Add
  `westlake_upscreen_attach_window(OHNativeWindow*, long rootNodePtr)` that skips `make_display_window`
  and uses the passed window. Cleaner API, but it **modifies `westlake_upscreen_renderer.cpp`** → must
  be done by / coordinated with the **W-004 lane owner**. Do NOT second-write it.

## Reuse map (all consumed READ-ONLY as binaries; only the glue is newly authored by us)
| piece | role | owner / source | how we use it |
|---|---|---|---|
| glxc HAP shell | XComponent→panel, proven on 5ce | ours (`~/glxc-hvigor` → `~/wl-apkhost-hvigor`) | author glue on top |
| `apk_host_xcomponent.cpp` | OnSurfaceCreated→env→dlopen ART→JNI_CreateJavaVM→drive probe→feed window | **NEW, ours** | authored fresh |
| alt `westlake_ohos_make_display_window` | returns XComponent window | **NEW, ours** | option (a) interpose |
| `libwestlake_upscreen_renderer.so` | hwui setSurface bridge | **W-004** | link/dlopen as-is (opt a) |
| `libwestlake_art.so` | embedded interpreter-ART | **W-004** (board lane + codex W-003-clean worktree) | **read-only copy, stat inode first** (art-latest symlink trap) |
| `Dayu600ApkStageProbe` dex | ART render driver (runTriangleApk) | **W-004** | consume dex as-is |
| `triangle.apk` | the APK under test | ours (`test-fixtures/dayu600-triangle-apk/out`) | bundle in rawfile |
| patched libhwui + framework shim | ART deps | **W-004** (board `art/`) | read-only copy |

## MAKE-OR-BREAK (only an on-board test settles it)
Does the OH **HAP app sandbox** (per-app SELinux domain) permit the embedded ART VM to come up —
`dlopen libwestlake_art` + `JNI_CreateJavaVM` + dex load — where the current lane runs as shell(uid2000)?
- **Favorable:** this ART is **interpreter** (interpreter.cc shorty dispatch, no JIT) → likely needs
  **no** anon-exec/execmem, which is the usual sandbox killer. Dex is data, interpreted by libart's
  already-executable `.text`.
- **Risks to probe on-board:** dex file mmap; dalvik-cache write (retarget to app `filesDir`);
  ANDROID_ROOT/APEX env must resolve inside the sandbox (extract rawfile→filesDir on first launch,
  set env before VM create); SELinux denials on /proc, /dev/mali.

## GATING (why this is a handoff, not something I run concurrently)
1. **W-004 single-writer.** The renderer/probe/ART are W-004's live files (codex landed `drawPath`
   on-panel today; tree is dirty). Commit `fc10ebd5` already FLAGGED single-writer contamination in
   codex's W-003-clean worktree. I will not be the second writer. Option (a) keeps us edit-free; the
   ART/renderer/shim binaries still must be pulled **read-only with an inode check** (memory
   `art-latest-is-codex-live-worktree-symlink` — art-latest & any art-iso are symlinks into codex's
   live worktree; editing a "copy" writes into codex's tree).
2. **Board window.** The make-or-break sandbox test is a heavyweight bring-up. 5ce is shared (4 boards
   on one USB hub; concurrent bring-up rebooted it once — memory `no-concurrent-5ce-bringup`). It runs
   only in a codex-free / CPU-idle 5ce window. Read-only `hdc shell` checks are always fine.

## Pointers
- Off-board scaffold + full step list: `~/wl-apkhost-hvigor/BUILD-PLAN.md` (forked-agent, 2026-07-13).
- Rail proof this rides on: `../oh-xcomponent-hap` (glxc GLES2 first-frame on 5ce).
- Sibling that swaps the payload to the real engine: `../oh-tuanjie-hap`.
- Memories: `onscreen-acceptance-bar` (APK self-draw color = the bar), `no-concurrent-5ce-bringup`,
  `art-latest-is-codex-live-worktree-symlink`, `boards-on-mac-5ce-arm64`.
