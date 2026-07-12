#!/usr/bin/env bash
# build-starnest-hap.sh — self-authored real-time GPU demo for the DAYU600 5ce panel.
#
# Compiles a fullscreen touch-steerable "Star Nest" (Kali) volumetric-fractal GLES2
# shader into libentry.so and drops it into a prebuilt, signed OH-native XComponent
# shell hap — NO DevEco / no ArkTS recompile needed. The shell's ArkUI
# <XComponent libraryname:'entry'> dlopens our libentry.so; ArkUI drives the surface
# lifecycle; we bring up EGL and draw the fractal straight to the render_service rail.
#
# This rides the EXACT rail the Tuanjie il2cpp game rides (XComponent -> OH_NativeWindow
# -> EGL -> render_service -> panel), so it doubles as an interactivity/throughput proof
# of that rail — but every pixel here is ours, authored end to end.
#
# Pipeline (each step is a proven one, reused from ../../tuanjie-fmt-fix):
#   1. clang++ (OH NDK)      -> libentry.so (aarch64, modname "entry")
#   2. app_unpacking_tool    -> flat tree of the signed shell hap
#   3. swap libs/arm64-v8a/libentry.so  (the ONLY payload change)
#   4. (opt) patch_abc_title.py -> rename the shell's baked ArkTS title/footer strings
#   5. app_packing_tool      -> repacked (unsigned) hap
#   6. zipalign_hap.py       -> re-pad STORED entries to 4096 (OH mmaps .so directly)
#   7. resign-oh-hap.sh      -> mint a 5ce-UDID profile + sign (public SDK-default keystore)
#
# Usage:  bash build-starnest-hap.sh [shell.hap] [out.hap]
#   shell.hap : a signed OH XComponent hap whose module=="entry" (default: $SHELL_HAP below)
#   out.hap   : output (default: ./starnest-5ce.hap)
set -euo pipefail

HERE="$(cd "$(dirname "$0")" && pwd)"
REPO="$(cd "$HERE/../../../.." && pwd)"
NDK="$HOME/command-line-tools/sdk/default/openharmony/native"
SR="$NDK/sysroot"
CLANGXX="$NDK/llvm/bin/clang++"
JH="${JH:-/Users/yao/jdk17/jdk-17.0.19+10/Contents/Home}"
LIB="${OH_TOOLLIB:-$HOME/command-line-tools/sdk/default/openharmony/toolchains/lib}"
JAVA="$JH/bin/java"
UNPACK="$LIB/app_unpacking_tool.jar"
PACK="$LIB/app_packing_tool.jar"
FMTFIX="$REPO/ports/dayu600/tuanjie-fmt-fix"
RESIGN="$REPO/ports/dayu600/oh-xcomponent-hap/resign-oh-hap.sh"

# A prebuilt SIGNED OH XComponent shell (module "entry", bundleName com.westlake.glxc2).
# Provenance: built headless with real hvigor6.21 + OH SDK API21 (see memory
# "oh-native-hap-first-frame-5ce"); its libentry.so is the only thing we overwrite.
SHELL_HAP="${1:-${STARNEST_SHELL_HAP:-/Users/yao/glxc-hvigor2/glxc2-v2-5ce.hap}}"
OUT="${2:-$HERE/starnest-5ce.hap}"
TITLE_PATCH="${STARNEST_TITLE_PATCH:-1}"   # set 0 to keep the shell's original title

for f in "$CLANGXX" "$JAVA" "$UNPACK" "$PACK" "$RESIGN"; do
  [ -e "$f" ] || { echo "missing tool: $f"; exit 1; }
done
[ -f "$SHELL_HAP" ] || { echo "no shell hap: $SHELL_HAP (pass one as arg 1)"; exit 1; }

W="$(mktemp -d)"; trap 'rm -rf "$W"' EXIT
U="$W/U"

echo "[1] compile Star Nest -> libentry.so (aarch64)"
"$CLANGXX" --target=aarch64-linux-ohos --sysroot="$SR" \
  -std=c++17 -O2 -fPIC -shared -I"$SR/usr/include" \
  "$HERE/starnest_xcomponent.cpp" \
  -lace_napi.z -lace_ndk.z -lEGL -lGLESv3 -lnative_window -lhilog_ndk.z -luv \
  -o "$W/libentry.so"
echo "    $("$NDK/llvm/bin/llvm-readelf" -h "$W/libentry.so" | awk -F: '/Machine/{print $2}' | xargs) $(ls -la "$W/libentry.so" | awk '{print $5}')B"

echo "[2] unpack shell: $(basename "$SHELL_HAP")"
"$JAVA" -jar "$UNPACK" --mode hap --hap-path "$SHELL_HAP" --out-path "$U" --force true >/dev/null 2>&1
[ -f "$U/libs/arm64-v8a/libentry.so" ] || { echo "shell has no libs/arm64-v8a/libentry.so — wrong shell?"; exit 1; }

echo "[3] swap libentry.so ($(ls -la "$U/libs/arm64-v8a/libentry.so" | awk '{print $5}')B -> $(ls -la "$W/libentry.so" | awk '{print $5}')B)"
cp "$W/libentry.so" "$U/libs/arm64-v8a/libentry.so"

if [ "$TITLE_PATCH" = "1" ] && [ -f "$U/ets/modules.abc" ]; then
  echo "[4] patch ArkTS title/footer (equal-length, adler32 recompute)"
  python3 "$HERE/patch_abc_title.py" "$U/ets/modules.abc" \
    "旋转三角=星穹穿越" "rotating triangle=kali star-nest fx" 2>&1 | sed 's/^/    /' || \
    echo "    (title strings not found in this shell — skipping, non-fatal)"
fi

echo "[5] repack"
PACK_ARGS=(--mode hap --json-path "$U/module.json" --lib-path "$U/libs" --ets-path "$U/ets"
           --resources-path "$U/resources" --index-path "$U/resources.index"
           --pack-info-path "$U/pack.info" --out-path "$W/unsigned.hap" --force true)
[ -f "$U/rpcid.sc" ]            && PACK_ARGS+=(--rpcid-path "$U/rpcid.sc")
[ -f "$U/pkgContextInfo.json" ] && PACK_ARGS+=(--pkg-context-path "$U/pkgContextInfo.json")
"$JAVA" -jar "$PACK" "${PACK_ARGS[@]}" >/dev/null 2>&1

echo "[6] page-align to 4096"
python3 "$FMTFIX/zipalign_hap.py" "$W/unsigned.hap" "$W/aligned.hap" >/dev/null

echo "[7] re-sign for 5ce"
bash "$RESIGN" "$W/aligned.hap" "$OUT" 2>&1 | grep -E 'bundleName|sign-app OK|codesign success|FAIL' | sed 's/^/    /'

# verify by EXTRACTION (unzip -p pipes are unreliable on signed haps — appended sign block)
V="$W/V"; mkdir -p "$V"
unzip -o -q "$OUT" libs/arm64-v8a/libentry.so -d "$V" 2>/dev/null || true
if strings "$V/libs/arm64-v8a/libentry.so" 2>/dev/null | grep -q 'Star Nest'; then
  echo "    ✓ Star Nest libentry.so is in the signed hap"
else
  echo "    ✗ verify failed"; exit 1
fi

echo
echo "OUT:    $OUT"
echo "sha256: $(shasum -a 256 "$OUT" | awk '{print $1}')"
echo "deploy (only when 5ce is idle — no concurrent ART bring-up):"
echo "  hdc -t 5ce2dcee00000000000000000923012c install \"$OUT\""
echo "  hdc -t 5ce2dcee00000000000000000923012c shell aa start -b com.westlake.glxc2 -a EntryAbility"
