#!/usr/bin/env python3
"""Westlake repo-skill checks.

Checks are deliberately conservative. They do not deploy or mutate the device.
"""

from __future__ import annotations

import os
import re
import shutil
import subprocess
import sys
from pathlib import Path

try:
    import tomllib
except ModuleNotFoundError:  # Python <3.11 gets a precise host-check failure below.
    tomllib = None


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

    if sys.version_info >= (3, 11):
        print(f"ok Python: {sys.version.split()[0]} (>=3.11)")
    else:
        print(f"missing Python>=3.11: {sys.version.split()[0]}")
        ok = False

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
        "AGENTS.md",
        "CLAUDE.md",
        "REPO_SKILL.md",
        "REPO_LOCK.toml",
        "REPO_PIPELINE.dot",
        "REPO_HISTORY.dot",
        "state/FRONTIER.md",
        "state/LEDGER.md",
        "state/ATOM-MAP.md",
        "state/QUEUE.md",
        "state/BOARDS.toml",
        "state/DECISIONS.md",
        "protocol/THINKER.md",
        "protocol/WORKER.md",
        "protocol/DISPATCH.md",
        ".claude/skills/westlake-repo/SKILL.md",
        ".agents/skills/westlake-repo/SKILL.md",
        "oracle/device/run-utd-w001.sh",
        "oracle/verify/atom-43.sh",
        "docs/reference/host-build.md",
        "evidence/INDEX.md",
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


def _task_snapshot() -> tuple[tuple[str, ...], dict[str, str]]:
    files: list[str] = []
    states: dict[str, str] = {}
    for state in ("todo", "doing", "done", "blocked"):
        for path in sorted((ROOT / "tasks" / state).glob("*.md")):
            files.append(str(path.relative_to(ROOT)))
            if path.name != ".gitkeep":
                states[path.stem] = state
    return tuple(files), states


def _card_board(path: Path) -> str | None:
    text = path.read_text(encoding="utf-8")
    section = re.search(r"(?ms)^## 4\.[^\n]*\n(.*?)(?=^## 5\.|\Z)", text)
    if not section:
        return None
    match = re.search(r"(?m)^board:\s*([^\s#]+)", section.group(1))
    return match.group(1) if match else None


def _git_output(*args: str, binary: bool = False):
    return subprocess.run(
        ["git", *args],
        cwd=ROOT,
        check=False,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=not binary,
    )


def _dirty_counts(raw: bytes) -> tuple[int, int, int]:
    records = raw.split(b"\0")
    staged = unstaged = untracked = 0
    i = 0
    while i < len(records) and records[i]:
        record = records[i]
        if len(record) < 3:
            i += 1
            continue
        xy = record[:2].decode("ascii", errors="replace")
        if xy == "??":
            untracked += 1
        else:
            if xy[0] not in (" ", "?"):
                staged += 1
            if xy[1] not in (" ", "?"):
                unstaged += 1
        i += 2 if "R" in xy or "C" in xy else 1
    return staged, unstaged, untracked


def handoff() -> int:
    """Read-only structural handoff check. It never contacts boards or remotes."""
    errors: list[str] = []
    required = [
        "AGENTS.md", "CLAUDE.md", "REPO_SKILL.md", "REPO_LOCK.toml",
        "REPO_PIPELINE.dot", "REPO_HISTORY.dot", ".repo-skill/turns",
        "state/FRONTIER.md", "state/LEDGER.md", "state/ATOM-MAP.md",
        "state/QUEUE.md", "state/BOARDS.toml", "state/DECISIONS.md",
        "protocol/THINKER.md", "protocol/WORKER.md", "protocol/DISPATCH.md",
        "oracle/device/run-utd-w001.sh", "oracle/verify/atom-43.sh",
        "docs/reference/host-build.md", "evidence/INDEX.md",
    ]
    for rel in required:
        path = ROOT / rel
        if rel == ".repo-skill/turns":
            if not path.is_dir():
                errors.append(f"missing directory: {rel}")
            continue
        if not path.is_file() or not os.access(path, os.R_OK):
            errors.append(f"missing/unreadable file: {rel}")
        elif not path.read_text(encoding="utf-8").strip():
            errors.append(f"empty file: {rel}")

    for rel in required:
        if rel == ".repo-skill/turns":
            continue
        tracked = _git_output("ls-files", "--error-unmatch", "--", rel)
        if tracked.returncode != 0:
            errors.append(f"required handoff file is not tracked/staged: {rel}")

    claude = ROOT / "CLAUDE.md"
    if claude.is_file() and claude.read_text(encoding="utf-8").strip() != "@AGENTS.md":
        errors.append("CLAUDE.md must be the thin import: @AGENTS.md")

    budgets = {
        "state/FRONTIER.md": 30,
        "state/LEDGER.md": 150,
        "state/ATOM-MAP.md": 120,
    }
    for rel, limit in budgets.items():
        path = ROOT / rel
        if path.is_file():
            count = len(path.read_text(encoding="utf-8").splitlines())
            print(f"{'ok' if count <= limit else 'over'} budget: {rel} {count}/{limit}")
            if count > limit:
                errors.append(f"line budget exceeded: {rel} {count}>{limit}")

    boards_path = ROOT / "state" / "BOARDS.toml"
    before_board = boards_path.read_bytes() if boards_path.is_file() else b""
    before_tasks, task_states = _task_snapshot()
    locks_by_task: dict[str, list[dict[str, object]]] = {}
    if tomllib is None:
        errors.append("Python>=3.11 required for TOML handoff validation")
        boards: list[dict[str, object]] = []
    else:
        try:
            boards = tomllib.loads(before_board.decode("utf-8")).get("board", [])
        except Exception as exc:  # noqa: BLE001 - collect every structural error.
            boards = []
            errors.append(f"cannot parse state/BOARDS.toml: {exc}")
    for board in boards:
        lock = str(board.get("lock", ""))
        if lock:
            locks_by_task.setdefault(lock, []).append(board)
            state = task_states.get(lock)
            if state != "doing":
                errors.append(
                    f"dangling lock: {board.get('alias', '?')} lock={lock} but task state={state or 'missing'}"
                )

    allowed_tiers = {
        "small": {"small"},
        "big-clean": {"big-clean"},
        "big-any": {"big-clean", "big-any"},
    }
    for task_id, state in task_states.items():
        if state != "doing":
            continue
        path = ROOT / "tasks" / "doing" / f"{task_id}.md"
        requested = _card_board(path)
        locks = locks_by_task.get(task_id, [])
        if requested is None:
            errors.append(f"doing card missing section-4 board field: {task_id}")
        elif requested == "none" and locks:
            errors.append(f"board:none card holds {len(locks)} lock(s): {task_id}")
        elif requested != "none":
            if len(locks) != 1:
                errors.append(f"doing card requires exactly one board lock: {task_id} has {len(locks)}")
            elif requested not in allowed_tiers:
                errors.append(f"unknown board tier on {task_id}: {requested}")
            else:
                board = locks[0]
                tier = str(board.get("tier", ""))
                if tier not in allowed_tiers[requested]:
                    errors.append(f"wrong tier: {task_id} requests {requested}, got {tier}")
                if board.get("online") is not True:
                    errors.append(f"offline board is locked: {task_id} -> {board.get('alias', '?')}")

    frontier_path = ROOT / "state" / "FRONTIER.md"
    frontier = frontier_path.read_text(encoding="utf-8") if frontier_path.is_file() else ""
    front_ids = sorted(set(re.findall(r"\b[A-Z]-\d{3}\b", frontier)))
    for task_id in front_ids:
        matches = sum(
            1 for state in ("todo", "doing")
            if (ROOT / "tasks" / state / f"{task_id}.md").is_file()
        )
        if matches != 1:
            errors.append(f"FRONTIER task must exist once in todo/doing: {task_id} matches={matches}")

    branch_result = _git_output("symbolic-ref", "-q", "--short", "HEAD")
    head_result = _git_output("rev-parse", "--short=12", "HEAD")
    status_result = _git_output("status", "--porcelain=v1", "-z", "--untracked-files=all", binary=True)
    if head_result.returncode != 0 or status_result.returncode != 0:
        errors.append("git branch/status inspection failed")
        branch = "unknown"
        head = "unknown"
        staged = unstaged = untracked = -1
    else:
        branch = branch_result.stdout.strip() if branch_result.returncode == 0 else "DETACHED"
        head = head_result.stdout.strip()
        staged, unstaged, untracked = _dirty_counts(status_result.stdout)
    print(f"git: branch={branch} head={head} staged={staged} unstaged={unstaged} untracked={untracked}")
    print("note: one path may count as both staged and unstaged")

    after_board = boards_path.read_bytes() if boards_path.is_file() else b""
    after_tasks, _ = _task_snapshot()
    if before_board != after_board or before_tasks != after_tasks:
        errors.append("UNSTABLE: board/task state changed during read; rerun")

    meaningful_frontier = [
        line for line in frontier.splitlines()
        if line.strip() and not line.lstrip().startswith("<!--")
    ][:8]
    print("frontier snapshot:")
    for line in meaningful_frontier:
        print(f"  {line}")

    verdict = "PASS" if not errors else "FAIL"
    if errors:
        print("structure errors:")
        for error in errors:
            print(f"  - {error}")
    print("new thinker prompt:")
    print("  你是本仓 thinker。本次上岗阶段为 inspect_only。")
    print("  先读 AGENTS.md、state/ 六文件、protocol/THINKER.md、REPO_SKILL.md、REPO_LOCK.toml、REPO_PIPELINE.dot。")
    print("  先报告 frontier、任务/板锁、dirty 文件和前沿卡 oracle 是否真实且可安全执行。")
    print("  handoff STRUCTURE PASS 不代表 oracle PASS 或项目完成。")
    print("  保护未提交改动；不读 archive，不改 state，不切分支，不 fetch/merge/push，不执行板命令。")
    if verdict == "FAIL":
        print("  当前结构检查 FAIL：只做修复审计，不继续钻墙。")
    print(verdict)
    return 0 if verdict == "PASS" else 1


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
    print("Legacy DAYU200 reproduction flow; not the active DAYU600 shift gate.")
    print("Westlake is not pure clone-and-run; this replay needs DAYU200/RK3568 plus external baseline or rebuilt artifacts.")
    print("Read legacy docs in order:")
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
    print("Before changing anything:")
    print("  1. Read AGENTS.md and run the read-only handoff flow")
    print("  2. Read all bounded state/ files and protocol/THINKER.md")
    print("  3. Read the current card and its exact oracle; do not infer progress from dated docs")
    print("  4. Read docs/DAYU600-PORT.md and other dated milestones only when the card needs them")
    print("  5. Rebuild or replace every legacy 32-bit ARM runtime artifact for aarch64")
    print("  6. Never overwrite stock /system/bin/appspawn; never wipe/flash without explicit authority")
    print("  7. Keep HDC config at hdc_debug")
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
    "handoff": handoff,
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
