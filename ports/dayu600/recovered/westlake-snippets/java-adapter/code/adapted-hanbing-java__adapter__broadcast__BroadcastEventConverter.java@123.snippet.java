        mapAction("android.provider.Telephony.SMS_RECEIVED",      "usual.event.SMS_RECEIVE_COMPLETED");
    }
 
    private static void mapAction(String android, String oh) {
        ANDROID_TO_OH.put(android, oh);
        OH_TO_ANDROID.put(oh, android);
    }
 
    /**
     * Map an Android broadcast Action to an OH CommonEvent name.
     * Known system actions are mapped directly; custom actions get "adapter.custom." prefix.
     */
    public static String androidActionToOH(String androidAction) {
        if (androidAction == null) return null;
        String mapped = ANDROID_TO_OH.get(androidAction);
        if (mapped != null) return mapped;
        // Custom action: prefix it
        return CUSTOM_EVENT_PREFIX + androidAction;
    }
 
    /**
     * Map an OH CommonEvent name to an Android broadcast Action.
     * Known system events are mapped back; custom events have prefix stripped.
     */
    public static String ohEventToAndroid(String ohEvent) {
