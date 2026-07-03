// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__adapter__LifecycleAdapter.java@175.html
// title: p1613 adapted-hanbing-java/adapter/LifecycleAdapter.java:175
// summary: dispatchAndroidLifecycle</span><br><span>??OH lifecycle callback ?????Android lifecycle item??????????????? scheduleTransaction???????????????

  163:         OHEnvironment.nativeNotifyAppState(ohState);
  164:     }
  165:  
  166:     /**
  167:      * Dispatch Android lifecycle event to ActivityThread.
  168:      * Constructs ClientTransaction with the appropriate lifecycle item
  169:      * and schedules it via ApplicationThread.
  170:      *
  171:      * This is the key bridge method: when OH AbilityScheduler notifies us of
  172:      * a lifecycle state change, we construct the corresponding Android
  173:      * ClientTransaction and deliver it to ActivityThread for execution.
  174:      */
  175:     private void dispatchAndroidLifecycle(int token, int androidState) {
  176:         Log.i(TAG, "Dispatching Android lifecycle: token=" + token
  177:                 + ", state=" + androidStateName(androidState));
  178:  
  179:         try {
  180:             ActivityThread activityThread = ActivityThread.currentActivityThread();
  181:             if (activityThread == null) {
  182:                 Log.e(TAG, "ActivityThread not available");
  183:                 return;
  184:             }
  185:  
  186:             IApplicationThread appThread = activityThread.getApplicationThread();
  187:             if (appThread == null) {
