// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__window__jni__oh_input_bridge.cpp@457.html
// title: p1612 framework/window/jni/oh_input_bridge.cpp:457
// summary: OHInputBridge::monitorOHInputEvents</span><br><span>?????? OH input fd ????????detached monitor thread???????????? sessions_ ??pollfd ????????poll ?????? 

  445:     ssize_t written = send(fd, &msg, wireSize, MSG_DONTWAIT | MSG_NOSIGNAL);
  446:     if (written < 0) {
  447:         LOGE("writeKeyEvent: send failed, errno=%d (%s)", errno, strerror(errno));
  448:         return -errno;
  449:     }
  450:     if (static_cast<size_t>(written) != wireSize) {
  451:         LOGE("writeKeyEvent: short write %zd / %zu", written, wireSize);
  452:         return -1;
  453:     }
  454:     return 0;
  455: }
  456:  
  457: void OHInputBridge::monitorOHInputEvents() {
  458:     LOGI("OH input monitor thread started");
  459:  
  460:     while (monitoring_.load()) {
  461:         std::vector<pollfd> fds;
  462:         std::vector<int32_t> sessionIds;
  463:  
  464:         {
  465:             std::lock_guard<std::mutex> lock(mutex_);
  466:             for (auto& pair : sessions_) {
  467:                 if (pair.second.ohInputFd >= 0 && pair.second.serverFd >= 0) {
  468:                     pollfd pfd;
  469:                     pfd.fd = pair.second.ohInputFd;
