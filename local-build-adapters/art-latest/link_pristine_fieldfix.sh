#!/usr/bin/env bash
set -euo pipefail

cd /home/dspfac/art-pristine-link
B=build-bionic-arm64
CXX=/home/dspfac/android-sdk/ndk/25.2.9519653/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++
NDK=/home/dspfac/android-sdk/ndk/25.2.9519653/toolchains/llvm/prebuilt/linux-x86_64

mkdir -p "$B/bin"
"$CXX" -o "$B/bin/dalvikvm-pristine-plus-fieldfix" \
  --target=aarch64-linux-android30 \
  --sysroot="$NDK/sysroot" \
  -D__ANDROID__ \
  --rtlib=compiler-rt \
  -static \
  -stdlib=libc++ \
  -Wl,--unresolved-symbols=ignore-in-object-files \
  -Wl,--allow-multiple-definition \
  "$B/dalvikvm/dalvikvm.o" \
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
  "$NDK/sysroot/usr/lib/aarch64-linux-android/libc++_static.a" \
  "$NDK/sysroot/usr/lib/aarch64-linux-android/libc++abi.a" \
  "$NDK/sysroot/usr/lib/aarch64-linux-android/libz.a" \
  -ldl -lm

ls -lh "$B/bin/dalvikvm-pristine-plus-fieldfix"
file "$B/bin/dalvikvm-pristine-plus-fieldfix"
sha256sum "$B/bin/dalvikvm-pristine-plus-fieldfix"
