// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\16.13\adapted-hanbing-java__com__android__internal__os__AppSpawnXInit.java@238.html
// title: 16.13 adapted-hanbing-java/com/android/internal/os/AppSpawnXInit.java:238

  226:             } catch (ClassNotFoundException e) {
  227:                 Log.d(TAG, "Adapter class not found (OK in dev): " + cls);
  228:             }
  229:         }
  230:         Log.i(TAG, "Cached " + cached + " adapter classes");
  231:     }
  232:  
  233:     /**
  234:      * Force GC and finalization to clean up preload garbage
  235:      * before entering the event loop (objects created during preload
  236:      * that won't be needed are freed now, reducing COW page faults).
  237:      */
  238:     private static void gcAndFinalize() {
  239:         VMRuntime runtime = VMRuntime.getRuntime();
  240:         System.gc();
  241:         runtime.runFinalizationSync();
  242:         System.gc();
  243:         Log.d(TAG, "Post-preload GC complete");
  244:     }
  245:  
  246:     // ============================================================
  247:     // Child Process: Initialization (called after fork + specialize)
  248:     // ============================================================
  249:  
  250:     /**
