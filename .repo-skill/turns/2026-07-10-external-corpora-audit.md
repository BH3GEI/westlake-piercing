# 2026-07-10 · external WestLake corpora audit

## User request

After completing the current repository handoff, review the large private repositories `a2hlab/01.Project` and `a2hlab/02.APP`, preserve useful information without another destructive compression, and explain what remains.

## Observed before changes

- The current repository was clean at `dayu600-hwui-gate1-2@a5e2d9b8`.
- `01.Project` was clean at `main@d98d128e`, with 54,377 tracked files, 417,977,595 blob bytes and two commits. Its useful content is mostly one bulk snapshot of requirements, Factory, delivery evidence, caches and historical working areas.
- `02.APP` was clean at `main@8f6b77d`, with 4,448 tracked files, 149,862,373 blob bytes and six commits. It contains three divergent adapter trees plus Unity/Cardwords tasks, artifacts and historical evidence.
- None of the three repositories shares a commit with another. The current repository already contains exact offline copies of one `01.Project` HTML and two `02.APP` HTML files.
- The local `westlake-atom-function-list-latest.html` was older than the fixed `01.Project` snapshot: 0 versus 11 `TECHNICAL_ATOM` entries.
- `02.APP` STATE/board still described scaffold-only/all-pending despite later adapter imports and host analysis. Cardwords still had no device-verified first frame.
- The Cardwords runtime implements the AOSP 14 three-argument `nativeSetApkAssets`; current W-001 uses the AOSP 15 four-argument ABI. It is not a compatible runtime source.

## Changes

- Added `docs/reference/external-corpora.md` with fixed repository commits, high-value entry paths, provenance, state drift, security boundaries and explicit no-merge/no-bulk-copy rules.
- Refreshed only `docs/reference/westlake-atom-function-list-latest.html` from the pinned `01.Project` blob and corrected INDEX counts to 11 technical atoms, 5 flow anchors, 151 drafts, 5 review and 0 validated.
- Recorded the external snapshots and atom-list hash in `REPO_LOCK.toml`.
- Added this milestone to `REPO_HISTORY.dot` and left `state/`, task cards, boards, runtime code and oracle results untouched.

## Verification

- Both external review clones stayed clean at their pinned HEADs; no external file was edited and no push was attempted.
- Pairwise commit intersection was zero. Exact non-empty blob overlap with the current repository was one file from `01.Project` and two files from `02.APP` before the atom-list refresh.
- Common provider-specific token/private-key-header patterns had no direct matches; 10 MCP configs did match Bearer-like literals and broader credential-assignment patterns matched many vendor/config/doc files. External MCP/config material remains excluded and no value was printed.
- The refreshed atom-list source is `01.Project@d98d128e:15.WestLake/03new_Requirement/02.AtomFunctionGit/reports/atom_function_list_latest.html`, blob `165a83a6719b75e766aea1de5bb2f71a9df311a4`, SHA-256 `d25f730c87877e2b508a5e19b5da03ec24eb85cac9812627a41416f0411934d7`. Import removed trailing whitespace only; the resulting local blob is `b99432f1616c11df487c144314076ff8e0a3ed19`, SHA-256 `0b52b592cae689198694cc58fb89b45c6eb273eeb1d7aaf4c8473249b79519d6`.
- Repo docs check passed 30/30; TOML 2/2, DOT, whitespace-only source comparison, atom counts, `git diff --check` and read-only handoff all passed.
- The legacy full `check` flow and device oracle were not rerun for a reference-only documentation refresh: that flow targets DAYU200/artifact availability, while this delta changes no runtime, state, deployment path or W-001 artifact.
- This change makes no feature-pass claim; W-001 remains blocked at the static JNI `ILL` shorty and LEDGER wall #43 remains unverified.
