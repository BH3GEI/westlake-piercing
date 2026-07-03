        OHEnvironment.nativeNotifyAppState(ohState);
    }
 
    /**
     * Dispatch Android lifecycle event to ActivityThread.
     * Constructs ClientTransaction with the appropriate lifecycle item
     * and schedules it via ApplicationThread.
     *
     * This is the key bridge method: when OH AbilityScheduler notifies us of
     * a lifecycle state change, we construct the corresponding Android
     * ClientTransaction and deliver it to ActivityThread for execution.
     */
    private void dispatchAndroidLifecycle(int token, int androidState) {
        Log.i(TAG, "Dispatching Android lifecycle: token=" + token
                + ", state=" + androidStateName(androidState));
 
        try {
            ActivityThread activityThread = ActivityThread.currentActivityThread();
            if (activityThread == null) {
                Log.e(TAG, "ActivityThread not available");
                return;
            }
 
            IApplicationThread appThread = activityThread.getApplicationThread();
            if (appThread == null) {
