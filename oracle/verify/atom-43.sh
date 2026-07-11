#!/usr/bin/env bash
# Wall #43: AppCompat theme parent-chain must resolve framework package 0x01.
# This script only removes W-001-owned temporary logs and runs the existing prototype.
set -uo pipefail

SERIAL="${1:-}"
if [ -z "$SERIAL" ]; then
  echo "usage: oracle/verify/atom-43.sh <serial>"
  echo "FAIL"
  exit 64
fi

HDC="${HDC:-$(command -v hdc 2>/dev/null || true)}"
if [ -z "$HDC" ]; then
  echo "missing hdc"
  echo "FAIL"
  exit 1
fi

ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
if ! "$ROOT/oracle/board-health.sh" "$SERIAL"; then
  echo "FAIL"
  exit 1
fi

STAMP="$(date +%Y%m%d-%H%M%S)"
OUT="${W001_LOG:-/tmp/westlake-w001-${STAMP}.log}"
TIMEOUT_SECONDS="${W001_TIMEOUT_SECONDS:-90}"
REMOTE_RUN="/data/local/tmp/run-utd-w001.sh"
REMOTE_NATIVE="/data/local/tmp/w001-native-append.txt"
REMOTE_EARLY="/data/local/tmp/uptodown-early.txt"
REMOTE_PROBE="/data/local/tmp/westlake-dayu600-substrate/apks/probe-logs/uptodown-probe.txt"
REMOTE_DEX="/data/local/tmp/westlake-dayu600-substrate/apks/dayu600-apk-probe.dex"
REMOTE_SO="/data/local/tmp/westlake-dayu600-substrate/probes/libwestlake_embedded_art_dlopen_probe.so"
REMOTE_SO_COPY="/data/local/tmp/westlake-dayu600-substrate/android/lib64/sidecars/libwestlake_embedded_art_dlopen_probe.so"
LOCAL_RUN="$ROOT/oracle/device/run-utd-w001.sh"
LOCAL_DEX="${W001_DEX:-$ROOT/test-fixtures/dayu600-apk-probe/out/dayu600-apk-probe.dex}"
LOCAL_SO="${W001_SO:-$ROOT/test-fixtures/dayu600-embedded-art-probe/out/libwestlake_embedded_art_dlopen_probe.so}"

for local_artifact in "$LOCAL_RUN" "$LOCAL_DEX" "$LOCAL_SO"; do
  if [ ! -f "$local_artifact" ]; then
    echo "missing local W-001 artifact: $local_artifact"
    echo "FAIL"
    exit 1
  fi
done

LOCAL_RUN_SHA="$(shasum -a 256 "$LOCAL_RUN" | awk '{print $1}')"
LOCAL_DEX_SHA="$(shasum -a 256 "$LOCAL_DEX" | awk '{print $1}')"
LOCAL_SO_SHA="$(shasum -a 256 "$LOCAL_SO" | awk '{print $1}')"
REMOTE_HASHES="$($HDC -t "$SERIAL" shell "sha256sum '$REMOTE_RUN' '$REMOTE_DEX' '$REMOTE_SO' '$REMOTE_SO_COPY' 2>/dev/null" | tr -d '\r')"
REMOTE_RUN_SHA="$(printf '%s\n' "$REMOTE_HASHES" | awk -v p="$REMOTE_RUN" '$2 == p {print $1}')"
REMOTE_DEX_SHA="$(printf '%s\n' "$REMOTE_HASHES" | awk -v p="$REMOTE_DEX" '$2 == p {print $1}')"
REMOTE_SO_SHA="$(printf '%s\n' "$REMOTE_HASHES" | awk -v p="$REMOTE_SO" '$2 == p {print $1}')"
REMOTE_SO_COPY_SHA="$(printf '%s\n' "$REMOTE_HASHES" | awk -v p="$REMOTE_SO_COPY" '$2 == p {print $1}')"
if [ "$LOCAL_RUN_SHA" != "$REMOTE_RUN_SHA" ] \
  || [ "$LOCAL_DEX_SHA" != "$REMOTE_DEX_SHA" ] \
  || [ "$LOCAL_SO_SHA" != "$REMOTE_SO_SHA" ] \
  || [ "$LOCAL_SO_SHA" != "$REMOTE_SO_COPY_SHA" ]; then
  echo "artifact hash mismatch; deploy the locally built W-001 launcher/dex/sidecar before testing"
  echo "local run=$LOCAL_RUN_SHA dex=$LOCAL_DEX_SHA so=$LOCAL_SO_SHA"
  echo "remote run=${REMOTE_RUN_SHA:-missing} dex=${REMOTE_DEX_SHA:-missing} so=${REMOTE_SO_SHA:-missing} copy=${REMOTE_SO_COPY_SHA:-missing}"
  echo "FAIL"
  exit 1
fi

if ! "$HDC" -t "$SERIAL" shell "rm -f '$REMOTE_NATIVE' '$REMOTE_EARLY' '$REMOTE_PROBE' /data/local/tmp/w001-ckApp.txt /data/local/tmp/w001-ckFw.txt /data/local/tmp/w001-abA.txt /data/local/tmp/w001-abB.txt /data/local/tmp/w001-abAex.txt /data/local/tmp/w001-failex.txt /data/local/tmp/w001-failmsg.txt /data/local/tmp/w001-failstack.txt /data/local/tmp/w001-abAstack.txt /data/local/tmp/w001-trace.txt /data/local/tmp/w001-syslib.txt /data/local/tmp/w001-p2.txt" >"$OUT" 2>&1; then
  echo "log=$OUT"
  echo "failed to clear W-001-owned logs"
  echo "FAIL"
  exit 1
fi
"$HDC" -t "$SERIAL" shell "'$REMOTE_RUN'" >>"$OUT" 2>&1 &
HDC_PID=$!
(
  sleep "$TIMEOUT_SECONDS"
  kill "$HDC_PID" 2>/dev/null
) &
WATCHDOG_PID=$!
wait "$HDC_PID" 2>/dev/null
RUN_RC=$?
kill "$WATCHDOG_PID" 2>/dev/null
wait "$WATCHDOG_PID" 2>/dev/null

if ! "$HDC" -t "$SERIAL" shell "echo __W001_NATIVE__; cat '$REMOTE_NATIVE' 2>/dev/null; echo __W001_EARLY__; cat '$REMOTE_EARLY' 2>/dev/null; echo __W001_PROBE__; cat '$REMOTE_PROBE' 2>/dev/null; echo __W001_TRACE__; cat /data/local/tmp/w001-trace.txt 2>/dev/null; echo __W001_SYSLIB__; cat /data/local/tmp/w001-syslib.txt 2>/dev/null; echo __W001_P2__; cat /data/local/tmp/w001-p2.txt 2>/dev/null; echo __W001_CK__; cat /data/local/tmp/w001-ckApp.txt /data/local/tmp/w001-ckFw.txt 2>/dev/null; echo __W001_AB__; cat /data/local/tmp/w001-abA.txt /data/local/tmp/w001-abB.txt 2>/dev/null; echo __W001_EX__; cat /data/local/tmp/w001-abAex.txt /data/local/tmp/w001-failex.txt /data/local/tmp/w001-failmsg.txt 2>/dev/null; echo __W001_STACK__; cat /data/local/tmp/w001-failstack.txt 2>/dev/null; echo __W001_ASTACK__; cat /data/local/tmp/w001-abAstack.txt 2>/dev/null" >>"$OUT" 2>&1; then
  echo "log=$OUT run_rc=$RUN_RC"
  echo "failed to collect W-001 result logs"
  echo "FAIL"
  exit 1
fi

echo "log=$OUT run_rc=$RUN_RC"
if [ "$RUN_RC" -eq 0 ] \
  && grep -q 'nativeSet=ok ck=2' "$OUT" \
  && grep -q 'wabAttr=0x7f040691' "$OUT" \
  && grep -q 'uamHasWab=true' "$OUT"; then
  echo "PASS"
  exit 0
fi

tail -n 80 "$OUT"
echo "FAIL"
exit 1
