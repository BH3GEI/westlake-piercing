---
name: westlake-repo
description: Repository skill for BH3GEI/westlake-piercing. Use when working in the westlake-piercing repo, especially to inspect the reproduction contract, run the repo-local check/up/sync workflows, update repo-skill metadata, reason about DAYU200/RK3568 OpenHarmony appspawn-x artifacts, or prepare agent-facing commits without claiming clone-and-run reproducibility.
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
python .repo-skill/src/dot_runner.py sync
```

Do not treat `up` as a normal app bootstrap. Westlake needs hardware and external artifacts. The runner should fail clearly when those are missing.

Before changing code or handing work to another agent, read:

1. `REPO_SKILL.md`
2. `REPO_LOCK.toml`
3. `REPO_PIPELINE.dot`
4. `STATUS.md`
5. `UNIFIED-CONFIG-REPRODUCE.md`
6. `docs/REPRODUCTION-GUIDE.md`
