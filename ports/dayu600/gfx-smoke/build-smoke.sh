#!/usr/bin/env bash
# Build the OHOS render-service graphics smoke test for the DAYU600 board
# (aarch64-linux-ohos), linking against real device libraries pulled from
# the board.
set -euo pipefail

AUDIT=/Users/yao/a2oh-source-audit
SDK_NATIVE="$AUDIT/ohos-sdk/native"
CLANGXX="$SDK_NATIVE/llvm/bin/clang++"
SYSROOT="$SDK_NATIVE/sysroot"
DEVICE_LIBS="$AUDIT/device-libs"

HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC="$HERE/westlake_rs_smoke.cpp"
OUT_DIR="$HERE/../out/gfx-smoke"
OUT="$OUT_DIR/westlake_rs_smoke"
mkdir -p "$OUT_DIR"

GFX2D="$AUDIT/graphic_graphic_2d"
GFXSURF="$AUDIT/graphic_graphic_surface"

# Headers absent from the sparse clones (2d_graphics/Drawing, color_manager,
# sandbox, ...) are extracted from the graphic_graphic_2d git object store
# into compat/extracted by this script; the clone working trees stay pristine.
EXTRACTED="$HERE/compat/extracted"
if [ ! -d "$EXTRACTED/rosen/modules/2d_graphics/include" ]; then
    mkdir -p "$EXTRACTED"
    git -C "$GFX2D" archive HEAD \
        frameworks/text/interface/export/rosen_text \
        interfaces/inner_api/composer \
        rosen/modules/2d_graphics/include \
        rosen/modules/2d_graphics/src \
        utils/color_manager/export \
        utils/sandbox \
        utils/log \
        utils/scoped_bytrace/export \
        utils/socketpair/export \
        | tar -x -C "$EXTRACTED" '*.h'
fi

INCLUDES=(
    # local compat/wrapper headers first
    -I "$HERE/compat"
    # render service client / base
    -I "$GFX2D/rosen/modules/render_service_client/core"
    -I "$GFX2D/rosen/modules/render_service_base/include"
    -I "$GFX2D/rosen/modules"
    -I "$GFX2D/rosen/modules/utils"
    -I "$GFX2D/rosen/modules/composer/vsync/include"
    -I "$GFX2D/interfaces/inner_api/common"
    -I "$EXTRACTED/interfaces/inner_api/composer"
    -I "$EXTRACTED/frameworks/text/interface/export/rosen_text"
    -I "$EXTRACTED/frameworks/text/interface/export"
    # cross-platform shim for multimedia pixel_map.h (declaration-only use here)
    -I "$GFX2D/rosen/modules/platform/image_native"
    # extracted-from-git headers (Drawing / 2d_graphics etc.)
    -I "$EXTRACTED/rosen/modules/2d_graphics/include"
    -I "$EXTRACTED/rosen/modules/2d_graphics/src"
    -I "$EXTRACTED/rosen/modules/2d_graphics/src/drawing/engine_adapter"
    -I "$EXTRACTED/utils/color_manager/export"
    -I "$EXTRACTED/utils/sandbox"
    -I "$EXTRACTED/utils/log"
    -I "$EXTRACTED/utils/scoped_bytrace/export"
    -I "$EXTRACTED/utils/socketpair/export"
    # Skia (Drawing headers include "include/core/Sk*.h" relative to skia root)
    -I "$AUDIT/openharmony-third-party-skia/m133"
    # graphic surface (Surface, OHNativeWindow C API: window.h)
    -I "$GFXSURF/interfaces/inner_api/surface"
    -I "$GFXSURF/interfaces/inner_api/common"
    -I "$GFXSURF/interfaces/inner_api/buffer_handle"
    -I "$GFXSURF/interfaces/inner_api/sync_fence"
    -I "$GFXSURF/interfaces/inner_api/utils"
    # c_utils (sptr / RefBase / parcel)
    -I "$AUDIT/commonlibrary_c_utils/base/include"
    # IPC
    -I "$AUDIT/communication_ipc/interfaces/innerkits/ipc_core/include"
    -I "$AUDIT/communication_ipc/ipc/native/src/core/include"
    # samgr
    -I "$AUDIT/systemabilitymgr_samgr/interfaces/innerkits/samgr_proxy/include"
    # eventhandler
    -I "$AUDIT/notification_eventhandler/interfaces/inner_api"
    -I "$AUDIT/notification_eventhandler/frameworks/eventhandler/include"
    # hilog
    -I "$AUDIT/hiviewdfx_hilog/interfaces/native/innerkits/include"
)

# keep exceptions/RTTI on: RS headers use dynamic_cast/typeid
CXXFLAGS=(
    --target=aarch64-linux-ohos
    --sysroot="$SYSROOT"
    -std=c++17
    -O2
    -g
    -Wno-deprecated-declarations
    -Wno-c++11-narrowing
    -DROSEN_OHOS
    -D__OHOS__
    -DUSE_M133_SKIA
)

LDFLAGS=(
    -static-libstdc++
    -L "$DEVICE_LIBS"
    -l:librender_service_client.z.so
    -l:librender_service_base.z.so
    -l:libsurface.z.so
    -l:libnative_window.so
    -l:libutils.z.so
    -l:libipc_core.z.so
    -l:libsamgr_proxy.z.so
    -l:libeventhandler.z.so
    -l:libhilog.so
    -l:libEGL.so
    -l:libGLESv3.so
    -ldl
    -Wl,--rpath,/system/lib64:/system/lib64/platformsdk
)

"$CLANGXX" "${CXXFLAGS[@]}" "${INCLUDES[@]}" "$SRC" "$HERE/rs_abi_shims.cpp" -o "$OUT" "${LDFLAGS[@]}"
echo "Built: $OUT"
