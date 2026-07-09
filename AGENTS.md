# AGENTS — 唯一入口

> 2026-07-09 起，本仓库从「白板 + 长驻 agent」改为「无状态 thinker(班次制) + 一次性 worker + 四板 lane」。
> 任何 session 上岗，**第一步永远是读 `state/`**，不要从 git log 或聊天记忆推断现状。

## 我是谁？按角色翻到对应手册

- **thinker(脑子 · Cursor 强模型)** → 读 `protocol/THINKER.md`。上岗先读 `state/` 全部五件(≤5k token)。
- **worker(手 · kimi/codex/claude 一次性)** → 只读派给你的那张卡 + `protocol/WORKER.md`。别读 state/、别读别的卡、别读 archive/。
- **派活** → `protocol/DISPATCH.md`。

## 状态在哪(事实源)

```
state/       ← 事实层,小而有界,一口读完
  FRONTIER.md   此刻在打哪道墙
  LEDGER.md     53 墙全貌 + 复核状态(≤150 行)
  QUEUE.md      两条队列(穿刺/工厂)
  BOARDS.toml   四板 lane + 锁 + 恢复
  DECISIONS.md  为什么是现在这样(别推翻已定的)
tasks/       ← 工作流,目录即状态机 todo→doing→done/blocked
protocol/    ← 角色手册(本文件指向的三份)
oracle/      ← "完成"的唯一定义(脚本说了算)
evidence/    ← 证据指针
ammo/        ← 可复用成品 + 参照 oracle 路线
docs/reference/ ← 架构/规格/方法论原件(坐标系、桥接总量、Unity oracle);按需定点取,勿整包读
archive/     ← 史料,默认不读(白板时代 COORD/CHAT 等)
```

## 五条合同(整套机制靠这个撑)

1. **读取**：thinker 读 state/ 全部;worker 只读自己的卡;谁都不默认读 archive/。
2. **写入**：worker 只写自己的卡 + evidence/<卡> + 自己的 git 分支;state/ 只有 thinker 验收班次能动。
3. **完成**：LEDGER 状态跃迁只认 `oracle/` 脚本 PASS。worker 自述不算数。
4. **落盘即 commit**：每班次结束一次 commit。**禁止空转 commit**(如 "polling: no new content")。
5. **防膨胀**：state/ 各文件有行数预算,超限唯一出路是压缩进 archive/。绝不再长出 3000 行白板。

## 原有工程纪律(保留)

交接前(班次结束)照跑 `REPO_SKILL.md` 的 check flow,或说明为何跑不了：
- 运行/环境/产物/设备假设变了 → 更新 `REPO_LOCK.toml`；
- setup/build/deploy/verify 步骤变了 → 更新 `REPO_PIPELINE.dot`；
- 用户请求 + agent 动作 + 代码 delta + 验证结果 → 记 `.repo-skill/turns/`。

不要声称本仓库 clone-and-run：需 DAYU600/uis7885 板 + 重建/替换全部 arm 运行时产物。
大型生成二进制不进 git(.gitignore 排除)：来源和 hash 记 `REPO_LOCK.toml` + `ARTIFACT-INVENTORY.txt`。

## 遗留(短期过渡)

- 旧路径 `/Users/yao/westlake-piercing` 是指向本目录的软链,过渡期兼容。
- 旧 agent cron 已停用(备份 `~/crontab-backup-2026-07-09.txt`)。
- 若仍有旧 claude 会话在终端存活,应关闭——它们会产生空转 commit。
