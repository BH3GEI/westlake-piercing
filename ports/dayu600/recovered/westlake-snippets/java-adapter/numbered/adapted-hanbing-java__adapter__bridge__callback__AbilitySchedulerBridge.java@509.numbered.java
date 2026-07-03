// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__adapter__bridge__callback__AbilitySchedulerBridge.java@509.html
// title: p1613 adapted-hanbing-java/adapter/bridge/callback/AbilitySchedulerBridge.java:509

  497:      */
  498:     public void onScheduleAbilityRequestResult(String requestId, boolean success) {
  499:         logOhOnly("ScheduleAbilityRequest" + (success ? "Success" : "Failure"),
  500:                 "OH ability request result");
  501:     }
  502:  
  503:     // ==================== Service Helpers ====================
  504:  
  505:     /**
  506:      * Get or create a stable service token for the given Intent.
  507:      * Uses component name as key for token reuse across bind/unbind cycles.
  508:      */
  509:     private IBinder getOrCreateServiceToken(Intent intent) {
  510:         String key = (intent.getComponent() != null)
  511:                 ? intent.getComponent().flattenToString()
  512:                 : intent.getAction();
  513:         if (key == null) key = "unknown_service";
  514:  
  515:         IBinder token = mServiceTokens.get(key);
  516:         if (token == null) {
  517:             token = new Binder();
  518:             mServiceTokens.put(key, token);
  519:         }
  520:         return token;
  521:     }
