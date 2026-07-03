// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__adapter__bridge__callback__AppSchedulerBridge.java@62.html
// title: p1613 adapted-hanbing-java/adapter/bridge/callback/AppSchedulerBridge.java:62
// summary: nativeOnScheduleLaunchAbility</span><br><span>OH ??????????????Activity ???????????????ClientTransaction/LaunchActivityItem/ResumeActivityItem ???

   50:     /**
   51:      * Called by native AppSchedulerAdapter.ScheduleLaunchAbility().
   52:      * Constructs a ClientTransaction with LaunchActivityItem and schedules
   53:      * it on the current ActivityThread, which triggers:
   54:      *   ActivityThread.handleLaunchActivity()
   55:      *     -> Activity.attach()
   56:      *     -> Activity.onCreate()
   57:      *
   58:      * This is the critical path for Hello World: the OH system calls
   59:      * ScheduleLaunchAbility, and we must translate it into an Android
   60:      * activity launch.
   61:      */
   62:     public static void nativeOnScheduleLaunchAbility(Object appThread,
   63:                                                       String abilityName,
   64:                                                       int abilityRecordId) {
   65:         Log.i(TAG, "nativeOnScheduleLaunchAbility: ability=" + abilityName
   66:                 + ", recordId=" + abilityRecordId);
   67:  
   68:         try {
   69:             ActivityThread activityThread = ActivityThread.currentActivityThread();
   70:             if (activityThread == null) {
   71:                 Log.e(TAG, "ActivityThread not available");
   72:                 return;
   73:             }
   74:  
