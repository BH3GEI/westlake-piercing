#!/system/bin/sh
# W-004 / triangle-apk on panel, ISOLATED lane on 5ce (private root only).
# A real Android APK (com.gltri.demo.TriangleView, loaded from triangle.apk's OWN dex) paints a
# RICH, ANTI-ALIASED, animated "aurora gauge" dashboard via Canvas FILL ops (drawColor backdrop +
# drawOval circles/rings/needle-dots + drawRoundRect cards/bars + drawRect panels) -> the app's
# RenderNode -> our libhwui (skia) -> OHOS RSSurfaceNode(display 0). egl_interposer captures the
# pre-swap center pixel; the probe writes /data/local/tmp/triangle-{result,pixels}.txt for
# oracle/verify/triangle-smoke-5ce.sh. FILL-only because this substrate's setStrokeWidth is an
# unhandled @CriticalNative that SIGBUSes, and drawCircle/drawArc/drawPath silently no-op (the op
# set is dispatch-bound by JNI shorty-arm — see memory substrate-canvas-op-shorty-map). This is
# the Android-APK twin of the OH-native GLES2 triangle .hap — real Android View/Canvas, not ArkUI.
#
# ISOLATION: S is the private root /data/local/tmp/wl-tri-codex, a cp -a clone of the color
# lane's root (android/compat/expand/storage stay read-only symlinks into the baseline
# substrate; art/ + probes/ are the same real runtime files). apks/ carries the NEW probe
# dex (9eb3a902, adds runTriangleApk) + triangle.apk (df405a0b). The frozen color lane
# (wl-color-codex, probe 46041825) is byte-for-byte untouched. We NEVER write to the baseline
# /data/local/tmp/westlake-dayu600-substrate.
S=/data/local/tmp/wl-tri-codex
ln -sfn "$S" /data/local/tmp/westlake-dayu600 2>/dev/null
export ANDROID_ROOT=$S/android ANDROID_DATA=$S/android-data ANDROID_EXPAND=$S/expand
export ANDROID_STORAGE=$S/storage EXTERNAL_STORAGE=$S/storage/emulated/0
export ANDROID_ART_ROOT=$S/android/apex/com.android.art
export ANDROID_I18N_ROOT=$S/android/apex/com.android.i18n
export ANDROID_TZDATA_ROOT=$S/android/apex/com.android.tzdata
export APEX_ROOT=$S/android/apex
# $S/art first so renderer.so + libwestlake_art.so resolve from the private root; libhwui/
# libandroid(fake)/libEGL from $S/android/lib64 (symlink -> baseline). Same order as color.
export LD_LIBRARY_PATH=$S/art:$S/android/lib64:$S/probes:$S/android/lib64/sidecars:$S/compat:/system/lib64:/system/lib64/platformsdk:/system/lib64/chipset-sdk-sp
export LD_PRELOAD=$S/probes/libwestlake_embedded_art_dlopen_probe.so
export WESTLAKE_ROOT=$S WESTLAKE_LAYOUT=substrate
export WESTLAKE_DLOPEN_ON_LOAD=1 WESTLAKE_CREATE_VM=1
# Route to the Java triangleApk stage (runResolved checks WESTLAKE_SUBSTAGE first).
export WESTLAKE_STAGE=uptodownProbe WESTLAKE_SUBSTAGE=triangleApk WESTLAKE_NO_EXIT=1
export WESTLAKE_OMIT_FRAMEWORK_SHIM=1 WESTLAKE_LOAD_COMPAT_STUBS=1
# dlopen renderer.so RTLD_GLOBAL BEFORE the stage so its egl_interposer/skia_interposer win
# global-scope PLT resolution over libEGL/libskia when libhwui swaps. beforeStage = after
# VM/startReg, before Dayu600ApkStageProbe runs. HWUI_STOP_AT unset -> all registrars bind.
export WESTLAKE_LOAD_HEAVY_BRIDGE=1 WESTLAKE_HEAVY_BRIDGE_TIMING=beforeStage
export WESTLAKE_HEAVY_BRIDGE_PATH=$S/art/libwestlake_upscreen_renderer.so
# Clear prior triangle-run artifacts + stale stage/trace logs so nothing masquerades as this run.
rm -f /data/local/tmp/triangle-result.txt /data/local/tmp/triangle-pixels.txt
rm -f /data/local/tmp/triangle-err.txt /data/local/tmp/tri-ladder.txt /data/local/tmp/triangle-stdout.txt
rm -f /data/local/tmp/westlake-embedded-art-dlopen-probe.log
# NOTE: probe-logs is a symlink into the read-only baseline substrate — do NOT rm through it.
/system/bin/toybox true > /data/local/tmp/triangle-stdout.txt 2>&1
echo "RC=$?"
