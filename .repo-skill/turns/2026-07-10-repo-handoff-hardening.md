# 2026-07-10 · repository handoff hardening

## User request

Audit the current branch topology and merge state, compare the real repository with its tree/infra documents, update project and global agent entrypoints so a fresh agent must use repo infrastructure, persist the current bottleneck, and document GPT-5.6-Sol as a strong consultant.

## Observed before changes

- Active branch: `dayu600-hwui-gate1-2` at `3656ddd7`; no upstream.
- Fresh remote refs: active branch was 84 commits ahead of `origin/main` and 44 ahead of `origin/dayu600-hwui-gate1-2`; it was not merged to main or fully pushed.
- Four local branches and five non-symbolic remote-tracking branches. `piercinginfra-slim` and `tmp-remote-main` are independent orphan histories. `a2oh/main` had seven patch-unique commits not in the active line.
- Dirty tree contained the unverified W-001 Java/native prototype plus state/CLI documentation work.
- W-001 was in `tasks/todo` while two boards were locked to it; the card used a known-wrong run script and lagged behind FRONTIER.
- README/STATUS/LOCK/PIPELINE/HISTORY described older DAYU200 or dated DAYU600 milestones as current.
- Global Codex instructions were duplicated, exceeded the normal combined guidance budget, and contained credentials. Values are intentionally omitted here.
- Local model catalog listed `gpt-5.6-sol`; Codex Desktop bundled CLI 0.144.0-alpha.4 completed a read-only `max` hello with `MODEL_OK`.

## Changes

- Added role-aware AGENTS/CLAUDE/skill adapters and a read-only `handoff` workflow.
- Added structural checks for state budgets, task/board lock ownership, frontier card existence and Git dirty counts; the handoff flow records no run file.
- Cleared stale W-001 board locks, updated FRONTIER/QUEUE/LEDGER counts, corrected the W-001 card and added `oracle/verify/atom-43.sh`.
- Marked DAYU200 README/STATUS content as legacy; aligned REPO_SKILL/LOCK/PIPELINE/HISTORY with the live state architecture.
- Added Sol `max` consultant and `xhigh` worker guidance; kept `ultra` opt-in because it automatically delegates.
- Removed obsolete F-001 failure logs and indexed F-002/W-001 evidence status.
- Replaced always-on global agent guidance with a concise credential-free, repo-neutral contract and made `~/AGENTS.md` a compatibility pointer.
- Preserved the pre-compression global text byte-for-byte in same-directory mode-0600 backups; current entrypoints point to those backups for targeted recovery instead of silently dropping the material.
- A second Sol read-only consultation over broad W-001 context was blocked by the platform safety classifier before a final answer. No technical conclusion from that attempt was adopted; code, board logs and oracle output remain authoritative.
- Independent diff review found that the old W-001 probe labeled `android:autoLink(0x010100b0)` as windowActionBar, called the wrong nativeSetApkAssets signature, and could accept stale logs. APK/SDK/source inspection invalidated the old dual-package conclusion; the card, state and evidence now say so explicitly.
- Corrected the probe to the target APK's AppCompat attrs, made native `ck` conditional on successful four-argument AssetManager2 update, committed a repo-owned board launcher, and hardened the oracle with launcher/DEX/SO hashes, cleanup/collection checks and run rc.
- Verified that the configured build host is now `ssh compiler`; the historical `huawei` alias is absent. Updated all repo infrastructure references without editing SSH configuration.

## Verification

- `dot_runner.py handoff`: PASS after staging; FRONTIER 13/30, LEDGER 81/150, ATOM-MAP 93/120; 42 staged, 0 unstaged, 0 untracked; no task/board-lock or required-tracking error. `.repo-skill/last-run.json` hash/mtime stayed unchanged and no `__pycache__` appeared.
- Repo docs inventory: 30/30 required files present.
- Static checks: Python source compile 2/2, TOML parse 2/2, shell parse 3/3, DOT parse 2/2, `git diff --check` PASS, `git fsck --full --no-dangling --no-reflogs` PASS.
- Java probe build after oracle correction: PASS; 75 framework-shim classes and a 203,620-byte DEX.
- Native sidecar build on `ssh compiler`: PASS as ELF64/AArch64 DYN, no NEEDED entry, expected SONAME; JDK-17 headers recorded. The local artifact was copied back for hash verification.
- The corrected launcher/DEX/SO were deployed only to the owned `/data/local/tmp` prototype paths on 5583; no `/system` write or service/process restart occurred. All four remote hashes matched local artifacts.
- Wall #43 hash-locked oracle on 5583: 0 PASS / 1 FAIL, run rc 0. It still stopped at static shorty `ILL` before native entry and emitted no nativeSet/WAB marker. Evidence: `evidence/W-001/2026-07-10-hashlocked-ill-baseline.txt`; LEDGER #43 remains unverified.
- Oracle audit: Android SDK, target APK resources/JADX and runtime source all agree that the old attr/native-cookie criteria were invalid. The former dual-package explanation is now an unverified hypothesis, not a project fact.
- GPT-5.6-Sol bounded model invocation: 1/1 PASS. A broad-context consultant attempt: 0/1, blocked by the platform safety classifier before final output; no technical conclusion was adopted.
- Current global entrypoints: secret-pattern scan 3/3 with zero matches. Exact mode-0600 backups preserve the prior Claude file (1,308 bytes) and the prior Codex/home files (31,844 bytes, identical); the 31,845-byte historical full archive is also retained in all three locations for targeted recovery.
