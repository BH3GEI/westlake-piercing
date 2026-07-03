// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__adapter__bridge__callback__AbilitySchedulerBridge.java@178.html
// title: p1613 adapted-hanbing-java/adapter/bridge/callback/AbilitySchedulerBridge.java:178
// summary: onScheduleConnectAbility</span><br><span>??service token ???????????????OH connect/command ???????????? scheduleCreateService????????scheduleB

  166:  
  167:     /**
  168:      * [BRIDGED] ScheduleConnectAbility -> IApplicationThread.scheduleBindService
  169:      *
  170:      * OH requests the service ability to handle a new connection.
  171:      * Android dispatches via IApplicationThread:
  172:      *   1. scheduleCreateService (if first bind, service not yet created)
  173:      *   2. scheduleBindService (deliver the bind intent)
  174:      *
  175:      * The service token is derived from the Want (bundleName + abilityName)
  176:      * and cached in ServiceConnectionRegistry on the Java side.
  177:      */
  178:     public void onScheduleConnectAbility(String wantJson) {
  179:         logBridged("ScheduleConnectAbility",
  180:                 "-> IApplicationThread.scheduleBindService");
  181:         try {
  182:             // Build Intent from Want JSON
  183:             android.content.Intent intent =
  184:                     adapter.activity.IntentWantConverter.wantJsonToIntent(wantJson);
  185:             android.os.IBinder serviceToken = getOrCreateServiceToken(intent);
  186:  
  187:             // If this is the first bind for this service, create it first
  188:             if (!mCreatedServices.contains(serviceToken)) {
  189:                 invokeApplicationThread("scheduleCreateService",
  190:                         new Class[]{android.os.IBinder.class,
