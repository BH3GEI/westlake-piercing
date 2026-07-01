# 2026-06-30 Claude Code adapter

## User Input

The user confirmed Codex can enter the repository through `AGENTS.md`, and also wanted a Claude Code adapter layer in the fork.

Requirements:

- Claude Code should be able to discover the repo skill.
- The adapter should only be an entry point, not a duplicate copy of the full rules.
- `REPO_SKILL.md` remains the source of truth.

## Agent Action

Added `.claude/skills/westlake-repo/SKILL.md`.

Updated `REPO_SKILL.md` to say Codex and Claude Code both point back to the same primary entry.

Updated `REPO_HISTORY.dot` with this agent-facing change.

## Code Delta

No Westlake runtime, adapter, patch, or deployment behavior changed.

This change only added Claude Code skill discovery metadata.

## Verification

Static file checks were performed.

Full reproduction still requires DAYU200/RK3568, `hdc`, and the external baseline artifacts.

## Next Agent Notes

Do not turn `.claude/skills/westlake-repo/SKILL.md` into a second source of truth.

It only tells Claude Code to read `REPO_SKILL.md` first.
