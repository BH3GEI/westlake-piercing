# Westlake Repo Skill

Read `REPO_SKILL.md` first. It is the human-facing entry for this repo skill.

This directory is the installable skill payload:

- `bin/` contains commands an installer can expose.
- `src/` contains the command source.
- `turns/` contains full per-change interaction notes linked from `REPO_HISTORY.dot`.

Current local entrypoint:

```bash
python3 .repo-skill/src/dot_runner.py up
python3 .repo-skill/src/dot_runner.py check
python3 .repo-skill/src/dot_runner.py sync
```

Do not treat `up` as a normal app bootstrap. Westlake needs hardware and external artifacts. The runner should fail clearly when those are missing.
