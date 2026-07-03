     * adapter.activity.* / adapter.window.* / adapter.packagemanager.* (which
     * live in oh-adapter-framework.jar, not in core / not always loaded
     * depending on caller).  Adapter classes are loaded by the same
     * PathClassLoader that loaded OHServiceManager so reflection lookup is
     * cheap (one Class.forName + getMethod cache miss on first call).
     *
     * Per feedback.txt line 12, services with no OH analog (connectivity /
     * network_management / content_capture / game) explicitly return null
     * here.  Framework code that tries getService(CONNECTIVITY_SERVICE) on
     * Hello World path is expected to handle null gracefully (boot-path
     * skips for these are??? in shortcuts_inventory.html#chC).
     */
    private static IBinder lookupAdapter(String name) {
        if (name == null) return null;
        switch (name) {
            case "activity":
                return getAdapterBinder("adapter.activity.ActivityManagerAdapter");
            case "activity_task":
                return getAdapterBinder("adapter.activity.ActivityTaskManagerAdapter");
            case "package":
                return getAdapterBinder("adapter.packagemanager.PackageManagerAdapter");
            case "window":
                return getAdapterBinder("adapter.window.WindowManagerAdapter");
            case "display":
                return adapter.window.DisplayManagerAdapter.getInstance().asBinder();
