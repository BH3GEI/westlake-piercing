package adapter.client;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.HashMap;
import java.util.Map;

public final class WindowSessionAdapter implements InvocationHandler {
    private static final String TAG = "WindowSessionAdapter";
    private static final Map<Object, int[]> SESSION_MAP = new HashMap<>();
    private static int sNextSessionId = 1;

    private WindowSessionAdapter() {
    }

    public static Object createProxy() throws ClassNotFoundException {
        Class<?> iface = Class.forName("android.view.IWindowSession");
        return Proxy.newProxyInstance(iface.getClassLoader(), new Class<?>[] {iface},
                new WindowSessionAdapter());
    }

    @Override
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        String name = method.getName();
        if ("addToDisplay".equals(name) || "addToDisplayAsUser".equals(name)
                || "addToDisplayWithoutInputChannel".equals(name)) {
            return addToDisplay(args, method.getReturnType());
        }
        if ("relayout".equals(name) || "relayoutAsync".equals(name)) {
            return relayout(args, method.getReturnType());
        }
        if ("finishDrawing".equals(name)) {
            finishDrawing(args);
            return defaultValue(method.getReturnType());
        }
        if ("remove".equals(name)) {
            remove(args);
            return null;
        }
        if ("asBinder".equals(name)) {
            return null;
        }
        return defaultValue(method.getReturnType());
    }

    private Object addToDisplay(Object[] args, Class<?> returnType) {
        Object window = firstArg(args);
        int sessionId;
        synchronized (SESSION_MAP) {
            sessionId = sNextSessionId++;
            SESSION_MAP.put(tokenOf(window), new int[] {sessionId, 0, 0, 720, 1280});
        }
        log("addToDisplay session=" + sessionId + " window=" + className(window));
        return defaultValue(returnType);
    }

    private Object relayout(Object[] args, Class<?> returnType) {
        Object window = firstArg(args);
        int[] session = findSession(window);
        int sessionId = session == null ? 0 : session[0];
        log("relayout session=" + sessionId + " argc=" + (args == null ? 0 : args.length));
        return defaultValue(returnType);
    }

    private void finishDrawing(Object[] args) {
        Object window = firstArg(args);
        int[] session = findSession(window);
        log("finishDrawing session=" + (session == null ? 0 : session[0]));
    }

    private void remove(Object[] args) {
        Object window = firstArg(args);
        synchronized (SESSION_MAP) {
            int[] removed = SESSION_MAP.remove(tokenOf(window));
            log("remove session=" + (removed == null ? 0 : removed[0]));
        }
    }

    private static Object firstArg(Object[] args) {
        return args == null || args.length == 0 ? null : args[0];
    }

    private static int[] findSession(Object window) {
        synchronized (SESSION_MAP) {
            return SESSION_MAP.get(tokenOf(window));
        }
    }

    private static Object tokenOf(Object window) {
        if (window == null) {
            return WindowSessionAdapter.class;
        }
        try {
            Method asBinder = window.getClass().getMethod("asBinder");
            Object token = asBinder.invoke(window);
            return token == null ? window : token;
        } catch (Throwable ignored) {
            return window;
        }
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
        System.err.println("[" + TAG + "] " + msg);
    }
}
