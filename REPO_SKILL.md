# Westlake Repo Skill

This repository is a source-available, artifact-required reproduction package for running stock Android APKs on OpenHarmony DAYU200/RK3568 through `appspawn-x`.

The repo skill is the contract for the next agent:

- `REPO_PIPELINE.dot` says how to inspect, replay, deploy, and verify the project.
- `REPO_LOCK.toml` records the exact hardware, runtime, apps, and artifact hashes the project depends on.
- `REPO_HISTORY.dot` records what each agent-facing commit did.
- `.repo-skill/turns/` stores the full user input summary, code delta, and verification notes for each recorded change.
- `.repo-skill/bin/` and `.repo-skill/src/` contain the local helper tools that an installed skill can expose.

Agent adapters:

- Codex enters through `AGENTS.md`.
- Claude Code enters through `.claude/skills/westlake-repo/SKILL.md`.
- Both adapters point back to this file as the single source of repo-skill truth.

Local runner:

```bash
python3 .repo-skill/src/dot_runner.py up
python3 .repo-skill/src/dot_runner.py check
python3 .repo-skill/src/dot_runner.py sync
```

The `up` flow is intentionally honest. It checks the host, the external artifact baseline, and the DAYU200/hdc connection before pointing to the app replay docs. If any required part is missing, it fails instead of pretending the repo can fully run from source alone.

Primary read order:

1. `REPO_SKILL.md`
2. `REPO_LOCK.toml`
3. `REPO_PIPELINE.dot`
4. `STATUS.md`
5. `UNIFIED-CONFIG-REPRODUCE.md`
6. `docs/REPRODUCTION-GUIDE.md`

When code, artifacts, or deployment steps change, update this repo skill in the same commit.
