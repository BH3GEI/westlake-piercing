#!/usr/bin/env python3
"""
Paint-critical-smali-patcher.py — Agent-A
临时绕过 Paint.nSetFlags / nGetFlags 的 @CriticalNative ULE：
用 baksmali 反编译 framework.jar，去掉指定 native 方法的 CriticalNative 注解，再 smali 汇编回 classes.dex。

用法:
  python3 Paint-critical-smali-patcher.py \
      --framework-jar path/to/framework.jar \
      --out path/to/framework.patched.jar \
      [--methods nSetFlags nGetFlags] \
      [--java /path/to/java]

依赖:
  java (JDK 17+), tools-smali/smali-2.5.2.jar, tools-smali/baksmali-2.5.2.jar
"""
import argparse, os, re, shutil, subprocess, sys, tempfile, zipfile

SCRIPT_DIR = os.path.dirname(__file__)
SMALI_JAR = os.path.join(SCRIPT_DIR, "tools-smali", "smali-2.5.2.jar")
BAKSMALI_JAR = os.path.join(SCRIPT_DIR, "tools-smali", "baksmali-2.5.2.jar")


def run(cmd, cwd=None):
    p = subprocess.run(cmd, shell=True, cwd=cwd, text=True, capture_output=True)
    if p.returncode != 0:
        print(f"CMD FAILED: {cmd}\nSTDERR:\n{p.stderr}\nSTDOUT:\n{p.stdout}", file=sys.stderr)
        sys.exit(1)
    return p.stdout


def strip_critical_annotations(smali_path, target_methods):
    """去掉目标 native 方法的 CriticalNative 注解块。"""
    with open(smali_path, "r", encoding="utf-8") as f:
        lines = f.readlines()

    out = []
    in_method = False
    method_name = None
    skip_depth = 0  # >0 时正在跳过 .annotation ... .end annotation

    method_re = re.compile(r'^\.method\s+.*\s+(\w+)\s*\(')
    end_method_re = re.compile(r'^\.end\s+method')
    annotation_start_re = re.compile(r'^\.annotation\s+build\s+Ldalvik/annotation/optimization/CriticalNative;')
    end_annotation_re = re.compile(r'^\.end\s+annotation')

    for line in lines:
        stripped = line.lstrip()
        if method_re.match(stripped):
            in_method = True
            m = method_re.match(stripped)
            method_name = m.group(1)
            out.append(line)
            continue
        if end_method_re.match(stripped):
            in_method = False
            method_name = None
            out.append(line)
            continue

        if in_method and method_name in target_methods:
            if annotation_start_re.match(stripped):
                skip_depth = 1
                continue
            if skip_depth > 0:
                if end_annotation_re.match(stripped):
                    skip_depth = 0
                continue
        out.append(line)

    with open(smali_path, "w", encoding="utf-8") as f:
        f.writelines(out)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--framework-jar", required=True)
    parser.add_argument("--out", required=True)
    parser.add_argument("--methods", nargs="+", default=["nSetFlags", "nGetFlags"])
    parser.add_argument("--java", default="java")
    args = parser.parse_args()

    workdir = tempfile.mkdtemp(prefix="paint-patch-")
    print(f"workdir: {workdir}")

    try:
        # 1. baksmali
        smali_root = os.path.join(workdir, "smali")
        print("[*] baksmali framework.jar ...")
        run(f'{args.java} -jar "{BAKSMALI_JAR}" d "{args.framework_jar}" -o "{smali_root}"')

        # 2. patch Paint.smali
        paint_smali = os.path.join(smali_root, "android", "graphics", "Paint.smali")
        if not os.path.exists(paint_smali):
            print("ERROR: Paint.smali not found after baksmali", file=sys.stderr)
            sys.exit(1)
        print(f"[*] stripping @CriticalNative from methods: {args.methods}")
        strip_critical_annotations(paint_smali, set(args.methods))

        # 3. smali assemble each dex dir
        dex_files = []
        entries = sorted(
            [(d, os.path.join(smali_root, d)) for d in os.listdir(smali_root)],
            key=lambda x: (x[0] != "smali", x[0])
        )
        for dname, dpath in entries:
            if not os.path.isdir(dpath):
                continue
            if dname == "smali":
                dex_name = "classes.dex"
            elif dname.startswith("smali_classes"):
                dex_name = f"classes{dname[len('smali_classes'):]}.dex"
            else:
                continue
            dex_out = os.path.join(workdir, dex_name)
            print(f"[*] assembling {dname} -> {dex_name} ...")
            run(f'{args.java} -jar "{SMALI_JAR}" a "{dpath}" -o "{dex_out}"')
            dex_files.append((dex_name, dex_out))

        # 4. rebuild jar: copy non-dex entries from original, replace dex files
        extract_dir = os.path.join(workdir, "jar")
        os.makedirs(extract_dir, exist_ok=True)
        with zipfile.ZipFile(args.framework_jar, "r") as zin:
            zin.extractall(extract_dir)
        # remove old dex files
        for root, _, files in os.walk(extract_dir):
            for f in files:
                if f.endswith(".dex"):
                    os.remove(os.path.join(root, f))
        # copy new dex files to root
        for dex_name, dex_path in dex_files:
            shutil.copy2(dex_path, os.path.join(extract_dir, dex_name))

        print(f"[*] repackaging jar -> {args.out}")
        with zipfile.ZipFile(args.out, "w", zipfile.ZIP_DEFLATED) as zout:
            for root, _, files in os.walk(extract_dir):
                for f in files:
                    full = os.path.join(root, f)
                    arc = os.path.relpath(full, extract_dir)
                    zout.write(full, arc)

        print(f"[*] done: {args.out}")
    finally:
        shutil.rmtree(workdir, ignore_errors=True)


if __name__ == "__main__":
    main()
