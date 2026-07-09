#!/usr/bin/env python3
"""
Audio-A16 framework patcher — pure-Python, no bash function ordering bugs.
Applies gate2 (AudioFocus→GRANTED) + 7-gap audio-init crash-chain
to framework.jar 8c377c13 using pre-staged smali patches + dexlib2.

Usage:
    python3 apply_audio_patches.py [framework.jar path]
    # Without arg: pulls from 5ce2dcee via hdc
"""
import subprocess, sys, os, zipfile, shutil, tempfile, hashlib, re, glob

JAVA_HOME = "/opt/homebrew/Cellar/openjdk/25.0.2/libexec/openjdk.jdk/Contents/Home"
JAVA_BIN = f"{JAVA_HOME}/bin/java"
ANDROID_SDK = os.path.expanduser("~/Library/Android/sdk")
SMALI_BASE = f"{ANDROID_SDK}/cmdline-tools/latest/lib/external/com/android/tools/smali"
DEXLIB2_JAR = f"{SMALI_BASE}/smali-dexlib2/3.0.9/smali-dexlib2-3.0.9.jar"
BAKSMALI_JAR = f"{SMALI_BASE}/smali-baksmali/3.0.9/smali-baksmali-3.0.9.jar"
SMALI_ASM_JAR = "/Users/yao/westlake-piercing/scratchpad-shared/tools-smali/smali-2.5.2.jar"
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
PATCH_SMALI_DIR = os.path.join(SCRIPT_DIR, "framework-smali/crashchain/smali")
PATCH_SRC_DIR = os.path.join(SCRIPT_DIR, "framework-smali")
GATE2_SRC = os.path.join(PATCH_SRC_DIR, "PatchReturnOne.java")
LOADLIB_SRC = os.path.join(PATCH_SRC_DIR, "PatchLoadLibrary.java")
CRASHPATCH_DIR = os.path.join(PATCH_SRC_DIR, "crashchain/patchers")
CLASSES_OUT = os.path.join(PATCH_SRC_DIR, ".classes")
HDC = "/Users/yao/.local/openharmony-tools/bin/hdc"
BOARD_JAR = "/system/framework/framework.jar"
BOARD = "5ce2dcee"
EXPECT_MD5 = "8c377c13"

def run(cmd, **kwargs):
    print(f"  $ {cmd[0] if isinstance(cmd, list) else cmd}")
    r = subprocess.run(cmd, **kwargs)
    if r.returncode != 0 and kwargs.get('check', True):
        print(f"  !! exit {r.returncode}")
        print(r.stderr[:500] if r.stderr else "")
        sys.exit(r.returncode)
    return r

def md5file(path):
    return hashlib.md5(open(path,'rb').read()).hexdigest()

def java(cp, main, *args):
    cmd = [JAVA_BIN, "-cp", cp, main] + list(args)
    return run(cmd, capture_output=True, text=True)

def baksmali_list_classes(dex):
    cp = f"{DEXLIB2_JAR}:{BAKSMALI_JAR}"
    cp_guava = f"{cp}:{ANDROID_SDK}/cmdline-tools/latest/lib/external/com/google/guava/guava/33.3.1-jre/guava-33.3.1-jre.jar"
    cp_jc = f"{cp_guava}:{ANDROID_SDK}/cmdline-tools/latest/lib/external/com/beust/jcommander/1.78/jcommander-1.78.jar"
    r = subprocess.run([JAVA_BIN, "-cp", cp_jc,
        "com.android.tools.smali.baksmali.Main", "list", "classes", dex],
        capture_output=True, text=True)
    if r.returncode != 0:
        return []
    return [l.strip() for l in r.stdout.splitlines() if l.strip()]

def baksmali_disassemble(dex, out_dir):
    cp = f"{DEXLIB2_JAR}:{BAKSMALI_JAR}"
    cp_guava = f"{cp}:{ANDROID_SDK}/cmdline-tools/latest/lib/external/com/google/guava/guava/33.3.1-jre/guava-33.3.1-jre.jar"
    cp_jc = f"{cp_guava}:{ANDROID_SDK}/cmdline-tools/latest/lib/external/com/beust/jcommander/1.78/jcommander-1.78.jar"
    run([JAVA_BIN, "-cp", cp_jc,
        "com.android.tools.smali.baksmali.Main", "d", "-o", out_dir, dex])

def smali_assemble(smali_dir, out_dex):
    run([JAVA_BIN, "-jar", SMALI_ASM_JAR, "a", "-o", out_dex, smali_dir])

def find_dex_containing(dexes, class_desc):
    """Return (dex_path, class_path_in_baksmali) for the class."""
    for dex in dexes:
        classes = baksmali_list_classes(dex)
        if class_desc in classes:
            # map to baksmali path: Lcom/foo/Bar; -> com/foo/Bar.smali
            path = class_desc.rstrip(';').lstrip('L').replace('.', '/') + '.smali'
            return dex, path
    return None, None

# ---- smali patch targets (file -> target class descriptor) ----
SMALI_PATCHES = {
    "android_app_PendingIntent.smali":                   "Landroid/app/PendingIntent;",
    "android_app_SystemServiceRegistry$7.smali":        "Landroid/app/SystemServiceRegistry;",
    "android_app_SystemServiceRegistry$88.smali":        None,  # $88 ordinal unknown, skip for now
    "android_content_pm_ShortcutManager.smali":          "Landroid/content/pm/ShortcutManager;",
    "android_hardware_display_DisplayManagerGlobal.smali": "Landroid/hardware/display/DisplayManagerGlobal;",
    "android_media_MediaRouter$Static.smali":             "Landroid/media/MediaRouter;",
    "android_media_audiopolicy_AudioProductStrategy.smali": "Landroid/media/audiopolicy/AudioProductStrategy;",
    "android_media_audiopolicy_AudioVolumeGroup.smali":   "Landroid/media/audiopolicy/AudioVolumeGroup;",
    "android_media_session_MediaSession.smali":           "Landroid/media/session/MediaSession;",
}

# Gate2: AudioManager.requestAudioFocus -> return 1 (stub)
GATE2_CLASS = "Landroid/media/AudioManager;"
GATE2_METHOD = "requestAudioFocus"
GATE2_SMALI = """# gate2: force AudioFocus GRANTED
# Patched method — replaces invoke with const/1 + return
.method public requestAudioFocus(Landroid/audiofocus/AudioFocusRequest;)I
    .registers 2
    const/4 v0, 0x1
    return v0
.end method
"""

# LoadLibrary: ActivityThread.main -> load gate1 .so
LOADLIB_SMALI = """# gate1 loader: load oh_inproc_service early
.method public static main([Ljava/lang/String;)V
    .registers 3
    const-string/jumbo v0, "oh_inproc_service"
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    .locals 1
    return-void
.end method
"""

def main():
    work = tempfile.mkdtemp(prefix="fw_patch_")
    print(f"[patcher] workdir: {work}")
    jar = sys.argv[1] if len(sys.argv) > 1 else None

    if not jar:
        print(f"[patcher] pulling framework.jar from board {BOARD}")
        run([HDC, "-t", BOARD, "file", "recv", BOARD_JAR, f"{work}/framework.jar"])
        jar = f"{work}/framework.jar"
    else:
        print(f"[patcher] using local jar: {jar}")

    got_md5 = md5file(jar)
    print(f"[patcher] jar md5={got_md5} (expect {EXPECT_MD5}*)")
    if not got_md5.startswith(EXPECT_MD5):
        print(f"  !! md5 mismatch — stop")
        sys.exit(1)

    # Extract dexes
    dex_dir = f"{work}/dexes"
    os.makedirs(dex_dir)
    run(["unzip", "-q", jar, "classes*.dex", "-d", dex_dir])
    dexes = sorted(glob.glob(f"{dex_dir}/classes*.dex"))
    print(f"[patcher] found {len(dexes)} dex files: {[os.path.basename(d) for d in dexes]}")

    # Find which dex holds each target
    targets = {
        "PendingIntent":    "Landroid/app/PendingIntent;",
        "MediaSession":     "Landroid/media/session/MediaSession;",
        "AudioProductStrategy": "Landroid/media/audiopolicy/AudioProductStrategy;",
        "AudioVolumeGroup": "Landroid/media/audiopolicy/AudioVolumeGroup;",
        "DisplayManagerGlobal": "Landroid/hardware/display/DisplayManagerGlobal;",
        "MediaRouter$Static": "Landroid/media/MediaRouter;",
        "ShortcutManager":  "Landroid/content/pm/ShortcutManager;",
        "SystemServiceRegistry": "Landroid/app/SystemServiceRegistry;",
        "AudioManager":     "Landroid/media/AudioManager;",
    }

    print("[patcher] locating target classes in dexes...")
    dex_map = {}  # class_desc -> (dex_path, baksmali_path)
    for name, desc in targets.items():
        for dex in dexes:
            classes = baksmali_list_classes(dex)
            if desc in classes:
                path = desc.rstrip(';').lstrip('L').replace('.', '/') + '.smali'
                dex_map[desc] = (dex, path)
                print(f"  {name}: {os.path.basename(dex)}")
                break
        else:
            print(f"  {name}: NOT FOUND in any dex")

    # Disassemble all dexes to temp dirs
    print("[patcher] baksmali disassembling all dexes...")
    baksmali_dirs = {}  # dex -> baksmali_out_dir
    for dex in dexes:
        out = f"{work}/baksmali_{os.path.basename(dex)}"
        os.makedirs(out)
        baksmali_disassemble(dex, out)
        baksmali_dirs[dex] = out
        print(f"  {os.path.basename(dex)} -> {out}")

    patched = []
    # ---- Apply smali patches ----
    print("[patcher] applying smali patches...")
    for fname, desc in SMALI_PATCHES.items():
        if desc is None:
            print(f"  {fname}: skipped ($88 ordinal unknown)")
            continue
        if desc not in dex_map:
            print(f"  {fname}: target {desc} not in jar, skipping")
            continue
        src = os.path.join(PATCH_SMALI_DIR, fname)
        if not os.path.exists(src):
            print(f"  !! {src} not found, skipping")
            continue
        dex, bpath = dex_map[desc]
        target = os.path.join(baksmali_dirs[dex], bpath)
        if not os.path.exists(target):
            print(f"  !! {target} not found, skipping {fname}")
            continue
        shutil.copy2(src, target)
        print(f"  {fname} -> {os.path.basename(dex)}/{bpath}")
        patched.append(dex)

    # ---- Apply gate2: AudioFocus -> return 1 ----
    print("[patcher] applying gate2 (AudioFocus->1)...")
    if GATE2_CLASS in dex_map:
        dex, bpath = dex_map[GATE2_CLASS]
        target = os.path.join(baksmali_dirs[dex], bpath)
        with open(target) as f:
            content = f.read()
        # Find requestAudioFocus methods and add our patched override
        # Strategy: after the class header, inject a const/1 return stub
        # We'll patch by replacing invoke_virtual with return-1 for all requestAudioFocus
        # More surgical: find "requestAudioFocus" in the smali and patch the method body
        # For now: rewrite the entire class's requestAudioFocus methods to return 1
        new_methods = []
        # Simple approach: add a patched method before the original
        patched_method = """
# === PATCHED: returns GRANTED (1) always ===
.method public static requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    .registers 3
    const/4 v0, 0x1
    return v0
.end method

.method public requestAudioFocus(Landroid/audiofocus/AudioFocusRequest;)I
    .registers 2
    const/4 v0, 0x1
    return v0
.end method
"""
        content = content + patched_method
        with open(target, 'w') as f:
            f.write(content)
        print(f"  gate2 injected into {os.path.basename(dex)}/{bpath}")
        patched.append(dex)
    else:
        print(f"  !! AudioManager not found, gate2 SKIPPED")

    # ---- Assemble patched dexes ----
    print("[patcher] smali assembling patched dexes...")
    for dex in set(patched):
        out_dex = f"{work}/{os.path.basename(dex)}"
        smali_dir = baksmali_dirs[dex]
        smali_assemble(smali_dir, out_dex)
        print(f"  {smali_dir} -> {out_dex}")

    # ---- Repackage ----
    out_jar = jar.replace('.jar', '.patched.jar')
    if os.path.exists(out_jar):
        os.remove(out_jar)
    print(f"[patcher] repackaging to {out_jar}")
    with zipfile.ZipFile(out_jar, 'w', zipfile.ZIP_DEFLATED) as zf:
        # Include all original files from jar except classes*.dex
        with zipfile.ZipFile(jar, 'r') as orig:
            for item in orig.namelist():
                if item.startswith('classes') and item.endswith('.dex'):
                    continue  # replace with patched
                data = orig.read(item)
                zf.writestr(item, data)
        # Write patched dexes
        for dex in set(patched):
            data = open(f"{work}/{os.path.basename(dex)}",'rb').read()
            zf.writestr(os.path.basename(dex), data)
        # Copy unpatched dexes unchanged
        for dex in dexes:
            if dex not in set(patched):
                data = open(dex,'rb').read()
                zf.writestr(os.path.basename(dex), data)

    final_md5 = md5file(out_jar)
    print(f"[patcher] DONE: {out_jar}")
    print(f"[patcher] md5={final_md5}")
    if final_md5 == got_md5:
        print("  !! WARNING: output identical to input — patches may not have changed bytecode")

    shutil.rmtree(work)
    print(f"[patcher] deploy: hdc file send {out_jar} /system/framework/framework.jar (after mount -o rw,remount /)")

if __name__ == "__main__":
    main()
