    ssize_t written = send(fd, &msg, wireSize, MSG_DONTWAIT | MSG_NOSIGNAL);
    if (written < 0) {
        LOGE("writeKeyEvent: send failed, errno=%d (%s)", errno, strerror(errno));
        return -errno;
    }
    if (static_cast<size_t>(written) != wireSize) {
        LOGE("writeKeyEvent: short write %zd / %zu", written, wireSize);
        return -1;
    }
    return 0;
}
 
void OHInputBridge::monitorOHInputEvents() {
    LOGI("OH input monitor thread started");
 
    while (monitoring_.load()) {
        std::vector<pollfd> fds;
        std::vector<int32_t> sessionIds;
 
        {
            std::lock_guard<std::mutex> lock(mutex_);
            for (auto& pair : sessions_) {
                if (pair.second.ohInputFd >= 0 && pair.second.serverFd >= 0) {
                    pollfd pfd;
                    pfd.fd = pair.second.ohInputFd;
