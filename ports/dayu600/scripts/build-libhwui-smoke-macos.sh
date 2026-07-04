#!/usr/bin/env bash
# macOS port of the WSL smoke build embedded in build-libhwui-smoke.ps1.
# Compiles the libhwui source list one file at a time with the OHOS SDK clang
# (aarch64-linux-ohos) until a source fails, mirroring the DAYU600 bringup flow.
#
# Inputs (override via env):
#   A2OH        source-audit root      (default ~/a2oh-source-audit)
#   OHOS_NATIVE SDK native dir holding llvm/bin + sysroot
#   MAX_SOURCES how many entries of the manifest to attempt
set -euo pipefail

A2OH="${A2OH:-$HOME/a2oh-source-audit}"
repo="$(cd "$(dirname "$0")/../../.." && pwd)"
hwui="$A2OH/aosp-frameworks-base-15-r9/libs/hwui"
oh_headers="$A2OH/ohos-6.0-headers"
aosp11="$A2OH/aosp-android-11"
skia="$A2OH/openharmony-third-party-skia"
out="$repo/ports/dayu600/out/libhwui-build"
source_list="$out/libhwui-source-files.txt"
max_sources="${MAX_SOURCES:-12}"

native="${OHOS_NATIVE:-}"
if [ -z "$native" ]; then
  for cand in "$A2OH/ohos-sdk/native" "$A2OH/sdk/native" "$A2OH/native"; do
    if [ -d "$cand/llvm/bin" ]; then native="$cand"; break; fi
  done
fi
if [ -z "$native" ] || [ ! -d "$native/llvm/bin" ]; then
  echo "OHOS native toolchain not found (set OHOS_NATIVE)" >&2
  exit 2
fi

cxx="$native/llvm/bin/clang++"
[ -x "$native/llvm/bin/aarch64-unknown-linux-ohos-clang++" ] && cxx="$native/llvm/bin/aarch64-unknown-linux-ohos-clang++"
sysroot="$native/sysroot"
mkdir -p "$out/obj" "$out/logs"

jni_inc="$aosp11/libnativehelper/include_jni"
[ -f "$jni_inc/jni.h" ] || { echo "jni.h not found at $jni_inc" >&2; exit 2; }

common_flags=(
  --target=aarch64-linux-ohos
  --sysroot="$sysroot"
  -std=c++20
  -O0
  -g
  -fPIC
  -fno-exceptions
  -fno-rtti
  -Wno-error
  -Wno-unused-parameter
  -Wno-unused-variable
  -Wno-non-virtual-dtor
  -Wno-maybe-uninitialized
  -Wno-conversion-null
  -Wno-implicit-fallthrough
  -DEGL_EGLEXT_PROTOTYPES
  -DGL_GLEXT_PROTOTYPES
  -DATRACE_TAG=ATRACE_TAG_VIEW
  -DLOG_TAG=\"HWUI\"
  -DU_USING_ICU_NAMESPACE=0
  -D__ANDROID_API__=35
  -D__ANDROID__
  -D__OHOS__
  -DUSE_M133_SKIA
  -DSK_BUILD_FOR_ANDROID_FRAMEWORK
  -include "$repo/ports/dayu600/include/westlake_ohos_compat.h"
  -include "$repo/ports/dayu600/include/sys/cdefs.h"
  -include "$repo/ports/dayu600/include/android/log.h"
  -include "$repo/ports/dayu600/include/android/choreographer.h"
)

includes=(
  -I"$hwui"
  -I"$hwui/platform/android"
  -I"$hwui/apex/include"
  -I"$hwui/jni"
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
  -I"$sysroot/usr/include"
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
  -I"$skia/m133"
  -I"$skia/m133/include"
  -I"$skia/m133/include/android"
  -I"$skia/m133/client_utils/android"
  -I"$skia/m133/src/gpu"
  -I"$skia/m133/src/gpu/ganesh"
  -I"$oh_headers/third_party_skia/m133/src/core"
  -I"$oh_headers/third_party_skia/m133/src/utils"
  -I"$oh_headers/graphic_graphic_surface/interfaces/inner_api/surface"
  -I"$oh_headers/graphic_graphic_surface/interfaces/inner_api/common"
  -I"$oh_headers/graphic_graphic_surface/interfaces/inner_api/buffer_handle"
  -I"$oh_headers/graphic_graphic_2d/interfaces/inner_api/common"
  -I"$oh_headers/graphic_graphic_2d/rosen/modules/platform"
  -I"$oh_headers/hiviewdfx_hilog/interfaces/native/innerkits/include"
)

count=0
failed=0
while IFS= read -r rel; do
  rel="${rel%$'\r'}"
  [ -z "$rel" ] && continue
  count=$((count + 1))
  [ "$count" -gt "$max_sources" ] && { count=$((count - 1)); break; }
  src="$hwui/$rel"
  safe="$(printf '%s' "$rel" | tr '/.' '__')"
  obj="$out/obj/$safe.o"
  log="$out/logs/$safe.log"
  if [ -f "$obj" ] && [ "${FORCE:-0}" != "1" ]; then
    echo "SKIP[$count] $rel (cached)"
    continue
  fi
  echo "CXX[$count] $rel"
  if ! "$cxx" "${common_flags[@]}" "${includes[@]}" -c "$src" -o "$obj" >"$log" 2>&1; then
    echo "FAILED[$count] $rel"
    tail -80 "$log" || true
    failed=1
    break
  fi
done < "$source_list"

echo "compiled_attempted=$count"
if [ "$failed" -ne 0 ]; then
  exit 1
fi
