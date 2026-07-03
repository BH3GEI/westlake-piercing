// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__adapter__bridge__callback__AppSchedulerBridge.java@295.html
// title: p1613 adapted-hanbing-java/adapter/bridge/callback/AppSchedulerBridge.java:295

  283:             invokeApplicationThread("scheduleLowMemory", null, null);
  284:         } catch (Exception e) {
  285:             Log.e(TAG, "Failed to schedule low memory", e);
  286:         }
  287:     }
  288:  
  289:     /**
  290:      * [BRIDGED] ScheduleShrinkMemory -> IApplicationThread.scheduleTrimMemory
  291:      *
  292:      * OH memory shrink level maps to Android TRIM_MEMORY levels:
  293:      *   OH level mapping -> Android ComponentCallbacks2.TRIM_MEMORY_*
  294:      */
  295:     public void onScheduleShrinkMemory(int level) {
  296:         int androidLevel = mapMemoryLevel(level);
  297:         logBridged("ScheduleShrinkMemory", "-> IApplicationThread.scheduleTrimMemory(" + androidLevel + ")");
  298:         try {
  299:             invokeApplicationThread("scheduleTrimMemory", new Class[]{int.class},
  300:                     new Object[]{androidLevel});
  301:         } catch (Exception e) {
  302:             Log.e(TAG, "Failed to schedule trim memory", e);
  303:         }
  304:     }
  305:  
  306:     /**
  307:      * [BRIDGED] ScheduleMemoryLevel -> IApplicationThread.scheduleTrimMemory
