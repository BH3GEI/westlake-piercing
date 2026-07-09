#!/usr/bin/env python3
"""
ohos-deploy.py — Zero-dependency OHOS app deployment on DAYU600

Bypasses:
  - bm install (fails on Android-signed APKs due to OHOS signature mismatch)
  - restool (not available)
  - entry HAP (not needed for bundleType=0 apps)

For any Android APK, this script:
  1. Creates bundle directory structure
  2. Copies APK as both .hap and .apk
  3. Extracts and places icon PNG
  4. Inserts/updates BMS DB record (from HelloWorld template)
  5. Inserts into launcher DB (optional)
  6. Triggers BMS reload

Usage:
  python3 ohos-deploy.py <apk_path> <pkg_name> <label> <ability_name>
  python3 ohos-deploy.py ~/Downloads/app.apk com.example.myapp "My App" "com.example.myapp.MainActivity"

Then launch with:
  hdc shell "aa start -a <ability_name> -b <pkg_name> -m entry"

Requirements:
  - APK must be on device at /data/local/tmp/<basename>.apk (or specify --apk-on-device)
  - hdc available
  - sqlite3 on device
"""
import sys, os, shutil, subprocess, sqlite3, json, copy, zipfile, struct

HDC = os.environ.get("HDC", os.path.expanduser("~/.local/openharmony-tools/bin/hdc"))

# ─── Step 1: Extract icon from APK ──────────────────────────────────────────
def extract_icon(apk_path):
    """Use apktool to decode and find largest ic_launcher PNG."""
    import tempfile
    decode_dir = tempfile.mkdtemp(prefix="apktool_")
    apk_basename = os.path.splitext(os.path.basename(apk_path))[0]

    r = subprocess.run(
        ["apktool" if os.path.exists("/opt/homebrew/bin/apktool") else "apktool",
         "d", "-o", decode_dir, apk_path],
        capture_output=True, text=True, timeout=60
    )
    if r.returncode != 0:
        print(f"  [WARN] apktool failed: {r.stderr[:200]}")
        return None, decode_dir

    # Find ic_launcher PNGs
    icons = []
    for root, dirs, files in os.walk(decode_dir):
        for fn in files:
            if "ic_launcher" in fn and fn.endswith(".png"):
                full = os.path.join(root, fn)
                icons.append((os.path.getsize(full), full))

    if icons:
        icons.sort(reverse=True)
        return icons[0][1], decode_dir
    return None, decode_dir

# ─── Step 2: Get BMS DB from device ─────────────────────────────────────────
def pull_bms_db(serial):
    """Pull BMS DB and return local path."""
    local_db = f"/tmp/bmsdb_{serial}.db"
    subprocess.run([HDC, "-t", serial, "file", "recv",
                    "/data/service/el1/public/bms/bundle_manager_service/bmsdb.db",
                    local_db],
                   capture_output=True, timeout=30)
    return local_db

def push_bms_db(serial, local_db):
    """Push modified BMS DB to device."""
    subprocess.run([HDC, "-t", serial, "file", "send", local_db,
                    "/data/service/el1/public/bms/bundle_manager_service/bmsdb.db"],
                   capture_output=True, timeout=30)
    subprocess.run([HDC, "-t", serial, "shell",
                    "chown foundation:foundation /data/service/el1/public/bms/bundle_manager_service/bmsdb.db && "
                    "chmod 0660 /data/service/el1/public/bms/bundle_manager_service/bmsdb.db && "
                    "killall -HUP foundation"],
                   capture_output=True, timeout=10)

# ─── Step 3: Modify BMS DB ───────────────────────────────────────────────────
def register_bms_record(db_path, pkg_name, label, ability_name, icon_id=16777221, bundle_type=0):
    """Insert/update app record in BMS DB."""
    db = sqlite3.connect(db_path)
    cur = db.cursor()

    # Get HelloWorld template
    cur.execute("SELECT VALUE FROM installed_bundle WHERE KEY='com.example.helloworld'")
    row = cur.fetchone()
    if not row:
        raise RuntimeError("HelloWorld record not found in BMS DB — cannot use as template")

    data = json.loads(row[1])

    # Build app record from template
    app = copy.deepcopy(data)
    app['baseApplicationInfo']['bundleName'] = pkg_name
    app['baseApplicationInfo']['label'] = label
    app['baseApplicationInfo']['iconId'] = icon_id
    app['baseApplicationInfo']['bundleType'] = bundle_type
    app['baseApplicationInfo']['icon'] = ''

    app['baseBundleInfo']['entryModuleName'] = 'entry'

    # Build ability
    old_key = list(data['baseAbilityInfos'].keys())[0]
    new_key = ability_name
    new_ability = copy.deepcopy(data['baseAbilityInfos'][old_key])
    new_ability['name'] = new_key
    new_ability['moduleName'] = 'entry'
    new_ability['label'] = label
    new_ability['iconId'] = icon_id
    new_ability['bundleName'] = pkg_name
    app['baseAbilityInfos'] = {new_key: new_ability}

    # SkillInfos
    old_sk = list(data['skillInfos'].keys())[0]
    app['skillInfos'] = {new_key: copy.deepcopy(data['skillInfos'][old_sk])}

    # Simplify
    app['bundlePackInfo'] = {}
    app['innerModuleInfos'] = {}

    # InnerBundleUserInfos
    new_ui = {}
    for k, v in list(app.get('innerBundleUserInfos', {}).items()):
        nk = k.replace('com.example.helloworld', pkg_name)
        if 'bundleUserInfo' in v:
            v['bundleUserInfo']['bundleName'] = pkg_name
        new_ui[nk] = v
    app['innerBundleUserInfos'] = new_ui

    app['bundleStatus'] = 1
    app['uninstallState'] = False

    # Insert
    cur.execute("DELETE FROM installed_bundle WHERE KEY=?", (pkg_name,))
    cur.execute("INSERT INTO installed_bundle (KEY, VALUE) VALUES (?, ?)",
                (pkg_name, json.dumps(app)))
    db.commit()
    db.close()

# ─── Step 4: Modify launcher DB ───────────────────────────────────────────────
def register_launcher(serial, pkg_name, label, ability_name):
    """Insert app into launcher DB (both DESKTOPAPPLICATIONINFO and GRIDLAYOUTINFO)."""
    shell = f'{HDC} -t {serial} shell'

    # Get next IDs
    r = subprocess.run(shell.split() + [
        "sqlite3 /data/app/el1/100/database/com.ohos.launcher/phone_launcher/rdb/Launcher.db",
        "'SELECT MAX(id)+1 FROM DESKTOPAPPLICATIONINFO;'"
    ], capture_output=True, text=True, timeout=10)
    desk_id = r.stdout.strip() or "1"

    r = subprocess.run(shell.split() + [
        "sqlite3 /data/app/el1/100/database/com.ohos.launcher/phone_launcher/rdb/Launcher.db",
        "'SELECT MAX(id)+1 FROM GRIDLAYOUTINFO;'"
    ], capture_output=True, text=True, timeout=10)
    grid_id = r.stdout.strip() or "1"

    key = f"{pkg_name}{ability_name.split('.')[-1]}entry"

    # DESKTOPAPPLICATIONINFO
    sql1 = (f"INSERT INTO DESKTOPAPPLICATIONINFO (id,app_name,is_system_app,badge_number,"
            f"is_uninstallAble,appIcon_id,appLabel_id,bundle_name,module_name,ability_name,"
            f"key_name,install_time) VALUES ({desk_id},'{label}',0,0,1,16777221,16777219,"
            f"'{pkg_name}','entry','{ability_name}','{key}','Thu Jan 01 1970 08:00:00');")

    # GRIDLAYOUTINFO
    sql2 = (f"INSERT INTO GRIDLAYOUTINFO (id,app_name,is_system_app,badge_number,"
            f"is_uninstallAble,appIcon_id,appLabel_id,bundle_name,module_name,ability_name,"
            f"key_name,install_time,type_id,page,column,row) VALUES ({grid_id},'{label}',0,0,1,16777221,16777219,"
            f"'{pkg_name}','entry','{ability_name}','{key}','Thu Jan 01 1970 08:00:00',0,0,0,0);")

    db_path = "/data/app/el1/100/database/com.ohos.launcher/phone_launcher/rdb/Launcher.db"
    for sql in [sql1, sql2]:
        subprocess.run(shell.split() + ["sqlite3", db_path, sql],
                      capture_output=True, timeout=10)

# ─── Step 5: Deploy APK to bundle directory ──────────────────────────────────
def deploy_bundle(serial, apk_name, pkg_name, icon_path=None):
    """Create bundle dir and copy APK."""
    shell = f'{HDC} -t {serial} shell'

    bundle_dir = f"/data/app/el1/bundle/public/{pkg_name}"
    entry_dir = f"{bundle_dir}/entry"
    android_dir = f"{bundle_dir}/android"

    # Create dirs
    subprocess.run(f"{shell} mkdir -p {entry_dir} {android_dir}".split(),
                   capture_output=True, timeout=10)

    # Copy APK
    apk_src = f"/data/local/tmp/{apk_name}"
    for ext in [".hap", ".apk"]:
        subprocess.run(f"{shell} cp {apk_src} {entry_dir}/{pkg_name}{ext}".split(),
                       capture_output=True, timeout=30)
        subprocess.run(f"{shell} chown installs:installs {entry_dir}/{pkg_name}{ext}".split(),
                       capture_output=True, timeout=10)
        subprocess.run(f"{shell} chmod 0644 {entry_dir}/{pkg_name}{ext}".split(),
                       capture_output=True, timeout=10)

    # Copy icon
    if icon_path:
        subprocess.run([HDC, "-t", serial, "file", "send", icon_path,
                       f"{android_dir}/icon.png"],
                      capture_output=True, timeout=30)
        subprocess.run(f"{shell} chown installs:installs {android_dir}/icon.png".split(),
                       capture_output=True, timeout=10)
        subprocess.run(f"{shell} chmod 0644 {android_dir}/icon.png".split(),
                       capture_output=True, timeout=10)

# ─── Main ───────────────────────────────────────────────────────────────────
def main():
    if len(sys.argv) < 5:
        print(__doc__)
        sys.exit(1)

    apk_path = sys.argv[1]
    pkg_name = sys.argv[2]
    label = sys.argv[3]
    ability_name = sys.argv[4]
    serial = sys.argv[5] if len(sys.argv) > 5 else ""

    if not os.path.exists(apk_path):
        print(f"ERROR: APK not found: {apk_path}")
        sys.exit(1)

    apk_name = os.path.basename(apk_path)

    print(f"Deploying {pkg_name} ({label}) from {apk_path}")

    # Find serial
    if not serial:
        r = subprocess.run([HDC, "list", "targets"],
                           capture_output=True, text=True, timeout=10)
        targets = [l.strip() for l in r.stdout.strip().split('\n') if l.strip()]
        serial = targets[0] if targets else ""
        if not serial:
            print("ERROR: No device found")
            sys.exit(1)

    print(f"  Device: {serial}")

    # Step A: Extract icon
    print("  [1/4] Extracting icon...")
    icon_path, decode_dir = extract_icon(apk_path)
    if icon_path:
        print(f"  [OK] Icon: {icon_path} ({os.path.getsize(icon_path)} bytes)")
    else:
        print("  [SKIP] No icon found, using default")
        icon_path = None

    # Step B: Deploy to bundle dir
    print("  [2/4] Deploying to bundle directory...")
    deploy_bundle(serial, apk_name, pkg_name, icon_path)
    print("  [OK] Bundle directory ready")

    # Step C: Modify BMS DB
    print("  [3/4] Registering in BMS DB...")
    local_db = pull_bms_db(serial)
    register_bms_record(local_db, pkg_name, label, ability_name)
    push_bms_db(serial, local_db)
    print("  [OK] BMS DB updated")

    # Step D: Register in launcher DB
    print("  [4/4] Registering in launcher DB...")
    try:
        register_launcher(serial, pkg_name, label, ability_name)
        print("  [OK] Launcher DB updated")
    except Exception as e:
        print(f"  [WARN] Launcher DB failed: {e}")

    print(f"\n✅ Deployed: {pkg_name}")
    print(f"   Launch: hdc -t {serial} shell \"aa start -a {ability_name} -b {pkg_name} -m entry\"")

    # Cleanup
    if decode_dir:
        shutil.rmtree(decode_dir, ignore_errors=True)

if __name__ == "__main__":
    main()
