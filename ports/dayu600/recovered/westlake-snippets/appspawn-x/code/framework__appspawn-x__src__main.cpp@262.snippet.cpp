        if (msg.hasFlag(StartFlags::DEBUGGABLE)) {
            LOGI("Debuggable flag set for %s", msg.procName.c_str());
        }
 
        // B.33 (2026-04-29): canonical Zygote fork mediation around fork().
        // Without this, ART daemons (HeapTaskDaemon/Finalizer/Signal Catcher/
        // Runtime worker x4) are alive in parent at fork time but vanish in
        // child, leaving ART internal locks held by dead TIDs.  Child main
        // thread then blocks indefinitely in epoll_wait inside CallStatic-
        // VoidMethod (pre-Java thread attach), Java initChild never runs.
        runtime.zygotePreFork();
 
        pid_t pid = fork();
        if (pid < 0) {
            LOGE("fork() failed: %s", strerror(errno));
            // Best-effort: restart parent daemons even on fork failure.
            runtime.zygotePostForkCommon();
            return -1;
        }
 
        if (pid == 0) {
            // ---- Child process ----
            // Close the listening socket (child doesn't accept connections)
            server.closeSocket();
 
