        env->ExceptionDescribe();
        env->ExceptionClear();
    }
 
    env->DeleteLocalRef(motionEvent);
    env->DeleteLocalRef(receiver);
    if (needDetach) r->jvm->DetachCurrentThread();
}
 
// ============================================================
// Worker thread: poll fd + read InputMessages
// ============================================================
void workerLoop(OhInputEventReceiver* r) {
    HLOG_INFO("worker[%lld]: start fd=%d", (long long)r->id, r->clientFd);
    uint8_t buf[MAX_INPUT_MESSAGE_SIZE];
 
    while (!r->stop.load(std::memory_order_acquire)) {
        pollfd pfd;
        pfd.fd = r->clientFd;
        pfd.events = POLLIN | POLLHUP | POLLERR;
        pfd.revents = 0;
        int prc = ::poll(&pfd, 1, 200 /* timeout ms; re-check stop flag */);
        if (prc < 0) {
            if (errno == EINTR) continue;
            HLOG_ERR("worker[%lld]: poll errno=%d (%s)",
