# DALVIKVM BOOT IMAGE MISMATCH — Root Cause & Workaround
## Agent-D3 (2026-07-09)

---

## Symptoms

```
[RT] Appending classpath entry to boot classpath: /data/local/tmp/ivs-classes.jar
[IMG] LoadBootImage entered, image_locations=0
nullptr W ... Can't mmap dex file ...framework.jar!classes.dex directly
nullptr W ... Can't mmap dex file ...framework.jar!classes2.dex directly
...
nullptr F ... Check failed: java_lang_Object->IsFinalizable()
Runtime aborting...
Signal 6
```

dalvikvm aborts during boot image loading, before any Java code runs.

---

## Root Cause

The `wl-imgboot` dalvikvm binary was compiled and linked against OHOS system libraries
on the board. It loads `/data/local/tmp/wl-imgboot/boot/arm64/boot.art` as the boot
image, which was compiled from:

- `/data/local/tmp/wl-imgboot/jars/core-oj.jar`
- `/data/local/tmp/wl-imgboot/jars/core-libart.jar`

The boot image contains compiled `java.lang.Object` (and other boot classes).

When we run with:
```
-Xbootclasspath:/data/local/tmp/westlake-dayu600-substrate/android/framework/framework.jar
```

The **substrate framework.jar** (different version/build) defines `java.lang.Object` with a
different internal layout. The boot image's `Object::IsFinalizable()` vtable entry no longer
matches what the framework expects → `Check failed: java_lang_Object->IsFinalizable()`.

This is a **fundamental version mismatch** between:
- The boot image (`wl-imgboot` build)
- The framework JAR (substrate, different Android version)

---

## Diagnosis Evidence

| Path | Contents |
|------|----------|
| `/data/local/tmp/wl-imgboot/boot/arm64/boot.art` | Boot image from `wl-imgboot/jars/` |
| `/data/local/tmp/wl-imgboot/jars/core-oj.jar` | Boot classpath JAR (boot image source) |
| `/data/local/tmp/westlake-dayu600-substrate/android/framework/framework.jar` | Substrate framework (md5 8c377c13 = Android 16 BAKLAVA) |

The `wl-imgboot` was built on an earlier date (all files dated 1970-01-01) than the substrate
deployment (dated 2026-07-08). They are from **different Android builds**.

---

## Why 5ce2dcee Doesn't Have This Problem

The **imageless** ART mode (no boot image) on 5ce2dcee:
- dalvikvm started with NO `-Xbootclasspath` or with system bootclasspath
- No pre-compiled boot image → classes loaded from framework at runtime
- No version mismatch because there's no boot image to mismatch

The wl-imgboot dalvikvm is designed for **image-based** mode (it has a boot image),
but the substrate framework doesn't match that boot image.

---

## Workaround Options

### Option A: Use imageless mode (recommended)
Run dalvikvm WITHOUT the wl-imgboot boot image:

```sh
/data/local/tmp/wl-imgboot/dalvikvm \
  -Ximage:none \
  -Xbootclasspath:/data/local/tmp/westlake-dayu600-substrate/android/framework/framework.jar:/data/local/tmp/westlake-dayu600-substrate/android/framework/core-jars/core-oj-fieldfix.jar:/data/local/tmp/westlake-dayu600-substrate/android/framework/core-jars/core-libart.jar \
  -classpath /data/local/tmp/ivs-classes.jar \
  adapter.window.InputVerifyStage
```

The `-Ximage:none` flag tells ART to skip loading the boot image entirely.
All classes (including `java.lang.Object`) are loaded from the framework JAR at runtime.
No version mismatch possible.

### Option B: Rebuild boot image from substrate
Use `dex2oat` from the substrate to recompile the boot image from the substrate's
core jars. Requires:
1. `dex2oat` binary (from substrate or wl-imgboot)
2. Substrate's `core-oj-fieldfix.jar` as source
3. Matching instruction set and base address

```sh
/data/local/tmp/westlake-boot-workdir/bin/dex2oat \
  --android-root=/system \
  --runtime-arg -Xverify:none \
  --runtime-arg -Xmx850m \
  --base=0x70000000 \
  --dex-file=/data/local/tmp/westlake-dayu600-substrate/android/framework/core-jars/core-oj-fieldfix.jar \
  --dex-file=/data/local/tmp/westlake-dayu600-substrate/android/framework/core-jars/core-libart.jar \
  --instruction-set=arm64 \
  --compiler-filter=verify \
  --image=/data/local/tmp/wl-imgboot/boot/arm64/boot.art
```

### Option C: Use substrate's native runtime
The substrate has its own OHOS-adapted ART. Check if there's a dalvikvm in the substrate:
```
/data/local/tmp/westlake-dayu600-substrate/android/bin/
```

If yes, use that dalvikvm with the substrate's framework and boot image together.

---

## Verification Steps (board recovery)

```sh
# 1. Try imageless mode first (safest)
hdc shell "
  /data/local/tmp/wl-imgboot/dalvikvm \
    -Ximage:none \
    -Xbootclasspath:/data/local/tmp/westlake-dayu600-substrate/android/framework/framework.jar:/data/local/tmp/westlake-dayu600-substrate/android/framework/core-jars/core-oj-fieldfix.jar:/data/local/tmp/westlake-dayu600-substrate/android/framework/core-jars/core-libart.jar \
    -classpath /data/local/tmp/ivs-classes.jar \
    adapter.window.InputVerifyStage
"

# 2. If that fails, check substrate dalvikvm
hdc shell "find /data/local/tmp/westlake-dayu600-substrate -name 'dalvikvm' -o -name 'app_process' 2>/dev/null"

# 3. Check framework version
hdc shell "unzip -l /data/local/tmp/westlake-dayu600-substrate/android/framework/framework.jar | head -5"
```

---

## Key Insight

**The wl-imgboot dalvikvm + boot.art + substrate framework.jar are from different Android builds.**
The boot image MUST match the framework. Either:
1. Use `-Ximage:none` to skip the mismatched boot image
2. Rebuild the boot image from the substrate's own core jars
3. Use the substrate's own dalvikvm if one exists

Do NOT mix wl-imgboot's boot image with the substrate's framework.jar.
