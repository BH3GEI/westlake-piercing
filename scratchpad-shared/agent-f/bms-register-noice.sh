#!/bin/bash
# bms-register-noice.sh — Manually register noice in BMS DB + launch
# Bypasses bm install (which fails due to Android v3 vs OHOS signature mismatch)
#
# Prerequisites:
#   - noice.apk must be at /data/local/tmp/noice.apk on the device
#   - hdc must be available
#   - This script does NOT require restool or bm install
#
# Usage:
#   hdc shell < this-script.sh
#   OR: cat this-script.sh | hdc shell

set -e

BUNDLE_DIR="/data/app/el1/bundle/public/com.github.ashutoshgngwr.noice"
BMS_DB="/data/service/el1/public/bms/bundle_manager_service/bmsdb.db"
APK="/data/local/tmp/noice.apk"

echo "=== Step 1: Create bundle directory ==="
mkdir -p "$BUNDLE_DIR/entry"

echo "=== Step 2: Copy APK as both .hap and .apk ==="
cp "$APK" "$BUNDLE_DIR/entry/noice.hap"
cp "$APK" "$BUNDLE_DIR/entry/noice.apk"
chown installs:installs "$BUNDLE_DIR/entry/noice.hap"
chmod 0644 "$BUNDLE_DIR/entry/noice.hap"
chown installs:installs "$BUNDLE_DIR/entry/noice.apk"
chmod 0644 "$BUNDLE_DIR/entry/noice.apk"
ls -la "$BUNDLE_DIR/entry/"

echo "=== Step 3: Insert BMS DB record (SQLite on device) ==="
# Use sqlite3 to insert the noice record
# We INSERT OR REPLACE using a modified HelloWorld record
sqlite3 "$BMS_DB" "DELETE FROM installed_bundle WHERE KEY='com.github.ashutoshgngwr.noice';"

# Build the JSON record for noice — copy HelloWorld's structure
HW_JSON=$(sqlite3 "$BMS_DB" "SELECT VALUE FROM installed_bundle WHERE KEY='com.example.helloworld';")

# Use sed to replace key fields in the JSON
sqlite3 "$BMS_DB" "INSERT OR REPLACE INTO installed_bundle (KEY, VALUE) VALUES ('com.github.ashutoshgngwr.noice', '$HW_JSON');"

# Now UPDATE the specific fields we need to change
# This is tricky with sqlite3, so we use a temp file approach
cat > /tmp/fix_noice.py << 'PYEOF'
import sqlite3, json, copy, sys

db = sqlite3.connect("/data/service/el1/public/bms/bundle_manager_service/bmsdb.db")
cur = db.cursor()
cur.execute("SELECT KEY, VALUE FROM installed_bundle WHERE KEY='com.github.ashutoshgngwr.noice'")
row = cur.fetchone()
if not row:
    print("ERROR: noice record not found")
    sys.exit(1)
data = json.loads(row[1])

# Fix bundleName in baseApplicationInfo
data['baseApplicationInfo']['bundleName'] = 'com.github.ashutoshgngwr.noice'
data['baseApplicationInfo']['label'] = 'Noice'
data['baseApplicationInfo']['iconId'] = 16777221
data['baseApplicationInfo']['bundleType'] = 0
data['baseApplicationInfo']['icon'] = ''

# Fix baseBundleInfo
data['baseBundleInfo']['entryModuleName'] = 'entry'

# Fix ability — key is the old HelloWorld ability name
old_key = list(data['baseAbilityInfos'].keys())[0]
new_key = 'com.github.ashutoshgngwr.noice.entry.MainActivity'
new_ability = copy.deepcopy(data['baseAbilityInfos'][old_key])
new_ability['name'] = new_key
new_ability['moduleName'] = 'entry'
new_ability['label'] = 'Noice'
new_ability['iconId'] = 16777221
new_ability['bundleName'] = 'com.github.ashutoshgngwr.noice'
data['baseAbilityInfos'] = {new_key: new_ability}

# Fix skillInfos
old_skill = list(data['skillInfos'].keys())[0]
data['skillInfos'] = {new_key: copy.deepcopy(data['skillInfos'][old_skill])}

# Fix bundlePackInfo
data['bundlePackInfo'] = {}
data['innerModuleInfos'] = {}

# Fix innerBundleUserInfos
new_user_info = {}
for old_user, user_data in list(data.get('innerBundleUserInfos', {}).items()):
    new_user = old_user.replace('com.example.helloworld', 'com.github.ashutoshgngwr.noice')
    if 'bundleUserInfo' in user_data:
        user_data['bundleUserInfo']['bundleName'] = 'com.github.ashutoshgngwr.noice'
    new_user_info[new_user] = user_data
data['innerBundleUserInfos'] = new_user_info

data['bundleStatus'] = 1
data['uninstallState'] = False

new_json = json.dumps(data, ensure_ascii=False)
cur.execute("DELETE FROM installed_bundle WHERE KEY=?", ('com.github.ashutoshgngwr.noice',))
cur.execute("INSERT INTO installed_bundle (KEY, VALUE) VALUES (?, ?)",
            ('com.github.ashutoshgngwr.noice', new_json))
db.commit()
db.close()
print("BMS record updated successfully")
PYEOF

python3 /tmp/fix_noice.py

echo "=== Step 4: Set BMS DB permissions ==="
chown foundation:foundation "$BMS_DB"
chmod 0660 "$BMS_DB"

echo "=== Step 5: Reload BMS ==="
killall -HUP foundation 2>/dev/null || true
sleep 3

echo "=== Step 6: Verify BMS registration ==="
bm dump -n com.github.ashutoshgngwr.noice 2>&1 | head -5

echo "=== Step 7: Launch noice ==="
aa start -a com.github.ashutoshgngwr.noice.entry.MainActivity \
    -b com.github.ashutoshgngwr.noice -m entry 2>&1

echo ""
echo "Done. Check screen for noice UI."
