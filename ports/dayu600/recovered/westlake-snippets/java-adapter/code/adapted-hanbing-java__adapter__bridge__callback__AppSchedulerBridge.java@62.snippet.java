    /**
     * Called by native AppSchedulerAdapter.ScheduleLaunchAbility().
     * Constructs a ClientTransaction with LaunchActivityItem and schedules
     * it on the current ActivityThread, which triggers:
     *   ActivityThread.handleLaunchActivity()
     *     -> Activity.attach()
     *     -> Activity.onCreate()
     *
     * This is the critical path for Hello World: the OH system calls
     * ScheduleLaunchAbility, and we must translate it into an Android
     * activity launch.
     */
    public static void nativeOnScheduleLaunchAbility(Object appThread,
                                                      String abilityName,
                                                      int abilityRecordId) {
        Log.i(TAG, "nativeOnScheduleLaunchAbility: ability=" + abilityName
                + ", recordId=" + abilityRecordId);
 
        try {
            ActivityThread activityThread = ActivityThread.currentActivityThread();
            if (activityThread == null) {
                Log.e(TAG, "ActivityThread not available");
                return;
            }
 
