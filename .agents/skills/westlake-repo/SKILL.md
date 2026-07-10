---
name: westlake-repo
description: Use when working in the westlake-piercing repository, especially for code changes, repo-local checks, repo-skill updates, and pre-commit agent behavior records.
---

# Westlake Repo Skill Adapter

Read `AGENTS.md` at the repository root first. It is the role router: a thinker reads bounded live state and repo infra; a one-shot worker reads only its assigned card plus `protocol/WORKER.md`.

This is the Codex discovery adapter. Do not duplicate the full rules here. `AGENTS.md` owns collaboration and live-state routing; `REPO_SKILL.md` owns reproduction and verification infrastructure.

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

For the active DAYU600 line, live progress and board locks come from `state/`; run the card oracle on the required DAYU600 board before claiming progress. DAYU200 artifacts are a legacy reference and are not deployable to DAYU600.
