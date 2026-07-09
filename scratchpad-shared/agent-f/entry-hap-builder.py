#!/usr/bin/env python3
"""
entry-hap-builder.py — Minimal OHOS entry.hap builder for WestLake DAYU600.

Builds a launcher-icon-only entry.hap from an Android APK without needing
restool (OHOS SDK). The HAP is a plain ZIP with module.json + resources/
at root. Only the icon PNG is required; strings are inline.

Usage:
  python3 entry-hap-builder.py <apk_path> <pkg_name> <display_name> <out_dir>

  python3 entry-hap-builder.py noice.apk com.github.ashutoshgngwr.noice Noice .
  python3 entry-hap-builder.py /path/to/app.apk com.example.myapp "My App" /tmp

Output:
  <out_dir>/<pkg_name>/entry.hap  (ready to deploy)

Deployment:
  adb push <pkg_name>/entry.hap /data/app/el1/bundle/public/<pkg_name>/entry.hap
  adb shell "rm -f /data/app/el1/100/database/com.ohos.launcher/phone_launcher/rdb/Launcher.db*"
  adb shell "stop com.ohos.launcher && start com.ohos.launcher"
"""

import sys
import os
import json
import zipfile
import struct
import io
import argparse
import xml.etree.ElementTree as ET

# Fixed resource IDs confirmed from westlake bm dump on io.material.catalog and noice
ICON_ID = "0x01000005"    # 16777221 = @media/app_icon
LABEL_ID = "0x01000003"   # 16777219 = @string/app_name


def extract_icon_png_from_apk(apk_path: str) -> bytes:
    """Extract launcher icon from APK, rasterizing adaptive-icon if needed."""
    try:
        import subprocess
        result = subprocess.run(
            ["aapt", "dump", "badging", apk_path],
            capture_output=True, text=True, timeout=10
        )
        icon_path = None
        for line in result.stdout.splitlines():
            if line.startswith("application-icon:"):
                icon_path = line.split(":")[2].strip()
                break
            if "launchable-activity" in line:
                # parse application: label='X' icon='res/...'
                parts = line.split()
                for p in parts:
                    if p.startswith("icon='"):
                        icon_path = p[7:-1]
                        break
        if not icon_path:
            # fallback: search AndroidManifest.xml for android:icon
            result2 = subprocess.run(
                ["unzip", "-p", apk_path, "AndroidManifest.xml"],
                capture_output=True, timeout=10
            )
            if result2.returncode == 0:
                print("  [WARN] Could not parse icon from aapt, adaptive-icon rasterization not yet implemented")
                return _placeholder_icon()

        if icon_path:
            # try direct extraction first (raster icon)
            icon_zip_path = icon_path.lstrip("/")
            result3 = subprocess.run(
                ["unzip", "-p", apk_path, icon_zip_path],
                capture_output=True, timeout=10
            )
            if result3.returncode == 0:
                return result3.stdout
            # Try mipmap variants
            for density in ["mipmap-mdpi", "mipmap-hdpi", "mipmap-xhdpi", "mipmap-xxhdpi", "mipmap-xxxhdpi"]:
                alt = icon_path.replace("mipmap-", density)
                alt_zip = alt.lstrip("/")
                result4 = subprocess.run(
                    ["unzip", "-p", apk_path, alt_zip],
                    capture_output=True, timeout=10
                )
                if result4.returncode == 0 and len(result4.stdout) > 100:
                    return result4.stdout

        # Check for adaptive-icon (needs rasterization)
        result5 = subprocess.run(
            ["unzip", "-p", apk_path, "res/drawable-anydpi-v26/ic_launcher.xml"],
            capture_output=True, timeout=10
        )
        if result5.returncode == 0:
            return _rasterize_adaptive_icon(result5.stdout, apk_path)

    except FileNotFoundError:
        print("  [WARN] aapt not found; using placeholder icon")
    except Exception as e:
        print(f"  [WARN] icon extraction failed: {e}")

    return _placeholder_icon()


def _rasterize_adaptive_icon(adaptive_xml: str, apk_path: str) -> bytes:
    """Rasterize an adaptive-icon XML to a flat PNG."""
    # Use the render_noice_icon.py approach: parse foreground + background from XML
    try:
        import subprocess
        # Check if cairosvg is available
        result = subprocess.run(
            ["python3", "-c", "import cairosvg; print('ok')"],
            capture_output=True, timeout=5
        )
        if result.returncode != 0:
            print("  [WARN] cairosvg not available; using placeholder icon")
            return _placeholder_icon()

        # Parse the adaptive icon XML
        root = ET.fromstring(adaptive_xml)
        ns = {"a": "http://schemas.android.com/apk/res/android"}
        fg_ref = None
        bg_color = "#CCCCCC"

        for elem in root:
            tag = elem.tag.split("}")[-1] if "}" in elem.tag else elem.tag
            if tag == "foreground":
                fg_ref = elem.get("{http://schemas.android.com/apk/res/android}drawable")
            elif tag == "background":
                bg = elem.get("{http://schemas.android.com/apk/res/android}color")
                if bg:
                    bg_color = "#" + bg.lstrip("#")[:6]

        if fg_ref:
            # Build SVG from foreground
            fg_xml = _get_drawable_xml(apk_path, fg_ref)
            if fg_xml:
                svg = _build_svg(fg_xml, bg_color)
                import cairosvg
                png = cairosvg.CairoSVG.convert(bytestring=svg.encode(), output_width=192, output_height=192)
                return png

    except Exception as e:
        print(f"  [WARN] adaptive-icon rasterization failed: {e}")
    return _placeholder_icon()


def _get_drawable_xml(apk_path: str, drawable_ref: str) -> str:
    """Get drawable XML content from APK."""
    import subprocess
    candidates = [
        f"res/drawable/{drawable_ref}.xml",
        f"res/drawable-hdpi/{drawable_ref}.xml",
        f"res/drawable-xhdpi/{drawable_ref}.xml",
        f"res/drawable-nodpi/{drawable_ref}.xml",
        f"res/{drawable_ref}.xml",
    ]
    for path in candidates:
        result = subprocess.run(
            ["unzip", "-p", apk_path, path.lstrip("/")],
            capture_output=True, timeout=10
        )
        if result.returncode == 0:
            return result.stdout
    return ""


def _build_svg(foreground_xml: str, bg_color: str) -> str:
    """Convert vector drawable XML to SVG string."""
    try:
        root = ET.fromstring(foreground_xml)
    except:
        return _simple_svg(bg_color)

    # Extract path data from vector
    ns = {"a": "http://schemas.android.com/apk/res/android"}
    path_data = root.get("{http://schemas.android.com/apk/res/android}pathData")
    fill_color = root.get("{http://schemas.android.com/apk/res/android}fillColor", "#FFFFFF")
    viewport = root.get("{http://schemas.android.com/apk/res/android}viewportHeight", "24")

    if path_data:
        return f'''<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 108 108" width="192" height="192">
<rect width="108" height="108" fill="{bg_color}"/>
<path fill="{fill_color}" d="{path_data}"/>
</svg>'''
    return _simple_svg(bg_color)


def _simple_svg(bg_color: str) -> str:
    return f'''<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 108 108" width="192" height="192">
<rect width="108" height="108" fill="{bg_color}"/>
<text x="54" y="60" font-size="40" text-anchor="middle" fill="#FFFFFF">App</text>
</svg>'''


def _placeholder_icon() -> bytes:
    """Generate a simple colored PNG as fallback (pure Python, no external deps)."""
    # Minimal 48x48 PNG (green square) using pure Python
    # This is a pre-generated base64 PNG to avoid external dependencies
    import base64
    png_b64 = (
        "iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAABHNCSVQICAgIfAhkiAAAAAlwSFlz"
        "AAAOxAAADsQBlSsOGwAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAABVSURB"
        "VGiB7c0BDQAgDASw/v/P1oQBJq5k4ErC7gMAAAAAAAAAAAAAAAAAAAAAAAAAAPyPN7UBMXoD"
        "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFj1B8X2AwqM4jL2AAAAAElFTkSuQmCC"
    )
    return base64.b64decode(png_b64)


def build_module_json(pkg_name: str, display_name: str) -> dict:
    return {
        "module": {
            "name": "entry",
            "type": "entry",
            "description": display_name,
            "mainElement": "EntryAbility",
            "deviceTypes": ["default", "phone"],
            "deliveryWithInstall": True,
            "installationFree": False,
            "abilities": [{
                "name": "EntryAbility",
                "srcEntry": "./ets/entryability/EntryAbility.ts",
                "description": display_name,
                "icon": f"${ICON_ID.replace('0x','')}:app_icon",
                "label": f"${LABEL_ID.replace('0x','')}:app_name",
                "startWindowIcon": f"${ICON_ID.replace('0x','')}:app_icon",
                "startWindowBackground": "$color:start_window_background",
                "exported": True,
                "skills": [
                    {"actions": ["action.system.home"], "entities": ["entity.system.home"]}
                ]
            }]
        }
    }


def build_string_json(display_name: str) -> dict:
    return {
        "string": [
            {"name": "app_name", "value": display_name},
            {"name": "EntryAbility_label", "value": display_name},
            {"name": "EntryAbility_desc", "value": display_name},
            {"name": "module_desc", "value": display_name},
        ]
    }


def build_color_json() -> dict:
    return {
        "color": [
            {"name": "start_window_background", "value": "#00FF00"},
        ]
    }


def build_resources_index() -> bytes:
    """
    Build a minimal OHOS resources.index binary.
    This is the compiled resource table — normally generated by restool.
    We write a valid but minimal structure based on OHOS resource format.
    """
    # OHOS resources.index is a binary format. For minimal viability,
    # we create a valid structure with the two resource IDs we need.
    # This is based on reverse-engineering from known-good HAP files.
    #
    # Format: 4-byte magic + var-length sections
    # For a minimal valid HAP that the OHOS resourceManager can parse:
    # - The key is that app_icon (0x01000005) and app_name (0x01000003)
    #   must be in the resource table at the correct IDs.
    #
    # Since restool is not available, we write a placeholder that will
    # work IF the OHOS resourceManager tolerates missing binary resource data
    # (many implementations fall back to the module.json strings).
    #
    # NOTE: This placeholder approach works for the string resources.
    # For the icon PNG, we package it directly in resources/base/media/
    # which some OHOS versions read without going through resources.index.
    #
    # If icons don't appear, the next step is to use restool on a Linux host
    # with OHOS SDK, or to manually construct the binary resource table.

    # Minimal valid "pass-through" resources.index
    # ResourceTable.bin magic (OHOS 6.x)
    magic = b"ResT"  # Restable signature
    # Version (4 bytes LE)
    version = struct.pack("<I", 0x00010000)
    # Package count (4 bytes LE) = 1
    pkg_count = struct.pack("<I", 1)

    # Package info: type ID count (2 + 2 entries for string + media)
    # ResType ID 0x01 = STRING (1 entry), ResType ID 0x03 = MEDIA (1 entry)
    pkg_data = bytearray()
    # Type count = 2
    pkg_data += struct.pack("<H", 2)
    # Type 1: STRING (0x01), entry count = 4 (app_name, EntryAbility_label, etc.)
    pkg_data += struct.pack("<H", 1)   # type ID = STRING
    pkg_data += struct.pack("<H", 4)   # 4 string entries
    for _ in range(4):
        pkg_data += struct.pack("<I", 0)  # resId (filled by restool)
    # Type 2: MEDIA (0x03), entry count = 1
    pkg_data += struct.pack("<H", 3)   # type ID = MEDIA
    pkg_data += struct.pack("<H", 1)   # 1 media entry
    pkg_data += struct.pack("<I", 0)   # resId

    # Key insight: this binary format is complex and restool-specific.
    # For a REAL solution, use restool on Linux. This is a placeholder.
    # The icon PNG in resources/base/media/app_icon.png will work for many
    # OHOS versions even without a proper resources.index.

    return magic + version + pkg_count + pkg_data


def build_entry_hap(apk_path: str, pkg_name: str, display_name: str, out_dir: str) -> str:
    """Build a minimal entry.hap for the given APK."""
    os.makedirs(out_dir, exist_ok=True)
    bundle_dir = os.path.join(out_dir, pkg_name)
    os.makedirs(bundle_dir, exist_ok=True)
    hap_path = os.path.join(bundle_dir, "entry.hap")

    # Extract icon
    print(f"Extracting icon from {apk_path}...")
    icon_png = extract_icon_png_from_apk(apk_path)

    # Build module.json
    module_json = build_module_json(pkg_name, display_name)
    module_json_bytes = json.dumps(module_json, ensure_ascii=False, indent=2).encode("utf-8")

    # Build string.json
    string_json_bytes = json.dumps(build_string_json(display_name), ensure_ascii=False, indent=2).encode("utf-8")

    # Build resources.index
    resources_index = build_resources_index()

    # Write HAP (ZIP)
    with zipfile.ZipFile(hap_path, "w", zipfile.ZIP_DEFLATED) as zf:
        # module.json at root
        zf.writestr("module.json", module_json_bytes)
        # resources.index at root
        zf.writestr("resources.index", resources_index)
        # resources/base/media/app_icon.png
        zf.writestr("resources/base/media/app_icon.png", icon_png)
        # resources/base/element/string.json
        zf.writestr("resources/base/element/string.json", string_json_bytes)
        # color.json (for startWindowBackground)
        color_json = json.dumps(build_color_json(), ensure_ascii=False, indent=2).encode("utf-8")
        zf.writestr("resources/base/element/color.json", color_json)

    print(f"Created: {hap_path}")
    print(f"  Size: {os.path.getsize(hap_path):,} bytes")
    print(f"  Contents: {', '.join(['module.json', 'resources.index', 'resources/base/media/app_icon.png', 'resources/base/element/string.json'])}")

    # Verify ZIP structure
    with zipfile.ZipFile(hap_path, "r") as zf:
        names = zf.namelist()
        print(f"  ZIP entries: {names}")

    return hap_path


def main():
    parser = argparse.ArgumentParser(description="Build minimal OHOS entry.hap for launcher icon")
    parser.add_argument("apk", help="Android APK path")
    parser.add_argument("pkg", help="Package name (e.g. com.example.app)")
    parser.add_argument("name", help="Display name (e.g. My App)")
    parser.add_argument("out", nargs="?", default=".", help="Output directory")
    args = parser.parse_args()

    if not os.path.exists(args.apk):
        print(f"ERROR: APK not found: {args.apk}")
        sys.exit(1)

    hap = build_entry_hap(args.apk, args.pkg, args.name, args.out)
    print(f"\nDeployment:")
    print(f"  export PATH=\"$HOME/.local/openharmony-tools/bin:$PATH\"")
    print(f"  hdc file send {hap} /data/app/el1/bundle/public/{args.pkg}/entry.hap")
    print(f"  hdc shell \"rm -f /data/app/el1/100/database/com.ohos.launcher/phone_launcher/rdb/Launcher.db*\"")
    print(f"  hdc shell \"stop com.ohos.launcher && start com.ohos.launcher\"")


if __name__ == "__main__":
    main()
