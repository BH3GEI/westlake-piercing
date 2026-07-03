 
    /**
     * [BRIDGED] ScheduleConnectAbility -> IApplicationThread.scheduleBindService
     *
     * OH requests the service ability to handle a new connection.
     * Android dispatches via IApplicationThread:
     *   1. scheduleCreateService (if first bind, service not yet created)
     *   2. scheduleBindService (deliver the bind intent)
     *
     * The service token is derived from the Want (bundleName + abilityName)
     * and cached in ServiceConnectionRegistry on the Java side.
     */
    public void onScheduleConnectAbility(String wantJson) {
        logBridged("ScheduleConnectAbility",
                "-> IApplicationThread.scheduleBindService");
        try {
            // Build Intent from Want JSON
            android.content.Intent intent =
                    adapter.activity.IntentWantConverter.wantJsonToIntent(wantJson);
            android.os.IBinder serviceToken = getOrCreateServiceToken(intent);
 
            // If this is the first bind for this service, create it first
            if (!mCreatedServices.contains(serviceToken)) {
                invokeApplicationThread("scheduleCreateService",
                        new Class[]{android.os.IBinder.class,
