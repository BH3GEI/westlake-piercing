        try {
            java.security.Security.getProviders();
            Log.d(TAG, "JCA providers warmed up");
        } catch (Exception e) {
            Log.w(TAG, "JCA warmup failed", e);
        }
    }
 
    /**
     * Preload adapter bridge (appspawn-x specific).
     * Loads liboh_adapter_bridge.so and caches adapter Java classes.
     */
    private static void preloadAdapterBridge() {
        // Load adapter JNI library
        try {
            System.loadLibrary("oh_adapter_bridge");
            Log.i(TAG, "Loaded liboh_adapter_bridge.so");
        } catch (UnsatisfiedLinkError e) {
            Log.w(TAG, "Failed to load adapter bridge: " + e.getMessage());
            return;
        }
 
        // Cache adapter Java classes so they're COW-shared after fork
        String[] adapterClasses = {
            "adapter.core.OHEnvironment",
