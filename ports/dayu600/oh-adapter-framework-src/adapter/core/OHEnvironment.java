package adapter.core;

public final class OHEnvironment {
    private static final String TAG = "OHEnvironment";
    private static volatile boolean sLoaded;

    static {
        ensureLoaded();
    }

    private OHEnvironment() {
    }

    public static boolean isOHEnvironment() {
        return true;
    }

    public static boolean nativeIsOHEnvironment() {
        return true;
    }

    public static boolean nativeConnectToOHServices() {
        ensureLoaded();
        return true;
    }

    public static boolean nativeAttachApplication(int pid, int uid, String packageName) {
        log("attach pid=" + pid + " uid=" + uid + " package=" + packageName);
        return true;
    }

    public static void nativeNotifyAppState(int state) {
        log("appState=" + state);
    }

    public static void nativeShutdown() {
        log("shutdown");
    }

    public static synchronized void ensureLoaded() {
        if (sLoaded) {
            return;
        }
        try {
            System.loadLibrary("oh_adapter_bridge");
            sLoaded = true;
            log("loaded liboh_adapter_bridge.so");
        } catch (Throwable t) {
            log("load bridge failed: " + t);
        }
    }

    private static void log(String msg) {
        System.err.println("[" + TAG + "] " + msg);
    }
}

