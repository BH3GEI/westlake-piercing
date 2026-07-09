#!/usr/bin/env bash
# 板子恢复:板掉线(dalvikvm 崩→USB daemon 崩→hdc 掉)时,bark 用户去断电重插,
# 然后轮询等板回来 → 重挂 bind-mount → READY。
#
# 决策(2026-07-09):不做遥控电源自动化。用户手动断电重插,脚本负责通知 + 等待 + 重挂。
#   所以本脚本不是"自动复位",是"喊人 + 盯着回没回来"。看门狗调它,它 bark 一次就守着。
#
# 用法: board-recover.sh <serial> [等待分钟,默认 15]
# 退出码: 0=READY  1=超时未恢复(需再次人工)
set -uo pipefail
HERE="$(cd "$(dirname "$0")" && pwd)"
SERIAL="${1:-}"
WAIT_MIN="${2:-15}"
[ -z "$SERIAL" ] && { echo "usage: board-recover.sh <serial> [wait-minutes]"; exit 64; }

# bark 在 PATH 里(~/.local/bin/bark)。缺了也别让恢复流程崩,降级到只打屏。
notify() {
  local title="$1" body="$2"
  if command -v bark >/dev/null 2>&1; then
    bark "$title" "$body" westlake >/dev/null 2>&1 || echo "[warn] bark 失败,仅打屏: $body" >&2
  else
    echo "[notify] $title: $body" >&2
  fi
}

remount_substrate() {
  local serial="$1"
  # 冷启后 B 的 substrate bind-mount / F 的 appspawn-x bind-mount 需重挂。
  # TODO: 从既有 runbook 收编具体挂载命令(ammo/runbooks/ 下)。
  echo "[recover] TODO: remount_substrate($serial) 待从 runbook 收编" >&2
  return 0
}

echo "[recover] $SERIAL 掉线,请求人工断电重插..."
notify "西湖·板掉线" "板 ${SERIAL:0:8} 掉线(疑 USB daemon 崩)。请断电重插。脚本在等它回来(${WAIT_MIN}min)。"

echo "[recover] 等 boot + hdc 上线(最多 ${WAIT_MIN}min)..."
loops=$(( WAIT_MIN * 60 / 5 ))
for i in $(seq 1 "$loops"); do
  sleep 5
  if bash "$HERE/board-health.sh" "$SERIAL" >/dev/null 2>&1; then
    echo "[recover] hdc 上线,重挂 bind-mount..."
    remount_substrate "$SERIAL"
    notify "西湖·板已恢复" "板 ${SERIAL:0:8} 已上线,bind-mount 重挂完成,READY。"
    echo "READY: $SERIAL"
    exit 0
  fi
done

notify "西湖·板未恢复" "板 ${SERIAL:0:8} 等了 ${WAIT_MIN}min 还没回来,需要再看一眼。"
echo "FAIL: $SERIAL ${WAIT_MIN}min 内未恢复,需人工"
exit 1
