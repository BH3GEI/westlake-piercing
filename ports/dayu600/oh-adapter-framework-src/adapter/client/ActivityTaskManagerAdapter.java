package adapter.client;

public class ActivityTaskManagerAdapter {
    public static int nativeStartAbility(String bundleName, String abilityName,
            String action, String uri, String extraJson) {
        return 0;
    }

    public static boolean nativeIsTopAbility(int missionId, String abilityName) {
        return false;
    }
}

