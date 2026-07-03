// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\16.13\adapted-hanbing-java__adapter__packagemanager__PermissionMapper.java@90.html
// title: 16.13 adapted-hanbing-java/adapter/packagemanager/PermissionMapper.java:90

   78:         addMapping("android.permission.RECEIVE_BOOT_COMPLETED",   "ohos.permission.RUNNING_LOCK");
   79:         addMapping("android.permission.SET_ALARM",                "ohos.permission.PUBLISH_AGENT_REMINDER");
   80:         addMapping("android.permission.REQUEST_INSTALL_PACKAGES", "ohos.permission.INSTALL_BUNDLE");
   81:         addMapping("android.permission.FOREGROUND_SERVICE",       "ohos.permission.KEEP_BACKGROUND_RUNNING");
   82:  
   83:         // Notifications
   84:         addMapping("android.permission.POST_NOTIFICATIONS",       "ohos.permission.NOTIFICATION_CONTROLLER");
   85:  
   86:         // NFC
   87:         addMapping("android.permission.NFC",                      "ohos.permission.NFC_TAG");
   88:     }
   89:  
   90:     private static void addMapping(String android, String oh) {
   91:         sAndroidToOH.put(android, oh);
   92:         // Only add reverse if not already present (handles many-to-one)
   93:         if (!sOHToAndroid.containsKey(oh)) {
   94:             sOHToAndroid.put(oh, android);
   95:         }
   96:     }
   97:  
   98:     /**
   99:      * Map Android permission name to OH permission name.
  100:      */
  101:     public static String mapToOH(String androidPermission) {
  102:         if (androidPermission == null) return null;
