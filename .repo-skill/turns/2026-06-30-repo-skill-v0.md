# 2026-06-30 repo skill v0

## User Input

The user wanted `A2OH/westlake-piercing` forked to the user's own GitHub account and augmented with the collaboration/reproducibility mechanism developed in the discussion.

Key requirements:

- the repo should contain a dynamic repo skill, not just one markdown file;
- DOT should describe the runnable pipeline;
- exact software/hardware/artifact assumptions should be locked;
- each commit should record what the agent did, what the user asked, what code changed, and what verification happened;
- the skill may contain helper binaries/source for deployment, DOT parsing, and repo-specific checks;
- westlake must not be falsely presented as clone-and-run when it requires DAYU200 hardware and external artifacts.

## Agent Action

Forked `A2OH/westlake-piercing` to `BH3GEI/westlake-piercing`.

Added repo skill v0:

- `REPO_SKILL.md`
- `REPO_PIPELINE.dot`
- `REPO_LOCK.toml`
- `REPO_HISTORY.dot`
- `.repo-skill/SKILL.md`
- `.repo-skill/bin/westlake-skill`
- `.repo-skill/src/dot_runner.py`
- `.repo-skill/src/westlake_checks.py`
- this turn note

## Code Delta

No adapter/runtime behavior changed.

The change adds collaboration and reproducibility metadata plus a repo-local DOT runner that can run `up`, `check`, and `sync` flows from `REPO_PIPELINE.dot`.

## Verification

Static verification was run locally for the new runner and checks.

Full functional replay was not run in this commit because it requires:

- DAYU200/RK3568 board reachable over `hdc`;
- external binary baseline such as `$WESTLAKE_BASELINE_DIR` or `$HOME/westlake-complete`;
- OHOS/AOSP build tools matching the lock file.

## Next Agent Notes

Do not convert this repository into a fake one-command software demo. The honest contract is:

- source and patches are in git;
- large/unrebuildable binaries are outside git;
- `REPO_LOCK.toml` records exact versions and hashes;
- `REPO_PIPELINE.dot` records the replay/check flow;
- `.repo-skill/src/` contains repo-local helper logic;
- `REPO_HISTORY.dot` and `.repo-skill/turns/` must be updated before handoff commits.
