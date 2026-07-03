#!/usr/bin/env bash
set -euo pipefail

ROOT="$(CDPATH= cd -- "$(dirname -- "$0")/../../.." && pwd)"
PORT="$ROOT/ports/dayu600"
SRC="$PORT/bridge-src"
OUT="$PORT/out/sidecars"
OHOS_HEADERS="${OHOS_HEADERS:-/mnt/c/Users/ufop/ohos-6.0-headers}"
DEFAULT_OHOS_SDK_ROOT="/mnt/c/Users/ufop/ohos-sdk-6.0.0.47"
if [ -d "$HOME/ohos-sdk-6.0.0.47" ]; then
  DEFAULT_OHOS_SDK_ROOT="$HOME/ohos-sdk-6.0.0.47"
fi
OHOS_SDK_ROOT="${OHOS_SDK_ROOT:-$DEFAULT_OHOS_SDK_ROOT}"
DAYU600_DEVICE_LIBS_DIR="${DAYU600_DEVICE_LIBS_DIR:-}"

mkdir -p "$OUT/obj" "$OUT/logs"

find_native_home() {
  if [ -n "${OHOS_NATIVE_HOME:-}" ] && [ -x "$OHOS_NATIVE_HOME/llvm/bin/clang++" ]; then
    printf '%s\n' "$OHOS_NATIVE_HOME"
    return 0
  fi

  for cand in \
    "$OHOS_SDK_ROOT/native" \
    "$OHOS_SDK_ROOT/linux/native" \
    "$OHOS_SDK_ROOT/ohos-sdk/linux/native" \
    "$OHOS_SDK_ROOT/ohos-sdk/native"; do
    if [ -x "$cand/llvm/bin/clang++" ]; then
      printf '%s\n' "$cand"
      return 0
    fi
  done

  find "$OHOS_SDK_ROOT" -path '*/native/llvm/bin/clang++' -type f -print 2>/dev/null |
    sed 's#/llvm/bin/clang++$##' | head -n 1
}

NATIVE_HOME="$(find_native_home)"
if [ -z "$NATIVE_HOME" ]; then
  echo "OHOS native SDK not found under: $OHOS_SDK_ROOT" >&2
  echo "Set OHOS_SDK_ROOT or OHOS_NATIVE_HOME, then rerun." >&2
  exit 2
fi

CXX="$NATIVE_HOME/llvm/bin/clang++"
SYSROOT="$NATIVE_HOME/sysroot"
if [ ! -d "$SYSROOT" ]; then
  echo "OHOS sysroot not found: $SYSROOT" >&2
  exit 2
fi

LIBCXX_SITE="$NATIVE_HOME/llvm/bin/../include/libcxx-ohos/include/c++/v1/__config_site"
LIBCXX_ABI_OVERLAY="$OUT/libcxx-abi-namespace-h"
if [ -f "$LIBCXX_SITE" ]; then
  mkdir -p "$LIBCXX_ABI_OVERLAY"
  sed 's/#define _LIBCPP_ABI_NAMESPACE .*/#define _LIBCPP_ABI_NAMESPACE __h/' \
    "$LIBCXX_SITE" >"$LIBCXX_ABI_OVERLAY/__config_site"
fi

find_jni_include() {
  if [ -n "${JAVA_HOME:-}" ] && [ -f "$JAVA_HOME/include/jni.h" ]; then
    printf '%s\n' "$JAVA_HOME/include"
    return 0
  fi
  for cand in /usr/lib/jvm/*/include; do
    if [ -f "$cand/jni.h" ]; then
      printf '%s\n' "$cand"
      return 0
    fi
  done
}

JNI_INC="$(find_jni_include)"
if [ -z "$JNI_INC" ]; then
  echo "jni.h not found. Install a JDK in WSL or set JAVA_HOME." >&2
  exit 2
fi

COMMON_FLAGS=(
  --target=aarch64-linux-ohos
  --sysroot="$SYSROOT"
  -std=c++17
  -O2
  -fPIC
  -fvisibility=hidden
  -fvisibility-inlines-hidden
  -ffunction-sections
  -fdata-sections
  -fpermissive
  -include math.h
  -DDAYU600
  -DUSE_M133_SKIA
  -D__OHOS__
)

INCLUDES=(
  -I"$LIBCXX_ABI_OVERLAY"
  -I"$PORT/include"
  -I"$SRC"
  -I"$SYSROOT/usr/include"
  -I"$OHOS_HEADERS/communication_ipc/interfaces/innerkits/ipc_core/include"
  -I"$OHOS_HEADERS/communication_ipc/interfaces/innerkits/c/ipc/include"
  -I"$OHOS_HEADERS/commonlibrary_c_utils/base/include"
  -I"$OHOS_HEADERS/systemabilitymgr_samgr/interfaces/innerkits/samgr_proxy/include"
  -I"$OHOS_HEADERS/systemabilitymgr_samgr/interfaces/innerkits/dynamic_cache/include"
  -I"$OHOS_HEADERS/hiviewdfx_hilog/interfaces/native/innerkits/include"
  -I"$OHOS_HEADERS/ability_ability_base/interfaces/inner_api/base/include"
  -I"$OHOS_HEADERS/ability_ability_base/interfaces/kits/native/want/include"
  -I"$OHOS_HEADERS/ability_ability_base/interfaces/kits/native/uri/include"
  -I"$OHOS_HEADERS/ability_ability_base/interfaces/kits/native/session_info/include"
  -I"$OHOS_HEADERS/ability_ability_runtime/interfaces/inner_api/ability_manager/include"
  -I"$OHOS_HEADERS/ability_ability_runtime/interfaces/inner_api/mission_manager/include"
  -I"$OHOS_HEADERS/bundlemanager_bundle_framework/interfaces/inner_api/appexecfwk_base/include"
  -I"$OHOS_HEADERS/third_party_json/include"
  -I"$OHOS_HEADERS/window_window_manager/interfaces/innerkits/dm"
  -I"$OHOS_HEADERS/window_window_manager/interfaces/innerkits/dm_lite"
  -I"$OHOS_HEADERS/window_window_manager/utils/include"
  -I"$OHOS_HEADERS/window_window_manager/interfaces/innerkits/wm"
  -I"$OHOS_HEADERS/window_window_manager/wm/include"
  -I"$OHOS_HEADERS/window_window_manager/wmserver/include/zidl"
  -I"$OHOS_HEADERS/window_window_manager/window_scene"
  -I"$OHOS_HEADERS/window_window_manager/window_scene/session_manager/include"
  -I"$OHOS_HEADERS/window_window_manager/window_scene/session_manager/include/zidl"
  -I"$OHOS_HEADERS/window_window_manager/window_scene/session/host/include"
  -I"$OHOS_HEADERS/window_window_manager/window_scene/session/host/include/zidl"
  -I"$OHOS_HEADERS/graphic_graphic_2d/rosen/modules/render_service_client/core"
  -I"$OHOS_HEADERS/graphic_graphic_2d/rosen/modules/render_service_base/include"
  -I"$OHOS_HEADERS/graphic_graphic_2d/rosen/modules/animation/window_animation/include"
  -I"$OHOS_HEADERS/graphic_graphic_2d/frameworks/text/interface/export/rosen_text"
  -I"$OHOS_HEADERS/graphic_graphic_2d/interfaces/inner_api/common"
  -I"$OHOS_HEADERS/graphic_graphic_2d/rosen/modules/platform"
  -I"$OHOS_HEADERS/graphic_graphic_2d/rosen/modules/platform/eventhandler"
  -I"$OHOS_HEADERS/graphic_graphic_2d/rosen/modules/2d_graphics/include"
  -I"$OHOS_HEADERS/graphic_graphic_2d/rosen/modules/2d_graphics/src"
  -I"$OHOS_HEADERS/graphic_graphic_2d/rosen/modules/2d_graphics/src/drawing/engine_adapter"
  -I"$OHOS_HEADERS/graphic_graphic_2d/utils/color_manager/export"
  -I"$OHOS_HEADERS/graphic_graphic_2d/rosen/modules/platform/image_native"
  -I"$OHOS_HEADERS/graphic_graphic_2d/rosen/modules/platform/utils"
  -I"$OHOS_HEADERS/graphic_graphic_2d/rosen/modules/platform/ipc_core"
  -I"$OHOS_HEADERS/graphic_graphic_surface/interfaces/inner_api/surface"
  -I"$OHOS_HEADERS/graphic_graphic_surface/interfaces/inner_api/common"
  -I"$OHOS_HEADERS/graphic_graphic_surface/interfaces/inner_api/buffer_handle"
  -I"$OHOS_HEADERS/graphic_graphic_surface/interfaces/inner_api/utils"
  -I"$OHOS_HEADERS/graphic_graphic_surface/surface/include"
  -I"$OHOS_HEADERS/third_party_skia/m133"
  -I"$OHOS_HEADERS/third_party_bounds_checking_function/include"
  -I"$OHOS_HEADERS/multimedia_image_framework/interfaces/innerkits/include"
  -I"$OHOS_HEADERS/multimedia_image_framework/interfaces/kits/native/include"
  -I"$OHOS_HEADERS/multimodalinput_input/interfaces/native/innerkits/event/include"
  -I"$OHOS_HEADERS/multimodalinput_input/interfaces/native/innerkits/proxy/include"
  -I"$OHOS_HEADERS/multimodalinput_input/util/common/include"
  -I"$JNI_INC"
  -I"$JNI_INC/linux"
)

LIB_DIR_FLAGS=()
PRELOAD_LIBS=(-ldl)
BRIDGE_LIBS=(-ldl)
IME_LIBS=(-ldl)
if [ -n "$DAYU600_DEVICE_LIBS_DIR" ] && [ -d "$DAYU600_DEVICE_LIBS_DIR" ]; then
  while IFS= read -r dir; do
    LIB_DIR_FLAGS+=(-L"$dir")
  done < <(find "$DAYU600_DEVICE_LIBS_DIR" -type d)
  PRELOAD_LIBS=(
    -Wl,--no-as-needed
    -lhilog
    -lEGL
    -lGLESv3
    -ldl
  )
  BRIDGE_LIBS=(
    -Wl,--no-as-needed
    -lwms.z
    -lrender_service_client.z
    -lrender_service_base.z
    -lrender_service.z
    -lsurface.z
    -ldisplaymgr.z
    -ldm.z
    -ldms.z
    -ldm_lite.z
    -lipc_core.z
    -lsamgr_proxy.z
    -lutils.z
    -leventhandler.z
    -lhilog
    -lEGL
    -lGLESv3
    -ldl
  )
  IME_LIBS=(
    -Wl,--no-as-needed
    -lutils.z
    -leventhandler.z
    -ldl
  )
fi

compile_one() {
  local src="$1"
  local obj="$OUT/obj/$(basename "$src" .cpp).o"
  echo "CXX $(basename "$src")" >&2
  if ! "$CXX" "${COMMON_FLAGS[@]}" "${INCLUDES[@]}" -c "$src" -o "$obj" \
      >"$OUT/logs/$(basename "$src").log" 2>&1; then
    tail -80 "$OUT/logs/$(basename "$src").log" >&2 || true
    return 1
  fi
  printf '%s\n' "$obj"
}

PRELOAD_OBJS=()
for source in \
  "$SRC/hwui_oh_abi_patch.cpp" \
  "$SRC/oh_anativewindow_shim.cpp" \
  "$SRC/oh_display_manager_compat.cpp"; do
  PRELOAD_OBJS+=("$(compile_one "$source")")
done

BRIDGE_OBJS=()
for source in \
  "$SRC/oh_anativewindow_shim.cpp" \
  "$SRC/oh_display_manager_compat.cpp" \
  "$SRC/oh_input_bridge.cpp" \
  "$SRC/input_method_bridge.cpp" \
  "$SRC/proxy_inject.cpp" \
  "$SRC/oh_window_manager_client.cpp"; do
  BRIDGE_OBJS+=("$(compile_one "$source")")
done

echo "LD libwestlake_dayu600_sidecar.so"
"$CXX" --target=aarch64-linux-ohos --sysroot="$SYSROOT" -shared \
  -Wl,--gc-sections \
  -Wl,--allow-shlib-undefined \
  -Wl,-soname,libwestlake_dayu600_sidecar.so \
  -Wl,-rpath,/system/lib64 \
  -Wl,-rpath,/system/lib64/platformsdk \
  -Wl,-rpath,/system/lib64/chipset-sdk-sp \
  "${LIB_DIR_FLAGS[@]}" \
  "${PRELOAD_OBJS[@]}" \
  "${PRELOAD_LIBS[@]}" \
  -o "$OUT/libwestlake_dayu600_sidecar.so" \
  >"$OUT/logs/libwestlake_dayu600_sidecar.link.log" 2>&1

echo "LD libwestlake_dayu600_bridge_heavy.so"
"$CXX" --target=aarch64-linux-ohos --sysroot="$SYSROOT" -shared \
  -Wl,--gc-sections \
  -Wl,--allow-shlib-undefined \
  -Wl,-soname,libwestlake_dayu600_bridge_heavy.so \
  -Wl,-rpath,/system/lib64 \
  -Wl,-rpath,/system/lib64/platformsdk \
  -Wl,-rpath,/system/lib64/chipset-sdk-sp \
  "${LIB_DIR_FLAGS[@]}" \
  "${BRIDGE_OBJS[@]}" \
  "${BRIDGE_LIBS[@]}" \
  -o "$OUT/libwestlake_dayu600_bridge_heavy.so" \
  >"$OUT/logs/libwestlake_dayu600_bridge_heavy.link.log" 2>&1

echo "LD liboh_adapter_bridge.so"
"$CXX" --target=aarch64-linux-ohos --sysroot="$SYSROOT" -shared \
  -Wl,--gc-sections \
  -Wl,--allow-shlib-undefined \
  -Wl,-soname,liboh_adapter_bridge.so \
  -Wl,-rpath,/system/lib64 \
  -Wl,-rpath,/system/lib64/platformsdk \
  -Wl,-rpath,/system/lib64/chipset-sdk-sp \
  "${LIB_DIR_FLAGS[@]}" \
  "${BRIDGE_OBJS[@]}" \
  "${BRIDGE_LIBS[@]}" \
  -o "$OUT/liboh_adapter_bridge.so" \
  >"$OUT/logs/liboh_adapter_bridge.link.log" 2>&1

IME_OBJ="$(compile_one "$SRC/oh_ime_helper.cpp")"
echo "LD liboh_ime_helper.so"
"$CXX" --target=aarch64-linux-ohos --sysroot="$SYSROOT" -shared \
  -Wl,--gc-sections \
  -Wl,--allow-shlib-undefined \
  -Wl,-soname,liboh_ime_helper.so \
  -Wl,-rpath,/system/lib64 \
  -Wl,-rpath,/system/lib64/chipset-sdk-sp \
  "${LIB_DIR_FLAGS[@]}" \
  "$IME_OBJ" \
  "${IME_LIBS[@]}" \
  -o "$OUT/liboh_ime_helper.so" \
  >"$OUT/logs/liboh_ime_helper.link.log" 2>&1

file "$OUT/libwestlake_dayu600_sidecar.so" \
     "$OUT/libwestlake_dayu600_bridge_heavy.so" \
     "$OUT/liboh_adapter_bridge.so" \
     "$OUT/liboh_ime_helper.so"
echo "out: $OUT"
