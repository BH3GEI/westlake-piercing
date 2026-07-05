package westlake.adapter.window;

import android.graphics.Point;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;

import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/**
 * In-process adapter for {@code android.hardware.display.IDisplayManager}.
 *
 * <p>This is the FIRST service the real ActivityThread boot demands:
 * {@code DisplayManagerGlobal.getInstance()} does
 * {@code ServiceManager.getService(Context.DISPLAY_SERVICE)} then
 * {@code IDisplayManager.Stub.asInterface(binder)} and finally drives
 * {@code getDisplayInfo(0)} / {@code getDisplayIds(false)} / {@code registerCallback(...)}.
 * On the DAYU600 OHOS board there is no real Binder/IPC, so we return a LOCAL
 * binder whose {@code queryLocalInterface(DESCRIPTOR)} yields a dynamic-proxy
 * IDisplayManager. Because {@code Stub.asInterface} finds a local interface it
 * uses our proxy DIRECTLY and never falls through to {@code Stub.Proxy.transact()}
 * -- i.e. NO real IPC, NO transact.
 *
 * <p>Compiles against android.jar (public API) ONLY. Every {@code @hide} type
 * ({@code android.hardware.display.IDisplayManager}, {@code android.view.DisplayInfo},
 * {@code android.view.Display$Mode}) is resolved at RUNTIME via reflection, never
 * imported or referenced at compile time. Build:
 * {@code javac --release 8 -cp android.jar ...}.
 *
 * <p>Synthesized data: ONE logical default display, id=0, 1200x1920 (portrait,
 * matching the DAYU600 panel), density 320 dpi (DisplayMetrics density factor 2.0),
 * rotation 0, refresh rate 60 Hz.
 *
 * <p>NOTE ON PACKAGE: the recovered OHServiceManager fragment dispatches
 * {@code case "display": return adapter.window.DisplayManagerAdapter.getInstance().asBinder();}
 * i.e. it names the class {@code adapter.window.DisplayManagerAdapter}. This rebuild
 * re-namespaces adapters under {@code westlake.*}; the rebuilt OHServiceManager must
 * call {@code westlake.adapter.window.DisplayManagerAdapter.getInstance().asBinder()}.
 * The {@code getInstance()} + {@code asBinder()} contract is preserved verbatim.
 */
public final class DisplayManagerAdapter implements InvocationHandler {

    private static final String TAG = "DisplayManagerAdapter";

    /** AIDL descriptor == fully-qualified interface name == Stub.DESCRIPTOR. */
    private static final String IFACE = "android.hardware.display.IDisplayManager";

    // --- Synthesized default-display geometry (DAYU600 panel) ---
    private static final int DEFAULT_DISPLAY_ID = 0;
    private static final int PANEL_WIDTH = 1200;   // logicalWidth / appWidth
    private static final int PANEL_HEIGHT = 1920;  // logicalHeight / appHeight
    private static final int DENSITY_DPI = 320;    // logicalDensityDpi -> density factor 2.0
    private static final int ROTATION_0 = 0;       // Surface.ROTATION_0
    private static final float REFRESH_RATE = 60.0f;
    private static final int STATE_ON = 2;         // Display.STATE_ON
    private static final int TYPE_INTERNAL = 1;    // Display.TYPE_INTERNAL

    private static volatile DisplayManagerAdapter sInstance;

    /** Dynamic proxy implementing IDisplayManager, handled by {@code this}. */
    private final Object mProxy;
    /** Local Binder whose queryLocalInterface(IFACE) -> mProxy. Returned by getService. */
    private final IBinder mBinder;

    private DisplayManagerAdapter() {
        Object proxy = null;
        IBinder binder = null;
        try {
            proxy = buildProxy(this);
            Binder b = new Binder();
            // Attach our proxy as the local interface so IDisplayManager.Stub
            // .asInterface(binder) returns it directly (no transact).
            b.attachInterface((IInterface) proxy, IFACE);
            binder = b;
        } catch (Throwable t) {
            log("init failed: " + t);
        }
        mProxy = proxy;
        mBinder = binder;
    }

    /** Singleton accessor -- the entry point OHServiceManager calls for "display". */
    public static DisplayManagerAdapter getInstance() {
        DisplayManagerAdapter local = sInstance;
        if (local == null) {
            synchronized (DisplayManagerAdapter.class) {
                local = sInstance;
                if (local == null) {
                    local = new DisplayManagerAdapter();
                    sInstance = local;
                }
            }
        }
        return local;
    }

    /**
     * The IBinder that {@code ServiceManager.getService("display")} returns.
     * {@code queryLocalInterface(IFACE)} on it yields our proxy IDisplayManager.
     */
    public IBinder asBinder() {
        return mBinder;
    }

    /**
     * Proven-pattern factory: {@code Class.forName(<@hide iface>)} then
     * {@code Proxy.newProxyInstance(...)}. Returns a proxy that dispatches through
     * the singleton handler. (The "display" path uses {@link #asBinder()}; this is
     * provided for parity with the other client adapters / alternative install sites.)
     */
    public static Object createProxy() throws ClassNotFoundException {
        return buildProxy(getInstance());
    }

    private static Object buildProxy(InvocationHandler handler) throws ClassNotFoundException {
        Class<?> iface = Class.forName(IFACE);
        return Proxy.newProxyInstance(iface.getClassLoader(), new Class<?>[] {iface}, handler);
    }

    @Override
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        // Route java.lang.Object methods (dynamic proxies funnel these here too).
        if (method.getDeclaringClass() == Object.class) {
            String m = method.getName();
            if ("toString".equals(m)) {
                return TAG + "Proxy@" + Integer.toHexString(System.identityHashCode(proxy));
            }
            if ("hashCode".equals(m)) {
                return System.identityHashCode(proxy);
            }
            if ("equals".equals(m)) {
                return proxy == (args == null ? null : args[0]);
            }
            return defaultValue(method.getReturnType());
        }

        String name = method.getName();
        switch (name) {
            case "asBinder":
                return mBinder;

            case "getDisplayInfo":
                return synthesizeDisplayInfo(intArg(args, 0, DEFAULT_DISPLAY_ID));

            case "getDisplayIds":
                // Both getDisplayIds() and getDisplayIds(boolean includeDisabled).
                return new int[] {DEFAULT_DISPLAY_ID};

            case "registerCallback":
            case "registerCallbackWithEventMask":
                // No-op: we never push display-change events.
                log(name + " (no-op)");
                return defaultValue(method.getReturnType());

            case "isUidPresentOnDisplay":
                // The default display hosts our single UID.
                return Boolean.TRUE;

            case "getStableDisplaySize":
                return new Point(PANEL_WIDTH, PANEL_HEIGHT);

            case "getPreferredWideGamutColorSpaceId":
                return Integer.valueOf(0);

            default:
                // Every other IDisplayManager method (wifi-display, brightness,
                // HDR, virtual displays, modes, ...) is irrelevant to the boot
                // path: return a type-appropriate default.
                return defaultValue(method.getReturnType());
        }
    }

    /**
     * Build an {@code android.view.DisplayInfo} (an {@code @hide} class) via reflection
     * and fill the fields the framework reads for the default display. Every field set
     * is guarded so version drift (a renamed/removed field) degrades gracefully instead
     * of aborting synthesis.
     */
    private Object synthesizeDisplayInfo(int displayId) {
        try {
            Class<?> diClass = Class.forName("android.view.DisplayInfo");
            Object di = diClass.getConstructor().newInstance();

            // Core fields explicitly required by the boot path.
            setInt(di, "appWidth", PANEL_WIDTH);
            setInt(di, "appHeight", PANEL_HEIGHT);
            setInt(di, "logicalWidth", PANEL_WIDTH);
            setInt(di, "logicalHeight", PANEL_HEIGHT);
            setInt(di, "logicalDensityDpi", DENSITY_DPI);
            setInt(di, "rotation", ROTATION_0);
            setInt(di, "displayId", displayId);

            // Defensive extras so Display/DisplayMetrics/Configuration derivations
            // and refresh-rate reads don't NPE or produce degenerate values.
            int minDim = Math.min(PANEL_WIDTH, PANEL_HEIGHT);
            int maxDim = Math.max(PANEL_WIDTH, PANEL_HEIGHT);
            setInt(di, "smallestNominalAppWidth", minDim);
            setInt(di, "largestNominalAppWidth", maxDim);
            setInt(di, "smallestNominalAppHeight", minDim);
            setInt(di, "largestNominalAppHeight", maxDim);
            setFloat(di, "physicalXDpi", (float) DENSITY_DPI);
            setFloat(di, "physicalYDpi", (float) DENSITY_DPI);
            setFloat(di, "refreshRate", REFRESH_RATE);
            setFloat(di, "renderFrameRate", REFRESH_RATE);
            setInt(di, "state", STATE_ON);
            setInt(di, "type", TYPE_INTERNAL);
            setInt(di, "layerStack", 0);
            setInt(di, "flags", 0);
            setObject(di, "name", "DAYU600 Built-in Screen", String.class);
            setObject(di, "uniqueId", "local:" + displayId, String.class);

            // Provide one Display.Mode so Display.getMode()/getRefreshRate()
            // (which iterate supportedModes) resolve cleanly.
            trySetMode(di, PANEL_WIDTH, PANEL_HEIGHT, REFRESH_RATE);

            return di;
        } catch (Throwable t) {
            log("synthesizeDisplayInfo failed: " + t);
            return null;
        }
    }

    private static void trySetMode(Object di, int w, int h, float refreshRate) {
        try {
            Class<?> modeClass = Class.forName("android.view.Display$Mode");
            Object mode;
            int modeId = 1;
            try {
                // Preferred: Mode(int modeId, int width, int height, float refreshRate)
                Constructor<?> c = modeClass.getDeclaredConstructor(
                        int.class, int.class, int.class, float.class);
                c.setAccessible(true);
                mode = c.newInstance(modeId, w, h, refreshRate);
            } catch (NoSuchMethodException nsme) {
                // Fallback: Mode(int width, int height, float refreshRate)
                Constructor<?> c = modeClass.getDeclaredConstructor(
                        int.class, int.class, float.class);
                c.setAccessible(true);
                mode = c.newInstance(w, h, refreshRate);
                Object id = modeClass.getMethod("getModeId").invoke(mode);
                if (id instanceof Integer) {
                    modeId = (Integer) id;
                }
            }
            Object modeArray = Array.newInstance(modeClass, 1);
            Array.set(modeArray, 0, mode);
            Field supportedModes = di.getClass().getField("supportedModes");
            supportedModes.set(di, modeArray);
            setInt(di, "modeId", modeId);
            setInt(di, "defaultModeId", modeId);
        } catch (Throwable ignored) {
            // Non-fatal: the boot retrieval path guards on info == null, not on mode.
        }
    }

    // --- reflection field setters (guarded; public DisplayInfo fields) ---

    private static void setInt(Object target, String field, int value) {
        try {
            target.getClass().getField(field).setInt(target, value);
        } catch (Throwable ignored) {
        }
    }

    private static void setFloat(Object target, String field, float value) {
        try {
            target.getClass().getField(field).setFloat(target, value);
        } catch (Throwable ignored) {
        }
    }

    private static void setObject(Object target, String field, Object value, Class<?> ignoredType) {
        try {
            target.getClass().getField(field).set(target, value);
        } catch (Throwable ignored) {
        }
    }

    private static int intArg(Object[] args, int index, int fallback) {
        if (args == null || args.length <= index || !(args[index] instanceof Integer)) {
            return fallback;
        }
        return (Integer) args[index];
    }

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

    private static void log(String msg) {
        try { System.err.println("[" + TAG + "] " + msg); } catch (Throwable __e) {}
    }
}
