#!/usr/bin/env bash
# Gate-2: build the hwui render harness for DAYU600 (aarch64-linux-ohos).
#
# Unlike westlake_rs_smoke (raw GLES), this binary hands a display-attached
# OHNativeWindow to OUR libhwui.so and lets hwui's own RenderThread / EglManager
# / CanvasContext / SkiaOpenGLPipeline paint into it — proving hwui itself
# reaches the panel.
#
# Two header worlds that cannot share a translation unit:
#   * ohos_display_surface.cpp + rs_abi_shims.cpp : render-service-client
#     headers, C++17, RTTI+exceptions (the proven raw-GLES-smoke OHOS setup).
#   * hwui_render_harness.cpp : libs/hwui headers, C++20, -fno-exceptions
#     -fno-rtti (matches how libhwui.so itself was built; both are SDK std::__n1
#     so harness <-> libhwui is a clean ABI).
# They meet only through a tiny C ABI (westlake_ohos_make_display_window).
#
# Steps:
#   A. Rebuild ndk_stubs.o (real ANativeWindow_getWidth/getHeight) + relink
#      libhwui.so so hwui sees the true 1200x1920 window geometry.
#   B. Compile the OHOS TUs (proven smoke include set).
#   C. Compile the hwui TU (libhwui-smoke include set).
#   D. Link binary against device-libs + libhwui.so.
#   E. Undefined-symbol audit against device-libs + libhwui.so + libc.
set -euo pipefail

A2OH="${A2OH:-/Users/yao/a2oh-source-audit}"
SDK_NATIVE="${OHOS_NATIVE:-$A2OH/ohos-sdk/native}"
CLANGXX="$SDK_NATIVE/llvm/bin/clang++"
[ -x "$SDK_NATIVE/llvm/bin/aarch64-unknown-linux-ohos-clang++" ] && \
    CLANGXX="$SDK_NATIVE/llvm/bin/aarch64-unknown-linux-ohos-clang++"
SYSROOT="$SDK_NATIVE/sysroot"
NM="$SDK_NATIVE/llvm/bin/llvm-nm"
DEVICE_LIBS="$A2OH/device-libs"

HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
repo="$(cd "$HERE/../../.." && pwd)"
scripts="$repo/ports/dayu600/scripts"
hwui="$A2OH/aosp-frameworks-base-15-r9/libs/hwui"
oh_headers="$A2OH/ohos-6.0-headers"
aosp11="$A2OH/aosp-android-11"
skia="$A2OH/openharmony-third-party-skia"
out_build="$repo/ports/dayu600/out/libhwui-build"
OUT_DIR="$repo/ports/dayu600/out/gfx-smoke"
OBJ_DIR="$OUT_DIR/obj"
OUT="$OUT_DIR/hwui_render_harness"
LIBHWUI="$out_build/libhwui.so"
mkdir -p "$OBJ_DIR"

# ---------------------------------------------------------------------------
# Step A: real ANativeWindow_getWidth/getHeight inside libhwui.
#   ndk_stubs.cpp now queries the OHNativeWindow via
#   OH_NativeWindow_NativeWindowHandleOpt(GET_BUFFER_GEOMETRY); hwui's internal
#   calls bind to libhwui's own copy (-Bsymbolic-functions), so the fix must
#   live inside libhwui, hence recompile + relink. (Set SKIP_LIBHWUI=1 to reuse
#   an already-patched libhwui.so.)
# ---------------------------------------------------------------------------
if [ "${SKIP_LIBHWUI:-0}" != "1" ]; then
  echo "== [A] recompiling ndk_stubs.o + relinking libhwui.so =="
  stub_includes=(
    -I"$hwui" -I"$hwui/platform/android" -I"$hwui/apex/include"
    -I"$repo/ports/dayu600/include"
    -I"$A2OH/aosp-15-headers/system/core/libutils/include"
    -I"$aosp11/system/core/libcutils/include"
    -I"$aosp11/system/core/libsystem/include"
    -I"$aosp11/system/core/base/include"
    -I"$aosp11/libnativehelper/include_jni"
    -I"$skia/m133" -I"$skia/m133/include" -I"$skia/m133/client_utils/android"
    -I"$oh_headers/hiviewdfx_hilog/interfaces/native/innerkits/include"
  )
  "$CLANGXX" --target=aarch64-linux-ohos --sysroot="$SYSROOT" \
    -std=c++20 -O0 -g -fPIC -fno-exceptions -fno-rtti -Wno-error -Wno-unused-parameter \
    -DSK_BUILD_FOR_ANDROID_FRAMEWORK -D__ANDROID_API__=35 -D__ANDROID__ \
    -include "$repo/ports/dayu600/include/westlake_ohos_compat.h" \
    "${stub_includes[@]}" \
    -c "$repo/ports/dayu600/support-src/ndk_stubs.cpp" \
    -o "$out_build/support-obj/ndk_stubs.o"
  bash "$scripts/link-libhwui-macos.sh"
else
  echo "== [A] SKIP_LIBHWUI=1: reusing $LIBHWUI as-is =="
fi
[ -f "$LIBHWUI" ] || { echo "libhwui.so missing: $LIBHWUI" >&2; exit 2; }

# ---------------------------------------------------------------------------
# Step B: OHOS-side TUs (proven raw-GLES-smoke include set / C++17).
# ---------------------------------------------------------------------------
echo "== [B] compiling OHOS surface TUs =="
GFX2D="$A2OH/graphic_graphic_2d"
GFXSURF="$A2OH/graphic_graphic_surface"
EXTRACTED="$HERE/compat/extracted"
if [ ! -d "$EXTRACTED/rosen/modules/2d_graphics/include" ]; then
    mkdir -p "$EXTRACTED"
    git -C "$GFX2D" archive HEAD \
        frameworks/text/interface/export/rosen_text \
        interfaces/inner_api/composer \
        rosen/modules/2d_graphics/include \
        rosen/modules/2d_graphics/src \
        utils/color_manager/export utils/sandbox utils/log \
        utils/scoped_bytrace/export utils/socketpair/export \
        | tar -x -C "$EXTRACTED" '*.h'
fi

OHOS_INCLUDES=(
    -I "$HERE/compat"
    -I "$GFX2D/rosen/modules/render_service_client/core"
    -I "$GFX2D/rosen/modules/render_service_base/include"
    -I "$GFX2D/rosen/modules"
    -I "$GFX2D/rosen/modules/utils"
    -I "$GFX2D/rosen/modules/composer/vsync/include"
    -I "$GFX2D/interfaces/inner_api/common"
    -I "$EXTRACTED/interfaces/inner_api/composer"
    -I "$EXTRACTED/frameworks/text/interface/export/rosen_text"
    -I "$EXTRACTED/frameworks/text/interface/export"
    -I "$GFX2D/rosen/modules/platform/image_native"
    -I "$EXTRACTED/rosen/modules/2d_graphics/include"
    -I "$EXTRACTED/rosen/modules/2d_graphics/src"
    -I "$EXTRACTED/rosen/modules/2d_graphics/src/drawing/engine_adapter"
    -I "$EXTRACTED/utils/color_manager/export"
    -I "$EXTRACTED/utils/sandbox"
    -I "$EXTRACTED/utils/log"
    -I "$EXTRACTED/utils/scoped_bytrace/export"
    -I "$EXTRACTED/utils/socketpair/export"
    -I "$A2OH/openharmony-third-party-skia/m133"
    -I "$GFXSURF/interfaces/inner_api/surface"
    -I "$GFXSURF/interfaces/inner_api/common"
    -I "$GFXSURF/interfaces/inner_api/buffer_handle"
    -I "$GFXSURF/interfaces/inner_api/sync_fence"
    -I "$GFXSURF/interfaces/inner_api/utils"
    -I "$A2OH/commonlibrary_c_utils/base/include"
    -I "$A2OH/communication_ipc/interfaces/innerkits/ipc_core/include"
    -I "$A2OH/communication_ipc/ipc/native/src/core/include"
    -I "$A2OH/systemabilitymgr_samgr/interfaces/innerkits/samgr_proxy/include"
    -I "$A2OH/notification_eventhandler/interfaces/inner_api"
    -I "$A2OH/notification_eventhandler/frameworks/eventhandler/include"
    -I "$A2OH/hiviewdfx_hilog/interfaces/native/innerkits/include"
)
OHOS_CXXFLAGS=(
    --target=aarch64-linux-ohos --sysroot="$SYSROOT"
    -std=c++17 -O2 -g
    -Wno-deprecated-declarations -Wno-c++11-narrowing
    -DROSEN_OHOS -D__OHOS__ -DUSE_M133_SKIA
)
"$CLANGXX" "${OHOS_CXXFLAGS[@]}" "${OHOS_INCLUDES[@]}" \
    -c "$HERE/ohos_display_surface.cpp" -o "$OBJ_DIR/ohos_display_surface.o"
"$CLANGXX" "${OHOS_CXXFLAGS[@]}" "${OHOS_INCLUDES[@]}" \
    -c "$HERE/rs_abi_shims.cpp" -o "$OBJ_DIR/rs_abi_shims.o"

# ---------------------------------------------------------------------------
# Step C: hwui-side TU (libhwui-smoke include set / C++20 / no exc / no rtti).
# ---------------------------------------------------------------------------
echo "== [C] compiling hwui harness TU =="
jni_inc="$aosp11/libnativehelper/include_jni"
HWUI_FLAGS=(
    --target=aarch64-linux-ohos --sysroot="$SYSROOT"
    -std=c++20 -O0 -g -fPIC -fno-exceptions -fno-rtti
    -Wno-error -Wno-unused-parameter -Wno-unused-variable
    -DEGL_EGLEXT_PROTOTYPES -DGL_GLEXT_PROTOTYPES
    -DATRACE_TAG=ATRACE_TAG_VIEW -DLOG_TAG=\"HWUI\"
    -DU_USING_ICU_NAMESPACE=0 -D__ANDROID_API__=35 -D__ANDROID__ -D__OHOS__
    -DUSE_M133_SKIA -DSK_BUILD_FOR_ANDROID_FRAMEWORK
    -include "$repo/ports/dayu600/include/westlake_ohos_compat.h"
    -include "$repo/ports/dayu600/include/sys/cdefs.h"
    -include "$repo/ports/dayu600/include/android/log.h"
    -include "$repo/ports/dayu600/include/android/choreographer.h"
)
HWUI_INCLUDES=(
    -I"$hwui" -I"$hwui/platform/android" -I"$hwui/apex/include" -I"$hwui/jni"
    -I"$repo/ports/dayu600/include"
    -I"$repo/ports/dayu600/bridge-src"
    -I"$A2OH/aosp-15-headers/system/core/libutils/include"
    -I"$aosp11/system/core/libutils/include"
    -I"$aosp11/system/core/libcutils/include"
    -I"$aosp11/system/core/libsystem/include"
    -I"$aosp11/system/core/base/include"
    -I"$aosp11/libnativehelper/header_only_include"
    -I"$aosp11/libnativehelper/include"
    -I"$aosp11/libnativehelper/platform_include"
    -I"$SYSROOT/usr/include"
    -I"$aosp11/libnativehelper/include_jni"
    -I"$jni_inc"
    -I"$oh_headers/third_party_skia/m133"
    -I"$oh_headers/third_party_skia/m133/include"
    -I"$oh_headers/third_party_skia/m133/include/android"
    -I"$oh_headers/third_party_skia/m133/include/codec"
    -I"$oh_headers/third_party_skia/m133/include/core"
    -I"$oh_headers/third_party_skia/m133/include/encode"
    -I"$oh_headers/third_party_skia/m133/include/config"
    -I"$oh_headers/third_party_skia/m133/include/effects"
    -I"$oh_headers/third_party_skia/m133/include/gpu"
    -I"$oh_headers/third_party_skia/m133/include/private"
    -I"$oh_headers/third_party_skia/m133/include/utils"
    -I"$skia/m133" -I"$skia/m133/include" -I"$skia/m133/include/android"
    -I"$skia/m133/client_utils/android"
    -I"$skia/m133/src/gpu" -I"$skia/m133/src/gpu/ganesh"
    -I"$oh_headers/third_party_skia/m133/src/core"
    -I"$oh_headers/third_party_skia/m133/src/utils"
    -I"$oh_headers/graphic_graphic_surface/interfaces/inner_api/surface"
    -I"$oh_headers/graphic_graphic_surface/interfaces/inner_api/common"
    -I"$oh_headers/graphic_graphic_surface/interfaces/inner_api/buffer_handle"
    -I"$oh_headers/graphic_graphic_2d/interfaces/inner_api/common"
    -I"$oh_headers/graphic_graphic_2d/rosen/modules/platform"
    -I"$oh_headers/hiviewdfx_hilog/interfaces/native/innerkits/include"
)
"$CLANGXX" "${HWUI_FLAGS[@]}" "${HWUI_INCLUDES[@]}" \
    -c "$HERE/hwui_render_harness.cpp" -o "$OBJ_DIR/hwui_render_harness.o"

# ---------------------------------------------------------------------------
# Step C2: AOSP-ABI ANativeWindow wrapper + EGL interposer.
#   The wrapper (oh_anw_wrap) gives hwui an ANativeWindow with the exact struct
#   layout it expects (ports/dayu600/include/android/native_window.h); the
#   interposer unwraps it back to the real OHNativeWindow before OHOS libEGL.
# ---------------------------------------------------------------------------
echo "== [C2] compiling ANativeWindow shim + EGL interposer =="
"$CLANGXX" --target=aarch64-linux-ohos --sysroot="$SYSROOT" \
    -std=c++17 -O2 -g -fPIC -fno-exceptions -fno-rtti \
    -I"$repo/ports/dayu600/include" \
    -c "$repo/ports/dayu600/bridge-src/oh_anativewindow_shim.cpp" \
    -o "$OBJ_DIR/oh_anativewindow_shim.o"
"$CLANGXX" --target=aarch64-linux-ohos --sysroot="$SYSROOT" \
    -std=c++17 -O2 -g -fPIC \
    -c "$HERE/egl_interposer.cpp" -o "$OBJ_DIR/egl_interposer.o"

# Skia GrContext interposer: needs the skia/hwui header set to match the
# GrDirectContexts::MakeGL mangling and read GrContextOptions.
# -DGPU_TEST_UTILS: the device libskia_canvaskit was built with it, so its
# GrContextOptions has the trailing test-only fields (fGpuPathRenderers, ...);
# we must use that same layout to place fGpuPathRenderers at the offset the
# device MakeGL reads. (libhwui itself is built WITHOUT it, so it passes the
# shorter struct and the device reads garbage there — exactly the bug we fix.)
echo "== [C3] compiling Skia GrContext interposer (-DGPU_TEST_UTILS) =="
"$CLANGXX" "${HWUI_FLAGS[@]}" -DGPU_TEST_UTILS "${HWUI_INCLUDES[@]}" \
    -c "$HERE/skia_interposer.cpp" -o "$OBJ_DIR/skia_interposer.o"

# ---------------------------------------------------------------------------
# Step D: link.
#   libhwui.so provides android::uirenderer/android::Paint/android::Canvas.
#   device-libs provide OHOS render-service + skia (SkPaint::setColor) + EGL.
#   --allow-shlib-undefined: libhwui's own transitive DT_NEEDED (libvulkan etc.)
#   resolve on-device via LD_LIBRARY_PATH, not at host link time.
# ---------------------------------------------------------------------------
echo "== [D] linking $OUT =="
# --export-dynamic: the harness's eglCreateWindowSurface (egl_interposer.o) must
# land in the executable .dynsym so it wins global-scope resolution of libhwui's
# eglCreateWindowSurface PLT slot (executable is searched first). RTLD_NEXT then
# reaches the real device libEGL.
"$CLANGXX" --target=aarch64-linux-ohos --sysroot="$SYSROOT" -static-libstdc++ \
    -Wl,--allow-shlib-undefined -Wl,--export-dynamic \
    "$OBJ_DIR/hwui_render_harness.o" \
    "$OBJ_DIR/ohos_display_surface.o" \
    "$OBJ_DIR/rs_abi_shims.o" \
    "$OBJ_DIR/oh_anativewindow_shim.o" \
    "$OBJ_DIR/egl_interposer.o" \
    "$OBJ_DIR/skia_interposer.o" \
    -o "$OUT" \
    -L"$out_build" -l:libhwui.so \
    -L"$DEVICE_LIBS" \
    -l:librender_service_client.z.so \
    -l:librender_service_base.z.so \
    -l:libsurface.z.so \
    -l:libnative_window.so \
    -l:libutils.z.so \
    -l:libipc_core.z.so \
    -l:libsamgr_proxy.z.so \
    -l:libeventhandler.z.so \
    -l:libskia_canvaskit.z.so \
    -l:libhilog.so \
    -l:libEGL.so \
    -l:libGLESv3.so \
    -ldl \
    -Wl,--rpath,/system/lib64:/system/lib64/platformsdk
echo "Built: $OUT"

# ---------------------------------------------------------------------------
# Step E: undefined-symbol audit (host-side guard against "links, won't load").
# ---------------------------------------------------------------------------
echo "== [E] undefined-symbol audit =="
TMP="$(mktemp -d)"; trap 'rm -rf "$TMP"' EXIT
"$NM" -D --undefined-only "$OUT" | awk '$1 == "U" {print $2}' | sort -u > "$TMP/undef.txt"
{
  for so in "$DEVICE_LIBS"/*.so "$LIBHWUI"; do
    "$NM" -D --defined-only "$so" 2>/dev/null | awk '{print $NF}'
  done
  "$NM" -D --defined-only "$SYSROOT/usr/lib/aarch64-linux-ohos/libc.so" 2>/dev/null | awk '{print $NF}'
} | sort -u > "$TMP/provided.txt"
MISSING="$(comm -23 "$TMP/undef.txt" "$TMP/provided.txt" || true)"
echo "undefined dynamic symbols: $(wc -l < "$TMP/undef.txt" | tr -d ' ')"
if [ -n "$MISSING" ]; then
    echo "MISSING (not in device-libs + libhwui.so + libc):"
    echo "$MISSING" | sed 's/^/  /'
    exit 1
fi
if grep -q '__n1' "$TMP/undef.txt"; then
    echo "WARN: std::__n1 symbols still undefined (must be satisfied by libhwui.so, which is __n1):"
    grep '__n1' "$TMP/undef.txt" | sed 's/^/  /' | head -40
fi
echo "OK: all undefined symbols resolve against device-libs + libhwui.so + libc"
