#!/usr/bin/env python3
"""Tiny DOT workflow runner for this repo skill.

This intentionally supports only the small attribute subset used by
REPO_PIPELINE.dot. It is a repo-local helper, not a general Graphviz parser.
"""

from __future__ import annotations

import json
import re
import shutil
import shlex
import subprocess
import sys
import time
from dataclasses import dataclass
from pathlib import Path


NODE_RE = re.compile(r"^\s*([A-Za-z0-9_]+)\s*\[(.*?)\]\s*;?\s*$", re.DOTALL)
ATTR_RE = re.compile(r'([A-Za-z0-9_]+)\s*=\s*"([^"]*)"')


@dataclass
class StepResult:
    name: str
    kind: str
    status: str
    command: str | None = None
    returncode: int | None = None
    duration_ms: int | None = None


def repo_root() -> Path:
    cur = Path.cwd().resolve()
    for path in [cur, *cur.parents]:
        if (path / "REPO_PIPELINE.dot").exists():
            return path
    raise SystemExit("REPO_PIPELINE.dot not found; run from inside the repository")


def parse_pipeline(path: Path) -> dict[str, dict[str, str]]:
    text = path.read_text(encoding="utf-8")
    nodes: dict[str, dict[str, str]] = {}
    current = ""
    for raw in text.splitlines():
        line = raw.strip()
        if not line or line.startswith("//") or "->" in line or line in {"{", "}"}:
            continue
        current = f"{current} {line}".strip()
        if "]" not in current:
            continue
        match = NODE_RE.match(current)
        if match:
            name, attrs = match.groups()
            nodes[name] = {key: value for key, value in ATTR_RE.findall(attrs)}
        current = ""
    return nodes


def run_flow(flow: str) -> int:
    root = repo_root()
    nodes = parse_pipeline(root / "REPO_PIPELINE.dot")
    if flow not in nodes or nodes[flow].get("type") != "workflow":
        available = ", ".join(sorted(name for name, attrs in nodes.items() if attrs.get("type") == "workflow"))
        raise SystemExit(f"unknown flow {flow!r}; available: {available}")

    started = time.time()
    results: list[StepResult] = []
    status = "pass"

    for step_name in shlex.split(nodes[flow].get("steps", "")):
        step = nodes.get(step_name)
        if step is None:
            print(f"[missing] {step_name}", flush=True)
            results.append(StepResult(step_name, "missing", "fail"))
            status = "fail"
            break

        kind = step.get("kind", "cmd")
        purpose = step.get("purpose", "")
        print(f"\n== {step_name} ==", flush=True)
        if purpose:
            print(purpose, flush=True)

        if kind == "agent":
            print("agent action required; update the repo skill files before commit", flush=True)
            results.append(StepResult(step_name, kind, "manual"))
            continue

        command = step.get("cmd")
        if not command:
            print("no cmd attribute", flush=True)
            results.append(StepResult(step_name, kind, "fail"))
            status = "fail"
            break

        parts = shlex.split(command)
        executable = parts[0]
        if shutil.which(executable) is None and executable == "python3":
            command = shlex.join([sys.executable, *parts[1:]])
            executable = sys.executable
            print(f"python3 not found; using current interpreter: {sys.executable}", flush=True)
        elif shutil.which(executable) is None:
            print(f"missing command: {executable}", flush=True)
            results.append(StepResult(step_name, kind, "fail", command, 127, 0))
            status = "fail"
            break

        before = time.time()
        completed = subprocess.run(command, cwd=root, shell=True)
        if completed.returncode == 9009 and parts[0] == "python3":
            retry_args = [sys.executable, *parts[1:]]
            command = shlex.join(retry_args)
            print(f"python3 failed with 9009; retrying with current interpreter: {sys.executable}", flush=True)
            completed = subprocess.run(retry_args, cwd=root)
        duration_ms = int((time.time() - before) * 1000)
        step_status = "pass" if completed.returncode == 0 else "fail"
        if completed.returncode == 9009:
            print("command failed with 9009; on Windows this usually means the command was not found", flush=True)
        results.append(
            StepResult(step_name, kind, step_status, command, completed.returncode, duration_ms)
        )
        if completed.returncode != 0:
            status = "fail"
            break

    payload = {
        "flow": flow,
        "status": status,
        "started_at": started,
        "finished_at": time.time(),
        "duration_ms": int((time.time() - started) * 1000),
        "steps": [result.__dict__ for result in results],
    }
    out = root / ".repo-skill" / "last-run.json"
    out.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(f"\nlast run: {out}", flush=True)
    return 0 if status == "pass" else 1


def main(argv: list[str]) -> int:
    if len(argv) != 2 or argv[1] in {"-h", "--help"}:
        print("usage: dot_runner.py <up|check|dayu600-audit|sync>", flush=True)
        return 2
    return run_flow(argv[1].replace("-", "_"))


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
