#!/usr/bin/env bash
# 逐原子复核脚本模板。一个原子一个脚本:atom-<NN>.sh
# 契约:末行必须打印 PASS 或 FAIL(worker/thinker 只认这个)。占板脚本收 <serial>。
# 复核脚本要"重跑真实判据",不能只 echo PASS —— 否则复核本身就是假阳性。
set -uo pipefail
SERIAL="${1:-}"

# 例(墙 #43 AppThemeBar 双包):跑 probe → grep uamHasWab=true
# S=/data/local/tmp/westlake-dayu600-substrate
# hdc -t "$SERIAL" shell "$S/run-utd-probe.sh" > /tmp/utd.log 2>&1
# if grep -q "uamHasWab=true" /tmp/utd.log && grep -q "createSubDecor OK" /tmp/utd.log; then
#   echo PASS; else echo FAIL; fi

echo "FAIL"   # 未实现的复核默认 FAIL,不许默认 PASS
