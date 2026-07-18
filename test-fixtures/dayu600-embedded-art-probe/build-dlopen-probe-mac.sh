#!/usr/bin/env bash
# build-dlopen-probe-mac.sh — macOS (OH SDK clang) build of the embedded-art
# dlopen probe. Freestanding .so (-nostdlib, unresolved symbols resolved from
# the host process' global set at dlopen time), so any aarch64-targeting clang
# works; we use the OpenHarmony SDK LLVM that also builds the artboot glue.
#
#   test-fixtures/dayu600-embedded-art-probe/build-dlopen-probe-mac.sh
#
# Output: out/libwestlake_embedded_art_dlopen_probe.so (sha256 printed).
set -euo pipefail

FIXTURE="$(cd "$(dirname "$0")" && pwd)"
OUT="$FIXTURE/out"
mkdir -p "$OUT"

OH="${OH_SDK:-$HOME/command-line-tools/sdk/default/openharmony}"
CLANG="$OH/native/llvm/bin/clang"
SYSROOT="$OH/native/sysroot"
[ -x "$CLANG" ] || { echo "OH SDK clang not found: $CLANG"; exit 1; }

# JNI headers: any JDK 17+ works (types are identical for aarch64).
JH="${JH:-$HOME/jdk17/jdk-17.0.19+10/Contents/Home}"
[ -f "$JH/include/jni.h" ] || { echo "jni.h not found under JH=$JH"; exit 1; }

"$CLANG" --target=aarch64-linux-ohos --sysroot="$SYSROOT" \
  -fPIC -shared -nostdlib -nodefaultlibs -fno-stack-protector -O2 \
  -I"$JH/include" -I"$JH/include/darwin" \
  -Wl,--unresolved-symbols=ignore-all \
  -Wl,-soname,libwestlake_embedded_art_dlopen_probe.so \
  -o "$OUT/libwestlake_embedded_art_dlopen_probe.so" \
  "$FIXTURE/westlake_embedded_art_dlopen_probe.c"

shasum -a 256 "$OUT/libwestlake_embedded_art_dlopen_probe.so"
echo "built -> $OUT/libwestlake_embedded_art_dlopen_probe.so"
