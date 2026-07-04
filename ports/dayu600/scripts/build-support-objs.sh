#!/usr/bin/env bash
# Compile gate-1 support objects: local stub TUs + real AOSP-15 libutils
# sources (RefBase/Looper/Thread/String8… — hwui needs their real semantics).
set -euo pipefail

A2OH="${A2OH:-$HOME/a2oh-source-audit}"
repo="$(cd "$(dirname "$0")/../../.." && pwd)"
hwui="$A2OH/aosp-frameworks-base-15-r9/libs/hwui"
skia="$A2OH/openharmony-third-party-skia"
out="$repo/ports/dayu600/out/libhwui-build"
native="${OHOS_NATIVE:-$A2OH/ohos-sdk/native}"
cxx="$native/llvm/bin/clang++"
sysroot="$native/sysroot"
mkdir -p "$out/support-obj"

a15src="$A2OH/aosp-15-src"
a15h="$A2OH/aosp-15-headers"

flags=(
  --target=aarch64-linux-ohos
  --sysroot="$sysroot"
  -std=c++20 -O0 -g -fPIC
  -fno-exceptions -fno-rtti
  -Wno-error -Wno-unused-parameter
  -DSK_BUILD_FOR_ANDROID_FRAMEWORK
  -D__ANDROID_API__=35
  -D__ANDROID__
  -include "$repo/ports/dayu600/include/westlake_ohos_compat.h"
)

utils_includes=(
  -I"$a15h/system/core/libutils/include"
  -I"$a15src/system/core/libcutils/include"
  -I"$a15src/system/libbase/include"
  -I"$a15src/system/logging/liblog/include"
  -I"$A2OH/aosp-android-11/system/core/libsystem/include"
  -I"$repo/ports/dayu600/include"
  -I"$sysroot/usr/include"
)

stub_includes=(
  -I"$hwui"
  -I"$hwui/platform/android"
  -I"$hwui/apex/include"
  -I"$repo/ports/dayu600/include"
  -I"$a15h/system/core/libutils/include"
  -I"$A2OH/aosp-android-11/system/core/libcutils/include"
  -I"$A2OH/aosp-android-11/system/core/libsystem/include"
  -I"$A2OH/aosp-android-11/system/core/base/include"
  -I"$A2OH/aosp-android-11/libnativehelper/include_jni"
  -I"$skia/m133"
  -I"$skia/m133/include"
  -I"$skia/m133/client_utils/android"
  -I"$A2OH/ohos-6.0-headers/hiviewdfx_hilog/interfaces/native/innerkits/include"
)

compile() {
  local src="$1"; shift
  local obj="$out/support-obj/$(basename "${src%.*}").o"
  if [ -f "$obj" ] && [ "${FORCE:-0}" != "1" ]; then echo "SKIP $(basename "$src")"; return; fi
  echo "CXX $(basename "$src")"
  "$cxx" "${flags[@]}" "$@" -c "$src" -o "$obj"
}

# local stubs
for f in ndk_stubs graphics_stats_stub skia_compat_stubs skia_gpu_interop_stubs; do
  compile "$repo/ports/dayu600/support-src/$f.cpp" "${stub_includes[@]}"
done

# real AOSP libutils pieces
for f in binder/RefBase binder/String8 binder/String16 binder/SharedBuffer \
         binder/Unicode binder/VectorImpl binder/Errors binder/StrongPointer \
         LightRefBase Looper Threads Timers; do
  compile "$a15src/system/core/libutils/$f.cpp" "${utils_includes[@]}"
done

echo "support objects ready: $(ls "$out/support-obj" | wc -l)"
