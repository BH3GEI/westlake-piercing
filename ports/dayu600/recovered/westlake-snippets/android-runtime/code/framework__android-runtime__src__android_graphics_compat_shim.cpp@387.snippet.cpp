// the entire oh_window_manager_client header chain into compat_shim.
//
// 2026-05-02 G2.14r: these two symbols live in liboh_adapter_bridge.so but
// are referenced from liboh_android_runtime.so (this file).  Cross-.so
// link-time linkage is not declared (bridge.so is loaded later by JNI_OnLoad
// on adapter side), so resolve dynamically via dlsym to avoid "symbol not
// found" at dlopen of liboh_android_runtime.so.  Cached after first lookup.
#include <dlfcn.h>
typedef void* (*oh_wm_get_native_window_fn_t)(int32_t);
typedef int32_t (*oh_wm_get_last_session_fn_t)();
static oh_wm_get_native_window_fn_t g_oh_wm_get_native_window_fn = nullptr;
static oh_wm_get_last_session_fn_t  g_oh_wm_get_last_session_fn  = nullptr;
static void resolve_oh_wm_funcs() {
    static bool s_logged = false;
    if (g_oh_wm_get_native_window_fn && g_oh_wm_get_last_session_fn) return;
 
    // 2026-05-09 G2.14ac: previous code used dlsym(RTLD_DEFAULT, ...) which on
    // OH only searches the caller's linker namespace and the main executable
    // (appspawn-x). The target symbols live in liboh_adapter_bridge.so which
    // lives in a different namespace, so RTLD_DEFAULT misses them ??dlerror
    // confirmed: "Symbol not found ... so=/system/bin/appspawn-x".
    //
    // Fix: dlopen the bridge .so explicitly to obtain a per-namespace handle,
    // then dlsym against that handle. RTLD_NOLOAD first to reuse the already-
    // loaded image (OHEnvironment static init loaded it earlier on the adapter
