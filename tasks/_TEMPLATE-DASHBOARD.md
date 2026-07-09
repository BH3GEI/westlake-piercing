# D-NN · 刷新进度看板 progress.html

- **全局原子号**：-
- **墙序**：-
- **队列**：factory
- **铸卡人 / 日期**：

## 1. 墙签名 (wall signature)
`docs/dashboard/progress.html` 与 `state/LEDGER.md` / `ATOM-MAP.md` 不同步（或 thinker 刚改完 state，需要重生成视图）。

## 2. 封闭上下文 (self-contained context)
- 仓库：`/Users/yao/Desktop/code/westlake-piercing`
- 只跑刷新脚本，**不要改** `state/`、不要手改 HTML。
- 命令：
```bash
cd /Users/yao/Desktop/code/westlake-piercing
bash oracle/refresh-dashboard.sh
```
- 产出路径：`docs/dashboard/progress.html`
- 纪律见 `docs/dashboard/README.md`

## 3. Oracle 命令 (唯一成功判据)
```bash
cd /Users/yao/Desktop/code/westlake-piercing && \
bash oracle/refresh-dashboard.sh >/tmp/dash-refresh.log 2>&1 && \
grep -q '53 walls\|OK: wrote' /tmp/dash-refresh.log && \
grep -q 'WestLake 穿刺进度' docs/dashboard/progress.html && \
echo PASS || echo FAIL
```
（若墙总数变了，把 `53` 改成 LEDGER 当前行数。）

## 4. 板需求 (board)
board: none

## 5. 禁区 (forbidden)
- 不改 state/、protocol/、LEDGER、ATOM-MAP
- 不手改 progress.html（只允许脚本覆盖）
- 不 push、不 force

## 6. 证据要求 (evidence)
- PASS：RESULT 贴脚本末行 `OK: wrote ...`；**不要**把整份 HTML 塞进 evidence（视图可再生，不是项目事实）
- 失败：贴 /tmp/dash-refresh.log 关键错误行

## 7. 参照 oracle 路线 (可选)
无

---
## RESULT
verdict:
oracle:
output:
board: none
commit:
