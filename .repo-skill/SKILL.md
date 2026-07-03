---
name: westlake-repo
description: Repository skill for BH3GEI/westlake-piercing. Use when working in the westlake-piercing repo, especially to inspect the reproduction contract, run repo-local check/up/dayu600-audit/sync workflows, update repo-skill metadata, reason about DAYU200/RK3568 baseline artifacts or DAYU600/uis7885 porting, and prepare agent-facing commits without claiming clone-and-run reproducibility.
---

# Westlake Repo Skill

Read `REPO_SKILL.md` first. It is the human-facing entry for this repo skill.

This directory is the installable skill payload:

- `bin/` contains commands an installer can expose.
- `src/` contains the command source.
- `turns/` contains full per-change interaction notes linked from `REPO_HISTORY.dot`.

Current local entrypoint:

```powershell
python .repo-skill/src/dot_runner.py up
python .repo-skill/src/dot_runner.py check
python .repo-skill/src/dot_runner.py dayu600-audit
python .repo-skill/src/dot_runner.py dayu600-2048
python .repo-skill/src/dot_runner.py sync
```

For temporary launcher-style DAYU600 testing:

```powershell
python .repo-skill/src/westlake_checks.py dayu600-2048-keepalive
```

This leaves the `/data/local/tmp` AppSpawnX prototype alive so later
launcher/`aa start` requests can reach `com.digiplex.game`. It is still a
temporary non-`/system` setup and does not provide visible Android UI rendering.

Do not treat `up` as a normal app bootstrap. Westlake needs hardware and external artifacts. The runner should fail clearly when those are missing.

Do not deploy legacy DAYU200/RK3568 32-bit artifacts to DAYU600. Use `dayu600-audit` first, then rebuild or replace architecture-specific components for `arm64-v8a`.

Use `dayu600-2048` to replay the current DAYU600 real-APK milestone. It runs the
stock 2048 APK through the standalone ART probe and the temporary AppSpawnX
app-child route. Treat a passing result as proof of APK/runtime/request-chain
progress, not as proof of visible Android UI rendering.

Before changing code or handing work to another agent, read:

1. `REPO_SKILL.md`
2. `REPO_LOCK.toml`
3. `REPO_PIPELINE.dot`
4. `STATUS.md`
5. `UNIFIED-CONFIG-REPRODUCE.md`
6. `docs/REPRODUCTION-GUIDE.md`
7. `docs/DAYU600-PORT.md`
8. `docs/DAYU600-APK-2048-2026-07-02.md`
