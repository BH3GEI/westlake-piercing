#!/usr/bin/env bash
# 逐原子复核脚本模板。一个原子一个脚本:atom-<NN>.sh
# 契约:末行必须打印 PASS 或 FAIL(worker/thinker 只认这个)。占板脚本收 <serial>。
# 复核脚本要"重跑真实判据",不能只 echo PASS —— 否则复核本身就是假阳性。
set -uo pipefail
SERIAL="${1:-}"

# 例(墙 #43):直接调用该墙的实现；它还会校验 repo-owned launcher/DEX/SO hash、
# 清理结果、run rc、nativeSet heartbeat 与正确的 AppCompat attr marker。
# oracle/verify/atom-43.sh "$SERIAL"

echo "FAIL"   # 未实现的复核默认 FAIL,不许默认 PASS
