#!/usr/bin/env python3
"""Westlake repo-skill checks.

Checks are deliberately conservative. They do not deploy or mutate the device.
"""

from __future__ import annotations

import os
import shutil
import subprocess
import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parents[2]


def exists(path: str) -> bool:
    return Path(os.path.expandvars(os.path.expanduser(path))).exists()


def check_command(name: str) -> bool:
    found = shutil.which(name) is not None
    print(f"{'ok' if found else 'missing'} command: {name}")
    return found


def host() -> int:
    required = ["python3", "git"]
    optional = ["java", "javac", "hdc"]
    ok = True
    for command in required:
        ok = check_command(command) and ok
    for command in optional:
        check_command(command)

    reference_paths = [
        "$HOME/openharmony",
        "$HOME/android-sdk",
        "$HOME/tools/dex2oat64",
        "$HOME/openharmony/out/sdk/ohos-sdk/linux/toolchains/restool",
    ]
    for path in reference_paths:
        print(f"{'ok' if exists(path) else 'missing'} path: {path}")

    return 0 if ok else 1


def docs() -> int:
    needed = [
        "REPO_SKILL.md",
        "REPO_LOCK.toml",
        "REPO_PIPELINE.dot",
        "REPO_HISTORY.dot",
        "STATUS.md",
        "UNIFIED-CONFIG-REPRODUCE.md",
        "docs/REPRODUCTION-GUIDE.md",
        "ARTIFACT-INVENTORY.txt",
    ]
    ok = True
    for rel in needed:
        path = ROOT / rel
        found = path.exists()
        print(f"{'ok' if found else 'missing'} file: {rel}")
        ok = found and ok
    return 0 if ok else 1


def artifacts() -> int:
    committed = [
        "config/hm_symbol_config_next.json",
        "ca-store/cacerts.tgz",
        "native-libs/libv4force.so",
        "native-tls/libtlsjni.so",
        "native-tls/tlsjni-extra.dex",
        "libart-build/BASE-MANIFEST.md",
        "libart-build/build_libart_pathA.sh",
    ]
    ok = True
    for rel in committed:
        found = (ROOT / rel).exists()
        print(f"{'ok' if found else 'missing'} committed input: {rel}")
        ok = found and ok

    baseline = os.environ.get("WESTLAKE_BASELINE_DIR") or str(Path.home() / "westlake-complete")
    baseline_path = Path(baseline).expanduser()
    if baseline_path.exists():
        print(f"ok external baseline: {baseline_path}")
    else:
        print(f"missing external baseline: {baseline_path}")
        print("set WESTLAKE_BASELINE_DIR or rebuild large artifacts from the docs")
        ok = False
    return 0 if ok else 1


def device() -> int:
    hdc = os.environ.get("HDC") or shutil.which("hdc")
    if not hdc:
        print("missing hdc; set HDC=/path/to/hdc or put hdc on PATH")
        return 1
    print(f"using hdc: {hdc}")
    try:
        completed = subprocess.run(
            [hdc, "shell", "echo", "westlake-hdc-ok"],
            cwd=ROOT,
            text=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
            timeout=8,
        )
    except Exception as exc:  # noqa: BLE001 - report tool failure plainly.
        print(f"hdc check failed: {exc}")
        return 1
    print(completed.stdout.strip())
    return 0 if completed.returncode == 0 and "westlake-hdc-ok" in completed.stdout else 1


def runbook() -> int:
    print("Westlake is not pure clone-and-run.")
    print("Full replay needs DAYU200/RK3568 plus external baseline or rebuilt artifacts.")
    print("Read in order:")
    print("  1. STATUS.md")
    print("  2. UNIFIED-CONFIG-REPRODUCE.md")
    print("  3. docs/REPRODUCTION-GUIDE.md")
    print("  4. BUILD-FROM-SOURCE.md")
    print("Validation target:")
    print("  catalog launches and navigates; noice renders and navigates; artifact hashes match REPO_LOCK.toml")
    return 0


COMMANDS = {
    "host": host,
    "docs": docs,
    "artifacts": artifacts,
    "device": device,
    "runbook": runbook,
}


def main(argv: list[str]) -> int:
    if len(argv) != 2 or argv[1] not in COMMANDS:
        print("usage: westlake_checks.py <host|docs|artifacts|device|runbook>")
        return 2
    return COMMANDS[argv[1]]()


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
