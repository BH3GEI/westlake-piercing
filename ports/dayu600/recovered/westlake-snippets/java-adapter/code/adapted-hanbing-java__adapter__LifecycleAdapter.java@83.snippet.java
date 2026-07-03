    }
 
    private LifecycleAdapter() {
    }
 
    /**
     * Convert Android Activity lifecycle state changes to OH Ability state changes.
     * Called when ActivityThread processes lifecycle events.
     *
     * @param activityToken Activity identifier
     * @param androidState  Target Android lifecycle state
     */
    public void onAndroidLifecycleChanged(int activityToken, int androidState) {
        int currentOHState = mStateMap.getOrDefault(activityToken, OH_STATE_INITIAL);
        int targetOHState = mapAndroidToOH(androidState);
 
        Log.d(TAG, "Android state change: " + androidStateName(androidState)
                + " -> OH state: " + ohStateName(targetOHState)
                + " (token=" + activityToken + ")");
 
        if (targetOHState != currentOHState) {
            mStateMap.put(activityToken, targetOHState);
            notifyOHStateChange(activityToken, targetOHState);
        }
 
