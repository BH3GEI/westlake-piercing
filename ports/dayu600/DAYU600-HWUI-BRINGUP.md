# DAYU600 hwui bringup — libhwui.so built + hwui rendering proven on-panel

Status snapshot for the DAYU600 / uis7885 / arm64 / OpenHarmony-6.1 port. Two
milestones are **done and verified on real hardware**; the next wall is
precisely diagnosed. Build host: macOS (Apple Silicon). Sources under
`~/a2oh-source-audit`, OHOS SDK `~/a2oh-source-audit/ohos-sdk/native`, board via
`hdc` (serial `5ce2dcee...`).

---

## Gate 1 — `libhwui.so` built from AOSP 15 for aarch64-linux-ohos ✅

39 MB `libhwui.so`, ELF64/AArch64, 171 hwui sources compiled, linked against the
board's own `libskia_canvaskit.z.so` (same m133 Skia the device uses).

- Compile: `scripts/build-libhwui-smoke-macos.sh` (171 sources; manifest in
  `out/libhwui-build/libhwui-source-files.txt`). **Must use default visibility**
  (no `-fvisibility=hidden`) so the 56 `register_android_graphics_*` symbols and
  the aggregate `register_android_graphics_classes` export.
- Support objects: `scripts/build-support-objs.sh` — real AOSP-15
  libutils (RefBase/Looper/Thread/String8) + `support-src/*.cpp` stubs
  (ndk_stubs, graphics_stats_stub, skia_compat_stubs, skia_gpu_interop_stubs).
- Link: `scripts/link-libhwui-macos.sh` → `out/libhwui-build/libhwui.so`.
- Text/font stack is stubbed header-only in `include/minikin/MinikinCompat.h`
  (gate 5 replaces with real minikin).

Key fixes to reach a clean link: `sp<T>::make` needed AOSP-15 libutils
(`libutils/binder` split headers); `SkCanvas::ColorBehavior` needs
`-DSK_BUILD_FOR_ANDROID_FRAMEWORK`; GPU-interop / hardware-bitmap / WebView /
protobuf paths are no-op stubs; libc++ ABI namespace (`std::__h` device vs
`std::__n1` SDK) means any device-Skia symbol carrying std types is bridged in
`skia_compat_stubs.cpp`.

## Gate 2 — hwui's OWN pipeline paints on the panel ✅

Verified: green background + centred red rectangle on the DAYU600 display, drawn
by hwui's `Canvas::drawColor` + `drawRect` through
RenderProxy → RenderThread → CanvasContext → SkiaOpenGLPipeline → Mali-G57 GPU →
OHNativeWindow → RenderService → panel. Native harness (no Java, no WMS):
`gfx-smoke/hwui_render_harness.cpp` + `ohos_display_surface.cpp`.

Five walls, each verified fixed on-device:

1. **RenderThread ctor `ASurfaceControlFunctions`** dlopen("libandroid.so") +
   dlsym 13 `ASurfaceControl_*`/`ASurfaceTransaction_*` → **fake libandroid.so**
   (`gfx-smoke/fake_libandroid.c`, no-op stubs) on `LD_LIBRARY_PATH` first.
2. **`initializeChoreographer`** (no AChoreographer on OHOS) → set
   `Properties::isolatedProcess = true` → DummyVsyncSource branch.
3. **`setBufferCount` deref `window->query`** at AOSP struct offset → wrap the
   OHNativeWindow via `bridge-src/oh_anativewindow_shim.cpp` `oh_anw_wrap()`.
   Struct must match the PORT's `include/android/native_window.h` layout
   (`query` @ offset **88**, not full-AOSP 144) — locked by static_assert.
4. **hwui calls `eglCreateWindowSurface` on the wrapper** → EGL interposer
   (`gfx-smoke/egl_interposer.cpp`, strong symbol in the exe + `RTLD_NEXT`)
   `oh_anw_get_oh()` unwraps to the real OHNativeWindow before device libEGL.
5. **Empty buffer despite swap == EGL_SUCCESS** (the deep one): OHOS
   `libskia_canvaskit.z.so` added a gate in `GrDrawingManager::flush` that
   **skips the entire GPU submit** when any onFlush callback's `preFlush`
   returns false. `AtlasPathRenderer::preFlush` fails (MSAA-alpha8 atlas won't
   instantiate on this Mali GL driver). Origin = **ABI mismatch**: device
   libskia was built `-DGPU_TEST_UTILS` (its `GrContextOptions` has trailing
   fields incl. `fGpuPathRenderers`); libhwui built without it passed a shorter
   struct → device read garbage `fGpuPathRenderers` with the kAtlas bit set →
   atlas registered. **Fix:** interpose `GrDirectContexts::MakeGL` compiled
   `-DGPU_TEST_UTILS`, set `fGpuPathRenderers = GpuPathRenderers::kNone`
   (`gfx-smoke/skia_interposer.cpp`) → atlas never registers → gate never armed
   → GPU submits → pixels on screen. Plus `eglSwapBuffersWithDamageKHR` →
   plain `eglSwapBuffers` interposer.

Run: push `out/gfx-smoke/hwui_render_harness` + `out/libhwui-build/libhwui.so` +
`out/gfx-smoke/libandroid.so` to one dir, then
`LD_LIBRARY_PATH=<dir>:/system/lib64:/system/lib64/platformsdk:... ./hwui_render_harness N`.
`WESTLAKE_DRAWCOLOR_ONLY=1` / `WESTLAKE_NO_BG=1` are diagnostic variants.

---

## Gate 3 — real framework → ViewRootImpl/ThreadedRenderer → hwui (NOT done)

Goal: a real APK (2048, `com.digiplex.game`) renders its Android UI through the
gate-1/2 hwui pipeline, driven by the real framework's Java
`ViewRootImpl`/`ThreadedRenderer`.

Material is present: `framework.real-sdk.jar` (46 MB, 5-dex, has
`ThreadedRenderer`/`HardwareRenderer`/`Canvas`). Experiment (2026-07-04): swap it
onto the BCP (slot after `dayu600-framework-shim.dex`, before
`adapter-runtime-bcp.jar`) + deploy the hwui-enabled `liboh_android_runtime.so`
(which dlopens libhwui and calls `register_android_graphics_classes`).

**Precise faultlog root cause** — `register_android_graphics_classes` never
returns; SIGSEGV:
```
#00 OHOS::Parcel::InjectOffsets            (NULL deref)   libutils.z.so
#01 OHOS::BinderInvoker::HandleReply                       libipc_single.z.so
#03 OHOS::BinderInvoker::SendRequest
#06 OHOS::SystemAbilityManagerProxy::CheckSystemAbility     libsamgr_proxy.z.so
#09 OHOS::DynamicCache::QueryResult
```
Graphics/framework init reaches an **OHOS system service over binder/samgr**, but
the appspawn-x embedded-ART child has no valid IPC context → parcel crash. This
is **not** a JNI-signature mismatch — it's the adapter-IPC-bridging wall:
`oh-adapter-framework` must intercept Android service lookups instead of letting
them hit raw OHOS samgr in the forked child. Same class of work Westlake did on
DAYU200.

**Bisected root cause (2026-07-04, corrected — supersedes earlier guesses):**
Proper A/B testing on the board:
- baseline (placeholder `framework.jar` + pre-hwui runtime) → 2048 launches,
  `game0` window focused, exit 200. ✅
- real `framework.real-sdk.jar` on BCP + pre-hwui runtime → **also works**,
  `game0` focused. ✅  (so the real framework on the BCP is NOT the blocker; the
  earlier "OHOS samgr `Parcel::InjectOffsets` crash" was a **stale faultlog red
  herring** — not reproduced on a clean run.)
- real framework + **hwui-enabled `liboh_android_runtime.so`** → runtime logs
  `startReg enter` → `dlopen OK: libhwui.so` → **register_android_graphics_classes
  never returns**; the process is killed by the OHOS **AMS lifecycle watchdog**:
  `sysfreeze … Reason:LIFECYCLE_TIMEOUT … com.digiplex.game.MainActivity load
  timeout`. So the real gate-3 blocker is: **`register_android_graphics_classes`
  blocks/hangs (or is too slow) inside the appspawn-x embedded-ART child**,
  causing the ability lifecycle to time out before `AbilityTransitionDone`.
  Likely a graphics registrar (GraphicsJNI / DeviceInfo / a device-libskia
  RenderService connection) making a synchronous OHOS call that never completes
  in the embedded child's context. This is the real integration point — not a
  JNI signature mismatch, not the samgr crash.

Next-session leads:
1. Get the FULL crashing-thread backtrace (frames above #09, into libhwui) to
   name the exact registrar/DeviceInfo/display query that calls samgr — likely a
   display/DeviceInfo query pulled in by a graphics registrar or by device
   libskia_canvaskit's RenderService connection in the child.
2. Either give the appspawn-x child a valid post-fork OHOS IPC context
   (re-init IPCSkeleton), or intercept the specific service lookup and stub it.
3. Only after registration passes: wire Java `ThreadedRenderer` →
   `RenderProxy::setSurface` onto the app window's OHNativeWindow (reuse the
   gate-2 wrapper + interposers).

Gates 4 (touch input — port `oh_input_bridge`), 5 (real minikin+harfbuzz text;
board has icu), 6 (more games; audio output never wired even on DAYU200) remain.

**Baseline restore** (board left clean): `framework.jar` = 6404-byte
placeholder, `liboh_android_runtime.so` = pre-hwui backup, `libhwui.so` removed
from `android/lib64`.
