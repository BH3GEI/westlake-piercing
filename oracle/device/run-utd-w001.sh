#!/system/bin/sh
# Board-side W-001 launcher. Deploy explicitly; atom-43.sh refuses a hash mismatch.
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
export WESTLAKE_STAGE=uptodownProbe WESTLAKE_NO_EXIT=1
export WESTLAKE_OMIT_FRAMEWORK_SHIM=1 WESTLAKE_LOAD_COMPAT_STUBS=1
rm -f /data/local/tmp/westlake-embedded-art-dlopen-probe.log
rm -f /data/local/tmp/uptodown-early.txt /data/local/tmp/uptodown-crash.txt
rm -f $S/apks/probe-logs/uptodown-probe.txt
rm -f /data/local/tmp/w001-trace.txt /data/local/tmp/w001-syslib.txt
mkdir -p $S/apks/probe-logs
# W-001: short-path copy of the sidecar (<=22 chars) so the probe can register it as a
# null-loader system JNI library via JavaVMExt::LoadNativeLibrary using a libc++ SSO
# std::string (the long-string cap-encoding is ABI-fragile). Content == the hash-locked
# probes/ copy; the constructor re-entry guard makes this second load a no-op.
cp -f $S/probes/libwestlake_embedded_art_dlopen_probe.so /data/local/tmp/w1.so 2>/dev/null
# Correct entry: toybox + LD_PRELOAD lets the constructor create the VM.
/system/bin/toybox true
