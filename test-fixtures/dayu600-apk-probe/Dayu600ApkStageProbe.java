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
        ClassLoader loader = targetClassLoader();
        if ("assetProbe".equals(stage)) {
            int st = 200;
            writeText(probeLogPath("asset-probe.txt"), "STEP:start");
            try {
                // Force XmlBlock/StringBlock <clinit> BEFORE System.load so OHBridge registers their
                // natives first; then our JNI_OnLoad (System.load) re-registers on top and wins.
                try {
                    ClassLoader cl = Dayu600ApkStageProbe.class.getClassLoader();
                    Class.forName("android.content.res.XmlBlock", true, cl);
                    Class.forName("android.content.res.StringBlock", true, cl);
                } catch (Throwable ignored) {}
                try { System.load("/data/local/tmp/westlake-dayu600-substrate/android/lib64/libandroidfw.so"); writeText(probeLogPath("asset-probe.txt"), "STEP:loaded"); } catch (Throwable t) { writeText(probeLogPath("asset-probe.txt"), "load libandroidfw FAIL: " + t); }
                String apk = "/data/local/tmp/westlake-dayu600-substrate/apks/2048-2-9.apk";
                // Sentinel ctor: only nativeCreate(), skips createSystemAssetsInZygoteLocked
                // (which needs OverlayConfig zygote env we don't have). Bypasses system-asset init.
                java.lang.reflect.Constructor<android.content.res.AssetManager> ac =
                        android.content.res.AssetManager.class.getDeclaredConstructor(boolean.class);
                ac.setAccessible(true);
                android.content.res.AssetManager am = ac.newInstance(Boolean.TRUE);
                // Sentinel ctor leaves mApkAssets null; addAssetPathInternal reads its .length.
                java.lang.reflect.Field mApkAssetsF =
                        android.content.res.AssetManager.class.getDeclaredField("mApkAssets");
                mApkAssetsF.setAccessible(true);
                Class<?> apkAssetsCls = Class.forName("android.content.res.ApkAssets");
                mApkAssetsF.set(am, java.lang.reflect.Array.newInstance(apkAssetsCls, 0));
                st = 201;
                writeText(probeLogPath("asset-probe.txt"), "STEP:am-created(sentinel)");
                java.lang.reflect.Method add =
                        android.content.res.AssetManager.class.getMethod("addAssetPath", String.class);
                Object cookie = add.invoke(am, apk);
                st = 202;
                writeText(probeLogPath("asset-probe.txt"), "STEP:addAssetPath cookie=" + cookie);
                // Direct libandroidfw resource-lookup validation (no Resources/system needed):
                java.lang.reflect.Method getId = android.content.res.AssetManager.class.getDeclaredMethod(
                        "getResourceIdentifier", String.class, String.class, String.class);
                getId.setAccessible(true);
                Object idMain = getId.invoke(am, "main", "layout", "com.digiplex.game");
                st = 203;
                // Airtight arsc-parse proof: scan resource IDs 0x7f<type><entry> for real names.
                java.lang.reflect.Method nGetName = android.content.res.AssetManager.class
                        .getDeclaredMethod("nativeGetResourceName", long.class, int.class);
                nGetName.setAccessible(true);
                java.lang.reflect.Field mObjF =
                        android.content.res.AssetManager.class.getDeclaredField("mObject");
                mObjF.setAccessible(true);
                long amPtr = mObjF.getLong(am);
                // Diagnose: is the loaded ApkAssets' native ptr valid (nativeLoad worked)?
                Object[] apkArr = (Object[]) mApkAssetsF.get(am);
                long apkPtr = 0;
                if (apkArr != null && apkArr.length > 0) {
                    java.lang.reflect.Field npF = apkAssetsCls.getDeclaredField("mNativePtr");
                    npF.setAccessible(true);
                    apkPtr = npF.getLong(apkArr[apkArr.length - 1]);
                }
                StringBuilder names = new StringBuilder();
                int found = 0;
                for (int type = 1; type <= 20 && found < 8; type++) {
                    for (int entry = 0; entry < 6 && found < 8; entry++) {
                        int resid = 0x7f000000 | (type << 16) | entry;
                        Object nm = nGetName.invoke(null, amPtr, resid);
                        if (nm != null) {
                            names.append("0x").append(Integer.toHexString(resid))
                                 .append('=').append(nm).append(' ');
                            found++;
                        }
                    }
                }
                // Read an actual resource VALUE (type/data) via nativeGetResourceValue.
                String valStr = "n/a";
                try {
                    java.lang.reflect.Method nGetVal = android.content.res.AssetManager.class
                            .getDeclaredMethod("nativeGetResourceValue", long.class, int.class,
                                    short.class, android.util.TypedValue.class, boolean.class);
                    nGetVal.setAccessible(true);
                    android.util.TypedValue tval = new android.util.TypedValue();
                    int block = ((Number) nGetVal.invoke(null, amPtr, 0x7f010000, (short) 0, tval, true)).intValue();
                    String xmlPath = tval.string != null ? tval.string.toString() : null;
                    valStr = "block=" + block + " type=0x" + Integer.toHexString(tval.type)
                            + " data=0x" + Integer.toHexString(tval.data) + " xmlPath=" + xmlPath;
                    // getLayout step 2: open the compiled XML into a ResXMLTree.
                    if (xmlPath != null) {
                        java.lang.reflect.Method nOpenXml = android.content.res.AssetManager.class
                                .getDeclaredMethod("nativeOpenXmlAsset", long.class, int.class, String.class);
                        nOpenXml.setAccessible(true);
                        long xmlTree = ((Number) nOpenXml.invoke(null, amPtr, tval.assetCookie, xmlPath)).longValue();
                        valStr += " nativeOpenXmlAsset=0x" + Long.toHexString(xmlTree)
                                + (xmlTree != 0 ? " XMLTREE_OK" : " XMLTREE_NULL");
                        // getLayout step 3: iterate the compiled XML via XmlBlock parse state.
                        if (xmlTree != 0) {
                            Class<?> xbCls = Class.forName("android.content.res.XmlBlock");
                            java.lang.reflect.Method nCPS = xbCls.getDeclaredMethod("nativeCreateParseState", long.class, int.class);
                            java.lang.reflect.Method nNext = xbCls.getDeclaredMethod("nativeNext", long.class);
                            java.lang.reflect.Method nXbName = xbCls.getDeclaredMethod("nativeGetName", long.class);
                            java.lang.reflect.Method nGetAttr = xbCls.getDeclaredMethod("nativeGetAttributeCount", long.class);
                            nCPS.setAccessible(true); nNext.setAccessible(true); nXbName.setAccessible(true); nGetAttr.setAccessible(true);
                            long state = ((Number) nCPS.invoke(null, xmlTree, 0)).longValue();
                            int events = 0, firstTag = -2, attrs = -2, ev;
                            while ((ev = ((Number) nNext.invoke(null, state)).intValue()) != 1 && events < 60) {
                                events++;
                                if (ev == 2 && firstTag == -2) {
                                    firstTag = ((Number) nXbName.invoke(null, state)).intValue();
                                    attrs = ((Number) nGetAttr.invoke(null, state)).intValue();
                                }
                            }
                            // Resolve the first tag name index -> real string via the XML StringBlock.
                            String firstTagName = null;
                            if (firstTag >= 0) {
                                java.lang.reflect.Method nGSB = xbCls.getDeclaredMethod("nativeGetStringBlock", long.class);
                                nGSB.setAccessible(true);
                                long strBlk = ((Number) nGSB.invoke(null, xmlTree)).longValue();
                                Class<?> sbCls = Class.forName("android.content.res.StringBlock");
                                java.lang.reflect.Method sbStr = sbCls.getDeclaredMethod("nativeGetString", long.class, int.class);
                                sbStr.setAccessible(true);
                                Object nm = sbStr.invoke(null, strBlk, firstTag);
                                firstTagName = nm != null ? nm.toString() : null;
                            }
                            valStr += " XMLPARSE[events=" + events + " firstTagName=" + firstTagName + " attrCount=" + attrs + "]";
                        }
                        // FULL framework path: openXmlBlockAsset -> XmlBlock (nativeGetStringBlock +
                        // new StringBlock) -> newParser -> XmlResourceParser (uses all my natives).
                        try {
                            java.lang.reflect.Method openXBA = android.content.res.AssetManager.class
                                    .getDeclaredMethod("openXmlBlockAsset", int.class, String.class);
                            openXBA.setAccessible(true);
                            Object xblock = openXBA.invoke(am, tval.assetCookie, xmlPath);
                            java.lang.reflect.Method newParser = xblock.getClass().getMethod("newParser", int.class);
                            Object parser = newParser.invoke(xblock, 0);
                            org.xmlpull.v1.XmlPullParser xpp = (org.xmlpull.v1.XmlPullParser) parser;
                            int fwEvents = 0; String fwTag = null; int fe;
                            while ((fe = xpp.next()) != org.xmlpull.v1.XmlPullParser.END_DOCUMENT && fwEvents < 60) {
                                fwEvents++;
                                if (fe == org.xmlpull.v1.XmlPullParser.START_TAG && fwTag == null) fwTag = xpp.getName();
                            }
                            valStr += " FRAMEWORK_getLayout[events=" + fwEvents + " tag=" + fwTag + "]";
                        } catch (Throwable ft) {
                            Throwable fc = (ft instanceof java.lang.reflect.InvocationTargetException
                                    && ft.getCause() != null) ? ft.getCause() : ft;
                            StackTraceElement[] fst = fc.getStackTrace();
                            String fat = fst.length > 0 ? (fst[0].getMethodName() + ":" + fst[0].getLineNumber()) : "?";
                            valStr += " FRAMEWORK_FAIL:" + fc.getClass().getSimpleName() + ":" + fc.getMessage() + "@" + fat;
                        }
                    }
                } catch (Throwable vt) {
                    Throwable vc = (vt instanceof java.lang.reflect.InvocationTargetException
                            && vt.getCause() != null) ? vt.getCause() : vt;
                    StackTraceElement[] vst = vc.getStackTrace();
                    String at = vst.length > 0 ? (vst[0].getMethodName() + ":" + vst[0].getLineNumber()) : "?";
                    valStr += " VAL_FAIL:" + vc.getClass().getSimpleName() + ":" + vc.getMessage() + "@" + at;
                }
                // Parse a REAL LAYOUT resource (AppCompat abc_*.xml) -> View class tag names.
                String layoutTest = "n/a";
                try {
                    java.lang.reflect.Method getId2 = android.content.res.AssetManager.class.getDeclaredMethod(
                            "getResourceIdentifier", String.class, String.class, String.class);
                    getId2.setAccessible(true);
                    String[] cands = {"abc_screen_simple", "abc_action_bar_title_item", "abc_alert_dialog_material",
                            "support_simple_spinner_dropdown_item", "abc_screen_content_include", "notification_template_part_time"};
                    int layoutId = 0; String lname = null;
                    for (String c : cands) {
                        int id = ((Number) getId2.invoke(am, c, "layout", "com.digiplex.game")).intValue();
                        if (id != 0) { layoutId = id; lname = c; break; }
                    }
                    if (layoutId != 0) {
                        java.lang.reflect.Method nGV = android.content.res.AssetManager.class.getDeclaredMethod(
                                "nativeGetResourceValue", long.class, int.class, short.class, android.util.TypedValue.class, boolean.class);
                        nGV.setAccessible(true);
                        java.lang.reflect.Field mObjF2 = android.content.res.AssetManager.class.getDeclaredField("mObject");
                        mObjF2.setAccessible(true);
                        long amP = mObjF2.getLong(am);
                        android.util.TypedValue lv = new android.util.TypedValue();
                        nGV.invoke(null, amP, layoutId, (short) 0, lv, true);
                        String lpath = lv.string != null ? lv.string.toString() : null;
                        java.lang.reflect.Method oXBA = android.content.res.AssetManager.class.getDeclaredMethod(
                                "openXmlBlockAsset", int.class, String.class);
                        oXBA.setAccessible(true);
                        Object lblk = oXBA.invoke(am, lv.assetCookie, lpath);
                        Object lp = lblk.getClass().getMethod("newParser", int.class).invoke(lblk, 0);
                        org.xmlpull.v1.XmlPullParser lx = (org.xmlpull.v1.XmlPullParser) lp;
                        StringBuilder tags = new StringBuilder();
                        int le, lc = 0;
                        while ((le = lx.next()) != org.xmlpull.v1.XmlPullParser.END_DOCUMENT && lc < 40) {
                            if (le == org.xmlpull.v1.XmlPullParser.START_TAG && tags.length() < 150) tags.append(lx.getName()).append(' ');
                            lc++;
                        }
                        layoutTest = lname + "(0x" + Integer.toHexString(layoutId) + ") viewTags=[" + tags + "]";
                    } else {
                        layoutTest = "no AppCompat layout resource found";
                    }
                } catch (Throwable lt2) {
                    Throwable lc2 = (lt2 instanceof java.lang.reflect.InvocationTargetException
                            && lt2.getCause() != null) ? lt2.getCause() : lt2;
                    layoutTest = "LAYOUT_FAIL:" + lc2.getClass().getSimpleName() + ":" + lc2.getMessage();
                }
                // FIRST STRIKE at real View inflation: get a real system Context via ActivityThread,
                // then LayoutInflater.inflate a framework layout into a REAL View tree.
                String viewInflate = "n/a";
                String sysresNote = "";
                try {
                    // Wire REAL framework resources into the system AssetManager. The device has no
                    // framework-res.apk; we packed one from SDK android.jar (resources.arsc + res/)
                    // and deployed it to the substrate. The startup sSystem was built by OHBridge
                    // STUB natives (incompatible native ptrs), so rebuild it entirely with OUR JNI:
                    // sentinel AssetManager + ApkAssets.loadFromPath, then overwrite the statics.
                    String fwResPath = "/data/local/tmp/westlake-dayu600-substrate/android/framework/framework-res.apk";
                    int propSystem = 1;
                    try { propSystem = apkAssetsCls.getField("PROPERTY_SYSTEM").getInt(null); } catch (Throwable ig) {}
                    java.lang.reflect.Method lfp = apkAssetsCls.getMethod("loadFromPath", String.class, int.class);
                    Object fwApk = lfp.invoke(null, fwResPath, propSystem);
                    Object sysArr = java.lang.reflect.Array.newInstance(apkAssetsCls, 1);
                    java.lang.reflect.Array.set(sysArr, 0, fwApk);
                    // Set the statics FIRST: setApkAssets() internally prepends sSystemApkAssets and
                    // consults sSystemApkAssetsSet (NPEs if null).
                    java.lang.reflect.Field fSArr = android.content.res.AssetManager.class.getDeclaredField("sSystemApkAssets");
                    fSArr.setAccessible(true); fSArr.set(null, sysArr);
                    java.lang.reflect.Field fSSet = android.content.res.AssetManager.class.getDeclaredField("sSystemApkAssetsSet");
                    fSSet.setAccessible(true);
                    Class<?> asCls = Class.forName("android.util.ArraySet");
                    Object aset = asCls.getConstructor().newInstance();
                    asCls.getMethod("add", Object.class).invoke(aset, fwApk);
                    fSSet.set(null, aset);
                    android.content.res.AssetManager sysAm = ac.newInstance(Boolean.TRUE);
                    mApkAssetsF.set(sysAm, java.lang.reflect.Array.newInstance(apkAssetsCls, 0));
                    java.lang.reflect.Method setAA = android.content.res.AssetManager.class
                            .getMethod("setApkAssets", sysArr.getClass(), boolean.class);
                    setAA.invoke(sysAm, java.lang.reflect.Array.newInstance(apkAssetsCls, 0), false);
                    java.lang.reflect.Field fSys = android.content.res.AssetManager.class.getDeclaredField("sSystem");
                    fSys.setAccessible(true); fSys.set(null, sysAm);
                    // Drop any cached system Resources built on the old stub AssetManager.
                    try {
                        java.lang.reflect.Field rSys = android.content.res.Resources.class.getDeclaredField("mSystem");
                        rSys.setAccessible(true); rSys.set(null, null);
                    } catch (Throwable ig) {}
                    // Sanity: framework resource lookup through Resources.getSystem().
                    String sysProof;
                    try {
                        android.content.res.Resources sr = android.content.res.Resources.getSystem();
                        sysProof = "getSystem.getString(ok)=" + sr.getString(android.R.string.ok);
                    } catch (Throwable spT) {
                        Throwable spC = (spT instanceof java.lang.reflect.InvocationTargetException
                                && spT.getCause() != null) ? spT.getCause() : spT;
                        sysProof = "SYSRES_FAIL:" + spC.getClass().getSimpleName() + ":" + spC.getMessage();
                    }
                    sysresNote = "SYSRES[" + sysProof + "] ";
                    Class<?> atCls = Class.forName("android.app.ActivityThread");
                    Object at = atCls.getMethod("systemMain").invoke(null);
                    Object sysCtx = atCls.getMethod("getSystemContext").invoke(at);
                    Class<?> ctxCls = Class.forName("android.content.Context");
                    Class<?> liCls = Class.forName("android.view.LayoutInflater");
                    Class<?> vgCls = Class.forName("android.view.ViewGroup");
                    // Ensure the framework resource package is available to this Context's AssetManager.
                    try {
                        Object fwAm = ctxCls.getMethod("getAssets").invoke(sysCtx);
                        java.lang.reflect.Method addPath = android.content.res.AssetManager.class.getMethod("addAssetPath", String.class);
                        addPath.invoke(fwAm, "/data/local/tmp/westlake-dayu600-substrate/apks/framework-res.apk");
                    } catch (Throwable ignored) {}
                    Object li = liCls.getMethod("from", ctxCls).invoke(null, sysCtx);
                    // android.R.layout.simple_list_item_1 = 0x01090003 (framework TextView layout)
                    Object v = liCls.getMethod("inflate", int.class, vgCls).invoke(li, 0x01090003, null);
                    String rootCls = v != null ? v.getClass().getName() : "null";
                    int childCount = -1;
                    if (v != null && vgCls.isInstance(v)) childCount = ((Number) vgCls.getMethod("getChildCount").invoke(v)).intValue();
                    viewInflate = sysresNote + "INFLATED root=" + rootCls + " childCount=" + childCount;
                } catch (Throwable it) {
                    Throwable ic = (it instanceof java.lang.reflect.InvocationTargetException
                            && it.getCause() != null) ? it.getCause() : it;
                    StackTraceElement[] ist = ic.getStackTrace();
                    String iat = ist.length > 0 ? (ist[0].getClassName() + "." + ist[0].getMethodName() + ":" + ist[0].getLineNumber()) : "?";
                    viewInflate = sysresNote + "VIEW_FAIL:" + ic.getClass().getSimpleName() + ":" + ic.getMessage() + "@" + iat;
                }
                writeText(probeLogPath("asset-probe.txt"), "OK cookie=" + cookie
                        + " apkPtr=" + apkPtr
                        + " resValue(0x7f010000)=[" + valStr + "]"
                        + " LAYOUT=[" + layoutTest + "]"
                        + " VIEWINFLATE=[" + viewInflate + "]"
                        + " realResourceNames=[" + names + "]");
            } catch (Throwable t) {
                Throwable cause = (t instanceof java.lang.reflect.InvocationTargetException
                        && t.getCause() != null) ? t.getCause() : t;
                java.io.StringWriter sw = new java.io.StringWriter();
                cause.printStackTrace(new java.io.PrintWriter(sw));
                String tr = sw.toString();
                writeText(probeLogPath("asset-probe.txt"), "FAIL step=" + st + " "
                        + cause.getClass().getName() + ": " + cause.getMessage()
                        + "\n" + tr.substring(0, Math.min(tr.length(), 700)));
            }
            finishOrExit(0);
            return;
        }
        if ("uptodownProbe".equals(stage)) {
            // First strike at the user-supplied test.apk (com.uptodown 7.33): resource engine on
            // its arsc, dex classload, then headless UptodownApp/MainActivity bring-up. Incremental
            // writeText so partial progress survives a crash.
            StringBuilder ulog = new StringBuilder();
            java.io.File apkF = new java.io.File(apkPath("test-uptodown.apk"));
            ulog.append("apk=").append(apkF.exists() ? apkF.length() : -1).append(' ');
            writeText(probeLogPath("uptodown-probe.txt"), ulog.toString());
            try {
                try {
                    ClassLoader bcl = Dayu600ApkStageProbe.class.getClassLoader();
                    Class.forName("android.content.res.XmlBlock", true, bcl);
                    Class.forName("android.content.res.StringBlock", true, bcl);
                } catch (Throwable ignored) {}
                try { System.load(rootPath() + "/android/lib64/libandroidfw.so"); ulog.append("fwlib=OK "); }
                catch (Throwable lt) { ulog.append("fwlib=FAIL:").append(lt.getMessage()).append(' '); }
                try {
                    java.lang.reflect.Constructor<android.content.res.AssetManager> uc =
                            android.content.res.AssetManager.class.getDeclaredConstructor(boolean.class);
                    uc.setAccessible(true);
                    android.content.res.AssetManager uam = uc.newInstance(Boolean.TRUE);
                    java.lang.reflect.Field uaf = android.content.res.AssetManager.class.getDeclaredField("mApkAssets");
                    uaf.setAccessible(true);
                    Class<?> apkCls2 = Class.forName("android.content.res.ApkAssets");
                    uaf.set(uam, java.lang.reflect.Array.newInstance(apkCls2, 0));
                    Object ck = android.content.res.AssetManager.class.getMethod("addAssetPath", String.class)
                            .invoke(uam, apkF.getAbsolutePath());
                    ulog.append("cookie=").append(ck).append(' ');
                    java.lang.reflect.Method ngn = android.content.res.AssetManager.class
                            .getDeclaredMethod("nativeGetResourceName", long.class, int.class);
                    ngn.setAccessible(true);
                    java.lang.reflect.Field mo = android.content.res.AssetManager.class.getDeclaredField("mObject");
                    mo.setAccessible(true);
                    long uap = mo.getLong(uam);
                    int ufound = 0;
                    StringBuilder unames = new StringBuilder();
                    for (int type = 1; type <= 24 && ufound < 5; type++)
                        for (int entry = 0; entry < 4 && ufound < 5; entry++) {
                            Object nm = ngn.invoke(null, uap, 0x7f000000 | (type << 16) | entry);
                            if (nm != null && !nm.toString().startsWith("GRN:")) { unames.append(nm).append(' '); ufound++; }
                        }
                    ulog.append("res=[").append(unames).append("] ");
                } catch (Throwable rt) {
                    Throwable rc = (rt instanceof java.lang.reflect.InvocationTargetException
                            && rt.getCause() != null) ? rt.getCause() : rt;
                    ulog.append("RES_FAIL:").append(rc.getClass().getSimpleName()).append(':').append(rc.getMessage()).append(' ');
                }
                writeText(probeLogPath("uptodown-probe.txt"), ulog.toString());
                ClassLoader uloader = new dalvik.system.PathClassLoader(apkF.getAbsolutePath(),
                        Dayu600ApkStageProbe.class.getClassLoader());
                Class<?> uAppCls = Class.forName("com.uptodown.UptodownApp", false, uloader);
                ulog.append("appCls=OK ");
                Class<?> uMainCls = Class.forName("com.uptodown.activities.MainActivity", false, uloader);
                ulog.append("mainCls=OK ");
                writeText(probeLogPath("uptodown-probe.txt"), ulog.toString());
                try { Class.forName("com.uptodown.UptodownApp", true, uloader); ulog.append("appClinit=OK "); }
                catch (Throwable ct) {
                    Throwable cc = ct.getCause() != null ? ct.getCause() : ct;
                    ulog.append("appClinit=FAIL:").append(cc.getClass().getSimpleName()).append(':').append(cc.getMessage()).append(' ');
                }
                writeText(probeLogPath("uptodown-probe.txt"), ulog.toString());
                try {
                    Object uapp = uAppCls.getDeclaredConstructor().newInstance();
                    ulog.append("appNew=OK ");
                    writeText(probeLogPath("uptodown-probe.txt"), ulog.toString());
                    try { uAppCls.getMethod("onCreate").invoke(uapp); ulog.append("appOnCreate=OK "); }
                    catch (Throwable ot) {
                        Throwable oc = (ot instanceof java.lang.reflect.InvocationTargetException
                                && ot.getCause() != null) ? ot.getCause() : ot;
                        ulog.append("appOnCreate=FAIL:").append(oc.getClass().getSimpleName()).append(':').append(oc.getMessage());
                        StackTraceElement[] ost = oc.getStackTrace();
                        for (int i2 = 0; i2 < Math.min(4, ost.length); i2++)
                            ulog.append(" @").append(ost[i2].getClassName()).append('.')
                                .append(ost[i2].getMethodName()).append(':').append(ost[i2].getLineNumber());
                        ulog.append(' ');
                    }
                } catch (Throwable nt) {
                    Throwable nc = (nt instanceof java.lang.reflect.InvocationTargetException
                            && nt.getCause() != null) ? nt.getCause() : nt;
                    ulog.append("appNew=FAIL:").append(nc.getClass().getSimpleName()).append(':').append(nc.getMessage()).append(' ');
                }
                writeText(probeLogPath("uptodown-probe.txt"), ulog.toString());
                try { Class.forName("com.uptodown.activities.MainActivity", true, uloader); ulog.append("mainClinit=OK "); }
                catch (Throwable mt) {
                    Throwable mc = mt.getCause() != null ? mt.getCause() : mt;
                    ulog.append("mainClinit=FAIL:").append(mc.getClass().getSimpleName()).append(':').append(mc.getMessage()).append(' ');
                }
                try { Object uact = uMainCls.getDeclaredConstructor().newInstance();
                      ulog.append("mainNew=").append(uact != null ? "OK" : "null").append(' '); }
                catch (Throwable at) {
                    Throwable acs = (at instanceof java.lang.reflect.InvocationTargetException
                            && at.getCause() != null) ? at.getCause() : at;
                    ulog.append("mainNew=FAIL:").append(acs.getClass().getSimpleName()).append(':').append(acs.getMessage());
                    StackTraceElement[] ast = acs.getStackTrace();
                    for (int i3 = 0; i3 < Math.min(4, ast.length); i3++)
                        ulog.append(" @").append(ast[i3].getClassName()).append('.')
                            .append(ast[i3].getMethodName()).append(':').append(ast[i3].getLineNumber());
                    ulog.append(' ');
                }
                writeText(probeLogPath("uptodown-probe.txt"), ulog.toString());
            } catch (Throwable ut) {
                Throwable uc2 = (ut instanceof java.lang.reflect.InvocationTargetException
                        && ut.getCause() != null) ? ut.getCause() : ut;
                java.io.StringWriter usw = new java.io.StringWriter();
                uc2.printStackTrace(new java.io.PrintWriter(usw));
                String utr = usw.toString();
                ulog.append("UPROBE_FAIL:").append(utr.substring(0, Math.min(utr.length(), 600)));
                writeText(probeLogPath("uptodown-probe.txt"), ulog.toString());
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
