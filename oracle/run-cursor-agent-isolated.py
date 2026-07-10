#!/usr/bin/env python3
"""Run Cursor Agent with an isolated HOME and the user's Keychain auth.

Cursor Agent writes ``~/.cursor/cli-config.json`` even for read-only asks and
model listing. This wrapper copies that config into a temporary HOME, links only
the macOS Keychains directory needed for authentication, supervises the Agent
process group, and verifies that the real config bytes/mode did not change.
"""

from __future__ import annotations

import argparse
import os
from pathlib import Path
import shutil
import signal
import stat
import subprocess
import sys
import tempfile
import time


HOME = Path.home()
AGENT = HOME / ".local/bin/agent"
SOURCE_CONFIG = HOME / ".cursor/cli-config.json"
KEYCHAINS = HOME / "Library/Keychains"


class StopSignal(Exception):
    def __init__(self, signum: int) -> None:
        self.signum = signum


def group_exists(pgid: int) -> bool:
    try:
        os.killpg(pgid, 0)
        return True
    except (ProcessLookupError, PermissionError):
        return False


def stop_group(process: subprocess.Popen[bytes], grace: float) -> bool:
    pgid = process.pid
    if not group_exists(pgid):
        return True
    try:
        os.killpg(pgid, signal.SIGTERM)
    except (ProcessLookupError, PermissionError):
        return True
    deadline = time.monotonic() + grace
    while group_exists(pgid) and time.monotonic() < deadline:
        time.sleep(0.05)
    if group_exists(pgid):
        try:
            os.killpg(pgid, signal.SIGKILL)
        except (ProcessLookupError, PermissionError):
            pass
    if process.poll() is None:
        process.wait()
    deadline = time.monotonic() + 1
    while group_exists(pgid) and time.monotonic() < deadline:
        time.sleep(0.05)
    return not group_exists(pgid)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--timeout", type=float, default=900)
    parser.add_argument("--grace", type=float, default=5.0)
    parser.add_argument("agent_args", nargs=argparse.REMAINDER)
    args = parser.parse_args()

    agent_args = args.agent_args
    if agent_args[:1] == ["--"]:
        agent_args = agent_args[1:]
    if not agent_args:
        parser.error("Cursor Agent arguments are required after --")
    if args.timeout <= 0 or args.grace < 0:
        parser.error("--timeout must be > 0 and --grace must be >= 0")
    if not AGENT.is_file() or not SOURCE_CONFIG.is_file() or not KEYCHAINS.is_dir():
        print("run-cursor-agent-isolated: missing Agent/config/Keychains", file=sys.stderr)
        return 127

    before = (SOURCE_CONFIG.read_bytes(), stat.S_IMODE(SOURCE_CONFIG.stat().st_mode))
    returncode = 1
    cleanup_ok = True
    with tempfile.TemporaryDirectory(prefix="westlake-cursor-home-") as temp_name:
        temp_home = Path(temp_name)
        temp_config = temp_home / ".cursor/cli-config.json"
        temp_config.parent.mkdir(parents=True)
        shutil.copy2(SOURCE_CONFIG, temp_config)
        os.chmod(temp_config, 0o600)
        library = temp_home / "Library"
        library.mkdir()
        (library / "Keychains").symlink_to(KEYCHAINS, target_is_directory=True)

        env = os.environ.copy()
        env["HOME"] = str(temp_home)
        try:
            process = subprocess.Popen(
                [str(AGENT), *agent_args],
                env=env,
                stdin=subprocess.DEVNULL,
                start_new_session=True,
            )
        except FileNotFoundError as exc:
            print(f"run-cursor-agent-isolated: {exc}", file=sys.stderr)
            returncode = 127
        else:
            def request_stop(signum: int, _frame: object) -> None:
                raise StopSignal(signum)

            previous_term = signal.signal(signal.SIGTERM, request_stop)
            previous_hup = signal.signal(signal.SIGHUP, request_stop)
            try:
                returncode = process.wait(timeout=args.timeout)
                cleanup_ok = stop_group(process, args.grace)
            except subprocess.TimeoutExpired:
                print(
                    f"run-cursor-agent-isolated: timeout after {args.timeout:g}s",
                    file=sys.stderr,
                )
                cleanup_ok = stop_group(process, args.grace)
                returncode = 124
            except KeyboardInterrupt:
                cleanup_ok = stop_group(process, args.grace)
                returncode = 130
            except StopSignal as exc:
                signal.signal(signal.SIGTERM, signal.SIG_IGN)
                signal.signal(signal.SIGHUP, signal.SIG_IGN)
                cleanup_ok = stop_group(process, args.grace)
                returncode = 128 + exc.signum
            finally:
                signal.signal(signal.SIGTERM, previous_term)
                signal.signal(signal.SIGHUP, previous_hup)

    after = (SOURCE_CONFIG.read_bytes(), stat.S_IMODE(SOURCE_CONFIG.stat().st_mode))
    if after != before:
        print(
            "run-cursor-agent-isolated: real Cursor config changed concurrently; "
            "wrapper did not overwrite it",
            file=sys.stderr,
        )
        return 90
    if not cleanup_ok:
        print(
            "run-cursor-agent-isolated: child process group still present after cleanup",
            file=sys.stderr,
        )
        return 91
    return returncode


if __name__ == "__main__":
    sys.exit(main())
