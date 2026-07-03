// B.30 (2026-04-29): real adaptation for SELinux + AccessToken so child secon
// transitions out of u:r:appspawn:s0 (which can't query SA 180/501/4607).
// hap_restorecon: HapContext::HapDomainSetcontext routes APL ??setcon.
// token_setproc: SetSelfTokenID applies the OH access token from TLV.
#include "hap_restorecon.h"          // selinux_adapter:libhap_restorecon
#include "token_setproc.h"           // access_token:libtokensetproc_shared
 
namespace appspawnx {
 
// ---------------------------------------------------------------------------
// run  ?? child process main entry point (does not return)
// ---------------------------------------------------------------------------
[[noreturn]] void ChildMain::run(const SpawnMsg& msg, AppSpawnXRuntime* runtime) {
    pid_t myPid = getpid();
    LOGI("Child process started, pid=%d uid=%d bundle=%s",
         myPid, msg.uid, msg.bundleName.c_str());
 
    // Diagnostic (kept until HelloWorld UI works, per memory
    // feedback_keep_cp_instrumentation.md): redirect native fd 1/2 to a
    // per-pid file so libart's LOG(FATAL)/CHECK output (otherwise
    // discarded into the inherited /dev/null fd 2) becomes readable
    // post-mortem.  Try multiple paths because appspawn:s0 SELinux
    // domain may deny write to /data/local/tmp; /data/service/el1/public/appspawnx
    // is created by appspawn_x.cfg specifically for our use.
    LOGI("[CHILD] entering stderr redirect probe");
