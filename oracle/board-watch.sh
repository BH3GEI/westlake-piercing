#!/usr/bin/env bash
# 板池巡检看门狗 · cron 每 15min 唤醒,脚本内部 45min 闸门
#
# 纪律(2026-07-11 定,见 state/SYNC.md 与 DECISIONS.md):
#   - **只读**巡检。不动板、不改卡、不 commit(coding 无 .git 写权,由文件系统强制)。
#   - **只在有新跨车道信号时**往 state/SYNC.md 补一行。无变化 → 什么都不写,静默退出。
#     (对应 AGENTS.md 合同 4:禁止空转 commit。轮询本身不得生产内容。)
#   - **不打扰有锁的板**:BOARDS.toml 里 lock 非空的板只做 list 存在性检查,绝不 shell 进去。
#   - SYNC.md ≤60 行是硬预算。超了就 bark 喊人压缩,而不是自己截断 state。
#   - 追加用 `>>`(不改属主)。切勿用"写临时文件再 mv"——那会把 SYNC.md 属主变成 coding。
#
# 退出码: 0=正常(无论有无变化)  1=巡检本身失败
set -uo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
BOARDS="$ROOT/state/BOARDS.toml"
SYNC="$ROOT/state/SYNC.md"

HDC="${HDC:-/Users/yao/.local/bin/hdc}"
BARK="${BARK:-/Users/yao/.local/bin/bark}"

STATE_DIR="${WL_WATCH_STATE:-$HOME/.local/state/westlake}"
FP_FILE="$STATE_DIR/board-watch.fp"
TS_FILE="$STATE_DIR/board-watch.last"
LOCK_DIR="$STATE_DIR/board-watch.lock"
SIGNAL_LOG="${WL_WATCH_SIGNAL_LOG:-$STATE_DIR/board-watch.signals}"   # dispatcher 从这里聚合

MIN_INTERVAL_SEC="${WL_WATCH_INTERVAL:-2700}"   # 45min
SYNC_MAX_LINES="${WL_SYNC_MAX_LINES:-60}"

mkdir -p "$STATE_DIR"
log() { printf '[%s] %s\n' "$(date '+%F %T')" "$*"; }
notify() {
  if [ -x "$BARK" ]; then
    "$BARK" "$1" "$2" westlake >/dev/null 2>&1 </dev/null || log "[warn] bark 失败: $2"
  else
    log "[notify] $1: $2"
  fi
}

# ---- 单实例 ----
if ! mkdir "$LOCK_DIR" 2>/dev/null; then log "另一个巡检在跑,跳过"; exit 0; fi
trap 'rmdir "$LOCK_DIR" 2>/dev/null' EXIT

# ---- 45min 闸门(WL_WATCH_FORCE=1 可强制跑,用于手测) ----
now=$(date +%s)
if [ "${WL_WATCH_FORCE:-0}" != "1" ] && [ -f "$TS_FILE" ]; then
  last=$(cat "$TS_FILE" 2>/dev/null || echo 0)
  [ $(( now - last )) -lt "$MIN_INTERVAL_SEC" ] && exit 0
fi

# ---- 采集 ----
[ -x "$HDC" ] || { log "FAIL: hdc 不可执行: $HDC"; exit 1; }
LIVE="$("$HDC" list targets 2>/dev/null </dev/null | tr -d '\r' | grep -E '^[0-9a-f]{16,}$' | sort)"

REGISTERED="$(awk '
  /^\[\[board\]\]/ { serial="" ; next }
  /^serial[ \t]*=/ { if (match($0, /"[^"]*"/)) serial = substr($0, RSTART+1, RLENGTH-2); next }
  /^lock[ \t]*=/   { lock=""; if (match($0, /"[^"]*"/)) lock = substr($0, RSTART+1, RLENGTH-2);
                     if (serial != "") print serial "\t" lock; next }
' "$BOARDS" | sort)"
REG_SERIALS="$(printf '%s\n' "$REGISTERED" | cut -f1 | grep -v '^$' | sort)"

MISSING="$(comm -23 <(printf '%s\n' "$REG_SERIALS") <(printf '%s\n' "$LIVE") | grep -v '^$' || true)"
UNKNOWN="$(comm -13 <(printf '%s\n' "$REG_SERIALS") <(printf '%s\n' "$LIVE") | grep -v '^$' || true)"

# ---- 存活探针:只 ping 无锁的板;hdc 必须 </dev/null,否则吃掉循环的 stdin ----
ALIVE_MAP=""
while IFS=$'\t' read -r serial lock; do
  [ -z "$serial" ] && continue
  if ! printf '%s\n' "$LIVE" | grep -qx "$serial"; then
    ALIVE_MAP="${ALIVE_MAP}${serial}:absent"$'\n'; continue
  fi
  if [ -n "$lock" ]; then
    ALIVE_MAP="${ALIVE_MAP}${serial}:listed(locked=${lock})"$'\n'; continue
  fi
  if "$HDC" -t "$serial" shell "echo __wl_alive__" 2>/dev/null </dev/null | grep -q __wl_alive__; then
    ALIVE_MAP="${ALIVE_MAP}${serial}:alive"$'\n'
  else
    ALIVE_MAP="${ALIVE_MAP}${serial}:no-shell"$'\n'
  fi
done <<< "$REGISTERED"

FP="$(printf 'live=%s\nreg=%s\nalive=%s\n' "$LIVE" "$REGISTERED" "$ALIVE_MAP" | shasum -a 256 | awk '{print $1}')"
printf '%s\n' "$now" > "$TS_FILE"
OLD_FP="$(cat "$FP_FILE" 2>/dev/null || echo '')"

# 指纹没变 → 一个字都不写。这是本脚本存在的全部纪律。
[ "$FP" = "$OLD_FP" ] && exit 0

# ---- 组装信号 ----
STAMP="$(date '+%F %H:%M')"
SIGNALS=""

# 两块小板 serial 前缀相同(dd011a41…),截前 8 位不可辨。优先用 BOARDS.toml 的 alias,否则取后 8 位。
alias_for() {
  local a; a="$(grep -A 1 -F "\"$1\"" "$BOARDS" | awk -F'"' '/^alias/{print $2}' | head -1)"
  [ -n "$a" ] && printf '%s' "$a" || printf '…%s' "${1: -8}"
}

while read -r s; do
  [ -z "$s" ] && continue
  flag=""
  grep -A 8 -F "\"$s\"" "$BOARDS" | grep -qE 'blob|不可重建' && flag=" — 🔴 该板含不可重建资产"
  SIGNALS="${SIGNALS}- [${STAMP}][watch][$(alias_for "$s")] \`HAZARD\` 登记板失联(不在 hdc list targets)${flag}。serial=\`${s}\`。恢复: \`oracle/board-recover.sh ${s}\`"$'\n'
done <<< "$MISSING"

while read -r s; do
  [ -z "$s" ] && continue
  SIGNALS="${SIGNALS}- [${STAMP}][watch][$(alias_for "$s")] \`HAZARD\` 未登记板出现在 hdc list,serial=\`${s}\` → **无 forbidden 保护**,任何人不得对其 wipe/flash,待 dispatcher 确认板身份并补进 BOARDS.toml。"$'\n'
done <<< "$UNKNOWN"

# 首跑:建基线。但 HAZARD 不能被基线吞掉——失联/未登记必须立刻说。
if [ -z "$OLD_FP" ] && [ -z "$SIGNALS" ]; then
  printf '%s\n' "$FP" > "$FP_FILE"
  log "基线已建立 fp=${FP:0:12}(板池干净,无信号)"
  exit 0
fi

if [ -z "$SIGNALS" ]; then
  SIGNALS="- [${STAMP}][watch][板池] \`FACT\` 板池存活态变化: $(printf '%s' "$ALIVE_MAP" | tr '\n' ' ' | sed 's/ $//')"$'\n'
fi

# ---- 写入口 ----
# 2026-07-11 dispatcher 定:`state/SYNC.md` **仅 dispatcher 写**,lane 只读。
# 所以本脚本默认**不碰 SYNC.md**,只落自己的信号日志 + bark。dispatcher 据日志聚合。
# 需要脚本直写 SYNC.md 时,dispatcher 显式设 WL_WATCH_WRITE_SYNC=1。
add_lines=$(printf '%s' "$SIGNALS" | grep -c '^' || true)

if [ "${WL_WATCH_WRITE_SYNC:-0}" = "1" ]; then
  cur_lines=$(wc -l < "$SYNC" | tr -d ' ')
  if [ $(( cur_lines + add_lines )) -gt "$SYNC_MAX_LINES" ]; then
    notify "西湖·SYNC.md 超预算" "SYNC.md ${cur_lines}+${add_lines} > ${SYNC_MAX_LINES} 行,需压缩进 archive/。本次信号未写入,见巡检日志。"
    log "SYNC.md 超 ${SYNC_MAX_LINES} 行预算,拒绝追加。待写信号:"
    printf '%s' "$SIGNALS"
    exit 0
  fi
  printf '%s' "$SIGNALS" >> "$SYNC"    # >> 不改属主;绝不用"临时文件+mv"
  log "已向 SYNC.md 追加 ${add_lines} 行信号"
else
  printf '%s' "$SIGNALS" >> "$SIGNAL_LOG"
  log "信号已落 ${SIGNAL_LOG}(${add_lines} 行);SYNC.md 归 dispatcher 写,未触碰"
fi

printf '%s\n' "$FP" > "$FP_FILE"
printf '%s' "$SIGNALS"

[ -n "$MISSING" ] && notify "西湖·板失联" "登记板不在 hdc list: $(printf '%s' "$MISSING" | tr '\n' ' ')"
[ -n "$UNKNOWN" ] && notify "西湖·未登记板" "hdc 里有未登记的板: $(printf '%s' "$UNKNOWN" | tr '\n' ' ')"
exit 0
