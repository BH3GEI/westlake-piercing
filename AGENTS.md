# Agent Rules

Start with `REPO_SKILL.md`.

Before handing work to another person or agent:

- run the repo skill `check` flow, or explain exactly why it cannot run;
- update `REPO_LOCK.toml` when runtime versions, artifacts, device assumptions, or hashes change;
- update `REPO_PIPELINE.dot` when setup, build, deploy, or verification steps change;
- update `REPO_HISTORY.dot` and `.repo-skill/turns/` with the user request, agent action, code delta, and verification result.

Do not claim this repository is clone-and-run. The legacy replay requires a DAYU200/RK3568 board plus external binary baseline or rebuilt artifacts. The active port target is DAYU600/uis7885/aarch64, which requires rebuilding or replacing every 32-bit ARM runtime artifact before deployment.

For DAYU600 work, run or update the `dayu600-audit` flow first. Do not deploy DAYU200/RK3568 binaries to DAYU600.

Never commit large generated binaries that are intentionally excluded by `.gitignore`; record their provenance and hashes in `REPO_LOCK.toml` and `ARTIFACT-INVENTORY.txt`.
