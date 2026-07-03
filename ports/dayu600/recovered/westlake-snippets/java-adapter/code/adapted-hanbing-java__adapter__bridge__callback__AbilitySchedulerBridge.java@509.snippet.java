     */
    public void onScheduleAbilityRequestResult(String requestId, boolean success) {
        logOhOnly("ScheduleAbilityRequest" + (success ? "Success" : "Failure"),
                "OH ability request result");
    }
 
    // ==================== Service Helpers ====================
 
    /**
     * Get or create a stable service token for the given Intent.
     * Uses component name as key for token reuse across bind/unbind cycles.
     */
    private IBinder getOrCreateServiceToken(Intent intent) {
        String key = (intent.getComponent() != null)
                ? intent.getComponent().flattenToString()
                : intent.getAction();
        if (key == null) key = "unknown_service";
 
        IBinder token = mServiceTokens.get(key);
        if (token == null) {
            token = new Binder();
            mServiceTokens.put(key, token);
        }
        return token;
    }
