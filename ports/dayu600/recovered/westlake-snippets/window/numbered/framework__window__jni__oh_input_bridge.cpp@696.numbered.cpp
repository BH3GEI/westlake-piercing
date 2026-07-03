// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__window__jni__oh_input_bridge.cpp@696.html
// title: p1612 framework/window/jni/oh_input_bridge.cpp:696

  684:         OHInputBridge::getInstance().injectTouchEvent(
  685:             sessionId, androidAction, x, y, downTimeNs, eventTimeNs);
  686:  
  687:         pointerEvent->MarkProcessed();
  688:     }
  689:  
  690:     void OnInputEvent(std::shared_ptr<OHOS::MMI::AxisEvent> axisEvent) const override {
  691:         // Axis events (wheel / pinch / etc.) ??not used by HelloWorld; Phase 1 noop.
  692:         if (axisEvent) axisEvent->MarkProcessed();
  693:     }
  694: };
  695:  
  696: void OHInputBridge::subscribeMmi(int32_t sessionId) {
  697:     // Update active session id first ??consumer reads it via getActiveSessionId().
  698:     activeSessionId_.store(sessionId);
  699:  
  700:     // Single-shot subscription per process. Once MMI knows our process is the
  701:     // input target for the focused window, it dispatches all events here;
  702:     // subsequent createSession calls (e.g. a second activity) just update the
  703:     // session id we route to.
  704:     bool expected = false;
  705:     if (!mmiSubscribed_.compare_exchange_strong(expected, true)) {
  706:         LOGI("subscribeMmi: already subscribed, updated activeSessionId=%d", sessionId);
  707:         return;
  708:     }
