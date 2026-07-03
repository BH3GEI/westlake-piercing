package adapter.client;

public class ActivityManagerAdapter {
    public static long nativeGetOHAbilityManagerService() {
        return 0L;
    }

    public static int nativeStartAbility(String bundleName, String abilityName,
            String action, String uri, String extraJson) {
        return 0;
    }

    public static int nativeConnectAbility(String bundleName, String abilityName, int connectionId) {
        return 0;
    }

    public static int nativeDisconnectAbility(int connectionId) {
        return 0;
    }

    public static int nativeStopServiceAbility(String bundleName, String abilityName) {
        return 0;
    }
}

