package westlake.adapter;

import android.os.IBinder;

import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/**
 * Generic in-process {@code ServiceManager} for the DAYU600 OHOS Wine-style bring-up.
 *
 * <p>CONTEXT. We boot the real {@code com.uptodown} APK on a custom ART + the real
 * Android {@code framework.jar}, but on an OpenHarmony board there is no real
 * Binder/IPC. The real {@code ActivityThread} boot NPEs the instant it calls
 * {@code ServiceManager.getService("display")} because {@code getIServiceManager()}
 * would normally reach a {@code /dev/binder} context object that does not exist here.
 *
 * <p>THE FIX. {@link #install()} reflectively pokes a dynamic {@code IServiceManager}
 * proxy into {@code android.os.ServiceManager.sServiceManager}. Because
 * {@code ServiceManager.getIServiceManager()} short-circuits when that field is already
 * non-null, every {@code getService} / {@code rawGetService} / {@code getService2} call
 * is then answered by us — no {@code BinderInternal.getContextObject()}, no transaction.
 *
 * <p>For each supported service name {@link #lookup(String)} returns a LOCAL
 * {@link IBinder}: a {@link Proxy} over {@code android.os.IBinder} whose
 * {@code queryLocalInterface(descriptor)} returns the service's local {@code IInterface}
 * stub (itself a {@link Proxy} over the {@code @hide} {@code IXxx} framework interface).
 * That is exactly the object {@code IXxx.Stub.asInterface(binder)} looks for, so it is
 * returned WITHOUT a transaction and the caller talks to a dynamic-proxy adapter that
 * synthesizes data in-process.
 *
 * <p>Name -&gt; adapter mapping (per the recovered {@code OHServiceManager} fragment):
 * <ul>
 *   <li>{@code display}       -&gt; {@code DisplayManagerAdapter}       ({@code android.hardware.display.IDisplayManager})</li>
 *   <li>{@code package}       -&gt; {@code PackageManagerAdapter}       ({@code android.content.pm.IPackageManager})</li>
 *   <li>{@code window}        -&gt; {@code WindowManagerAdapter}        ({@code android.view.IWindowManager})</li>
 *   <li>{@code activity}      -&gt; {@code ActivityManagerAdapter}      ({@code android.app.IActivityManager})</li>
 *   <li>{@code activity_task} -&gt; {@code ActivityTaskManagerAdapter}  ({@code android.app.IActivityTaskManager})</li>
 * </ul>
 * Any other name (connectivity / network_management / content_capture / game / ...) has
 * no OH analog and returns {@code null}; boot-path framework code is expected to tolerate
 * a null service, matching the recovered fragment's documented behaviour.
 *
 * <p>BUILD CONTRACT. This file compiles against ONLY {@code android.jar} (public API):
 * the sole framework type referenced at compile time is the public
 * {@code android.os.IBinder}. Everything hidden — {@code android.os.ServiceManager},
 * {@code android.os.IServiceManager}, and every {@code IXxx} service interface — is
 * resolved at RUNTIME via {@link Class#forName}. Adapter classes are likewise resolved
 * reflectively (a list of candidate fully-qualified names per service, in packages under
 * {@code westlake.adapter.*}), each expected to expose a
 * {@code public static Object createProxy()} that returns a {@link Proxy} over its
 * {@code @hide} interface — the proven {@code adapter.client.WindowSessionAdapter} /
 * {@code westlake.adapter.window.WindowManagerAdapter} shape. If an adapter cannot be
 * resolved the local binder still works: its methods return type-appropriate defaults
 * (empty arrays/collections, {@code false}, {@code 0}, {@code null}) so the boot path sees
 * a non-null service instead of an NPE.
 */
public final class OHServiceManager {
    private static final String TAG = "OHServiceManager";

    /**
     * Supported service name -&gt; its {@code @hide} interface's fully-qualified name. This
     * string doubles as the {@code queryLocalInterface} descriptor: AIDL-generated stubs use
     * the interface FQN verbatim as their {@code DESCRIPTOR}.
     */
    private static final Map<String, String> DESCRIPTORS = new HashMap<String, String>();

    /**
     * Supported service name -&gt; candidate adapter class FQNs, tried in order at runtime.
     * Multiple names cover this rebuild tree ({@code westlake.adapter.*}) as well as the
     * legacy {@code adapter.*} packaging seen in the recovered fragment.
     */
    private static final Map<String, String[]> ADAPTERS = new HashMap<String, String[]>();

    /** name -&gt; built local binder; a service resolves to one stable binder for the process. */
    private static final Map<String, IBinder> CACHE = new ConcurrentHashMap<String, IBinder>();

    static {
        DESCRIPTORS.put("display", "android.hardware.display.IDisplayManager");
        DESCRIPTORS.put("package", "android.content.pm.IPackageManager");
        DESCRIPTORS.put("window", "android.view.IWindowManager");
        DESCRIPTORS.put("activity", "android.app.IActivityManager");
        DESCRIPTORS.put("activity_task", "android.app.IActivityTaskManager");

        ADAPTERS.put("display", new String[] {
                "westlake.adapter.display.DisplayManagerAdapter",
                "westlake.adapter.window.DisplayManagerAdapter",
                "adapter.window.DisplayManagerAdapter",
                "adapter.display.DisplayManagerAdapter",
        });
        ADAPTERS.put("package", new String[] {
                "westlake.adapter.packagemanager.PackageManagerAdapter",
                "westlake.adapter.pm.PackageManagerAdapter",
                "adapter.packagemanager.PackageManagerAdapter",
        });
        ADAPTERS.put("window", new String[] {
                "westlake.adapter.window.WindowManagerAdapter",
                "adapter.window.WindowManagerAdapter",
        });
        ADAPTERS.put("activity", new String[] {
                "westlake.adapter.activity.ActivityManagerAdapter",
                "adapter.activity.ActivityManagerAdapter",
        });
        ADAPTERS.put("activity_task", new String[] {
                "westlake.adapter.activity.ActivityTaskManagerAdapter",
                "adapter.activity.ActivityTaskManagerAdapter",
        });
    }

    private OHServiceManager() {
    }

    // ------------------------------------------------------------------------
    // Installation
    // ------------------------------------------------------------------------

    /**
     * Installs this manager by reflectively setting
     * {@code android.os.ServiceManager.sServiceManager} to a {@link Proxy} over the
     * {@code @hide} {@code android.os.IServiceManager}. From then on
     * {@code ServiceManager.getIServiceManager()} returns our proxy (it early-returns when
     * the field is non-null), so {@code getService} / {@code rawGetService} /
     * {@code getService2} route through {@link ServiceManagerHandler} -&gt; {@link #lookup}.
     *
     * <p>Idempotent and never throws: any failure is logged and swallowed so a bring-up
     * harness can call it blindly during early boot.
     */
    // [DAYU600] This runtime's boot-image left java.lang.reflect.Proxy.proxyClassCache == null,
    // so ANY dynamic proxy NPEs in Proxy.getProxyClass0. Rebuild the WeakCache once.
    private static void repairProxyCache() {
        try {
            Class<?> proxyCls = Class.forName("java.lang.reflect.Proxy");
            java.lang.reflect.Field f = proxyCls.getDeclaredField("proxyClassCache");
            f.setAccessible(true);
            if (f.get(null) != null) return;
            Class<?> wcCls = Class.forName("java.lang.reflect.WeakCache");
            Class<?> kfCls = Class.forName("java.lang.reflect.Proxy$KeyFactory");
            Class<?> pcfCls = Class.forName("java.lang.reflect.Proxy$ProxyClassFactory");
            java.lang.reflect.Constructor<?> kfC = kfCls.getDeclaredConstructor();
            kfC.setAccessible(true);
            java.lang.reflect.Constructor<?> pcfC = pcfCls.getDeclaredConstructor();
            pcfC.setAccessible(true);
            java.lang.reflect.Constructor<?> wcC = wcCls.getDeclaredConstructor(
                    java.util.function.BiFunction.class, java.util.function.BiFunction.class);
            wcC.setAccessible(true);
            Object wc = wcC.newInstance(kfC.newInstance(), pcfC.newInstance());
            f.set(null, wc);
            log("repaired Proxy.proxyClassCache");
        } catch (Throwable t) {
            log("repairProxyCache failed: " + t);
        }
    }

    public static void install() {
        try {
            repairProxyCache();
            Class<?> iServiceManager = Class.forName("android.os.IServiceManager");
            ClassLoader loader = iServiceManager.getClassLoader();
            Object proxy = Proxy.newProxyInstance(loader, new Class<?>[] {iServiceManager},
                    new ServiceManagerHandler());

            Class<?> serviceManager = Class.forName("android.os.ServiceManager");
            Field field = serviceManager.getDeclaredField("sServiceManager");
            field.setAccessible(true);
            field.set(null, proxy);
            log("installed IServiceManager proxy into ServiceManager.sServiceManager: "
                    + proxy.getClass().getName());
        } catch (Throwable t) {
            log("install failed: " + t);
            throw new RuntimeException("OHSMinstall:" + t, t);
        }
    }

    // ------------------------------------------------------------------------
    // Lookup
    // ------------------------------------------------------------------------

    /** Public entry point: service name -&gt; local {@link IBinder}, or {@code null}. */
    public static IBinder lookup(String name) {
        return lookupAdapter(name);
    }

    /**
     * Name -&gt; local binder switch, structured after the recovered fragment (p1612
     * {@code OHServiceManager.java:85}). Supported names resolve to a cached local binder;
     * anything else (no OH analog) returns {@code null}.
     */
    private static IBinder lookupAdapter(String name) {
        if (name == null) {
            return null;
        }
        switch (name) {
            case "display":
            case "package":
            case "window":
            case "activity":
            case "activity_task":
                return cachedBinder(name);
            default:
                // connectivity / network_management / content_capture / game / etc. have no
                // OH analog; boot-path callers must tolerate a null service.
                return null;
        }
    }

    private static IBinder cachedBinder(String name) {
        IBinder cached = CACHE.get(name);
        if (cached != null) {
            return cached;
        }
        IBinder built = buildBinder(name);
        if (built == null) {
            return null;
        }
        IBinder prev = CACHE.putIfAbsent(name, built);
        return prev != null ? prev : built;
    }

    /**
     * Builds the two-layer local binder for {@code name}:
     * <ol>
     *   <li>local {@code IInterface} stub = {@link Proxy} over the {@code @hide} {@code IXxx}
     *       interface, delegating data methods to the adapter and answering
     *       {@code asBinder()} with the enclosing binder;</li>
     *   <li>{@link IBinder} = {@link Proxy} over {@code android.os.IBinder} whose
     *       {@code queryLocalInterface(descriptor)} returns that stub.</li>
     * </ol>
     */
    private static IBinder buildBinder(String name) {
        String descriptor = DESCRIPTORS.get(name);
        if (descriptor == null) {
            return null;
        }
        Class<?> iface;
        try {
            iface = Class.forName(descriptor);
        } catch (Throwable t) {
            log("service '" + name + "' interface " + descriptor + " not resolvable: " + t);
            return null;
        }
        ClassLoader loader = iface.getClassLoader();

        // Holder breaks the binder <-> localInterface construction cycle: the local
        // interface's asBinder() needs the binder, which is built after the interface.
        IBinder[] binderHolder = new IBinder[1];

        Object adapterStub = tryCreateAdapterStub(name);
        Object localInterface = Proxy.newProxyInstance(loader, new Class<?>[] {iface},
                new LocalInterfaceHandler(adapterStub, binderHolder));

        IBinder binder = (IBinder) Proxy.newProxyInstance(loader, new Class<?>[] {IBinder.class},
                new BinderHandler(descriptor, localInterface));
        binderHolder[0] = binder;

        log("built local binder for '" + name + "' descriptor=" + descriptor
                + " adapter=" + (adapterStub == null ? "<defaults>" : adapterStub.getClass().getName()));
        return binder;
    }

    /**
     * Resolves the adapter's local {@code IInterface} stub by trying each candidate class
     * name and invoking its {@code public static Object createProxy()}. Returns the first
     * non-null proxy, or {@code null} if no adapter is present (defaults are then used).
     */
    private static Object tryCreateAdapterStub(String name) {
        String[] candidates = ADAPTERS.get(name);
        if (candidates == null) {
            return null;
        }
        for (String className : candidates) {
            try {
                Class<?> adapter = Class.forName(className);
                Method createProxy = adapter.getMethod("createProxy");
                Object stub = createProxy.invoke(null);
                if (stub != null) {
                    return stub;
                }
            } catch (ClassNotFoundException notHere) {
                // try next candidate
            } catch (NoSuchMethodException noFactory) {
                // not an adapter of the expected shape; try next candidate
            } catch (Throwable t) {
                log("adapter '" + className + "' createProxy failed: " + t);
            }
        }
        return null;
    }

    // ------------------------------------------------------------------------
    // IServiceManager proxy handler
    // ------------------------------------------------------------------------

    /**
     * Backs the {@code android.os.IServiceManager} proxy installed into
     * {@code ServiceManager.sServiceManager}. Dispatches by method name; {@code getService}
     * / {@code checkService} / {@code waitForService} funnel to {@link #lookup(String)}.
     */
    private static final class ServiceManagerHandler implements InvocationHandler {
        @Override
        public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
            String name = method.getName();
            Class<?> ret = method.getReturnType();
            switch (name) {
                case "getService":
                case "checkService":
                case "waitForService":
                    return lookup(firstString(args));
                case "getService2":
                    return getService2Result(ret, firstString(args));
                case "addService":
                    log("addService('" + firstString(args) + "') ignored (in-process manager)");
                    return defaultValue(ret);
                case "listServices":
                    return knownNames();
                case "isDeclared":
                    return Boolean.valueOf(DESCRIPTORS.containsKey(firstString(args)));
                case "getDeclaredInstances":
                case "getUpdatableNames":
                    return new String[0];
                case "updatableViaApex":
                case "getConnectionInfo":
                    return null;
                case "registerForNotifications":
                case "unregisterForNotifications":
                case "registerClientCallback":
                case "tryUnregisterService":
                    return defaultValue(ret);
                case "getInterfaceVersion":
                    return Integer.valueOf(0);
                case "getInterfaceHash":
                    return "";
                case "asBinder":
                    return null;
                case "toString":
                    return TAG + "$IServiceManagerProxy";
                case "hashCode":
                    return Integer.valueOf(System.identityHashCode(proxy));
                case "equals":
                    return Boolean.valueOf(proxy == firstArg(args));
                default:
                    return defaultValue(ret);
            }
        }
    }

    /**
     * Best-effort adapter for the newer {@code IServiceManager.getService2}, whose return
     * type is a version-specific {@code Service} union. If the return type is assignable from
     * {@link IBinder} we return the binder directly; otherwise we instantiate the union and
     * set its binder via {@code setBinder(IBinder)} or a {@code binder} field, falling back to
     * {@code null} on any failure.
     */
    private static Object getService2Result(Class<?> ret, String name) {
        IBinder binder = lookup(name);
        if (ret.isInstance(binder)) {
            return binder;
        }
        if (binder == null) {
            return null;
        }
        try {
            Constructor<?> ctor = ret.getDeclaredConstructor();
            ctor.setAccessible(true);
            Object service = ctor.newInstance();
            try {
                Method setBinder = ret.getMethod("setBinder", IBinder.class);
                setBinder.invoke(service, binder);
                return service;
            } catch (NoSuchMethodException ignored) {
                // fall through to field
            }
            try {
                Field field = ret.getField("binder");
                field.set(service, binder);
            } catch (NoSuchFieldException ignored) {
                // return the bare union; caller may still cope
            }
            return service;
        } catch (Throwable t) {
            log("getService2('" + name + "') union wrap failed: " + t);
            return null;
        }
    }

    private static String[] knownNames() {
        Set<String> names = DESCRIPTORS.keySet();
        return names.toArray(new String[names.size()]);
    }

    // ------------------------------------------------------------------------
    // IBinder proxy handler
    // ------------------------------------------------------------------------

    /**
     * Backs the {@code android.os.IBinder} proxy returned to callers. The crucial method is
     * {@code queryLocalInterface}: it returns the local {@code IInterface} stub regardless of
     * the requested descriptor (this binder hosts exactly one interface), so
     * {@code IXxx.Stub.asInterface} finds an {@code instanceof IXxx} and skips the transaction.
     */
    private static final class BinderHandler implements InvocationHandler {
        private final String descriptor;
        private final Object localInterface;

        BinderHandler(String descriptor, Object localInterface) {
            this.descriptor = descriptor;
            this.localInterface = localInterface;
        }

        @Override
        public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
            String name = method.getName();
            switch (name) {
                case "queryLocalInterface":
                    return localInterface;
                case "getInterfaceDescriptor":
                    return descriptor;
                case "isBinderAlive":
                case "pingBinder":
                    return Boolean.TRUE;
                case "transact":
                    // Never expected on a local binder; report success rather than throw.
                    return Boolean.TRUE;
                case "unlinkToDeath":
                    return Boolean.TRUE;
                case "linkToDeath":
                case "dump":
                case "dumpAsync":
                case "shellCommand":
                case "getExtension":
                    return defaultValue(method.getReturnType());
                case "toString":
                    return TAG + "$LocalBinder(" + descriptor + ")";
                case "hashCode":
                    return Integer.valueOf(System.identityHashCode(localInterface));
                case "equals":
                    return Boolean.valueOf(proxy == firstArg(args));
                default:
                    return defaultValue(method.getReturnType());
            }
        }
    }

    // ------------------------------------------------------------------------
    // Local IInterface stub handler
    // ------------------------------------------------------------------------

    /**
     * Backs the local {@code IInterface} stub ({@link Proxy} over the {@code @hide}
     * {@code IXxx}). {@code asBinder()} returns the enclosing local binder; every other method
     * is delegated to the resolved adapter stub, or answered with a type-appropriate default
     * when no adapter was found.
     */
    private static final class LocalInterfaceHandler implements InvocationHandler {
        private final Object delegate;
        private final IBinder[] binderHolder;

        LocalInterfaceHandler(Object delegate, IBinder[] binderHolder) {
            this.delegate = delegate;
            this.binderHolder = binderHolder;
        }

        @Override
        public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
            String name = method.getName();
            if ("asBinder".equals(name)) {
                return binderHolder[0];
            }
            if ("toString".equals(name)) {
                return TAG + "$LocalInterface";
            }
            if ("hashCode".equals(name)) {
                return Integer.valueOf(System.identityHashCode(proxy));
            }
            if ("equals".equals(name)) {
                return Boolean.valueOf(proxy == firstArg(args));
            }
            if (delegate != null) {
                try {
                    return method.invoke(delegate, args);
                } catch (InvocationTargetException e) {
                    throw e.getTargetException();
                } catch (IllegalAccessException e) {
                    // Fall back to a default if the adapter method is somehow inaccessible.
                    return defaultValue(method.getReturnType());
                }
            }
            return defaultValue(method.getReturnType());
        }
    }

    // ------------------------------------------------------------------------
    // Helpers
    // ------------------------------------------------------------------------

    private static Object firstArg(Object[] args) {
        return args == null || args.length == 0 ? null : args[0];
    }

    private static String firstString(Object[] args) {
        if (args != null) {
            for (Object arg : args) {
                if (arg instanceof String) {
                    return (String) arg;
                }
            }
        }
        return null;
    }

    /**
     * Type-appropriate default for an unhandled method. Primitives yield their zero value;
     * arrays and the common collection interfaces yield empty instances (so framework code
     * that immediately iterates a result does not NPE); everything else yields {@code null}.
     */
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
        if (type.isArray()) {
            return Array.newInstance(type.getComponentType(), 0);
        }
        if (type == List.class || type == java.util.Collection.class || type == Iterable.class) {
            return new ArrayList<Object>();
        }
        if (type == Map.class) {
            return new HashMap<Object, Object>();
        }
        if (type == Set.class) {
            return new HashSet<Object>();
        }
        return null;
    }

    private static void log(String msg) {
        try { System.err.println("[" + TAG + "] " + msg); } catch (Throwable ignored) {}
    }
}
