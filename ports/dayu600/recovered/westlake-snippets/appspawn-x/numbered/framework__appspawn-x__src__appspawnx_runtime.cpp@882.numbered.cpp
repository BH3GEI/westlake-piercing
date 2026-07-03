// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\16.12\framework__appspawn-x__src__appspawnx_runtime.cpp@882.html
// title: 16.12 framework/appspawn-x/src/appspawnx_runtime.cpp:882
// summary: WorkerState</span><br><span>??? 8MB stack ??pthread ??? startVm+preload??? mutex/condvar ????????? ready/rc?????worker ?????????

  870:         LOGE("[ZYG] ZygoteHooks.postForkCommon() threw");
  871:         env_->ExceptionDescribe();
  872:         env_->ExceptionClear();
  873:         return -1;
  874:     }
  875:     LOGI("[ZYG] <<< ZygoteHooks.postForkCommon() OK");
  876:     return 0;
  877: }
  878:  
  879: // ---------------------------------------------------------------------------
  880: // Dedicated VM-worker pthread
  881: // ---------------------------------------------------------------------------
  882: struct AppSpawnXRuntime::WorkerState {
  883:     AppSpawnXRuntime* rt;
  884:     pthread_t tid;
  885:     pthread_mutex_t mu;
  886:     pthread_cond_t  cv;
  887:     bool ready;
  888:     int  rc;
  889: };
  890:  
  891: static void* vmWorkerEntry(void* arg) {
  892:     auto* ws = static_cast<AppSpawnXRuntime::WorkerState*>(arg);
  893:     // Probe actual stack size (informational)
  894:     pthread_attr_t attr;
