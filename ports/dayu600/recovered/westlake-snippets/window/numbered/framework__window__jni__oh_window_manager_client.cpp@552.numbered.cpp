// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__window__jni__oh_window_manager_client.cpp@552.html
// title: p1612 framework/window/jni/oh_window_manager_client.cpp:552
// summary: hideWindow/showWindow</span><br><span>SessionEntry.wmsShown ??????????????relayout ?????? show/hide ??????????????AddWindow/RemoveWindow IP

  540:     // G2.14c ??legacy path uses IWindowManager.RemoveWindow + DestroyWindow.
  541:     // sessionProxy is null in legacy path (V7-only field); skip Disconnect().
  542:     if (connected_ && ssmProxy_ != nullptr) {
  543:         auto wmsInterface = OHOS::iface_cast<OHOS::Rosen::IWindowManager>(ssmProxy_);
  544:         if (wmsInterface) {
  545:             wmsInterface->RemoveWindow(static_cast<uint32_t>(sessionId), true);
  546:             wmsInterface->DestroyWindow(static_cast<uint32_t>(sessionId), false);
  547:         }
  548:     }
  549: }
  550:  
  551: // 2026-05-19: visibility helpers ??call OH WMS RemoveWindow / AddWindow to
  552: // hide / show, gated by per-session wmsShown bool to make the IPC idempotent.
  553: // Mirrors ArkUI WindowImpl::Hide (line 2034) / Show (line 1972) ??keeps the
  554: // adapter aligned with how OH native window clients toggle visibility.
  555: //
  556: // Design alternatives considered (see doc for full rationale):
  557: //   A. Java-side Map<sessionId, Boolean> ??adapter Java state, fast, but extra
  558: //      state to keep in sync.
  559: //   B. Reflect AOSP ViewRootImpl.mAppVisible ??no adapter cache but fragile
  560: //      (AOSP internal field name may change between API levels).
  561: //   C. Call WMS RemoveWindow / AddWindow every relayout, let OH server's own
  562: //      idempotency handle dups (WM_DO_NOTHING / WM_ERROR_INVALID_OPERATION).
  563: //      No adapter state but adds binder IPC every relayout.
  564: //   D. (chosen) In-App-process C++ cache on SessionEntry ??state lives in
