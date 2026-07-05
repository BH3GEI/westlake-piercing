package westlake.adapter.packagemanager;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/**
 * In-process adapter for {@code android.content.pm.IPackageManager} (the
 * "package" system service).  Wine-style: NO real Binder / IPC / transact — the
 * real {@code ActivityThread.bindApplication} / {@code LoadedApk.makeApplication}
 * boot path calls {@code ServiceManager.getService("package")} and then
 * {@code getApplicationInfo(pkg,flags,userId)} / {@code getPackageInfo(...)} on
 * the returned binder.  Those calls land here and get synthesized data back.
 *
 * <p>Design mirrors {@code adapter.client.WindowSessionAdapter}:
 * <ul>
 *   <li>a final {@link InvocationHandler};</li>
 *   <li>a static {@link #createProxy()} that resolves the {@code @hide}
 *       interface at RUNTIME via {@link Class#forName} and returns a
 *       {@link Proxy} implementing it;</li>
 *   <li>{@link #invoke} dispatches by {@link Method#getName()} and returns
 *       synthesized values; unknown methods fall through to a type-appropriate
 *       default via {@link #defaultValue(Class)}.</li>
 * </ul>
 *
 * <p>This file compiles against ONLY {@code android.jar} (public API).  The
 * {@code @hide} interface {@code IPackageManager} is NEVER imported/referenced
 * at compile time — only reflection + {@link Object}.  {@link ApplicationInfo}
 * and {@link PackageInfo} ARE public API, so they are constructed directly;
 * hidden / version-variant fields on them are populated with the tolerant
 * {@link #setField} helper (reflection where needed) so a missing field on any
 * given {@code android.jar} degrades to a sane default instead of a compile
 * or runtime failure.
 */
public final class PackageManagerAdapter implements InvocationHandler {

    private static final String TAG = "PackageManagerAdapter";

    /** The app we are booting. */
    public static final String TARGET_PACKAGE = "com.uptodown";

    /** Data dir handed to the target app. */
    private static final String DATA_DIR = "/data/local/tmp/uptodown-data";

    /** targetSdkVersion reported for the target app. */
    private static final int TARGET_SDK = 34;

    /** Stable synthetic uid for the target app (app-uid range, user 0). */
    private static final int APP_UID = 10123;

    private static final int PERMISSION_GRANTED = 0; // PackageManager.PERMISSION_GRANTED

    /**
     * APK location, used for {@code sourceDir}/{@code publicSourceDir}.
     * Static + settable so the launcher can point the boot at whichever apk it
     * pushed.  Default matches the board convention.
     */
    private static volatile String sApkPath = "/data/local/tmp/test.apk";

    /**
     * Application subclass name ({@code ApplicationInfo.className}).  Left null
     * so the framework instantiates the default {@code android.app.Application};
     * set it only if the target apk declares a custom {@code <application
     * android:name=...>} that we want honored.
     */
    private static volatile String sApplicationClassName = null;

    private PackageManagerAdapter() {
    }

    // ---------------------------------------------------------------- config

    public static void setApkPath(String path) {
        if (path != null && !path.isEmpty()) {
            sApkPath = path;
        }
    }

    public static String getApkPath() {
        return sApkPath;
    }

    public static void setApplicationClassName(String className) {
        sApplicationClassName = className;
    }

    public static String getApplicationClassName() {
        return sApplicationClassName;
    }

    // ---------------------------------------------------------------- proxy

    /**
     * Build the dynamic proxy implementing {@code IPackageManager}.  Resolved at
     * runtime — this is why {@code IPackageManager} is never named at compile
     * time.  The caller (OHServiceManager / getAdapterBinder) is responsible for
     * exposing this proxy through an {@code IBinder} whose
     * {@code queryLocalInterface()} returns it, so that
     * {@code IPackageManager.Stub.asInterface(getService("package"))} short-
     * circuits to the local instance instead of attempting a transact.
     */
    public static Object createProxy() throws ClassNotFoundException {
        Class<?> iface = Class.forName("android.content.pm.IPackageManager");
        return Proxy.newProxyInstance(iface.getClassLoader(), new Class<?>[] {iface},
                new PackageManagerAdapter());
    }

    // ------------------------------------------------------------- dispatch

    @Override
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        String name = method.getName();

        // java.lang.Object methods routed through the proxy.
        if ("toString".equals(name)) {
            return TAG + "$Proxy";
        }
        if ("hashCode".equals(name)) {
            return System.identityHashCode(proxy);
        }
        if ("equals".equals(name)) {
            return proxy == (args == null ? null : args[0]);
        }
        if ("asBinder".equals(name)) {
            // The local binder wrapper supplies the real IBinder; the interface
            // proxy itself has none.
            return null;
        }

        // ---- application / package metadata (the boot-critical path) ----
        if (name.startsWith("getApplicationInfo")) {
            return buildApplicationInfo(extractPackageName(args));
        }
        if (name.startsWith("getPackageInfo")) {
            return buildPackageInfo(extractPackageName(args));
        }

        // ---- identity / uid queries ----
        if ("getPackagesForUid".equals(name)) {
            return new String[] {TARGET_PACKAGE};
        }
        if ("getNameForUid".equals(name)) {
            return TARGET_PACKAGE;
        }
        if ("getNamesForUids".equals(name)) {
            int n = countUids(args);
            String[] out = new String[n];
            for (int i = 0; i < n; i++) {
                out[i] = TARGET_PACKAGE;
            }
            return out;
        }
        if ("getPackageUid".equals(name) || "getPackageUidAsUser".equals(name)) {
            return APP_UID;
        }
        if ("getPackageGids".equals(name) || "getPackageGidsAsUser".equals(name)) {
            return new int[0];
        }

        // ---- permission checks: grant everything on the boot path ----
        if ("checkPermission".equals(name) || "checkUidPermission".equals(name)) {
            return PERMISSION_GRANTED;
        }

        // ---- misc presence checks ----
        if ("isPackageAvailable".equals(name)) {
            return Boolean.TRUE;
        }

        // Everything else: sane, type-appropriate default (0 / false / null /
        // empty).  Notably ParceledListSlice-returning queries (getInstalled*,
        // queryIntent*) and ResolveInfo-returning resolves fall through to null
        // here — not exercised on the com.uptodown boot path.
        return defaultValue(method.getReturnType());
    }

    // ---------------------------------------------------------- synthesizers

    /**
     * Synthesize an {@link ApplicationInfo}.  When the request is for the target
     * package (or null/empty, which the boot path uses for "my own" lookups) the
     * full target profile is returned; otherwise a valid-but-generic record for
     * the requested package is returned so callers never NPE on a null.
     */
    private static ApplicationInfo buildApplicationInfo(String requested) {
        String pkg = (requested == null || requested.isEmpty()) ? TARGET_PACKAGE : requested;
        boolean isTarget = TARGET_PACKAGE.equals(pkg);
        String dataDir = isTarget ? DATA_DIR : "/data/local/tmp/" + pkg;

        ApplicationInfo ai = new ApplicationInfo();

        // Public API fields — set directly.
        ai.packageName = pkg;                // inherited from PackageItemInfo
        ai.className = sApplicationClassName; // null => default android.app.Application
        ai.sourceDir = sApkPath;
        ai.publicSourceDir = sApkPath;
        ai.dataDir = dataDir;
        ai.nativeLibraryDir = dataDir + "/lib";
        ai.deviceProtectedDataDir = dataDir;
        ai.processName = pkg;
        ai.taskAffinity = pkg;
        ai.targetSdkVersion = TARGET_SDK;
        ai.uid = APP_UID;
        ai.enabled = true;
        ai.flags = ApplicationInfo.FLAG_INSTALLED
                | ApplicationInfo.FLAG_HAS_CODE
                | ApplicationInfo.FLAG_ALLOW_BACKUP;

        // Hidden / version-variant fields — tolerant reflection (no-op if the
        // field is absent on this android.jar's ApplicationInfo).
        setField(ai, "credentialProtectedDataDir", dataDir);
        setField(ai, "scanSourceDir", sApkPath);
        setField(ai, "scanPublicSourceDir", sApkPath);
        setField(ai, "minSdkVersion", 21);
        setField(ai, "privateFlags", 0);
        setField(ai, "primaryCpuAbi", "arm64-v8a");

        return ai;
    }

    /** Synthesize a {@link PackageInfo} wrapping the target {@link ApplicationInfo}. */
    private static PackageInfo buildPackageInfo(String requested) {
        String pkg = (requested == null || requested.isEmpty()) ? TARGET_PACKAGE : requested;
        long now = System.currentTimeMillis();

        PackageInfo pi = new PackageInfo();
        pi.packageName = pkg;
        pi.applicationInfo = buildApplicationInfo(pkg);
        pi.versionName = "1.0";
        pi.versionCode = 1; // deprecated but present; sufficient for boot
        pi.firstInstallTime = now;
        pi.lastUpdateTime = now;

        // Newer field mirroring versionCode; no-op where absent.
        setField(pi, "mVersionCode", 1);

        return pi;
    }

    // --------------------------------------------------------------- helpers

    /** First String arg == packageName; else pull it off a VersionedPackage-like arg. */
    private static String extractPackageName(Object[] args) {
        if (args != null) {
            for (Object a : args) {
                if (a instanceof String) {
                    return (String) a;
                }
            }
            for (Object a : args) {
                if (a != null) {
                    try {
                        Method m = a.getClass().getMethod("getPackageName");
                        Object r = m.invoke(a);
                        if (r instanceof String) {
                            return (String) r;
                        }
                    } catch (Throwable ignored) {
                        // not a versioned-package-like arg
                    }
                }
            }
        }
        return TARGET_PACKAGE;
    }

    /** Length of an int[] uid array argument, else 0. */
    private static int countUids(Object[] args) {
        if (args != null) {
            for (Object a : args) {
                if (a instanceof int[]) {
                    return ((int[]) a).length;
                }
            }
        }
        return 0;
    }

    /**
     * Set a field by name, walking up the class hierarchy so both public
     * (inherited) and hidden (declared) fields are reachable.  Silently ignores
     * a missing field — the "sane default" philosophy: an absent field is simply
     * left at its zero value rather than failing the whole synthesis.
     */
    private static void setField(Object target, String name, Object value) {
        Class<?> c = target.getClass();
        while (c != null) {
            try {
                Field f = c.getDeclaredField(name);
                f.setAccessible(true);
                f.set(target, value);
                return;
            } catch (NoSuchFieldException e) {
                c = c.getSuperclass();
            } catch (Throwable t) {
                return; // access / type mismatch — leave default
            }
        }
    }

    /** Type-appropriate default for a return type (copied from WindowSessionAdapter). */
    private static Object defaultValue(Class<?> type) {
        if (type == Void.TYPE) {
            return null;
        }
        if (type == Boolean.TYPE) {
            return Boolean.FALSE;
        }
        if (type == Byte.TYPE) {
            return Byte.valueOf((byte) 0);
        }
        if (type == Short.TYPE) {
            return Short.valueOf((short) 0);
        }
        if (type == Integer.TYPE) {
            return Integer.valueOf(0);
        }
        if (type == Long.TYPE) {
            return Long.valueOf(0L);
        }
        if (type == Float.TYPE) {
            return Float.valueOf(0.0f);
        }
        if (type == Double.TYPE) {
            return Double.valueOf(0.0d);
        }
        if (type == Character.TYPE) {
            return Character.valueOf((char) 0);
        }
        return null;
    }

    @SuppressWarnings("unused")
    private static void log(String msg) {
        try { System.err.println("[" + TAG + "] " + msg); } catch (Throwable __e) {}
    }
}
