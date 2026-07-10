#!/usr/bin/env bash
set -euo pipefail

ROOT=/mnt/c/Users/ufop/a2oh-source-audit/art-latest
ART=/mnt/c/Users/ufop/a2oh-source-audit/aosp-art-15
AOSP=/mnt/c/Users/ufop/a2oh-source-audit/aosp-android-11
STUBS="$ROOT/stubs"
CLANG="$ROOT/tools/clang-15-host-libcxx.sh"
SDK_LLVM=/mnt/c/Users/ufop/ohos-sdk-6.0.0.47/linux/native/llvm

cd "$ROOT"

mkdir -p build/bin/backups
if [ -f build/bin/dex2oat ] && [ ! -f build/bin/backups/dex2oat.before-current-relink ]; then
  cp -f build/bin/dex2oat build/bin/backups/dex2oat.before-current-relink
fi

make -f Makefile link -j2 \
  ART="$ART" \
  AOSP="$AOSP" \
  STUBS="$STUBS" \
  CXX="$CLANG" \
  CC="$CLANG" \
  CC_ASM="$SDK_LLVM/bin/clang-15" \
  HOSTLD="$CLANG" \
  LIBCXX="$SDK_LLVM/include/c++/v1" \
  CLANG_LIB="$SDK_LLVM/lib/x86_64-unknown-linux-gnu" \
  LDFLAGS="-L$SDK_LLVM/lib/x86_64-unknown-linux-gnu -Wl,-rpath,$SDK_LLVM/lib/x86_64-unknown-linux-gnu -lc++ -lz -lpthread -ldl -lm -latomic"
