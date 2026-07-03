 
    /** Connect to OH services. */
    public static native boolean nativeConnectToOHServices();
 
    /**
     * Attaches an application to the OH adapter layer so that
     * subsequent calls can be routed correctly.
     *
     * @param pid         process id of the application
     * @param uid         user id of the application
     * @param packageName application package name
     */
    public static void attachApplication(int pid, int uid, String packageName) {
        nativeAttachApplication(pid, uid, packageName);
    }
 
    /** Native call to attach an application to the adapter layer. */
    public static native boolean nativeAttachApplication(int pid, int uid, String packageName);
 
    /**
     * Shuts down the OH adapter layer and releases associated resources.
     */
    public static void shutdown() {
        nativeShutdown();
    }
