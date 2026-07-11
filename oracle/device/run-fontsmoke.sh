#!/system/bin/sh
# W-003 precursor / #51 de-risk: font/text native surface smoke in a PRISTINE VM.
# Same substrate/env as run-utd-w001.sh, but WESTLAKE_STAGE=fontsmoke so the probe touches
# Paint/Typeface FIRST-ever (poisoned-clinit constraint). Deploy dex + this launcher, then run.
S=/data/local/tmp/westlake-dayu600-substrate
ln -sfn "$S" /data/local/tmp/westlake-dayu600 2>/dev/null
export ANDROID_ROOT=$S/android ANDROID_DATA=$S/android-data ANDROID_EXPAND=$S/expand
export ANDROID_STORAGE=$S/storage EXTERNAL_STORAGE=$S/storage/emulated/0
export ANDROID_ART_ROOT=$S/android/apex/com.android.art
export ANDROID_I18N_ROOT=$S/android/apex/com.android.i18n
export ANDROID_TZDATA_ROOT=$S/android/apex/com.android.tzdata
export APEX_ROOT=$S/android/apex
export LD_LIBRARY_PATH=$S/art:$S/android/lib64:$S/probes:$S/android/lib64/sidecars:$S/compat:/system/lib64:/system/lib64/platformsdk:/system/lib64/chipset-sdk-sp
export LD_PRELOAD=$S/probes/libwestlake_embedded_art_dlopen_probe.so
export WESTLAKE_ROOT=$S WESTLAKE_LAYOUT=substrate
export WESTLAKE_DLOPEN_ON_LOAD=1 WESTLAKE_CREATE_VM=1
# Sidecar only routes stage=uptodownProbe to the Java embeddedMain path; select fontsmoke via
# WESTLAKE_SUBSTAGE, which runResolved checks FIRST (before the theme oracle) → pristine VM.
export WESTLAKE_STAGE=uptodownProbe WESTLAKE_SUBSTAGE=fontsmoke WESTLAKE_NO_EXIT=1
export WESTLAKE_OMIT_FRAMEWORK_SHIM=1 WESTLAKE_LOAD_COMPAT_STUBS=1
# Clear prior fontsmoke artifacts + stale stage/trace logs so nothing masquerades as this run.
rm -f /data/local/tmp/fontsmoke-*.txt
rm -f /data/local/tmp/westlake-dayu600-substrate/apks/probe-logs/runresolved-entry.txt
rm -f /data/local/tmp/uptodown-early.txt
rm -f /data/local/tmp/westlake-embedded-art-dlopen-probe.log
cp -f $S/probes/libwestlake_embedded_art_dlopen_probe.so /data/local/tmp/w1.so 2>/dev/null
/system/bin/toybox true
