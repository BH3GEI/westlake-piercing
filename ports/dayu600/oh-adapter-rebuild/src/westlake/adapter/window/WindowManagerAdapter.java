package westlake.adapter.window;

import android.graphics.Point;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/**
 * Dynamic-proxy adapter for the @hide framework interface
 * {@code android.view.IWindowManager}.
 *
 * <p>Wine-style OS-boundary shim: the real {@code ActivityThread} / {@code PhoneWindow} /
 * {@code WindowManagerImpl} boot path resolves {@code ServiceManager.getService("window")}
 * and calls metadata methods (display size, navigation-bar presence, default rotation,
 * {@code openSession}, rotation watching, ...). There is no real Binder/IPC on the DAYU600
 * OHOS board, so this adapter answers those calls in-process with synthesized values —
 * NO transact, NO remote object.
 *
 * <p>Compiles against ONLY {@code android.jar} (public API). The @hide interface
 * {@code android.view.IWindowManager} and the sibling {@code IWindowSession} adapter are
 * resolved at RUNTIME via {@link Class#forName} / reflection, never referenced at compile
 * time. Mirrors the proven {@code adapter.client.WindowSessionAdapter} shape:
 * a {@link InvocationHandler} with a static {@link #createProxy()} factory.
 */
public final class WindowManagerAdapter implements InvocationHandler {
    private static final String TAG = "WindowManagerAdapter";

    /** Synthesized primary-display geometry (portrait), matching the OHOS panel. */
    private static final int DISPLAY_WIDTH = 1200;
    private static final int DISPLAY_HEIGHT = 1920;

    /** {@code android.view.Surface.ROTATION_0} — the display is never rotated. */
    private static final int ROTATION_0 = 0;

    /** No software/hardware navigation bar on this board. */
    private static final boolean HAS_NAVIGATION_BAR = false;

    /**
     * Candidate fully-qualified names for the existing IWindowSession adapter. The proven
     * implementation lives in {@code adapter.client.WindowSessionAdapter}; the other names
     * cover the recovered {@code adapter.window} design and this rebuild tree. Resolved
     * lazily at runtime so this file needs none of them on the compile classpath.
     */
    private static final String[] WINDOW_SESSION_ADAPTERS = {
            "adapter.client.WindowSessionAdapter",
            "westlake.adapter.window.WindowSessionAdapter",
            "adapter.window.WindowSessionAdapter",
    };

    private WindowManagerAdapter() {
    }

    public static Object createProxy() throws ClassNotFoundException {
        Class<?> iface = Class.forName("android.view.IWindowManager");
        return Proxy.newProxyInstance(iface.getClassLoader(), new Class<?>[] {iface},
                new WindowManagerAdapter());
    }

    @Override
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        String name = method.getName();

        // Display geometry: void methods that write into an `out Point size` argument.
        if ("getInitialDisplaySize".equals(name) || "getBaseDisplaySize".equals(name)) {
            writeDisplaySize(name, args);
            return defaultValue(method.getReturnType());
        }

        // Navigation bar presence: boolean hasNavigationBar(int displayId).
        if ("hasNavigationBar".equals(name)) {
            log("hasNavigationBar -> " + HAS_NAVIGATION_BAR);
            return Boolean.valueOf(HAS_NAVIGATION_BAR);
        }

        // Rotation queries: int, always ROTATION_0.
        if ("getDefaultDisplayRotation".equals(name) || "getDisplayUserRotation".equals(name)) {
            log(name + " -> " + ROTATION_0);
            return Integer.valueOf(ROTATION_0);
        }

        // watchRotation(IRotationWatcher, int) -> int: register (no-op) and report current.
        if ("watchRotation".equals(name)) {
            log("watchRotation (no-op register) -> " + ROTATION_0);
            return Integer.valueOf(ROTATION_0);
        }

        // openSession(IWindowSessionCallback) -> IWindowSession: delegate to the existing
        // WindowSessionAdapter proxy (resolved reflectively).
        if ("openSession".equals(name)) {
            return openSession();
        }

        if ("asBinder".equals(name)) {
            return null;
        }

        // Everything else: type-appropriate default (null for objects, 0/false for primitives).
        return defaultValue(method.getReturnType());
    }

    /**
     * Sets the first {@link Point} found in {@code args} to the synthesized display size.
     * Both {@code getInitialDisplaySize} and {@code getBaseDisplaySize} take an
     * {@code out Point size} the framework reads back after the call returns.
     */
    private void writeDisplaySize(String name, Object[] args) {
        Point size = firstPoint(args);
        if (size == null) {
            log(name + ": no out-Point argument, skipping");
            return;
        }
        size.x = DISPLAY_WIDTH;
        size.y = DISPLAY_HEIGHT;
        log(name + " -> " + DISPLAY_WIDTH + "x" + DISPLAY_HEIGHT);
    }

    /**
     * Returns a fresh IWindowSession proxy by delegating to the existing
     * {@code WindowSessionAdapter.createProxy()}, located reflectively so this class carries
     * no compile-time dependency on it. Returns {@code null} if no adapter can be resolved.
     */
    private Object openSession() {
        for (String className : WINDOW_SESSION_ADAPTERS) {
            try {
                Class<?> adapter = Class.forName(className);
                Method createProxy = adapter.getMethod("createProxy");
                Object session = createProxy.invoke(null);
                log("openSession -> " + className + " session=" + className(session));
                return session;
            } catch (ClassNotFoundException notHere) {
                // Try the next candidate name.
            } catch (Throwable t) {
                log("openSession via " + className + " failed: " + t);
            }
        }
        log("openSession: no WindowSessionAdapter resolved, returning null");
        return null;
    }

    private static Point firstPoint(Object[] args) {
        if (args == null) {
            return null;
        }
        for (Object arg : args) {
            if (arg instanceof Point) {
                return (Point) arg;
            }
        }
        return null;
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

    private static String className(Object value) {
        return value == null ? "null" : value.getClass().getName();
    }

    private static void log(String msg) {
        try { System.err.println("[" + TAG + "] " + msg); } catch (Throwable __e) {}
    }
}
