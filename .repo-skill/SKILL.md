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
python .repo-skill/src/dot_runner.py sync
```

Do not treat `up` as a normal app bootstrap. Westlake needs hardware and external artifacts. The runner should fail clearly when those are missing.

Do not deploy legacy DAYU200/RK3568 32-bit artifacts to DAYU600. Use `dayu600-audit` first, then rebuild or replace architecture-specific components for `arm64-v8a`.

Before changing code or handing work to another agent, read:

1. `REPO_SKILL.md`
2. `REPO_LOCK.toml`
3. `REPO_PIPELINE.dot`
4. `STATUS.md`
5. `UNIFIED-CONFIG-REPRODUCE.md`
6. `docs/REPRODUCTION-GUIDE.md`
