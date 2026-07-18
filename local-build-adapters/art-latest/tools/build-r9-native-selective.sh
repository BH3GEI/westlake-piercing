#!/usr/bin/env bash
# build-r9-native-selective.sh — rebuild every runtime/native/*.cc TU for the R9
# line with the westlake *selective* JNI binder force-included.
#
# Why: ART's stock runtime/native/native_util.h aborts the VM (LOG(FATAL)) if any
# single method of a core class's JNINativeMethod table is missing from the
# board's jars. aosp-art-15-r9 is newer than DAYU600's core-libart.jar, so
# e.g. dalvik.system.VMRuntime.getFullGcCount()J does not exist there and the VM
# dies during startup registration. stubs/wl_selective_native_util.h registers
# per method and skips only NoSuchMethodError failures.
#
# The include in runtime/native/*.cc is quoted ("native_util.h") so it always
# resolves next to the includer and -I cannot override it. We therefore rewrite
# that single include line to "wl_selective_native_util.h" and compile the
# rewritten copy out of $BUILDDIR/gen-native/.
#
# It must NOT be done with -include (force include): stubs/base/macros.h and
# stubs/android-base/ shadow their libartbase/AOSP namesakes for quoted includes
# originating in stubs/, so force-including our header first sets those include
# guards to the stub versions and the real NO_RETURN / UNREACHABLE never load
# (33/33 TUs fail that way). Rewriting the include in place keeps our header at
# its original position, after the TU's real prelude.
#
# Compiling from gen-native/ breaks same-directory resolution of the TUs' other
# quoted includes ("dalvik_system_DexFile.h", ...), so -I$ART/runtime/native is
# passed - the same thing the Makefile does for patches/runtime/native/*.cc.
#
# Source precedence per TU: patches-r9/ > patches/ > pristine $ART.
# (patches/ still holds westlake logic for 13 natives; patches-r9/ holds the
# r9-correct DexFile. patches/runtime/native/dalvik_system_DexFile.cc is the
# lineage-22.2 re-port and does NOT compile against r9.)
#
# Run AFTER tools/build-r9-patched.sh and BEFORE the relink, e.g.
#   bash tools/build-r9-patched.sh && bash tools/build-r9-native-selective.sh
# The freshly written .o files are newer than every candidate source, so the
# relink's `make` treats them as up to date and will not clobber them.
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
  -I"$ART/runtime/native"
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

fails=0; ok=0
GEN="$B/gen-native"
mkdir -p "$B/runtime/native" "$GEN"

for src in "$ART"/runtime/native/*.cc; do
  base=$(basename "$src")
  case "$base" in *_test.cc|*_fuzzer.cc|*_bench.cc) continue ;; esac

  use="$src"; origin="art"
  if [ -f "$ROOT/patches/runtime/native/$base" ]; then
    use="$ROOT/patches/runtime/native/$base"; origin="patches"
  fi
  if [ -f "$ROOT/patches-r9/runtime/native/$base" ]; then
    use="$ROOT/patches-r9/runtime/native/$base"; origin="patches-r9"
  fi

  # Swap the registrar header. Stock TUs say "native_util.h"; the westlake
  # patched ones already say "tolerant_native_util.h".
  gen="$GEN/$base"
  sed -e 's|^#include "native_util\.h"|#include "wl_selective_native_util.h"|' \
      -e 's|^#include "tolerant_native_util\.h"|#include "wl_selective_native_util.h"|' \
      "$use" > "$gen"
  if ! grep -q '^#include "wl_selective_native_util.h"' "$gen"; then
    echo "FAIL: $base [$origin] - no registrar include to rewrite"; fails=$((fails+1)); continue
  fi

  obj="$B/runtime/native/${base%.cc}.o"
  # Build to a temp object so a failure can never delete a good .o (the
  # Makefile's own `rm -f $@` recipe is what previously ate working objects).
  if "$LLVM/bin/clang-15" "${CXXFLAGS[@]}" -c "$gen" -o "$obj.wltmp" 2>&1; then
    mv -f "$obj.wltmp" "$obj"
    echo "OK: $base [$origin]"; ok=$((ok+1))
  else
    rm -f "$obj.wltmp"
    echo "FAIL: $base [$origin]"; fails=$((fails+1))
  fi
done

echo "=== selective-native TUs: $ok OK, $fails FAIL"
exit $fails
