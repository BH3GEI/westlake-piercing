# 2026-07-01 DAYU600 port target

## User Input

The user clarified that westlake-piercing must be reproduced on the current DAYU600 / uis7885 board. The DAYU200/RK3568 baseline is only the original reference and is not enough.

## Agent Action

Reframed the repository skill and lock files around a DAYU600 port track:

- Kept DAYU200/RK3568 as the legacy reference baseline.
- Marked DAYU600 / uis7885 / aarch64 / arm64-v8a as the active target.
- Added `docs/DAYU600-PORT.md`.
- Added a repo-local `dayu600-audit` DOT flow.
- Added non-mutating HDC checks for live DAYU600 architecture, OS, appspawn, appspawn-x, and `/system/android` substrate state.

## Code Delta

No Westlake runtime, adapter, patch, artifact, or deployment behavior changed.

Changed only repo-skill metadata, documentation, and non-mutating audit helpers:

- `REPO_SKILL.md`
- `AGENTS.md`
- `REPO_LOCK.toml`
- `REPO_PIPELINE.dot`
- `.repo-skill/SKILL.md`
- `.repo-skill/src/dot_runner.py`
- `.repo-skill/src/westlake_checks.py`
- `docs/DAYU600-PORT.md`

## Verification

Ran:

```powershell
$env:HDC='C:\Users\ufop\dayu600_search\HarmonyDevTools_v1.0.4\toolchains\hdc.exe'
python .repo-skill\src\dot_runner.py dayu600-audit
```

Observed:

```text
hardware = uis7885
abi = arm64-v8a
ohos = OpenHarmony-6.1.0.31
kernel = Linux localhost 5.15.180 ... aarch64
/system/bin/appspawn = 64-bit arm64 musl
/system/bin/appspawn-x = absent
/system/android = absent
```

## Next Agent Notes

Do not deploy DAYU200/RK3568 32-bit artifacts to DAYU600.

The first real porting milestone is to build or source a minimal aarch64 `appspawn-x` substrate and validate it without overwriting stock `/system/bin/appspawn`.
