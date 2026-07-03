// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__adapter__core__OHEnvironment.java@32.html
// title: p1613 adapted-hanbing-java/adapter/core/OHEnvironment.java:32

   20:     static {
   21:         System.loadLibrary("oh_adapter_bridge");
   22:     }
   23:  
   24:     private OHEnvironment() {
   25:         // Prevent instantiation.
   26:     }
   27:  
   28:     /**
   29:      * Returns {@code true} when running inside an OH environment.
   30:      * Checks the system property first; falls back to the native probe.
   31:      */
   32:     public static boolean isOHEnvironment() {
   33:         String prop = SystemProperties.get(PROP_OH_ADAPTER_ENABLED);
   34:         if ("true".equals(prop)) {
   35:             return true;
   36:         }
   37:         if ("false".equals(prop)) {
   38:             return false;
   39:         }
   40:         // Property not set or unrecognised value ??ask native side.
   41:         return nativeIsOHEnvironment();
   42:     }
   43:  
   44:     /** Native probe for OH environment detection. */
