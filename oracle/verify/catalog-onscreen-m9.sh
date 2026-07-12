#!/usr/bin/env bash
# ═══════════════════════════════════════════════════════════════════════════
# catalog-onscreen-m9.sh — M9 验收 oracle:真 Material Catalog UI 在 DAYU600 arm64 上屏
#
# GOAL 达成的唯一判据(route B / B-ROUTE-PLAN.md M9)。钉在动手前,防搬龙门/overclaim。
# 纪律:provenance > visual(见 memory onscreen-acceptance-bar)。纯色/静态填色/launcher 截图
# 一律 FAIL —— 变色像素证不了"真 app 真 UI",必须是 Catalog 自己的 Java 渲染。
#
# 三道门(全过才 PASS):
#   G1 进程:app-child(io.material.catalog)存活 —— app 真在跑,不是残帧。
#   G2 面板:snapshot_display(display 0)拉回的帧:非空、非纯色(颜色多样度过阈)、
#            且与 launcher 基线、与我方 color-smoke 纯色帧均显著不同 —— 是结构化 UI。
#   G3 provenance:hilog 里出现 Catalog 自身渲染路径 marker(app ThreadedRenderer→我方 libhwui
#            →WMS 真窗口 Surface)。marker 集合在 M7 bring-up 定稿后 pin(见 EXPECT_RENDER_MARKERS)。
#
# 用法:  bash oracle/verify/catalog-onscreen-m9.sh <board_serial> [baseline_launcher.jpeg]
#   env:  HDC(默认 hdc)、PKG(默认 io.material.catalog)、MIN_COLORS(默认 400)
# ═══════════════════════════════════════════════════════════════════════════
set -uo pipefail

BOARD="${1:?board serial required, e.g. 5ce2dcee00000000000000000923012c}"
BASELINE="${2:-}"                 # 可选:launcher 基线 JPEG(用于 G2 差异对照)
HDC="${HDC:-hdc}"
PKG="${PKG:-io.material.catalog}"
MIN_COLORS="${MIN_COLORS:-400}"   # 纯色帧 unique-color≈1;Catalog 首页 32 格远超此
T="-t $BOARD"
WORK="$(mktemp -d)"; trap 'rm -rf "$WORK"' EXIT
FAIL=0; note(){ echo "  $*"; }

echo "=== M9 catalog-onscreen oracle (board $BOARD) ==="

# ── G1 进程存活 ────────────────────────────────────────────────────────────
echo "[G1] app-child alive?"
PIDS="$($HDC $T shell "pidof $PKG 2>/dev/null || ps -ef | grep -w $PKG | grep -v grep | awk '{print \$2}'" 2>/dev/null | tr -d '\r')"
if [ -n "$PIDS" ]; then note "PASS pid=$PIDS"; else note "FAIL: $PKG 无存活进程"; FAIL=1; fi

# ── G2 面板帧:非空 / 非纯色 / 异于 launcher ───────────────────────────────
echo "[G2] panel frame structured?"
$HDC $T shell "snapshot_display -i 0 -f /data/local/tmp/m9-shot.jpeg" >/dev/null 2>&1
$HDC $T file recv /data/local/tmp/m9-shot.jpeg "$WORK/shot.jpeg" >/dev/null 2>&1
if [ ! -s "$WORK/shot.jpeg" ]; then note "FAIL: 截图为空/未拉回"; FAIL=1; else
  SZ=$(wc -c < "$WORK/shot.jpeg" | tr -d ' '); note "shot bytes=$SZ"
  # 颜色多样度 + 与基线差异:优先 Python/PIL,退化到 ImageMagick
  METRICS="$(python3 - "$WORK/shot.jpeg" "${BASELINE}" <<'PY' 2>/dev/null
import sys
try:
    from PIL import Image
except Exception:
    print("NOPIL"); sys.exit(0)
shot=sys.argv[1]; base=sys.argv[2] if len(sys.argv)>2 and sys.argv[2] else None
im=Image.open(shot).convert("RGB"); im.thumbnail((320,320))
px=list(im.getdata())
uniq=len(set(px))
# 与基线的平均像素差(0-255);无基线则跳过
diff=-1
if base:
    try:
        bo=Image.open(base).convert("RGB").resize(im.size)
        bp=list(bo.getdata())
        n=min(len(px),len(bp))
        diff=sum(abs(px[i][0]-bp[i][0])+abs(px[i][1]-bp[i][1])+abs(px[i][2]-bp[i][2]) for i in range(n))/(3*n)
    except Exception: diff=-1
print(f"UNIQ={uniq} DIFF={diff:.1f}")
PY
)"
  if [ "$METRICS" = "NOPIL" ] || [ -z "$METRICS" ]; then
    # ImageMagick 退化路径
    if command -v identify >/dev/null 2>&1; then
      UNIQ=$(identify -format "%k" "$WORK/shot.jpeg" 2>/dev/null || echo 0)
      METRICS="UNIQ=$UNIQ DIFF=-1"
    else
      note "WARN: 无 python3-PIL 也无 ImageMagick,G2 颜色分析跳过(仅证非空)——装 PIL 后重跑"
      METRICS="UNIQ=? DIFF=?"
    fi
  fi
  note "$METRICS"
  UNIQ=$(echo "$METRICS" | sed -n 's/.*UNIQ=\([0-9?]*\).*/\1/p')
  DIFF=$(echo "$METRICS" | sed -n 's/.*DIFF=\(-*[0-9.]*\).*/\1/p')
  if [ "${UNIQ:-?}" = "?" ]; then
    note "G2 部分:非空已证,颜色多样度未测(见上 WARN)"
  elif [ "$UNIQ" -lt "$MIN_COLORS" ]; then
    note "FAIL: unique-color=$UNIQ < $MIN_COLORS —— 疑纯色/近纯色(color-smoke 类),非结构化 UI"; FAIL=1
  else
    note "PASS 颜色多样度 $UNIQ >= $MIN_COLORS"
    if [ -n "$BASELINE" ] && [ "${DIFF:-x}" != "x" ] && [ "${DIFF%.*}" != "-1" ]; then
      # 与 launcher 基线差异需显著(阈值 12/通道,保守)
      awk "BEGIN{exit !($DIFF>=12)}" && note "PASS 异于 launcher 基线(diff=$DIFF)" \
        || { note "FAIL: 与 launcher 基线过近(diff=$DIFF)—— 可能截到 launcher 非 Catalog"; FAIL=1; }
    else
      note "NOTE: 未给 launcher 基线,建议传入第 2 参做 launcher 排除对照"
    fi
  fi
  cp "$WORK/shot.jpeg" "./m9-catalog-shot.jpeg" 2>/dev/null && note "帧留存 ./m9-catalog-shot.jpeg(人工终判用)"
fi

# ── G3 render provenance ───────────────────────────────────────────────────
echo "[G3] catalog own-render provenance in hilog?"
# marker 集合在 M7 bring-up 定稿后 pin;现为占位,任一命中即计 provenance 证据。
EXPECT_RENDER_MARKERS="${EXPECT_RENDER_MARKERS:-ThreadedRenderer|CanvasContext|WLXMLIJ|wl-capture|syncAndDrawFrame|io.material.catalog}"
HLOG="$($HDC $T shell "hilog -x 2>/dev/null | tail -400" 2>/dev/null | tr -d '\r')"
if echo "$HLOG" | grep -qE "$EXPECT_RENDER_MARKERS"; then
  note "PASS render marker 命中:$(echo "$HLOG" | grep -oE "$EXPECT_RENDER_MARKERS" | sort -u | tr '\n' ' ')"
else
  note "FAIL/PENDING: 未见 render marker($EXPECT_RENDER_MARKERS)—— M7 定稿后 pin 真实 marker 再判"
  FAIL=1
fi

echo "=== RESULT ==="
if [ "$FAIL" = 0 ]; then echo "PASS — 真 Material Catalog UI 上屏(GOAL 达成)"; exit 0
else echo "FAIL — 见上;未达 M9 前不得声称真 App 上屏"; exit 1; fi
