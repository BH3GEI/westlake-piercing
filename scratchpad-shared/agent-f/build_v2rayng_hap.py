#!/usr/bin/env python3
"""
Generalized OHOS entry HAP builder — NO restool required.
Takes an APK's icon + label and produces a launcher-ready entry.hap.

Usage:
  python3 build_v2rayng_hap.py <apk_path> <app_label> <output_hap>

Example:
  python3 build_v2rayng_hap.py /path/to/app.apk "App Name" app-entry.hap
  python3 build_v2rayng_hap.py ~/Downloads/v2rayNG.apk "v2rayNG" v2rayng-entry.hap

How it works:
  - Extracts largest mipmap icon from the APK (apktool decode → find ic_launcher)
  - Binary-patches a noice entry.hap template's resources.index
  - Replaces "Noice" label string at offset 0x142 with the new label
  - Patches 2 padding bytes after the label to null
  - Repacks as ZIP (entry HAP is just a ZIP with specific contents)
  
Key binary layout (Restool 4.105, resources.index = 404 bytes):
  0x142: 'N'  (start of "Noice\0" label string)
  0x148: 0x09 0x00  (2 bytes: string length prefix for next string "app_name")
  After patch (8 bytes total): 'v' '2' 'r' 'a' 'y' 'N' 'G' '\0'
"""
import sys, zipfile, os, shutil, struct, subprocess

TEMPLATE_HAP = "/Users/yao/westlake-piercing/scratchpad-shared/agent-f/noice-entry-hap-from-smallboard.hap"
TEMPLATE_ICON = "/Users/yao/westlake-piercing/scratchpad-shared/agent-f/v2rayng-icon-xxxhdpi.png"

def find_icon_in_apk(apk_path):
    """Decode APK with apktool and find the largest ic_launcher PNG."""
    decode_dir = f"/tmp/apktool_decode_{os.getpid()}"
    try:
        r = subprocess.run(
            ["apktool" if os.path.exists("/opt/homebrew/bin/apktool") else "apktool",
             "d", "-o", decode_dir, apk_path],
            capture_output=True, text=True, timeout=60
        )
        if r.returncode != 0:
            print(f"apktool decode failed: {r.stderr[:200]}", file=sys.stderr)
            return None
        
        # Find all ic_launcher PNGs
        icon_candidates = []
        for root, dirs, files in os.walk(decode_dir):
            for fn in files:
                if "ic_launcher" in fn and fn.endswith(".png"):
                    full = os.path.join(root, fn)
                    size = os.path.getsize(full)
                    icon_candidates.append((size, full))
        
        if not icon_candidates:
            # Fallback: largest PNG
            for root, dirs, files in os.walk(decode_dir):
                for fn in files:
                    if fn.endswith(".png"):
                        full = os.path.join(root, fn)
                        size = os.path.getsize(full)
                        icon_candidates.append((size, full))
        
        if not icon_candidates:
            return None
        
        # Pick largest
        icon_candidates.sort(reverse=True)
        chosen = icon_candidates[0][1]
        print(f"  Icon: {chosen} ({icon_candidates[0][0]} bytes)")
        return decode_dir, chosen
    except Exception as e:
        print(f"  Icon extraction failed: {e}", file=sys.stderr)
        return None

def build_hap(apk_path, app_label, output_hap, icon_path=None):
    # Step 1: Get icon
    icon_file = None
    if icon_path and os.path.exists(icon_path):
        icon_file = icon_path
        print(f"  Using provided icon: {icon_file}")
    else:
        result = find_icon_in_apk(apk_path)
        if result:
            decode_dir, icon_file = result
        else:
            print("ERROR: Could not extract icon from APK", file=sys.stderr)
            return False
    
    if not icon_file or not os.path.exists(icon_file):
        print(f"ERROR: Icon file not found: {icon_file}", file=sys.stderr)
        return False
    
    # Step 2: Extract template HAP
    tmp_dir = f"/tmp/hap_build_{os.getpid()}"
    os.makedirs(tmp_dir, exist_ok=True)
    with zipfile.ZipFile(TEMPLATE_HAP) as zf:
        zf.extractall(tmp_dir)
    
    # Step 3: Patch resources.index label string
    idx_path = os.path.join(tmp_dir, "resources.index")
    with open(idx_path, "rb") as f:
        orig = bytearray(f.read())
    
    # "Noice\0" is at offset 0x142 (6 bytes)
    # After it: 2 bytes padding (0x09, 0x00) — part of next string's length field
    # We write app_label as "app_label\0" into exactly 8 bytes at 0x142
    label_bytes = (app_label + "\0").encode("utf-8")
    if len(label_bytes) > 8:
        label_bytes = label_bytes[:8]  # truncate
        label_bytes = label_bytes[:-1] + b"\0"  # ensure null-terminated, may lose last char
    elif len(label_bytes) < 8:
        label_bytes = label_bytes + b"\0" * (8 - len(label_bytes))
    
    old_bytes = bytes(orig[0x142:0x142+8])
    patched = orig[:]
    patched[0x142:0x142+8] = label_bytes
    new_bytes = bytes(patched[0x142:0x142+8])
    print(f"  Label patch: {repr(old_bytes)} → {repr(new_bytes)}")
    
    # Verify "app_name" still intact at 0x14a
    assert patched[0x14a:0x14a+9] == b"app_name\0", "app_name corrupted"
    
    with open(idx_path, "wb") as f:
        f.write(patched)
    print(f"  Patched resources.index written")
    
    # Step 4: Copy icon to app_icon.png
    icon_out = os.path.join(tmp_dir, "resources/base/media/app_icon.png")
    os.makedirs(os.path.dirname(icon_out), exist_ok=True)
    shutil.copy(icon_file, icon_out)
    
    # Step 5: Build ZIP (HAP)
    with zipfile.ZipFile(output_hap, "w", zipfile.ZIP_STORED) as zf:
        for root, dirs, files in os.walk(tmp_dir):
            for fn in files:
                full = os.path.join(root, fn)
                arcname = os.path.relpath(full, tmp_dir)
                zf.write(full, arcname)
    
    size = os.path.getsize(output_hap)
    print(f"\n✅ Built: {output_hap} ({size} bytes)")
    
    # Cleanup
    if decode_dir := (tmp_dir if not icon_path else None):
        shutil.rmtree(tmp_dir, ignore_errors=True)
    shutil.rmtree(tmp_dir, ignore_errors=True)
    if '/tmp/apktool_decode_' in str(locals()):
        shutil.rmtree(list(locals())['decode_dir'], ignore_errors=True)
    
    return True

if __name__ == "__main__":
    if len(sys.argv) < 4:
        print(__doc__)
        print(f"Usage: {sys.argv[0]} <apk_path> <app_label> <output_hap> [icon_png_path]")
        sys.exit(1)
    apk = sys.argv[1]
    label = sys.argv[2]
    out = sys.argv[3]
    icon = sys.argv[4] if len(sys.argv) > 4 else None
    success = build_hap(apk, label, out, icon)
    sys.exit(0 if success else 1)
