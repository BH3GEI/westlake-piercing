    // G2.14c ??legacy path uses IWindowManager.RemoveWindow + DestroyWindow.
    // sessionProxy is null in legacy path (V7-only field); skip Disconnect().
    if (connected_ && ssmProxy_ != nullptr) {
        auto wmsInterface = OHOS::iface_cast<OHOS::Rosen::IWindowManager>(ssmProxy_);
        if (wmsInterface) {
            wmsInterface->RemoveWindow(static_cast<uint32_t>(sessionId), true);
            wmsInterface->DestroyWindow(static_cast<uint32_t>(sessionId), false);
        }
    }
}
 
// 2026-05-19: visibility helpers ??call OH WMS RemoveWindow / AddWindow to
// hide / show, gated by per-session wmsShown bool to make the IPC idempotent.
// Mirrors ArkUI WindowImpl::Hide (line 2034) / Show (line 1972) ??keeps the
// adapter aligned with how OH native window clients toggle visibility.
//
// Design alternatives considered (see doc for full rationale):
//   A. Java-side Map<sessionId, Boolean> ??adapter Java state, fast, but extra
//      state to keep in sync.
//   B. Reflect AOSP ViewRootImpl.mAppVisible ??no adapter cache but fragile
//      (AOSP internal field name may change between API levels).
//   C. Call WMS RemoveWindow / AddWindow every relayout, let OH server's own
//      idempotency handle dups (WM_DO_NOTHING / WM_ERROR_INVALID_OPERATION).
//      No adapter state but adds binder IPC every relayout.
//   D. (chosen) In-App-process C++ cache on SessionEntry ??state lives in
