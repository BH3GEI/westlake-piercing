#!/usr/bin/env bash
set -euo pipefail

ROOT="$(CDPATH= cd -- "$(dirname -- "$0")/../../.." && pwd)"
PORT="$ROOT/ports/dayu600"
SRC="$PORT/android-runtime-src"
OUT="$PORT/out/android-runtime"

DEFAULT_OHOS_SDK_ROOT="/mnt/c/Users/ufop/ohos-sdk-6.0.0.47"
if [ -d "$HOME/ohos-sdk-6.0.0.47" ]; then
  DEFAULT_OHOS_SDK_ROOT="$HOME/ohos-sdk-6.0.0.47"
fi
OHOS_SDK_ROOT="${OHOS_SDK_ROOT:-$DEFAULT_OHOS_SDK_ROOT}"

find_native_home() {
  if [ -n "${OHOS_NATIVE_HOME:-}" ] && [ -x "$OHOS_NATIVE_HOME/llvm/bin/clang++" ]; then
    printf '%s\n' "$OHOS_NATIVE_HOME"
    return 0
  fi

  for cand in \
    "$OHOS_SDK_ROOT/native" \
    "$OHOS_SDK_ROOT/linux/native" \
    "$OHOS_SDK_ROOT/ohos-sdk/linux/native" \
    "$OHOS_SDK_ROOT/ohos-sdk/native"; do
    if [ -x "$cand/llvm/bin/clang++" ]; then
      printf '%s\n' "$cand"
      return 0
    fi
  done

  find "$OHOS_SDK_ROOT" -path '*/native/llvm/bin/clang++' -type f -print 2>/dev/null |
    sed 's#/llvm/bin/clang++$##' | head -n 1
}

find_jni_include() {
  if [ -n "${JAVA_HOME:-}" ] && [ -f "$JAVA_HOME/include/jni.h" ]; then
    printf '%s\n' "$JAVA_HOME/include"
    return 0
  fi
  for cand in /usr/lib/jvm/*/include; do
    if [ -f "$cand/jni.h" ]; then
      printf '%s\n' "$cand"
      return 0
    fi
  done
}

NATIVE_HOME="$(find_native_home)"
if [ -z "$NATIVE_HOME" ]; then
  echo "OHOS native SDK not found under: $OHOS_SDK_ROOT" >&2
  exit 2
fi

JNI_INC="$(find_jni_include)"
if [ -z "$JNI_INC" ]; then
  echo "jni.h not found. Install a JDK in WSL or set JAVA_HOME." >&2
  exit 2
fi

CXX="$NATIVE_HOME/llvm/bin/clang++"
SYSROOT="$NATIVE_HOME/sysroot"
mkdir -p "$OUT/logs"

"$CXX" \
  --target=aarch64-linux-ohos \
  --sysroot="$SYSROOT" \
  -std=c++17 \
  -O2 \
  -fPIC \
  -fvisibility=hidden \
  -fvisibility-inlines-hidden \
  -ffunction-sections \
  -fdata-sections \
  -I"$JNI_INC" \
  -I"$JNI_INC/linux" \
  -shared \
  -Wl,--gc-sections \
  -Wl,--allow-shlib-undefined \
  -Wl,-soname,liboh_android_runtime.so \
  "$SRC/AndroidRuntime.cpp" \
  -ldl \
  -o "$OUT/liboh_android_runtime.so" \
  >"$OUT/logs/liboh_android_runtime.build.log" 2>&1 || {
    tail -120 "$OUT/logs/liboh_android_runtime.build.log" >&2 || true
    exit 1
  }

file "$OUT/liboh_android_runtime.so"
"$NATIVE_HOME/llvm/bin/llvm-readelf" -Ws "$OUT/liboh_android_runtime.so" |
  grep -E 'AndroidRuntime8startReg|westlake_android_runtime_startReg|JNI_OnLoad' || true
echo "out: $OUT/liboh_android_runtime.so"

