#!/usr/bin/env python3
"""
framework-res-alignment-checker.py — Agent-A
比较 framework.jar 中 com.android.internal.R.* 的 ID 与 framework-res.apk 的 public.xml ID。
输出各类型匹配率，帮助确认该用哪个 framework-res.apk。

用法:
  python3 framework-res-alignment-checker.py \
      --framework-jar path/to/framework.jar \
      --framework-res path/to/framework-res.apk \
      [--workdir /tmp/fr-check]

依赖:
  java (JDK 17+), apktool, baksmali jar 放 ./tools-smali/baksmali-2.5.2.jar
"""
import argparse, os, re, subprocess, sys, tempfile, shutil

BAKSMALI_JAR = os.path.join(os.path.dirname(__file__), "tools-smali", "baksmali-2.5.2.jar")


def run(cmd, cwd=None):
    p = subprocess.run(cmd, shell=True, cwd=cwd, text=True, capture_output=True)
    if p.returncode != 0:
        print(f"CMD FAILED: {cmd}\n{p.stderr}", file=sys.stderr)
        sys.exit(1)
    return p.stdout


def parse_r_classes(smali_dir):
    """解析 com/android/internal/R$*.smali，返回 {(type,name): id}。"""
    result = {}
    r_dir = os.path.join(smali_dir, "com", "android", "internal")
    if not os.path.isdir(r_dir):
        print(f"ERROR: no com/android/internal in {smali_dir}")
        sys.exit(1)
    field_re = re.compile(r'\.field\s+public\s+static\s+final\s+(\w+):I\s*=\s*(0x[0-9a-fA-F]+)')
    for fname in os.listdir(r_dir):
        if not fname.startswith("R$") or not fname.endswith(".smali"):
            continue
        type_name = fname[len("R$"):].split(".")[0]
        with open(os.path.join(r_dir, fname), "r", encoding="utf-8") as f:
            for m in field_re.finditer(f.read()):
                name, id_str = m.group(1), int(m.group(2), 16)
                result[(type_name, name)] = id_str
    return result


def parse_public_xml(apk_out_dir):
    """解析 apktool 解码后的 res/values/public.xml，返回 {(type,name): id}。"""
    public_xml = os.path.join(apk_out_dir, "res", "values", "public.xml")
    if not os.path.exists(public_xml):
        print(f"ERROR: no public.xml in {apk_out_dir}")
        sys.exit(1)
    result = {}
    pub_re = re.compile(r'<public\s+type="([^"]+)"\s+name="([^"]+)"\s+id="(0x[0-9a-fA-F]+)"')
    with open(public_xml, "r", encoding="utf-8") as f:
        for m in pub_re.finditer(f.read()):
            type_name, name, id_str = m.group(1), m.group(2), int(m.group(3), 16)
            result[(type_name, name)] = id_str
    return result


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--framework-jar", required=True)
    parser.add_argument("--framework-res", required=True)
    parser.add_argument("--workdir", default=None)
    args = parser.parse_args()

    workdir = args.workdir or tempfile.mkdtemp(prefix="fr-align-")
    os.makedirs(workdir, exist_ok=True)
    print(f"workdir: {workdir}")

    # 1. baksmali framework.jar
    smali_dir = os.path.join(workdir, "framework-smali")
    if not os.path.isdir(smali_dir):
        print("[*] baksmali framework.jar ...")
        run(f'java -jar "{BAKSMALI_JAR}" d "{args.framework_jar}" -o "{smali_dir}"')
    r_map = parse_r_classes(smali_dir)
    print(f"[*] R class entries: {len(r_map)}")

    # 2. apktool decode framework-res.apk
    res_dir = os.path.join(workdir, "framework-res-decoded")
    if not os.path.isdir(res_dir):
        print("[*] apktool decode framework-res.apk ...")
        run(f'apktool d -f "{args.framework_res}" -o "{res_dir}"')
    public_map = parse_public_xml(res_dir)
    print(f"[*] public.xml entries: {len(public_map)}")

    # 3. compare
    types = sorted(set(k[0] for k in r_map))
    total = len(r_map)
    matched = 0
    mismatched = 0
    missing = 0
    for t in types:
        entries = {k: v for k, v in r_map.items() if k[0] == t}
        mt = mm = ms = 0
        for (ty, name), jar_id in entries.items():
            pub_id = public_map.get((ty, name))
            if pub_id is None:
                ms += 1
            elif pub_id == jar_id:
                mt += 1
            else:
                mm += 1
        print(f"  {t:12s}: total={len(entries):5d}  match={mt:5d}  mismatch={mm:5d}  missing={ms:5d}  rate={mt/len(entries)*100:.1f}%")
        matched += mt; mismatched += mm; missing += ms

    print(f"\nOVERALL: total={total}  match={matched}  mismatch={mismatched}  missing={missing}  match_rate={matched/total*100:.2f}%")
    if matched/total >= 0.95:
        print("=> 对齐度足够，可上板使用。")
    elif matched/total >= 0.80:
        print("=> 对齐度一般，可能有部分私有资源错位；建议进一步检查 mismatch 列表。")
    else:
        print("=> 对齐度差，不要用这个组合。")


if __name__ == "__main__":
    main()
