---
name: westlake-repo
description: Use when working in the westlake-piercing repository, especially for code changes, repo-local checks, repo-skill updates, and pre-commit agent behavior records.
---

# Westlake Repo Skill Adapter

Read `REPO_SKILL.md` at the repository root first.

This is the Claude Code discovery adapter. Do not duplicate the full rules here; `REPO_SKILL.md` is the source of truth.

The repository collaboration contract is carried by:

- `REPO_PIPELINE.dot`: startup, checks, deployment, and verification flow.
- `REPO_LOCK.toml`: exact hardware, toolchain, dependency versions, and artifact hashes.
- `REPO_HISTORY.dot`: what each agent-facing commit did.
- `.repo-skill/turns/`: user input, agent actions, code changes, and verification results for each recorded turn.

Before committing:

- Update `REPO_SKILL.md` when project knowledge changes.
- Update `REPO_PIPELINE.dot` when startup, check, deploy, or verification flow changes.
- Update `REPO_LOCK.toml` when versions, hashes, artifacts, or hardware requirements change.
- Update `REPO_HISTORY.dot` and `.repo-skill/turns/` for every agent-facing commit.

Without DAYU200/RK3568, `hdc`, and the external baseline artifacts, do not claim full reproduction success.
