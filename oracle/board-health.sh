#!/usr/bin/env bash
# 板子健康检查:hdc 可达 + (可选)关键产物 hash 核对。
# 用法: board-health.sh <serial> [--hash]
# 退出码: 0=健康  1=不可达  2=hash 不符
set -uo pipefail

SERIAL="${1:-}"
[ -z "$SERIAL" ] && { echo "usage: board-health.sh <serial> [--hash]"; exit 64; }

# 1) hdc 是否在 targets 列表
if ! hdc list targets 2>/dev/null | grep -q "$SERIAL"; then
  echo "FAIL: $SERIAL 不在 hdc list targets"
  exit 1
fi

# 2) shell 是否真能执行
if ! hdc -t "$SERIAL" shell "echo __wl_alive__" 2>/dev/null | grep -q __wl_alive__; then
  echo "FAIL: $SERIAL 在列表但 shell 不可达(疑 USB daemon 崩)"
  exit 1
fi

echo "OK: $SERIAL hdc 可达 + shell 存活"

# 3) 可选:核对关键产物 hash(清单见 REPO_LOCK.toml)
if [ "${2:-}" = "--hash" ]; then
  echo "TODO: 按 REPO_LOCK.toml 的 artifacts hash 逐一核对(substrate 部署路径)"
  # 例:
  # S=/data/local/tmp/westlake-dayu600-substrate
  # got=$(hdc -t "$SERIAL" shell "md5sum $S/android/framework/framework.jar" | awk '{print $1}')
  # [ "$got" = "<expected>" ] || { echo "FAIL: framework.jar hash 不符 $got"; exit 2; }
fi
exit 0
