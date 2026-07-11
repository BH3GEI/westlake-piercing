#!/system/bin/sh
# W-004 / wall #53 — color-apk on panel, ISOLATED lane on 5ce (private root only).
# A real Android APK (com.westlake.colorapk.ColorView, loaded from color-smoke.apk's OWN
# dex) paints a CHANGING pure color via Canvas.drawColor -> RenderNode -> our libhwui ->
# OHOS RSSurfaceNode(display 0). egl_interposer captures the pre-swap center pixel; the
# probe writes /data/local/tmp/color-smoke-{result,pixels}.txt for oracle/verify/color-smoke-5ce.sh.
#
# ISOLATION: S is the private root /data/local/tmp/wl-color-codex. android/compat/apks/probes
# entries there are read-only symlinks into the baseline substrate EXCEPT art/ + apks/ real
# files we deployed (ART dc1d5e82, renderer.so a194f9e6, probe.dex 46041825, color.apk 082559ae).
# We NEVER write to the baseline /data/local/tmp/westlake-dayu600-substrate.
S=/data/local/tmp/wl-color-codex
ln -sfn "$S" /data/local/tmp/westlake-dayu600 2>/dev/null
export ANDROID_ROOT=$S/android ANDROID_DATA=$S/android-data ANDROID_EXPAND=$S/expand
export ANDROID_STORAGE=$S/storage EXTERNAL_STORAGE=$S/storage/emulated/0
export ANDROID_ART_ROOT=$S/android/apex/com.android.art
export ANDROID_I18N_ROOT=$S/android/apex/com.android.i18n
export ANDROID_TZDATA_ROOT=$S/android/apex/com.android.tzdata
export APEX_ROOT=$S/android/apex
# $S/art first so renderer.so + libwestlake_art.so resolve from the private root; libhwui/
# libandroid(fake)/libEGL from $S/android/lib64 (symlink -> baseline). Same order as fontsmoke.
export LD_LIBRARY_PATH=$S/art:$S/android/lib64:$S/probes:$S/android/lib64/sidecars:$S/compat:/system/lib64:/system/lib64/platformsdk:/system/lib64/chipset-sdk-sp
export LD_PRELOAD=$S/probes/libwestlake_embedded_art_dlopen_probe.so
export WESTLAKE_ROOT=$S WESTLAKE_LAYOUT=substrate
export WESTLAKE_DLOPEN_ON_LOAD=1 WESTLAKE_CREATE_VM=1
# Route to the Java colorApk stage (runResolved checks WESTLAKE_SUBSTAGE first).
export WESTLAKE_STAGE=uptodownProbe WESTLAKE_SUBSTAGE=colorApk WESTLAKE_NO_EXIT=1
export WESTLAKE_OMIT_FRAMEWORK_SHIM=1 WESTLAKE_LOAD_COMPAT_STUBS=1
# R1 FIX: dlopen renderer.so RTLD_GLOBAL BEFORE the stage so its egl_interposer/skia_interposer
# win global-scope PLT resolution over libEGL/libskia when libhwui swaps (System.loadLibrary is
# RTLD_LOCAL and would NOT preempt -> no pixel capture). beforeStage = after VM/startReg, before
# Dayu600ApkStageProbe runs. HWUI_STOP_AT unset -> default 1000 -> all 54 registrars (0/50/51/53
# essential for color) bind; hard-skip only ,4,52, (OHOS-absent AHardwareBuffer JNI).
export WESTLAKE_LOAD_HEAVY_BRIDGE=1 WESTLAKE_HEAVY_BRIDGE_TIMING=beforeStage
export WESTLAKE_HEAVY_BRIDGE_PATH=$S/art/libwestlake_upscreen_renderer.so
# Clear prior color-run artifacts + stale stage/trace logs so nothing masquerades as this run.
rm -f /data/local/tmp/color-smoke-result.txt /data/local/tmp/color-smoke-pixels.txt
rm -f /data/local/tmp/color-*.txt /data/local/tmp/colorapk-stdout.txt
rm -f /data/local/tmp/westlake-embedded-art-dlopen-probe.log
rm -f "$S/apks/probe-logs/runresolved-entry.txt" 2>/dev/null
/system/bin/toybox true > /data/local/tmp/colorapk-stdout.txt 2>&1
echo "RC=$?"
