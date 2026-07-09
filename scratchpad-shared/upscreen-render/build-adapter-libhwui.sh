#!/usr/bin/env bash
# build-adapter-libhwui.sh — Agent-C's R1 fix (VERIFIED on 5583f5be 2026-07-06).
#
# Problem (R1): the gfx-smoke renderer's egl/skia interposers are link-scope (in the renderer
# .so). In a real ART process libhwui is loaded independently for graphics registration BEFORE
# the renderer, so the interposers do NOT preempt -> no pixels (hang or empty frame).
#
# Fix: fold the SAME proven interposers (egl_interposer + skia_interposer) + the ANW-unwrap shim
# INTO libhwui itself. libhwui is already linked with -Wl,-Bsymbolic-functions, so libhwui's OWN
# calls to eglCreateWindowSurface / GrDirectContexts::MakeGL bind to the in-libhwui interposer —
# load-order-independent. The renderer then links this adapter libhwui and drops the interposers.
# VERIFIED: with libhwui-adapter dlopen'd FIRST (mirroring ART registration), a color RenderNode
# paints full-screen (n_rects=1, preFlushSuccessful=1) — the config that BROKE the gfx-smoke .so.
set -euo pipefail
A2OH="${A2OH:-/Users/yao/a2oh-source-audit}"
native="${OHOS_NATIVE:-$A2OH/ohos-sdk/native}"; cxx="$native/llvm/bin/clang++"; sysroot="$native/sysroot"
repo="$(cd "$(dirname "$0")/../../.." && pwd)"
out="$repo/ports/dayu600/out/libhwui-build"; gfxobj="$repo/ports/dayu600/out/gfx-smoke/obj"
devlibs="$A2OH/device-libs"

# --- 1) adapter libhwui = stock libhwui objs + egl/skia interposer + anw shim, self-binding ---
#     (egl_interposer.o/skia_interposer.o/oh_anativewindow_shim.o come from build-hwui-2048.sh /
#      build-hwui-harness.sh; skia_interposer MUST be the -DGPU_TEST_UTILS build.)
"$cxx" --target=aarch64-linux-ohos --sysroot="$sysroot" -shared -fPIC \
  -Wl,-Bsymbolic-functions -L"$devlibs" -static-libstdc++ -Wl,--no-undefined -Wl,--exclude-libs,ALL \
  -o "$out/libhwui-adapter.so" \
  "$out"/obj/*.o "$out"/support-obj/*.o \
  "$gfxobj/egl_interposer.o" "$gfxobj/skia_interposer.o" "$gfxobj/oh_anativewindow_shim.o" \
  -l:libskia_canvaskit.z.so -l:libhilog.so -l:libEGL.so -l:libGLESv3.so -lvulkan
echo "built: $out/libhwui-adapter.so"

# --- 2) adapter-renderer = renderer.o + RS surface objs, NO interposers, link adapter libhwui ---
OUT="$repo/ports/dayu600/out/gfx-smoke/libwestlake_upscreen_renderer_adapter.so"
"$cxx" --target=aarch64-linux-ohos --sysroot="$sysroot" -shared -fPIC -static-libstdc++ \
  -Wl,--allow-shlib-undefined -Wl,--export-dynamic -Wl,-soname,libwestlake_upscreen_renderer_adapter.so \
  "$gfxobj/westlake_upscreen_renderer.o" "$gfxobj/ohos_display_surface.pic.o" \
  "$gfxobj/rs_abi_shims.pic.o" "$gfxobj/oh_anativewindow_shim.o" \
  -o "$OUT" \
  -L"$out" -l:libhwui-adapter.so \
  -L"$devlibs" -l:librender_service_client.z.so -l:librender_service_base.z.so \
  -l:libsurface.z.so -l:libnative_window.so -l:libutils.z.so -l:libipc_core.z.so \
  -l:libsamgr_proxy.z.so -l:libeventhandler.z.so -l:libskia_canvaskit.z.so -l:libhilog.so \
  -l:libEGL.so -l:libGLESv3.so -ldl -Wl,--rpath,/system/lib64:/system/lib64/platformsdk
echo "built: $OUT"
