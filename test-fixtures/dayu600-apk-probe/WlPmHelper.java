// Logic backing the smali-generated concrete WlPackageManager (which implements all ~179
// PackageManager abstract methods, most as default returns, delegating the meaningful ones here).
// A concrete PackageManager is required because Firebase's ComponentDiscovery skips discovery
// entirely when context.getPackageManager() is null — and Unsafe.allocateInstance can't
// instantiate an abstract subclass. L11 PACKAGE-MANAGER stub for the headless test-driver.
public final class WlPmHelper {
    // Firebase ComponentRegistrar list mined from the app dex; supplied as ComponentDiscoveryService
    // GET_META_DATA so FirebaseApp discovery registers Messaging etc. (device can't parse the
    // binary-manifest metadata).
    // FirebaseCommonRegistrar + ExecutorsRegistrar are hard-coded by FirebaseApp itself, so the
    // real manifest metadata omits them; listing them here duplicates components ("Multiple
    // components provide ...").
    private static final String[] FB_REGISTRARS = {
        "com.google.firebase.installations.FirebaseInstallationsRegistrar",
        "com.google.firebase.datatransport.TransportRegistrar",
        "com.google.firebase.messaging.FirebaseMessagingRegistrar",
        "com.google.firebase.messaging.FirebaseMessagingKtxRegistrar" };

    public static int gsiCalls = 0;
    public static String gsiLast = "none";

    public static android.content.pm.ServiceInfo serviceInfo(android.content.ComponentName cn, int flags) {
        gsiCalls++;
        gsiLast = "thr=" + Thread.currentThread().getName()
                + "/mainLooper=" + (android.os.Looper.getMainLooper() == null ? "NULL" : "ok")
                + "/LooperCL=" + System.identityHashCode(android.os.Looper.class);
        android.content.pm.ServiceInfo si = new android.content.pm.ServiceInfo();
        si.packageName = "com.uptodown";
        si.name = cn == null ? "" : cn.getClassName();
        android.os.Bundle md = new android.os.Bundle();
        try {
            java.lang.reflect.Method put =
                    md.getClass().getMethod("putString", String.class, String.class);
            for (String r : FB_REGISTRARS) {
                put.invoke(md, "com.google.firebase.components:" + r,
                        "com.google.firebase.components.ComponentRegistrar");
            }
        } catch (Throwable t) { /* runtime Bundle has putString */ }
        si.metaData = md;
        android.content.pm.ApplicationInfo ai = new android.content.pm.ApplicationInfo();
        ai.packageName = "com.uptodown";
        si.applicationInfo = ai;
        return si;
    }

    public static android.content.pm.PackageInfo packageInfo(String pkg, int flags) {
        android.content.pm.PackageInfo pi = new android.content.pm.PackageInfo();
        pi.packageName = "com.uptodown";
        pi.versionName = "7.33";
        pi.versionCode = 733;
        pi.firstInstallTime = 0L;
        pi.lastUpdateTime = 0L;
        pi.requestedPermissions = new String[0];
        android.content.pm.ApplicationInfo ai = new android.content.pm.ApplicationInfo();
        ai.packageName = "com.uptodown";
        ai.flags = 0;
        pi.applicationInfo = ai;
        return pi;
    }

    public static android.content.pm.ApplicationInfo applicationInfo(String pkg, int flags) {
        android.content.pm.ApplicationInfo ai = new android.content.pm.ApplicationInfo();
        ai.packageName = "com.uptodown";
        ai.flags = 0;
        return ai;
    }

    public static int checkPerm(String perm, String pkg) { return -1; /* DENIED */ }
    public static String installerName(String pkg) { return null; }
}
