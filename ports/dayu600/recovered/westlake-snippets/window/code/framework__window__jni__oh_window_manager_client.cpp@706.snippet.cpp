    return oh_adapter::OHWindowManagerClient::getInstance().getOhNativeWindow(sessionId);
}
 
// 2026-05-02 G2.14r: cross-process "last touched session" hint.  Used by
// BBQ_nativeUpdate when its SurfaceControl carries no sessionId (avoids the
// need for a BCP-class native method to attach session, which would require
// boot image rebuild on every change).  Each child appspawn-x process spawns
// one app with one session, so a process-global last-session is unambiguous.
namespace {
std::atomic<int32_t> g_lastAttachedSession{0};
}  // namespace
extern "C" __attribute__((visibility("default")))
int32_t oh_wm_get_last_session() {
    return g_lastAttachedSession.load(std::memory_order_acquire);
}
extern "C" __attribute__((visibility("default")))
void oh_wm_set_last_session(int32_t sessionId) {
    OH_BR_IPC_SCOPE("oh_wm_set_last_session", "session=%{public}d", sessionId);
    g_lastAttachedSession.store(sessionId, std::memory_order_release);
}
 
// 2026-05-06 ??Per design ?5.6 / ?9.1 ?????condition #3:
//   Cross-.so C wrappers so liboh_android_runtime.so::android_view_SurfaceControl.cpp
//   (in a different .so) can route SurfaceControl property setters and apply()
//   into RSSurfaceNode + RSTransactionProxy without link-time dependency.
