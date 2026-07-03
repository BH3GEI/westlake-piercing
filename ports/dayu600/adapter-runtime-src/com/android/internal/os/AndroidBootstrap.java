package com.android.internal.os;

import java.lang.reflect.Method;

/**
 * Reflection-only bootstrap for the recovered WestLake AppSpawnX shape.
 *
 * DAYU600 currently stages a tiny placeholder framework.jar, so this class must
 * compile without hidden Android framework types.  When a real framework.jar is
 * staged later, the same entrypoints become the child-process handoff into
 * ActivityThread and the launch bridge.
 */
public final class AndroidBootstrap {
    private static final String TAG = "AndroidBootstrap";
    private static volatile boolean sPreloaded;

    private AndroidBootstrap() {
    }

    public static synchronized void preload() {
        if (sPreloaded) {
            return;
        }
        log("preload");
        probeClass("android.app.ActivityThread");
        probeClass("android.app.servertransaction.ClientTransaction");
        probeClass("android.app.servertransaction.LaunchActivityItem");
        probeClass("android.app.servertransaction.ResumeActivityItem");
        probeClass("android.view.ViewRootImpl");
        probeClass("android.view.ThreadedRenderer");
        installServiceInterceptor();
        sPreloaded = true;
    }

    public static void initChild(String[] args) {
        preload();
        log("initChild args=" + describe(args));
        if (envEnabled("WESTLAKE_ACTIVITYTHREAD_MAIN")) {
            callActivityThreadMain(args);
        } else {
            log("ActivityThread.main disabled; set WESTLAKE_ACTIVITYTHREAD_MAIN=1 for a live bootstrap probe");
        }
    }

    public static void onScheduleLaunchAbility(Object appThread, String abilityName, int recordId) {
        preload();
        log("onScheduleLaunchAbility ability=" + abilityName + " recordId=" + recordId
                + " appThread=" + className(appThread));

        Object activityThread = currentActivityThread();
        if (activityThread == null) {
            log("ActivityThread.currentActivityThread() is null; child has not entered Android main");
            return;
        }

        if (!hasClass("android.app.servertransaction.ClientTransaction")
                || !hasClass("android.app.servertransaction.LaunchActivityItem")
                || !hasClass("android.app.servertransaction.ResumeActivityItem")) {
            log("ClientTransaction launch bridge unavailable in staged framework.jar");
            return;
        }

        log("ActivityThread and transaction classes are present; launch item construction is next");
    }

    private static void callActivityThreadMain(String[] args) {
        try {
            Class<?> activityThread = Class.forName("android.app.ActivityThread");
            Method main = activityThread.getDeclaredMethod("main", String[].class);
            main.setAccessible(true);
            log("calling ActivityThread.main");
            main.invoke(null, new Object[] {args == null ? new String[0] : args});
            log("ActivityThread.main returned");
        } catch (Throwable t) {
            log("ActivityThread.main failed: " + t);
            if (envEnabled("WESTLAKE_BOOTSTRAP_STRICT")) {
                throw new RuntimeException(t);
            }
        }
    }

    private static void installServiceInterceptor() {
        try {
            Class<?> interceptor = Class.forName("adapter.core.ServiceInterceptor");
            Method install = interceptor.getDeclaredMethod("installAll");
            install.setAccessible(true);
            install.invoke(null);
            log("ServiceInterceptor.installAll invoked");
        } catch (Throwable t) {
            log("ServiceInterceptor unavailable: " + t);
        }
    }

    private static Object currentActivityThread() {
        try {
            Class<?> activityThread = Class.forName("android.app.ActivityThread");
            Method current = activityThread.getDeclaredMethod("currentActivityThread");
            current.setAccessible(true);
            return current.invoke(null);
        } catch (Throwable t) {
            log("currentActivityThread probe failed: " + t);
            return null;
        }
    }

    private static boolean hasClass(String name) {
        try {
            Class.forName(name, false, AndroidBootstrap.class.getClassLoader());
            return true;
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static void probeClass(String name) {
        log((hasClass(name) ? "class present: " : "class missing: ") + name);
    }

    private static boolean envEnabled(String name) {
        try {
            String value = System.getenv(name);
            return "1".equals(value) || "true".equalsIgnoreCase(value) || "yes".equalsIgnoreCase(value);
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static String describe(String[] args) {
        if (args == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder("[");
        for (int i = 0; i < args.length; i++) {
            if (i != 0) {
                sb.append(',');
            }
            sb.append(args[i]);
        }
        sb.append(']');
        return sb.toString();
    }

    private static String className(Object value) {
        return value == null ? "null" : value.getClass().getName();
    }

    private static void log(String msg) {
        // No-op until the real Android ActivityThread/runtime logging path is present.
    }
}
