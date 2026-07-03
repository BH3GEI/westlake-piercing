// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\16.12\framework__android-runtime__src__android_view_InputEventReceiver.cpp@419.html
// title: 16.12 framework/android-runtime/src/android_view_InputEventReceiver.cpp:419
// summary: workerLoop</span><br><span>native worker poll/recv InputChannel fd ?????MotionEvent?????? InputEventBridge.dispatchOnMai

  407:         env->ExceptionDescribe();
  408:         env->ExceptionClear();
  409:     }
  410:  
  411:     env->DeleteLocalRef(motionEvent);
  412:     env->DeleteLocalRef(receiver);
  413:     if (needDetach) r->jvm->DetachCurrentThread();
  414: }
  415:  
  416: // ============================================================
  417: // Worker thread: poll fd + read InputMessages
  418: // ============================================================
  419: void workerLoop(OhInputEventReceiver* r) {
  420:     HLOG_INFO("worker[%lld]: start fd=%d", (long long)r->id, r->clientFd);
  421:     uint8_t buf[MAX_INPUT_MESSAGE_SIZE];
  422:  
  423:     while (!r->stop.load(std::memory_order_acquire)) {
  424:         pollfd pfd;
  425:         pfd.fd = r->clientFd;
  426:         pfd.events = POLLIN | POLLHUP | POLLERR;
  427:         pfd.revents = 0;
  428:         int prc = ::poll(&pfd, 1, 200 /* timeout ms; re-check stop flag */);
  429:         if (prc < 0) {
  430:             if (errno == EINTR) continue;
  431:             HLOG_ERR("worker[%lld]: poll errno=%d (%s)",
