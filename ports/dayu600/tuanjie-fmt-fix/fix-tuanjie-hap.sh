#!/usr/bin/env bash
# fix-tuanjie-hap.sh — one command: an arbitrary Tuanjie OH-native .hap  ->  the same hap
# un-blacked (pixel-format remap shim injected) and re-signed for the DAYU600 5ce panel.
#
# WHY THIS EXISTS: the colleague's min_mono demo proved the Tuanjie -> OH .hap pipeline
# end-to-end, but its il2cpp engine (libtuanjie.so) black-screens on 5ce because it feeds
# Android RGBA_8888=1 to OH SET_FORMAT (where 1=CLUT1, 12=RGBA_8888) — the allocator
# rejects it, no buffer is ever made, infinite retry -> black. See ../tuanjie-fmt-fix/README.md
# and evidence/tuanjie-oh-hap-fmtfix-2026-07-13/EVIDENCE.md for the full root-cause.
#
# The REAL game (colleague's pending export) is the SAME engine build, so it will hit the
# EXACT same bug and take the EXACT same fix. This script makes that a single command:
# when the real-game hap lands, run `fix-tuanjie-hap.sh real-game.hap real-game-5ce.hap`
# and install. No engine source, no colleague round-trip, no manual step.
#
# Pipeline (each step is the proven one from rebuild.sh / build.sh / patch_rename.py):
#   1. build the OH-native shim (libwlfmtshim.so) if not already built
#   2. app_unpacking_tool  -> flat tree
#   3. inject shim into libs/arm64-v8a/ + patchelf --add-needed on libtuanjie.so
#   4. patch_rename.py      -> rename libtuanjie's 3 UND imports to the shim's exports
#   5. app_packing_tool     -> repacked (unsigned) hap
#   6. zipalign_hap.py      -> re-pad STORED entries to 4096 (OH mmaps .so directly)
#   7. resign-oh-hap.sh     -> mint a 5ce-UDID profile + sign (public SDK-default keystore)
#   8. verify host-side: the renamed import + the shim are present in the output hap
#
# Usage:  bash fix-tuanjie-hap.sh <in.hap> [out.hap]
# Out:    <out.hap>  (default: <in>-fmtfix-5ce.hap)  + sha256 + the hdc install lines.
set -euo pipefail

HERE="$(cd "$(dirname "$0")" && pwd)"
REPO="$(cd "$HERE/../../.." && pwd)"
JH="${JH:-/Users/yao/jdk17/jdk-17.0.19+10/Contents/Home}"
LIB="${OH_TOOLLIB:-$HOME/command-line-tools/sdk/default/openharmony/toolchains/lib}"
NDK="$HOME/command-line-tools/sdk/default/openharmony/native"
JAVA="$JH/bin/java"
UNPACK="$LIB/app_unpacking_tool.jar"
PACK="$LIB/app_packing_tool.jar"
RESIGN="$REPO/ports/dayu600/oh-xcomponent-hap/resign-oh-hap.sh"
SHIM="$HERE/libwlfmtshim.so"
PATCHELF="$(command -v patchelf || echo /opt/homebrew/bin/patchelf)"
NM="$NDK/llvm/bin/llvm-nm"

IN="${1:?usage: fix-tuanjie-hap.sh <in.hap> [out.hap]}"
NAME="$(basename "$IN" .hap)"
OUT="${2:-$(dirname "$IN")/${NAME}-fmtfix-5ce.hap}"

for f in "$JAVA" "$UNPACK" "$PACK" "$RESIGN" "$PATCHELF"; do
  [ -x "$f" ] || [ -f "$f" ] || { echo "missing tool: $f"; exit 1; }
done
[ -f "$IN" ] || { echo "no such hap: $IN"; exit 1; }

# 1) shim ---------------------------------------------------------------------
if [ ! -f "$SHIM" ]; then
  echo "[1] shim not built — building with OH NDK clang…"
  bash "$HERE/build.sh" >/dev/null
fi
echo "[1] shim: $SHIM ($("$NM" -D --defined-only "$SHIM" 2>/dev/null | grep -c WLshim) WLshim exports)"

W="$(mktemp -d)"; trap 'rm -rf "$W"' EXIT
U="$W/U"

# 2) unpack -------------------------------------------------------------------
"$JAVA" -jar "$UNPACK" --mode hap --hap-path "$IN" --out-path "$U" --force true >/dev/null 2>&1
LIBDIR="$U/libs/arm64-v8a"
[ -f "$LIBDIR/libtuanjie.so" ] || { echo "no libtuanjie.so in $IN — not a Tuanjie hap?"; exit 1; }
echo "[2] unpacked -> $(ls "$LIBDIR" | tr '\n' ' ')"

# 3) inject shim + add-needed (idempotent) ------------------------------------
cp "$SHIM" "$LIBDIR/"
if "$PATCHELF" --print-needed "$LIBDIR/libtuanjie.so" | grep -q '^libwlfmtshim.so$'; then
  echo "[3] libwlfmtshim.so already a DT_NEEDED (idempotent skip)"
else
  "$PATCHELF" --add-needed libwlfmtshim.so "$LIBDIR/libtuanjie.so"
  echo "[3] added DT_NEEDED libwlfmtshim.so"
fi

# 4) rename the 3 UND imports so the engine binds only to the shim ------------
python3 "$HERE/patch_rename.py" "$LIBDIR/libtuanjie.so" | sed 's/^/    /'

# 5) repack (rpcid / pkgContext optional) -------------------------------------
PACK_ARGS=(--mode hap --json-path "$U/module.json" --lib-path "$U/libs" --ets-path "$U/ets"
           --resources-path "$U/resources" --index-path "$U/resources.index"
           --pack-info-path "$U/pack.info" --out-path "$W/unsigned.hap" --force true)
[ -f "$U/rpcid.sc" ]           && PACK_ARGS+=(--rpcid-path "$U/rpcid.sc")
[ -f "$U/pkgContextInfo.json" ] && PACK_ARGS+=(--pkg-context-path "$U/pkgContextInfo.json")
"$JAVA" -jar "$PACK" "${PACK_ARGS[@]}" >/dev/null 2>&1
echo "[5] repacked (unsigned)"

# 6) page-align (OH mmaps uncompressed .so at 4096) ---------------------------
python3 "$HERE/zipalign_hap.py" "$W/unsigned.hap" "$W/aligned.hap" >/dev/null
echo "[6] page-aligned to 4096"

# 7) re-sign for 5ce ----------------------------------------------------------
bash "$RESIGN" "$W/aligned.hap" "$OUT" 2>&1 | grep -E 'bundleName|sign-app OK|codesign success|FAIL' | sed 's/^/    /'

# 8) verify host-side: the renamed import + the shim actually landed ----------
# NOTE: a signed hap carries an appended signing block, so `unzip` exits non-zero
# ("extra bytes at beginning or within zipfile") even on a perfectly good hap —
# capture with `|| true` so `set -o pipefail` can't turn that into a false negative.
echo "[8] verify:"
TJ_SYMS="$(unzip -p "$OUT" libs/arm64-v8a/libtuanjie.so 2>/dev/null | "$NM" -uD /dev/stdin 2>/dev/null || true)"
echo "$TJ_SYMS" | grep -q WLshim_NativeWindow_HandleOpt_fmtfix1 \
  && echo "    ✓ libtuanjie.so imports the renamed SET_FORMAT hook" \
  || { echo "    ✗ renamed import NOT found — fix did not take"; exit 1; }
HAP_LIST="$(unzip -l "$OUT" 2>/dev/null || true)"
echo "$HAP_LIST" | grep -q 'libwlfmtshim.so' \
  && echo "    ✓ libwlfmtshim.so present in hap" \
  || { echo "    ✗ shim missing"; exit 1; }

echo
echo "OUT:    $OUT"
echo "sha256: $(shasum -a 256 "$OUT" | awk '{print $1}')"
echo "install (only when the 5ce board is idle — no concurrent bring-up):"
BN="$(unzip -p "$OUT" pack.info 2>/dev/null | grep -oE '"bundleName"[^,]+' | head -1 | grep -oE '[a-zA-Z0-9._]+$' || echo com.tuanjie.ohmin)"
echo "  hdc -t 5ce2dcee00000000000000000923012c uninstall $BN   # first install only"
echo "  hdc -t 5ce2dcee00000000000000000923012c install \"$OUT\""
echo "  hdc -t 5ce2dcee00000000000000000923012c shell aa start -b $BN -a TuanjiePlayerAbility"
