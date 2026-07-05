#!/usr/bin/env bash
# libandroidfw bring-up scaffold for DAYU600 (aarch64-linux-ohos).
# This is the FIRST foundation stone of the real-framework path: real
# android.content.res.AssetManager/Resources need libandroidfw's native layer
# (real AssetManager HARD-CRASHES today — nativeAsset* have no impl).
#
# STATUS (2026-07-05): source fetched, build STARTED, mapping the dep chain.
# First dep gap found: androidfw is AOSP-15 but our libbase is aosp-android-11
# (missing android-base/function_ref.h) -> need AOSP-15 libbase headers.
#
# SOURCE FETCH (github aosp-mirror; googlesource is unreachable, github works):
#   cd /Users/yao/westlake-local-build
#   git clone --filter=blob:none --sparse --depth 1 --branch android-15.0.0_r9 \
#     https://github.com/aosp-mirror/platform_frameworks_base aosp-fb-androidfw
#   (cd aosp-fb-androidfw && git sparse-checkout set libs/androidfw core/jni)
#   # AOSP-15 libbase (next dep):
#   git clone --filter=blob:none --sparse --depth 1 --branch android-15.0.0_r9 \
#     https://github.com/aosp-mirror/platform_system_libbase aosp-system-libbase
set -euo pipefail

A2OH="${A2OH:-/Users/yao/a2oh-source-audit}"
L="${L:-/Users/yao/westlake-local-build}"
CXX="$A2OH/ohos-sdk/native/llvm/bin/clang++"
SYSROOT="$A2OH/ohos-sdk/native/sysroot"
FW="$L/aosp-fb-androidfw"
LIBBASE15="$L/aosp-system-libbase/include"   # fetch per header above
OUT="$L/androidfw-build"; OBJ="$OUT/obj"; mkdir -p "$OBJ"

# Core resource-loading TUs (from libs/androidfw/Android.bp libandroidfw srcs).
SRCS=(ApkAssets Asset AssetDir AssetManager AssetManager2 AssetsProvider
      AttributeResolution ConfigDescription Idmap LoadedArsc Locale misc
      ResourceTypes StringPool ZipFileRO ZipUtils ChunkIterator ApkParsing
      FileStream BigBuffer BigBufferStream)

CXXFLAGS=(--target=aarch64-linux-ohos --sysroot="$SYSROOT"
  -std=c++20 -O0 -g -fPIC -fno-exceptions -Wno-error
  -D__ANDROID__ -D__OHOS__ -D__ANDROID_API__=35)
INCLUDES=(
  -I"$FW/libs/androidfw/include"
  -I"${LIBBASE15}"                                   # AOSP-15 libbase (function_ref.h etc.)
  -I"$A2OH/aosp-15-headers/system/core/libutils/include"
  -I"$L/aosp-android-11/system/core/libcutils/include"
  -I"$L/aosp-android-11/system/core/liblog/include"
  -I"$L/aosp-android-11/system/core/libsystem/include"
  -I"$SYSROOT/usr/include"
  # + libziparchive headers, fmtlib, incfs stubs as errors surface
)

for s in "${SRCS[@]}"; do
  echo "== compiling $s.cpp =="
  "$CXX" "${CXXFLAGS[@]}" "${INCLUDES[@]}" -c "$FW/libs/androidfw/$s.cpp" -o "$OBJ/$s.o" \
    && echo "  OK" || { echo "  FAIL: $s.cpp (fix compat / add include, then continue)"; exit 1; }
done

echo "== NEXT: build core/jni/android_util_AssetManager.cpp, link libandroidfw.so,"
echo "         register the natives in the runtime, re-run assetProbe stage. =="
