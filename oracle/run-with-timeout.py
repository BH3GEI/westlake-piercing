#!/usr/bin/env python3
"""Run one command with detached stdin and a process-group timeout.

Exit with the child's status. On timeout, terminate the entire child process
group, wait for a short grace period, then send SIGKILL and exit 124. The
wrapper never invokes a shell, so callers must pass an argv after ``--``.
"""

from __future__ import annotations

import argparse
import os
import signal
import subprocess
import sys
import time


def group_exists(pgid: int) -> bool:
    try:
        os.killpg(pgid, 0)
        return True
    except ProcessLookupError:
        return False


def stop_group(process: subprocess.Popen[bytes], grace: float) -> None:
    pgid = process.pid
    if not group_exists(pgid):
        return
    try:
        os.killpg(pgid, signal.SIGTERM)
    except ProcessLookupError:
        return
    deadline = time.monotonic() + grace
    while group_exists(pgid) and time.monotonic() < deadline:
        time.sleep(0.05)
    if group_exists(pgid):
        try:
            os.killpg(pgid, signal.SIGKILL)
        except ProcessLookupError:
            pass
    if process.poll() is None:
        process.wait()


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--timeout", type=float, required=True)
    parser.add_argument("--grace", type=float, default=5.0)
    parser.add_argument("command", nargs=argparse.REMAINDER)
    args = parser.parse_args()

    command = args.command
    if command[:1] == ["--"]:
        command = command[1:]
    if not command:
        parser.error("a command is required after --")
    if args.timeout <= 0 or args.grace < 0:
        parser.error("--timeout must be > 0 and --grace must be >= 0")

    try:
        process = subprocess.Popen(
            command,
            stdin=subprocess.DEVNULL,
            start_new_session=True,
        )
    except FileNotFoundError as exc:
        print(f"run-with-timeout: {exc}", file=sys.stderr)
        return 127

    try:
        return process.wait(timeout=args.timeout)
    except subprocess.TimeoutExpired:
        print(
            f"run-with-timeout: timeout after {args.timeout:g}s; "
            f"terminating process group {process.pid}",
            file=sys.stderr,
        )
        stop_group(process, args.grace)
        return 124
    except KeyboardInterrupt:
        stop_group(process, args.grace)
        return 130


if __name__ == "__main__":
    sys.exit(main())
