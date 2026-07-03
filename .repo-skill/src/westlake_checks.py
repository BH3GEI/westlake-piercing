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
        "docs/DAYU600-PORT.md",
        "docs/DAYU600-PORT-AUDIT-2026-07-01.md",
        "docs/DAYU600-BUILD-GAPS.md",
        "docs/DAYU600-SMOKE-2026-07-01.md",
        "docs/DAYU600-APK-2048-2026-07-02.md",
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


def hdc_command() -> str | None:
    explicit = os.environ.get("HDC")
    if explicit:
        return explicit

    on_path = shutil.which("hdc")
    if on_path:
        return on_path

    known_windows_path = Path.home() / "Desktop" / "dayu600_search" / "HarmonyDevTools_v1.0.4" / "toolchains" / "hdc.exe"
    if known_windows_path.exists():
        return str(known_windows_path)

    return None


def run_hdc_shell(hdc: str, command: str, timeout: int = 8) -> tuple[int, str]:
    completed = subprocess.run(
        [hdc, "shell", command],
        cwd=ROOT,
        text=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        timeout=timeout,
    )
    return completed.returncode, completed.stdout.strip()


def dayu600() -> int:
    hdc = hdc_command()
    if not hdc:
        print("missing hdc; set HDC=/path/to/hdc or put hdc on PATH")
        return 1
    print(f"using hdc: {hdc}")

    checks = {
        "kernel": "uname -a",
        "hardware": "param get ohos.boot.hardware",
        "abi": "param get const.product.cpu.abilist",
        "ohos": "param get const.ohos.fullname",
        "api": "param get const.ohos.apiversion",
        "usb_config": "param get persist.sys.usb.config",
        "selinux": "getenforce 2>/dev/null || true",
        "mounts": "mount | head -40",
        "paths": "for p in /system /system/bin /system/lib /system/lib64 /system/android /vendor /sys_prod /chip_prod /data/local/tmp; do ls -ld $p 2>/dev/null || echo missing:$p; done",
        "appspawn": "file /system/bin/appspawn 2>/dev/null",
        "appspawn_family": "find /system -maxdepth 4 \\( -name '*appspawn*' -o -name '*spawn*' \\) 2>/dev/null | head -120",
        "appspawn_cfg": "sed -n '1,90p' /system/etc/init/appspawn.cfg 2>/dev/null",
        "appspawn_x": "ls -l /system/bin/appspawn-x 2>/dev/null || true",
        "android_dir": "ls -ld /system/android /system/android/lib /system/android/lib64 /system/android/framework 2>/dev/null || true",
        "candidate_libs": "ls -l /system/lib64/platformsdk/libappexecfwk_common.z.so /system/lib64/libgraphic_memory.z.so /system/lib64/libgraphic_utils.z.so /vendor/lib64/hw/android.hardware.graphics.allocator@4.0-impl.so /vendor/lib64/hw/android.hardware.graphics.mapper@4.0-impl.so 2>/dev/null || true",
    }

    observed: dict[str, str] = {}
    ok = True
    for name, command in checks.items():
        try:
            rc, output = run_hdc_shell(hdc, command)
        except Exception as exc:  # noqa: BLE001 - report tool failure plainly.
            print(f"{name}: hdc check failed: {exc}")
            return 1
        observed[name] = output
        print(f"== {name} ==")
        print(output or "<empty>")
        if rc != 0 and name not in {"appspawn_x", "android_dir"}:
            ok = False

    if "uis7885" not in observed.get("hardware", ""):
        print("unexpected hardware; expected uis7885")
        ok = False
    if "arm64-v8a" not in observed.get("abi", ""):
        print("unexpected ABI; expected arm64-v8a")
        ok = False
    if "hdc_debug" not in observed.get("usb_config", ""):
        print("unexpected USB config; expected hdc_debug to preserve HDC")
        ok = False
    if "64-bit" not in observed.get("appspawn", "") or "arm64" not in observed.get("appspawn", ""):
        print("unexpected appspawn binary; expected 64-bit arm64")
        ok = False

    if not observed.get("appspawn_x"):
        print("note: /system/bin/appspawn-x is absent; DAYU600 port has not deployed the Westlake substrate yet")
    if not observed.get("android_dir"):
        print("note: /system/android substrate paths are absent; deployment layout must be designed for DAYU600")

    return 0 if ok else 1


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


def runbook_dayu600() -> int:
    print("DAYU600 port target:")
    print("  uis7885 / aarch64 / arm64-v8a / OpenHarmony 6.1.0.31")
    print("Legacy DAYU200 artifacts are reference only.")
    print("Before deploying anything:")
    print("  1. Read docs/DAYU600-PORT.md")
    print("  2. Read docs/DAYU600-PORT-AUDIT-2026-07-01.md")
    print("  3. Read docs/DAYU600-BUILD-GAPS.md")
    print("  4. Read docs/DAYU600-SMOKE-2026-07-01.md")
    print("  5. Read docs/DAYU600-APK-2048-2026-07-02.md")
    print("  6. Re-run the 2048 APK probes with: python .repo-skill/src/dot_runner.py dayu600_2048")
    print("  7. Continue ART smoke tests from /data/local/tmp/westlake-dayu600")
    print("  8. Rebuild or replace every 32-bit ARM runtime artifact for aarch64")
    print("  9. Use a separate /system/bin/appspawn-x; never overwrite stock /system/bin/appspawn")
    print("  10. Keep HDC config at hdc_debug")
    return 0


def run_powershell_script(rel: str, args: list[str]) -> int:
    powershell = shutil.which("powershell") or shutil.which("pwsh")
    if not powershell:
        print("missing PowerShell; cannot run DAYU600 Windows probe scripts")
        return 1

    script = ROOT / rel
    if not script.exists():
        print(f"missing script: {rel}")
        return 1

    completed = subprocess.run(
        [powershell, "-ExecutionPolicy", "Bypass", "-File", str(script), *args],
        cwd=ROOT,
    )
    return completed.returncode


def dayu600_2048_headless() -> int:
    print("Running stock 2048 APK through the DAYU600 standalone aarch64 ART probe.")
    return run_powershell_script(
        "test-fixtures/dayu600-apk-probe/run-2048-headless.ps1",
        ["-SkipBuild", "-SkipUpload"],
    )


def dayu600_2048_appspawn() -> int:
    print("Running stock 2048 APK inside the DAYU600 AppSpawnX app child.")
    print("This uses /data/local/tmp only and does not replace stock /system/bin/appspawn.")
    return run_powershell_script(
        "test-fixtures/dayu600-appspawn-probe/run-appspawnx-2048-ams-exec-probe.ps1",
        ["-SkipBuild", "-Stage", "onCreateNullTrace"],
    )


def dayu600_2048_keepalive() -> int:
    print("Starting the temporary DAYU600 AppSpawnX receiver and leaving it alive.")
    print("This lets later launcher/aa-start requests reach the real 2048 APK app child.")
    return run_powershell_script(
        "test-fixtures/dayu600-appspawn-probe/run-appspawnx-2048-ams-exec-probe.ps1",
        ["-SkipBuild", "-Stage", "onCreateManual", "-KeepAlive"],
    )


def dayu600_2048() -> int:
    rc = dayu600_2048_headless()
    if rc != 0:
        return rc
    return dayu600_2048_appspawn()


COMMANDS = {
    "host": host,
    "docs": docs,
    "artifacts": artifacts,
    "device": device,
    "dayu600": dayu600,
    "dayu600-2048": dayu600_2048,
    "dayu600-2048-headless": dayu600_2048_headless,
    "dayu600-2048-appspawn": dayu600_2048_appspawn,
    "dayu600-2048-keepalive": dayu600_2048_keepalive,
    "runbook": runbook,
    "runbook-dayu600": runbook_dayu600,
}


def main(argv: list[str]) -> int:
    if len(argv) != 2 or argv[1] not in COMMANDS:
        commands = "|".join(COMMANDS)
        print(f"usage: westlake_checks.py <{commands}>")
        return 2
    return COMMANDS[argv[1]]()


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
