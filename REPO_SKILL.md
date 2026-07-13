# Westlake Repo Skill

## Entry and truth domains

`AGENTS.md` is the only role router. A fresh standalone/continue session is a thinker: run `python3 -B .repo-skill/src/dot_runner.py handoff`, read bounded `state/`, then `protocol/THINKER.md` and this infra contract. A worker reads only its assigned card plus `protocol/WORKER.md`.

- Live wall progress and verification state: `state/LEDGER.md` / `state/FRONTIER.md`
- Task ownership and board locks: `tasks/` / `state/BOARDS.toml`
- Reproducible versions, hashes, setup, deploy and checks: `REPO_LOCK.toml` / `REPO_PIPELINE.dot`
- Milestone history: `REPO_HISTORY.dot` / `.repo-skill/turns/`
- Legacy DAYU200 reproduction narrative: `README.md` / `STATUS.md` / long reproduction guides

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
python3 .repo-skill/src/dot_runner.py handoff
python3 .repo-skill/src/dot_runner.py check
python3 .repo-skill/src/dot_runner.py dayu600-audit
python3 .repo-skill/src/dot_runner.py dayu600-2048
python3 .repo-skill/src/dot_runner.py cli-fleet
python3 .repo-skill/src/dot_runner.py cli-fleet-live
python3 .repo-skill/src/dot_runner.py sync
```

`cli-fleet` is the no-persistent-mutation dispatch preflight: it checks the
actual Kimi, Claude Code, Codex, and Cursor Agent binaries, versions, configured
routes, catalog snapshots, two command combinations known to be invalid, and
temporary worktree/process-group demos.
`cli-fleet-live` additionally sends real requests and uses isolated temporary
directories for the three write-capable worker smokes. Its failure means that
at least one provider is currently unavailable; it does not invalidate the
static inventory. Read `docs/reference/cli-fleet.md` before constructing a
worker command. Pin write-worker models where the CLI flag is side-effect free;
Cursor Agent's unattended hello intentionally uses the current model because
its `--model` flag mutates user configuration.
Every write-capable worker must start from a committed claim and use its own
sibling Git worktree/branch; read-only advisors may share the canonical tree.
Use `oracle/run-with-timeout.py` so a timed-out CLI loses its whole process
group rather than leaving grandchildren behind.
Run Cursor Agent through `oracle/run-cursor-agent-isolated.py`; Cursor writes
its config even for read-only asks, so omitting `--model` alone is insufficient.

For temporary launcher-style DAYU600 testing, run:

```bash
python3 .repo-skill/src/westlake_checks.py dayu600-2048-keepalive
```

This leaves the `/data/local/tmp` AppSpawnX prototype alive so later
launcher/`aa start` requests can reach `com.digiplex.game`. It is still a
temporary non-`/system` setup and does not provide visible Android UI rendering.

The `handoff` flow is strictly read-only and checks the role entries, bounded state, task/board locks, frontier card and Git worktree. STRUCTURE PASS is not a feature/oracle PASS.

The `up` and generic `check` flows are intentionally legacy DAYU200 full-reproduction gates. They check the external artifact baseline and DAYU200 connection; failure there does not invalidate a DAYU600 thinker shift.

Use `dayu600-audit` before any DAYU600 deployment. It must establish the live board architecture, HDC state, `/system/android` substrate state, and appspawn/appspawn-x availability without flashing or overwriting system files.

Use `dayu600-2048` to reproduce the dated 2026-07-02 DAYU600 APK milestone: the real
`com.digiplex.game` 2048 APK `MainActivity` and game model return RC:0 under the
standalone aarch64 ART probe, and the temporary AppSpawnX app-child route runs
the same real APK probe inside the OHOS `com.digiplex.game` child process while
AMS reaches `AbilityTransitionDone`. This is not yet visible Android UI; the next hard gap is
at that dated milestone was the aarch64 adapter path toward Android `ViewRoot` /
`Surface` rendering. Do not use this paragraph as the live frontier; read
`state/FRONTIER.md` and its referenced card.

The 2026-07-13 installed-HAP checkpoint is source-captured under
`ports/dayu600/oh-apkhost-hap/probe/`. Host build, signing and installation are
recorded, but Android rendering inside that HAP is not a promoted oracle PASS.
Use the live frontier and require a fresh launch/result pair before advancing
the first-frame claim.

Thinker read order:

1. `AGENTS.md`
2. `state/`全部（顺序见 AGENTS）
3. `protocol/THINKER.md`
4. `REPO_SKILL.md`, `REPO_LOCK.toml`, `REPO_PIPELINE.dot`
5. 当前卡明确引用的源码、oracle 和 reference

不要默认整包读 `STATUS.md`、legacy reproduction guides 或 `archive/`。

When code, artifacts, or deployment steps change, update this repo skill in the same commit.
