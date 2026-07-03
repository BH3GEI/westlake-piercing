// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__com__android__internal__os__AppSpawnXInit.java@196.html
// title: p1613 adapted-hanbing-java/com/android/internal/os/AppSpawnXInit.java:196

  184:         try {
  185:             java.security.Security.getProviders();
  186:             Log.d(TAG, "JCA providers warmed up");
  187:         } catch (Exception e) {
  188:             Log.w(TAG, "JCA warmup failed", e);
  189:         }
  190:     }
  191:  
  192:     /**
  193:      * Preload adapter bridge (appspawn-x specific).
  194:      * Loads liboh_adapter_bridge.so and caches adapter Java classes.
  195:      */
  196:     private static void preloadAdapterBridge() {
  197:         // Load adapter JNI library
  198:         try {
  199:             System.loadLibrary("oh_adapter_bridge");
  200:             Log.i(TAG, "Loaded liboh_adapter_bridge.so");
  201:         } catch (UnsatisfiedLinkError e) {
  202:             Log.w(TAG, "Failed to load adapter bridge: " + e.getMessage());
  203:             return;
  204:         }
  205:  
  206:         // Cache adapter Java classes so they're COW-shared after fork
  207:         String[] adapterClasses = {
  208:             "adapter.core.OHEnvironment",
