// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__adapter__packagemanager__PermissionMapper.java@101.html
// title: p1613 adapted-hanbing-java/adapter/packagemanager/PermissionMapper.java:101

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
  103:         String mapped = sAndroidToOH.get(androidPermission);
  104:         if (mapped != null) return mapped;
  105:         // Unknown: strip android.permission. prefix and add ohos.permission.android.
  106:         if (androidPermission.startsWith(ANDROID_PREFIX)) {
  107:             return OH_ANDROID_PREFIX + androidPermission.substring(ANDROID_PREFIX.length());
  108:         }
  109:         return OH_ANDROID_PREFIX + androidPermission;
  110:     }
  111:  
  112:     /**
  113:      * Map OH permission name to Android permission name.
