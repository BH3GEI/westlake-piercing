# Westlake Repo Skill

This repository is a source-available, artifact-required reproduction package for running stock Android APKs on OpenHarmony through `appspawn-x`.

The original baseline is DAYU200/RK3568/32-bit ARM. The active porting target is now HH-SCDAYU600 / DAYU600 on Unisoc/Spreadtrum uis7885, aarch64 / arm64-v8a, OpenHarmony 6.1.0.31. Treat DAYU200 artifacts as the reference implementation, not as directly deployable binaries for DAYU600.

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
python3 .repo-skill/src/dot_runner.py dayu600-audit
python3 .repo-skill/src/dot_runner.py dayu600-2048
python3 .repo-skill/src/dot_runner.py sync
```

For temporary launcher-style DAYU600 testing, run:

```bash
python3 .repo-skill/src/westlake_checks.py dayu600-2048-keepalive
```

This leaves the `/data/local/tmp` AppSpawnX prototype alive so later
launcher/`aa start` requests can reach `com.digiplex.game`. It is still a
temporary non-`/system` setup and does not provide visible Android UI rendering.

The `up` flow is intentionally honest. It checks the host, the external artifact baseline, and the legacy DAYU200/hdc connection before pointing to the app replay docs. If any required part is missing, it fails instead of pretending the repo can fully run from source alone.

Use `dayu600-audit` before any DAYU600 deployment. It must establish the live board architecture, HDC state, `/system/android` substrate state, and appspawn/appspawn-x availability without flashing or overwriting system files.

Use `dayu600-2048` to reproduce the current DAYU600 APK milestone: the real
`com.digiplex.game` 2048 APK `MainActivity` and game model return RC:0 under the
standalone aarch64 ART probe, and the temporary AppSpawnX app-child route runs
the same real APK probe inside the OHOS `com.digiplex.game` child process while
AMS reaches `AbilityTransitionDone`. This is not yet visible Android UI; the next hard gap is
the aarch64 adapter path that runs Android runtime/framework code inside the
OHOS app child and attaches Android `ViewRoot` / `Surface` rendering.

Primary read order:

1. `REPO_SKILL.md`
2. `REPO_LOCK.toml`
3. `REPO_PIPELINE.dot`
4. `STATUS.md`
5. `UNIFIED-CONFIG-REPRODUCE.md`
6. `docs/REPRODUCTION-GUIDE.md`
7. `docs/DAYU600-PORT.md`
8. `docs/DAYU600-APK-2048-2026-07-02.md`

When code, artifacts, or deployment steps change, update this repo skill in the same commit.
