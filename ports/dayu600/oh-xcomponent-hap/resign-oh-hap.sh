#!/usr/bin/env bash
# resign-oh-hap.sh — re-sign an arbitrary OH-native .hap for the DAYU600 5ce panel.
#
# WHY: when the colleague sends the pre-built Tuanjie OH .hap (scratchpad/tjplay/out_game1/
# oh_game1.hap on GZ02 — engine + il2cpp payload + correct ArkTS glue all inside), it is
# signed for THEIR device set, not ours. This re-signs it for board 5ce so `hdc install`
# accepts it. No rebuild, no source — the .hap already contains everything.
#
# A provisioning profile is bound to a bundle-name, so we read the incoming hap's bundleName
# and mint a fresh DEBUG profile (that bundleName + the 5ce UDID) signed by the SDK-default
# OpenHarmony dev CA — the same CA the board already trusts (com.westlake.glxc/glxc2, signed
# this exact way, install + run on 5ce today). Pipeline proven end-to-end on this Mac
# 2026-07-13: sign-profile -> sign-app -> verify-app all green.
#
# Usage:   bash resign-oh-hap.sh <incoming.hap> [out.hap]
# Output:  <out.hap> (default: <incoming>-5ce-signed.hap) + the hdc install line to run.
set -euo pipefail

JH="${JH:-/Users/yao/jdk17/jdk-17.0.19+10/Contents/Home}"
LIB="${OH_TOOLLIB:-$HOME/command-line-tools/sdk/default/openharmony/toolchains/lib}"
ST="$LIB/hap-sign-tool.jar"
P12="$LIB/OpenHarmony.p12"
PCERT="$LIB/OpenHarmonyProfileRelease.pem"
HERE="$(cd "$(dirname "$0")" && pwd)"
APPCHAIN="$HERE/sign/app-cert-chain.pem"          # public SDK dev app cert chain (works as .cer)
TEMPLATE="$HERE/sign/profile-template.json"       # profile spec: 5ce UDID + bundle-name slot
UDID=E28A04046CD8DC5A2BB7040484CFED32B9478ED4C712D45AA2653F6D6123477B
PWD_KS=123456                                     # PUBLIC SDK-default keystore/key password

IN="${1:?usage: resign-oh-hap.sh <incoming.hap> [out.hap]}"
NAME="$(basename "$IN" .hap)"
OUT="${2:-$(dirname "$IN")/${NAME}-5ce-signed.hap}"
WORK="$(mktemp -d)"; trap 'rm -rf "$WORK"' EXIT
JAVA="$JH/bin/java"

[ -f "$IN" ]  || { echo "no such hap: $IN"; exit 1; }
[ -f "$ST" ]  || { echo "missing hap-sign-tool.jar at $ST"; exit 1; }
[ -f "$PCERT" ] || { echo "missing profile cert $PCERT"; exit 1; }

# 1) bundleName — a packed hap carries it in pack.info (.summary.app.bundleName), not module.json5.
#    Guard every extraction with `|| true` so `set -e`+pipefail can't silently abort on no-match.
PI="$(unzip -p "$IN" pack.info 2>/dev/null || true)"
BN="$(printf '%s' "$PI" | grep -oE '"bundleName"[[:space:]]*:[[:space:]]*"[^"]+"' | head -1 | sed -E 's/.*"([^"]+)"$/\1/' || true)"
[ -n "${BN:-}" ] || BN="$(unzip -p "$IN" module.json 2>/dev/null | grep -oE '"bundleName"[[:space:]]*:[[:space:]]*"[^"]+"' | head -1 | sed -E 's/.*"([^"]+)"$/\1/' || true)"
BN="${BN:-${BN_OVERRIDE:-}}"
[ -n "$BN" ] || { echo "could not read bundleName from $IN — set BN_OVERRIDE=<bundle> and retry"; exit 1; }
echo "[1] incoming hap bundleName = $BN"

# 2) mint a profile spec for THIS bundleName + the 5ce UDID
sed "s/com\.westlake\.glxc/$BN/g" "$TEMPLATE" > "$WORK/profile.json"
grep -qE "\"bundle-name\": \"$BN\"" "$WORK/profile.json" || { echo "template edit failed"; exit 1; }
echo "[2] profile spec minted for $BN + UDID ${UDID:0:12}…"

# 3) sign-profile -> p7b
"$JAVA" -jar "$ST" sign-profile \
  -keyAlias "openharmony application profile release" -signAlg SHA256withECDSA -mode localSign \
  -profileCertFile "$PCERT" -inFile "$WORK/profile.json" \
  -keystoreFile "$P12" -outFile "$WORK/profile.p7b" -keyPwd "$PWD_KS" -keystorePwd "$PWD_KS" >/dev/null
echo "[3] sign-profile OK -> profile.p7b"

# 4) sign-app -> signed hap
cp "$APPCHAIN" "$WORK/appchain.cer"
"$JAVA" -jar "$ST" sign-app \
  -keyAlias "openharmony application release" -signAlg SHA256withECDSA -mode localSign \
  -appCertFile "$WORK/appchain.cer" -profileFile "$WORK/profile.p7b" \
  -inFile "$IN" -keystoreFile "$P12" -outFile "$OUT" -keyPwd "$PWD_KS" -keystorePwd "$PWD_KS" >/dev/null
echo "[4] sign-app OK -> $OUT"

# 5) verify
if "$JAVA" -jar "$ST" verify-app -inFile "$OUT" -outCertChain "$WORK/vc.cer" -outProfile "$WORK/vp.p7b" 2>&1 | grep -q 'verify codesign success'; then
  echo "[5] verify-app: codesign success ✓"
else
  echo "[5] verify-app FAILED"; exit 1
fi

echo
echo "READY. Install on the 5ce panel (only when the board is idle — no concurrent bring-up):"
echo "  hdc -t 5ce2dcee00000000000000000923012c install \"$OUT\""
echo "  hdc -t 5ce2dcee00000000000000000923012c shell aa start -b $BN -a EntryAbility"
