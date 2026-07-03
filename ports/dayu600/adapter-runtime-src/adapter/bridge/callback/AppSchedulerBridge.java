package adapter.bridge.callback;

import com.android.internal.os.AndroidBootstrap;

/**
 * Recovered WestLake launch callback surface.
 *
 * Native app-scheduler glue calls this after OHOS schedules an ability launch.
 * The implementation delegates to AndroidBootstrap so this class can exist
 * before the full Android framework jar is restored.
 */
public final class AppSchedulerBridge {
    private AppSchedulerBridge() {
    }

    public static void nativeOnScheduleLaunchAbility(Object appThread,
                                                     String abilityName,
                                                     int abilityRecordId) {
        AndroidBootstrap.onScheduleLaunchAbility(appThread, abilityName, abilityRecordId);
    }
}
