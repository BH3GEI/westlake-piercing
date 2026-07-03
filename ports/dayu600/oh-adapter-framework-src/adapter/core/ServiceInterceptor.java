package adapter.core;

import adapter.client.WindowSessionAdapter;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public final class ServiceInterceptor {
    private ServiceInterceptor() {
    }

    public static void install() {
        installAll();
    }

    public static void installAll() {
        OHEnvironment.ensureLoaded();
        installWindowSession();
    }

    private static void installWindowSession() {
        try {
            Object adapter = WindowSessionAdapter.createProxy();
            replaceStaticField("android.view.WindowManagerGlobal", "sWindowSession", adapter);
            log("IWindowSession adapter installed: " + adapter.getClass().getName());
        } catch (Throwable t) {
            log("IWindowSession adapter install failed: " + t);
        }
    }

    private static void replaceStaticField(String className, String fieldName, Object value)
            throws Exception {
        Class<?> target = Class.forName(className);
        Field field = target.getDeclaredField(fieldName);
        field.setAccessible(true);
        field.set(null, value);
    }

    @SuppressWarnings("unused")
    private static void replaceSingletonInstance(String managerClassName, String singletonFieldName,
            Object adapterInstance) throws Exception {
        Class<?> mgr = Class.forName(managerClassName);
        Field singletonField = mgr.getDeclaredField(singletonFieldName);
        singletonField.setAccessible(true);
        Object singleton = singletonField.get(null);
        if (singleton == null) {
            log(singletonFieldName + " is null, cannot install adapter");
            return;
        }

        Method get = singleton.getClass().getDeclaredMethod("get");
        get.setAccessible(true);
        get.invoke(singleton);

        Field instance = singleton.getClass().getSuperclass().getDeclaredField("mInstance");
        instance.setAccessible(true);
        instance.set(singleton, adapterInstance);
    }

    private static void log(String msg) {
        System.err.println("[ServiceInterceptor] " + msg);
    }
}
