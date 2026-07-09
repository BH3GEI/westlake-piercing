#!/usr/bin/env python3
"""
deploy-uptodown.py — Deploy uptodown to DAYU600 via BMS bypass

Usage:
  python3 deploy-uptodown.py <serial>

  serial: e.g. 5583f5be00000000000000000323012c

BMS fields from noice template:
  appType=2, appFeature=hos_normal_app, isLauncherAbility=True
  hapPath=/data/app/el1/bundle/public/com.uptodown.platform/entry/uptodown.hap
  iconPath=/data/app/el1/bundle/public/com.uptodown.platform/android/icon.png
  skill: action.system.home + android.intent.action.MAIN, entity.system.home
"""
import sys, os, subprocess, sqlite3, json, copy, shutil

HDC = os.path.expanduser("~/.local/openharmony-tools/bin/hdc")
BMS_DB = "/data/service/el1/public/bms/bundle_manager_service/bmsdb.db"
LOCAL_DB = "/tmp/bmsdb_uptodown.db"
LOCAL_ICON = "/tmp/uptodown-icon.png"

PKG = "com.uptodown.platform"
LABEL = "Uptodown"
ABILITY = "com.uptodown.activities.MainActivity"
BUNDLE_DIR = "/data/app/el1/bundle/public/com.uptodown.platform"
ENTRY_DIR = f"{BUNDLE_DIR}/entry"
ICON_DIR = f"{BUNDLE_DIR}/android"
HAP_PATH = f"{ENTRY_DIR}/uptodown.hap"
APK_PATH = f"{ENTRY_DIR}/uptodown.apk"
ICON_PATH = f"{ICON_DIR}/icon.png"

def hdc(cmd, timeout=30):
    r = subprocess.run(f"{HDC} -t {SERIAL} {cmd}",
                       shell=True, capture_output=True, text=True, timeout=timeout)
    return r.stdout, r.stderr, r.returncode

def hdc_sh(cmd, timeout=30):
    out, err, rc = hdc(f'shell "{cmd}"', timeout)
    return out

def insert_bms(db_path):
    """Insert uptodown BMS record from noice template."""
    db = sqlite3.connect(db_path)
    cur = db.cursor()

    cur.execute("SELECT VALUE FROM installed_bundle WHERE key='com.github.ashutoshgngwr.noice'")
    row = cur.fetchone()
    if not row:
        raise RuntimeError("noice template not found in BMS DB")
    data = json.loads(row[0])

    # Build app record from template
    app = copy.deepcopy(data)
    app['baseApplicationInfo']['bundleName'] = PKG
    app['baseApplicationInfo']['label'] = LABEL
    app['baseApplicationInfo']['icon'] = ICON_PATH
    app['baseApplicationInfo']['codePath'] = ENTRY_DIR
    app['baseApplicationInfo']['resourcePath'] = ENTRY_DIR
    app['baseApplicationInfo']['moduleSourceDirs'] = [ENTRY_DIR]
    app['baseApplicationInfo']['appDistributionType'] = 'app_gallery'
    app['baseApplicationInfo']['appFeature'] = 'hos_normal_app'
    app['baseApplicationInfo']['apiTargetVersion'] = 20
    app['baseApplicationInfo']['apiCompatibleVersion'] = 14
    app['baseApplicationInfo']['bundleType'] = 0

    # Replace ability
    ability = copy.deepcopy(list(data['baseAbilityInfos'].values())[0])
    ability['name'] = ABILITY
    ability['applicationName'] = PKG
    ability['bundleName'] = PKG
    ability['label'] = LABEL
    ability['iconPath'] = ICON_PATH
    ability['hapPath'] = HAP_PATH
    ability['resourcePath'] = ENTRY_DIR
    ability['codePath'] = ENTRY_DIR
    ability['isLauncherAbility'] = True
    ability['srcLanguage'] = 'js'
    ability['compileMode'] = 1

    app['baseAbilityInfos'] = {ABILITY: ability}

    # Fix skillInfos — key must match new ability name
    old_skill_key = list(data['skillInfos'].keys())[0] if data.get('skillInfos') else None
    if old_skill_key:
        data['skillInfos'][ABILITY] = data['skillInfos'].pop(old_skill_key)

    # Fix innerBundleUserInfos — replace old bundle name in keys
    new_user_infos = {}
    for old_key, user_data in list(data.get('innerBundleUserInfos', {}).items()):
        new_key = old_key.replace(list(data['baseAbilityInfos'].keys())[0].split('.')[0], PKG)
        if 'bundleUserInfo' in user_data:
            user_data['bundleUserInfo']['bundleName'] = PKG
        new_user_infos[new_key] = user_data
    if new_user_infos:
        data['innerBundleUserInfos'] = new_user_infos

    # UPSERT
    json_val = json.dumps(app, ensure_ascii=False)
    cur.execute("DELETE FROM installed_bundle WHERE key=?", (PKG,))
    cur.execute("INSERT OR REPLACE INTO installed_bundle (key, value) VALUES (?, ?)", (PKG, json_val))
    db.commit()
    print(f"  BMS record upserted: {PKG}")
    db.close()

def insert_launcher(db_path):
    """Insert into launcher DB (DESKTOPAPPLICATIONINFO)."""
    db = sqlite3.connect(db_path)
    cur = db.cursor()
    import datetime
    now = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    key = f"{PKG}-entry"
    try:
        cur.execute(f"""
            INSERT OR REPLACE INTO DESKTOPAPPLICATIONINFO
            (app_name, bundle_name, module_name, ability_name, is_system_app, badge_number,
             is_uninstallAble, appIcon_id, appLabel_id, key_name, install_time)
            VALUES (?,?,?,?,?,?,?,?,?,?,?)
        """, (LABEL, PKG, 'entry', ABILITY, 0, 0, 1, 16777221, 16777221, key, now))
        db.commit()
        print(f"  Launcher DB record upserted (key={key})")
    except Exception as e:
        print(f"  Launcher DB insert failed: {e}")
    db.close()

def main():
    global SERIAL
    if len(sys.argv) < 2:
        SERIAL = "5583f5be00000000000000000323012c"
        print(f"No serial given, using default: {SERIAL}")
    else:
        SERIAL = sys.argv[1]

    print(f"=== Deploying {PKG} to {SERIAL} ===")

    # Step 1: Create dirs
    print("1. Creating dirs...")
    for d in [BUNDLE_DIR, ENTRY_DIR, ICON_DIR]:
        out = hdc_sh(f"mkdir -p {d} && chmod 0755 {d}")
        print(f"   {d}: {out.strip()}")

    # Step 2: Copy APK as .hap and .apk
    print("2. Pushing APK as .hap and .apk...")
    on_device_apk = "/data/local/tmp/westlake-dayu600-substrate/apks/test-uptodown.apk"
    # Use host-side APK (already pulled to /tmp)
    local_apk = "/tmp/test-uptodown.apk"
    hdc(f"file send {LOCAL_ICON} {ICON_PATH}", timeout=10)
    hdc_sh(f"chown foundation:foundation {ICON_PATH} && chmod 0644 {ICON_PATH}")
    print(f"   icon pushed to {ICON_PATH}")

    hdc(f"file send {local_apk} {HAP_PATH}", timeout=60)
    hdc(f"file send {local_apk} {APK_PATH}", timeout=60)
    hdc_sh(f"chown foundation:foundation {HAP_PATH} {APK_PATH} && chmod 0644 {HAP_PATH} {APK_PATH}")
    print(f"   APK/HAP pushed")

    # Step 3: Pull BMS DB
    print("3. Pulling BMS DB...")
    hdc(f"file recv {BMS_DB} {LOCAL_DB}", timeout=10)
    print(f"   pulled to {LOCAL_DB}")

    # Step 4: Insert BMS record
    print("4. Inserting BMS record...")
    insert_bms(LOCAL_DB)

    # Step 5: Insert launcher DB (optional)
    launcher_db = "/data/app/el1/100/database/com.ohos.launcher/phone_launcher/rdb/Launcher.db"
    launcher_local = "/tmp/launcher_uptodown.db"
    print("5. Inserting launcher DB record...")
    hdc(f"file recv {launcher_db} {launcher_local}", timeout=10)
    insert_launcher(launcher_local)

    # Step 6: Push modified DBs
    print("6. Pushing modified DBs...")
    hdc(f"file send {LOCAL_DB} {BMS_DB}", timeout=10)
    hdc_sh(f"chown foundation:foundation {BMS_DB} && chmod 0660 {BMS_DB} && killall -HUP foundation")
    print(f"   BMS DB pushed + HUP")

    hdc(f"file send {launcher_local} {launcher_db}", timeout=10)
    hdc_sh(f"chown shell:shell {launcher_db} && chmod 0660 {launcher_db}")
    print(f"   launcher DB pushed")

    # Step 7: Verify
    print("7. Verifying BMS registration...")
    out = hdc_sh(f"bm dump -n {PKG}")
    if "bundle name:" in out.lower() or "error" not in out.lower():
        print(f"   ✅ BMS registered: {out[:200]}")
    else:
        print(f"   ⚠️  BMS check: {out[:200]}")

    # Step 8: Try aa start
    print("8. Testing aa start...")
    out = hdc_sh(f"aa start -a {ABILITY} -b {PKG} -m entry")
    print(f"   result: {out[:300]}")
    if "success" in out.lower():
        print("   ✅ aa start SUCCESS")
    else:
        print(f"   ⚠️  aa start response: {out[:200]}")

    print("\n=== Done ===")
    print(f"BMS:  bm dump -n {PKG}")
    print(f"Start: aa start -a {ABILITY} -b {PKG} -m entry")

if __name__ == "__main__":
    main()
