#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
ART="${ART:-/mnt/c/Users/ufop/a2oh-source-audit/aosp-art-15}"
AOSP="${AOSP:-/mnt/c/Users/ufop/a2oh-source-audit/aosp-android-11}"
STUBS="${STUBS:-$ROOT/stubs}"
SDK="${OHOS_SDK_NATIVE:-/mnt/c/Users/ufop/ohos-sdk-6.0.0.47/linux/native}"
LLVM="$SDK/llvm"
SYSROOT="$SDK/sysroot"
B="${BUILDDIR:-build-ohos-arm64}"
CLANG="$LLVM/bin/clang-15"
MAKEFILE="${MAKEFILE:-Makefile.ohos-arm64}"
LD_SHIM_DIR="$ROOT/$B/toolchain-shims"
mkdir -p "$LD_SHIM_DIR"
ln -sf "$LLVM/bin/lld" "$LD_SHIM_DIR/ld.lld"
ln -sf "$LLVM/lib/libxml2.so.2.14.0" "$LD_SHIM_DIR/libxml2.so.16"
TARGET_FLAGS="--target=aarch64-linux-ohos --sysroot=$SYSROOT -D__MUSL__ -B$LD_SHIM_DIR --rtlib=compiler-rt"
export LD_LIBRARY_PATH="$LD_SHIM_DIR:$LLVM/lib${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"

cd "$ROOT"

make -f "$MAKEFILE" \
  all ziparchive sigchain nativehelper dalvikvm-main fault-handler-stubs \
  template-instantiations jni-stubs asm sve-stub metrics-stubs fmtlib tinyxml2 \
  ART="$ART" ART11="$AOSP/art" AOSP="$AOSP" STUBS="$STUBS" \
  OHOS_LLVM="$LLVM" OHOS_SYSROOT="$SYSROOT" BUILDDIR="$B" \
  CXX="$CLANG" CC="$CLANG" TARGET_FLAGS="$TARGET_FLAGS" -j2

mkdir -p "$B/stubs"
"$CLANG" -std=c++2a -O2 -w -fPIC -DNDEBUG \
  $TARGET_FLAGS \
  -include "$STUBS/art_ohos_compat.h" \
  -Wno-attributes \
  -I"$STUBS" \
  -I"$STUBS/runtime" \
  -I"$ART" \
  -I"$ART/libdexfile" \
  -I"$ART/libartbase" \
  -I"$ART/libartpalette/include" \
  -isystem "$ART/runtime" \
  -I"$ART/compiler" \
  -I"$ART/compiler/export" \
  -I"$ART/disassembler" \
  -I"$ART/compiler/debug" \
  -I"$ART/libelffile" \
  -I"$ART/libprofile" \
  -I"$ART/cmdline" \
  -I"$ART/dex2oat" \
  -I"$ART/dex2oat/include" \
  -I"$AOSP/system/core/base/include" \
  -I"$AOSP/system/core/libziparchive/include" \
  -I"$AOSP/system/core/libutils/include" \
  -I"$AOSP/system/core/libcutils/include" \
  -I"$AOSP/libnativehelper/include_jni" \
  -I"$AOSP/libnativehelper/header_only_include" \
  -I"$AOSP/libnativehelper/include" \
  -I"$AOSP/system/logging/liblog/include" \
  -I"$AOSP/external/zlib" \
  -I"$AOSP/external/lz4/lib" \
  -I"$AOSP/external/vixl/src" \
  -I"$AOSP/external/lzma/C" \
  -I"$ART/sigchainlib" \
  -I"$AOSP/libnativehelper/platform_include" \
  -I"$ART/libnativebridge/include" \
  -I"$AOSP/system/core/libbacktrace/include" \
  -I"$ART/libnativeloader/include" \
  -I"$AOSP/external/icu/icu4c/source/common" \
  -I"$AOSP/external/tinyxml2" \
  -I"$AOSP/external/fmtlib/include" \
  -I"$ART/libdexfile/external/include" \
  -DART_DEFAULT_GC_TYPE_IS_CMS \
  -DBUILDING_LIBART \
  -DART_BASE_ADDRESS=0x70000000 \
  -DART_STACK_OVERFLOW_GAP_arm=8192 \
  -DART_STACK_OVERFLOW_GAP_arm64=8192 \
  -DART_STACK_OVERFLOW_GAP_x86=8192 \
  -DART_STACK_OVERFLOW_GAP_x86_64=8192 \
  -DART_STACK_OVERFLOW_GAP_riscv64=8192 \
  -DUSE_D8_DESUGAR \
  -DART_USE_CXX_INTERPRETER \
  -c "$STUBS/westlake_jni.cc" \
  -o "$B/stubs/westlake_jni.o"

"$CLANG" $TARGET_FLAGS -fPIC -O2 -w \
  -I"$AOSP/libnativehelper/include_jni" \
  -c "$STUBS/westlake_bionic_compat_stubs.c" \
  -o "$B/stubs/westlake_bionic_compat_stubs.o"

mkdir -p "$B/lib"
out="$B/lib/libwestlake_art.so"
tmp="$out.tmp"
rm -f "$tmp"

"$CLANG" -o "$tmp" \
  $TARGET_FLAGS -shared -fPIC -stdlib=libc++ \
  -Wl,--unresolved-symbols=ignore-all \
  -Wl,--allow-multiple-definition \
  -Wl,--allow-shlib-undefined \
  -Wl,-soname,libwestlake_art.so \
  -Wl,--version-script="$ROOT/stubs/westlake_exports.map" \
  -Wl,--exclude-libs,ALL \
  "$B/stubs/westlake_jni.o" \
  "$B/stubs/westlake_bionic_compat_stubs.o" \
  $(find "$B/nativehelper" -name '*.o') \
  $(find "$B/runtime" -name '*.o') \
  $(find "$B/libdexfile" -name '*.o') \
  $(find "$B/libartbase" -name '*.o') \
  $(find "$B/libelffile" -name '*.o') \
  $(find "$B/libprofile" -name '*.o') \
  $(find "$B/compiler" -name '*.o') \
  $(find "$B/vixl" -name '*.o') \
  $(find "$B/android-base" -name '*.o') \
  $(find "$B/ziparchive" -name '*.o') \
  "$B/sigchain/sigchain.o" \
  "$B/asm_arm64/quick_entrypoints_arm64.o" \
  "$B/asm_arm64/jni_entrypoints_arm64.o" \
  "$B/asm_arm64/memcmp16_arm64.o" \
  "$B/stubs/quick_entrypoints_stubs_arm64.o" \
  "$B/stubs/link_stubs_arm64.o" \
  "$B/stubs/code_generator_vector_arm64_sve_stub.o" \
  "$B/stubs/fault_handler_stubs.o" \
  "$B/stubs/template_instantiations.o" \
  "$B/fmtlib/format.o" \
  "$B/tinyxml2/tinyxml2.o" \
  "$B/stubs/metrics_stubs.o" \
  "$B/stubs/thread_cpu_stub.o" \
  "$B/jni_stubs/icu_jni_stub.o" \
  "$B/jni_stubs/javacore_stub.o" \
  "$B/jni_stubs/openjdk_stub.o" \
  "$B/jni_stubs/ohbridge_stub.o" \
  "$B/jni_stubs/framework_native_stubs.o" \
  "$LLVM/lib/aarch64-linux-ohos/libc++_static.a" \
  "$LLVM/lib/aarch64-linux-ohos/libc++abi.a" \
  -L"$LLVM/lib/aarch64-linux-ohos" \
  -L"$SYSROOT/usr/lib/aarch64-linux-ohos" \
  -lz -ldl -lm

mv "$tmp" "$out"
ls -lh "$out"
file "$out"
