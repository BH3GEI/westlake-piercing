#!/usr/bin/env bash
# build.sh — compile the OH-native format-remap shim (aarch64) with the OH NDK clang.
set -euo pipefail
NDK=/Users/yao/command-line-tools/sdk/default/openharmony/native
CLANG="$NDK/llvm/bin/clang"
SR="$NDK/sysroot"
HERE="$(cd "$(dirname "$0")" && pwd)"
OUT="$HERE/libwlfmtshim.so"

"$CLANG" --target=aarch64-linux-ohos --sysroot="$SR" \
  -O2 -fPIC -shared -fvisibility=default \
  -Wl,-soname,libwlfmtshim.so \
  -I"$SR/usr/include" \
  "$HERE/wl_fmt_shim.c" \
  -lnative_window -lEGL -lhilog_ndk.z \
  -o "$OUT"

echo "built: $OUT"
file "$OUT"
echo "--- exported hook symbols ---"
"$NDK/llvm/bin/llvm-nm" -D --defined-only "$OUT" | grep -E 'WLshim_NativeWindow_HandleOpt_fmtfix1|WLeglCreateWindowSurf0'
echo "--- DT_NEEDED / SONAME ---"
"$NDK/llvm/bin/llvm-readelf" -d "$OUT" | grep -E 'NEEDED|SONAME'
