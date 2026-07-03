        int androidState = mapOHToAndroid(ohState);
 
        Log.d(TAG, "OH callback: state=" + ohStateName(ohState)
                + " -> Android state: " + androidStateName(androidState)
                + " (token=" + abilityToken + ")");
 
        // Trigger the corresponding Android lifecycle change via internal mechanism
        dispatchAndroidLifecycle(abilityToken, androidState);
    }
 
    // ==================== State Mapping ====================
 
    private int mapAndroidToOH(int androidState) {
        switch (androidState) {
            case ANDROID_STATE_CREATED:
            case ANDROID_STATE_STARTED:
                return OH_STATE_INACTIVE;
            case ANDROID_STATE_RESUMED:
                return OH_STATE_FOREGROUND_NEW;
            case ANDROID_STATE_PAUSED:
                // OH has no pause equivalent, stay in foreground
                return OH_STATE_FOREGROUND_NEW;
            case ANDROID_STATE_STOPPED:
                return OH_STATE_BACKGROUND_NEW;
            case ANDROID_STATE_DESTROYED:
