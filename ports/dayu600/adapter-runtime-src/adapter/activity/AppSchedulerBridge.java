package adapter.activity;

/**
 * Compatibility alias for older recovered native/Java snippets.
 */
public final class AppSchedulerBridge {
    private AppSchedulerBridge() {
    }

    public static void nativeOnScheduleLaunchAbility(Object appThread,
                                                     String abilityName,
                                                     int abilityRecordId) {
        adapter.bridge.callback.AppSchedulerBridge.nativeOnScheduleLaunchAbility(
                appThread, abilityName, abilityRecordId);
    }
}
