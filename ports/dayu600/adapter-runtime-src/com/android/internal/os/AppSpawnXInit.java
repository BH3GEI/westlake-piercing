package com.android.internal.os;

import java.lang.reflect.Method;

/**
 * Minimal AppSpawnX Java entrypoint for the DAYU600 port.
 *
 * The historical WestLake adapter preloaded this class in the appspawn-x
 * parent, then called initChild after fork/specialize.  Keep several narrow
 * overloads so recovered native code can bind whichever signature it expects.
 */
public final class AppSpawnXInit {
    private static final String TAG = "AppSpawnXInit";
    private static volatile boolean sPreloaded;

    private AppSpawnXInit() {
    }

    public static void preload() {
        preloadCommon();
    }

    public static void preload(String[] args) {
        log("D", "preload args=" + describe(args), null);
        preloadCommon();
    }

    public static void preForkInit() {
        preloadCommon();
    }

    public static void initChild() {
        initChild(new String[0]);
    }

    public static void initChild(String[] args) {
        preloadCommon();
        log("I", "initChild args=" + describe(args), null);
        AndroidBootstrap.initChild(args);
    }

    public static void initChild(String procName, String bundleName, int uid, int flags) {
        preloadCommon();
        log("I", "initChild proc=" + procName + " bundle=" + bundleName
                + " uid=" + uid + " flags=" + flags, null);
        AndroidBootstrap.initChild(new String[] {procName, bundleName, String.valueOf(uid),
                String.valueOf(flags)});
    }

    public static void initChild(String procName, String bundleName, int uid, long flags) {
        preloadCommon();
        log("I", "initChild proc=" + procName + " bundle=" + bundleName
                + " uid=" + uid + " flags=" + flags, null);
        AndroidBootstrap.initChild(new String[] {procName, bundleName, String.valueOf(uid),
                String.valueOf(flags)});
    }

    public static void postForkChild() {
        initChild();
    }

    public static int initChildReturnCode(String[] args) {
        initChild(args);
        return 0;
    }

    public static void main(String[] args) {
        initChild(args);
    }

    private static synchronized void preloadCommon() {
        if (sPreloaded) {
            return;
        }

        try {
            System.loadLibrary("oh_adapter_bridge");
            log("I", "Loaded liboh_adapter_bridge.so", null);
        } catch (Throwable t) {
            log("W", "Failed to load liboh_adapter_bridge.so: " + t, t);
        }

        cacheClass("adapter.core.OHEnvironment");
        cacheClass("adapter.client.ActivityManagerAdapter");
        cacheClass("adapter.client.ActivityTaskManagerAdapter");
        cacheClass("adapter.client.WindowSessionAdapter");
        cacheClass("adapter.client.InputEventBridge");
        cacheClass("adapter.bridge.callback.AppSchedulerBridge");
        cacheClass("adapter.activity.AppSchedulerBridge");
        AndroidBootstrap.preload();

        try {
            System.gc();
            System.runFinalization();
            System.gc();
        } catch (Throwable ignored) {
        }
        sPreloaded = true;
    }

    private static void cacheClass(String name) {
        try {
            Class.forName(name, false, AppSpawnXInit.class.getClassLoader());
            log("D", "cached " + name, null);
        } catch (Throwable ignored) {
            log("D", "adapter class not present yet: " + name, null);
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

    private static void log(String level, String msg, Throwable t) {
        // No-op in the early standalone ART probe. Reflection-based logging can
        // touch ThreadLocal before ActivityThread has initialized the runtime.
    }

    private static String toMethod(String level) {
        if ("E".equals(level)) {
            return "e";
        }
        if ("W".equals(level)) {
            return "w";
        }
        if ("D".equals(level)) {
            return "d";
        }
        return "i";
    }
}
