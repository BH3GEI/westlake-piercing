    // actually draws.  Hook ViewTreeObserver.OnDrawListener on the Activity's
    // DecorView; on first onDraw ??report FOREGROUND + remove listener.
    // Fallback 800ms timeout (< 1s OH AMS LIFECYCLE_HALF_TIMEOUT) ensures we
    // don't get stuck if the first frame never draws (e.g., empty Activity,
    // RenderThread death).
    // ====================================================================
 
    /** Per-token first-frame state. true = already reported FG, suppress dup. */
    private static final java.util.WeakHashMap<IBinder, Boolean> sFgReported =
            new java.util.WeakHashMap<>();
 
    @Override
    public void activityResumed(IBinder token, boolean handleSplashScreenExit) {
        // Android Activity.onResume done ??defer OH AbilityState.FOREGROUND
        // report until first hwui frame draws (Bug B fix).
        if (token == null) {
            Log.w(TAG, "activityResumed: null token");
            return;
        }
 
        // Re-resume scenario (token already saw first frame in a prior cycle):
        // OH AMS is already past first-launch state machine; reporting FG
        // immediately is safe + needed to satisfy LIFECYCLE_HALF_TIMEOUT.
        synchronized (sFgReported) {
            if (Boolean.TRUE.equals(sFgReported.get(token))) {
