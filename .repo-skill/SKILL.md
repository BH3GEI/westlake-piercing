---
name: westlake-repo
description: Repository skill for BH3GEI/westlake-piercing. Use when working in the westlake-piercing repo, especially to inspect the reproduction contract, run repo-local check/up/dayu600-audit/sync workflows, update repo-skill metadata, reason about DAYU200/RK3568 baseline artifacts or DAYU600/uis7885 porting, and prepare agent-facing commits without claiming clone-and-run reproducibility.
---

# Westlake Repo Skill

Read `AGENTS.md` first to determine thinker versus worker. Thinkers then read `REPO_SKILL.md`; workers stay inside their assigned card contract.

This directory is the installable skill payload:

- `bin/` contains commands an installer can expose.
- `src/` contains the command source.
- `turns/` contains full per-change interaction notes linked from `REPO_HISTORY.dot`.

Current local entrypoint:

```powershell
python .repo-skill/src/dot_runner.py up
python .repo-skill/src/dot_runner.py handoff
python .repo-skill/src/dot_runner.py check
python .repo-skill/src/dot_runner.py dayu600-audit
python .repo-skill/src/dot_runner.py dayu600-2048
python .repo-skill/src/dot_runner.py cli-fleet
python .repo-skill/src/dot_runner.py cli-fleet-live
python .repo-skill/src/dot_runner.py sync
```

Run `cli-fleet` before constructing a local CLI worker command. It verifies the
dated binary/model inventory without calling a model and removes its temporary
worktree/watchdog fixtures. `cli-fleet-live` performs
isolated temporary worker smokes and a current-model Cursor Agent read-only
hello; it can fail when a provider is temporarily degraded.

For direct Cursor Agent questions, use `oracle/run-cursor-agent-isolated.py`;
plain `agent -p --mode ask` is logically read-only but still rewrites the user
CLI config/cache metadata.

For temporary launcher-style DAYU600 testing:

```powershell
python .repo-skill/src/westlake_checks.py dayu600-2048-keepalive
```

This leaves the `/data/local/tmp` AppSpawnX prototype alive so later
launcher/`aa start` requests can reach `com.digiplex.game`. It is still a
temporary non-`/system` setup and does not provide visible Android UI rendering.

Do not treat `up` as a normal app bootstrap. Westlake needs hardware and external artifacts. The runner should fail clearly when those are missing.

Do not deploy legacy DAYU200/RK3568 32-bit artifacts to DAYU600. Use `dayu600-audit` first, then rebuild or replace architecture-specific components for `arm64-v8a`.

Use `dayu600-2048` to replay the dated 2026-07-02 DAYU600 real-APK milestone. It runs the
stock 2048 APK through the standalone ART probe and the temporary AppSpawnX
app-child route. Treat a passing result as proof of APK/runtime/request-chain
progress, not as proof of visible Android UI rendering.

Thinker startup order:

1. `AGENTS.md`
2. `state/` in the order defined there
3. `protocol/THINKER.md`
4. `REPO_SKILL.md`, `REPO_LOCK.toml`, `REPO_PIPELINE.dot`
5. The current task card and only the reference docs it names

`STATUS.md`, `UNIFIED-CONFIG-REPRODUCE.md`, and the long reproduction guides describe the legacy DAYU200 baseline or dated milestones. Read them only for a task that needs that history.
