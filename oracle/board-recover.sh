#!/usr/bin/env bash
# 板子自动复位:遥控断电重启 → 等 boot → 确认 hdc → 重挂 bind-mount → READY。
# 把"dalvikvm 崩→USB daemon 崩→掉线→等人物理重插"从 14 小时停摆变成单板 ~3 分钟自动恢复。
#
# 用法: board-recover.sh <serial>
# 退出码: 0=READY  1=恢复失败(需人工)
#
# ⚠️ 未完成:power_cycle() 依赖遥控电源接口,待用户提供后填。
#    两个物理前提:①每板独立可控插座 ②Mac 已 pmset disablesleep。
set -uo pipefail
HERE="$(cd "$(dirname "$0")" && pwd)"
SERIAL="${1:-}"
[ -z "$SERIAL" ] && { echo "usage: board-recover.sh <serial>"; exit 64; }

power_cycle() {
  local serial="$1"
  # TODO(用户给接口后填)。按形态二选一:
  #   智能插座(米家/HomeKit/tasmota):
  #     curl -s "http://<plug-ip>/cm?cmnd=Power%20OFF" ; sleep 8 ; curl -s "http://<plug-ip>/cm?cmnd=Power%20ON"
  #   网络 PDU:
  #     snmpset / curl 到对应 outlet
  # 需要 serial→outlet 的映射表(放 BOARDS.toml 或此处)。
  echo "TODO: power_cycle($serial) 未接线 —— 现在需要人工断电重插" >&2
  return 1
}

remount_substrate() {
  local serial="$1"
  # 冷启后 B 的 substrate bind-mount / F 的 appspawn-x bind-mount 需重挂。
  # TODO: 从既有 runbook 收编具体挂载命令(scratchpad-shared/agent-f-bigboard-install-runbook.md 等)。
  echo "TODO: remount_substrate($serial) 待从 runbook 收编" >&2
  return 0
}

echo "[recover] $SERIAL 断电重启..."
power_cycle "$SERIAL" || { echo "FAIL: 无法遥控断电,需人工"; exit 1; }

echo "[recover] 等 boot + hdc 上线(最多 120s)..."
for i in $(seq 1 24); do
  sleep 5
  if bash "$HERE/board-health.sh" "$SERIAL" >/dev/null 2>&1; then
    echo "[recover] hdc 上线,重挂 bind-mount..."
    remount_substrate "$SERIAL"
    echo "READY: $SERIAL"
    exit 0
  fi
done
echo "FAIL: $SERIAL 120s 内未恢复,需人工"
exit 1
