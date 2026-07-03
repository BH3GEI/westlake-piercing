// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__appspawn-x__src__main.cpp@254.html
// title: p1612 framework/appspawn-x/src/main.cpp:254

  242:         LOGI("Spawn request: proc=%s bundle=%s uid=%d flags=0x%llx",
  243:              msg.procName.c_str(), msg.bundleName.c_str(), msg.uid,
  244:              static_cast<unsigned long long>(msg.flags));
  245:  
  246:         if (msg.hasFlag(StartFlags::COLD_START)) {
  247:             LOGI("Cold start requested for %s", msg.procName.c_str());
  248:         }
  249:  
  250:         if (msg.hasFlag(StartFlags::DEBUGGABLE)) {
  251:             LOGI("Debuggable flag set for %s", msg.procName.c_str());
  252:         }
  253:  
  254:         // B.33 (2026-04-29): canonical Zygote fork mediation around fork().
  255:         // Without this, ART daemons (HeapTaskDaemon/Finalizer/Signal Catcher/
  256:         // Runtime worker x4) are alive in parent at fork time but vanish in
  257:         // child, leaving ART internal locks held by dead TIDs.  Child main
  258:         // thread then blocks indefinitely in epoll_wait inside CallStatic-
  259:         // VoidMethod (pre-Java thread attach), Java initChild never runs.
  260:         runtime.zygotePreFork();
  261:  
  262:         pid_t pid = fork();
  263:         if (pid < 0) {
  264:             LOGE("fork() failed: %s", strerror(errno));
  265:             // Best-effort: restart parent daemons even on fork failure.
  266:             runtime.zygotePostForkCommon();
