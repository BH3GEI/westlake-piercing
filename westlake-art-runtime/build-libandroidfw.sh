#!/usr/bin/env bash
# libandroidfw bring-up for DAYU600 (aarch64-linux-ohos) — real AssetManager/Resources.
# First foundation stone of the real-framework path.
#
# STATUS (2026-07-05): AssetManager2.cpp HEADER dep-tree fully resolved; now at the
# SEMANTIC compat layer (ftl::SmallVector -> std::span conversion under OHOS libc++,
# construct_at/comparison template errors) — needs code-level compat like libhwui's.
# Then: the other ~19 androidfw TUs, build the dep libs (libbase/libutils/libziparchive)
# to LINK, the JNI (android_util_AssetManager.cpp), register the natives, device-test.
#
# KEY DISCOVERY: googlesource GIT is blocked but its HTTP ?format=TEXT (base64) works,
# and github (push) works. Fetch any AOSP file with:  aospget <repo> <path> <dest>
set -euo pipefail
A2OH="${A2OH:-/Users/yao/a2oh-source-audit}"; L="${L:-/Users/yao/westlake-local-build}"
PY=/opt/homebrew/bin/python3
aospget(){ # <repo> <path-in-repo> <dest-file>   (tag android-15.0.0_r9)
  curl -s -m 25 -o /tmp/ag.raw \
    "https://android.googlesource.com/platform/$1/+/refs/tags/android-15.0.0_r9/$2?format=TEXT" 2>/dev/null
  "$PY" -c "import base64,sys;d=base64.b64decode(open('/tmp/ag.raw','rb').read());open('$3','wb').write(d);sys.exit(0 if len(d)>30 else 1)" \
    && echo "  ✓ $3" || echo "  ✗ $2"; }

# --- androidfw source (already fetched to $L/aosp-fb-androidfw): -----------------
#   git clone --filter=blob:none --sparse --depth 1 --branch android-15.0.0_r9 \
#     https://github.com/aosp-mirror/platform_frameworks_base $L/aosp-fb-androidfw
#   (cd $L/aosp-fb-androidfw && git sparse-checkout set libs/androidfw core/jni)
FW="$L/aosp-fb-androidfw"; S15="$A2OH/aosp-15-src"    # aosp-15-src has system/{libbase,libutils,libcutils,liblog}

# --- fetched header deps (reproducible): ----------------------------------------
mkdir -p "$L/incfs-stub/util" "$L/ndk-stub/android" "$L/fmt-15/fmt" "$L/ftl-15/ftl/details"
[ -f "$L/incfs-stub/util/map_ptr.h" ] || aospget system/incremental_delivery incfs/util/include/util/map_ptr.h "$L/incfs-stub/util/map_ptr.h"
[ -f "$L/ndk-stub/android/configuration.h" ] || aospget frameworks/native include/android/configuration.h "$L/ndk-stub/android/configuration.h"
# android/asset_manager.h: minimal opaque stub (configuration.h only forward-refs it) — see repo copy.
for h in args chrono color compile core format format-inl os ostream printf ranges std xchar; do
  [ -f "$L/fmt-15/fmt/$h.h" ] || aospget external/fmtlib include/fmt/$h.h "$L/fmt-15/fmt/$h.h"; done
for h in small_vector.h static_vector.h initializer_list.h small_map.h details/array_traits.h details/type_traits.h; do
  [ -f "$L/ftl-15/ftl/$h" ] || aospget frameworks/native include/ftl/$h "$L/ftl-15/ftl/$h"; done
# system/graphics.h + libsystem come from aosp-android-11 (present locally).

CXX="$A2OH/ohos-sdk/native/llvm/bin/clang++"; SYSROOT="$A2OH/ohos-sdk/native/sysroot"
COMPAT=/Users/yao/westlake-piercing/ports/dayu600/include
INCS=(-I"$FW/libs/androidfw/include" -I"$S15/system/libbase/include"
  -I"$S15/system/core/libutils/include" -I"$S15/system/core/libcutils/include"
  -I"$S15/system/logging/liblog/include" -I"$L/aosp-android-11/system/core/libsystem/include"
  -I"$L/incfs-stub" -I"$L/ndk-stub" -I"$L/fmt-15" -I"$L/ftl-15" -I"$SYSROOT/usr/include")
FLAGS=(--target=aarch64-linux-ohos --sysroot="$SYSROOT" -std=c++20 -O0 -fPIC -fno-exceptions
  -Wno-error -D__ANDROID__ -D__OHOS__ -D__ANDROID_API__=35 -include "$COMPAT/westlake_ohos_compat.h")
SRCS=(ApkAssets Asset AssetDir AssetManager AssetManager2 AssetsProvider AttributeResolution
  ConfigDescription Idmap LoadedArsc Locale misc ResourceTypes StringPool ZipFileRO ZipUtils
  ChunkIterator ApkParsing FileStream BigBuffer BigBufferStream)
OBJ="$L/androidfw-build/obj"; mkdir -p "$OBJ"
for s in "${SRCS[@]}"; do
  echo "== $s.cpp =="
  "$CXX" "${FLAGS[@]}" "${INCS[@]}" -c "$FW/libs/androidfw/$s.cpp" -o "$OBJ/$s.o" \
    && echo "  OK" || { echo "  FAIL: $s.cpp — fix compat, continue"; }
done
echo "NEXT: compat-fix semantic errors (ftl->std::span), build dep libs to link, JNI, register, device-test."
