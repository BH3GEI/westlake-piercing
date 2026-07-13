#!/usr/bin/env bash
# W-004 triangle-apk oracle — a real Android APK (com.gltri.demo.TriangleView, loaded from
# triangle.apk's OWN dex) rasterises a RICH, ANTI-ALIASED, animated "aurora gauge" dashboard
# with real Canvas fill ops (drawOval / drawRoundRect / drawRect / drawColor) -> the app's
# RenderNode -> our libhwui (skia) -> OHOS RSSurfaceNode(display 0) -> panel. OpenHarmony only
# composites; it draws none of the scene.
#
# PASS requires, all read back off the panel (pre-swap center pixel via egl_interposer):
#   1. render marker (triangle-smoke=ok)
#   2. the app's colour cycle actually painted >=2 distinct centre colours live (changed=yes,
#      driven by distinctFrames>0 — robust to the 8-frame cadence wrapping frame0==frameLast)
#   3. per-frame provenance: EVERY held frame's centre pixel == the app's OWN mColor field
#      (centerProvenance=match, i.e. provMatch==provTotal) — the panel centre pixel IS the
#      APK's state, so this is the app's render, not a static block or OH-drawn fill
#   4. frame0 anchor: angle=6 colour=ffff3b30 pixel=ffff3b30 (known first frame, red hub)
#   5. capability map honesty: the scene's four ops are dispatch-bound and PAINT (drawRect/
#      drawOval/drawRoundRect/drawPaint OK), while the unbound ops silently no-op to the
#      backdrop (drawCircle/drawArc/drawPath --) — proves the scene only uses ops that really
#      rasterise on this substrate (see memory substrate-canvas-op-shorty-map)
#   6. fps >= 60 (the explicit ask) — measured render-only (record+draw+swap, sleep excluded)
#
# Isolated lane: /data/local/tmp/wl-tri-codex (clone of the color lane; art/ shared-by-copy).
# The frozen color lane (wl-color-codex) is untouched — this pins its OWN dex, not color's.
# Current expected artifact shas (ART + probe dex passed via env by the runner):
#   ART   libwestlake_art.so        = dc1d5e8239dc6fb4aeff6d70e21c12985fe7f85e6e02efcfa7f433cb3b257a83
#   probe dayu600-apk-probe.dex     = eea33dcb2cf995bc5b6a648329004d899c62db3a06221dc3384cfc7f339b8d98
#   app   triangle.apk (pinned below)= ad404dbce5a8ce58936f6f45253f11bac11b88e1bd86e7adfb9e09deeaffb261
set -uo pipefail

SERIAL="${1:-}"
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
HDC="${HDC:-$(command -v hdc 2>/dev/null || true)}"
P=/data/local/tmp/wl-tri-codex
APK_SHA=ad404dbce5a8ce58936f6f45253f11bac11b88e1bd86e7adfb9e09deeaffb261

fail() { echo "$1"; echo FAIL; exit 1; }
[ -n "$SERIAL" ] || fail "usage: triangle-smoke-5ce.sh <serial>"
[ "$SERIAL" = 5ce2dcee00000000000000000923012c ] || fail "wrong board: 5ce only"
[ -n "$HDC" ] || fail "missing hdc"
[ -n "${WTRI_ART_SHA:-}" ] || fail "set WTRI_ART_SHA"
[ -n "${WTRI_DEX_SHA:-}" ] || fail "set WTRI_DEX_SHA"
"$ROOT/oracle/board-health.sh" "$SERIAL" || fail "board health"

hashes="$($HDC -t "$SERIAL" shell "sha256sum $P/art/libwestlake_art.so $P/apks/dayu600-apk-probe.dex $P/apks/triangle.apk 2>/dev/null" | tr -d '\r')"
remote_sha() { printf '%s\n' "$hashes" | awk -v p="$1" '$2==p {print $1}'; }
[ "$WTRI_ART_SHA" = "$(remote_sha "$P/art/libwestlake_art.so")" ] || fail "ART hash mismatch"
[ "$WTRI_DEX_SHA" = "$(remote_sha "$P/apks/dayu600-apk-probe.dex")" ] || fail "probe dex hash mismatch"
[ "$APK_SHA" = "$(remote_sha "$P/apks/triangle.apk")" ] || fail "triangle APK hash mismatch"

# A PASS must come from this invocation.  The original oracle only read the
# existing result files, so a later broken deployment could inherit an older
# PASS.  Remove them first, execute the pinned lane runner, and require it to
# recreate both files successfully.
runner="$P/run-triangle-5ce.sh"
$HDC -t "$SERIAL" shell "test -f $runner" >/dev/null 2>&1 || fail "missing device runner: $runner"
$HDC -t "$SERIAL" shell "rm -f /data/local/tmp/triangle-result.txt /data/local/tmp/triangle-pixels.txt" \
  >/dev/null 2>&1 || fail "could not clear stale triangle results"
run_out="$($HDC -t "$SERIAL" shell "cd $P && sh $runner" 2>&1 | tr -d '\r')"
run_rc=$?
printf '%s\n' "$run_out"
[ "$run_rc" -eq 0 ] || fail "fresh triangle run failed rc=$run_rc"

out="$($HDC -t "$SERIAL" shell "cat /data/local/tmp/triangle-result.txt 2>/dev/null; cat /data/local/tmp/triangle-pixels.txt 2>/dev/null" | tr -d '\r')"
[ -n "$out" ] || fail "fresh run produced no result files"
printf '%s\n' "$out"

# 1) render marker + 2) live colour cycle
grep -q 'triangle-smoke=ok' <<<"$out" || fail "render marker missing"
grep -q 'changed=yes'       <<<"$out" || fail "colour did not advance (distinctFrames==0)"

# 3) per-frame provenance: every held frame's centre pixel == the app's own mColor
grep -q 'centerProvenance=match' <<<"$out" || fail "centre pixel did not track the app's mColor every frame"

# 4) frame0 anchor: the exact first-frame centre pixel IS the app's colour (red hub) at angle=6
grep -qi 'frame0 angle=6 color=ffff3b30 pixel=ffff3b30' <<<"$out" || fail "frame0 red-hub provenance missing"

# 5) capability-map honesty — the scene's ops PAINT; the unbound ops silently no-op.
#    (A blank drawPath/drawCircle would leave the ff0b0e1a backdrop at centre => '--'.)
for op in '0 drawRect' '2 drawOval' '3 drawRoundRect' '8 drawPaint'; do
  grep -qiE "cap $op .* OK$" <<<"$out" || fail "expected bound op to PAINT: cap $op"
done
for op in '1 drawCircle' '4 drawArc' '6 drawPath'; do
  grep -qiE "cap $op .* --$" <<<"$out" || fail "expected unbound op to no-op: cap $op"
done

# 6) fps >= 60 — the explicit requirement, measured render-only.
fps="$(grep -oE 'fps=[0-9.]+' <<<"$out" | head -1 | cut -d= -f2)"
[ -n "$fps" ] || fail "fps line missing"
awk -v f="$fps" 'BEGIN{ exit !(f+0 >= 60) }' || fail "fps $fps < 60"

echo "fps=$fps (>=60), provenance=match, colour-cycle=yes, cap-map honest"
echo PASS
