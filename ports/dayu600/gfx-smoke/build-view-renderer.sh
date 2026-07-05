#!/usr/bin/env bash
# Build libwestlake_view_renderer.so — in-process JNI bridge that renders the
# app's DecorView RenderNode via libhwui.so. Reuses the interposer objects from
# build-hwui-2048.sh (run that first) and links -shared against libhwui.so.
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
hwui="$A2OH/aosp-frameworks-base-15-r9/libs/hwui"
oh_headers="$A2OH/ohos-6.0-headers"
aosp11="$A2OH/aosp-android-11"
skia="$A2OH/openharmony-third-party-skia"
out_build="$repo/ports/dayu600/out/libhwui-build"
OUT_DIR="$repo/ports/dayu600/out/gfx-smoke"
OBJ_DIR="$OUT_DIR/obj"
OUT="$OUT_DIR/libwestlake_view_renderer.so"
LIBHWUI="$out_build/libhwui.so"
jni_inc="$aosp11/libnativehelper/include_jni"

for o in ohos_display_surface rs_abi_shims oh_anativewindow_shim egl_interposer skia_interposer; do
    [ -f "$OBJ_DIR/$o.o" ] || { echo "missing $OBJ_DIR/$o.o — run build-hwui-2048.sh first" >&2; exit 2; }
done
[ -f "$LIBHWUI" ] || { echo "missing $LIBHWUI" >&2; exit 2; }

# --- Recompile the OHOS surface TUs WITH -fPIC (the 2048 build made them non-PIC
#     for an executable; a shared lib needs all objects PIC). ---
GFX2D="$A2OH/graphic_graphic_2d"
GFXSURF="$A2OH/graphic_graphic_surface"
EXTRACTED="$HERE/compat/extracted"
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
    -I "$EXTRACTED/utils/sandbox" -I "$EXTRACTED/utils/log"
    -I "$EXTRACTED/utils/scoped_bytrace/export" -I "$EXTRACTED/utils/socketpair/export"
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
    -std=c++17 -O2 -g -fPIC
    -Wno-deprecated-declarations -Wno-c++11-narrowing
    -DROSEN_OHOS -D__OHOS__ -DUSE_M133_SKIA
)
echo "== recompiling ohos_display_surface + rs_abi_shims with -fPIC =="
"$CLANGXX" "${OHOS_CXXFLAGS[@]}" "${OHOS_INCLUDES[@]}" \
    -c "$HERE/ohos_display_surface.cpp" -o "$OBJ_DIR/ohos_display_surface.pic.o"
"$CLANGXX" "${OHOS_CXXFLAGS[@]}" "${OHOS_INCLUDES[@]}" \
    -c "$HERE/rs_abi_shims.cpp" -o "$OBJ_DIR/rs_abi_shims.pic.o"

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
echo "== compiling westlake_view_renderer.cpp =="
"$CLANGXX" "${HWUI_FLAGS[@]}" "${HWUI_INCLUDES[@]}" \
    -c "$HERE/westlake_view_renderer.cpp" -o "$OBJ_DIR/westlake_view_renderer.o"

echo "== linking $OUT (shared) =="
"$CLANGXX" --target=aarch64-linux-ohos --sysroot="$SYSROOT" -shared -fPIC -static-libstdc++ \
    -Wl,--allow-shlib-undefined -Wl,--export-dynamic \
    -Wl,-soname,libwestlake_view_renderer.so \
    "$OBJ_DIR/westlake_view_renderer.o" \
    "$OBJ_DIR/ohos_display_surface.pic.o" \
    "$OBJ_DIR/rs_abi_shims.pic.o" \
    "$OBJ_DIR/oh_anativewindow_shim.o" \
    "$OBJ_DIR/egl_interposer.o" \
    "$OBJ_DIR/skia_interposer.o" \
    -o "$OUT" \
    -L"$out_build" -l:libhwui.so \
    -L"$DEVICE_LIBS" \
    -l:librender_service_client.z.so -l:librender_service_base.z.so \
    -l:libsurface.z.so -l:libnative_window.so -l:libutils.z.so \
    -l:libipc_core.z.so -l:libsamgr_proxy.z.so -l:libeventhandler.z.so \
    -l:libskia_canvaskit.z.so -l:libhilog.so -l:libEGL.so -l:libGLESv3.so -ldl \
    -Wl,--rpath,/system/lib64:/system/lib64/platformsdk
echo "Built: $OUT ($(stat -f%z "$OUT" 2>/dev/null) bytes)"

echo "== undefined internal (art/hwui) symbols =="
"$NM" -D -u "$OUT" 2>/dev/null | grep -aE 'RenderProxy|RenderNode|make_display|oh_anw' | head
echo "(RenderProxy/RenderNode should resolve from libhwui.so at runtime)"
