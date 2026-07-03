#!/usr/bin/env sh
set -eu

ROOT="$(CDPATH= cd -- "$(dirname -- "$0")/../../.." && pwd)"
PORT="$ROOT/ports/dayu600"
OUT="$PORT/out/smoke"
CXX="${CXX:-aarch64-linux-gnu-g++}"
OHOS_HEADERS="${OHOS_HEADERS:-/mnt/c/Users/ufop/ohos-6.0-headers}"

mkdir -p "$OUT"

JNI_INC="/usr/lib/jvm/java-21-openjdk-amd64/include"
JNI_LINUX_INC="$JNI_INC/linux"

echo "[1/4] compiler"
"$CXX" --version | head -1

echo "[2/4] compile copied hwui patch object"
"$CXX" \
  -std=c++17 -fPIC -fno-exceptions -fno-rtti \
  -I"$JNI_INC" -I"$JNI_LINUX_INC" \
  -c "$PORT/bridge-src/hwui_oh_abi_patch.cpp" \
  -o "$OUT/hwui_oh_abi_patch.o"
file "$OUT/hwui_oh_abi_patch.o"

WINDOW_BRIDGE_FLAGS="-std=c++17 -fPIC -fpermissive -include math.h -DDAYU600_GCC_SMOKE -DUSE_M133_SKIA"
WINDOW_BRIDGE_INCLUDES="
  -I$PORT/include
  -I$PORT/bridge-src
  -I$OHOS_HEADERS/communication_ipc/interfaces/innerkits/ipc_core/include
  -I$OHOS_HEADERS/communication_ipc/interfaces/innerkits/c/ipc/include
  -I$OHOS_HEADERS/commonlibrary_c_utils/base/include
  -I$OHOS_HEADERS/systemabilitymgr_samgr/interfaces/innerkits/samgr_proxy/include
  -I$OHOS_HEADERS/systemabilitymgr_samgr/interfaces/innerkits/dynamic_cache/include
  -I$OHOS_HEADERS/hiviewdfx_hilog/interfaces/native/innerkits/include
  -I$OHOS_HEADERS/ability_ability_base/interfaces/inner_api/base/include
  -I$OHOS_HEADERS/ability_ability_base/interfaces/kits/native/want/include
  -I$OHOS_HEADERS/ability_ability_base/interfaces/kits/native/uri/include
  -I$OHOS_HEADERS/ability_ability_base/interfaces/kits/native/session_info/include
  -I$OHOS_HEADERS/ability_ability_runtime/interfaces/inner_api/ability_manager/include
  -I$OHOS_HEADERS/ability_ability_runtime/interfaces/inner_api/mission_manager/include
  -I$OHOS_HEADERS/bundlemanager_bundle_framework/interfaces/inner_api/appexecfwk_base/include
  -I$OHOS_HEADERS/third_party_json/include
  -I$OHOS_HEADERS/window_window_manager/interfaces/innerkits/dm
  -I$OHOS_HEADERS/window_window_manager/interfaces/innerkits/dm_lite
  -I$OHOS_HEADERS/window_window_manager/utils/include
  -I$OHOS_HEADERS/window_window_manager/interfaces/innerkits/wm
  -I$OHOS_HEADERS/window_window_manager/wm/include
  -I$OHOS_HEADERS/window_window_manager/wmserver/include/zidl
  -I$OHOS_HEADERS/window_window_manager/window_scene
  -I$OHOS_HEADERS/window_window_manager/window_scene/session_manager/include
  -I$OHOS_HEADERS/window_window_manager/window_scene/session_manager/include/zidl
  -I$OHOS_HEADERS/window_window_manager/window_scene/session/host/include
  -I$OHOS_HEADERS/window_window_manager/window_scene/session/host/include/zidl
  -I$OHOS_HEADERS/graphic_graphic_2d/rosen/modules/render_service_client/core
  -I$OHOS_HEADERS/graphic_graphic_2d/rosen/modules/render_service_base/include
  -I$OHOS_HEADERS/graphic_graphic_2d/rosen/modules/animation/window_animation/include
  -I$OHOS_HEADERS/graphic_graphic_2d/frameworks/text/interface/export/rosen_text
  -I$OHOS_HEADERS/graphic_graphic_2d/interfaces/inner_api/common
  -I$OHOS_HEADERS/graphic_graphic_2d/rosen/modules/platform
  -I$OHOS_HEADERS/graphic_graphic_2d/rosen/modules/platform/eventhandler
  -I$OHOS_HEADERS/graphic_graphic_2d/rosen/modules/2d_graphics/include
  -I$OHOS_HEADERS/graphic_graphic_2d/rosen/modules/2d_graphics/src
  -I$OHOS_HEADERS/graphic_graphic_2d/rosen/modules/2d_graphics/src/drawing/engine_adapter
  -I$OHOS_HEADERS/graphic_graphic_2d/utils/color_manager/export
  -I$OHOS_HEADERS/graphic_graphic_2d/rosen/modules/platform/image_native
  -I$OHOS_HEADERS/graphic_graphic_2d/rosen/modules/platform/utils
  -I$OHOS_HEADERS/graphic_graphic_2d/rosen/modules/platform/ipc_core
  -I$OHOS_HEADERS/graphic_graphic_surface/interfaces/inner_api/surface
  -I$OHOS_HEADERS/graphic_graphic_surface/interfaces/inner_api/common
  -I$OHOS_HEADERS/graphic_graphic_surface/interfaces/inner_api/buffer_handle
  -I$OHOS_HEADERS/graphic_graphic_surface/interfaces/inner_api/utils
  -I$OHOS_HEADERS/graphic_graphic_surface/surface/include
  -I$OHOS_HEADERS/third_party_skia/m133
  -I$OHOS_HEADERS/third_party_bounds_checking_function/include
  -I$OHOS_HEADERS/multimedia_image_framework/interfaces/innerkits/include
  -I$OHOS_HEADERS/multimedia_image_framework/interfaces/kits/native/include
  -I$OHOS_HEADERS/multimodalinput_input/interfaces/native/innerkits/event/include
  -I$OHOS_HEADERS/multimodalinput_input/interfaces/native/innerkits/proxy/include
  -I$JNI_INC
  -I$JNI_LINUX_INC
"

echo "[3/4] syntax-check window bridge"
set +e
"$CXX" $WINDOW_BRIDGE_FLAGS -fsyntax-only $WINDOW_BRIDGE_INCLUDES \
  "$PORT/bridge-src/oh_window_manager_client.cpp" \
  >"$OUT/oh_window_manager_client.syntax.log" 2>&1
RC=$?
set -e

echo "window bridge syntax rc=$RC"
sed -n '1,80p' "$OUT/oh_window_manager_client.syntax.log"
if [ "$RC" -ne 0 ]; then
  echo "logs: $OUT"
  exit "$RC"
fi

echo "[4/4] compile window bridge object"
"$CXX" $WINDOW_BRIDGE_FLAGS -c $WINDOW_BRIDGE_INCLUDES \
  "$PORT/bridge-src/oh_window_manager_client.cpp" \
  -o "$OUT/oh_window_manager_client.o" \
  >"$OUT/oh_window_manager_client.object.log" 2>&1
file "$OUT/oh_window_manager_client.o"

echo "logs: $OUT"
