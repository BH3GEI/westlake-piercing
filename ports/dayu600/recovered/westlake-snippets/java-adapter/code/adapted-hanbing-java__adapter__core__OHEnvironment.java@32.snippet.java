    static {
        System.loadLibrary("oh_adapter_bridge");
    }
 
    private OHEnvironment() {
        // Prevent instantiation.
    }
 
    /**
     * Returns {@code true} when running inside an OH environment.
     * Checks the system property first; falls back to the native probe.
     */
    public static boolean isOHEnvironment() {
        String prop = SystemProperties.get(PROP_OH_ADAPTER_ENABLED);
        if ("true".equals(prop)) {
            return true;
        }
        if ("false".equals(prop)) {
            return false;
        }
        // Property not set or unrecognised value ??ask native side.
        return nativeIsOHEnvironment();
    }
 
    /** Native probe for OH environment detection. */
