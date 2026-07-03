// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__appspawn-x__src__child_main.cpp@39.html
// title: p1612 framework/appspawn-x/src/child_main.cpp:39
// summary: ChildMain::run</span><br><span>fork ????????AccessToken??AC??andbox??ELinux??RT post-fork ????????????????root/appspawn ????????????

   27: // B.30 (2026-04-29): real adaptation for SELinux + AccessToken so child secon
   28: // transitions out of u:r:appspawn:s0 (which can't query SA 180/501/4607).
   29: // hap_restorecon: HapContext::HapDomainSetcontext routes APL ??setcon.
   30: // token_setproc: SetSelfTokenID applies the OH access token from TLV.
   31: #include "hap_restorecon.h"          // selinux_adapter:libhap_restorecon
   32: #include "token_setproc.h"           // access_token:libtokensetproc_shared
   33:  
   34: namespace appspawnx {
   35:  
   36: // ---------------------------------------------------------------------------
   37: // run  ?? child process main entry point (does not return)
   38: // ---------------------------------------------------------------------------
   39: [[noreturn]] void ChildMain::run(const SpawnMsg& msg, AppSpawnXRuntime* runtime) {
   40:     pid_t myPid = getpid();
   41:     LOGI("Child process started, pid=%d uid=%d bundle=%s",
   42:          myPid, msg.uid, msg.bundleName.c_str());
   43:  
   44:     // Diagnostic (kept until HelloWorld UI works, per memory
   45:     // feedback_keep_cp_instrumentation.md): redirect native fd 1/2 to a
   46:     // per-pid file so libart's LOG(FATAL)/CHECK output (otherwise
   47:     // discarded into the inherited /dev/null fd 2) becomes readable
   48:     // post-mortem.  Try multiple paths because appspawn:s0 SELinux
   49:     // domain may deny write to /data/local/tmp; /data/service/el1/public/appspawnx
   50:     // is created by appspawn_x.cfg specifically for our use.
   51:     LOGI("[CHILD] entering stderr redirect probe");
