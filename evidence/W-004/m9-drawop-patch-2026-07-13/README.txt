M9 deep dive — both remaining legs characterized; leg (c) drawPath arm built off-board — 2026-07-13 (5ce)
=========================================================================================================
Independent W-004 work (Opus). After delivering the io.material.catalog APK off-board (see
evidence/W-004/2026-07-12-m9-material-catalog-apk-built-and-drawop-verdict-5ce.txt), I drove the two
remaining literal-M9 legs as far as is possible WITHOUT touching the board (codex owns the live
single-writer 5ce lane; board was at sustained load ~11.5 = near the ~13 that rebooted it before, so
board execution stays read-only). Two deep source investigations + a real off-board ART rebuild.

The literal-M9 bar = real io.material.catalog UI VISIBLE on the 5ce panel via the FULL
appspawn-x -> ActivityThread -> Activity.onCreate -> setContentView/inflate ->
ViewRootImpl.show() -> measure/draw lifecycle. Three legs: (a) the app, (b) the lifecycle,
(c) substrate draw-op support. Status of each below.

LEG (a) — the io.material.catalog app: DONE off-board (prior note). Real APK, sha256 de13aa91…,
staged artifacts/mcat/io.material.catalog-debug.apk. Not repeated here.

LEG (b) — full Activity/ViewRootImpl.show() lifecycle: HARD WALL (architectural; already designed
------------------------------------------------------------------------------------------------
around by this project). The substrate ships the REAL android.view.ViewRootImpl (decoded smali
scratchpad-shared/agent-h/H-fw-decoded/.../ViewRootImpl.smali, 38,202 lines, real fields
mSurfaceControl/mBlastBufferQueue/mSurface, real setView/performTraversals/relayoutWindow/performDraw).
But ViewRootImpl obtains its Surface ONLY via IWindowSession.relayout + BLASTBufferQueue.createSurface()
+ SurfaceControl (ViewRootImpl.smali:21232, 37540-37621) — SurfaceFlinger/WMS/BufferQueue primitives
that DO NOT EXIST on this headless OHOS board. This is not a null binder you can stub; ViewRootImpl
reaches for a Surface whose native backing (a SurfaceFlinger BufferQueue) is absent. The project ALREADY
established and designed around this: WestlakeUpscreen.java:9,15-19 is explicitly labeled "strategy B
(BYPASS ViewRootImpl)" because "strategy A [real ViewRootImpl+Surface] is a dead end here"; atom L05.A12
(BLASTBufferQueue-dependent Android paths need a bridge) is still data-state M01-SPEC (unbuilt). Two more
board-bound native walls stack on top: setContentView -> DecorView.<init> -> Paint.nSetFlags SIGBUS on
the OHOS JNI trampoline (Dayu600ApkStageProbe.java:5545-5548, why the current path skips setContentView);
and getWindowManagerService()==null -> ViewConfiguration.get()/addView SIGSEGV (only papered over by an
in-process OHServiceManager stub, :4096-4103). The entire 6627-line harness contains ZERO
new-ViewRootImpl/addView/setView/performTraversals — every on-screen stage (runColorApk/runTriangleApk/
runFirstFrame53) instantiates the app View directly and pumps Canvas->RenderNode->WestlakeUpscreen
native->OHNativeWindow->display, deliberately bypassing ViewRootImpl.
=> Literal "ViewRootImpl.show() drives the visible frame" is architecturally infeasible on the current
   headless substrate without BUILDING the missing SurfaceFlinger/WMS/BLASTBufferQueue bridge (atom
   L05.A12). The realistic substitute (app Activity.onCreate -> setContentView/inflate -> DecorView fed
   into the existing ViewRootImpl-BYPASS rail) is itself board-bound native work (the DecorView
   Paint.nSetFlags SIGBUS + the Canvas op no-ops of leg c), not a session-local harness change.

LEG (c) — substrate draw-op support (drawText/drawBitmap/drawPath): CODE+BUILD DONE off-board; on-panel
------------------------------------------------------------------------------------------------------
verify board-bound. On this substrate whether a Canvas native paints is decided by a HAND-WRITTEN
JNI-shorty chain in interpreter.cc (InterpreterJni); ops without an arm silently NO-OP (see
substrate-canvas-op-shorty-map memory). The native Skia+minikin impls for path/bitmap/glyph ARE linked
and callable (device adapter libhwui = real hwui+skia+minikin, ports/dayu600/bridge-src/
hwui_oh_abi_patch.cpp:295,303); the ONLY thing suppressing drawPath/drawBitmap/drawText is the absent
interpreter arm — a mechanical add. Ground truth from the substrate framework smali
(H-fw-decoded/.../graphics/): BaseRecordingCanvas.nDrawPath(JJJ)V is @FastNative (the render/record path),
BaseCanvas.nDrawPath(JJJ)V is a plain native; both shorty VJJJ; both dispatched in interpreter.cc's
regular-static rail via GetEntryPointFromJni() exactly like the working nDrawRoundRect (VJFFFFFFJ) arm.

WHAT I DID (off-board, isolated, no collision with codex's ART lane):
  - Cloned the live ART build tree (/Users/yao/westlake-local-build/art-latest, 96M, mtimes preserved)
    to a private scratch; edited the COPY's interpreter.cc only (codex's canonical repo file + build tree
    NEVER touched — single-writer respected; all build outputs relative to the copy, verified no absolute
    -o path; codex's stub sources read-only like an advisor).
  - Added the nDrawPath VJJJ arm (class-guarded to BaseRecordingCanvas|BaseCanvas). See the unified diff
    interpreter-nDrawPath-VJJJ.patch in this dir (27 lines, 18 insertions).
  - Rebuilt incrementally on THIS Mac (OHOS LLVM cross-toolchain + cached 460-.o build state): recompiled
    interpreter.o ("OK: interpreter.cc (patched)") + relinked -> new libwestlake_art.so in 12 seconds.
  - VERIFIED at build level: valid "ELF 64-bit LSB shared object, ARM aarch64", SONAME libwestlake_art.so;
    new sha256 a8b482eab8a803829d64f25018c75538205dc70883aa8c175166b73470143d7b differs from the original
    edec7332…3a84c3c (proves the rebuild produced a new binary); arm's guard strings present in the .o.
    Staged: artifacts/mcat/libwestlake_art.so.drawpath-a8b482ea (gitignored; rebuildable from the patch).

NEXT OPS (for codex, same mechanical pattern, exact shorties from the substrate smali):
  - drawBitmap: BaseCanvas/BaseRecordingCanvas.nDrawBitmap(JJFFJIII)V = shorty VJJFFJIII (canvas, bitmap,
    left, top, paint, int, int, int). Arm mirrors the VJFFFFJJ style; end-to-end also needs a valid Bitmap
    handle (nativeCreate/decode) — board-verify.
  - drawText: nDrawTextRun(J[CIIIIFFZJJ)V (char[] variant) = VJ[C]IIIIFFZJJ (hardest marshalling: array +
    4 ints + 2 floats + bool + 2 longs); needs the device font/glyph shaping actually working — board-verify.

WHAT REMAINS FOR LEG (c): flash the rebuilt .so to 5ce and confirm drawPath rasterizes on-panel. That is
codex's ACTIVE single-writer lane and is gated by codex's own OPEN pipeline walls independent of this arm
(state/FRONTIER.md:16-18: pointer-publish #49 "binding != dispatch", R2 same-source libhwui,
g214bb_raw_read_pixel two-frame readback; the independent ART hash dc1d5e82 is "built but not deployed,
no color record/R2/panel-pixel PASS yet"). I ran NOTHING on the board (read-only only; no concurrent
bring-up — proven to reboot the board).

BOTTOM LINE (honest): literal-M9 is NOT achieved and is bounded by TWO walls of very different nature:
  (b) is an ARCHITECTURAL hard wall — no Surface source on the headless substrate; the project already
      bypasses ViewRootImpl by design. Reaching literal ViewRootImpl.show() means building a missing OS
      subsystem (SurfaceFlinger/WMS/BLASTBufferQueue bridge, atom L05.A12), which the user's own strategic
      direction deprioritized (north star = OH-native Tuanjie thin .hap; Route-B ART recompile off critical
      path).
  (c) is NOT a hard wall — code+build is done off-board (this patch + rebuilt .so); only the on-panel proof
      is board-bound and sits behind codex's open render-pipeline walls.
The io.material.catalog app itself would, even fully wired, render only a stable-but-blank frame until
(c)'s text/bitmap arms also land (see prior note). Net: the movable-off-board work for all three legs is
now done or precisely specified; the residue is board-bound native/OS-subsystem work on codex's live lane.
