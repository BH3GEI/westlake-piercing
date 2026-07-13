# artboot (com.westlake.artboot “仪表盘”) — white-screen diagnosis, fix, and abandonment

**Date:** 2026-07-13 · **Board:** 5ce (`5ce2dcee…`, uis7885, OH 6.1.0.31) · **Status: ABANDONED by user**

`com.westlake.artboot` was the **independent second proof** path: run embedded Android ART
*inside an OH app sandbox* (app uid) and render `triangle.apk` via Canvas FILL → RenderNode →
`libhwui` (skia) → an OHOS `RSSurfaceNode` on display 0. It opened to a **white screen**, then
(after a first fix attempt) to a **crash on tap**. Both were root-caused and fixed; a deeper
render wall remained; the user then dropped the app. The NORTH STAR (Tuanjie il2cpp engine on
the panel via a signed OH `.hap`) was **already achieved separately**, so this path was never on
the critical line. See memory `artboot-oh-app-two-sandbox-walls`.

## Two stacked bugs (both fixed in this `artboot.c`)

1. **White screen = the glue never set `LD_LIBRARY_PATH`.**
   The heavy-bridge renderer `libwestlake_upscreen_renderer.so` has
   `RUNPATH = /system/lib64:/system/lib64/platformsdk` (system dirs only). Its NEEDED
   `libhwui.so` lives **only in the app bundle** (`libs/arm64/libhwui.so`; OH has no system
   libhwui). So at `beforeStage` the renderer’s `dlopen` couldn’t resolve libhwui → returned
   NULL → no `RSSurfaceNode` → blank. Every *other* renderer NEEDED (librender_service_*,
   libsurface, libskia_canvaskit.z, libEGL/GLESv3, …) is a system lib reachable via that RUNPATH;
   **libhwui was the single missing link.**
   **Fix:** export the same `LD_LIBRARY_PATH` the proven shell lane uses
   (`oracle/device/run-triangle-5ce.sh`): `"<bundle-libs>:/system/lib64:/system/lib64/platformsdk:/system/lib64/chipset-sdk-sp"`.

2. **Crash on tap (`闪退`) = a bare early libhwui preload SIGBUS.**
   The first fix attempt pre-`dlopen`ed `libhwui.so` at phase 5.5 — **before** the probe creates
   the VM / starts the Android runtime. libhwui is `BIND_NOW` with 57 `INIT_ARRAY` constructors;
   run bare (no runtime) they fault → `SIGBUS (sig=7) phase=preload-render-chain` (proven by the
   glue’s own verdict breadcrumb). *(The `ThreadExitCallback→Abort` faultlog seen at the time was
   a **stale pre-reboot** log — its 1970-epoch timestamp exceeded the board’s current uptime.)*
   **Fix:** delete the bare preload; let the renderer pull libhwui itself at `beforeStage`
   (= after `JNI_CreateJavaVM` + `startReg`), so the constructors run with the runtime up.

## Result on-board (2026-07-13)

- ✅ **No crash**, ✅ **no white screen** — the ArkUI page renders and the embedded VM boots
  clean (`verdict=PASS reason=embedded-art-constructor-vm-rc=0`; full 40 MB substrate extracted).
- ❌ **Renderer + libhwui still don’t map** (`/proc/<pid>/maps`: both `=0`), so no dashboard
  surface. Strong implication: the **OH app default namespace ignores a *runtime* `setenv`
  `LD_LIBRARY_PATH`** (the shell lane sets it at process *startup*, which is honored; an app
  process can’t). This `artboot.c` therefore also adds a **post-VM diagnostic** that loads the
  renderer + libhwui *after* the runtime is up and writes the exact `dlerror` to
  `<filesDir>/render-diag.txt` — but the board rebooted (see below) before that capture landed.
- ⚠️ **Relaunch loop / board reboot:** the “park the VM-attached worker forever” design leaves a
  process that OH kills (~every 90 s) and restarts → sustained VM-create + 40 MB framework mmap
  churn → the board rebooted under load. Lesson: don’t leave a parked idle VM process resident.

## If ever resumed — the real remaining wall

Make the app namespace resolve **bundle** `libhwui` for the renderer’s NEEDED lookup **without**
relying on runtime `LD_LIBRARY_PATH`. Candidates: (a) `patchelf --set-rpath '$ORIGIN'` on the
*bundled copy* of the renderer so libhwui (same dir) resolves; (b) OH `dlns_*` namespace API;
(c) absolute-path `dlopen` the whole renderer→libhwui→skia chain in dependency order after the
VM. Then the known downstream walls from `artboot-oh-app-two-sandbox-walls` still apply
(`librender_service_client` / XComponent-interpose, and ArkUI z-order occlusion of the display-0
overlay).

**Artifact:** `artboot.c` in this dir is the exact glue as of abandonment (parkfix +
LD_LIBRARY_PATH + post-VM render diagnostic). Fast rebuild was `hot-swap libentry.so into the
full hvigor build-output hap → page-align(4096) → resign for 5ce`.
