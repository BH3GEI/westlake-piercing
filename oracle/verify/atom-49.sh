#!/usr/bin/env bash
set -uo pipefail

SERIAL="${1:-}"
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
HDC="${HDC:-$(command -v hdc 2>/dev/null || true)}"
# Clean HEAD (A)(B) relink of Makefile.ohos-arm64 → libwestlake_art.so; verified atom-49+atom-43 on 5583.
KNOWN_ART_SHA="${W049_ART_SHA:-0742f1c44287aee437f18e4cb305897e48a61948a39154bd9660203b5d87103e}"
LOCAL_RUN="$ROOT/oracle/device/run-critbind49.sh"
LOCAL_DEX="${W049_DEX:-$ROOT/test-fixtures/dayu600-apk-probe/out/dayu600-apk-probe.dex}"
LOCAL_SO="${W049_SO:-$ROOT/test-fixtures/dayu600-embedded-art-probe/out/libwestlake_embedded_art_dlopen_probe.so}"
REMOTE_RUN=/data/local/tmp/run-critbind49.sh
S=/data/local/tmp/westlake-dayu600-substrate

fail() { echo "$1"; echo FAIL; exit 1; }
[ -n "$SERIAL" ] || fail "usage: atom-49.sh <serial>"
[ -n "$HDC" ] || fail "missing hdc"
"$ROOT/oracle/board-health.sh" "$SERIAL" || fail "board health"
for f in "$LOCAL_RUN" "$LOCAL_DEX" "$LOCAL_SO"; do [ -f "$f" ] || fail "missing $f"; done

local_run_sha="$(shasum -a 256 "$LOCAL_RUN" | awk '{print $1}')"
local_dex_sha="$(shasum -a 256 "$LOCAL_DEX" | awk '{print $1}')"
local_so_sha="$(shasum -a 256 "$LOCAL_SO" | awk '{print $1}')"
hashes="$($HDC -t "$SERIAL" shell "sha256sum $REMOTE_RUN $S/apks/dayu600-apk-probe.dex $S/probes/libwestlake_embedded_art_dlopen_probe.so $S/android/lib64/sidecars/libwestlake_embedded_art_dlopen_probe.so $S/art/libwestlake_art.so 2>/dev/null" | tr -d '\r')"
remote_sha() { printf '%s\n' "$hashes" | awk -v p="$1" '$2==p {print $1}'; }
[ "$local_run_sha" = "$(remote_sha "$REMOTE_RUN")" ] || fail "launcher hash mismatch"
[ "$local_dex_sha" = "$(remote_sha "$S/apks/dayu600-apk-probe.dex")" ] || fail "dex hash mismatch"
[ "$local_so_sha" = "$(remote_sha "$S/probes/libwestlake_embedded_art_dlopen_probe.so")" ] || fail "sidecar hash mismatch"
[ "$local_so_sha" = "$(remote_sha "$S/android/lib64/sidecars/libwestlake_embedded_art_dlopen_probe.so")" ] || fail "sidecar copy hash mismatch"
[ "$KNOWN_ART_SHA" = "$(remote_sha "$S/art/libwestlake_art.so")" ] || fail "ART hash mismatch"

OUT="${W049_LOG:-/tmp/westlake-w049-$(date +%Y%m%d-%H%M%S).log}"
$HDC -t "$SERIAL" shell "rm -f /data/local/tmp/critbind49-*.txt; timeout 90 $REMOTE_RUN" >"$OUT" 2>&1
run_rc=$?
$HDC -t "$SERIAL" shell "cat /data/local/tmp/critbind49-result.txt 2>/dev/null; cat /data/local/tmp/critbind49-error.txt 2>/dev/null" >>"$OUT" 2>&1
echo "log=$OUT run_rc=$run_rc art_sha=$KNOWN_ART_SHA"
[ "$run_rc" -eq 0 ] || { tail -60 "$OUT"; fail "critbind run failed"; }
grep -Eq 'crit-bind nGetFlags=[0-9]+ expected=[0-9]+ ok normal=ok' "$OUT" || { tail -60 "$OUT"; fail "value marker missing"; }

W001_ART_SHA="$KNOWN_ART_SHA" W001_DEX="$LOCAL_DEX" W001_SO="$LOCAL_SO" \
  "$ROOT/oracle/verify/atom-43.sh" "$SERIAL" || fail "#43 regression"
echo PASS
