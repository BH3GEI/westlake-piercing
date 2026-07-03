        OHInputBridge::getInstance().injectTouchEvent(
            sessionId, androidAction, x, y, downTimeNs, eventTimeNs);
 
        pointerEvent->MarkProcessed();
    }
 
    void OnInputEvent(std::shared_ptr<OHOS::MMI::AxisEvent> axisEvent) const override {
        // Axis events (wheel / pinch / etc.) ??not used by HelloWorld; Phase 1 noop.
        if (axisEvent) axisEvent->MarkProcessed();
    }
};
 
void OHInputBridge::subscribeMmi(int32_t sessionId) {
    // Update active session id first ??consumer reads it via getActiveSessionId().
    activeSessionId_.store(sessionId);
 
    // Single-shot subscription per process. Once MMI knows our process is the
    // input target for the focused window, it dispatches all events here;
    // subsequent createSession calls (e.g. a second activity) just update the
    // session id we route to.
    bool expected = false;
    if (!mmiSubscribed_.compare_exchange_strong(expected, true)) {
        LOGI("subscribeMmi: already subscribed, updated activeSessionId=%d", sessionId);
        return;
    }
