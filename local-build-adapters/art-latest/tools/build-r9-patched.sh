#!/usr/bin/env bash
# build-r9-patched.sh — rebuild the 8 westlake-patched runtime TUs for the R9 line
# from patches-r9/ (the old-API .wl-bak-20260718 vintage), WITHOUT touching the
# shared patches/ tree, which a concurrent session has re-ported to the
# lineage-22.2 API (those versions do not compile against aosp-art-15-r9).
#
# Extra per-file include flags are copied verbatim from the corresponding rules
# in Makefile.ohos-arm64 (lines 258/282/306/314/346/378/386/394).
set -uo pipefail

ROOT=/home/yao/westlake-local-build/art-latest
ART=/home/yao/westlake-local-build/aosp-art-15-r9
AOSP=/home/yao/westlake-local-build/aosp-android-11-full
STUBS=$ROOT/stubs
SDK=/home/yao/ohos-sdk/native
LLVM=$SDK/llvm
SYSROOT=$SDK/sysroot
B=${BUILDDIR:-build-ohos-arm64-r9}
LNH=/home/yao/westlake-local-build/libnativehelper-r9
P=$ROOT/patches-r9
export LD_LIBRARY_PATH="$ROOT/$B/toolchain-shims:$LLVM/lib${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
cd "$ROOT"

CXXFLAGS=(
  -std=c++2a -O2 -w -fPIC -DNDEBUG
  --target=aarch64-linux-ohos --sysroot="$SYSROOT" -D__MUSL__
  -B"$ROOT/$B/toolchain-shims" --rtlib=compiler-rt
  -include "$STUBS/art_ohos_compat.h"
  -Wno-attributes -Wno-invalid-partial-specialization -Wno-error=invalid-partial-specialization
  -I"$STUBS" -I"$STUBS/runtime"
  -I"$ART" -I"$ART/libdexfile" -I"$ART/libartbase" -I"$ART/libartpalette/include"
  -isystem "$ART/runtime"
  -I"$ART/compiler" -I"$ART/compiler/export" -I"$ART/disassembler" -I"$ART/compiler/debug"
  -I"$ART/libelffile" -I"$ART/libprofile" -I"$ART/cmdline" -I"$ART/dex2oat" -I"$ART/dex2oat/include"
  -I"$AOSP/system/core/base/include" -I"$AOSP/system/core/libziparchive/include"
  -I"$AOSP/system/core/libutils/include" -I"$AOSP/system/core/libcutils/include"
  -I"$LNH/include_jni" -I"$LNH/header_only_include" -I"$LNH/include"
  -I"$AOSP/libnativehelper/include_jni" -I"$AOSP/libnativehelper/header_only_include"
  -I"$AOSP/libnativehelper/include" -I"$AOSP/system/logging/liblog/include"
  -I"$AOSP/external/zlib" -I"$AOSP/external/lz4/lib" -I"$AOSP/external/vixl/src"
  -I"$AOSP/external/lzma/C" -I"$ART/sigchainlib" -I"$AOSP/libnativehelper/platform_include"
  -I"$ART/libnativebridge/include" -I"$AOSP/system/core/libbacktrace/include"
  -I"$ART/libnativeloader/include" -I"$AOSP/external/icu/icu4c/source/common"
  -I"$AOSP/external/tinyxml2" -I"$AOSP/external/fmtlib/include"
  -I"$ART/libdexfile/external/include"
  -DART_DEFAULT_GC_TYPE_IS_CMS -DBUILDING_LIBART -DART_BASE_ADDRESS=0x70000000
  -DART_STACK_OVERFLOW_GAP_arm=8192 -DART_STACK_OVERFLOW_GAP_arm64=8192
  -DART_STACK_OVERFLOW_GAP_x86=8192 -DART_STACK_OVERFLOW_GAP_x86_64=8192
  -DART_STACK_OVERFLOW_GAP_riscv64=8192 -DUSE_D8_DESUGAR -DART_USE_CXX_INTERPRETER
)

fails=0
ok=0
build() {  # build <src> <obj> [extra flags...]
  local src="$1"; local obj="$2"; shift 2
  mkdir -p "$(dirname "$obj")"
  if "$LLVM/bin/clang-15" "${CXXFLAGS[@]}" "$@" -c "$src" -o "$obj" 2>&1; then
    echo "OK: $(basename "$src")"; ok=$((ok+1))
  else
    echo "FAIL: $(basename "$src")"; rm -f "$obj"; fails=$((fails+1))
  fi
}

build "$P/runtime/runtime.cc"   "$B/runtime/runtime.o"
build "$P/runtime/art_method.cc" "$B/runtime/art_method.o"
build "$P/runtime/interpreter/mterp/nterp.cc" "$B/runtime/interpreter/mterp/nterp.o" \
      -I"$ART/runtime/interpreter/mterp" -I"$ART/runtime/interpreter"
build "$P/runtime/interpreter/interpreter.cc" "$B/runtime/interpreter/interpreter.o" \
      -I"$ART/runtime/interpreter"
build "$P/runtime/mirror/class.cc" "$B/runtime/mirror/class.o" \
      -iquote "$ART/runtime/mirror"
build "$P/runtime/entrypoints/quick/quick_throw_entrypoints.cc" \
      "$B/runtime/entrypoints/quick/quick_throw_entrypoints.o" \
      -I"$ART/runtime/entrypoints" -I"$ART/runtime/entrypoints/quick"
build "$P/runtime/entrypoints/quick/quick_trampoline_entrypoints.cc" \
      "$B/runtime/entrypoints/quick/quick_trampoline_entrypoints.o" \
      -I"$ART/runtime/entrypoints" -I"$ART/runtime/entrypoints/quick"
build "$P/runtime/native/dalvik_system_DexFile.cc" \
      "$B/runtime/native/dalvik_system_DexFile.o" \
      -I"$ART/runtime/native"

echo "=== patched-r9 TUs: $ok OK, $fails FAIL"
exit $fails
