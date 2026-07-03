// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__adapter__broadcast__BroadcastEventConverter.java@123.html
// title: p1613 adapted-hanbing-java/adapter/broadcast/BroadcastEventConverter.java:123

  111:         mapAction("android.provider.Telephony.SMS_RECEIVED",      "usual.event.SMS_RECEIVE_COMPLETED");
  112:     }
  113:  
  114:     private static void mapAction(String android, String oh) {
  115:         ANDROID_TO_OH.put(android, oh);
  116:         OH_TO_ANDROID.put(oh, android);
  117:     }
  118:  
  119:     /**
  120:      * Map an Android broadcast Action to an OH CommonEvent name.
  121:      * Known system actions are mapped directly; custom actions get "adapter.custom." prefix.
  122:      */
  123:     public static String androidActionToOH(String androidAction) {
  124:         if (androidAction == null) return null;
  125:         String mapped = ANDROID_TO_OH.get(androidAction);
  126:         if (mapped != null) return mapped;
  127:         // Custom action: prefix it
  128:         return CUSTOM_EVENT_PREFIX + androidAction;
  129:     }
  130:  
  131:     /**
  132:      * Map an OH CommonEvent name to an Android broadcast Action.
  133:      * Known system events are mapped back; custom events have prefix stripped.
  134:      */
  135:     public static String ohEventToAndroid(String ohEvent) {
