// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\16.13\adapted-hanbing-java__adapter__bridge__callback__AbilitySchedulerBridge.java@561.html
// title: 16.13 adapted-hanbing-java/adapter/bridge/callback/AbilitySchedulerBridge.java:561

  549:         java.lang.reflect.Method method;
  550:         if (paramTypes != null) {
  551:             method = mApplicationThread.getClass().getMethod(methodName, paramTypes);
  552:         } else {
  553:             method = mApplicationThread.getClass().getMethod(methodName);
  554:         }
  555:         method.invoke(mApplicationThread, args);
  556:     }
  557:  
  558:     /**
  559:      * Notify that a service has been destroyed, clean up its token.
  560:      */
  561:     public void onServiceDestroyed(String componentKey) {
  562:         IBinder token = mServiceTokens.remove(componentKey);
  563:         if (token != null) {
  564:             mCreatedServices.remove(token);
  565:         }
  566:     }
  567:  
  568:     // ==================== Utility ====================
  569:  
  570:     private String mapLifecycleStateToItem(int ohState) {
  571:         switch (ohState) {
  572:             case 0: return "LaunchActivityItem";      // INITIAL
  573:             case 2: return "PauseActivityItem";        // INACTIVE
