#!/usr/bin/env python3
"""Fix digiplex abilityInfos in BMS DB by copying from baseAbilityInfos."""
import sqlite3, json, sys

DB = "/data/service/el1/public/bms/bundle_manager_service/bmsdb.db"
BUNDLE = "com.digiplex.game"

def fix():
    conn = sqlite3.connect(DB)
    conn.execute("PRAGMA journal_mode=WAL")
    row = conn.execute("SELECT KEY, VALUE FROM installed_bundle WHERE KEY=?", (BUNDLE,)).fetchone()
    if not row:
        print(f"ERROR: {BUNDLE} not found in BMS DB")
        return

    data = json.loads(row[1])
    print(f"Current abilityInfos: {data.get('abilityInfos', [])}")

    # Build abilityInfos from baseAbilityInfos
    base = data.get("baseAbilityInfos", {})
    new_ability_infos = []
    for ability_key, ability in base.items():
        skill = ability.get("skills", [])
        new_ability_infos.append({
            "name": ability["name"],
            "bundleName": ability["bundleName"],
            "applicationName": ability["applicationName"],
            "moduleName": ability["moduleName"],
            "package": ability["package"],
            "srcEntrance": ability["srcEntrance"],
            "srcLanguage": ability["srcLanguage"],
            "isLauncherAbility": ability.get("isLauncherAbility", False),
            "launchMode": ability.get("launchMode", 1),
            "visible": ability.get("visible", True),
            "isStageBasedModel": ability.get("isStageBasedModel", False),
            "isModuleJson": ability.get("isModuleJson", False),
            "hapPath": "/data/app/el1/bundle/public/com.digiplex.game/android/base.apk",
            "resourcePath": "/data/app/el1/bundle/public/com.digiplex.game/android/base.apk",
            "iconPath": ability.get("iconPath", ""),
            "label": ability.get("label", BUNDLE),
            "skills": skill
        })

    data["abilityInfos"] = new_ability_infos
    new_json = json.dumps(data, separators=(',', ':'))

    print(f"\nNew abilityInfos ({len(new_ability_infos)} abilities):")
    for a in new_ability_infos:
        print(f"  - {a['name']} | launcher={a['isLauncherAbility']} | skills={len(a['skills'])}")

    conn.execute("UPDATE installed_bundle SET VALUE=? WHERE KEY=?", (new_json, BUNDLE))
    conn.commit()

    # Verify
    row2 = conn.execute("SELECT KEY, VALUE FROM installed_bundle WHERE KEY=?", (BUNDLE,)).fetchone()
    parsed = json.loads(row2[1])
    print(f"\nVerified abilityInfos count: {len(parsed['abilityInfos'])}")
    print("DONE")
    conn.close()

if __name__ == "__main__":
    fix()
