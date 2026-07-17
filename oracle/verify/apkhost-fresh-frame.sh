#!/usr/bin/env bash
# apkhost-fresh-frame.sh — W-004 extension oracle: an INSTALLED OH HAP (launcher icon)
# boots the embedded ART in its own sandboxed process, loads triangle.apk's OWN dex,
# and paints the app's Canvas into the HAP's OWN XComponent window. PASS requires a
# proof chain that is fresh per launch and cannot be replayed from an older run:
#
#   1. install:    hdc install of the pinned signed HAP succeeds (com.westlake.artboot)
#   2. launch:     aa start of EntryAbility; glue logs WLAUNCH launch nonce=<N> color=<C>
#   3. attribution: WELD factory line for nonce <N> — the renderer's setSurface got the
#                   ArkUI-owned XComponent window (NOT an RSSurfaceNode display-0 overlay)
#   4. fresh frame: the probe dex drew one frame whose hub fill == color <C> derived
#                   from nonce <N>, and the pre-swap panel pixel readback equals it
#                   (WLTRI| launchNonce=<N> ... nonceMatch=yes)
#   5. verdict:    ARTBOOT verdict=PASS (pipeline ran to completion, no crash)
#
# The nonce <N> = WL<epoch_ms>-<pid> is minted by the HAP glue at every launch, so any
# stale hilog line from a previous run cannot satisfy this run's chain. Pins: the HAP
# sha256 (covers art/renderer/libhwui/jars/dex/apk inside).
#
# usage: WAH_HAP_SHA=<sha256> apkhost-fresh-frame.sh <serial> [signed.hap]
set -uo pipefail

SERIAL="${1:-}"
HAP="${2:-}"
BUNDLE=com.westlake.artboot
ABILITY=EntryAbility

fail() { echo "$1"; echo FAIL; exit 1; }
[ -n "$SERIAL" ] || fail "usage: apkhost-fresh-frame.sh <serial> [signed.hap]"
[ -n "$HAP" ] || fail "usage: apkhost-fresh-frame.sh <serial> [signed.hap]"
[ -f "$HAP" ] || fail "no such hap: $HAP"
[ -n "${WAH_HAP_SHA:-}" ] || fail "set WAH_HAP_SHA"
HDC="${HDC:-$(command -v hdc 2>/dev/null || true)}"
[ -n "$HDC" ] || fail "missing hdc"
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"

actual="$(shasum -a 256 "$HAP" | awk '{print $1}')"
[ "$actual" = "$WAH_HAP_SHA" ] || fail "hap sha mismatch: want $WAH_HAP_SHA got $actual"
"$ROOT/oracle/board-health.sh" "$SERIAL" || fail "board health"

echo "== uninstall old $BUNDLE (tolerated)"
$HDC -t "$SERIAL" shell "bm uninstall -n $BUNDLE" >/dev/null 2>&1 || true

echo "== install $HAP"
inst="$($HDC -t "$SERIAL" install "$HAP" 2>&1 | tr -d '\r')"
printf '%s\n' "$inst"
grep -qi "successfully" <<<"$inst" || fail "install failed"

echo "== clear hilog (best effort) + launch"
$HDC -t "$SERIAL" shell "hilog -c" >/dev/null 2>&1 || true
$HDC -t "$SERIAL" shell "hilog -r" >/dev/null 2>&1 || true
start="$($HDC -t "$SERIAL" shell "aa start -b $BUNDLE -a $ABILITY" 2>&1 | tr -d '\r')"
printf '%s\n' "$start"
grep -qi "successfully" <<<"$start" || fail "aa start failed"

# ---- poll hilog for the fresh proof chain (up to 240s: first launch extracts ~110MB)
logdump() { $HDC -t "$SERIAL" shell "hilog -x" 2>/dev/null | tr -d '\r'; }
nonce=""
deadline=$(( $(date +%s) + 240 ))
line=""
while [ "$(date +%s)" -lt "$deadline" ]; do
  line="$(logdump | grep -a "WLAUNCH launch nonce=" | tail -1 || true)"
  [ -n "$line" ] && break
  sleep 5
done
[ -n "$line" ] || fail "no WLAUNCH launch-nonce line within 240s"
nonce="$(sed -E 's/.*nonce=(WL[0-9]+-[0-9]+).*/\1/' <<<"$line")"
color="$(sed -E 's/.*color=(0x[0-9a-fA-F]+).*/\1/' <<<"$line")"
[ -n "$nonce" ] || fail "could not parse nonce from: $line"
echo "== launch nonce: $nonce  color: $color"

# ---- attribution: WELD factory returned the XComponent window for THIS nonce
deadline=$(( $(date +%s) + 120 ))
weld=""
while [ "$(date +%s)" -lt "$deadline" ]; do
  weld="$(logdump | grep -a "WELD factory -> XComponent window" | grep -a "nonce=$nonce" | tail -1 || true)"
  [ -n "$weld" ] && break
  sleep 5
done
[ -n "$weld" ] || fail "no WELD attribution line for nonce $nonce — window weld did not fire (or fell back to overlay)"
printf '%s\n' "$weld"

# ---- fresh frame: dex drew nonce colour, panel pixel matched
deadline=$(( $(date +%s) + 180 ))
tri=""
while [ "$(date +%s)" -lt "$deadline" ]; do
  tri="$(logdump | grep -a "WLTRI| " | grep -a "launchNonce=$nonce" | tail -1 || true)"
  [ -n "$tri" ] && break
  sleep 5
done
[ -n "$tri" ] || fail "no nonce-frame evidence for nonce $nonce"
printf '%s\n' "$tri"
grep -q "nonceMatch=yes" <<<"$tri" || fail "nonce pixel mismatch: $tri"
nc="$(sed -E 's/.*nonceColor=([0-9a-f]{8}).*/\1/' <<<"$tri")"
np="$(sed -E 's/.*noncePixel=([0-9a-f]{8}).*/\1/' <<<"$tri")"
[ -n "$nc" ] && [ "$nc" = "$np" ] || fail "nonce colour/pixel parse or compare failed: $tri"
[ "0x$nc" = "$color" ] || fail "launch colour $color != drawn nonce colour 0x$nc"

# ---- pipeline verdict
verd="$(logdump | grep -a "ARTBOOT.*verdict=PASS" | tail -1 || true)"
[ -n "$verd" ] || fail "no ARTBOOT verdict=PASS"
printf '%s\n' "$verd"

# ---- panel snapshot as photographic artifact (not asserted)
ts="$(date +%Y%m%d-%H%M%S)"
$HDC -t "$SERIAL" shell "snapshot_display -f /data/local/tmp/wlah-$ts" >/dev/null 2>&1 || true
shot="$($HDC -t "$SERIAL" shell "ls /data/local/tmp/wlah-$ts* 2>/dev/null" | tr -d '\r' | head -1)"
if [ -n "$shot" ]; then
  mkdir -p "$ROOT/evidence/W-004"
  $HDC -t "$SERIAL" file recv "$shot" "$ROOT/evidence/W-004/apkhost-fresh-frame-$ts.jpeg" >/dev/null 2>&1 || true
  echo "snapshot: evidence/W-004/apkhost-fresh-frame-$ts.jpeg"
fi

echo "nonce=$nonce color=$color weld=XComponent frame=match verdict=PASS"
echo PASS
