        addMapping("android.permission.RECEIVE_BOOT_COMPLETED",   "ohos.permission.RUNNING_LOCK");
        addMapping("android.permission.SET_ALARM",                "ohos.permission.PUBLISH_AGENT_REMINDER");
        addMapping("android.permission.REQUEST_INSTALL_PACKAGES", "ohos.permission.INSTALL_BUNDLE");
        addMapping("android.permission.FOREGROUND_SERVICE",       "ohos.permission.KEEP_BACKGROUND_RUNNING");
 
        // Notifications
        addMapping("android.permission.POST_NOTIFICATIONS",       "ohos.permission.NOTIFICATION_CONTROLLER");
 
        // NFC
        addMapping("android.permission.NFC",                      "ohos.permission.NFC_TAG");
    }
 
    private static void addMapping(String android, String oh) {
        sAndroidToOH.put(android, oh);
        // Only add reverse if not already present (handles many-to-one)
        if (!sOHToAndroid.containsKey(oh)) {
            sOHToAndroid.put(oh, android);
        }
    }
 
    /**
     * Map Android permission name to OH permission name.
     */
    public static String mapToOH(String androidPermission) {
        if (androidPermission == null) return null;
