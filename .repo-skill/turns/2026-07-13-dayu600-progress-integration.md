# 2026-07-13 DAYU600 progress integration

## User request

Merge every valuable recent branch and Claude-session result into local `main`,
then report after completion. No push was requested.

## Starting state

- `main` at `df6feb32`, equal to `origin/main`.
- canonical checkout had one unrelated tracked modification and ten untracked
  files; all were preserved.
- `dayu600-hwui-gate1-2` was a strict 17-commit descendant of main.
- W-003-clean contained additional dirty #51/#53 experiments.

## Integration

1. Fast-forwarded local main to `66a30dfa` (17 commits, 78 paths, no conflict).
2. Accepted the verified `nDrawPath(VJJJ)` interpreter arm from the dirty
   W-003 worktree because its evidence records three board reproductions.
3. Rejected the remaining dirty View/Typeface/LayoutInflater/#51/#53 edits as
   unverified experiments.
4. Captured the reviewable installed-HAP probe/NAPI/ArkTS source under
   `ports/dayu600/oh-apkhost-hap/probe/`; kept all large HAP/runtime inputs out
   of Git and locked their hashes in `REPO_LOCK.toml` and the inventory.
5. Fixed `triangle-smoke-5ce.sh` so it clears stale result files and executes a
   fresh device run before evaluating PASS.
6. Reconciled W-003 to done, released 5583, and moved the frontier to the
   installed-HAP extension without advancing LEDGER #53.

## Evidence boundary

- Host clean HAP build and codesign verification: PASS.
- Inherited 5ce session: install PASS.
- Android render inside the installed HAP: not promoted; no fresh launch/frame
  oracle yet, and current glue still uses the renderer RSSurfaceNode path.

## Verification

- shell syntax checks for the triangle oracle/device runner and HAP scripts.
- captured artboot source content-equal to the external checkpoint after
  trailing blank-line normalization.
- `git diff --check`.
- repo handoff structure check.
- final staged diff and status inspected before commit.
