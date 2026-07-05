# Minimal AssetManager JNI — implementation plan (next focused pass)

The full AOSP `core/jni/android_util_AssetManager.cpp` pulls a deep, version-inconsistent
chain (nativehelper JNIPlatformHelp ↔ aosp11 JNIHelp redefinitions → NDK → android_runtime
→ GraphicsJNI). Instead, hand-write a minimal JNI that calls the ALREADY-COMPILED
AssetManager2/ApkAssets C++ API (21 .o in `$L/androidfw-build/obj`) with just `<jni.h>`.

## Java-side native signatures (from AOSP-15 framework.jar sources, fetched to $L/java-src)

`android.content.res.ApkAssets`:
```
private static native long nativeLoad(int format, String path, int flags, long assetsProvider);
private static native long nativeLoadFd(int format, FileDescriptor fd, String friendlyName, int flags, long ap);
private static native void nativeDestroy(long ptr);
private static native String nativeGetAssetPath(long ptr);
```
`android.content.res.AssetManager`:
```
private static native long nativeCreate();
private static native void nativeDestroy(long ptr);
private static native void nativeSetApkAssets(long ptr, ApkAssets[] apkAssets, boolean invalidateCaches);
private static native void nativeSetConfigurations(long ptr, int[] configs (packed), boolean forceRefresh);
private static native long nativeOpenXmlAsset(long ptr, int cookie, String fileName);
private static native int  nativeGetResourceValue(long ptr, int resId, short density, TypedValue outValue, boolean resolveRefs);
private static native int  nativeGetResourceIdentifier(long ptr, String name, String defType, String defPackage);
private static native String nativeGetResourceName(long ptr, int resid);
... (resource bag / string-array / theme natives — add as the app needs them)
```
`android.content.res.XmlBlock` (for getLayout → inflater):
```
private static native long nativeCreate(byte[] data, int offset, int size);   // or from asset
private static native long nativeCreateParseState(long block, int resId);
private static native int  nativeNext(long state);
private static native int  nativeGetName(long state); ... getAttribute*, etc.
```

## C++ bridge mapping (use the compiled androidfw API)
- `ApkAssets.nativeLoad(path)` → `ApkAssets::LoadFromPath(path, flags)` → return `reinterpret_cast<jlong>(new ApkAssets ptr)` (ApkAssets is held by unique_ptr; keep a registry or return the raw guardedptr).
- `AssetManager.nativeCreate()` → `new AssetManager2()`.
- `AssetManager.nativeSetApkAssets(ptr, apkAssets[], inv)` → collect the ApkAssets* from the Java ApkAssets[] (each has its native ptr field), `am2->SetApkAssets({...}, inv)`.
- `AssetManager.nativeOpenXmlAsset(ptr, cookie, name)` → `am2->OpenNonAsset(name, cookie, Asset::ACCESS_RANDOM)` → wrap as ResXMLTree → return ptr for XmlBlock.
- `nativeGetResourceValue` → `am2->GetResource(resId, ...)` → fill TypedValue fields via JNI SetIntField/etc.

## Then
1. Build dep libs to LINK: compile libbase, libutils, libcutils, libziparchive (.o from
   aosp-15-src / aosp11) + a real libincfs (IncFsFileMap::Create/unsafe_data — fetch
   system/incremental_delivery incfs/incfs/*.cpp) OR stub IncFsFileMap with a plain mmap impl.
2. Link `libandroidfw.so` = 21 androidfw .o + minimal-JNI .o + dep .o, `-shared`.
3. Load it in the app process (System.load) so JNI_OnLoad RegisterNatives the AssetManager/
   ApkAssets/XmlBlock natives against the framework.jar classes.
4. Re-run the `assetProbe` stage → should stop hard-crashing; `Resources.getLayout(2131492914)`
   should parse the real APK's layout XML.
5. Then real `LayoutInflater.inflate` → real DecorView → the already-built
   `libwestlake_view_renderer.so` → the real APK's UI on the DAYU600 panel.

Everything is prepped: 21 androidfw .o compiled, Java signatures fetched, C++ API + deps in place.
