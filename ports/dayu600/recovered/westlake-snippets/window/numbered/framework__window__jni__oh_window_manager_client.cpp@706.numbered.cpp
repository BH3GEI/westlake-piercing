// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\16.12\framework__window__jni__oh_window_manager_client.cpp@706.html
// title: 16.12 framework/window/jni/oh_window_manager_client.cpp:706

  694:     return oh_adapter::OHWindowManagerClient::getInstance().getOhNativeWindow(sessionId);
  695: }
  696:  
  697: // 2026-05-02 G2.14r: cross-process "last touched session" hint.  Used by
  698: // BBQ_nativeUpdate when its SurfaceControl carries no sessionId (avoids the
  699: // need for a BCP-class native method to attach session, which would require
  700: // boot image rebuild on every change).  Each child appspawn-x process spawns
  701: // one app with one session, so a process-global last-session is unambiguous.
  702: namespace {
  703: std::atomic<int32_t> g_lastAttachedSession{0};
  704: }  // namespace
  705: extern "C" __attribute__((visibility("default")))
  706: int32_t oh_wm_get_last_session() {
  707:     return g_lastAttachedSession.load(std::memory_order_acquire);
  708: }
  709: extern "C" __attribute__((visibility("default")))
  710: void oh_wm_set_last_session(int32_t sessionId) {
  711:     OH_BR_IPC_SCOPE("oh_wm_set_last_session", "session=%{public}d", sessionId);
  712:     g_lastAttachedSession.store(sessionId, std::memory_order_release);
  713: }
  714:  
  715: // 2026-05-06 ??Per design ?5.6 / ?9.1 ?????condition #3:
  716: //   Cross-.so C wrappers so liboh_android_runtime.so::android_view_SurfaceControl.cpp
  717: //   (in a different .so) can route SurfaceControl property setters and apply()
  718: //   into RSSurfaceNode + RSTransactionProxy without link-time dependency.
