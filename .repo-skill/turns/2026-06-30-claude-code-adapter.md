# 2026-06-30 Claude Code adapter

## 用户输入

用户确认 Codex 可以通过 `AGENTS.md` 进入仓库技能，又要求在 fork 里补上 Claude Code 的适配层。

要求很明确：

- Claude Code 要能发现这个仓库的 repo skill；
- 适配层只做入口，不复制完整规则；
- 主体仍然是 `REPO_SKILL.md`。

## Agent 做了什么

新增 `.claude/skills/westlake-repo/SKILL.md`。

更新 `REPO_SKILL.md`，说明 Codex 和 Claude Code 两个入口都指向同一份主入口。

更新 `REPO_HISTORY.dot`，追加这次 agent-facing change。

## 代码变化

没有修改 Westlake runtime、adapter、patch 或部署逻辑。

本次只增加 Claude Code skill discovery metadata。

## 验证结果

已做静态文件检查。

完整复现仍然需要 DAYU200/RK3568、`hdc` 和外部 baseline artifact。

## 留给下一个 agent

不要把 `.claude/skills/westlake-repo/SKILL.md` 写成第二份正文。

它只负责让 Claude Code 进入仓库后知道先读 `REPO_SKILL.md`。
