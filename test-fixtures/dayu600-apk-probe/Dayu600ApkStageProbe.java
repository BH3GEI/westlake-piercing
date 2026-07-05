public final class Dayu600ApkStageProbe {
    private static boolean embeddedNoExit;
    private static int embeddedLastExitCode;
    private static int loaderStatus;

    private static native Class<?> nativeFindClass(String name);
    private static native void nativeWriteText(String path, String text);

    private static Class<?> tryNativeFindClass(String name) {
        try {
            return nativeFindClass(name);
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static Class<?> loadClass(String name, boolean initialize, ClassLoader loader)
            throws ClassNotFoundException {
        try {
            return Class.forName(name, initialize, loader);
        } catch (ClassNotFoundException ignored) {
            Class<?> nativeClass = tryNativeFindClass(name);
            if (nativeClass != null) {
                return nativeClass;
            }
            throw ignored;
        } catch (NoClassDefFoundError ignored) {
            Class<?> nativeClass = tryNativeFindClass(name);
            if (nativeClass != null) {
                return nativeClass;
            }
            throw ignored;
        }
    }

    private static String rootPath() {
        String root = System.getenv("WESTLAKE_ROOT");
        return root == null || root.length() == 0
                ? "/data/local/tmp/westlake-dayu600"
                : root;
    }

    private static String apkPath(String name) {
        return rootPath() + "/apks/" + name;
    }

    private static String probeLogPath(String name) {
        return rootPath() + "/apks/probe-logs/" + name;
    }

    private static boolean finishOrExit(int code) {
        if (embeddedNoExit) {
            embeddedLastExitCode = code;
            try {
                writeText(probeLogPath("embedded-exit-code.txt"), String.valueOf(code) + "\n");
            } catch (Throwable ignored) {
            }
            return true;
        }
        System.exit(code);
        return true;
    }

    private static int classify(Throwable throwable) {
        Throwable t = throwable;
        if (t instanceof java.lang.reflect.InvocationTargetException) {
            Throwable cause = ((java.lang.reflect.InvocationTargetException) t).getCause();
            if (cause != null) {
                t = cause;
            }
        }

        if (t instanceof NoClassDefFoundError) {
            return 21;
        }
        if (t instanceof ClassNotFoundException) {
            return 22;
        }
        if (t instanceof ExceptionInInitializerError) {
            return 23;
        }
        if (t instanceof NullPointerException) {
            return 24;
        }
        if (t instanceof UnsupportedOperationException) {
            return 25;
        }
        if (t instanceof ClassCastException) {
            return 40;
        }
        if (t instanceof ArrayStoreException) {
            return 41;
        }
        if (t instanceof IllegalArgumentException) {
            return 42;
        }
        if (t instanceof IllegalStateException) {
            return 43;
        }
        if (t instanceof IndexOutOfBoundsException) {
            return 44;
        }
        if (t instanceof SecurityException) {
            return 45;
        }
        if (t instanceof RuntimeException) {
            return 27;
        }
        if (t instanceof NoSuchMethodException) {
            return 29;
        }
        if (t instanceof IllegalAccessException) {
            return 30;
        }
        if (t instanceof InstantiationException) {
            return 31;
        }
        if (t instanceof AbstractMethodError) {
            return 33;
        }
        if (t instanceof NoSuchMethodError) {
            return 34;
        }
        if (t instanceof NoSuchFieldError) {
            return 35;
        }
        if (t instanceof IncompatibleClassChangeError) {
            return 36;
        }
        if (t instanceof VerifyError) {
            return 37;
        }
        if (t instanceof IllegalAccessError) {
            return 38;
        }
        if (t instanceof ClassFormatError) {
            return 39;
        }
        if (t instanceof ClassCircularityError) {
            return 46;
        }
        if (t instanceof UnsatisfiedLinkError) {
            return 47;
        }
        if (t instanceof BootstrapMethodError) {
            return 48;
        }
        if (t.getClass() == LinkageError.class) {
            return 49;
        }
        if (t instanceof LinkageError) {
            return 28;
        }
        return 32;
    }

    private static int classifyLite(Throwable throwable) {
        Throwable t = throwable;
        if (t instanceof java.lang.reflect.InvocationTargetException) {
            Throwable cause = ((java.lang.reflect.InvocationTargetException) t).getCause();
            if (cause != null) {
                t = cause;
            }
        }
        if (t instanceof NoClassDefFoundError) return 21;
        if (t instanceof ClassNotFoundException) return 22;
        if (t instanceof ExceptionInInitializerError) return 23;
        if (t instanceof NullPointerException) return 24;
        if (t instanceof UnsupportedOperationException) return 25;
        if (t instanceof RuntimeException) return 27;
        if (t instanceof ClassCastException) return 40;
        if (t instanceof ArrayStoreException) return 41;
        if (t instanceof IllegalArgumentException) return 42;
        if (t instanceof IllegalStateException) return 43;
        if (t instanceof IndexOutOfBoundsException) return 44;
        if (t instanceof SecurityException) return 45;
        if (t instanceof NoSuchMethodException) return 29;
        if (t instanceof IllegalAccessException) return 30;
        if (t instanceof InstantiationException) return 31;
        if (t instanceof AbstractMethodError) return 33;
        if (t instanceof NoSuchMethodError) return 34;
        if (t instanceof NoSuchFieldError) return 35;
        if (t instanceof IncompatibleClassChangeError) return 36;
        if (t instanceof VerifyError) return 37;
        if (t instanceof IllegalAccessError) return 38;
        if (t instanceof ClassFormatError) return 39;
        if (t instanceof ClassCircularityError) return 46;
        if (t instanceof UnsatisfiedLinkError) return 47;
        if (t instanceof BootstrapMethodError) return 48;
        if (t instanceof LinkageError) return 28;
        return 32;
    }

    private static int traceCode(Throwable throwable) {
        Throwable t = throwable;
        if (t instanceof java.lang.reflect.InvocationTargetException) {
            Throwable cause = ((java.lang.reflect.InvocationTargetException) t).getCause();
            if (cause != null) {
                t = cause;
            }
        }
        try {
            StackTraceElement[] stack = t.getStackTrace();
            for (int i = 0; i < stack.length && i < 12; i++) {
                String cls = stack[i].getClassName();
                String method = stack[i].getMethodName();
                if ("com.digiplex.game.MainActivity".equals(cls)) {
                    if ("onCreate".equals(method)) return 60;
                    if ("R".equals(method)) return 61;
                    if ("K".equals(method)) return 62;
                    if ("V".equals(method)) return 63;
                    if ("J".equals(method)) return 64;
                    if ("S".equals(method)) return 65;
                    if ("Q".equals(method)) return 66;
                    if ("E".equals(method)) return 67;
                    if ("W".equals(method)) return 68;
                }
                if ("com.digiplex.game.CustomButton".equals(cls)) {
                    if ("setValue".equals(method)) return 70;
                    if ("<init>".equals(method)) return 71;
                }
                if ("android.app.Activity".equals(cls)) {
                    if ("findViewById".equals(method)) return 72;
                }
                if ("android.content.Context".equals(cls)) {
                    if ("getString".equals(method)) return 73;
                    if ("getSystemService".equals(method)) return 74;
                }
                if ("android.widget.TextView".equals(cls)) {
                    if ("setText".equals(method)) return 75;
                }
            }
            return 98;
        } catch (Throwable ignored) {
            return 97;
        }
    }

    private static int loaderTraceCode(Throwable throwable) {
        Throwable t = throwable;
        if (t instanceof java.lang.reflect.InvocationTargetException) {
            Throwable cause = ((java.lang.reflect.InvocationTargetException) t).getCause();
            if (cause != null) {
                t = cause;
            }
        }
        try {
            StackTraceElement[] stack = t.getStackTrace();
            for (int i = 0; i < stack.length && i < 16; i++) {
                String cls = stack[i].getClassName();
                if ("dalvik.system.VMRuntime".equals(cls)) return 91;
                if ("dalvik.system.DexPathList".equals(cls)) return 92;
                if ("dalvik.system.BaseDexClassLoader".equals(cls)) return 93;
                if ("dalvik.system.PathClassLoader".equals(cls)) return 94;
                if ("java.lang.ClassLoader".equals(cls)) return 95;
                if ("java.util.HashMap".equals(cls)) return 96;
                if ("java.util.concurrent.atomic.AtomicInteger".equals(cls)) return 97;
            }
            return 99;
        } catch (Throwable ignored) {
            return 98;
        }
    }

    private static void emitDetail(String stage, Throwable throwable) {
        try {
            Throwable t = throwable;
            if (t instanceof java.lang.reflect.InvocationTargetException) {
                Throwable cause = ((java.lang.reflect.InvocationTargetException) t).getCause();
                if (cause != null) {
                    t = cause;
                }
            }
            StringBuilder builder = new StringBuilder();
            builder.append(stage).append('\n');
            builder.append(t.getClass().getName()).append('\n');
            String message = t.getMessage();
            builder.append(message == null ? "<null>" : message).append('\n');
            Throwable cause = t.getCause();
            if (cause != null) {
                builder.append("cause=").append(cause.getClass().getName()).append(':');
                builder.append(cause.getMessage() == null ? "<null>" : cause.getMessage()).append('\n');
            }
            StackTraceElement[] stack = t.getStackTrace();
            for (int i = 0; i < stack.length && i < 16; i++) {
                builder.append(stack[i].toString()).append('\n');
            }
            writeText(probeLogPath("detail.txt"), builder.toString());
        } catch (Throwable ignored) {
        }
    }

    private static void emitTiny(String stage, Throwable throwable) {
        try {
            Throwable t = throwable;
            if (t instanceof java.lang.reflect.InvocationTargetException) {
                Throwable cause = ((java.lang.reflect.InvocationTargetException) t).getCause();
                if (cause != null) {
                    t = cause;
                }
            }
            String message = t.getMessage();
            Throwable cause = t.getCause();
            if (cause != null) {
                String causeMessage = cause.getMessage();
                writeText(probeLogPath("detail.txt"),
                        "DETAIL_STAGE=" + stage + "\n"
                                + "DETAIL_CLASS=" + t.getClass().getName() + "\n"
                                + "DETAIL_MESSAGE=" + (message == null ? "<null>" : message) + "\n"
                                + "DETAIL_CAUSE_CLASS=" + cause.getClass().getName() + "\n"
                                + "DETAIL_CAUSE_MESSAGE="
                                + (causeMessage == null ? "<null>" : causeMessage) + "\n");
                return;
            }
            writeText(probeLogPath("detail.txt"),
                    "DETAIL_STAGE=" + stage + "\n"
                            + "DETAIL_CLASS=" + t.getClass().getName() + "\n"
                            + "DETAIL_MESSAGE=" + (message == null ? "<null>" : message) + "\n");
        } catch (Throwable ignored) {
        }
    }

    private static void initApplication(ClassLoader loader) throws Exception {
        try {
            Class<?> appClass = loadClass("com.digiplex.game.MyApplication", true, loader);
            Object app = appClass.getDeclaredConstructor().newInstance();
            if (app instanceof android.app.Application) {
                ((android.app.Application) app).onCreate();
            } else {
                java.lang.reflect.Method onCreate = findNoArgMethod(appClass, "onCreate");
                onCreate.invoke(app);
            }
        } catch (ClassNotFoundException ignored) {
        }
    }

    private static Object initGamePreferences(ClassLoader loader, Object context) throws Exception {
        Class<?> prefsClass = loadClass("com.digiplex.game.e", true, loader);
        java.lang.reflect.Method factory = prefsClass.getDeclaredMethod("p");
        factory.setAccessible(true);
        Object prefs = factory.invoke(null);
        java.lang.reflect.Method init = prefsClass.getDeclaredMethod("o", android.content.Context.class);
        init.setAccessible(true);
        init.invoke(prefs, context);
        return prefs;
    }

    private static ClassLoader targetClassLoader() {
        try {
            ClassLoader contextLoader = Thread.currentThread().getContextClassLoader();
            if (contextLoader != null) {
                loaderStatus = 12;
                return contextLoader;
            }
        } catch (Throwable ignored) {
            loaderStatus = 100 + loaderTraceCode(ignored);
        }
        ClassLoader parent = Dayu600ApkStageProbe.class.getClassLoader();
        loaderStatus = 10;
        try {
            ClassLoader loader = new dalvik.system.PathClassLoader(apkPath("2048-2-9.apk"), parent);
            loaderStatus = 11;
            return loader;
        } catch (Throwable ignored) {
            loaderStatus = 100 + loaderTraceCode(ignored);
            return parent;
        }
    }

    private static void seedGamePreferences(Object context, Class<?> contextClass) throws Exception {
        android.content.SharedPreferences sharedPreferences =
                android.preference.PreferenceManager.getDefaultSharedPreferences(
                        (android.content.Context) context);
        android.content.SharedPreferences.Editor editor = sharedPreferences.edit();
        editor.putString("key_orientation", "1");
        editor.putBoolean("isCueTipShown", true);
        editor.commit();
    }

    private static int findViewStatus() {
        try {
            return android.app.Activity.westlakeFindViewStatus;
        } catch (Throwable ignored) {
            return 170;
        }
    }

    private static void callPrivate(Object obj, Class<?> cls, String name) throws Exception {
        java.lang.reflect.Method method = cls.getDeclaredMethod(name);
        method.setAccessible(true);
        method.invoke(obj);
    }

    private static java.lang.reflect.Method findNoArgMethod(Class<?> cls, String name)
            throws NoSuchMethodException {
        try {
            java.lang.reflect.Method method = cls.getMethod(name);
            method.setAccessible(true);
            return method;
        } catch (NoSuchMethodException ignored) {
        }
        java.lang.reflect.Method method = cls.getDeclaredMethod(name);
        method.setAccessible(true);
        return method;
    }

    private static java.lang.reflect.Method findSingleArgMethod(
            Class<?> cls, String name, Object arg) throws NoSuchMethodException {
        java.lang.reflect.Method method = findSingleArgMethod(cls.getMethods(), name, arg);
        if (method != null) {
            method.setAccessible(true);
            return method;
        }
        method = findSingleArgMethod(cls.getDeclaredMethods(), name, arg);
        if (method != null) {
            method.setAccessible(true);
            return method;
        }
        throw new NoSuchMethodException(cls.getName() + "." + name);
    }

    private static java.lang.reflect.Method findSingleArgMethod(
            java.lang.reflect.Method[] methods, String name, Object arg) {
        for (int i = 0; i < methods.length; i++) {
            java.lang.reflect.Method method = methods[i];
            if (!name.equals(method.getName())) {
                continue;
            }
            Class<?>[] types = method.getParameterTypes();
            if (types.length != 1) {
                continue;
            }
            if (arg == null) {
                if (!types[0].isPrimitive()) {
                    return method;
                }
                continue;
            }
            if (types[0].isAssignableFrom(arg.getClass())) {
                return method;
            }
        }
        return null;
    }

    private static void setField(Object obj, Class<?> cls, String name, Object value) throws Exception {
        java.lang.reflect.Field field = cls.getDeclaredField(name);
        field.setAccessible(true);
        field.set(obj, value);
    }

    private static void setIntField(Object obj, Class<?> cls, String name, int value) throws Exception {
        java.lang.reflect.Field field = cls.getDeclaredField(name);
        field.setAccessible(true);
        field.setInt(obj, value);
    }

    private static void setLongField(Object obj, Class<?> cls, String name, long value) throws Exception {
        java.lang.reflect.Field field = cls.getDeclaredField(name);
        field.setAccessible(true);
        field.setLong(obj, value);
    }

    private static Object findView(Object activity, int id) throws Exception {
        Class<?> activityClass = loadClass("android.app.Activity", false, null);
        java.lang.reflect.Method findViewById = activityClass.getMethod("findViewById", int.class);
        return findViewById.invoke(activity, Integer.valueOf(id));
    }

    private static String gridJson(Object game) throws Exception {
        java.lang.reflect.Field gridField = game.getClass().getDeclaredField("b");
        gridField.setAccessible(true);
        Object grid = gridField.get(game);
        StringBuilder builder = new StringBuilder();
        builder.append('[');
        for (int row = 0; row < 4; row++) {
            if (row > 0) {
                builder.append(',');
            }
            builder.append('[');
            Object rowArray = java.lang.reflect.Array.get(grid, row);
            for (int col = 0; col < 4; col++) {
                if (col > 0) {
                    builder.append(',');
                }
                builder.append(java.lang.reflect.Array.getInt(rowArray, col));
            }
            builder.append(']');
        }
        builder.append(']');
        return builder.toString();
    }

    private static void writeText(String path, String text) throws Exception {
        try {
            nativeWriteText(path, text);
            return;
        } catch (Throwable ignored) {
        }
        java.io.FileOutputStream out = new java.io.FileOutputStream(path, false);
        byte[] bytes = new byte[text.length()];
        for (int i = 0; i < text.length(); i++) {
            char ch = text.charAt(i);
            bytes[i] = (byte) (ch <= 0x7f ? ch : '?');
        }
        out.write(bytes);
        out.close();
    }

    static void bridgeMark(String text) {
        try {
            writeText(probeLogPath("2048-game-state-progress.txt"), text);
        } catch (Throwable ignored) {
        }
    }

    private static String argOrFile(String[] args, int index, String fallback) {
        if (args != null && args.length > index && args[index] != null) {
            return args[index];
        }
        try {
            java.io.FileInputStream in = new java.io.FileInputStream(apkPath("probe-args.txt"));
            try {
                byte[] bytes = new byte[512];
                int length = 0;
                while (length < bytes.length) {
                    int read = in.read(bytes, length, bytes.length - length);
                    if (read <= 0) {
                        break;
                    }
                    length += read;
                }
                int lineIndex = 0;
                StringBuilder builder = new StringBuilder();
                for (int i = 0; i <= length; i++) {
                    int ch = i == length ? '\n' : (bytes[i] & 0xff);
                    if (ch == '\r') {
                        continue;
                    }
                    if (ch == '\n') {
                        if (lineIndex == index) {
                            return builder.length() == 0 ? fallback : builder.toString();
                        }
                        lineIndex++;
                        builder.setLength(0);
                    } else if (lineIndex == index) {
                        builder.append((char) ch);
                    }
                }
            } finally {
                in.close();
            }
        } catch (Throwable ignored) {
        }
        return fallback;
    }

    public static void main(String[] args) throws Exception {
        String target = argOrFile(args, 0, "com.digiplex.game.MainActivity");
        String stage = argOrFile(args, 1, "load");
        String directionArg = argOrFile(args, 2, "0");

        runResolved(target, stage, directionArg);
    }

    public static void embeddedMain(String target, String stage, String directionArg) throws Exception {
        runResolved(
                target == null ? "com.digiplex.game.MainActivity" : target,
                stage == null ? "load" : stage,
                directionArg == null ? "0" : directionArg);
    }

    public static int embeddedMainNoExit(String target, String stage, String directionArg) throws Exception {
        boolean oldNoExit = embeddedNoExit;
        int oldLastExitCode = embeddedLastExitCode;
        embeddedNoExit = true;
        embeddedLastExitCode = 0;
        try {
            runResolved(
                    target == null ? "com.digiplex.game.MainActivity" : target,
                    stage == null ? "load" : stage,
                    directionArg == null ? "0" : directionArg);
            return embeddedLastExitCode;
        } finally {
            embeddedNoExit = oldNoExit;
            embeddedLastExitCode = oldLastExitCode;
        }
    }

    private static void runResolved(String target, String stage, String directionArg) throws Exception {
        try { writeText(probeLogPath("asset-probe.txt"), "runResolved stage=[" + stage + "]"); } catch (Throwable ignored) {}
        ClassLoader loader = targetClassLoader();
        if ("assetProbe".equals(stage)) {
            int st = 200;
            writeText(probeLogPath("asset-probe.txt"), "STEP:start");
            try {
                try { System.load("/data/local/tmp/westlake-dayu600-substrate/android/lib64/libandroidfw.so"); writeText(probeLogPath("asset-probe.txt"), "STEP:loaded"); } catch (Throwable t) { writeText(probeLogPath("asset-probe.txt"), "load libandroidfw FAIL: " + t); }
                String apk = "/data/local/tmp/westlake-dayu600-substrate/apks/2048-2-9.apk";
                java.lang.reflect.Constructor<android.content.res.AssetManager> ac =
                        android.content.res.AssetManager.class.getDeclaredConstructor();
                ac.setAccessible(true);
                android.content.res.AssetManager am = ac.newInstance();
                st = 201;
                writeText(probeLogPath("asset-probe.txt"), "STEP:am-created");
                java.lang.reflect.Method add =
                        android.content.res.AssetManager.class.getMethod("addAssetPath", String.class);
                Object cookie = add.invoke(am, apk);
                st = 202;
                writeText(probeLogPath("asset-probe.txt"), "STEP:addAssetPath cookie=" + cookie);
                android.util.DisplayMetrics dm = new android.util.DisplayMetrics();
                dm.setToDefaults();
                android.content.res.Resources res = new android.content.res.Resources(
                        am, dm, new android.content.res.Configuration());
                st = 203;
                int layoutId = 2131492914;
                android.content.res.XmlResourceParser xml = res.getLayout(layoutId);
                st = 204;
                int events = 0, ev;
                StringBuilder tags = new StringBuilder();
                while ((ev = xml.next()) != org.xmlpull.v1.XmlPullParser.END_DOCUMENT) {
                    events++;
                    if (ev == org.xmlpull.v1.XmlPullParser.START_TAG && tags.length() < 200) {
                        tags.append(xml.getName()).append(' ');
                    }
                }
                writeText(probeLogPath("asset-probe.txt"), "OK cookie=" + cookie
                        + " layoutId=" + Integer.toHexString(layoutId)
                        + " xmlEvents=" + events + " tags=[" + tags + "]");
            } catch (Throwable t) {
                writeText(probeLogPath("asset-probe.txt"), "FAIL step=" + st + " "
                        + t.getClass().getName() + ": " + t.getMessage());
            }
            finishOrExit(0);
            return;
        }
        if ("loader".equals(stage)) {
            if (finishOrExit(loaderStatus)) {
                return;
            }
            return;
        }

        Class<?> targetClass;
        try {
            targetClass = loadClass(target, false, loader);
        } catch (Throwable ignored) {
            emitTiny("initialClassLoad:" + stage, ignored);
            emitDetail("initialClassLoad:" + stage, ignored);
            int code = (loaderStatus == 11 || loaderStatus == 12) ? 80 + classify(ignored) : loaderStatus;
            if (finishOrExit(code)) {
                return;
            }
            return;
        }
        if ("load".equals(stage)) {
            if (finishOrExit(0)) {
                return;
            }
            return;
        }

        if ("members".equals(stage)) {
            try {
                targetClass.getSuperclass();
                targetClass.getDeclaredMethods();
                System.exit(0);
            } catch (Throwable ignored) {
                emitDetail(stage, ignored);
                System.exit(classify(ignored));
            }
            return;
        }

        if ("init".equals(stage)) {
            try {
                Class.forName(target, true, loader);
                System.exit(0);
            } catch (Throwable ignored) {
                emitDetail(stage, ignored);
                System.exit(classify(ignored));
            }
            return;
        }

        if ("ctorThrow".equals(stage)) {
            Class.forName(target, true, loader);
            Object obj = targetClass.getDeclaredConstructor().newInstance();
            System.exit(obj == null ? 16 : 0);
            return;
        }

        if ("alloc".equals(stage)) {
            try {
                Class<?> unsafeClass = Class.forName("jdk.internal.misc.Unsafe", true, null);
                java.lang.reflect.Field f = unsafeClass.getDeclaredField("theUnsafe");
                f.setAccessible(true);
                Object unsafe = f.get(null);
                java.lang.reflect.Method allocateInstance =
                        unsafeClass.getDeclaredMethod("allocateInstance", Class.class);
                Object obj = allocateInstance.invoke(unsafe, targetClass);
                System.exit(obj == null ? 40 : 0);
            } catch (Throwable ignored) {
                emitDetail(stage, ignored);
                System.exit(classify(ignored));
            }
            return;
        }

        if ("onCreateMethod".equals(stage)) {
            try {
                Class<?> bundleClass = Class.forName("android.os.Bundle", false, null);
                targetClass.getDeclaredMethod("onCreate", bundleClass);
                System.exit(0);
            } catch (Throwable ignored) {
                emitTiny(stage, ignored);
                System.exit(classify(ignored));
            }
            return;
        }

        if ("intParse".equals(stage)) {
            try {
                String value = String.valueOf(1);
                if (value == null) {
                    System.exit(41);
                    return;
                }
                int parsed = Integer.valueOf(value).intValue();
                System.exit(parsed == 1 ? 0 : 42);
            } catch (Throwable ignored) {
                emitDetail(stage, ignored);
                System.exit(classify(ignored));
            }
            return;
        }

        if ("stringValueOnly".equals(stage)) {
            try {
                String value = String.valueOf(1);
                if (value == null) {
                    System.exit(41);
                    return;
                }
                System.exit("1".equals(value) ? 0 : 42);
            } catch (Throwable ignored) {
                emitDetail(stage, ignored);
                System.exit(classify(ignored));
            }
            return;
        }

        if ("integerParseOnly".equals(stage)) {
            try {
                int parsed = Integer.valueOf("1").intValue();
                System.exit(parsed == 1 ? 0 : 42);
            } catch (Throwable ignored) {
                emitDetail(stage, ignored);
                System.exit(classify(ignored));
            }
            return;
        }

        if ("soundDirect".equals(stage)) {
            try {
                Class.forName(target, true, loader);
                Object obj = targetClass.getDeclaredConstructor().newInstance();
                android.media.SoundPool pool = new android.media.SoundPool(10, 3, 0);
                int loaded = pool.load((android.content.Context) obj, 2131755008, 1);
                System.exit(loaded == 0 ? 0 : 43);
            } catch (Throwable ignored) {
                System.exit(classify(ignored));
            }
            return;
        }

        if ("gameStateJson".equals(stage) || "gameMoveJson".equals(stage)) {
            try {
                writeText(probeLogPath("2048-game-state-progress.txt"), "start\n");
                int direction = -1;
                boolean moveGame = false;
                if ("gameMoveJson".equals(stage)) {
                    direction = Integer.parseInt(directionArg);
                    moveGame = true;
                }
                String json = GameModelBridge.stateJson(stage, direction, moveGame);
                writeText(probeLogPath("2048-game-state-progress.txt"), "bridge-ok\n");
                writeText(probeLogPath("2048-game-state.json"), json);
                if (finishOrExit(0)) {
                    return;
                }
            } catch (Throwable bridgeFailure) {
                emitDetail(stage + ":bridge", bridgeFailure);
                try {
                    writeText(probeLogPath("2048-game-state-progress.txt"),
                            "bridge-step=" + GameModelBridge.lastStep + "\n"
                                    + "bridge-failed=" + bridgeFailure.getClass().getName() + ":"
                                    + (bridgeFailure.getMessage() == null ? "<null>" : bridgeFailure.getMessage()) + "\n");
                } catch (Throwable ignoredAgain) {
                }
                if (finishOrExit(classify(bridgeFailure))) {
                    return;
                }
            }

            try {
                writeText(probeLogPath("2048-game-state-progress.txt"), "fallback-start\n");
                Class<?> gameClass = Class.forName("com.digiplex.game.c", true, loader);
                writeText(probeLogPath("2048-game-state-progress.txt"), "class=" + gameClass.getName() + "\n");
                Object game = gameClass.getConstructor(int.class)
                        .newInstance(Integer.valueOf(32768));
                writeText(probeLogPath("2048-game-state-progress.txt"), "constructed\n");
                int direction = -1;
                if ("gameMoveJson".equals(stage)) {
                    direction = Integer.parseInt(directionArg);
                    writeText(probeLogPath("2048-game-state-progress.txt"), "move=" + direction + "\n");
                    java.lang.reflect.Method move = gameClass.getDeclaredMethod("g", int.class);
                    move.setAccessible(true);
                    move.invoke(game, new Object[] { Integer.valueOf(direction) });
                    writeText(probeLogPath("2048-game-state-progress.txt"), "moved\n");
                }
                String grid = gridJson(game);
                writeText(probeLogPath("2048-game-state-progress.txt"), "grid-ok\n");
                String json = "{\"source\":\"2048-2-9.apk\","
                        + "\"gameClass\":\"" + gameClass.getName() + "\","
                        + "\"stage\":\"" + stage + "\","
                        + "\"direction\":" + direction + ","
                        + "\"grid\":" + grid + "}\n";
                writeText(probeLogPath("2048-game-state.json"), json);
                if (finishOrExit(0)) {
                    return;
                }
            } catch (Throwable ignored) {
                emitDetail(stage, ignored);
                try {
                    writeText(probeLogPath("2048-game-state-progress.txt"),
                            "failed=" + ignored.getClass().getName() + ":"
                                    + (ignored.getMessage() == null ? "<null>" : ignored.getMessage()) + "\n");
                } catch (Throwable ignoredAgain) {
                }
                if (finishOrExit(classify(ignored))) {
                    return;
                }
            }
            return;
        }

        if ("buttonBaseLoad".equals(stage)) {
            try {
                Class.forName("android.widget.Button", true, null);
                System.exit(0);
            } catch (Throwable ignored) {
                System.exit(classify(ignored));
            }
            return;
        }

        if ("buttonBaseCtor".equals(stage)) {
            try {
                Class.forName(target, true, loader);
                Object obj = targetClass.getDeclaredConstructor().newInstance();
                Object button = new android.widget.Button((android.content.Context) obj);
                System.exit(button == null ? 45 : 0);
            } catch (Throwable ignored) {
                System.exit(classify(ignored));
            }
            return;
        }

        if ("customButtonLoadFalse".equals(stage)) {
            try {
                Class.forName("com.digiplex.game.CustomButton", false, loader);
                System.exit(0);
            } catch (Throwable ignored) {
                System.exit(classify(ignored));
            }
            return;
        }

        if ("customButtonMembers".equals(stage)) {
            try {
                Class<?> buttonClass =
                        Class.forName("com.digiplex.game.CustomButton", false, loader);
                buttonClass.getSuperclass();
                buttonClass.getDeclaredConstructors();
                buttonClass.getDeclaredMethods();
                System.exit(0);
            } catch (Throwable ignored) {
                System.exit(classify(ignored));
            }
            return;
        }

        if ("customButtonSuper".equals(stage)) {
            try {
                Class<?> buttonClass =
                        Class.forName("com.digiplex.game.CustomButton", false, loader);
                Class<?> superClass = buttonClass.getSuperclass();
                if (superClass == null) {
                    System.exit(50);
                    return;
                }
                String name = superClass.getName();
                if ("android.view.View".equals(name)) {
                    System.exit(0);
                    return;
                }
                if ("android.widget.Button".equals(name)) {
                    System.exit(51);
                    return;
                }
                System.exit(52);
            } catch (Throwable ignored) {
                System.exit(classify(ignored));
            }
            return;
        }

        if ("customButtonInit".equals(stage)) {
            try {
                Class.forName("com.digiplex.game.CustomButton", true, loader);
                System.exit(0);
            } catch (Throwable ignored) {
                emitDetail(stage, ignored);
                System.exit(classify(ignored));
            }
            return;
        }

        if ("customButtonAllocate".equals(stage)) {
            try {
                Class<?> buttonClass =
                        Class.forName("com.digiplex.game.CustomButton", false, loader);
                Class<?> unsafeClass = Class.forName("jdk.internal.misc.Unsafe", true, null);
                java.lang.reflect.Field f = unsafeClass.getDeclaredField("theUnsafe");
                f.setAccessible(true);
                Object unsafe = f.get(null);
                java.lang.reflect.Method allocateInstance =
                        unsafeClass.getDeclaredMethod("allocateInstance", Class.class);
                Object button = allocateInstance.invoke(unsafe, buttonClass);
                System.exit(button == null ? 53 : 0);
            } catch (Throwable ignored) {
                System.exit(classify(ignored));
            }
            return;
        }

        if (stage.startsWith("customButtonInitMsg")) {
            try {
                Class.forName("com.digiplex.game.CustomButton", true, loader);
                System.exit(0);
            } catch (Throwable ignored) {
                Throwable t = ignored;
                if (t instanceof java.lang.reflect.InvocationTargetException) {
                    Throwable cause = ((java.lang.reflect.InvocationTargetException) t).getCause();
                    if (cause != null) {
                        t = cause;
                    }
                }
                String message = t.getMessage();
                if (message == null) {
                    System.exit(1);
                    return;
                }
                if ("customButtonInitMsgLen".equals(stage)) {
                    int len = message.length();
                    System.exit(len > 250 ? 250 : len);
                    return;
                }
                int index = 0;
                try {
                    index = Integer.parseInt(stage.substring("customButtonInitMsg".length()));
                } catch (Throwable ignoredParse) {
                    System.exit(2);
                    return;
                }
                if (index < 0 || index >= message.length()) {
                    System.exit(3);
                    return;
                }
                System.exit(message.charAt(index) & 0xff);
            }
            return;
        }

        if ("customButtonCtorTrace".equals(stage)) {
            int step = 80;
            try {
                step = 81;
                Class.forName(target, true, loader);
                step = 82;
                Object obj = targetClass.getDeclaredConstructor().newInstance();
                step = 83;
                Class<?> buttonClass =
                        Class.forName("com.digiplex.game.CustomButton", false, loader);
                step = 84;
                java.lang.reflect.Constructor<?> ctor = buttonClass
                        .getConstructor(android.content.Context.class, android.util.AttributeSet.class);
                step = 85;
                Object button = ctor.newInstance(obj, null);
                System.exit(button == null ? 86 : 0);
            } catch (Throwable ignored) {
                emitDetail(stage, ignored);
                System.exit(step);
            }
            return;
        }

        if ("customButtonCtor".equals(stage)) {
            try {
                Class.forName(target, true, loader);
                Object obj = targetClass.getDeclaredConstructor().newInstance();
                Class<?> buttonClass = Class.forName("com.digiplex.game.CustomButton", true, loader);
                Object button = buttonClass
                        .getConstructor(android.content.Context.class, android.util.AttributeSet.class)
                        .newInstance(obj, null);
                System.exit(button == null ? 44 : 0);
            } catch (Throwable ignored) {
                emitDetail(stage, ignored);
                System.exit(classify(ignored));
            }
            return;
        }

        if ("appOnCreate".equals(stage)) {
            try {
                initApplication(loader);
                System.exit(0);
            } catch (Throwable ignored) {
                emitTiny(stage, ignored);
                emitDetail(stage, ignored);
                System.exit(classify(ignored));
            }
            return;
        }

        if ("seedTrace".equals(stage)) {
            int seedStep = 60;
            try {
                seedStep = 61;
                Class<?> appClass = loadClass("com.digiplex.game.MyApplication", true, loader);
                seedStep = 62;
                Object app = appClass.getDeclaredConstructor().newInstance();
                seedStep = 63;
                if (app instanceof android.app.Application) {
                    ((android.app.Application) app).onCreate();
                } else {
                    findNoArgMethod(appClass, "onCreate").invoke(app);
                }
                seedStep = 64;
                Class<?> contextClass = loadClass("android.content.Context", false, null);
                seedStep = 65;
                android.content.SharedPreferences sharedPreferences =
                        android.preference.PreferenceManager.getDefaultSharedPreferences(
                                (android.content.Context) app);
                if (sharedPreferences == null) {
                    System.exit(51);
                    return;
                }
                seedStep = 66;
                android.content.SharedPreferences.Editor editor = sharedPreferences.edit();
                if (editor == null) {
                    System.exit(52);
                    return;
                }
                seedStep = 67;
                editor.putString("key_orientation", "1");
                seedStep = 68;
                editor.putBoolean("isCueTipShown", true);
                seedStep = 69;
                editor.commit();
                seedStep = 70;
                Object prefs = initGamePreferences(loader, app);
                seedStep = 71;
                java.lang.reflect.Method k = prefs.getClass().getDeclaredMethod("k");
                k.setAccessible(true);
                k.invoke(prefs);
                System.exit(0);
            } catch (Throwable ignored) {
                emitTiny(stage, ignored);
                emitDetail(stage, ignored);
                System.exit(seedStep);
            }
            return;
        }

        if ("prefsK".equals(stage) || "prefsR".equals(stage) || "prefsW".equals(stage)) {
            try {
                initApplication(loader);
                Class<?> appClass = loadClass("com.digiplex.game.MyApplication", true, loader);
                Object app = appClass.getDeclaredConstructor().newInstance();
                Object prefs = initGamePreferences(loader, app);
                String methodName = "prefsK".equals(stage) ? "k" :
                        ("prefsR".equals(stage) ? "r" : "w");
                java.lang.reflect.Method m = prefs.getClass().getDeclaredMethod(methodName);
                m.setAccessible(true);
                m.invoke(prefs);
                System.exit(0);
            } catch (Throwable ignored) {
                emitTiny(stage, ignored);
                emitDetail(stage, ignored);
                System.exit(classify(ignored));
            }
            return;
        }

        if ("prefsKTrace".equals(stage)) {
            int step = 180;
            try {
                step = 181;
                Class<?> prefsClass = loadClass("com.digiplex.game.e", true, loader);
                step = 182;
                java.lang.reflect.Method prefsFactory = prefsClass.getDeclaredMethod("p");
                prefsFactory.setAccessible(true);
                step = 183;
                Object prefs = prefsFactory.invoke(null);
                if (prefs == null) {
                    System.exit(183);
                    return;
                }
                step = 184;
                Class<?> appClass = loadClass("com.digiplex.game.MyApplication", true, loader);
                step = 185;
                Object app = appClass.getDeclaredConstructor().newInstance();
                step = 186;
                java.lang.reflect.Method init = prefsClass.getDeclaredMethod("o", android.content.Context.class);
                init.setAccessible(true);
                step = 187;
                init.invoke(prefs, app);
                step = 188;
                java.lang.reflect.Field prefField = prefsClass.getDeclaredField("a");
                prefField.setAccessible(true);
                step = 189;
                Object sharedPreferences = prefField.get(prefs);
                if (sharedPreferences == null) {
                    System.exit(189);
                    return;
                }
                step = 190;
                Class<?> sharedPreferencesClass =
                        loadClass("android.content.SharedPreferences", false, null);
                step = 191;
                java.lang.reflect.Method getString = sharedPreferencesClass
                        .getMethod("getString", String.class, String.class);
                step = 192;
                Object value = getString.invoke(sharedPreferences, "key_orientation", "1");
                if (value == null) {
                    System.exit(192);
                    return;
                }
                if (!"1".equals(value)) {
                    System.exit(193);
                    return;
                }
                step = 194;
                java.lang.reflect.Method k = prefsClass.getDeclaredMethod("k");
                k.setAccessible(true);
                step = 195;
                Object parsed = k.invoke(prefs);
                if (!(parsed instanceof Integer)) {
                    System.exit(195);
                    return;
                }
                System.exit(((Integer) parsed).intValue() == 1 ? 0 : 189);
            } catch (Throwable ignored) {
                emitTiny(stage, ignored);
                emitDetail(stage, ignored);
                System.exit(step);
            }
            return;
        }

        if ("onCreateNull".equals(stage)) {
            try {
                initApplication(loader);
                loadClass(target, true, loader);
                Object obj = targetClass.getDeclaredConstructor().newInstance();
                Class<?> bundleClass = loadClass("android.os.Bundle", false, null);
                java.lang.reflect.Method onCreate =
                        targetClass.getDeclaredMethod("onCreate", bundleClass);
                onCreate.setAccessible(true);
                onCreate.invoke(obj, new Object[] { null });
                System.exit(0);
            } catch (Throwable ignored) {
                System.exit(classify(ignored));
            }
            return;
        }

        if ("onCreateNullKind".equals(stage)) {
            try {
                initApplication(loader);
                loadClass(target, true, loader);
                Object obj = targetClass.getDeclaredConstructor().newInstance();
                Class<?> bundleClass = loadClass("android.os.Bundle", false, null);
                java.lang.reflect.Method onCreate =
                        targetClass.getDeclaredMethod("onCreate", bundleClass);
                onCreate.setAccessible(true);
                onCreate.invoke(obj, new Object[] { null });
                if (finishOrExit(0)) {
                    return;
                }
            } catch (Throwable ignored) {
                if (finishOrExit(classifyLite(ignored))) {
                    return;
                }
            }
            return;
        }

        if ("directOnCreateNull".equals(stage)) {
            try {
                initApplication(loader);
                loadClass(target, true, loader);
                android.app.Activity.westlakeFindViewStatus = 199;
                Object obj = com.digiplex.game.DirectMainActivityBridge.newActivity();
                com.digiplex.game.DirectMainActivityBridge.callOnCreate(obj);
                if (finishOrExit(0)) {
                    return;
                }
            } catch (Throwable ignored) {
                if (finishOrExit(classifyLite(ignored))) {
                    return;
                }
            }
            return;
        }

        if ("directOnCreateProgress".equals(stage)) {
            try {
                initApplication(loader);
                loadClass(target, true, loader);
                android.app.Activity.westlakeFindViewStatus = 199;
                Object obj = com.digiplex.game.DirectMainActivityBridge.newActivity();
                com.digiplex.game.DirectMainActivityBridge.callOnCreate(obj);
                if (finishOrExit(0)) {
                    return;
                }
            } catch (Throwable ignored) {
                emitTiny(stage, ignored);
                emitDetail(stage, ignored);
                int status = android.app.Activity.westlakeFindViewStatus;
                if (finishOrExit(status == 0 ? classifyLite(ignored) : status)) {
                    return;
                }
            }
            return;
        }

        if ("systemTimeProbe".equals(stage)) {
            try {
                long value = System.currentTimeMillis();
                if (finishOrExit(value == 0L ? 2 : 0)) {
                    return;
                }
            } catch (Throwable ignored) {
                if (finishOrExit(classifyLite(ignored))) {
                    return;
                }
            }
            return;
        }

        if ("randomCtorProbe".equals(stage)) {
            try {
                java.util.Random random = new java.util.Random(1L);
                if (finishOrExit(random.nextInt(2) >= 0 ? 0 : 2)) {
                    return;
                }
            } catch (Throwable ignored) {
                if (finishOrExit(classifyLite(ignored))) {
                    return;
                }
            }
            return;
        }

        if ("reflectArrayProbe".equals(stage)) {
            try {
                int[] dims = new int[] {4, 4};
                Object array = java.lang.reflect.Array.newInstance(Integer.TYPE, dims);
                if (finishOrExit(array == null ? 2 : 0)) {
                    return;
                }
            } catch (Throwable ignored) {
                if (finishOrExit(classifyLite(ignored))) {
                    return;
                }
            }
            return;
        }

        if ("directOnCreateTrace".equals(stage)) {
            try {
                initApplication(loader);
                loadClass(target, true, loader);
                Object obj = com.digiplex.game.DirectMainActivityBridge.newActivity();
                com.digiplex.game.DirectMainActivityBridge.callOnCreate(obj);
                if (finishOrExit(0)) {
                    return;
                }
            } catch (Throwable ignored) {
                emitTiny(stage, ignored);
                emitDetail(stage, ignored);
                int code = traceCode(ignored);
                if (finishOrExit(code)) {
                    return;
                }
            }
            return;
        }

        if (stage.startsWith("directOnCreateMsg")) {
            try {
                initApplication(loader);
                loadClass(target, true, loader);
                Object obj = com.digiplex.game.DirectMainActivityBridge.newActivity();
                com.digiplex.game.DirectMainActivityBridge.callOnCreate(obj);
                if (finishOrExit(0)) {
                    return;
                }
            } catch (Throwable ignored) {
                Throwable t = ignored;
                if (t instanceof java.lang.reflect.InvocationTargetException) {
                    Throwable cause = ((java.lang.reflect.InvocationTargetException) t).getCause();
                    if (cause != null) {
                        t = cause;
                    }
                }
                String message = t.getMessage();
                if (message == null) {
                    if (finishOrExit(1)) {
                        return;
                    }
                }
                if ("directOnCreateMsgLen".equals(stage)) {
                    int len = message.length();
                    if (finishOrExit(len > 250 ? 250 : len)) {
                        return;
                    }
                }
                int index = 0;
                try {
                    index = Integer.parseInt(stage.substring("directOnCreateMsg".length()));
                } catch (Throwable ignoredParse) {
                    if (finishOrExit(2)) {
                        return;
                    }
                }
                if (index < 0 || index >= message.length()) {
                    if (finishOrExit(3)) {
                        return;
                    }
                }
                if (finishOrExit(message.charAt(index) & 0xff)) {
                    return;
                }
            }
            return;
        }

        if ("onCreateManual".equals(stage)) {
            int manualStep = 70;
            try {
                initApplication(loader);
                Class.forName(target, true, loader);
                Object obj = targetClass.getDeclaredConstructor().newInstance();
                manualStep = 71;
                callPrivate(obj, targetClass, "R");
                manualStep = 72;
                ((android.app.Activity) obj).setContentView(2131492914);
                manualStep = 73;
                android.preference.PreferenceManager.setDefaultValues(
                        (android.content.Context) obj, 2132017152, false);
                manualStep = 74;
                Object handler = new android.os.Handler();
                setField(obj, targetClass, "G", handler);
                manualStep = 75;
                android.view.animation.AnimationUtils.loadAnimation(
                        (android.content.Context) obj, 2130771968);
                manualStep = 76;
                // K() only restores saved score/grid state; skip it in the low-level bring-up path.
                manualStep = 77;
                ((android.app.Activity) obj).setVolumeControlStream(3);
                manualStep = 78;
                Object audio = ((android.content.Context) obj).getSystemService("audio");
                setField(obj, targetClass, "M", audio);
                manualStep = 79;
                Object soundPool = new android.media.SoundPool(10, 3, 0);
                manualStep = 81;
                setField(obj, targetClass, "K", soundPool);
                manualStep = 82;
                setIntField(obj, targetClass, "L", 0);
                manualStep = 84;
                setLongField(obj, targetClass, "J", 0L);
                int[] buttonIds = new int[] {
                        2131296353, 2131296361, 2131296362, 2131296363,
                        2131296364, 2131296365, 2131296366, 2131296367,
                        2131296368, 2131296354, 2131296355, 2131296356,
                        2131296357, 2131296358, 2131296359, 2131296360
                };
                java.lang.reflect.Field buttonsField = targetClass.getDeclaredField("A");
                buttonsField.setAccessible(true);
                Object buttons = buttonsField.get(obj);
                for (int i = 0; i < buttonIds.length; i++) {
                    manualStep = 85 + i;
                    java.lang.reflect.Array.set(buttons, i, findView(obj, buttonIds[i]));
                }
                manualStep = 102;
                Class<?> dInterface = Class.forName("com.digiplex.game.d", false, loader);
                manualStep = 103;
                Object touchListener = Class.forName("com.digiplex.game.a", true, loader)
                        .getConstructor(dInterface)
                        .newInstance(obj);
                manualStep = 104;
                Object board = findView(obj, 2131296569);
                manualStep = 105;
                setField(obj, targetClass, "B", board);
                manualStep = 107;
                if (board == null) {
                    System.exit(121);
                    return;
                }
                if (touchListener == null) {
                    System.exit(122);
                    return;
                }
                if (!(touchListener instanceof android.view.View.OnTouchListener)) {
                    System.exit(123);
                    return;
                }
                ((android.view.View) board)
                        .setOnTouchListener((android.view.View.OnTouchListener) touchListener);
                manualStep = 108;
                setField(obj, targetClass, "D", findView(obj, 2131296601));
                manualStep = 109;
                setField(obj, targetClass, "E", findView(obj, 2131296464));
                manualStep = 110;
                Object game = Class.forName("com.digiplex.game.c", true, loader)
                        .getConstructor(int.class)
                        .newInstance(Integer.valueOf(32768));
                manualStep = 111;
                setField(obj, targetClass, "C", game);
                manualStep = 112;
                java.lang.reflect.Method v = targetClass.getDeclaredMethod("V", boolean.class);
                v.setAccessible(true);
                v.invoke(obj, Boolean.FALSE);
                manualStep = 113;
                callPrivate(obj, targetClass, "J");
                manualStep = 114;
                Class<?> callbackClass = Class.forName("com.digiplex.game.MainActivity$g", true, loader);
                Class<?> clickClass = Class.forName("com.digiplex.game.MainActivity$a", false, loader);
                java.lang.reflect.Constructor<?> callbackCtor =
                        callbackClass.getDeclaredConstructor(targetClass, clickClass);
                callbackCtor.setAccessible(true);
                Object callback = callbackCtor.newInstance(obj, null);
                manualStep = 115;
                setField(obj, targetClass, "O", callback);
                manualStep = 116;
                ((android.view.View) board).setOnSystemUiVisibilityChangeListener(
                        (android.view.View.OnSystemUiVisibilityChangeListener) callback);
                manualStep = 117;
                ((android.view.View) board).setSystemUiVisibility(1);
                manualStep = 118;
                if (finishOrExit(0)) {
                    return;
                }
            } catch (Throwable ignored) {
                if (finishOrExit(manualStep)) {
                    return;
                }
            }
            return;
        }

        if ("viewCastTrace".equals(stage)) {
            int step = 80;
            try {
                initApplication(loader);
                loadClass(target, true, loader);
                Object obj = targetClass.getDeclaredConstructor().newInstance();
                android.app.Activity activity = (android.app.Activity) obj;
                Class<?> customButtonClass = loadClass("com.digiplex.game.CustomButton", false, loader);
                step = 81;
                Object b0 = activity.findViewById(2131296353);
                if (!customButtonClass.isInstance(b0)) {
                    int status = findViewStatus();
                    System.exit(status == 0 ? 181 : status);
                    return;
                }
                step = 82;
                Object b1 = activity.findViewById(2131296361);
                if (!customButtonClass.isInstance(b1)) {
                    int status = findViewStatus();
                    System.exit(status == 0 ? 182 : status);
                    return;
                }
                step = 83;
                Object b2 = activity.findViewById(2131296362);
                if (!customButtonClass.isInstance(b2)) {
                    int status = findViewStatus();
                    System.exit(status == 0 ? 183 : status);
                    return;
                }
                step = 84;
                Object b3 = activity.findViewById(2131296363);
                if (!customButtonClass.isInstance(b3)) {
                    int status = findViewStatus();
                    System.exit(status == 0 ? 184 : status);
                    return;
                }
                step = 85;
                android.view.ViewGroup board =
                        (android.view.ViewGroup) activity.findViewById(2131296569);
                step = 86;
                android.widget.TextView score =
                        (android.widget.TextView) activity.findViewById(2131296601);
                step = 87;
                android.widget.TextView best =
                        (android.widget.TextView) activity.findViewById(2131296464);
                if (b0 == null || b1 == null || b2 == null || b3 == null ||
                        board == null || score == null || best == null) {
                    System.exit(88);
                    return;
                }
                System.exit(0);
            } catch (Throwable ignored) {
                System.exit(step);
            }
            return;
        }

        if ("onCreateNullTrace".equals(stage)) {
            int step = 200;
            try {
                step = 201;
                initApplication(loader);
                step = 202;
                loadClass(target, true, loader);
                step = 203;
                Object obj = targetClass.getDeclaredConstructor().newInstance();
                step = 204;
                Class<?> bundleClass = loadClass("android.os.Bundle", false, null);
                step = 205;
                java.lang.reflect.Method onCreate =
                        targetClass.getDeclaredMethod("onCreate", bundleClass);
                onCreate.setAccessible(true);
                step = 206;
                onCreate.invoke(obj, new Object[] { null });
                if (finishOrExit(0)) {
                    return;
                }
            } catch (Throwable ignored) {
                emitTiny(stage, ignored);
                emitDetail(stage, ignored);
                int code = traceCode(ignored);
                if (code == 97 || code == 98) {
                    code = step;
                }
                if (finishOrExit(code)) {
                    return;
                }
            }
            return;
        }

        if ("privateR".equals(stage) || "privateK".equals(stage) ||
                "privateJ".equals(stage) || "privateVfalse".equals(stage)) {
            try {
                initApplication(loader);
                loadClass(target, true, loader);
                Object obj = targetClass.getDeclaredConstructor().newInstance();
                String methodName = stage.substring("private".length());
                if ("Vfalse".equals(methodName)) {
                    java.lang.reflect.Method m = targetClass.getDeclaredMethod("V", boolean.class);
                    m.setAccessible(true);
                    m.invoke(obj, Boolean.FALSE);
                } else {
                    java.lang.reflect.Method m = targetClass.getDeclaredMethod(methodName);
                    m.setAccessible(true);
                    m.invoke(obj);
                }
                System.exit(0);
            } catch (Throwable ignored) {
                emitDetail(stage, ignored);
                System.exit(classify(ignored));
            }
            return;
        }

        if ("onCreateNullThrow".equals(stage)) {
            initApplication(loader);
            loadClass(target, true, loader);
            Object obj = targetClass.getDeclaredConstructor().newInstance();
            Class<?> bundleClass = loadClass("android.os.Bundle", false, null);
            java.lang.reflect.Method onCreate =
                    targetClass.getDeclaredMethod("onCreate", bundleClass);
            onCreate.setAccessible(true);
            onCreate.invoke(obj, new Object[] { null });
            System.exit(0);
            return;
        }

        if ("ctor".equals(stage)) {
            try {
                loadClass(target, true, loader);
                Object obj = targetClass.getDeclaredConstructor().newInstance();
                System.exit(obj == null ? 16 : 0);
            } catch (Throwable ignored) {
                System.exit(classify(ignored));
            }
            return;
        }

        System.exit(99);
    }
}
