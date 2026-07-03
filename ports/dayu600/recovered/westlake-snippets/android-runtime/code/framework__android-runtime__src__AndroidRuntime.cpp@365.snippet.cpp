                fprintf(stderr, "[liboh_android_runtime] dlopen %s FAIL: %s\n",
                        p, dlerror());
            }
        }
        if (hwui) {
            // 45 register_X mangled symbol names extracted from libhwui.so
            // dynsym table (`llvm-readelf --dyn-syms ... | grep register_android`).
            // Mangled names use Itanium C++ ABI:
            //   - `_Z<len>register_android_*P7_JNIEnv` for global-namespace fns
            //   - `_ZN7android<len>register_android_*EP7_JNIEnv` for android:: fns
            using RegFn = int (*)(JNIEnv*);
            struct HwuiReg { const char* name; const char* sym; };
            static const HwuiReg kHwuiRegFns[] = {
                // 2026-05-07 G2.14s: Graphics is registered below, AFTER ColorSpace,
                // matching AOSP frameworks/base/libs/hwui/apex/jni_runtime.cpp:104-109
                // canonical order (Canvas, ColorSpace, Graphics, Bitmap, ...).
                // History blame for the prior SKIP: see the larger comment at the
                // ColorSpace ??Graphics block below.
                {"BitmapFactory",                "_Z39register_android_graphics_BitmapFactoryP7_JNIEnv"},
                {"Matrix",                       "_ZN7android32register_android_graphics_MatrixEP7_JNIEnv"},
                {"BitmapRegionDecoder",          "_Z45register_android_graphics_BitmapRegionDecoderP7_JNIEnv"},
                {"Interpolator",                 "_Z38register_android_graphics_InterpolatorP7_JNIEnv"},
                {"CreateJavaOutputStreamAdaptor","_Z55register_android_graphics_CreateJavaOutputStreamAdaptorP7_JNIEnv"},
                {"PathMeasure",                  "_ZN7android37register_android_graphics_PathMeasureEP7_JNIEnv"},
                {"GraphicsStatsService",         "_Z46register_android_graphics_GraphicsStatsServiceP7_JNIEnv"},
