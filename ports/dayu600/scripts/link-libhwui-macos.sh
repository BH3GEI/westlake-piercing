#!/usr/bin/env bash
# Gate-1 link step: produce libhwui.so for DAYU600 (aarch64-linux-ohos).
#
# Strategy: link all smoke-build objects plus whatever AOSP support sources
# (libutils/libcutils/libbase/liblog) the undefined-symbol list demands,
# against the device's own m133 skia (libskia_canvaskit.z.so) + EGL/GLES +
# hilog pulled to $A2OH/device-libs. First run with LIST_UNDEFINED=1 to see
# the gap without producing output.
set -euo pipefail

A2OH="${A2OH:-$HOME/a2oh-source-audit}"
repo="$(cd "$(dirname "$0")/../../.." && pwd)"
out="$repo/ports/dayu600/out/libhwui-build"
devlibs="$A2OH/device-libs"
native="${OHOS_NATIVE:-$A2OH/ohos-sdk/native}"
cxx="$native/llvm/bin/clang++"
sysroot="$native/sysroot"

objs=("$out"/obj/*.o)
[ -d "$out/support-obj" ] && objs+=("$out"/support-obj/*.o)

args=(
  --target=aarch64-linux-ohos
  --sysroot="$sysroot"
  -shared
  -fPIC
  -Wl,-Bsymbolic-functions
  -L"$devlibs"
)

if [ "${LIST_UNDEFINED:-0}" = "1" ]; then
  # Probe link: allow undefined, then dump what remains unresolved.
  "$cxx" "${args[@]}" -Wl,--allow-shlib-undefined -Wl,--unresolved-symbols=ignore-all \
    -o "$out/libhwui-probe.so" "${objs[@]}" \
    -l:libskia_canvaskit.z.so -l:libhilog.so -l:libEGL.so -l:libGLESv3.so
  "$native/llvm/bin/llvm-nm" -D --undefined-only "$out/libhwui-probe.so" \
    | awk '{print $2}' | sort -u > "$out/undefined-after-probe.txt"
  # subtract symbols provided by the libs we link against at runtime
  for so in "$devlibs"/libskia_canvaskit.z.so "$devlibs"/libhilog.so \
            "$devlibs"/libEGL.so "$devlibs"/libGLESv3.so \
            "$sysroot/usr/lib/aarch64-linux-ohos/libc.so" \
            "$sysroot/usr/lib/aarch64-linux-ohos/libc++.so"; do
    "$native/llvm/bin/llvm-nm" -D --defined-only "$so" 2>/dev/null | awk '{print $3}'
  done | sort -u > "$out/provided-symbols.txt"
  comm -23 "$out/undefined-after-probe.txt" "$out/provided-symbols.txt" \
    > "$out/missing-symbols.txt"
  wc -l "$out/missing-symbols.txt"
  head -60 "$out/missing-symbols.txt"
  exit 0
fi

"$cxx" "${args[@]}" -static-libstdc++ -Wl,--no-undefined -Wl,--exclude-libs,ALL \
  -o "$out/libhwui.so" "${objs[@]}" \
  -l:libskia_canvaskit.z.so -l:libhilog.so -l:libEGL.so -l:libGLESv3.so -lvulkan
echo "linked: $out/libhwui.so"
"$native/llvm/bin/llvm-readelf" -d "$out/libhwui.so" | head -20
