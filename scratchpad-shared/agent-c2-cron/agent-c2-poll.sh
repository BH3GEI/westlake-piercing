#!/bin/zsh
# Agent-C2 10-min polling cron for westlake-piercing
set -euo pipefail
export PATH="/Users/yao/.local/openharmony-tools/bin:$PATH"

COORD=/Users/yao/westlake-piercing/AGENT-COORD.md
CHAT=/Users/yao/westlake-piercing/AGENT-CHAT.md
LOG=/Users/yao/westlake-piercing/scratchpad-shared/agent-c2-cron/agent-c2-poll.log
TS=$(date '+%Y-%m-%d %H:%M:%S')

exec >> "$LOG" 2>>1

echo "===== [$TS] Agent-C2 poll start ====="

# tail coordination files
echo "--- COORD tail (30) ---"
tail -n 30 "$COORD" | sed 's/^/  /'
echo "--- CHAT tail (30) ---"
tail -n 30 "$CHAT" | sed 's/^/  /'

# extract recent Agent-B / first-frame claims
B_STATUS=$(tail -n 100 "$COORD" | grep -E '\[Agent-B\]|首帧|first.frame|onCreate|inflate|setContentView|ULE|AppCompat' | tail -15 || true)
if [ -n "$B_STATUS" ]; then
  echo "--- B status snapshot ---"
  echo "$B_STATUS" | sed 's/^/  /'
fi

# check board 5583f5be online
BOARD=$(hdc list targets 2>/dev/null | grep '5583f5be' || true)
if [ -n "$BOARD" ]; then
  echo "--- board 5583f5be online ---"
  echo "$BOARD" | sed 's/^/  /'
  # lightweight hilog tail for renderer markers (last 50 lines)
  hdc -t 5583f5be shell "hilog -T RenderNode -T westlake -T Upscreen -T hwui" 2>/dev/null | tail -20 | sed 's/^/  /' || true
else
  echo "--- board 5583f5be OFFLINE ---"
fi

# keyword alerts
if tail -n 50 "$COORD" | grep -qiE '首帧成功|first frame success|true pixel|setContentView passed|B.*success|🎉.*frame'; then
  MSG="B first-frame success detected"
  echo "ALERT: $MSG"
  if command -v bark >/dev/null 2>>1; then
    echo "$MSG" | bark "Agent-C2: B首帧成功" - agent-c2 2>/dev/null || true
  fi
elif tail -n 50 "$COORD" | grep -qiE '首帧.*失败|B.*fail|B.*crash|ULE|crash|卡.*theme|失败'; then
  MSG="B first-frame blocked or failed - check COORD"
  echo "WARN: $MSG"
  if command -v bark >/dev/null 2>>1; then
    echo "$MSG" | bark "Agent-C2: B首帧受阻" - agent-c2 2>/dev/null || true
  fi
fi

echo "===== [$TS] Agent-C2 poll end ====="
