---
name: westlake-repo
description: 在 westlake-piercing 仓库工作时使用，尤其是修改代码、运行检查、更新仓库技能、提交前记录 agent 行为。
---

# Westlake Repo Skill Adapter

先读仓库根目录的 `REPO_SKILL.md`。

这是 Claude Code 的薄入口。不要在这里复制完整规则。正文以 `REPO_SKILL.md` 为准。

这个仓库的协作契约由这些文件组成：

- `REPO_PIPELINE.dot`：这个仓库怎么启动、测试、部署、验证。
- `REPO_LOCK.toml`：精确硬件、工具链、依赖版本、artifact hash。
- `REPO_HISTORY.dot`：每个 commit 里 agent 做了什么。
- `.repo-skill/turns/`：每轮用户输入、agent 动作、代码变化、验证结果。

提交前必须检查：

- 项目知识变了就更新 `REPO_SKILL.md`。
- 启动、测试、部署、验证流程变了就更新 `REPO_PIPELINE.dot`。
- 版本、hash、artifact、硬件要求变了就更新 `REPO_LOCK.toml`。
- 每次 agent-facing commit 都要更新 `REPO_HISTORY.dot` 和 `.repo-skill/turns/`。

缺 DAYU200/RK3568、`hdc`、外部 baseline artifact 时，不准声称完整复现成功。
