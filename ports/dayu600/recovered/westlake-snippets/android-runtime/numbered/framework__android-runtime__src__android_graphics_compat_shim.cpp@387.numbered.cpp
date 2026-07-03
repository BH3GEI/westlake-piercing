// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__android-runtime__src__android_graphics_compat_shim.cpp@387.html
// title: p1612 framework/android-runtime/src/android_graphics_compat_shim.cpp:387

  375: // the entire oh_window_manager_client header chain into compat_shim.
  376: //
  377: // 2026-05-02 G2.14r: these two symbols live in liboh_adapter_bridge.so but
  378: // are referenced from liboh_android_runtime.so (this file).  Cross-.so
  379: // link-time linkage is not declared (bridge.so is loaded later by JNI_OnLoad
  380: // on adapter side), so resolve dynamically via dlsym to avoid "symbol not
  381: // found" at dlopen of liboh_android_runtime.so.  Cached after first lookup.
  382: #include <dlfcn.h>
  383: typedef void* (*oh_wm_get_native_window_fn_t)(int32_t);
  384: typedef int32_t (*oh_wm_get_last_session_fn_t)();
  385: static oh_wm_get_native_window_fn_t g_oh_wm_get_native_window_fn = nullptr;
  386: static oh_wm_get_last_session_fn_t  g_oh_wm_get_last_session_fn  = nullptr;
  387: static void resolve_oh_wm_funcs() {
  388:     static bool s_logged = false;
  389:     if (g_oh_wm_get_native_window_fn && g_oh_wm_get_last_session_fn) return;
  390:  
  391:     // 2026-05-09 G2.14ac: previous code used dlsym(RTLD_DEFAULT, ...) which on
  392:     // OH only searches the caller's linker namespace and the main executable
  393:     // (appspawn-x). The target symbols live in liboh_adapter_bridge.so which
  394:     // lives in a different namespace, so RTLD_DEFAULT misses them ??dlerror
  395:     // confirmed: "Symbol not found ... so=/system/bin/appspawn-x".
  396:     //
  397:     // Fix: dlopen the bridge .so explicitly to obtain a per-namespace handle,
  398:     // then dlsym against that handle. RTLD_NOLOAD first to reuse the already-
  399:     // loaded image (OHEnvironment static init loaded it earlier on the adapter
