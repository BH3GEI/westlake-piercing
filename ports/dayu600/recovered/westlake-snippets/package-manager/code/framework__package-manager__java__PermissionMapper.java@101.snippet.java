 
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
        String mapped = sAndroidToOH.get(androidPermission);
        if (mapped != null) return mapped;
        // Unknown: strip android.permission. prefix and add ohos.permission.android.
        if (androidPermission.startsWith(ANDROID_PREFIX)) {
            return OH_ANDROID_PREFIX + androidPermission.substring(ANDROID_PREFIX.length());
        }
        return OH_ANDROID_PREFIX + androidPermission;
    }
 
    /**
     * Map OH permission name to Android permission name.
