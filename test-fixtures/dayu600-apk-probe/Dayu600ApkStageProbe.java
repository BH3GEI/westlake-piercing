public final class Dayu600ApkStageProbe {
    private static boolean embeddedNoExit;
    private static int embeddedLastExitCode;
    private static int loaderStatus;
    // Hoisted from inner try blocks so Activity-onCreate section can reference them
    private static Object uappInstance;
    private static Object uactInstance;

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

    // Minimal self-contained base Context for a bare-newInstance'd Application: overrides
    // only what an app's onCreate touches (getApplicationContext/getAssets/getResources/
    // getPackageName), returning the app's own AssetManager + Resources. base is null but
    // never delegated to since the reached methods are overridden. Avoids ActivityThread.
    // The native arsc name-index for test.apk isn't populated in AssetManager2 (by-ID reads work,
    // by-NAME getIdentifier returns 0), so FirebaseOptions.fromResource() can't find google_app_id.
    // Bridge the 5 google-services string resources by name→value (authoritative values parsed from
    // the APK's resources.arsc); everything else delegates to the real native Resources. L10 stub.
    static final class WlResources extends android.content.res.Resources {
        private static final String[] FB_NAMES = {
            "google_app_id", "gcm_defaultSenderId", "google_api_key",
            "google_storage_bucket", "project_id" };
        private static final int[] FB_IDS = {
            0x7f1401d1, 0x7f1401c1, 0x7f1401d0, 0x7f1401d5, 0x7f1403dc };
        private static final String[] FB_VALS = {
            "1:171380306104:android:4e827fc7c388aeec79c44d", "171380306104",
            "AIzaSyDCOPQUW7udguhLGoxlvZOV6EgMuQ8v1Rs",
            "uptodown-app-store.firebasestorage.app", "uptodown-app-store" };
        WlResources(android.content.res.AssetManager am, android.util.DisplayMetrics dm,
                android.content.res.Configuration cfg) { super(am, dm, cfg); }
        public int getIdentifier(String name, String defType, String defPackage) {
            if ("string".equals(defType)) {
                for (int i = 0; i < FB_NAMES.length; i++) if (FB_NAMES[i].equals(name)) return FB_IDS[i];
            }
            try { return super.getIdentifier(name, defType, defPackage); } catch (Throwable t) { return 0; }
        }
        public String getString(int id) {
            for (int i = 0; i < FB_IDS.length; i++) if (FB_IDS[i] == id) return FB_VALS[i];
            try { return super.getString(id); } catch (Throwable t) { return ""; }
        }
        public CharSequence getText(int id) {
            for (int i = 0; i < FB_IDS.length; i++) if (FB_IDS[i] == id) return FB_VALS[i];
            try { return super.getText(id); } catch (Throwable t) { return ""; }
        }
        public CharSequence getText(int id, CharSequence def) {
            try { return super.getText(id, def); } catch (Throwable t) { return def; }
        }
        public String[] getStringArray(int id) {
            try { return super.getStringArray(id); } catch (Throwable t) { return new String[0]; }
        }
        public int[] getIntArray(int id) {
            try { return super.getIntArray(id); } catch (Throwable t) { return new int[0]; }
        }
        // The app's arsc name-index isn't populated natively, so config-value lookups (e.g.
        // WorkManager reading R.bool.workmanager_test_configuration) throw NotFoundException.
        // Fall back to benign defaults instead of failing init. L10 resource stub.
        public boolean getBoolean(int id) {
            try { return super.getBoolean(id); } catch (Throwable t) { return false; }
        }
        public int getInteger(int id) {
            try { return super.getInteger(id); } catch (Throwable t) { return 0; }
        }
        public String getString(int id, Object... fmt) {
            try { return super.getString(id, fmt); } catch (Throwable t) { return ""; }
        }
    }

    // A ContextWrapper subclass that intercepts getResources()/getTheme() to return
    // our native-backed theme Resources instead of the WlResources override.
    // Built as a named inner class so it's discoverable by class name on the board.
    static final class WlProxyContext extends android.content.ContextWrapper {
        private final android.content.res.Resources mProxyRes;
        private final Object mProxyTheme;
        private final Object mProxyApp;
        private final android.content.Context mSvcCtx;  // has full system service registry
        WlProxyContext(android.content.Context base, android.content.Context svcCtx,
                android.content.res.Resources proxyRes, Object proxyTheme, Object proxyApp) {
            super(base);
            this.mSvcCtx = svcCtx;
            this.mProxyRes = proxyRes;
            this.mProxyTheme = proxyTheme;
            this.mProxyApp = proxyApp;
        }
        public android.content.res.Resources getResources() { return mProxyRes; }
        public android.content.res.Resources.Theme getTheme() { return (android.content.res.Resources.Theme) mProxyTheme; }
        public Object getApplication() { return mProxyApp != null ? mProxyApp : this; }
        public android.content.Context getApplicationContext() {
            // Return app instance so LayoutInflater.from() cache lookup uses app as the key.
            return mProxyApp != null ? (android.content.Context) mProxyApp : this;
        }
        // Cache LayoutInflater lazily to avoid recursion in getSystemService → from → getSystemService
        private volatile Object cachedLayoutInflater = null;
        private Object getCachedLayoutInflater() {
            if (cachedLayoutInflater != null) return cachedLayoutInflater;
            // Use Unsafe.allocateInstance to bypass constructor (which calls obtainStyledAttributes
            // and fails with IServiceManager NPE on OHOS). Set mContext/mFilter fields directly.
            try {
                Class<?> uc = Class.forName("jdk.internal.misc.Unsafe");
                java.lang.reflect.Field tf = uc.getDeclaredField("theUnsafe");
                tf.setAccessible(true);
                Object unsafe = tf.get(null);
                Class<?> liCls = Class.forName("android.view.LayoutInflater");
                cachedLayoutInflater = uc.getMethod("allocateInstance", Class.class).invoke(unsafe, liCls);
                // Set mContext to 'this' so inflate() uses WlProxyContext as the context
                java.lang.reflect.Field mCtxF = liCls.getDeclaredField("mContext");
                mCtxF.setAccessible(true);
                mCtxF.set(cachedLayoutInflater, this);
                // Set mFilter (ContextThemeWrapper filter) to null to avoid NPE
                java.lang.reflect.Field mFilterF = liCls.getDeclaredField("mFilter");
                mFilterF.setAccessible(true);
                mFilterF.set(cachedLayoutInflater, null);
                // Set mFactory (the LayoutInflater.Factory that handles tag callbacks)
                java.lang.reflect.Field mFactoryF = liCls.getDeclaredField("mFactory");
                mFactoryF.setAccessible(true);
                mFactoryF.set(cachedLayoutInflater, null);
                // Set mFactory2 (LayoutInflater.Factory2, the primary factory interface)
                java.lang.reflect.Field mFactory2F = liCls.getDeclaredField("mFactory2");
                mFactory2F.setAccessible(true);
                mFactory2F.set(cachedLayoutInflater, null);
                return cachedLayoutInflater;
            } catch (Throwable t) {}
            return cachedLayoutInflater;
        }
        public Object getSystemService(String name) {
            if ("layout_inflater".equals(name)) {
                Object li = getCachedLayoutInflater();
                if (li != null) return li;
            }
            if (mSvcCtx != null) {
                try {
                    Object svc = mSvcCtx.getSystemService(name);
                    if (svc != null) return svc;
                } catch (Throwable t) {}
            }
            return super.getSystemService(name);
        }
    }

    // A concrete PackageManager is required (Firebase discovery skips when getPackageManager()
    // is null); the concrete impl is the smali-generated WlPackageManager backed by WlPmHelper.
    static volatile int WL_GPM_CALLS = 0;

    // Allocate a system-service manager without running its constructor, then set every
    // binder-typed field (an android.* interface named I*) to a no-op dynamic proxy, so the
    // app's register*/query calls in onCreate return defaults instead of NPEing on a null binder.
    static Object wlService(String className) {
        try {
            Class<?> cls = Class.forName(className);
            Object o = wlAlloc(cls);
            if (o == null) return null;  // WL_SVC_ERR already set by wlAlloc
            for (Class<?> c = cls; c != null && c != Object.class; c = c.getSuperclass()) {
                for (java.lang.reflect.Field f : c.getDeclaredFields()) {
                    Class<?> t = f.getType();
                    if (t.isInterface() && t.getName().startsWith("android.")
                            && t.getSimpleName().length() > 1 && t.getSimpleName().charAt(0) == 'I'
                            && Character.isUpperCase(t.getSimpleName().charAt(1))) {
                        try { f.setAccessible(true); if (f.get(o) == null) f.set(o, noopProxy(t)); }
                        catch (Throwable ig) {}
                    }
                }
            }
            return o;
        } catch (Throwable t) { WL_SVC_ERR = className + ":" + t.getClass().getSimpleName() + ":" + t.getMessage(); return null; }
    }
    static volatile String WL_SVC_ERR = "none";

    // Set a static final field by first clearing its FINAL access flag (ART stores it in
    // Field.accessFlags). Used to repair Proxy's null static state.
    static void wlSetStaticFinal(java.lang.reflect.Field f, Object val) throws Exception {
        try {
            java.lang.reflect.Field mod = java.lang.reflect.Field.class.getDeclaredField("accessFlags");
            mod.setAccessible(true);
            mod.setInt(f, f.getModifiers() & ~java.lang.reflect.Modifier.FINAL);
        } catch (Throwable mm) { /* try the set anyway */ }
        f.set(null, val);
    }

    static Object wlAlloc(Class<?> cls) {
        try {
            Class<?> uc = Class.forName("jdk.internal.misc.Unsafe", true, null);
            java.lang.reflect.Field tf = uc.getDeclaredField("theUnsafe");
            tf.setAccessible(true);
            Object unsafe = tf.get(null);
            return uc.getMethod("allocateInstance", Class.class).invoke(unsafe, cls);
        } catch (Throwable t) {
            Throwable c = (t instanceof java.lang.reflect.InvocationTargetException && t.getCause() != null) ? t.getCause() : t;
            WL_SVC_ERR = "alloc:" + c.getClass().getName() + ":" + c.getMessage();
            return null;
        }
    }

    static Object noopProxy(Class<?> iface) {
        return java.lang.reflect.Proxy.newProxyInstance(iface.getClassLoader(),
            new Class[]{iface}, new java.lang.reflect.InvocationHandler() {
                public Object invoke(Object proxy, java.lang.reflect.Method m, Object[] a) {
                    return defaultFor(m.getReturnType());
                }
            });
    }

    static Object defaultFor(Class<?> rt) {
        if (!rt.isPrimitive()) return null;
        if (rt == boolean.class) return Boolean.FALSE;
        if (rt == int.class) return Integer.valueOf(0);
        if (rt == long.class) return Long.valueOf(0L);
        if (rt == short.class) return Short.valueOf((short) 0);
        if (rt == byte.class) return Byte.valueOf((byte) 0);
        if (rt == char.class) return Character.valueOf((char) 0);
        if (rt == float.class) return Float.valueOf(0f);
        if (rt == double.class) return Double.valueOf(0d);
        return null;  // void
    }

    static final class ProbeContext extends android.content.ContextWrapper {
        private final android.content.res.AssetManager am;
        private android.content.res.Resources res;   // built lazily (Resources ctor hits native)
        ProbeContext(android.content.res.AssetManager am) {
            super(null);
            this.am = am;
        }
        public android.content.Context getApplicationContext() { return this; }
        // Return null: the app only uses getAssets() for Typeface.createFromAsset(fonts), which
        // gracefully falls back to Typeface.DEFAULT on null. A non-null AssetManager would try to
        // openFd the font (nativeOpenAssetFd, not registered) and crash outside the app's try.
        // getResources() below still uses the real AssetManager for arsc-backed lookups.
        public android.content.res.AssetManager getAssets() { return null; }
        public android.content.res.Resources getResources() {
            if (res == null) {
                android.util.DisplayMetrics dm = new android.util.DisplayMetrics();
                dm.setToDefaults();
                res = new WlResources(am, dm, new android.content.res.Configuration());
            }
            return res;
        }
        public String getPackageName() { return "com.uptodown"; }
        public Object getSystemService(String name) {
            try {
                // ActivityManager.getMemoryClass() reads a system property (no binder needed),
                // so a reflectively-constructed instance is enough for cache-sizing in onCreate.
                if ("activity".equals(name)) {
                    java.lang.reflect.Constructor<?> c = android.app.ActivityManager.class
                            .getDeclaredConstructor(android.content.Context.class, android.os.Handler.class);
                    c.setAccessible(true);
                    return c.newInstance(this, null);
                }
                // System-service managers the app calls in onCreate. A real one needs a binder;
                // we allocate the manager (no constructor) and wire its binder-typed fields to
                // no-op proxies so register*/query calls degrade to no-ops instead of NPEing.
                if ("connectivity".equals(name)) return wlService("android.net.ConnectivityManager");
                if ("wifi".equals(name)) return wlService("android.net.wifi.WifiManager");
                if ("notification".equals(name)) return wlService("android.app.NotificationManager");
                if ("phone".equals(name)) return wlService("android.telephony.TelephonyManager");
                if ("jobscheduler".equals(name)) return wlService("android.app.job.JobScheduler");
                if ("alarm".equals(name)) return wlService("android.app.AlarmManager");
                if ("power".equals(name)) return wlService("android.os.PowerManager");
                if ("batterymanager".equals(name)) return wlService("android.os.BatteryManager");
            } catch (Throwable t) { /* fall through to null */ }
            return null;
        }
        // The app's onCreate touches real storage dirs (cache/files). Back them with a
        // writable subtree under the substrate root so getCacheDir()/etc. don't NPE.
        private static java.io.File appDir(String sub) {
            java.io.File d = new java.io.File(rootPath() + "/appdata/" + sub);
            d.mkdirs();
            return d;
        }
        public java.io.File getCacheDir() { return appDir("cache"); }
        public java.io.File getCodeCacheDir() { return appDir("code_cache"); }
        public java.io.File getFilesDir() { return appDir("files"); }
        public java.io.File getNoBackupFilesDir() { return appDir("no_backup"); }
        public java.io.File getDir(String name, int mode) { return appDir("app_" + name); }
        public java.io.File getExternalCacheDir() { return appDir("ext_cache"); }
        public java.io.File getExternalFilesDir(String type) {
            return appDir(type == null ? "ext_files" : "ext_files/" + type);
        }
        public java.io.File getDatabasePath(String name) {
            return new java.io.File(appDir("databases"), name);
        }
        public android.content.pm.ApplicationInfo getApplicationInfo() {
            android.content.pm.ApplicationInfo ai = new android.content.pm.ApplicationInfo();
            ai.packageName = "com.uptodown";
            ai.dataDir = rootPath() + "/appdata";
            ai.nativeLibraryDir = appDir("lib").getAbsolutePath();
            ai.targetSdkVersion = 33;
            ai.uid = 10000;
            return ai;
        }
        public String getPackageResourcePath() { return rootPath() + "/apks/test.apk"; }
        public String getPackageCodePath() { return rootPath() + "/apks/test.apk"; }
        public ClassLoader getClassLoader() { return ProbeContext.class.getClassLoader(); }
        public android.content.ContentResolver getContentResolver() { return null; }
        private android.content.pm.PackageManager pm;
        public android.content.pm.PackageManager getPackageManager() {
            WL_GPM_CALLS++;
            if (pm == null) {
                try {
                    // Smali-generated concrete PackageManager (all ~179 abstract methods), loaded
                    // by the same loader as this probe; meaningful methods delegate to WlPmHelper.
                    Class<?> c = Class.forName("WlPackageManager", true, getClass().getClassLoader());
                    pm = (android.content.pm.PackageManager) c.getDeclaredConstructor().newInstance();
                } catch (Throwable t) { /* leave null */ }
            }
            return pm;
        }
        // Permission checks (L09 stub): grant everything the app asks for during onCreate.
        public int checkCallingOrSelfPermission(String p) { return 0; /* PERMISSION_GRANTED */ }
        public int checkSelfPermission(String p) { return 0; }
        public int checkCallingPermission(String p) { return 0; }
        public int checkPermission(String p, int pid, int uid) { return 0; }
        // BroadcastReceiver registration (L12.A04 stub): accept but deliver nothing.
        public android.content.Intent registerReceiver(android.content.BroadcastReceiver r,
                android.content.IntentFilter f) { return null; }
        public android.content.Intent registerReceiver(android.content.BroadcastReceiver r,
                android.content.IntentFilter f, int flags) { return null; }
        public android.content.Intent registerReceiver(android.content.BroadcastReceiver r,
                android.content.IntentFilter f, String perm, android.os.Handler h) { return null; }
        public android.content.Intent registerReceiver(android.content.BroadcastReceiver r,
                android.content.IntentFilter f, String perm, android.os.Handler h, int flags) { return null; }
        public void unregisterReceiver(android.content.BroadcastReceiver r) {}
        public void sendBroadcast(android.content.Intent i) {}
        public android.os.Looper getMainLooper() { return android.os.Looper.getMainLooper(); }
        public android.content.res.Resources.Theme getTheme() { return getResources().newTheme(); }
        private final java.util.Map<String, android.content.SharedPreferences> prefsCache =
                new java.util.HashMap<String, android.content.SharedPreferences>();
        public android.content.SharedPreferences getSharedPreferences(String name, int mode) {
            synchronized (prefsCache) {
                android.content.SharedPreferences p = prefsCache.get(name);
                if (p == null) { p = new LiteSharedPrefs(); prefsCache.put(name, p); }
                return p;
            }
        }
    }

    // In-memory SharedPreferences — apps read/write prefs heavily in onCreate; the real impl
    // needs a backing file + system plumbing. This satisfies the API without persistence.
    public static final class LiteSharedPrefs implements android.content.SharedPreferences {
        private final java.util.Map<String, Object> map =
                new java.util.concurrent.ConcurrentHashMap<String, Object>();
        public java.util.Map<String, ?> getAll() { return new java.util.HashMap<String, Object>(map); }
        public String getString(String k, String d) { Object v = map.get(k); return v instanceof String ? (String) v : d; }
        @SuppressWarnings("unchecked")
        public java.util.Set<String> getStringSet(String k, java.util.Set<String> d) {
            Object v = map.get(k); return v instanceof java.util.Set ? (java.util.Set<String>) v : d; }
        public int getInt(String k, int d) { Object v = map.get(k); return v instanceof Integer ? (Integer) v : d; }
        public long getLong(String k, long d) { Object v = map.get(k); return v instanceof Long ? (Long) v : d; }
        public float getFloat(String k, float d) { Object v = map.get(k); return v instanceof Float ? (Float) v : d; }
        public boolean getBoolean(String k, boolean d) { Object v = map.get(k); return v instanceof Boolean ? (Boolean) v : d; }
        public boolean contains(String k) { return map.containsKey(k); }
        public android.content.SharedPreferences.Editor edit() { return new LiteEditor(map); }
        public void registerOnSharedPreferenceChangeListener(
                android.content.SharedPreferences.OnSharedPreferenceChangeListener l) {}
        public void unregisterOnSharedPreferenceChangeListener(
                android.content.SharedPreferences.OnSharedPreferenceChangeListener l) {}
    }
    public static final class LiteEditor implements android.content.SharedPreferences.Editor {
        private final java.util.Map<String, Object> map;
        LiteEditor(java.util.Map<String, Object> m) { this.map = m; }
        public android.content.SharedPreferences.Editor putString(String k, String v) { map.put(k, v == null ? "" : v); return this; }
        public android.content.SharedPreferences.Editor putStringSet(String k, java.util.Set<String> v) { if (v != null) map.put(k, v); return this; }
        public android.content.SharedPreferences.Editor putInt(String k, int v) { map.put(k, v); return this; }
        public android.content.SharedPreferences.Editor putLong(String k, long v) { map.put(k, v); return this; }
        public android.content.SharedPreferences.Editor putFloat(String k, float v) { map.put(k, v); return this; }
        public android.content.SharedPreferences.Editor putBoolean(String k, boolean v) { map.put(k, v); return this; }
        public android.content.SharedPreferences.Editor remove(String k) { map.remove(k); return this; }
        public android.content.SharedPreferences.Editor clear() { map.clear(); return this; }
        public boolean commit() { return true; }
        public void apply() {}
    }

    // Lightweight pure-Java JSSE provider. OkHttp's constructor EAGERLY builds an
    // SSLSocketFactory, but only needs SSLContext.getInstance("TLS") + TrustManagerFactory
    // + a socket factory to EXIST — the real handshake crypto happens later, not in onCreate.
    // BouncyCastle's JSSE enumerates/EC-tests every cipher suite & named group at construction,
    // which takes minutes in the C++ interpreter and pegs the device. This provider does ZERO
    // crypto at construction so onCreate completes instantly. (Real HTTPS would need a native
    // TLS wired into createSocket — a separate concern from getting onCreate to finish.)
    public static final class LiteTlsProvider extends java.security.Provider {
        public LiteTlsProvider() {
            super("WestlakeLiteTLS", 1.0, "Lightweight pure-Java TLS (onCreate construction only)");
            String ctx = LiteSslContextSpi.class.getName();
            put("SSLContext.TLS", ctx);
            put("SSLContext.TLSv1.2", ctx);
            put("SSLContext.TLSv1.3", ctx);
            put("SSLContext.Default", ctx);
            String tmf = LiteTmfSpi.class.getName();
            put("TrustManagerFactory.PKIX", tmf);
            put("TrustManagerFactory.SunX509", tmf);
            put("Alg.Alias.TrustManagerFactory.X509", "PKIX");
            String kmf = LiteKmfSpi.class.getName();
            put("KeyManagerFactory.PKIX", kmf);
            put("KeyManagerFactory.SunX509", kmf);
        }
    }
    public static final class LiteSslContextSpi extends javax.net.ssl.SSLContextSpi {
        protected void engineInit(javax.net.ssl.KeyManager[] km, javax.net.ssl.TrustManager[] tm,
                                  java.security.SecureRandom sr) {}
        protected javax.net.ssl.SSLSocketFactory engineGetSocketFactory() { return new LiteSslSocketFactory(); }
        protected javax.net.ssl.SSLServerSocketFactory engineGetServerSocketFactory() { return null; }
        protected javax.net.ssl.SSLEngine engineCreateSSLEngine() { return null; }
        protected javax.net.ssl.SSLEngine engineCreateSSLEngine(String host, int port) { return null; }
        protected javax.net.ssl.SSLSessionContext engineGetServerSessionContext() { return null; }
        protected javax.net.ssl.SSLSessionContext engineGetClientSessionContext() { return null; }
    }
    public static final class LiteSslSocketFactory extends javax.net.ssl.SSLSocketFactory {
        private static final String[] SUITES = { "TLS_AES_128_GCM_SHA256" };
        public String[] getDefaultCipherSuites() { return SUITES.clone(); }
        public String[] getSupportedCipherSuites() { return SUITES.clone(); }
        // Returning a plain Socket makes OkHttp do `(SSLSocket) socket` → ClassCastException,
        // which the app can retry-loop on. There's no real handshake here, so fail with a normal
        // IOException the moment a connection is actually attempted (onCreate CONSTRUCTION already
        // succeeded — this only fires if the app eagerly makes a request). If the caller closed
        // the wrapped socket first, close it.
        private static java.net.Socket fail(java.net.Socket toClose) throws java.io.IOException {
            if (toClose != null) { try { toClose.close(); } catch (Throwable t) {} }
            throw new javax.net.ssl.SSLHandshakeException(
                    "Westlake LiteTLS: no native TLS wired — HTTPS not available in this probe");
        }
        public java.net.Socket createSocket(java.net.Socket s, String host, int port, boolean autoClose)
                throws java.io.IOException { return fail(autoClose ? s : null); }
        public java.net.Socket createSocket(String host, int port) throws java.io.IOException { return fail(null); }
        public java.net.Socket createSocket(String host, int port, java.net.InetAddress lh, int lp)
                throws java.io.IOException { return fail(null); }
        public java.net.Socket createSocket(java.net.InetAddress host, int port) throws java.io.IOException {
            return fail(null); }
        public java.net.Socket createSocket(java.net.InetAddress a, int p, java.net.InetAddress lh, int lp)
                throws java.io.IOException { return fail(null); }
    }
    public static final class LiteTmfSpi extends javax.net.ssl.TrustManagerFactorySpi {
        protected void engineInit(java.security.KeyStore ks) {}
        protected void engineInit(javax.net.ssl.ManagerFactoryParameters p) {}
        protected javax.net.ssl.TrustManager[] engineGetTrustManagers() {
            return new javax.net.ssl.TrustManager[] { new javax.net.ssl.X509TrustManager() {
                public void checkClientTrusted(java.security.cert.X509Certificate[] c, String a) {}
                public void checkServerTrusted(java.security.cert.X509Certificate[] c, String a) {}
                public java.security.cert.X509Certificate[] getAcceptedIssuers() {
                    return new java.security.cert.X509Certificate[0]; }
            }};
        }
    }
    public static final class LiteKmfSpi extends javax.net.ssl.KeyManagerFactorySpi {
        protected void engineInit(java.security.KeyStore ks, char[] pw) {}
        protected void engineInit(javax.net.ssl.ManagerFactoryParameters p) {}
        protected javax.net.ssl.KeyManager[] engineGetKeyManagers() {
            return new javax.net.ssl.KeyManager[0]; }
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

    /**
     * [DAYU600] The arm64 boot image's FieldVarHandle fixup does not cover the
     * java.lang.invoke.MethodHandle/MethodType family, so their static fields
     * (especially MethodType's ConcurrentWeakInternSet) are left null. Any
     * reflection/Proxy path that touches MethodType NPEs. Re-seed the missing
     * statics reflectively before we install OHServiceManager or do other work.
     */
    private static void repairMethodHandleStatics() {
        int fixed = 0;
        String[] clsNames = {"java.lang.invoke.MethodType", "java.lang.invoke.MethodHandle"};
        for (String clsName : clsNames) {
            try {
                Class<?> cls = Class.forName(clsName);
                for (java.lang.reflect.Field f : cls.getDeclaredFields()) {
                    if (!java.lang.reflect.Modifier.isStatic(f.getModifiers())) continue;
                    f.setAccessible(true);
                    Class<?> ft = f.getType();
                    if (ft == null) continue;
                    String ftn = ft.getName();
                    if (ftn.contains("ConcurrentWeakInternSet") || ftn.contains("WeakInternSet")) {
                        if (f.get(null) == null) {
                            java.lang.reflect.Constructor<?> c = ft.getDeclaredConstructor();
                            c.setAccessible(true);
                            f.set(null, c.newInstance());
                            fixed++;
                        }
                    }
                }
            } catch (Throwable t) { /* keep going */ }
        }
        // Math.sRandom (used by Math.random) may also be null after the broken boot image.
        try {
            Class<?> mathCls = Class.forName("java.lang.Math");
            for (java.lang.reflect.Field f : mathCls.getDeclaredFields()) {
                if (!java.lang.reflect.Modifier.isStatic(f.getModifiers())) continue;
                f.setAccessible(true);
                if (f.getType() == java.util.Random.class && f.get(null) == null) {
                    f.set(null, new java.util.Random());
                    fixed++;
                }
            }
        } catch (Throwable t) { /* keep going */ }
        // android.os.Build serial fields are sometimes empty arrays from a broken clinit.
        try {
            Class<?> buildCls = Class.forName("android.os.Build");
            java.lang.reflect.Field abis = buildCls.getDeclaredField("SUPPORTED_ABIS");
            abis.setAccessible(true);
            Object val = abis.get(null);
            if (val == null || (val instanceof String[] && ((String[]) val).length == 0)) {
                abis.set(null, new String[]{"arm64-v8a"});
                fixed++;
            }
        } catch (Throwable t) { /* keep going */ }
        // libcore's StringFactory has a static byte[] table that may be null.
        try {
            Class<?> sfCls = Class.forName("java.lang.StringFactory");
            for (java.lang.reflect.Field f : sfCls.getDeclaredFields()) {
                if (!java.lang.reflect.Modifier.isStatic(f.getModifiers())) continue;
                f.setAccessible(true);
                if (f.getType() == byte[].class && f.get(null) == null) {
                    f.set(null, new byte[0]);
                    fixed++;
                }
            }
        } catch (Throwable t) { /* keep going */ }
        try {
            writeText(probeLogPath("uptodown-probe.txt"), "MHSTATIC=repaired:" + fixed);
        } catch (Throwable ignored) {}
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
        try {
            writeText(probeLogPath("embedded-entry.txt"),
                    "embeddedMainNoExit entered target=" + target + " stage=" + stage + " dir=" + directionArg);
        } catch (Throwable ignored) {}
        try {
            runResolved(target, stage, directionArg);
        } catch (Throwable t) {
            // Log the crash but don't rethrow — VM must survive for diagnostics
            try {
                java.io.StringWriter sw = new java.io.StringWriter();
                t.printStackTrace(new java.io.PrintWriter(sw));
                String msg = "embeddedMainNoExit CRASH: " + t.getClass().getName() + ": " + t.getMessage() + "\n" + sw.toString().substring(0, Math.min(sw.toString().length(), 1000));
                writeText(probeLogPath("uptodown-probe.txt"), msg);
            } catch (Throwable ignored2) {}
            return 99;
        }
        return 0;
    }

    private static void runResolved(String target, String stage, String directionArg) throws Exception {
        try {
            writeText(probeLogPath("runresolved-entry.txt"),
                    "runResolved entered target=" + target + " stage=" + stage + " dir=" + directionArg);
        } catch (Throwable ignored) {}
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
                    // Install the in-process ServiceManager (OHServiceManager) so the REAL
                    // ActivityThread boot's getService("display")/etc. return local-binder adapter
                    // stubs instead of NPE — this is the Wine-style OS-boundary shim.
                    try {
                        Class.forName("westlake.adapter.OHServiceManager").getMethod("install").invoke(null);
                        sysresNote += "OHSM[installed] ";
                    } catch (Throwable ohsm) {
                        Throwable oc = (ohsm instanceof java.lang.reflect.InvocationTargetException
                                && ohsm.getCause() != null) ? ohsm.getCause() : ohsm;
                        while (oc.getCause() != null && oc != oc.getCause()) oc = oc.getCause();
                        StackTraceElement[] ost = oc.getStackTrace();
                        StringBuilder stk = new StringBuilder();
                        for (int si = 0; si < ost.length && si < 6; si++)
                            stk.append(ost[si].getClassName()).append('.').append(ost[si].getMethodName())
                               .append(':').append(ost[si].getLineNumber()).append(" <- ");
                        sysresNote += "OHSM_FAIL[" + oc.getClass().getSimpleName() + ":" + oc.getMessage() + "@" + stk + "] ";
                    }
                    // Diagnostic: what static fields does the REAL ServiceManager have, and did install set one?
                    try {
                        Class<?> smCls = Class.forName("android.os.ServiceManager");
                        StringBuilder fs = new StringBuilder();
                        for (java.lang.reflect.Field ff : smCls.getDeclaredFields()) {
                            if (java.lang.reflect.Modifier.isStatic(ff.getModifiers())) {
                                ff.setAccessible(true);
                                Object val = null; try { val = ff.get(null); } catch (Throwable ignore) {}
                                fs.append(ff.getName()).append(':').append(ff.getType().getSimpleName())
                                  .append('=').append(val == null ? "null" : val.getClass().getSimpleName()).append(' ');
                            }
                        }
                        sysresNote += "SMFIELDS[" + fs + "] ";
                    } catch (Throwable ft) { sysresNote += "SMFIELDS_FAIL[" + ft + "] "; }
                    // Enumerate ALL java.lang.reflect.Proxy static fields — the boot image left
                    // several null (proxyClassCache, comparators); find any remaining nulls to repair.
                    try {
                        Class<?> proxyCls = Class.forName("java.lang.reflect.Proxy");
                        StringBuilder pf = new StringBuilder();
                        for (java.lang.reflect.Field ff : proxyCls.getDeclaredFields()) {
                            if (java.lang.reflect.Modifier.isStatic(ff.getModifiers())) {
                                ff.setAccessible(true);
                                Object val = null; try { val = ff.get(null); } catch (Throwable ig) {}
                                pf.append(ff.getName()).append('=').append(val == null ? "NULL" : "set").append(' ');
                            }
                        }
                        sysresNote += "PROXYSTATICS[" + pf + "] ";
                    } catch (Throwable pe) { sysresNote += "PROXYSTATICS_FAIL[" + pe + "] "; }
                    // Isolate: does dynamic Proxy work AT ALL (over a simple public interface)?
                    try {
                        Object tp = java.lang.reflect.Proxy.newProxyInstance(
                                Runnable.class.getClassLoader(), new Class<?>[] {Runnable.class},
                                new java.lang.reflect.InvocationHandler() {
                                    public Object invoke(Object p, java.lang.reflect.Method m, Object[] a) { return null; }
                                });
                        sysresNote += "PROXYTEST[ok:" + (tp != null) + "] ";
                    } catch (Throwable pt) {
                        Throwable pc = pt; while (pc.getCause() != null && pc != pc.getCause()) pc = pc.getCause();
                        StackTraceElement[] pst = pc.getStackTrace();
                        String pat = pst.length > 0 ? (pst[0].getClassName() + "." + pst[0].getMethodName() + ":" + pst[0].getLineNumber()) : "?";
                        sysresNote += "PROXYTEST_FAIL[" + pc.getClass().getSimpleName() + ":" + pc.getMessage() + "@" + pat + "] ";
                    }
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
        // inputVerify: Call InputVerifyStage.run() with framework context.
        // The C probe skipped this stage (no framework context in native).
        // We have framework context from currentActivityThread().
        if ("inputVerify".equals(stage)) {
            writeText(probeLogPath("inputverify-probe.txt"), "inputVerify Java: trying framework context");
            try {
                // Get framework context from ActivityThread
                Class<?> atCls = Class.forName("android.app.ActivityThread");
                java.lang.reflect.Method currentAt = atCls.getMethod("currentActivityThread");
                Object at = (Object) currentAt.invoke(null);
                if (at != null) {
                    java.lang.reflect.Method getCtx = atCls.getMethod("getSystemContext");
                    Object sysCtx = getCtx.invoke(at);
                    writeText(probeLogPath("inputverify-probe.txt"), "inputVerify Java: ctx=" + sysCtx);
                    // Load and call InputVerifyStage
                    Class<?> ivsCls = Class.forName("adapter.window.InputVerifyStage");
                    java.lang.reflect.Method runM = ivsCls.getMethod("run", android.content.Context.class, Object.class);
                    writeText(probeLogPath("inputverify-probe.txt"), "inputVerify Java: calling run()");
                    runM.invoke(null, sysCtx, null);
                    writeText(probeLogPath("inputverify-probe.txt"), "inputVerify Java: run() returned ok");
                } else {
                    writeText(probeLogPath("inputverify-probe.txt"), "inputVerify Java: no ActivityThread");
                }
            } catch (Throwable t) {
                writeText(probeLogPath("inputverify-probe.txt"), "inputVerify Java FAIL: " + t.getClass().getSimpleName() + ": " + t.getMessage());
            }
            writeText(probeLogPath("inputverify-probe.txt"), "inputVerify stage: Java done");
            finishOrExit(0);
            return;
        }
        if ("uptodownProbe".equals(stage)) {
            // Point ICU4J at the repackaged ICU data (device icudt74 relabeled icudt75l) so
            // android.icu UResourceBundle locale lookups (needed in onCreate) resolve. The
            // dataPath property is read once at ICUBinary.<clinit> (already run at boot with an
            // empty path), so also reflectively add our path to its cached icuDataFiles list.
            try { System.setProperty("android.icu.impl.ICUBinary.dataPath", rootPath() + "/icu"); }
            catch (Throwable ig) {}
            try {
                Class<?> icb = Class.forName("android.icu.impl.ICUBinary");
                java.lang.reflect.Field df = icb.getDeclaredField("icuDataFiles");
                df.setAccessible(true);
                java.util.List<?> dlist = (java.util.List<?>) df.get(null);
                java.lang.reflect.Method addm = icb.getDeclaredMethod(
                        "addDataFilesFromPath", String.class, java.util.List.class);
                addm.setAccessible(true);
                addm.invoke(null, rootPath() + "/icu", dlist);
                writeText(probeLogPath("uptodown-probe.txt"), "icuData=" + (dlist == null ? "null" : dlist.size()));
            } catch (Throwable icx) {
                writeText(probeLogPath("uptodown-probe.txt"),
                        "icuData=FAIL:" + icx.getClass().getSimpleName() + ":" + icx.getMessage());
            }
            // Install the in-process ServiceManager stub BEFORE any ActivityThread/View/Window
            // initialization, otherwise WindowManagerGlobal.getWindowManagerService() returns null
            // and ViewConfiguration.get() SIGSEGVs on WMS.hasNavigationBar().
            // Also repair MethodHandle/MethodType boot-image statics that were left null.
            String ohsmStatus;
            try {
                repairMethodHandleStatics();
                Class.forName("westlake.adapter.OHServiceManager").getMethod("install").invoke(null);
                ohsmStatus = "OHSM=installed";
            } catch (Throwable ohsm) {
                Throwable oc = (ohsm instanceof java.lang.reflect.InvocationTargetException
                        && ohsm.getCause() != null) ? ohsm.getCause() : ohsm;
                while (oc.getCause() != null && oc != oc.getCause()) oc = oc.getCause();
                ohsmStatus = "OHSM=FAIL:" + oc.getClass().getSimpleName() + ":" + oc.getMessage();
            }
            writeText(probeLogPath("uptodown-probe.txt"), ohsmStatus);
            // First strike at the user-supplied test.apk (com.uptodown 7.33): resource engine on
            // its arsc, dex classload, then headless UptodownApp/MainActivity bring-up. Incremental
            // writeText so partial progress survives a crash.
            StringBuilder ulog = new StringBuilder();
            java.io.File apkF = new java.io.File(apkPath("test-uptodown.apk"));
            // AssetManager the resource-enum stage builds over the app APK; reused as the app's
            // base-Context AssetManager so we don't re-load the same APK (which would hit the
            // unregistered ApkAssets.nativeIsUpToDate cache-check native).
            android.content.res.AssetManager uamShared = null;
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
                    uamShared = uam;
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
                // Multi-dex diagnostic: 'a.a' lives in classes.dex, UptodownApp in classes4.dex.
                try { Class.forName("a.a", false, uloader); ulog.append("dex1=OK "); }
                catch (Throwable d1) { ulog.append("dex1=").append(d1.getClass().getSimpleName()).append(' '); }
                Class<?> uAppCls;
                try {
                    uAppCls = Class.forName("com.uptodown.UptodownApp", false, uloader);
                    ulog.append("appCls=OK ");
                } catch (ClassNotFoundException multidexMiss) {
                    // Fallback: runtime may only load classes.dex from an APK — use extracted
                    // per-dex files pushed next to the APK (test-uptodown.classesN.dex).
                    // Per-dex diagnostic loaders first, with suppressed-exception dumps.
                    String c4 = apkPath("test-uptodown.classes4.dex");
                    ClassLoader l4 = new dalvik.system.PathClassLoader(c4,
                            Dayu600ApkStageProbe.class.getClassLoader());
                    try {
                        uAppCls = Class.forName("com.uptodown.UptodownApp", false, l4);
                        ulog.append("appCls=OK(c4-only) ");
                        uloader = l4;
                    } catch (Throwable c4t) {
                        ulog.append("c4=").append(c4t.getClass().getSimpleName());
                        for (Throwable sup : c4t.getSuppressed())
                            ulog.append(" sup:").append(sup);
                        Throwable cz = c4t.getCause();
                        while (cz != null) {
                            ulog.append(" cause:").append(cz);
                            for (Throwable sup : cz.getSuppressed()) ulog.append(" sup:").append(sup);
                            cz = cz.getCause();
                        }
                        ulog.append(' ');
                        // Can we even open classes4.dex as a raw DexFile, and does loadClass find
                        // UptodownApp through it? (DexFile.entries()/getClassNameList aborts in this
                        // fork — null array — so avoid it; use loadClass directly instead.)
                        try {
                            @SuppressWarnings("deprecation")
                            dalvik.system.DexFile df4 = new dalvik.system.DexFile(c4);
                            ulog.append("df4open=OK ");
                            try {
                                Class<?> viaDf = df4.loadClass("com.uptodown.UptodownApp",
                                        Dayu600ApkStageProbe.class.getClassLoader());
                                ulog.append("df4load=").append(viaDf == null ? "NULL" : "OK ");
                            } catch (Throwable lt) {
                                ulog.append("df4load=FAIL:").append(lt.getClass().getSimpleName())
                                    .append(':').append(lt.getMessage()).append(' ');
                            }
                        } catch (Throwable et) {
                            ulog.append("df4open=FAIL:").append(et.getClass().getSimpleName())
                                .append(':').append(et.getMessage()).append(' ');
                        }
                        // Per-dex matrix via the REAL full-APK PathClassLoader (uloader): one class known
                        // (baksmali) to be DEFINED in each dex of test.apk. If only the classes.dex entry
                        // resolves, the APK's secondary dexes (classes2/3/4) are not being opened.
                        String[][] sweep = {
                            {"c1", "a.a"},
                            {"c2", "j$.com.android.tools.r8.a"},
                            {"c3", "androidx.compose.ui.graphics.AndroidBlendMode_androidKt$WhenMappings"},
                            {"c4", "com.uptodown.UptodownApp"},
                        };
                        for (String[] s : sweep) {
                            try {
                                Class<?> cx = Class.forName(s[1], false, uloader);
                                ulog.append(s[0]).append('=').append(cx == null ? "NULL" : "OK").append(' ');
                            } catch (Throwable lx) {
                                ulog.append(s[0]).append('=').append(lx.getClass().getSimpleName()).append(' ');
                            }
                        }
                        writeText(probeLogPath("uptodown-probe.txt"), ulog.toString());
                        throw c4t;
                    }
                }
                Class<?> uMainCls = Class.forName("com.uptodown.activities.MainActivity", false, uloader);
                ulog.append("mainCls=OK ");
                writeText(probeLogPath("uptodown-probe.txt"), ulog.toString());
                try { Class.forName("com.uptodown.UptodownApp", true, uloader); ulog.append("appClinit=OK "); }
                catch (Throwable ct) {
                    Throwable cc = ct.getCause() != null ? ct.getCause() : ct;
                    ulog.append("appClinit=FAIL:").append(cc.getClass().getSimpleName()).append(':').append(cc.getMessage()).append(' ');
                }
                writeText(probeLogPath("uptodown-probe.txt"), ulog.toString());
                uappInstance = null;
                try {
                    uappInstance = uAppCls.getDeclaredConstructor().newInstance();
                    ulog.append("appNew=OK ");
                    // The app is built via bare newInstance, so its ContextWrapper.mBase is
                    // null and every Context delegation in onCreate (getApplicationContext/
                    // getAssets/getResources/...) NPEs. Attach a real system Context the same
                    // way assetProbe does (ActivityThread.systemMain().getSystemContext()).
                    try {
                        // Build a self-contained base Context (avoids ActivityThread.getSystemContext,
                        // which NotFounds on com.android.internal.R IDs the SDK-derived framework-res
                        // doesn't match): a ContextWrapper(null) subclass whose overrides return the
                        // app's own AssetManager + a Resources over it, and getApplicationContext()==this.
                        Class<?> amCls = android.content.res.AssetManager.class;
                        Class<?> apkAssetsCls = Class.forName("android.content.res.ApkAssets");
                        // Reuse the AssetManager the res-enum stage already built over this APK.
                        // Building a second one re-loads the APK → ApkAssets.nativeIsUpToDate (unregistered).
                        android.content.res.AssetManager appAm = uamShared;
                        if (appAm == null) {
                            java.lang.reflect.Constructor<?> acC = amCls.getDeclaredConstructor(boolean.class);
                            acC.setAccessible(true);
                            java.lang.reflect.Field mApkAssetsF = amCls.getDeclaredField("mApkAssets");
                            mApkAssetsF.setAccessible(true);
                            appAm = (android.content.res.AssetManager) acC.newInstance(Boolean.TRUE);
                            mApkAssetsF.set(appAm, java.lang.reflect.Array.newInstance(apkAssetsCls, 0));
                            amCls.getMethod("addAssetPath", String.class).invoke(appAm, apkF.getAbsolutePath());
                        }
                        android.content.Context baseCtx = new ProbeContext(appAm);
                        java.lang.reflect.Field mBaseF =
                                Class.forName("android.content.ContextWrapper").getDeclaredField("mBase");
                        mBaseF.setAccessible(true);
                        mBaseF.set(uappInstance, baseCtx);
                        ulog.append("ctxAttach=OK ");
                    } catch (Throwable cx) {
                        Throwable cxc = (cx instanceof java.lang.reflect.InvocationTargetException
                                && cx.getCause() != null) ? cx.getCause() : cx;
                        ulog.append("ctxAttach=FAIL:").append(cxc.getClass().getSimpleName())
                            .append(':').append(cxc.getMessage()).append(' ');
                    }
                    // ROOT: java.nio.charset.StandardCharsets.* are null in this runtime (their
                    // <clinit> left the static-finals unset), so ZipFile.<init> reads a null UTF_8 →
                    // NPE:charset when opening ANY jar → VMClassLoader/getResourceAsStream/ICU all die.
                    // Re-initialize them via Charset.forName now that the charset infra is warm.
                    try {
                        // Charset's own static caches are null (its <clinit> left them unset), so
                        // Charset.forName NPEs at `monitor-enter cache2` before it can create anything.
                        // Seed them first; then forName("UTF-8") reaches libicu's native converter (no
                        // .dat data needed) and works.
                        Class<?> chCls = Class.forName("java.nio.charset.Charset");
                        java.lang.reflect.Field c2 = chCls.getDeclaredField("cache2");
                        c2.setAccessible(true);
                        if (c2.get(null) == null) c2.set(null, new java.util.HashMap<Object,Object>());
                        try {
                            java.lang.reflect.Field gate = chCls.getDeclaredField("gate");
                            gate.setAccessible(true);
                            if (gate.get(null) == null) gate.set(null, new ThreadLocal<Object>());
                        } catch (Throwable ig) {}
                        Class<?> sc = Class.forName("java.nio.charset.StandardCharsets");
                        String[][] cs = {{"UTF_8","UTF-8"},{"ISO_8859_1","ISO-8859-1"},{"US_ASCII","US-ASCII"},
                                {"UTF_16","UTF-16"},{"UTF_16BE","UTF-16BE"},{"UTF_16LE","UTF-16LE"}};
                        int fixed = 0;
                        for (String[] c : cs) {
                            java.lang.reflect.Field f = sc.getField(c[0]);
                            f.setAccessible(true);
                            if (f.get(null) == null) { f.set(null, java.nio.charset.Charset.forName(c[1])); fixed++; }
                        }
                        // Same cascade: CodingErrorAction.{IGNORE,REPLACE,REPORT} static-finals are
                        // null → CharsetEncoder.onMalformedInput(null) throws "Null action" when
                        // UnixPath encodes a path. Re-seed them (private ctor takes a name String).
                        Class<?> cea = Class.forName("java.nio.charset.CodingErrorAction");
                        java.lang.reflect.Constructor<?> ceaC = cea.getDeclaredConstructor(String.class);
                        ceaC.setAccessible(true);
                        for (String nm : new String[]{"IGNORE","REPLACE","REPORT"}) {
                            java.lang.reflect.Field ff = cea.getDeclaredField(nm);
                            ff.setAccessible(true);
                            if (ff.get(null) == null) { ff.set(null, ceaC.newInstance(nm)); fixed++; }
                        }
                        try {
                            java.nio.ByteBuffer bb = java.nio.charset.StandardCharsets.UTF_8.newEncoder()
                                    .encode(java.nio.CharBuffer.wrap("/abc"));
                            ulog.append("u8enc=").append(bb.remaining()).append(' ');
                            try {
                                java.nio.CharBuffer cbuf = java.nio.charset.StandardCharsets.UTF_8.newDecoder()
                                        .decode(java.nio.ByteBuffer.wrap(new byte[]{'a', 'b', 'c'}));
                                String dec = cbuf.toString();
                                ulog.append("u8dec=[").append(dec).append("]len").append(dec == null ? -1 : dec.length()).append(' ');
                                // ZipCoder path: new String(bytes, off, len, UTF_8) — the actual entry-name decode.
                                String sd = new String(new byte[]{97, 98, 99, 47, 100}, 0, 5,
                                        java.nio.charset.StandardCharsets.UTF_8);
                                ulog.append("strDec=[").append(sd).append("]len").append(sd == null ? -1 : sd.length()).append(' ');
                            } catch (Throwable de) {
                                ulog.append("u8dec=FAIL:").append(de.getClass().getSimpleName())
                                    .append(':').append(de.getMessage()).append(' ');
                            }
                        } catch (Throwable te) {
                            ulog.append("u8enc=FAIL:").append(te.getClass().getSimpleName())
                                .append(':').append(te.getMessage()).append(' ');
                        }
                        try {
                            java.lang.reflect.Field tf = Class.forName("jdk.internal.misc.Unsafe").getDeclaredField("theUnsafe");
                            tf.setAccessible(true);
                            Object u = tf.get(null);
                            Object addr = u.getClass().getMethod("allocateMemory", long.class).invoke(u, 64L);
                            ulog.append("unsafeAlloc=").append(addr).append(' ');
                            // also test UnixPath byte encoding path (what feeds stat0's buffer)
                            java.nio.file.Path pp = new java.io.File("/system").toPath();
                            ulog.append("pathToStr=").append(pp.toString()).append(' ');
                        } catch (Throwable ut) {
                            Throwable uc = (ut instanceof java.lang.reflect.InvocationTargetException
                                    && ut.getCause() != null) ? ut.getCause() : ut;
                            ulog.append("unsafeAlloc=FAIL:").append(uc.getClass().getSimpleName())
                                .append(':').append(uc.getMessage()).append(' ');
                        }
                        ulog.append("charsetFix=").append(fixed)
                            .append("/UTF8=").append(java.nio.charset.StandardCharsets.UTF_8 != null).append(' ');
                    } catch (Throwable csx) {
                        Throwable cc = (csx instanceof java.lang.reflect.InvocationTargetException
                                && csx.getCause() != null) ? csx.getCause() : csx;
                        ulog.append("charsetFix=FAIL:").append(cc.getClass().getSimpleName())
                            .append(':').append(cc.getMessage()).append(' ');
                    }
                    // Boot-image class whose <clinit> did not run → defaultCharBufferSize left 0
                    // → System.out.print → BufferedWriter throws "Buffer size <= 0". Seed it.
                    try {
                        java.lang.reflect.Field dcbs = java.io.BufferedWriter.class
                                .getDeclaredField("defaultCharBufferSize");
                        dcbs.setAccessible(true);
                        int cur = dcbs.getInt(null);
                        if (cur <= 0) dcbs.setInt(null, 8192);
                        ulog.append("bwFix=").append(cur).append("->").append(dcbs.getInt(null)).append(' ');
                    } catch (Throwable bwx) {
                        ulog.append("bwFix=FAIL:").append(bwx.getClass().getSimpleName()).append(' ');
                    }
                    // Boot-image java.security.Security.spiMap left null (<clinit> didn't run) →
                    // Security.getSpiClass → Map.get(null) NPE during KeyStore/TrustManager lookup.
                    try {
                        java.lang.reflect.Field sm = java.security.Security.class.getDeclaredField("spiMap");
                        sm.setAccessible(true);
                        if (sm.get(null) == null) {
                            sm.set(null, new java.util.concurrent.ConcurrentHashMap<Object, Object>());
                            ulog.append("spiMapFix=seeded ");
                        } else {
                            ulog.append("spiMapFix=already ");
                        }
                    } catch (Throwable smx) {
                        ulog.append("spiMapFix=").append(smx.getClass().getSimpleName()).append(' ');
                    }
                    // More boot-image null statics: the AtomicReferenceFieldUpdater fields that
                    // Buffered{Input,Output}Stream.close() use are null (their <clinit> didn't run)
                    // → NPE on close. Seed them.
                    try {
                        int seeded = 0;
                        java.lang.reflect.Field biu = java.io.BufferedInputStream.class
                                .getDeclaredField("bufUpdater");
                        biu.setAccessible(true);
                        if (biu.get(null) == null) {
                            biu.set(null, java.util.concurrent.atomic.AtomicReferenceFieldUpdater
                                    .newUpdater(java.io.BufferedInputStream.class, byte[].class, "buf"));
                            seeded++;
                        }
                        try {
                            java.lang.reflect.Field bou = java.io.BufferedOutputStream.class
                                    .getDeclaredField("bufUpdater");
                            bou.setAccessible(true);
                            if (bou.get(null) == null) {
                                bou.set(null, java.util.concurrent.atomic.AtomicReferenceFieldUpdater
                                        .newUpdater(java.io.BufferedOutputStream.class, byte[].class, "buf"));
                                seeded++;
                            }
                        } catch (NoSuchFieldException nf) { /* BufferedOutputStream may not use one */ }
                        ulog.append("bufUpdFix=").append(seeded).append(' ');
                    } catch (Throwable bux) {
                        ulog.append("bufUpdFix=").append(bux.getClass().getSimpleName()).append(' ');
                    }
                    // TLS diagnostic: which security providers exist + can we get an "TLS" SSLContext?
                    try {
                        java.security.Provider[] ps = java.security.Security.getProviders();
                        StringBuilder pn = new StringBuilder();
                        for (java.security.Provider p : ps) pn.append(p.getName()).append(':').append(
                                p.getClass().getName()).append(',');
                        ulog.append("providers=[").append(pn).append("] ");
                    } catch (Throwable t) { ulog.append("providers=ERR:").append(t.getClass().getSimpleName()).append(' '); }
                    try {
                        javax.net.ssl.SSLContext tc = javax.net.ssl.SSLContext.getInstance("TLS");
                        ulog.append("tlsCtx=").append(tc.getProvider().getName()).append(' ');
                        try {
                            tc.init(null, null, null);
                            javax.net.ssl.SSLSocketFactory sf = tc.getSocketFactory();
                            ulog.append("tlsSF=").append(sf != null ? "OK" : "null").append(' ');
                        } catch (Throwable it) {
                            ulog.append("tlsInit=").append(it.getClass().getSimpleName()).append(':').append(it.getMessage()).append(' ');
                        }
                    } catch (Throwable t) {
                        ulog.append("tlsCtx=FAIL:").append(t.getClass().getSimpleName()).append(':').append(t.getMessage()).append(' ');
                    }
                    // Can BouncyCastle supply crypto? Probe for bcprov + bctls on the classpath.
                    try {
                        Class.forName("com.android.org.bouncycastle.jce.provider.BouncyCastleProvider", false, uloader);
                        ulog.append("bcprov=present ");
                    } catch (Throwable t) {
                        try { Class.forName("org.bouncycastle.jce.provider.BouncyCastleProvider", false, uloader); ulog.append("bcprov=present(org) "); }
                        catch (Throwable t2) { ulog.append("bcprov=absent "); }
                    }
                    try {
                        Class.forName("com.android.org.bouncycastle.jsse.provider.BouncyCastleJsseProvider", false, uloader);
                        ulog.append("bctls=present ");
                    } catch (Throwable t) {
                        try { Class.forName("org.bouncycastle.jsse.provider.BouncyCastleJsseProvider", false, uloader); ulog.append("bctls=present(org) "); }
                        catch (Throwable t2) { ulog.append("bctls=absent "); }
                    }
                    // Conscrypt native crypto is dead (wrong-arch lib), so its SSLContext.TLS fails →
                    // OkHttp asserts "No System TLS". Bundle Bouncy Castle's pure-Java JSSE (bctls) +
                    // bcprov and register BouncyCastleJsseProvider at slot 1 so SSLContext.getInstance
                    // ("TLS") / TrustManagerFactory.getInstance("PKIX") resolve to it before onCreate.
                    try {
                        java.io.File odex = new java.io.File(rootPath() + "/appdata/bc-odex");
                        odex.mkdirs();
                        ClassLoader bcLoader = new dalvik.system.DexClassLoader(
                                rootPath() + "/apks/bc-tls.jar", odex.getAbsolutePath(), null,
                                ClassLoader.getSystemClassLoader());
                        Class<?> provCls = bcLoader.loadClass(
                                "org.bouncycastle.jce.provider.BouncyCastleProvider");
                        java.security.Provider bcProv =
                                (java.security.Provider) provCls.getDeclaredConstructor().newInstance();
                        java.security.Security.addProvider(bcProv);
                        // Register the LIGHTWEIGHT TLS provider at slot 1 for SSLContext.TLS /
                        // TrustManagerFactory — NOT BouncyCastleJsseProvider (whose construction
                        // does minutes of EC crypto in the interpreter and pegs/disconnects the
                        // device). bcprov stays registered for fast crypto primitives if the app
                        // needs them. This lets OkHttp's eager SSLSocketFactory build instantly.
                        java.security.Provider bcJsse = new LiteTlsProvider();
                        int insPos = java.security.Security.insertProviderAt(bcJsse, 1);
                        // OkHttp's platformTrustManager()/keyManager use TrustManagerFactory/
                        // KeyManagerFactory.getDefaultAlgorithm() (default "SunX509", which BC
                        // lacks). Point the defaults at "PKIX"/"X.509" that BC JSSE provides.
                        java.security.Security.setProperty("ssl.TrustManagerFactory.algorithm", "PKIX");
                        java.security.Security.setProperty("ssl.KeyManagerFactory.algorithm", "PKIX");
                        // BC TrustManagerFactory.init(null) loads the default trust store from
                        // javax.net.ssl.trustStore; the device has no cacerts, so point it at an
                        // empty PKCS12 (lets OkHttp's platformTrustManager() succeed — handshake
                        // trust is a separate later concern).
                        // "NONE" → BC builds an empty in-memory trust store WITHOUT any file I/O,
                        // avoiding BufferedInputStream.close() (whose boot-image bufUpdater is null).
                        System.setProperty("javax.net.ssl.trustStore", "NONE");
                        System.setProperty("javax.net.ssl.trustStoreType", "PKCS12");
                        System.setProperty("javax.net.ssl.trustStorePassword", "");
                        // PERFORMANCE: BC is pure-Java; enumerating/EC-testing every named group at
                        // SSLContext build time is minutes in the C++ interpreter. Limit to one curve
                        // + TLS1.2 so onCreate's OkHttpClient construction is fast.
                        System.setProperty("jdk.tls.namedGroups", "secp256r1");
                        System.setProperty("jdk.tls.client.protocols", "TLSv1.2");
                        System.setProperty("org.bouncycastle.jsse.client.assumeOriginalHostName", "true");
                        // BC's DRBG$Default.random (entropy SecureRandom) is null — no system
                        // entropy source is available on this port. Seed it (and the DRBG bootstrap)
                        // with a /dev/urandom-backed SecureRandom so BC TLS can generate nonces.
                        try {
                            final java.io.RandomAccessFile urnd =
                                    new java.io.RandomAccessFile("/dev/urandom", "r");
                            // PERFORMANCE: each RandomAccessFile.readFully is a slow InterpJni
                            // round-trip; BC's DRBG pulls entropy constantly. Buffer 16KB per read.
                            final byte[] entBuf = new byte[16384];
                            final int[] entPos = { entBuf.length };
                            final java.security.SecureRandom devRnd = new java.security.SecureRandom(
                                    new java.security.SecureRandomSpi() {
                                        private void fill(byte[] b) {
                                            synchronized (urnd) {
                                                for (int i = 0; i < b.length; ) {
                                                    if (entPos[0] >= entBuf.length) {
                                                        try { urnd.readFully(entBuf); } catch (Throwable t) {}
                                                        entPos[0] = 0;
                                                    }
                                                    int n = Math.min(b.length - i, entBuf.length - entPos[0]);
                                                    System.arraycopy(entBuf, entPos[0], b, i, n);
                                                    entPos[0] += n; i += n;
                                                }
                                            }
                                        }
                                        protected void engineSetSeed(byte[] s) {}
                                        protected void engineNextBytes(byte[] b) { fill(b); }
                                        protected byte[] engineGenerateSeed(int n) {
                                            byte[] b = new byte[n]; fill(b); return b;
                                        }
                                    }, null) {};
                            int drbgSeeded = 0;
                            String[] drbgClasses = {
                                "org.bouncycastle.jcajce.provider.drbg.DRBG$Default",
                                "org.bouncycastle.jcajce.provider.drbg.DRBG$NonceAndIV",
                            };
                            for (String dc : drbgClasses) {
                                try {
                                    Class<?> dcls = bcLoader.loadClass(dc);
                                    java.lang.reflect.Field rf = dcls.getDeclaredField("random");
                                    rf.setAccessible(true);
                                    rf.set(null, devRnd);
                                    drbgSeeded++;
                                } catch (Throwable ie) { /* keep going */ }
                            }
                            ulog.append("drbgFix=").append(drbgSeeded).append(' ');
                        } catch (Throwable dt) {
                            ulog.append("drbgFix=").append(dt.getClass().getSimpleName()).append(' ');
                        }
                        // Re-dexing bcprov stripped its jar signature → javax.crypto.JceSecurity
                        // "cannot authenticate the provider BC". Mark both BC providers verified.
                        try {
                            Class<?> jceSec = Class.forName("javax.crypto.JceSecurity");
                            java.lang.reflect.Field vrF = jceSec.getDeclaredField("verificationResults");
                            vrF.setAccessible(true);
                            Object vrObj = vrF.get(null);
                            java.lang.reflect.Field pvF = jceSec.getDeclaredField("PROVIDER_VERIFIED");
                            pvF.setAccessible(true);
                            Object PV = pvF.get(null);
                            if (vrObj instanceof java.util.Map) {
                                @SuppressWarnings("unchecked")
                                java.util.Map<Object, Object> vr = (java.util.Map<Object, Object>) vrObj;
                                vr.put(bcProv, PV);
                                vr.put(bcJsse, PV);
                                ulog.append("jceAuth=OK ");
                            } else {
                                ulog.append("jceAuth=notmap ");
                            }
                        } catch (Throwable jt) {
                            ulog.append("jceAuth=").append(jt.getClass().getSimpleName())
                                .append(':').append(jt.getMessage()).append(' ');
                        }
                        ulog.append("bcReg=OK(name=").append(bcJsse.getName()).append(",pos=").append(insPos)
                            .append(",hasTLS=").append(bcJsse.getService("SSLContext", "TLS") != null)
                            .append(",p0=").append(java.security.Security.getProviders()[0].getName()).append(") ");
                        // Force BCJSSE to isolate priority vs SPI-construction failures.
                        try {
                            javax.net.ssl.SSLContext tcf = javax.net.ssl.SSLContext.getInstance("TLS", bcJsse.getName());
                            tcf.init(null, null, null);
                            ulog.append("tlsForce=OK ");
                        } catch (Throwable ft) {
                            ulog.append("tlsForce=").append(ft.getClass().getSimpleName()).append(':').append(ft.getMessage()).append(' ');
                        }
                        javax.net.ssl.SSLContext tc2 = javax.net.ssl.SSLContext.getInstance("TLS");
                        ulog.append("tls2=").append(tc2.getProvider().getName()).append(' ');
                        try {
                            javax.net.ssl.TrustManagerFactory tmf = javax.net.ssl.TrustManagerFactory
                                    .getInstance(javax.net.ssl.TrustManagerFactory.getDefaultAlgorithm());
                            tmf.init((java.security.KeyStore) null);
                            ulog.append("tmf=OK(").append(tmf.getProvider().getName()).append(") ");
                        } catch (Throwable mt) {
                            ulog.append("tmf=").append(mt.getClass().getSimpleName()).append(':').append(mt.getMessage()).append(' ');
                        }
                    } catch (Throwable bt) {
                        Throwable rc = (bt instanceof java.lang.reflect.InvocationTargetException
                                && bt.getCause() != null) ? bt.getCause() : bt;
                        ulog.append("bcReg=FAIL:").append(rc.getClass().getSimpleName())
                            .append(':').append(rc.getMessage()).append(' ');
                    }
                    // Same cascade: FileSystems$DefaultFileSystemHolder.defaultFileSystem is null
                    // (its <clinit> was tolerated-failed), so ZipFile$Source → File.toPath NPEs.
                    // Rebuild it: DefaultFileSystemProvider.create().getFileSystem("file:///").
                    try {
                        Class<?> holder = Class.forName("java.nio.file.FileSystems$DefaultFileSystemHolder");
                        java.lang.reflect.Field dfs = holder.getDeclaredField("defaultFileSystem");
                        dfs.setAccessible(true);
                        if (dfs.get(null) == null) {
                            Object provider = Class.forName("sun.nio.fs.DefaultFileSystemProvider")
                                    .getMethod("create").invoke(null);
                            // Construct LinuxFileSystem(provider, "/") directly with a fixed CWD —
                            // the normal getFileSystem() path calls UnixNativeDispatcher.getcwd()
                            // (native not registered here); the constructor takes the CWD as a param.
                            java.lang.reflect.Constructor<?> fsC = Class.forName("sun.nio.fs.LinuxFileSystem")
                                    .getDeclaredConstructor(Class.forName("sun.nio.fs.UnixFileSystemProvider"), String.class);
                            fsC.setAccessible(true);
                            Object fs = fsC.newInstance(provider, "/");
                            dfs.set(null, fs);
                        }
                        ulog.append("fsFix=").append(dfs.get(null) == null ? "null" : "OK").append(' ');
                    } catch (Throwable fx) {
                        Throwable fc = (fx instanceof java.lang.reflect.InvocationTargetException
                                && fx.getCause() != null) ? fx.getCause() : fx;
                        StringBuilder fs2 = new StringBuilder("fsFix=FAIL:").append(fc.getClass().getSimpleName())
                            .append(':').append(fc.getMessage());
                        StackTraceElement[] fst = fc.getStackTrace();
                        for (int i = 0; i < Math.min(6, fst.length); i++)
                            fs2.append(" @").append(fst[i].getClassName()).append('.').append(fst[i].getMethodName())
                               .append(':').append(fst[i].getLineNumber());
                        ulog.append(fs2).append(' ');
                    }
                    // VMClassLoader.<clinit> is tolerated-failed at early boot (NPE:charset while
                    // building ClassPathURLStreamHandlers before charset infra is ready), leaving the
                    // static-final bootClassPathUrlHandlers null → every getResourceAsStream NPEs.
                    // Rebuild it now that the runtime is warm.
                    try {
                        Class<?> vmcl = Class.forName("java.lang.VMClassLoader");
                        java.lang.reflect.Field bh = vmcl.getDeclaredField("bootClassPathUrlHandlers");
                        bh.setAccessible(true);
                        // Always rebuild: at boot the handlers were built PARTIAL (before charset/
                        // lseek/readBytes natives worked — many jars "Unable to open"), leaving a
                        // non-empty but incomplete array (missing icu-data.jar etc.). Now that all
                        // the file-I/O natives work, rebuild fully so getResource finds every entry.
                        if (true) {
                            // libcore's createBootClassPathUrlHandlers only catches IOException; one
                            // boot entry throws NPE:charset (in ClassPathURLStreamHandler zip open),
                            // which aborts the whole array. Rebuild it with a per-entry Throwable
                            // guard so the good entries still populate the handler array.
                            java.lang.reflect.Method gbe = vmcl.getDeclaredMethod("getBootClassPathEntries");
                            gbe.setAccessible(true);
                            String[] entries0 = (String[]) gbe.invoke(null);
                            // icu-data.jar is resource-only (no classes.dex) → not a loaded boot
                            // dex → excluded from getBootClassPathEntries → no handler → its ICU
                            // resources are unreachable via the boot classloader. Add it explicitly.
                            java.util.ArrayList<String> el = new java.util.ArrayList<String>(
                                    java.util.Arrays.asList(entries0));
                            el.add(rootPath() + "/apks/icu-data.jar");
                            String[] entries = el.toArray(new String[0]);
                            Class<?> hCls = Class.forName("libcore.io.ClassPathURLStreamHandler");
                            java.lang.reflect.Constructor<?> hCtor = hCls.getConstructor(String.class);
                            java.util.ArrayList<Object> list = new java.util.ArrayList<Object>();
                            Throwable firstErr = null;
                            for (String e : entries) {
                                try { list.add(hCtor.newInstance(e)); }
                                catch (Throwable perEntry) {
                                    if (firstErr == null) firstErr =
                                        (perEntry instanceof java.lang.reflect.InvocationTargetException
                                            && perEntry.getCause() != null) ? perEntry.getCause() : perEntry;
                                }
                            }
                            if (firstErr != null) {
                                try {
                                    java.lang.reflect.Field u8 = Class.forName("java.nio.charset.StandardCharsets").getField("UTF_8");
                                    ulog.append("UTF8null=").append(u8.get(null) == null).append(' ');
                                } catch (Throwable ig) {}
                                StringBuilder es = new StringBuilder("ZERR[").append(firstErr.getClass().getSimpleName())
                                    .append(':').append(firstErr.getMessage());
                                StackTraceElement[] st = firstErr.getStackTrace();
                                for (int i = 0; i < Math.min(6, st.length); i++)
                                    es.append(" @").append(st[i].getClassName()).append('.').append(st[i].getMethodName())
                                      .append(':').append(st[i].getLineNumber());
                                ulog.append(es).append("] ");
                            }
                            Object arr = java.lang.reflect.Array.newInstance(hCls, list.size());
                            for (int i = 0; i < list.size(); i++) java.lang.reflect.Array.set(arr, i, list.get(i));
                            bh.set(null, arr);
                            ulog.append("vmclFix=OK(").append(list.size()).append('/').append(entries.length).append(") ");
                            if (firstErr != null)
                                ulog.append("bcpErr=").append(firstErr.getClass().getSimpleName())
                                    .append(':').append(firstErr.getMessage()).append(' ');
                            // Direct test: is the ICU resource now findable via the boot classloader?
                            // Try each classloader path to find icu-data.jar's resource.
                            java.io.InputStream icuRes = String.class.getResourceAsStream(
                                    "/android/icu/impl/data/icudt75b/en_US.res");
                            ulog.append("icuRes=").append(icuRes != null ? "FOUND" : "null").append(' ');
                            if (icuRes != null) icuRes.close();
                            try {
                                Object url = vmcl.getDeclaredMethod("getResource", String.class)
                                        .invoke(null, "android/icu/impl/data/icudt75b/en_US.res");
                                ulog.append("bootRes=").append(url != null ? "FOUND" : "null").append(' ');
                            } catch (Throwable br) { ulog.append("bootRes=ERR:").append(br.getClass().getSimpleName()).append(' '); }
                            try {
                                ClassLoader icl = Class.forName("android.icu.impl.ICUData").getClassLoader();
                                ulog.append("icuCL=").append(icl == null ? "boot" : icl.getClass().getSimpleName());
                                java.io.InputStream r2 = (icl == null ? String.class.getClassLoader() : icl) == null
                                        ? null : (icl == null ? null : icl.getResourceAsStream("android/icu/impl/data/icudt75b/en_US.res"));
                                ulog.append("/icuCLRes=").append(r2 != null ? "FOUND" : "null").append(' ');
                                if (r2 != null) r2.close();
                            } catch (Throwable ic) { ulog.append("icuCL=ERR:").append(ic.getClass().getSimpleName()).append(' '); }
                            // Verify the raw read path delivers correct DATA (not just counts):
                            // read icu-data.jar's first 4 bytes; a ZIP starts with PK\x03\x04.
                            try {
                                java.io.RandomAccessFile raf = new java.io.RandomAccessFile(
                                        rootPath() + "/apks/icu-data.jar", "r");
                                byte[] sig = new byte[4];
                                raf.seek(0);
                                raf.readFully(sig);
                                raf.close();
                                ulog.append("zipSig=").append(String.format("%02x%02x%02x%02x",
                                        sig[0] & 0xff, sig[1] & 0xff, sig[2] & 0xff, sig[3] & 0xff)).append(' ');
                            } catch (Throwable st) {
                                ulog.append("zipSig=FAIL:").append(st.getClass().getSimpleName()).append(' ');
                            }
                            // Direct isolation test: build ONE handler for icu-data.jar and log the exact error.
                            try {
                                Object h = hCtor.newInstance(rootPath() + "/apks/icu-data.jar");
                                ulog.append("icuJar=OK ");
                                // Does THIS handler find the entry? (the exact boot-CL lookup)
                                try {
                                    Object eurl = hCls.getMethod("getEntryUrlOrNull", String.class)
                                            .invoke(h, "android/icu/impl/data/icudt75b/en_US.res");
                                    ulog.append("icuEntry=").append(eurl != null ? "FOUND" : "null").append(' ');
                                } catch (Throwable eg) {
                                    ulog.append("icuEntry=ERR:").append(eg.getClass().getSimpleName()).append(' ');
                                }
                            } catch (Throwable ij) {
                                Throwable ijc = (ij instanceof java.lang.reflect.InvocationTargetException
                                        && ij.getCause() != null) ? ij.getCause() : ij;
                                ulog.append("icuJar=").append(ijc.getClass().getSimpleName())
                                    .append(':').append(ijc.getMessage()).append(' ');
                            }
                        } else { ulog.append("vmclFix=already "); }
                    } catch (Throwable vx) {
                        Throwable vc = (vx instanceof java.lang.reflect.InvocationTargetException
                                && vx.getCause() != null) ? vx.getCause() : vx;
                        ulog.append("vmclFix=FAIL:").append(vc.getClass().getSimpleName())
                            .append(':').append(vc.getMessage()).append(' ');
                    }
                    writeText(probeLogPath("uptodown-probe.txt"), ulog.toString());
                    writeText(probeLogPath("ckpt1.txt"), "ckpt1:post-icu");
                    // Prepare the main Looper BEFORE Firebase init: FirebaseMessaging pulls in GMS
                    // measurement, which does new Handler(Looper.getMainLooper()) — null main looper
                    // there => NPE. (A real app's ActivityThread prepares it before any provider.)
                    try { if (android.os.Looper.myLooper() == null) android.os.Looper.prepareMainLooper(); }
                    catch (Throwable ignore) {}
                    // java.lang.reflect.Proxy.proxyClassCache is null in this runtime (its <clinit>
                    // tolerated-failed), so ALL dynamic proxies throw NPE — breaking Settings$Global,
                    // Retrofit, and our own no-op binder stubs. Rebuild the WeakCache and install it.
                    try {
                        Class<?> proxyCls = Class.forName("java.lang.reflect.Proxy");
                        java.lang.reflect.Field pccF = proxyCls.getDeclaredField("proxyClassCache");
                        pccF.setAccessible(true);
                        if (pccF.get(null) == null) {
                            Class<?> wcCls = Class.forName("java.lang.reflect.WeakCache");
                            Class<?> kfCls = Class.forName("java.lang.reflect.Proxy$KeyFactory");
                            Class<?> pfCls = Class.forName("java.lang.reflect.Proxy$ProxyClassFactory");
                            java.lang.reflect.Constructor<?> kfC = kfCls.getDeclaredConstructor();
                            kfC.setAccessible(true);
                            java.lang.reflect.Constructor<?> pfC = pfCls.getDeclaredConstructor();
                            pfC.setAccessible(true);
                            java.lang.reflect.Constructor<?> wcC = wcCls.getDeclaredConstructor(
                                    java.util.function.BiFunction.class, java.util.function.BiFunction.class);
                            wcC.setAccessible(true);
                            Object wc = wcC.newInstance(kfC.newInstance(), pfC.newInstance());
                            wlSetStaticFinal(pccF, wc);
                            // ORDER_BY_SIGNATURE_AND_SUBTYPE (Comparator) is also null → Collections.sort
                            // degrades to natural order → Method-not-Comparable CCE. Any total order works.
                            java.lang.reflect.Field ordF = proxyCls.getDeclaredField("ORDER_BY_SIGNATURE_AND_SUBTYPE");
                            ordF.setAccessible(true);
                            if (ordF.get(null) == null) {
                                java.util.Comparator<Object> cmp = new java.util.Comparator<Object>() {
                                    public int compare(Object a, Object b) { return a.toString().compareTo(b.toString()); }
                                };
                                wlSetStaticFinal(ordF, cmp);
                            }
                            // constructorParams = { InvocationHandler.class } for the proxy ctor lookup.
                            java.lang.reflect.Field cpF = proxyCls.getDeclaredField("constructorParams");
                            cpF.setAccessible(true);
                            if (cpF.get(null) == null) {
                                wlSetStaticFinal(cpF, new Class[]{ Class.forName("java.lang.reflect.InvocationHandler") });
                            }
                            // Method.ORDER_BY_SIGNATURE (used by Proxy.deduplicateAndGetExceptions) is
                            // also null — its lambda-based static init failed the same way.
                            try {
                                java.lang.reflect.Field mos = java.lang.reflect.Method.class.getDeclaredField("ORDER_BY_SIGNATURE");
                                mos.setAccessible(true);
                                if (mos.get(null) == null) {
                                    java.util.Comparator<Object> mc = new java.util.Comparator<Object>() {
                                        public int compare(Object a, Object b) { return a.toString().compareTo(b.toString()); }
                                    };
                                    wlSetStaticFinal(mos, mc);
                                }
                            } catch (Throwable mox) {}
                            ulog.append("proxyFix=").append(pccF.get(null) != null ? "OK" : "still-null").append(' ');
                        } else { ulog.append("proxyFix=already "); }
                    } catch (Throwable px) {
                        ulog.append("proxyFix=").append(px.getClass().getSimpleName())
                            .append(':').append(px.getMessage()).append(' ');
                    }
                    { Object cmTest = wlService("android.net.ConnectivityManager");
                      ulog.append("cmTest=").append(cmTest == null ? "NULL" : cmTest.getClass().getSimpleName())
                          .append("/err=").append(WL_SVC_ERR).append(' '); }
                    writeText(probeLogPath("ckpt1.txt"), "ckpt1:post-proxy");
                    // Resources.getSystem() (used by SQLiteGlobal.getWALConnectionPoolSize etc.)
                    // reads com.android.internal framework resources that aren't loaded here →
                    // NotFoundException. Swap the global system Resources for a tolerant WlResources.
                    try {
                        Class<?> resCls = Class.forName("android.content.res.Resources");
                        java.lang.reflect.Field msF = resCls.getDeclaredField("mSystem");
                        msF.setAccessible(true);
                        android.util.DisplayMetrics dm = new android.util.DisplayMetrics();
                        dm.setToDefaults();
                        Object sysRes = new WlResources(uamShared, dm, new android.content.res.Configuration());
                        wlSetStaticFinal(msF, sysRes);
                        ulog.append("sysRes=seeded ");
                    } catch (Throwable sr) {
                        ulog.append("sysRes=ERR:").append(sr.getClass().getSimpleName())
                            .append(':').append(sr.getMessage()).append(' ');
                    }
                    writeText(probeLogPath("ckpt1.txt"), "ckpt1:post-sysres");
                    // SQLite JNI (android.database.sqlite natives over libsqlite.z.so) — WorkManager's
                    // Room WorkDatabase needs SQLiteConnection.nativeOpen etc. Its JNI_OnLoad registers.
                    writeText(probeLogPath("ckpt1.txt"), "ckpt1:pre-sqlite");
                    try {
                        System.load(rootPath() + "/android/lib64/libsqlite_jni.so");
                        ulog.append("sqliteJni=loaded ");
                    } catch (Throwable sq) {
                        ulog.append("sqliteJni=").append(sq.getClass().getSimpleName())
                            .append(':').append(sq.getMessage()).append(' ');
                    }
                    // Firebase auto-inits via FirebaseInitProvider (a ContentProvider) before
                    // onCreate in a real app; the probe skips providers, so init it explicitly
                    // (reads FirebaseOptions from the APK's string resources). L10.A08 stub.
                    try {
                        android.content.res.Resources res =
                                ((android.content.Context) uappInstance).getResources();
                        int gid = res.getIdentifier("google_app_id", "string", "com.uptodown");
                        ulog.append("gappid=").append(gid);
                        if (gid != 0) ulog.append('=').append(res.getString(gid));
                        ulog.append(' ');
                    } catch (Throwable gt) {
                        ulog.append("gappid=ERR:").append(gt.getClass().getSimpleName()).append(' ');
                    }
                    try {
                        Class<?> fip = Class.forName(
                                "com.google.firebase.provider.FirebaseInitProvider", true, uloader);
                        Object cp = fip.getDeclaredConstructor().newInstance();
                        android.content.pm.ProviderInfo pi = new android.content.pm.ProviderInfo();
                        pi.authority = "com.uptodown.firebaseinitprovider";  // non-default (its check)
                        pi.name = "com.google.firebase.provider.FirebaseInitProvider";
                        fip.getMethod("attachInfo", android.content.Context.class,
                                android.content.pm.ProviderInfo.class).invoke(cp, uappInstance, pi);
                        Object r = fip.getMethod("onCreate").invoke(cp);
                        ulog.append("fbInit=provider(").append(r).append(") gsi=")
                            .append(WlPmHelper.gsiCalls).append('/').append(WlPmHelper.gsiLast).append(' ');
                    } catch (Throwable ft) {
                        Throwable fc = (ft instanceof java.lang.reflect.InvocationTargetException
                                && ft.getCause() != null) ? ft.getCause() : ft;
                        ulog.append("fbInit=").append(fc.getClass().getSimpleName())
                            .append(':').append(fc.getMessage()).append(' ');
                    }
                    writeText(probeLogPath("ckpt1.txt"), "ckpt1:post-fbinit");
                    // Seed ActivityManager's IActivityManager singleton with a no-op proxy so
                    // getRunningAppProcesses()/etc. return defaults instead of NPEing on the
                    // absent ServiceManager binder (no Android system server on a bare board).
                    try {
                        Class<?> amCls = Class.forName("android.app.ActivityManager");
                        java.lang.reflect.Field sf = amCls.getDeclaredField("IActivityManagerSingleton");
                        sf.setAccessible(true);
                        Object singleton = sf.get(null);
                        Class<?> singCls = Class.forName("android.util.Singleton");
                        java.lang.reflect.Field inf = singCls.getDeclaredField("mInstance");
                        inf.setAccessible(true);
                        // Prefer the concrete smali stub (robust); fall back to a dynamic proxy.
                        Object amImpl;
                        try {
                            Class<?> amsvc = Class.forName("WlActivityManagerService", true,
                                    Dayu600ApkStageProbe.class.getClassLoader());
                            amImpl = amsvc.getDeclaredConstructor().newInstance();
                        } catch (Throwable ne) {
                            amImpl = noopProxy(Class.forName("android.app.IActivityManager"));
                        }
                        inf.set(singleton, amImpl);
                        ulog.append("amSeed=").append(amImpl.getClass().getSimpleName()).append(' ');
                    } catch (Throwable at) {
                        StackTraceElement[] ast = at.getStackTrace();
                        ulog.append("amSeed=").append(at.getClass().getSimpleName()).append(':')
                            .append(at.getMessage());
                        if (ast.length > 0) ulog.append("@").append(ast[0].getClassName())
                            .append('.').append(ast[0].getMethodName()).append(':').append(ast[0].getLineNumber());
                        ulog.append(' ');
                    }
                    // WorkManager auto-inits via androidx.startup WorkManagerInitializer before
                    // onCreate; the app doesn't implement Configuration.Provider, so init it
                    // explicitly with a default Configuration. L10.A08 (startup provider) stub.
                    try {
                        Class<?> cfgB = Class.forName("androidx.work.Configuration$Builder", true, uloader);
                        Object b = cfgB.getDeclaredConstructor().newInstance();
                        Class<?> cfgC = Class.forName("androidx.work.Configuration", true, uloader);
                        Object cfg = cfgB.getMethod("build").invoke(b);
                        Class<?> wm = Class.forName("androidx.work.WorkManager", true, uloader);
                        wm.getMethod("initialize", android.content.Context.class, cfgC).invoke(null, uappInstance, cfg);
                        ulog.append("wmInit=OK ");
                    } catch (Throwable wt) {
                        Throwable wc = (wt instanceof java.lang.reflect.InvocationTargetException
                                && wt.getCause() != null) ? wt.getCause() : wt;
                        ulog.append("wmInit=").append(wc.getClass().getSimpleName())
                            .append(':').append(wc.getMessage());
                        StackTraceElement[] wst = wc.getStackTrace();
                        for (int i2 = 0; i2 < Math.min(14, wst.length); i2++)
                            ulog.append(" @").append(wst[i2].getClassName()).append('.')
                                .append(wst[i2].getMethodName()).append(':').append(wst[i2].getLineNumber());
                        ulog.append(' ');
                    }
                    // Fallback: if full initialize failed (needs the system server), seed a stub
                    // WorkManagerImpl so getInstance() returns and onCreate proceeds — reveals what
                    // lies past the WorkManager wall (subsequent enqueue calls will no-op/fail).
                    try {
                        Class<?> wmi = Class.forName("androidx.work.impl.WorkManagerImpl", true, uloader);
                        java.lang.reflect.Method gi = wmi.getDeclaredMethod("getInstance");
                        gi.setAccessible(true);
                        if (gi.invoke(null) == null) {
                            Object stub = wlAlloc(wmi);
                            java.lang.reflect.Field sdi = wmi.getDeclaredField("sDefaultInstance");
                            sdi.setAccessible(true);
                            sdi.set(null, stub);
                            ulog.append("wmStub=").append(stub != null ? "seeded" : "allocNull").append(' ');
                        } else { ulog.append("wmStub=alreadyInit "); }
                    } catch (Throwable ws) {
                        ulog.append("wmStub=ERR:").append(ws.getClass().getSimpleName()).append(' ');
                    }
                    // Watchdog: onCreate runs on THIS (main) thread for correct behavior, but a
                    // daemon dumps the main-thread stack + force-halts after 45s if onCreate hangs
                    // or loops (e.g. an eager network call over the dummy TLS socket) — so it never
                    // pegs the device forever, and I can see exactly WHERE it's stuck.
                    final Thread ocMainThread = Thread.currentThread();
                    final boolean[] ocDone = new boolean[1];
                    final StringBuilder ocLog = ulog;
                    Thread ocWatchdog = new Thread(new Runnable() {
                        public void run() {
                            try { Thread.sleep(45000); } catch (Throwable t) {}
                            if (!ocDone[0]) {
                                StringBuilder sb = new StringBuilder("appOnCreate=HANG@45s stack=");
                                StackTraceElement[] st = ocMainThread.getStackTrace();
                                for (int i2 = 0; i2 < Math.min(18, st.length); i2++)
                                    sb.append('#').append(st[i2].getClassName()).append('.')
                                      .append(st[i2].getMethodName()).append(':')
                                      .append(st[i2].getLineNumber()).append(' ');
                                try { writeText(probeLogPath("uptodown-probe.txt"),
                                        ocLog.toString() + sb.toString()); } catch (Throwable w) {}
                                Runtime.getRuntime().halt(7);
                            }
                        }
                    }, "onCreate-watchdog");
                    ocWatchdog.setDaemon(true);
                    ocWatchdog.start();
                    try { uAppCls.getMethod("onCreate").invoke(uappInstance); ocDone[0] = true; ulog.append("appOnCreate=OK "); }
                    catch (Throwable ot) {
                        ocDone[0] = true;
                        Throwable oc = (ot instanceof java.lang.reflect.InvocationTargetException
                                && ot.getCause() != null) ? ot.getCause() : ot;
                        // Unwrap wrapper exceptions (ExecutionException/InvocationTargetException)
                        // to the ROOT cause, whose stack shows where the failure actually happened.
                        while ((oc instanceof java.util.concurrent.ExecutionException
                                || oc instanceof java.lang.reflect.InvocationTargetException
                                || oc instanceof RuntimeException && oc.getCause() != null
                                   && oc.getStackTrace().length == 0)
                                && oc.getCause() != null && oc.getCause() != oc) {
                            oc = oc.getCause();
                        }
                        ulog.append("appOnCreate=FAIL:").append(oc.getClass().getSimpleName()).append(':').append(oc.getMessage());
                        StackTraceElement[] ost = oc.getStackTrace();
                        for (int i2 = 0; i2 < Math.min(12, ost.length); i2++)
                            ulog.append(" @").append(ost[i2].getClassName()).append('.')
                                .append(ost[i2].getMethodName()).append(':').append(ost[i2].getLineNumber());
                        ulog.append(" gsiEnd=").append(WlPmHelper.gsiCalls).append('/').append(WlPmHelper.gsiLast)
                            .append(" gpm=").append(WL_GPM_CALLS).append(' ');
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
                // The main thread needs a prepared Looper before Activity/Handler construction
                // (ActivityThread does this in a real app; the probe must do it explicitly).
                try {
                    if (android.os.Looper.myLooper() == null) android.os.Looper.prepareMainLooper();
                    ulog.append("looper=OK mainThr=").append(Thread.currentThread().getName())
                        .append("/mainLooper=").append(android.os.Looper.getMainLooper() == null ? "NULL" : "ok")
                        .append("/LooperCL=").append(System.identityHashCode(android.os.Looper.class)).append(' ');
                } catch (Throwable lt) {
                    ulog.append("looper=").append(lt.getClass().getSimpleName()).append(' ');
                }
                Object uact = null;
                try { uact = uMainCls.getDeclaredConstructor().newInstance();
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
                // ── W1: inject mBase Context via boot-classloader + Unsafe ─────────────────
                // On OHOS, getDeclaredField("mBase") on ContextThemeWrapper fails because OHOS
                // renamed/removed the field. Solution: use the BOOT classloader (same as framework.jar)
                // to get the field, then Unsafe to set it (bypasses reflection type checks).
                android.content.Context actBaseCtx = null;
                java.lang.reflect.Field foundMBase = null;
                java.lang.StringBuilder fldDump = new java.lang.StringBuilder();
                java.lang.StringBuilder parentDump = new java.lang.StringBuilder();

                // Use null classloader for Class.forName to access boot/framework classes
                ClassLoader bootCl = null;

                // Dump Activity's own fields
                try {
                    java.lang.reflect.Field[] ownF = uact.getClass().getDeclaredFields();
                    for (java.lang.reflect.Field f : ownF) {
                        String fn = f.getName();
                        if (fn.equals("this$0")) continue;
                        String ftn = null;
                        try { ftn = f.getType().getName(); } catch (Throwable t) { ftn = "?"; }
                        String fv = "N/A";
                        try { Object ov = f.get(uact); fv = ov != null ? ov.getClass().getSimpleName() : "null"; } catch (Throwable tv) { fv = "x"; }
                        if (fldDump.length() < 200) fldDump.append(fn).append("[").append(ftn).append("]=").append(fv).append(",");
                    }
                } catch (Throwable e) {
                    fldDump.append("ownErr:").append(e.getClass().getSimpleName());
                }

                // Dump parent chain (up to 5 levels)
                Class<?> sc = uact.getClass().getSuperclass();
                int scnt = 0;
                while (sc != null && sc != java.lang.Object.class && scnt < 5) {
                    try {
                        java.lang.reflect.Field[] sf = sc.getDeclaredFields();
                        for (java.lang.reflect.Field f : sf) {
                            String fn = f.getName();
                            String ftn = null;
                            try { ftn = f.getType().getName(); } catch (Throwable t) { ftn = "?"; }
                            String fv = "N/A";
                            try { Object ov = f.get(uact); fv = ov != null ? ov.getClass().getSimpleName() : "null"; } catch (Throwable tv) { fv = "x"; }
                            if (parentDump.length() < 200) parentDump.append("/").append(sc.getSimpleName()).append(":").append(fn).append("[").append(ftn).append("]=").append(fv).append(",");
                        }
                    } catch (Throwable e) {
                        if (parentDump.length() < 200) parentDump.append("/").append(sc.getSimpleName()).append("=ERR");
                    }
                    sc = sc.getSuperclass();
                    scnt++;
                }

                // CORE FIX: Find mBase using boot classloader (same classloader as framework.jar).
                // The boot classloader can see ContextThemeWrapper.mBase even if app classloader can't.
                // Then use Unsafe to set it (bypasses Java reflection type checks).
                java.lang.reflect.Field fwMBaseField = null;
                try {
                    Class<?> ctwCls = Class.forName("android.content.ContextThemeWrapper", true, bootCl);
                    fwMBaseField = ctwCls.getDeclaredField("mBase");
                    fwMBaseField.setAccessible(true);
                    // Get JNI offset via Unsafe (the only reliable way on OHOS)
                    Class<?> unsafeCls = Class.forName("jdk.internal.misc.Unsafe");
                    java.lang.reflect.Field theUnsafeF = unsafeCls.getDeclaredField("theUnsafe");
                    theUnsafeF.setAccessible(true);
                    Object unsafe = theUnsafeF.get(null);
                    java.lang.reflect.Method offsetM = unsafeCls.getMethod("objectFieldOffset", java.lang.reflect.Field.class);
                    long mBaseOffset = (long) offsetM.invoke(unsafe, fwMBaseField);
                    ulog.append("mBaseOff=").append(mBaseOffset).append(' ');
                } catch (Throwable e) {
                    ulog.append("mBaseOff=").append(e.getClass().getSimpleName()).append(' ');
                }

                // Also try ContextWrapper.mBase (Activity extends ContextWrapper → ContextThemeWrapper → Context)
                if (fwMBaseField == null) {
                    try {
                        Class<?> cwCls = Class.forName("android.content.ContextWrapper", true, bootCl);
                        fwMBaseField = cwCls.getDeclaredField("mBase");
                        fwMBaseField.setAccessible(true);
                    } catch (Throwable e) {
                        ulog.append("cwMBase=").append(e.getClass().getSimpleName()).append(' ');
                    }
                }

                // Also check if Activity itself has mBase (via boot cl)
                try {
                    Class<?> actCls = Class.forName("android.app.Activity", true, bootCl);
                    java.lang.reflect.Field[] afs = actCls.getDeclaredFields();
                    for (java.lang.reflect.Field af : afs) {
                        if (af.getName().equals("mBase")) {
                            af.setAccessible(true);
                            // Verify it's the right type
                            String aftn = af.getType().getName();
                            if (aftn.endsWith("Context")) {
                                fwMBaseField = af;
                                break;
                            }
                        }
                    }
                } catch (Throwable e) {
                    ulog.append("actMBse=").append(e.getClass().getSimpleName()).append(' ');
                }

                // Write detailed field dump
                try {
                    java.lang.StringBuilder detail = new java.lang.StringBuilder();
                    detail.append("=== OWN FIELDS ===\n");
                    for (java.lang.reflect.Field f : uact.getClass().getDeclaredFields()) {
                        String fn = f.getName();
                        String ftn = null;
                        try { ftn = f.getType().getName(); } catch (Throwable t) { ftn = "ERR"; }
                        String fv = "N/A";
                        try { Object ov = f.get(uact); fv = ov != null ? ov.getClass().getName() : "null"; } catch (Throwable t) { fv = "ERR"; }
                        detail.append(fn).append(" [").append(ftn).append("] = ").append(fv).append("\n");
                    }
                    detail.append("=== PARENT CHAIN ===\n");
                    sc = uact.getClass().getSuperclass();
                    scnt = 0;
                    while (sc != null && sc != java.lang.Object.class && scnt < 8) {
                        detail.append("--- ").append(sc.getName()).append(" ---\n");
                        try {
                            for (java.lang.reflect.Field f : sc.getDeclaredFields()) {
                                String fn = f.getName();
                                String ftn = null;
                                try { ftn = f.getType().getName(); } catch (Throwable t) { ftn = "ERR"; }
                                String fv = "N/A";
                                try { Object ov = f.get(uact); fv = ov != null ? ov.getClass().getName() : "null"; } catch (Throwable t) { fv = "ERR"; }
                                detail.append(fn).append(" [").append(ftn).append("] = ").append(fv).append("\n");
                            }
                        } catch (Throwable t) {
                            detail.append("ERR: ").append(t.getClass().getSimpleName()).append("\n");
                        }
                        sc = sc.getSuperclass();
                        scnt++;
                    }
                    writeText("/data/local/tmp/westlake-dayu600-substrate/apks/probe-logs/fld-detail.txt", detail.toString());
                } catch (Throwable dw) {}

                // Log summary
                ulog.append("flds:")
                    .append(fwMBaseField != null ? fwMBaseField.getName() : "null").append('/')
                    .append("null/null ")
                    .append("fldDump=").append(fldDump).append(' ')
                    .append("parentDump=").append(parentDump);

                // Get system context
                try {
                    Class<?> atCls = Class.forName("android.app.ActivityThread");
                    Object atInst = atCls.getDeclaredMethod("systemMain").invoke(null);
                    try {
                        actBaseCtx = (android.content.Context) atCls.getDeclaredMethod("getSystemContext").invoke(atInst);
                    } catch (java.lang.reflect.InvocationTargetException ite) {
                        ulog.append("sysCtx=").append((ite.getCause() != null ? ite.getCause() : ite).getClass().getSimpleName()).append(' ');
                    }
                    if (actBaseCtx != null) ulog.append("sysCtx=OK ");
                } catch (Throwable sc2) {
                    ulog.append("sysCtx=").append(sc2.getClass().getSimpleName()).append(' ');
                }
                if (actBaseCtx == null) {
                    actBaseCtx = (android.content.Context) uappInstance;
                    ulog.append("sysCtx=uapp ");
                }

                int appCompatThemeId = 0x7f15000e;
                // Build WlProxyContext EARLY: we need it as mBase so LayoutInflater.from()
                // in AppCompatDelegateImpl goes through our getSystemService override.
                Object ctxProxyForBase = null;
                android.content.res.Resources themeResForProxy = null;
                Object themeNativeForProxy = null;
                try {
                    // Build minimal theme resources (needed for WlProxyContext constructor)
                    java.lang.reflect.Constructor<android.content.res.AssetManager> amCtor2 =
                            android.content.res.AssetManager.class.getDeclaredConstructor(boolean.class);
                    amCtor2.setAccessible(true);
                    android.content.res.AssetManager themeAm2 = amCtor2.newInstance(Boolean.TRUE);
                    android.content.res.AssetManager.class.getMethod("addAssetPath", String.class)
                            .invoke(themeAm2, "/data/local/tmp/westlake-dayu600-substrate/android/framework/framework-res.apk");
                    android.util.DisplayMetrics dm2 = actBaseCtx.getResources().getDisplayMetrics();
                    android.content.res.Configuration cfg2 = actBaseCtx.getResources().getConfiguration();
                    themeResForProxy = new android.content.res.Resources(themeAm2, dm2, cfg2);
                    themeNativeForProxy = themeResForProxy.newTheme();
                    Class<?> themeCls2 = Class.forName("android.content.res.Resources$Theme");
                    java.lang.reflect.Method applyStyleM2 = themeCls2.getMethod("applyStyle", int.class, boolean.class);
                    applyStyleM2.invoke(themeNativeForProxy, appCompatThemeId, Boolean.TRUE);

                    java.lang.reflect.Constructor<?> proxyCtor =
                            Class.forName("Dayu600ApkStageProbe$WlProxyContext")
                                    .getDeclaredConstructor(android.content.Context.class,
                                            android.content.Context.class,
                                            android.content.res.Resources.class, Object.class, Object.class);
                    proxyCtor.setAccessible(true);
                    ctxProxyForBase = proxyCtor.newInstance(actBaseCtx, actBaseCtx, themeResForProxy, themeNativeForProxy, uact);
                    ulog.append("ctxProxyEarly=OK ");
                } catch (Throwable cpe) {
                    ulog.append("ctxProxyEarly=").append(cpe.getClass().getSimpleName())
                        .append(':').append(cpe.getMessage()).append(' ');
                }

                // Set mBase to ctxProxyForBase (WlProxyContext with getSystemService override).
                // This is the KEY to fixing LayoutInflater: when AppCompatDelegateImpl
                // calls LayoutInflater.from(uact) → uact.getSystemService("layout_inflater")
                // → OHOS override → mBase.getSystemService("layout_inflater") → our override → cached LI.
                boolean mbaseSet = false;
                try {
                    // Try app classloader Field first (ContextWrapper.mBase via uact's hierarchy)
                    java.lang.reflect.Field ctxWrapperMBase = null;
                    Class<?> superCls = uact.getClass().getSuperclass();
                    while (superCls != null && superCls != java.lang.Object.class) {
                        try {
                            ctxWrapperMBase = superCls.getDeclaredField("mBase");
                            ctxWrapperMBase.setAccessible(true);
                            break;
                        } catch (NoSuchFieldException e) {
                            superCls = superCls.getSuperclass();
                        }
                    }
                    if (ctxWrapperMBase != null) {
                        // Try direct set first, then Unsafe
                        try {
                            ctxWrapperMBase.set(uact, ctxProxyForBase);
                            mbaseSet = true;
                            ulog.append("mbase=CW_set ");
                        } catch (Throwable t1) {
                            try {
                                Class<?> unsafeCls = Class.forName("jdk.internal.misc.Unsafe");
                                java.lang.reflect.Field theUnsafeF = unsafeCls.getDeclaredField("theUnsafe");
                                theUnsafeF.setAccessible(true);
                                Object unsafe = theUnsafeF.get(null);
                                long off = (long) unsafeCls.getMethod("objectFieldOffset", java.lang.reflect.Field.class)
                                    .invoke(unsafe, ctxWrapperMBase);
                                unsafeCls.getMethod("putReference", java.lang.Object.class, long.class, java.lang.Object.class)
                                    .invoke(unsafe, uact, off, ctxProxyForBase);
                                mbaseSet = true;
                                ulog.append("mbase=CW_unsafe ");
                            } catch (Throwable t2) {
                                ulog.append("mbase=CW_err:").append(t2.getClass().getSimpleName()).append(' ');
                            }
                        }
                    }
                    // Try boot-classloader fwMBaseField with Unsafe
                    if (!mbaseSet && fwMBaseField != null) {
                        try {
                            Class<?> unsafeCls = Class.forName("jdk.internal.misc.Unsafe");
                            java.lang.reflect.Field theUnsafeF = unsafeCls.getDeclaredField("theUnsafe");
                            theUnsafeF.setAccessible(true);
                            Object unsafe = theUnsafeF.get(null);
                            long off = (long) unsafeCls.getMethod("objectFieldOffset", java.lang.reflect.Field.class)
                                .invoke(unsafe, fwMBaseField);
                            unsafeCls.getMethod("putReference", java.lang.Object.class, long.class, java.lang.Object.class)
                                .invoke(unsafe, uact, off, ctxProxyForBase);
                            mbaseSet = true;
                            ulog.append("mbase=fwUnsafe ");
                        } catch (Throwable t2) {
                            ulog.append("mbase=fwErr:").append(t2.getClass().getSimpleName()).append(' ');
                        }
                    }
                    // Try Activity.attach() method
                    if (!mbaseSet) {
                        try {
                            java.lang.reflect.Method attachM = uact.getClass().getDeclaredMethod("attach",
                                android.content.Context.class);
                            attachM.setAccessible(true);
                            attachM.invoke(uact, ctxProxyForBase);
                            mbaseSet = true;
                            ulog.append("mbase=attach ");
                        } catch (Throwable ta) {
                            ulog.append("mbase=attach_err:").append(ta.getClass().getSimpleName()).append(' ');
                        }
                    }
                } catch (Throwable t) {
                    ulog.append("mbase=").append(t.getClass().getSimpleName()).append(' ');
                }
                // ── W2-W4: wire mApplication via boot-classloader ──────────────────────────
                // Find mApplication in Activity using boot classloader (same approach as mBase)
                java.lang.reflect.Field fwMAppField = null;
                try {
                    ClassLoader bootCl2 = null; // ActivityThread.class.getClassLoader() // stub-only on SDK
                    Class<?> actCls2 = Class.forName("android.app.Activity", true, bootCl2);
                    java.lang.reflect.Field[] afs = actCls2.getDeclaredFields();
                    for (java.lang.reflect.Field af : afs) {
                        if (af.getName().equals("mApplication")) {
                            af.setAccessible(true);
                            fwMAppField = af;
                            break;
                        }
                    }
                } catch (Throwable e) {
                    ulog.append("mAppFld=").append(e.getClass().getSimpleName()).append(' ');
                }
                if (fwMAppField != null && uappInstance != null) {
                    try {
                        fwMAppField.set(uact, uappInstance);
                        ulog.append("wlAllocUtd=OK ");
                    } catch (Throwable tw2) {
                        ulog.append("wlAllocUtd=").append(tw2.getClass().getSimpleName())
                            .append(':').append(tw2.getMessage()).append(' ');
                    }
                } else {
                    ulog.append("wlAllocUtd=NoApp ");
                }
                // ── W5: PhoneWindow ────────────────────────────────────────────────────
                // Guarantee a non-null context: use the app instance as base
                android.content.Context storedActCtx = (android.content.Context) uappInstance;
                try {
                    java.lang.reflect.Field mWindowF =
                            Class.forName("android.app.Activity").getDeclaredField("mWindow");
                    mWindowF.setAccessible(true);
                    Class<?> pwCls = Class.forName("com.android.internal.policy.PhoneWindow", true,
                            uact.getClass().getClassLoader());
                    Object pw = pwCls.getDeclaredConstructor(android.content.Context.class).newInstance(storedActCtx);
                    mWindowF.set(uact, pw);
                    ulog.append("mapp=").append(pw != null ? "set" : "null").append(' ');
                    try {
                        java.lang.reflect.Field mWmF = Class.forName("android.view.Window")
                                .getDeclaredField("mWindowManager");
                        mWmF.setAccessible(true);
                        java.lang.reflect.Field wsvcF = Class.forName("android.content.Context").getField("WINDOW_SERVICE");
                        String wsvc = (String) wsvcF.get(null);
                        Object wm = storedActCtx.getSystemService(wsvc);
                        mWmF.set(pw, wm);
                    } catch (Throwable wmErr) {}
                    ulog.append("pwcls=").append(pwCls.getSimpleName()).append(' ');
                } catch (Throwable tw5) {
                    ulog.append("pwcls=").append(tw5.getClass().getSimpleName()).append(' ');
                }
                writeText(probeLogPath("ckpt1.txt"), "ckpt1:pwcls-done");
                // ── W5b: Fix LayoutInflater via sInflaterMap (widened search) ─────────────────────
                try {
                    // Find sInflaterMap using boot CL with widened search (not just ConcurrentHashMap)
                    ClassLoader bootCL = null; // ActivityThread.class.getClassLoader() // stub-only on SDK
                    Class<?> liBootCls = Class.forName("android.view.LayoutInflater", true, bootCL);
                    java.lang.reflect.Field mapF = null;
                    String mapFname = null;
                    for (java.lang.reflect.Field f : liBootCls.getDeclaredFields()) {
                        String ftn = f.getType().getName();
                        if (ftn.contains("Map") || ftn.contains("HashMap") || ftn.contains("Cache")
                                || ftn.contains("Concurrent") || ftn.contains("Inflater")) {
                            f.setAccessible(true);
                            try {
                                Object testMap = f.get(null);
                                if (testMap != null) {
                                    String testType = testMap.getClass().getName();
                                    if (testType.contains("Map") || testType.contains("Cache")) {
                                        mapF = f;
                                        mapFname = f.getName();
                                        break;
                                    }
                                }
                            } catch (Throwable t) {}
                        }
                    }
                    if (mapF != null) {
                        ulog.append("liMap=").append(mapFname).append(" ");
                        Object inflaterMap = null;
                        try { inflaterMap = mapF.get(null); } catch (Throwable t) {}
                        if (inflaterMap != null) {
                            ulog.append("+mapOK ");
                            // Strategy 1: try LayoutInflater.from(uappInstance) — app instance has services
                            Object li = null;
                            try {
                                Class<?> liCls = Class.forName("android.view.LayoutInflater");
                                java.lang.reflect.Method fromM = liCls.getMethod("from", android.content.Context.class);
                                li = fromM.invoke(null, (android.content.Context) uappInstance);
                                if (li != null) ulog.append("+li_from_app ");
                            } catch (java.lang.reflect.InvocationTargetException ite) {
                                Throwable inner = ite.getCause() != null ? ite.getCause() : ite;
                                ulog.append("+li_from_err:").append(inner.getClass().getSimpleName()).append(" ");
                            } catch (Throwable t) {
                                ulog.append("+li_from_err:").append(t.getClass().getSimpleName()).append(" ");
                            }
                            // Strategy 2: no-arg constructor
                            if (li == null) {
                                try {
                                    Class<?> liCls = Class.forName("android.view.LayoutInflater");
                                    java.lang.reflect.Constructor<?>[] ctors = liCls.getDeclaredConstructors();
                                    ulog.append("+ctors=").append(ctors.length).append(" ");
                                    // Try 1-param constructor with app instance context
                                    for (java.lang.reflect.Constructor<?> c : ctors) {
                                        if (c.getParameterCount() == 1) {
                                            c.setAccessible(true);
                                            li = c.newInstance(uappInstance);
                                            ulog.append("+liNew1 ");
                                            break;
                                        }
                                    }
                                    // Try 2-param constructor
                                    if (li == null) {
                                        for (java.lang.reflect.Constructor<?> c : ctors) {
                                            if (c.getParameterCount() == 2) {
                                                c.setAccessible(true);
                                                li = c.newInstance(uappInstance, null);
                                                ulog.append("+liNew2 ");
                                                break;
                                            }
                                        }
                                    }
                                    if (li == null) ulog.append("+no0arg ");
                                } catch (java.lang.reflect.InvocationTargetException ite) {
                                    Throwable inner = ite.getCause() != null ? ite.getCause() : ite;
                                    ulog.append("+liNew_ite:").append(inner.getClass().getSimpleName()).append(" ");
                                } catch (Throwable t) {
                                    ulog.append("+liNew_err:").append(t.getClass().getSimpleName()).append(" ");
                                }
                            }
                            if (li != null) {
                                // Set mContext so inflate() uses 'uact' as the context
                                try {
                                    ClassLoader bootCL2 = null; // ActivityThread.class.getClassLoader() // stub-only on SDK
                                    Class<?> liBootCls2 = Class.forName("android.view.LayoutInflater", true, bootCL2);
                                    java.lang.reflect.Field mCtxF = liBootCls2.getDeclaredField("mContext");
                                    mCtxF.setAccessible(true);
                                    mCtxF.set(li, uact);
                                    ulog.append("+liCtx ");
                                } catch (Throwable t) {
                                    ulog.append("+liCtx_err:").append(t.getClass().getSimpleName()).append(" ");
                                }
                                // Inject into sConstructorMap with Activity as key
                                try {
                                    java.lang.reflect.Method putMethod = inflaterMap.getClass().getMethod("put",
                                        java.lang.Object.class, java.lang.Object.class);
                                    putMethod.invoke(inflaterMap, uact, li);
                                    ulog.append("+liPut ");
                                } catch (Throwable t) {
                                    ulog.append("+liPut_err:").append(t.getClass().getSimpleName()).append(" ");
                                }
                            }
                        } else {
                            ulog.append("+liMapNULL ");
                        }
                    } else {
                        ulog.append("+liMapNONE ");
                        // Debug: list ALL static fields in LayoutInflater
                        try {
                            java.lang.StringBuilder dbg = new java.lang.StringBuilder();
                            for (java.lang.reflect.Field f : liBootCls.getDeclaredFields()) {
                                String ftn = f.getType().getName();
                                dbg.append(f.getName()).append("[").append(ftn).append("],");
                            }
                            ulog.append("liFields=").append(dbg.toString());
                        } catch (Throwable t) {}
                    }
                } catch (Throwable liErr) {
                    ulog.append("+liErr:").append(liErr.getClass().getSimpleName());
                }
                writeText(probeLogPath("ckpt1.txt"), "ckpt1:liMap-done");
                // ── W6: theme setup over native AssetManager ───────────────────────────
                try {
                    java.lang.reflect.Constructor<android.content.res.AssetManager> amCtor =
                            android.content.res.AssetManager.class.getDeclaredConstructor(boolean.class);
                    amCtor.setAccessible(true);
                    android.content.res.AssetManager themeAm = amCtor.newInstance(Boolean.TRUE);
                    java.lang.reflect.Field mApkF =
                            android.content.res.AssetManager.class.getDeclaredField("mApkAssets");
                    mApkF.setAccessible(true);
                    Class<?> apkAssetsCls = Class.forName("android.content.res.ApkAssets");
                    mApkF.set(themeAm, java.lang.reflect.Array.newInstance(apkAssetsCls, 0));
                    String apkPath = apkF.getAbsolutePath();
                    android.content.res.AssetManager.class.getMethod("addAssetPath", String.class)
                            .invoke(themeAm, apkPath);
                    String fwResPath = null;
                    java.io.File sysF = new java.io.File("/system");
                    if (sysF.exists()) {
                        java.io.File[] subs = sysF.listFiles();
                        if (subs != null) for (java.io.File f : subs) {
                            if (f.getName().startsWith("framework-res")) { fwResPath = f.getAbsolutePath(); break; }
                        }
                    }
                    if (fwResPath == null) {
                        java.io.File fwFd = new java.io.File("/system/framework");
                        if (fwFd.exists()) {
                            java.io.File[] ff = fwFd.listFiles();
                            if (ff != null) for (java.io.File f : ff) {
                                if (f.getName().startsWith("framework-res")) { fwResPath = f.getAbsolutePath(); break; }
                            }
                        }
                    }
                    ulog.append("fwResPath=").append(fwResPath != null ? fwResPath : "null").append(' ');
                    if (fwResPath != null) {
                        android.content.res.AssetManager.class.getMethod("addAssetPath", String.class)
                                .invoke(themeAm, fwResPath);
                    }
                    // Build a native Resources with our AssetManager (bypasses WlResources overrides)
                    final android.content.Context actCtxForW6 = storedActCtx;
                    android.util.DisplayMetrics dm = actCtxForW6.getResources().getDisplayMetrics();
                    android.content.res.Configuration cfg = actCtxForW6.getResources().getConfiguration();
                    android.content.res.Resources themeRes =
                            new android.content.res.Resources(themeAm, dm, cfg);
                    // Create theme and apply AppCompat style via native path
                    Object themeNative = themeRes.newTheme();
                    Class<?> themeCls = Class.forName("android.content.res.Resources$Theme");
                    java.lang.reflect.Method applyStyleM = themeCls.getMethod("applyStyle", int.class, boolean.class);
                    applyStyleM.invoke(themeNative, appCompatThemeId, Boolean.TRUE);
                    ulog.append("nativeTheme=OK ");
                    // Use the already-created ctxProxyForBase, themeResForProxy from early setup.
                    // ctxProxyForBase already has getSystemService override → cached LayoutInflater.
                    if (ctxProxyForBase != null) {
                        ulog.append("ctxProxy=reuse ");
                    } else {
                        ulog.append("ctxProxy=missing ");
                    }
                    // Use themeResForProxy for setTheme() — already has AppCompat style applied
                    if (themeResForProxy != null) {
                        ulog.append("themeRes=reuse ");
                    } else {
                        ulog.append("themeRes=missing ");
                    }
                    // Now call setTheme(0x7f15000e) — WlProxyContext.getTheme() returns our native theme
                    try {
                        java.lang.reflect.Method setThemeM =
                                Class.forName("android.app.Activity").getMethod("setTheme", int.class);
                        setThemeM.setAccessible(true);
                        setThemeM.invoke(uact, appCompatThemeId);
                        ulog.append("setTheme=OK ");
                    } catch (Throwable st) {
                        Throwable stc = (st instanceof java.lang.reflect.InvocationTargetException
                                && st.getCause() != null) ? st.getCause() : st;
                        ulog.append("setTheme=").append(stc.getClass().getSimpleName())
                            .append(':').append(stc.getMessage()).append(' ');
                    }
                    ulog.append("checkpoint-W1 checkpoint-W2 checkpoint-W3 checkpoint-W4 ");
                    try {
                        Class.forName("com.android.internal.policy.PhoneWindow")
                                .getDeclaredField("mDecor");
                        ulog.append("winfix=OK ");
                    } catch (Throwable wf) {
                        ulog.append("winfix=").append(wf.getClass().getSimpleName()).append(' ');
                    }
                    ulog.append("checkpoint-W5 ");
                    // SKIP setContentView(0) — it calls DecorView.<init> which calls Paint.nSetFlags
                    // native method that SIGBUS crashes on OHOS trampoline.
                    // Skip this call entirely; Activity.onCreate will handle its own setContentView.
                    ulog.append("win=SKIP ");
                    ulog.append("checkpoint-W6 ");
                } catch (Throwable tw6) {
                    ulog.append("w6=").append(tw6.getClass().getSimpleName())
                        .append(':').append(tw6.getMessage()).append(' ');
                }
                writeText(probeLogPath("ckpt1.txt"), "ckpt1:w6-done");
                // ── X1-X3: Instrumentation pre-flight ─────────────────────────────────
                try {
                    ulog.append("checkpoint-X1 ");
                    java.lang.reflect.Field mActivityInfoF =
                            Class.forName("android.app.Activity").getDeclaredField("mActivityInfo");
                    mActivityInfoF.setAccessible(true);
                    Object actInfo = mActivityInfoF.get(uact);
                    ulog.append("actInfo=").append(actInfo != null ? "set" : "null").append(' ');
                    ulog.append("checkpoint-X2 ");
                    try {
                        java.lang.reflect.Field mFragF = uact.getClass().getDeclaredField("mFragments");
                        mFragF.setAccessible(true);
                        ulog.append("fragFld=ok ");
                    } catch (Throwable mf) {
                        ulog.append("fragFld=").append(mf.getClass().getSimpleName()).append(' ');
                    }
                    try {
                        Class<?> fragCtrlCls = Class.forName("android.app.FragmentController");
                        Class.forName("android.app.Activity").getDeclaredField("mFragments");
                        ulog.append("fragG=").append(fragCtrlCls.getSimpleName()).append(' ');
                    } catch (Throwable fg) {
                        ulog.append("fragG=").append(fg.getClass().getSimpleName()).append(' ');
                    }
                    try {
                        Class.forName("android.app.ActivityThread").getDeclaredField("mH");
                        ulog.append("fragAH=found ");
                    } catch (Throwable fh) {
                        ulog.append("fragAH=").append(fh.getClass().getSimpleName()).append(' ');
                    }
                    try {
                        Class.forName("android.app.Activity").getDeclaredField("mFragments");
                        ulog.append("fragHost=set ");
                    } catch (Throwable fh2) {
                        ulog.append("fragHost=").append(fh2.getClass().getSimpleName()).append(' ');
                    }
                    ulog.append("checkpoint-X3 checkpoint-X4 ");
                } catch (Throwable tx) {
                    ulog.append("xErr=").append(tx.getClass().getSimpleName()).append(' ');
                }
                writeText(probeLogPath("ckpt1.txt"), "ckpt1:x-done");
                // ── Y1-Y3: Activity.onCreate (direct call, bypassing Instrumentation) ─────
                try {
                    ulog.append("actAddApp=direct ");
                    ulog.append("checkpoint-Y1 checkpoint-Y2 checkpoint-Y3 ");
                    // Attach host (null FragmentManager) before onCreate
                    try {
                        java.lang.reflect.Field mFragF =
                                Class.forName("android.app.Activity").getDeclaredField("mFragments");
                        mFragF.setAccessible(true);
                        Object fragCtrl = Class.forName("android.app.FragmentController")
                                .getDeclaredMethod("createController", Class.forName("android.app.FragmentHostCallback"))
                                .invoke(null, (Object) null);
                        mFragF.set(uact, fragCtrl);
                        ulog.append("fragAttach=OK ");
                    } catch (Throwable fa) {
                        ulog.append("fragAttach=").append(fa.getClass().getSimpleName()).append(' ');
                    }
                    // Call MainActivity.onCreate(Bundle)
                    java.lang.reflect.Method onCreateM =
                            uact.getClass().getMethod("onCreate", Class.forName("android.os.Bundle"));
                    onCreateM.setAccessible(true);
                    writeText(probeLogPath("ckpt1.txt"), "ckpt1:before-oncreate");
                    Object icicle = Class.forName("android.os.Bundle")
                            .getDeclaredConstructor().newInstance();
                    writeText(probeLogPath("ckpt1.txt"), "ckpt1:bundle-created");
                    onCreateM.invoke(uact, icicle);
                    writeText(probeLogPath("ckpt1.txt"), "ckpt1:oncreate-done");
                    ulog.append("actOnCreate=OK ");
                } catch (Throwable ty1) {
                    Throwable tc = (ty1 instanceof java.lang.reflect.InvocationTargetException
                            && ty1.getCause() != null) ? ty1.getCause() : ty1;
                    ulog.append("actOnCreate=FAIL:").append(tc.getClass().getSimpleName())
                        .append(':').append(tc.getMessage()).append(' ');
                    StackTraceElement[] ste = tc.getStackTrace();
                    for (int ix = 0; ix < Math.min(5, ste.length); ix++)
                        ulog.append(" @").append(ste[ix].getClassName()).append('.')
                            .append(ste[ix].getMethodName()).append(':').append(ste[ix].getLineNumber());
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
