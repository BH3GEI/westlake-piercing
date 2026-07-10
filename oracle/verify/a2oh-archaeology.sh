#!/bin/bash
# oracle/verify/a2oh-archaeology.sh — A-01 考古卡 host oracle(device-free · 无板)
#
# 判据:a2oh 那 7 个分叉 commits 的 blob 清单,被 evidence/A-01/commit-inventory.txt 忠实记录。
# PASS = ① fork tip 完好(a2oh/main==预期)② 恰好 7 commits 且分叉点对 ③ 清单里每个 blob-sha
#        都能在对象库按 sha 取到(即清单没编造、指向真实 fork 对象)。
# 这是"我们有没有忠实记下该复现什么"的 oracle,不是设备端复现 oracle(见卡 §3 备注)。
set -uo pipefail
cd "$(git rev-parse --show-toplevel 2>/dev/null)" || { echo FAIL; exit 1; }

INV="evidence/A-01/commit-inventory.txt"
EXPECT_TIP="36126fa9146489f527f719005af2a5b77d4a52f6"
EXPECT_BASE="b9ede74ac6a19e9e05e09800a4c8757b60ea48d5"

fail=0

tip="$(git rev-parse a2oh/main 2>/dev/null || echo MISSING)"
[ "$tip" = "$EXPECT_TIP" ] || { echo "MISMATCH tip: $tip != $EXPECT_TIP"; fail=1; }

n="$(git rev-list --count origin/main..a2oh/main 2>/dev/null || echo -1)"
[ "$n" = "7" ] || { echo "MISMATCH commit count: $n != 7"; fail=1; }

base="$(git merge-base origin/main a2oh/main 2>/dev/null || echo MISSING)"
[ "$base" = "$EXPECT_BASE" ] || { echo "MISMATCH merge-base: $base != $EXPECT_BASE"; fail=1; }

[ -f "$INV" ] || { echo "MISSING $INV"; echo FAIL; exit 1; }

blobs=0 missing=0
while read -r sha path _; do
  case "$sha" in [0-9a-f][0-9a-f]*) : ;; *) continue ;; esac
  [ ${#sha} -eq 40 ] || continue
  [ -n "$path" ] || continue
  blobs=$((blobs+1))
  git cat-file -e "$sha" 2>/dev/null || { echo "MISSING blob $sha ($path)"; missing=$((missing+1)); fail=1; }
done < "$INV"
echo "checked blobs=$blobs missing=$missing"

if [ "$fail" = 0 ]; then echo PASS; else echo FAIL; fi
