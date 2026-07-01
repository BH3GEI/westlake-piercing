# 2026-07-01 repo skill cleanup

## User Input

The user asked Codex to inspect `BH3GEI/westlake-piercing`, especially the repository's built-in skill.

## Agent Action

Reviewed the repository skill entry points:

- `.repo-skill/SKILL.md`
- `.claude/skills/westlake-repo/SKILL.md`
- `REPO_SKILL.md`
- `AGENTS.md`
- `.repo-skill/src/`
- `REPO_HISTORY.dot`

Then cleaned up the skill metadata so the repo skill can be discovered and read reliably by future agents.

## Code Delta

- Added Codex-style YAML frontmatter to `.repo-skill/SKILL.md`.
- Rewrote the Claude Code adapter in ASCII English to remove mojibake.
- Rewrote the previous Claude adapter turn note in ASCII English.
- Updated `REPO_HISTORY.dot` so the Claude adapter node points at its real commit.
- Made `.repo-skill/src/dot_runner.py` report missing commands and Windows 9009 command failures clearly.
- Added this turn note.

No Westlake runtime, adapter, patch, artifact, or deployment behavior changed.

## Verification

Static checks were run:

- searched skill files for leftover mojibake markers and TODO text;
- ran the repo-local `check` flow far enough to confirm it fails honestly on this Windows host before hardware/artifact checks.

Full reproduction was not run because it requires DAYU200/RK3568, `hdc`, and external baseline artifacts.
