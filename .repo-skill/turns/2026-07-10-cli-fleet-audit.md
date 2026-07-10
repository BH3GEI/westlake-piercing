# 2026-07-10 CLI worker fleet audit

## User request

Before resuming project functionality, confirm the real local `kimi`, `claude`,
`codex`, and `agent` command routes, identify their configured/listed/served
models, execute the worker command forms, and persist a reproducible infra
record. Do not repeat the earlier mistake of treating documented commands as
tested facts.

## Scope and safety

- No project runtime code, live frontier/ledger status, task instance, board
  lock, device, remote service, deployment, merge, push, or feature oracle was
  changed. `state/DECISIONS.md` gained infra-only supersession/worktree rules;
  the task template and role contracts were updated.
- All model-write tests ran in temporary isolated directories. Cursor Agent ran
  in read-only `ask` mode.
- Manual Cursor `--model` calls changed the user config. The first
  `post-smoke` backup captured that Sol-selected state, not the true pre-audit
  bytes. Independent review then found the restored Opus IDs still paired with
  stale Sol display labels. Before correcting them, the inconsistent file was
  backed up as `~/.cursor/cli-config.json.pre-repair-inconsistent-20260710.bak`
  (0600). The known pre-audit IDs remain `claude-opus-4-8`; display labels were
  repaired to the matching catalog name `Opus 4.8 1M`. That consistent result
  is also backed up as
  `~/.cursor/cli-config.json.repaired-20260710.bak` (0600).
  A later unisolated current-model hello proved that omitting `--model` alone
  still changes `privacyCache.updatedAt` and mode; the exact repaired backup was
  restored again. The final `run-cursor-agent-isolated.py` uses a temporary HOME
  with Keychain authentication and cleans the Agent process group on normal or
  timed exit.
- `/Users/yao/Desktop/agent-infra/infra-workers.md` was backed up in the same
  directory before editing as
  `infra-workers.md.pre-20260710-cli-audit.bak`; its pre-edit SHA-256 is
  `67f1be1f7a091198fa0dc02b9100537d3ecd226e006a663168343c457fe6d5c7`.
- The unrelated untracked `local-build-adapters/` directory appeared during the
  audit. It was not created, read, edited, staged, or deleted by this work.

## Resolved commands and model facts

### Kimi

- Binary/version: `~/.kimi-code/bin/kimi`, 0.23.3.
- Default usable route: managed `kimi-code/kimi-for-coding`; catalog display
  `K2.7 Code`, context 262144.
- The separate self-configured `kimi-for-coding` alias returned 401.
- `kimi -p ... -y` is invalid in this version and exits 1 because prompt and
  yolo cannot be combined.
- Explicit managed-alias MODEL_OK and isolated file-write worker both passed.
- Prompt mode can invoke shell but offers no sandbox/tool allowlist. Dispatch is
  therefore limited to non-secret mechanical cards with no SSH/hdc, remote
  service, device, credential, or private-HOME scope.

### Claude Code

- `claude` is a zsh function wrapping Claude Code 2.1.204 and adds danger,
  bypass-permission, and max-effort flags. `command claude` bypasses it.
- Authentication reports `claude.ai`, first-party, Max. Config requests
  `claude-fable-5[1m]`; configured text is not served-backend proof.
- Live observations reported `claude-fable-5`, `claude-opus-4-8`, and
  `claude-sonnet-5` across explicit aliases.
- `claude --bg ... -p ...` is invalid; background prompt must be positional.
- Foreground and background file-write workers passed earlier with Claude's
  default broad tool availability. Review established that `--allowedTools`
  alone did not hide Bash/MCP. The final command also sets
  `--tools=Read,Write,Edit`, disables setting sources, and supplies a strict
  empty MCP config. That isolated worker wrote the expected file, reported
  `NO_BASH`, left the forbidden Bash file absent, and passed. Intermediate calls
  did return `API Error: Failed to parse JSON`, so dispatch retains a hello gate.
  The restricted background form also reached `done`, but `claude stop` left a
  transient daemon in one run. The live oracle now cleans only daemons whose
  command embeds its exact temporary cwd; production dispatch remains
  foreground-only.

### Codex

- PATH binary/version: `/opt/homebrew/bin/codex`, 0.143.0.
- Pinned dispatch binary/version:
  `/Applications/ChatGPT.app/Contents/Resources/codex`, 0.144.0-alpha.4.
- Bare PATH invocation uses global `gpt-5.6-sol + ultra +
  danger-full-access`; it returned MODEL_OK but emitted stale/unknown model
  metadata warnings and consumed roughly 4.8 times the tokens of the pinned
  Desktop run. It is not a dispatch command.
- Desktop Sol `max` advisor, Sol `xhigh` probe, and isolated Sol `xhigh`
  file-write worker passed.
- Local list catalog contains GPT-5.5, GPT-5.6-Sol/Terra/Luna, GPT-5.4,
  GPT-5.4-Mini, and GPT-5.3-Codex-Spark. Listed-only entries are not claimed as
  live-tested.

### Cursor Agent

- `agent` and `cursor-agent` resolve to the same Cursor Agent
  2026.07.08-0c04a8a binary.
- `agent --list-models` returned 189 normalized entries: 102 GPT, 72 Claude,
  6 Grok, 2 Composer, 3 Gemini, 1 Kimi, 2 GLM, and `auto`.
- Snapshot SHA-256:
  `87b5e657cb9672b5e19a9cec59c18ffd6f622959ed15f02b16e8d66bcdf88bed`.
- `claude-fable-5-thinking-high`, `claude-opus-4-8-medium`, and
  `gpt-5.6-sol-max` returned MODEL_OK in read-only `ask` mode.
- `-p` means headless, not read-only; `--mode ask` or `plan` establishes the
  read-only behavior. Explicit `--model` mutates Cursor's current-model config;
  unattended probes now omit it rather than attempting after-the-fact restore.

## Persisted changes

- Added `oracle/verify/cli-fleet.py` and the `cli-fleet` / `cli-fleet-live`
  runner flows. The static oracle also pins the five resolved executable hashes
  recorded in `REPO_LOCK.toml`.
- Added `oracle/run-with-timeout.py`; it starts a new process group, applies
  TERM then KILL to the group, and preserves the child's exit status.
- Added `oracle/run-cursor-agent-isolated.py`. The first version isolated config
  but exposed a lingering TypeScript language-server child; the final wrapper
  cleans the Agent process group even after a normal parent exit and verifies
  the real config bytes/mode before returning.
- Made per-card sibling worktrees mandatory for writers. A temporary two-card
  demo first exposed Git directory-rename conflicts when workers moved their
  own cards to `done/`; the contract now leaves that state transition to the
  canonical thinker. The corrected independent branches run concurrently and
  merge without crossing files. `tasks/_TEMPLATE.md`,
  `protocol/WORKER.md`, `protocol/DISPATCH.md`, `AGENTS.md`, and
  `state/DECISIONS.md` carry the contract.
- Added the normalized Cursor catalog snapshot.
- Replaced stale commands and route claims in `docs/reference/cli-fleet.md`,
  `protocol/DISPATCH.md`, `protocol/THINKER.md`, `AGENTS.md`, `REPO_SKILL.md`,
  `REPO_LOCK.toml`, `REPO_PIPELINE.dot`, `REPO_HISTORY.dot`, and the reference
  index.
- Updated the global on-demand worker guide only after making the exact backup
  above. Global entrypoint files continue to route agents into the bounded
  `agent-infra` documents; no credential-bearing shell file was rewritten.

## Verification record

- `python3 -B oracle/verify/cli-fleet.py`: 34 PASS, 0 FAIL. This includes a
  23-command two-worktree create/commit/merge/accept/remove demo and a watchdog test in
  which parent and child ignored TERM; KILL removed both (`alive=0`).
- Final `python3 -B oracle/verify/cli-fleet.py --live`: 39 PASS, 0 FAIL.
  Kimi managed worker PASS; Claude restricted foreground worker PASS with no
  Bash; Claude restricted background worker reached `done` and wrote `BG_OK`;
  Codex Desktop Sol xhigh worker PASS; Cursor Agent current-model ask PASS.
- Post-live process scan found no Claude/Cursor temporary process. The real
  Cursor config remained byte-identical to the repaired 0600 backup.
- Post-review SIGTERM injection into the Cursor isolation wrapper returned 143,
  left no temporary-HOME process, and kept the real config byte/mode exact; its
  outer audit budgets now exceed inner timeout + grace + cleanup.
- Earlier independent/manual live tests: Kimi managed MODEL_OK and worker PASS;
  Claude foreground/background worker PASS before degradation; Codex Desktop
  Sol `xhigh`/`max` and worker PASS; Cursor fable/opus/Sol max ask PASS.

Static inventory PASS and provider availability are deliberately separate.
This audit proves the command/model map and repeatable test mechanism; it does
not claim that every listed model was called or that Claude is currently
healthy.
