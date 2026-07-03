// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__android-runtime__src__AndroidRuntime.cpp@365.html
// title: p1612 framework/android-runtime/src/AndroidRuntime.cpp:365

  353:                 fprintf(stderr, "[liboh_android_runtime] dlopen %s FAIL: %s\n",
  354:                         p, dlerror());
  355:             }
  356:         }
  357:         if (hwui) {
  358:             // 45 register_X mangled symbol names extracted from libhwui.so
  359:             // dynsym table (`llvm-readelf --dyn-syms ... | grep register_android`).
  360:             // Mangled names use Itanium C++ ABI:
  361:             //   - `_Z<len>register_android_*P7_JNIEnv` for global-namespace fns
  362:             //   - `_ZN7android<len>register_android_*EP7_JNIEnv` for android:: fns
  363:             using RegFn = int (*)(JNIEnv*);
  364:             struct HwuiReg { const char* name; const char* sym; };
  365:             static const HwuiReg kHwuiRegFns[] = {
  366:                 // 2026-05-07 G2.14s: Graphics is registered below, AFTER ColorSpace,
  367:                 // matching AOSP frameworks/base/libs/hwui/apex/jni_runtime.cpp:104-109
  368:                 // canonical order (Canvas, ColorSpace, Graphics, Bitmap, ...).
  369:                 // History blame for the prior SKIP: see the larger comment at the
  370:                 // ColorSpace ??Graphics block below.
  371:                 {"BitmapFactory",                "_Z39register_android_graphics_BitmapFactoryP7_JNIEnv"},
  372:                 {"Matrix",                       "_ZN7android32register_android_graphics_MatrixEP7_JNIEnv"},
  373:                 {"BitmapRegionDecoder",          "_Z45register_android_graphics_BitmapRegionDecoderP7_JNIEnv"},
  374:                 {"Interpolator",                 "_Z38register_android_graphics_InterpolatorP7_JNIEnv"},
  375:                 {"CreateJavaOutputStreamAdaptor","_Z55register_android_graphics_CreateJavaOutputStreamAdaptorP7_JNIEnv"},
  376:                 {"PathMeasure",                  "_ZN7android37register_android_graphics_PathMeasureEP7_JNIEnv"},
  377:                 {"GraphicsStatsService",         "_Z46register_android_graphics_GraphicsStatsServiceP7_JNIEnv"},
