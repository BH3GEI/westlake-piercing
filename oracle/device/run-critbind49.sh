#!/system/bin/sh
S=/data/local/tmp/westlake-dayu600-substrate
ln -sfn "$S" /data/local/tmp/westlake-dayu600 2>/dev/null
export ANDROID_ROOT=$S/android ANDROID_DATA=$S/android-data ANDROID_EXPAND=$S/expand
export BOOTCLASSPATH=$S/android/framework/core-libart.jar:$S/android/framework/core-oj.jar:$S/android/framework/framework.jar
export CLASSPATH=$S/apks/dayu600-apk-probe.dex
export LD_LIBRARY_PATH=$S/art:$S/android/lib64:$S/probes:$S/android/lib64/sidecars:$S/compat:/system/lib64:/system/lib64/platformsdk:/system/lib64/chipset-sdk-sp
export LD_PRELOAD=$S/probes/libwestlake_embedded_art_dlopen_probe.so
export WESTLAKE_ROOT=$S WESTLAKE_LAYOUT=substrate
export WESTLAKE_DLOPEN_ON_LOAD=1 WESTLAKE_CREATE_VM=1
export WESTLAKE_STAGE=uptodownProbe WESTLAKE_SUBSTAGE=critbind49 WESTLAKE_NO_EXIT=1
export WESTLAKE_OMIT_FRAMEWORK_SHIM=1 WESTLAKE_LOAD_COMPAT_STUBS=1
rm -f /data/local/tmp/critbind49-*.txt /data/local/tmp/westlake-embedded-art-dlopen-probe.log
cp -f $S/probes/libwestlake_embedded_art_dlopen_probe.so /data/local/tmp/w1.so 2>/dev/null
exec /system/bin/toybox true
