#!/usr/bin/env bash
set -uo pipefail

SERIAL="${1:-}"
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
HDC="${HDC:-$(command -v hdc 2>/dev/null || true)}"
P=/data/local/tmp/wl-color-codex

fail() { echo "$1"; echo FAIL; exit 1; }
[ -n "$SERIAL" ] || fail "usage: color-smoke-5ce.sh <serial>"
[ "$SERIAL" = 5ce2dcee00000000000000000923012c ] || fail "wrong board: 5ce only"
[ -n "$HDC" ] || fail "missing hdc"
[ -n "${WCOLOR_ART_SHA:-}" ] || fail "set WCOLOR_ART_SHA"
[ -n "${WCOLOR_DEX_SHA:-}" ] || fail "set WCOLOR_DEX_SHA"
"$ROOT/oracle/board-health.sh" "$SERIAL" || fail "board health"

hashes="$($HDC -t "$SERIAL" shell "sha256sum $P/art/libwestlake_art.so $P/apks/dayu600-apk-probe.dex $P/apks/color-smoke.apk 2>/dev/null" | tr -d '\r')"
remote_sha() { printf '%s\n' "$hashes" | awk -v p="$1" '$2==p {print $1}'; }
[ "$WCOLOR_ART_SHA" = "$(remote_sha "$P/art/libwestlake_art.so")" ] || fail "ART hash mismatch"
[ "$WCOLOR_DEX_SHA" = "$(remote_sha "$P/apks/dayu600-apk-probe.dex")" ] || fail "dex hash mismatch"
[ 082559aeb0e87bb9076a707e3f014938e78534fdbb6ec172c3211830275ae9c4 = "$(remote_sha "$P/apks/color-smoke.apk")" ] || fail "color APK hash mismatch"

out="$($HDC -t "$SERIAL" shell "cat /data/local/tmp/color-smoke-result.txt 2>/dev/null; cat /data/local/tmp/color-smoke-pixels.txt 2>/dev/null" | tr -d '\r')"
printf '%s\n' "$out"
grep -q 'color-smoke=ok' <<<"$out" || fail "render marker missing"
grep -q 'changed=yes' <<<"$out" || fail "palette did not advance"
grep -qi 'pixel0=ffff0000' <<<"$out" || fail "red pixel missing"
grep -qi 'pixel1=ff00ff00' <<<"$out" || fail "green pixel missing"
echo PASS
