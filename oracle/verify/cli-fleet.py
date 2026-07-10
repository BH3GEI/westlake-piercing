#!/usr/bin/env python3
"""Verify the local CLI-agent fleet without printing credentials.

Static mode makes no model call and leaves no persistent mutation; its Git
worktree and process-group smokes live in temporary directories. ``--live``
adds one isolated temporary-directory worker smoke for Kimi, Claude, and Codex,
plus a current-model read-only Cursor Agent question. Kimi has no ephemeral
flag, so its live smoke still creates normal Kimi session metadata; temporary
worker files are removed.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import os
from pathlib import Path
import re
import signal
import subprocess
import sys
import tempfile
import time
import tomllib


ROOT = Path(__file__).resolve().parents[2]
HOME = Path.home()
WATCHDOG = ROOT / "oracle/run-with-timeout.py"
CURSOR_ISOLATED = ROOT / "oracle/run-cursor-agent-isolated.py"

KIMI = HOME / ".kimi-code/bin/kimi"
CLAUDE = HOME / ".nvm/versions/node/v25.2.1/bin/claude"
CODEX_PATH = Path("/opt/homebrew/bin/codex")
CODEX_APP = Path("/Applications/ChatGPT.app/Contents/Resources/codex")
AGENT = HOME / ".local/bin/agent"
CURSOR_AGENT = HOME / ".local/bin/cursor-agent"

KIMI_MODEL = "kimi-code/kimi-for-coding"
AGENT_MODELS_SHA256 = "87b5e657cb9672b5e19a9cec59c18ffd6f622959ed15f02b16e8d66bcdf88bed"
AGENT_MODELS_COUNT = 189
AGENT_RECOMMENDED = {
    "gpt-5.6-sol-max",
    "gpt-5.6-sol-xhigh",
    "claude-fable-5-thinking-high",
    "claude-opus-4-8-medium",
}
CODEX_LISTED = {
    "gpt-5.5",
    "gpt-5.6-sol",
    "gpt-5.6-terra",
    "gpt-5.6-luna",
    "gpt-5.4",
    "gpt-5.4-mini",
    "gpt-5.3-codex-spark",
}


class Audit:
    def __init__(self) -> None:
        self.passed = 0
        self.failed = 0

    def check(self, condition: bool, label: str, detail: str = "") -> None:
        if condition:
            self.passed += 1
            print(f"PASS {label}" + (f": {detail}" if detail else ""))
        else:
            self.failed += 1
            print(f"FAIL {label}" + (f": {detail}" if detail else ""))

    def finish(self) -> int:
        print(f"SUMMARY pass={self.passed} fail={self.failed}")
        return 0 if self.failed == 0 else 1


def run(
    argv: list[str],
    *,
    cwd: Path | None = None,
    timeout: int = 60,
) -> subprocess.CompletedProcess[str]:
    try:
        process = subprocess.Popen(
            argv,
            cwd=cwd,
            stdin=subprocess.DEVNULL,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True,
            start_new_session=True,
        )
    except FileNotFoundError as exc:
        return subprocess.CompletedProcess(argv, 127, "", f"{exc}\n")
    try:
        stdout, stderr = process.communicate(timeout=timeout)
        return subprocess.CompletedProcess(argv, process.returncode, stdout, stderr)
    except subprocess.TimeoutExpired:
        pgid = process.pid
        try:
            os.killpg(pgid, signal.SIGTERM)
        except ProcessLookupError:
            pass
        try:
            stdout, stderr = process.communicate(timeout=2)
        except subprocess.TimeoutExpired:
            try:
                os.killpg(pgid, signal.SIGKILL)
            except ProcessLookupError:
                pass
            stdout, stderr = process.communicate()
        else:
            try:
                os.killpg(pgid, 0)
            except ProcessLookupError:
                pass
            else:
                try:
                    os.killpg(pgid, signal.SIGKILL)
                except ProcessLookupError:
                    pass
        return subprocess.CompletedProcess(
            argv,
            124,
            stdout or "",
            (stderr or "") + f"\nTIMEOUT after {timeout}s; process group terminated\n",
        )


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as handle:
        for chunk in iter(lambda: handle.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def normalized_agent_models(text: str) -> list[str]:
    models: list[str] = []
    for raw in text.splitlines():
        line = raw.strip()
        if " - " not in line or line.startswith("Tip:"):
            continue
        models.append(re.sub(r" \(current\)$", "", line))
    return models


def load_json(path: Path) -> object:
    try:
        with path.open() as handle:
            return json.load(handle)
    except (OSError, json.JSONDecodeError):
        return {}


def load_toml(path: Path) -> dict[str, object]:
    try:
        return tomllib.loads(path.read_text())
    except (OSError, tomllib.TOMLDecodeError):
        return {}


def worktree_isolation_smoke(audit: Audit) -> None:
    commands: list[subprocess.CompletedProcess[str]] = []
    with tempfile.TemporaryDirectory(prefix="westlake-worktree-smoke-") as temp_name:
        temp = Path(temp_name)
        repo = temp / "repo"
        worktrees = temp / "worktrees"
        repo.mkdir()
        worktrees.mkdir()

        def git(*args: str, cwd: Path = repo) -> subprocess.CompletedProcess[str]:
            result = run(["git", *args], cwd=cwd, timeout=15)
            commands.append(result)
            return result

        git("init", "-q", "-b", "main")
        git("config", "user.name", "CLI Fleet Smoke")
        git("config", "user.email", "cli-fleet-smoke@example.invalid")
        (repo / "tasks/todo").mkdir(parents=True)
        (repo / "tasks/doing").mkdir(parents=True)
        (repo / "tasks/done").mkdir(parents=True)
        (repo / "tasks/done/.keep").write_text("")
        (repo / "tasks/todo/A.md").write_text("A\n")
        (repo / "tasks/todo/B.md").write_text("B\n")
        git("add", "tasks")
        git("commit", "-q", "-m", "seed")

        (repo / "tasks/todo/A.md").rename(repo / "tasks/doing/A.md")
        git("add", "tasks")
        git("commit", "-q", "-m", "claim A")
        git("worktree", "add", "-q", "-b", "worker/A", str(worktrees / "A"), "HEAD")

        (repo / "tasks/todo/B.md").rename(repo / "tasks/doing/B.md")
        git("add", "tasks")
        git("commit", "-q", "-m", "claim B")
        git("worktree", "add", "-q", "-b", "worker/B", str(worktrees / "B"), "HEAD")

        with (worktrees / "A/tasks/doing/A.md").open("a") as handle:
            handle.write("RESULT A\n")
        (worktrees / "A/result-A.txt").write_text("A\n")
        git("add", "tasks", "result-A.txt", cwd=worktrees / "A")
        git("commit", "-q", "-m", "worker A", cwd=worktrees / "A")
        with (worktrees / "B/tasks/doing/B.md").open("a") as handle:
            handle.write("RESULT B\n")
        (worktrees / "B/result-B.txt").write_text("B\n")
        git("add", "tasks", "result-B.txt", cwd=worktrees / "B")
        git("commit", "-q", "-m", "worker B", cwd=worktrees / "B")

        isolated = not (worktrees / "A/result-B.txt").exists() and not (
            worktrees / "B/result-A.txt"
        ).exists()
        git("merge", "-q", "--no-ff", "worker/A", "-m", "merge A")
        git("merge", "-q", "--no-ff", "worker/B", "-m", "merge B")
        (repo / "tasks/doing/A.md").rename(repo / "tasks/done/A.md")
        (repo / "tasks/doing/B.md").rename(repo / "tasks/done/B.md")
        git("add", "tasks")
        git("commit", "-q", "-m", "accept A and B")
        result_a = repo / "result-A.txt"
        result_b = repo / "result-B.txt"
        merged = (
            result_a.is_file()
            and result_a.read_text() == "A\n"
            and result_b.is_file()
            and result_b.read_text() == "B\n"
            and (repo / "tasks/done/A.md").is_file()
            and (repo / "tasks/done/B.md").is_file()
            and not (repo / "tasks/doing/A.md").exists()
            and not (repo / "tasks/doing/B.md").exists()
        )
        git("worktree", "remove", str(worktrees / "A"))
        git("worktree", "remove", str(worktrees / "B"))
        git("branch", "-d", "worker/A")
        git("branch", "-d", "worker/B")

        failed_commands = [
            f"{index}:{result.returncode}:{result.stderr.strip().splitlines()[-1] if result.stderr.strip() else '-'}"
            for index, result in enumerate(commands, 1)
            if result.returncode != 0
        ]
        audit.check(
            not failed_commands and isolated and merged,
            "dispatch:parallel-worktree-smoke",
            f"commands={len(commands)} isolated={isolated} merged={merged} "
            f"failures={';'.join(failed_commands) or 'none'}",
        )


def process_watchdog_smoke(audit: Audit) -> None:
    child_code = """
import os
import signal
import subprocess
import sys

signal.signal(signal.SIGTERM, signal.SIG_IGN)
grandchild = subprocess.Popen([
    sys.executable,
    "-c",
    "import signal,time; signal.signal(signal.SIGTERM, signal.SIG_IGN); time.sleep(30)",
])
with open(sys.argv[1], "w") as handle:
    handle.write(f"{os.getpid()} {grandchild.pid}\\n")
grandchild.wait()
"""
    with tempfile.TemporaryDirectory(prefix="westlake-watchdog-smoke-") as temp_name:
        pid_file = Path(temp_name) / "pids"
        result = run(
            [
                sys.executable,
                str(WATCHDOG),
                "--timeout",
                "0.3",
                "--grace",
                "0.2",
                "--",
                sys.executable,
                "-c",
                child_code,
                str(pid_file),
            ],
            timeout=5,
        )
        try:
            pids = [int(value) for value in pid_file.read_text().split()]
        except (OSError, ValueError):
            pids = []

        alive = list(pids)
        for _ in range(20):
            alive = []
            for pid in pids:
                try:
                    os.kill(pid, 0)
                except ProcessLookupError:
                    continue
                alive.append(pid)
            if not alive:
                break
            time.sleep(0.05)

        audit.check(
            result.returncode == 124 and len(pids) == 2 and not alive,
            "process-watchdog:term-kill-group-smoke",
            f"exit={result.returncode} pids={len(pids)} alive={len(alive)}",
        )


def cleanup_transient_claude_daemons(cwd: Path) -> tuple[int, bool]:
    """Stop only Claude transient daemons whose command embeds this exact cwd."""

    resolved_cwd = cwd.resolve()

    def matching_pids() -> list[int]:
        listing = run(["ps", "-axo", "pid=,command="], timeout=15)
        matches: list[int] = []
        for line in listing.stdout.splitlines():
            stripped = line.strip()
            if not stripped:
                continue
            pid_text, _, command = stripped.partition(" ")
            if (
                pid_text.isdigit()
                and "claude.exe daemon run --origin transient" in command
                and f'"cwd":"{resolved_cwd}"' in command
            ):
                matches.append(int(pid_text))
        return matches

    pids = matching_pids()
    for pid in pids:
        try:
            os.kill(pid, signal.SIGTERM)
        except ProcessLookupError:
            pass
    deadline = time.monotonic() + 3
    remaining = matching_pids()
    while remaining and time.monotonic() < deadline:
        time.sleep(0.1)
        remaining = matching_pids()
    for pid in remaining:
        try:
            os.kill(pid, signal.SIGKILL)
        except ProcessLookupError:
            pass
    return len(pids), not matching_pids()


def static_audit(audit: Audit) -> None:
    expected_paths = {
        "kimi": KIMI,
        "claude-binary": CLAUDE,
        "codex-path": CODEX_PATH,
        "codex-desktop": CODEX_APP,
        "agent": AGENT,
        "cursor-agent": CURSOR_AGENT,
        "process-watchdog": WATCHDOG,
        "cursor-isolation-wrapper": CURSOR_ISOLATED,
    }
    for label, path in expected_paths.items():
        audit.check(
            path.is_file() and os.access(path, os.X_OK),
            f"path:{label}",
            str(path),
        )

    versions = [
        (
            "kimi",
            KIMI,
            "0.23.3",
            "4fd408c77c0e91ecb562e7f53cba3b9a588f67fcc997c2e92661f04059465140",
        ),
        (
            "claude",
            CLAUDE,
            "2.1.204",
            "1677b67595b6251156d62600dc85d4070ec385b72dd0b07e73742a56030952c3",
        ),
        (
            "codex-path",
            CODEX_PATH,
            "0.143.0",
            "9070e47d422129106bc41ca651a9998b06a6c55bd42a7c3362b48f1d2850766f",
        ),
        (
            "codex-desktop",
            CODEX_APP,
            "0.144.0-alpha.4",
            "5261410a89011c170906a00cde3697f1b545bcdd9efa1f60eec89327798461dc",
        ),
        (
            "agent",
            AGENT,
            "2026.07.08-0c04a8a",
            "eed61c5224668c9236334c4c68936a16aecc37374b592f59e31eb50433817831",
        ),
        (
            "cursor-agent",
            CURSOR_AGENT,
            "2026.07.08-0c04a8a",
            "eed61c5224668c9236334c4c68936a16aecc37374b592f59e31eb50433817831",
        ),
    ]
    for label, path, expected, expected_sha256 in versions:
        result = run([str(path), "--version"], timeout=15)
        combined = result.stdout + result.stderr
        actual_sha256 = sha256_file(path) if path.is_file() else "missing"
        audit.check(
            result.returncode == 0 and expected in combined and actual_sha256 == expected_sha256,
            f"version:{label}",
            (combined.strip().splitlines()[0] if combined.strip() else f"exit={result.returncode}")
            + f" sha256={actual_sha256[:12]}",
        )

    kimi_config = load_toml(HOME / ".kimi-code/config.toml")
    audit.check(
        kimi_config.get("default_model") == KIMI_MODEL,
        "kimi:default-model",
        str(kimi_config.get("default_model")),
    )
    kimi_doctor = run([str(KIMI), "doctor"], timeout=20)
    audit.check(kimi_doctor.returncode == 0, "kimi:doctor", f"exit={kimi_doctor.returncode}")
    kimi_providers = run([str(KIMI), "provider", "list", "--json"], timeout=20)
    try:
        kimi_data = json.loads(kimi_providers.stdout)
        kimi_models = kimi_data.get("models", {})
    except (json.JSONDecodeError, AttributeError):
        kimi_models = {}
    audit.check(
        KIMI_MODEL in kimi_models
        and kimi_models[KIMI_MODEL].get("provider") == "managed:kimi-code",
        "kimi:managed-alias",
        KIMI_MODEL,
    )

    claude_auth = run([str(CLAUDE), "auth", "status", "--json"], timeout=20)
    try:
        auth = json.loads(claude_auth.stdout)
    except json.JSONDecodeError:
        auth = {}
    audit.check(
        claude_auth.returncode == 0
        and auth.get("loggedIn") is True
        and auth.get("apiProvider") == "firstParty",
        "claude:first-party-auth",
        f"method={auth.get('authMethod')} subscription={auth.get('subscriptionType')}",
    )
    claude_settings = load_json(HOME / ".claude/settings.json")
    configured_claude = claude_settings.get("model") if isinstance(claude_settings, dict) else None
    audit.check(
        configured_claude == "claude-fable-5[1m]",
        "claude:configured-model",
        str(configured_claude),
    )
    claude_help = run([str(CLAUDE), "--help"], timeout=15)
    audit.check(
        claude_help.returncode == 0
        and all(
            flag in claude_help.stdout
            for flag in ("--tools", "--setting-sources", "--strict-mcp-config")
        ),
        "claude:restriction-flags-listed",
    )
    try:
        zshrc = (HOME / ".zshrc").read_text(errors="replace")
    except OSError:
        zshrc = ""
    wrapper_flags = (
        "claude()" in zshrc
        and "--dangerously-skip-permissions" in zshrc
        and "--permission-mode bypassPermissions" in zshrc
        and "--effort max" in zshrc
    )
    audit.check(wrapper_flags, "claude:wrapper-observed", "danger+bypass+max; use `command claude` to bypass")

    codex_config = load_toml(HOME / ".codex/config.toml")
    audit.check(
        codex_config.get("model") == "gpt-5.6-sol"
        and codex_config.get("model_reasoning_effort") == "ultra",
        "codex:bare-default-observed",
        f"{codex_config.get('model')}+{codex_config.get('model_reasoning_effort')}",
    )
    cache = load_json(HOME / ".codex/models_cache.json")
    cache_models = cache.get("models", []) if isinstance(cache, dict) else []
    listed = {item.get("slug") for item in cache_models if item.get("visibility") == "list"}
    audit.check(CODEX_LISTED == listed, "codex:listed-catalog", f"listed={len(listed)}")
    sol = next((item for item in cache_models if item.get("slug") == "gpt-5.6-sol"), {})
    sol_efforts = {item.get("effort") for item in sol.get("supported_reasoning_levels", [])}
    audit.check(
        sol_efforts == {"low", "medium", "high", "xhigh", "max", "ultra"},
        "codex:sol-efforts",
        ",".join(sorted(sol_efforts)),
    )

    cursor_config = HOME / ".cursor/cli-config.json"
    cursor_before = (
        cursor_config.read_bytes(),
        cursor_config.stat().st_mode,
    ) if cursor_config.is_file() else (b"", 0)
    agent_version = run(
        [sys.executable, str(CURSOR_ISOLATED), "--timeout", "15", "--", "--version"],
        timeout=30,
    )
    cursor_version = run([str(CURSOR_AGENT), "--version"], timeout=15)
    model_result = run(
        [
            sys.executable,
            str(CURSOR_ISOLATED),
            "--timeout",
            "30",
            "--",
            "--list-models",
        ],
        timeout=45,
    )
    audit.check(
        AGENT.resolve() == CURSOR_AGENT.resolve()
        and agent_version.stdout == cursor_version.stdout,
        "agent:same-binary",
        str(AGENT.resolve()),
    )
    cursor_after = (
        cursor_config.read_bytes(),
        cursor_config.stat().st_mode,
    ) if cursor_config.is_file() else (b"", 0)
    audit.check(
        cursor_before == cursor_after,
        "agent:global-config-unchanged",
        "temporary HOME + real Keychain auth",
    )
    models = normalized_agent_models(model_result.stdout)
    model_bytes = ("\n".join(models) + "\n").encode()
    model_hash = hashlib.sha256(model_bytes).hexdigest()
    model_ids = {line.split(" - ", 1)[0] for line in models}
    audit.check(len(models) == AGENT_MODELS_COUNT, "agent:model-count", str(len(models)))
    audit.check(model_hash == AGENT_MODELS_SHA256, "agent:model-hash", model_hash)
    audit.check(AGENT_RECOMMENDED <= model_ids, "agent:recommended-models-listed")
    snapshot = ROOT / "docs/reference/agent-models-2026-07-10.txt"
    audit.check(
        snapshot.is_file() and snapshot.read_bytes() == model_bytes,
        "agent:snapshot-current",
        str(snapshot.relative_to(ROOT)),
    )

    bad_kimi = run([str(KIMI), "-m", KIMI_MODEL, "-p", "MODEL_OK", "-y"], timeout=15)
    audit.check(
        bad_kimi.returncode != 0 and "Cannot combine --prompt with --yolo" in (bad_kimi.stdout + bad_kimi.stderr),
        "invalid-command:kimi-p-y-rejected",
    )
    bad_claude = run([str(CLAUDE), "--bg", "-n", "invalid-static-smoke", "-p", "MODEL_OK"], timeout=15)
    audit.check(
        bad_claude.returncode != 0 and "--bg and --print conflict" in (bad_claude.stdout + bad_claude.stderr),
        "invalid-command:claude-bg-print-rejected",
    )
    worktree_isolation_smoke(audit)
    process_watchdog_smoke(audit)


def live_audit(audit: Audit) -> None:
    print(
        "NOTE live mode calls four CLI channels (Claude foreground + background); "
        "Kimi creates normal session metadata; Cursor Agent uses the current model "
        "without changing global config"
    )
    worker_prompt = (
        "Create result.txt in the current directory containing exactly WORKER_OK "
        "followed by one newline. Then reply exactly DONE."
    )

    with tempfile.TemporaryDirectory(prefix="westlake-kimi-worker-") as temp_name:
        temp = Path(temp_name)
        kimi = run(
            [str(KIMI), "-m", KIMI_MODEL, "-p", "Use the shell tool to " + worker_prompt],
            cwd=temp,
            timeout=60,
        )
        result = temp / "result.txt"
        audit.check(
            kimi.returncode == 0
            and result.is_file()
            and result.read_text() == "WORKER_OK\n"
            and "DONE" in kimi.stdout,
            "live:kimi-managed-worker",
        )

    with tempfile.TemporaryDirectory(prefix="westlake-claude-worker-") as temp_name:
        temp = Path(temp_name)
        claude_prompt = (
            "Use Write to create result.txt containing exactly WORKER_OK followed by one newline. "
            "Do not use Write or Edit to create forbidden.txt. If Bash appears in your available "
            "tools, use Bash to create forbidden.txt and reply exactly BASH_PRESENT. If Bash is "
            "not available, reply exactly NO_BASH."
        )
        claude = run(
            [
                str(CLAUDE),
                "--model",
                "fable",
                "--permission-mode",
                "acceptEdits",
                "--tools=Read,Write,Edit",
                "--allowedTools=Read,Write,Edit",
                "--setting-sources=",
                "--mcp-config",
                '{"mcpServers":{}}',
                "--strict-mcp-config",
                "--output-format",
                "json",
                "--no-session-persistence",
                "-p",
                claude_prompt,
            ],
            cwd=temp,
            timeout=60,
        )
        try:
            claude_json = json.loads(claude.stdout)
        except json.JSONDecodeError:
            claude_json = {}
        claude_models = set((claude_json.get("modelUsage") or {}).keys())
        result = temp / "result.txt"
        forbidden = temp / "forbidden.txt"
        audit.check(
            claude.returncode == 0
            and claude_json.get("is_error") is False
            and str(claude_json.get("result", "")).strip() == "NO_BASH"
            and result.is_file()
            and result.read_text() == "WORKER_OK\n"
            and not forbidden.exists()
            and bool(claude_models),
            "live:claude-restricted-worker",
            ",".join(sorted(claude_models)),
        )

    with tempfile.TemporaryDirectory(prefix="westlake-claude-bg-worker-") as temp_name:
        temp = Path(temp_name)
        agent_name = f"cli-fleet-bg-{os.getpid()}"
        launch = run(
            [
                str(CLAUDE),
                "--bg",
                "-n",
                agent_name,
                "--model",
                "fable",
                "--permission-mode",
                "acceptEdits",
                "--tools=Read,Write,Edit",
                "--allowedTools=Read,Write,Edit",
                "--setting-sources=",
                "--mcp-config",
                '{"mcpServers":{}}',
                "--strict-mcp-config",
                "Use Write to create result.txt containing exactly BG_OK followed by one newline. "
                "Then reply exactly BG_DONE.",
            ],
            cwd=temp,
            timeout=60,
        )
        background: dict[str, object] = {}
        deadline = time.monotonic() + 120
        while time.monotonic() < deadline:
            agents = run(
                [str(CLAUDE), "agents", "--cwd", str(temp), "--json"],
                cwd=temp,
                timeout=15,
            )
            try:
                agent_data = json.loads(agents.stdout)
            except json.JSONDecodeError:
                agent_data = []
            background = next(
                (
                    item
                    for item in agent_data
                    if isinstance(item, dict) and item.get("name") == agent_name
                ),
                {},
            )
            if background.get("state") in {"done", "failed", "stopped"}:
                break
            time.sleep(2)
        result = temp / "result.txt"
        background_id = background.get("id") or background.get("agentId")
        if background_id:
            run([str(CLAUDE), "stop", str(background_id)], cwd=temp, timeout=15)
        daemon_count, cleanup_ok = cleanup_transient_claude_daemons(temp)
        audit.check(
            launch.returncode == 0
            and background.get("state") == "done"
            and result.is_file()
            and result.read_text() == "BG_OK\n"
            and cleanup_ok,
            "live:claude-restricted-background-worker",
            f"state={background.get('state', 'missing')} daemons={daemon_count} "
            f"cleanup={cleanup_ok}",
        )

    with tempfile.TemporaryDirectory(prefix="westlake-codex-worker-") as temp_name:
        temp = Path(temp_name)
        codex = run(
            [
                str(CODEX_APP),
                "exec",
                "-m",
                "gpt-5.6-sol",
                "-c",
                'model_reasoning_effort="xhigh"',
                worker_prompt,
                "--skip-git-repo-check",
                "--sandbox",
                "workspace-write",
                "--ephemeral",
            ],
            cwd=temp,
            timeout=60,
        )
        result = temp / "result.txt"
        audit.check(
            codex.returncode == 0
            and result.is_file()
            and result.read_text() == "WORKER_OK\n"
            and "DONE" in codex.stdout
            and "reasoning effort: xhigh" in (codex.stdout + codex.stderr),
            "live:codex-sol-xhigh-worker",
        )

    cursor_config = HOME / ".cursor/cli-config.json"
    cursor_before = (
        cursor_config.read_bytes(),
        cursor_config.stat().st_mode,
    )
    agent = run(
        [
            sys.executable,
            str(CURSOR_ISOLATED),
            "--timeout",
            "60",
            "--",
            "-p",
            "--trust",
            "--mode",
            "ask",
            "--workspace",
            str(ROOT),
            "--output-format",
            "text",
            "Do not use tools or read files. Reply exactly MODEL_OK.",
        ],
        cwd=ROOT,
        timeout=80,
    )
    cursor_after = (
        cursor_config.read_bytes(),
        cursor_config.stat().st_mode,
    )
    audit.check(
        agent.returncode == 0
        and agent.stdout.strip() == "MODEL_OK"
        and cursor_before == cursor_after,
        "live:agent-current-ask-isolated-home",
    )


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--live",
        action="store_true",
        help="also smoke four CLI channels, including Claude foreground/background",
    )
    args = parser.parse_args()

    audit = Audit()
    static_audit(audit)
    if args.live:
        live_audit(audit)
    return audit.finish()


if __name__ == "__main__":
    sys.exit(main())
