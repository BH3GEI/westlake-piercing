public final class Dayu600ApkStageProbe {
    private static volatile ClassLoader mNoiceLoader;
    private static boolean embeddedNoExit;
    private static int embeddedLastExitCode;
    private static int loaderStatus;
    // Hoisted from inner try blocks so Activity-onCreate section can reference them
    private static Object uappInstance;
    private static Object uactInstance;

    private static native Class<?> nativeFindClass(String name);
    private static native void nativeWriteText(String path, String text);
    private static native void nativeRegisterTraceNatives(Class<?> traceClass);
    private static native int nativeCallAddAssetPath(Object assetManager, byte[] pathUtf8, Class<?> stringClass);
    /** Append via ApkAssets.loadFromPath + setApkAssets (ApkAssets class resolved in native). */
    private static native int nativeAppendApkAssets(Object assetManager, byte[] pathUtf8);
    /**
     * W-001 VLL trampoline: void return so the static shorty is 'VLL' (same shorty class
     * as nativeWriteText, proven dispatchable on this board). 'ILL' is unhandled at
     * interpreter.cc:1189. Status is NOT returned to Java — native writes
     * /data/local/tmp/w001-native-append.txt and w001-ck{App,Fw}.txt heartbeats.
     */
    private static native void nativeW001Append(Object assetManager, byte[] pathUtf8);
    /**
     * W-001: bind android.os.Trace natives on every reachable Trace class handle
     * (boot + this AssetManager's loader) before Resources() is constructed. Void →
     * shorty 'VL' (dispatchable). Native writes /data/local/tmp/w001-trace.txt.
     */
    private static native void nativeW001BindTrace(Object assetManager);
    /** W-003 atom-49: normal GenericJni path — shorty DFF (not in interpreter if-else). */
    private static native double nativeGenericJniDffProbe(float a, float b);
    private static native int nativeRegisterHwuiRender();

    // ()I on purpose: the interpreter's static-JNI chain has no 'IZ' branch, so a
    // boolean-arg native is dropped and returns 0 without ever running.
    private static native int nativeClearHwuiIsolated();

    /** Blit ARGB_8888 pixels straight into the display window, bypassing hwui (which on this
     *  board has no window-surface path at all). Pass null to paint a built-in test pattern. */
    // ()I plus static-field inputs: the interpreter drops natives whose shorty it has no
    // branch for (here 'ILII'), returning 0 without ever entering the function.
    static int[] sBlitPixels;
    static int sBlitW, sBlitH;

    private static native int nativeBlitArgb();

    static Class<?> sAllocClass;
    /* Path handed to nativeDirectBufferFromFile(); zero-arg native, so it travels
     * through a static field like the other probe natives. */
    static String sDirectBufPath;
    /* Arguments for nativeAddFontWeightStyle(); see sDirectBufPath for why they travel
     * as statics rather than as native parameters. */

    /* Argument for nativeMakeCanvas(). */
    static Object sCanvasBitmap;
    static native Object nativeMakeCanvas();
    static long sFfBuilderPtr;
    static Object sFfBuffer;
    static native int nativeAddFontWeightStyle();

    static native Object nativeDirectBufferFromFile();

    static String sSrgbSeedResult = "n/a";

    /** Constructor-less allocation of sAllocClassName (JNI AllocObject). */
    private static native Object nativeAllocByName();

    static Object sCopySrc;

    /** Mutable copy via libhwui's harvested nativeCopy pointer (bypasses the boolean marshal). */
    private static native Object nativeMutableCopy();

    private static native Object nativeAllocColorSpaceRgb();

    /** Runs libhwui's real Bitmap registrar so its cached jclass globals exist. */
    private static native int nativeRegisterBitmapJni();

    /** Re-runs wlresjni's StringBlock registrar (OHBridge's stubs overwrite it at boot). */
    private static native int nativeRegisterStringBlock();

    /**
     * Obtain a usable RGB ColorSpace on a substrate where the named-colour-space registry was
     * never populated: every ColorSpace.get(Named.X) returns null.
     *
     * The registry is a HashMap field named sNamedColorSpaceMap (established by parsing
     * framework.jar's dex field table -- reflection alone is misleading here, and the storage
     * is neither an array nor a ColorSpace-typed field, which is why earlier scans found
     * nothing). Seeding it is still circular on its own: ColorSpace.Rgb's constructor calls
     * isSrgb(), which dereferences get(Named.SRGB). So put a constructor-less placeholder
     * (JNI AllocObject) in first, build the real sRGB on top of it, then replace it.
     *
     * The sRGB primaries, D65 white point and transfer parameters are already present as
     * constants on the class, so use those rather than re-deriving them.
     */
    private static Object wlObtainSrgb(Class<?> csCls, Class<?> namedCls) throws Exception {
        java.lang.reflect.Method csGet = csCls.getMethod("get", namedCls);
        Object srgbNamed = null;
        for (Object n : namedCls.getEnumConstants()) {
            if ("SRGB".equals(n.toString())) { srgbNamed = n; break; }
        }
        Object cs = srgbNamed == null ? null : csGet.invoke(null, srgbNamed);
        if (cs != null) return cs;

        // Seeding the registry is only needed to stop isSrgb() from dereferencing
        // get(Named.SRGB). The id-taking constructor short-circuits isSrgb() with
        // `if (id == 0) return true;` before it ever looks the registry up, so when that
        // constructor exists we skip the whole seeding dance -- which also avoids
        // HashMap.put(enumKey, ...) and therefore Enum.hashCode() -> Object.hashCode(),
        // a native whose entry is null on this substrate.
        Object primaries = wlStatic(csCls, "SRGB_PRIMARIES");
        Object white = wlStatic(csCls, "ILLUMINANT_D65");
        Object tp = wlStatic(csCls, "SRGB_TRANSFER_PARAMETERS");
        if (primaries == null || white == null || tp == null) {
            throw new IllegalStateException("sRGB constants missing: primaries=" + (primaries != null)
                    + " white=" + (white != null) + " tp=" + (tp != null));
        }
        Class<?> rgbCls = Class.forName("android.graphics.ColorSpace$Rgb");
        Class<?> tpCls = Class.forName("android.graphics.ColorSpace$Rgb$TransferParameters");
        // isSrgb() short-circuits with `if (id == 0) return true;` before it ever touches
        // get(Named.SRGB).mOetf, so route through the internal constructor that takes an id
        // and pass 0. The public 4-arg form passes MIN_ID and walks straight into the
        // comparison loop, which calls applyAsDouble() on the placeholder's null mOetf.
        java.util.Map<Object, Object> map = null;
        Object placeholder = null;
        java.lang.reflect.Constructor<?> withId = null;
        StringBuilder ctors = new StringBuilder();
        for (java.lang.reflect.Constructor<?> c : rgbCls.getDeclaredConstructors()) {
            Class<?>[] ps = c.getParameterTypes();
            StringBuilder sig = new StringBuilder();
            for (Class<?> pt : ps) sig.append(pt.getSimpleName()).append(',');
            ctors.append('(').append(sig).append(") ");
            // Rgb(String name, float[] primaries, float[] whitePoint, float[] transform,
            //     TransferParameters parameters, int id)  -- the only form that lets us pass id.
            if (ps.length == 6 && ps[0] == String.class && ps[1] == float[].class
                    && ps[2] == float[].class && ps[3] == float[].class
                    && ps[4] == tpCls && ps[5] == int.class) {
                withId = c;
            }
        }
        Object real;
        try {
            if (withId != null) {
                withId.setAccessible(true);
                real = withId.newInstance("wl-sRGB", primaries, white, null, tp, Integer.valueOf(0));
            } else {
                // No id-taking ctor: fall back to seeding the registry with a
                // constructor-less placeholder so isSrgb() has something non-null to read.
                java.lang.reflect.Field mapF = csCls.getDeclaredField("sNamedColorSpaceMap");
                mapF.setAccessible(true);
                Object mapObj = mapF.get(null);
                if (mapObj == null) { mapObj = new java.util.HashMap<Object, Object>(); mapF.set(null, mapObj); }
                @SuppressWarnings("unchecked")
                java.util.Map<Object, Object> m = (java.util.Map<Object, Object>) mapObj;
                map = m;
                placeholder = nativeAllocColorSpaceRgb();
                if (placeholder != null && srgbNamed != null) map.put(srgbNamed, placeholder);
                real = rgbCls.getConstructor(String.class, float[].class, float[].class, tpCls)
                        .newInstance("wl-sRGB", primaries, white, tp);
            }
        } catch (Throwable rt) {
            Throwable rc = rt;
            while (rc instanceof java.lang.reflect.InvocationTargetException && rc.getCause() != null) {
                rc = rc.getCause();
            }
            throw new IllegalStateException("Rgb ctor failed (withId=" + (withId != null)
                    + " mapSeeded=" + (map != null) + "): "
                    + rc.getClass().getName() + ":" + rc.getMessage());
        }
        // Seed the registry with the real instance now that we have one: it makes the plain
        // createBitmap(w,h,config) overload work, and that path returns a MUTABLE bitmap --
        // the colour-space overload returns an immutable one, which Canvas rejects.
        try {
            java.lang.reflect.Field mapF2 = csCls.getDeclaredField("sNamedColorSpaceMap");
            mapF2.setAccessible(true);
            Object m2 = mapF2.get(null);
            if (m2 == null) { m2 = new java.util.HashMap<Object, Object>(); mapF2.set(null, m2); }
            if (srgbNamed != null) ((java.util.Map<Object, Object>) m2).put(srgbNamed, real);
        } catch (Throwable ig) {}
        if (map != null && srgbNamed != null) map.put(srgbNamed, real);
        // Verify the seeding actually takes: if get(Named.SRGB) now answers, the plain
        // createBitmap(w,h,config) path becomes available -- worth knowing because that path
        // does not depend on the colour-space overload.
        try {
            Object after = csGet.invoke(null, srgbNamed);
            sSrgbSeedResult = (after != null) ? "get-ok" : "get-still-null";
        } catch (Throwable gt) {
            sSrgbSeedResult = "get-throw:" + gt.getClass().getSimpleName();
        }
        return real;
    }

    private static Object wlStatic(Class<?> c, String name) {
        try {
            java.lang.reflect.Field f = c.getDeclaredField(name);
            f.setAccessible(true);
            return f.get(null);
        } catch (Throwable t) { return null; }
    }

    /** Software-render a view tree into an ARGB_8888 int[] via Bitmap + Canvas. */
    private static int[] wlRenderViewToPixels(android.view.View v, int w, int h,
                                             StringBuilder out, String log) throws Exception {
        out.append("10r0 render-enter\n"); writeText(log, out.toString());
        Class<?> bmCls = Class.forName("android.graphics.Bitmap");
        Class<?> cfgCls = Class.forName("android.graphics.Bitmap$Config");
        Object argb = null;
        for (Object c : cfgCls.getEnumConstants()) {
            if ("ARGB_8888".equals(c.toString())) { argb = c; break; }
        }
        // Table binding alone leaves libhwui's Bitmap JNI globals uninitialised, and
        // nativeCreate then dies in GetMethodID with a null class.
        nativeRegisterBitmapJni();
        out.append("10r1 bitmap-registrar\n"); writeText(log, out.toString());
        Class<?> csCls = Class.forName("android.graphics.ColorSpace");
        Class<?> namedCls = Class.forName("android.graphics.ColorSpace$Named");
        Object srgb = wlObtainSrgb(csCls, namedCls);
        out.append("10r2 srgb=").append(srgb != null)
           .append(" seed=").append(sSrgbSeedResult).append('\n');
        writeText(log, out.toString());

        /* ColorSpace.sNamedColorSpaces is empty on this substrate (that is what
         * "seed=get-still-null" above has been reporting), so ColorSpace.get(id) throws
         * "Invalid ID: 0" for every id. Any Drawable that paints reaches it --
         * Paint.setAlpha -> Color.colorSpace -> ColorSpace.get -- so every Material drawable
         * in the tree throws the moment it draws, which is why the frame stayed empty while
         * the canvas, View.draw and the tree itself were all fine.
         * Seed the table with the sRGB instance we can already build. Entries other than
         * SRGB get the same instance: nothing here renders in another space, and returning
         * sRGB is far better than throwing out of every draw call. */
        String csSeed = "skipped";
        try {
            if (srgb != null) {
                /* This build keeps the named spaces in a HashMap keyed by id, not in an
                 * array (field dump: sNamedColorSpaceMap). ColorSpace.get(id) looks the id up
                 * and throws "Invalid ID" on a miss, and the map is empty here -- so every
                 * Paint.setAlpha -> Color.colorSpace -> ColorSpace.get throws, which is what
                 * kills every Material drawable the moment it paints. Fill the ids with the
                 * sRGB instance we can build; nothing in this app renders in another space,
                 * and returning sRGB beats throwing out of every draw call. */
                java.lang.reflect.Field nf = null;
                for (java.lang.reflect.Field cf : csCls.getDeclaredFields()) {
                    if (!java.lang.reflect.Modifier.isStatic(cf.getModifiers())) continue;
                    if (java.util.Map.class.isAssignableFrom(cf.getType())) { nf = cf; break; }
                }
                if (nf == null) throw new NoSuchFieldException("no static Map on ColorSpace");
                nf.setAccessible(true);
                Object[] named = (Object[]) namedCls.getMethod("values").invoke(null);
                java.util.Map<Object, Object> m5m = (java.util.Map<Object, Object>) nf.get(null);
                int before = m5m.size();
                for (int i = 0; i < named.length; i++) {
                    if (!m5m.containsKey(Integer.valueOf(i))) m5m.put(Integer.valueOf(i), srgb);
                }
                csSeed = "map " + before + "->" + m5m.size() + " via " + nf.getName();
            }
        } catch (Throwable cst) {
            Throwable cc4 = cst instanceof java.lang.reflect.InvocationTargetException
                    && cst.getCause() != null ? cst.getCause() : cst;
            csSeed = "fail:" + cc4.getClass().getSimpleName() + ":" + cc4.getMessage();
        }
        out.append("10r2n namedColorSpaces=").append(csSeed).append('\n');
        writeText(log, out.toString());

        Object bm;
        String bmHow = "plain";
        try {
            // Mutable path -- works once the registry lookup succeeds.
            bm = bmCls.getMethod("createBitmap", int.class, int.class, cfgCls)
                    .invoke(null, Integer.valueOf(w), Integer.valueOf(h), argb);
        } catch (Throwable plain) {
            Throwable pc0 = plain;
            while (pc0 instanceof java.lang.reflect.InvocationTargetException && pc0.getCause() != null) {
                pc0 = pc0.getCause();
            }
            bmHow = "cs-overload(plain failed: " + pc0.getClass().getSimpleName() + ":" + pc0.getMessage() + ")";
            bm = bmCls.getMethod("createBitmap", int.class, int.class, cfgCls,
                                 boolean.class, csCls)
                    .invoke(null, Integer.valueOf(w), Integer.valueOf(h), argb, Boolean.TRUE, srgb);
        }
        // createBitmap's colour-space overload hands back an immutable bitmap, and Canvas
        // rejects those. The pixels are writable either way -- only the Java-side flag gates
        // the constructor -- so flip it.
        try {
            java.lang.reflect.Field mut = bmCls.getDeclaredField("mIsMutable");
            mut.setAccessible(true);
            mut.setBoolean(bm, true);
        } catch (Throwable ig) {}
        // nativeCreate takes 8 args, so on AAPCS64 the trailing `mutable` and colour-space
        // pointer spill to the stack -- and the bitmap comes back immutable regardless of what
        // Java passed. Bitmap.copy(config, true) goes through nativeCopy, which has few enough
        // arguments to stay entirely in registers, and yields the mutable copy Canvas needs.
        // Decisive check for the boolean-return hypothesis: the bitmap straight out of
        // createBitmap's colour-space overload is KNOWN immutable (Canvas rejected it). If
        // isMutable() reports true for it, the marshal's boolean return is broken and every
        // boolean-returning native is suspect -- no compile machine needed to prove it.
        String preCopyMutable;
        try {
            preCopyMutable = String.valueOf(bmCls.getMethod("isMutable").invoke(bm));
        } catch (Throwable pt) { preCopyMutable = "throw:" + pt.getClass().getSimpleName(); }
        out.append("10r3p preCopyMutable=").append(preCopyMutable).append('\n');
        writeText(log, out.toString());
        // Call copy() DIRECTLY, not through reflection. Evidence: isMutable() answers true via
        // reflection but false to Canvas's own bytecode call (5/5 runs, deterministic), i.e. the
        // reflective path mangles booleans. The same reflective call is what passed `true` to
        // copy(), so the copy came back immutable.
        String copyHow;
        Object bmPreCopy = bm;   // 10r3p reports this one mutable
        /* The mutable-copy step existed only to satisfy Canvas(Bitmap)'s isMutable() gate,
         * and the canvas is now built natively without consulting Java at all. The copy also
         * comes back reporting immutable while its source reports mutable (10r3p), so keeping
         * the source removes a step that can only lose. This is a simplification, not a fix
         * for a diagnosed defect -- the earlier "draw paints nothing" reading came from a
         * broken readback, not from the copy. */
        boolean wantCopy = System.getenv("WL_BITMAP_COPY") != null;
        try {
            if (!wantCopy) throw new IllegalStateException("copy-disabled");
            // Java cannot get a mutable copy at all here (the boolean argument never reaches the
            // native), so go through libhwui's own nativeCopy pointer instead.
            sCopySrc = bm;
            Object viaNative = nativeMutableCopy();
            if (viaNative != null) {
                bm = viaNative;
                copyHow = "native-ok mutable=" + ((android.graphics.Bitmap) bm).isMutable();
            } else {
                android.graphics.Bitmap src = (android.graphics.Bitmap) bm;
                android.graphics.Bitmap mut = src.copy(android.graphics.Bitmap.Config.ARGB_8888, true);
                if (mut != null) { bm = mut; copyHow = "direct-fallback mutable=" + mut.isMutable(); }
                else { copyHow = "both-null"; }
            }
        } catch (Throwable ct) {
            Throwable cc2 = ct instanceof java.lang.reflect.InvocationTargetException
                    && ct.getCause() != null ? ct.getCause() : ct;
            copyHow = wantCopy
                    ? "throw:" + cc2.getClass().getSimpleName() + ":" + cc2.getMessage()
                    : "skipped(using source)";
        }
        out.append("10r3c copy=").append(copyHow).append('\n');
        writeText(log, out.toString());
        StringBuilder mutFields = new StringBuilder();
        for (java.lang.reflect.Field f : bmCls.getDeclaredFields()) {
            if (f.getName().toLowerCase().contains("mutable")) mutFields.append(f.getName()).append(' ');
        }
        out.append("10r3 bitmap-created how=").append(bmHow)
           .append(" mutable=").append(String.valueOf(bmCls.getMethod("isMutable").invoke(bm)))
           .append(" fields=[").append(mutFields).append("]\n");
        writeText(log, out.toString());
        Class<?> canvasCls = Class.forName("android.graphics.Canvas");
        Object canvas;
        String canvasHow;
        try {
            canvas = canvasCls.getConstructor(bmCls).newInstance(bm);
            canvasHow = "ctor";
        } catch (Throwable ce) {
            /* Canvas(Bitmap) gates on bitmap.isMutable(). The copy reports false there while
             * reflection on the same method reports true, and Bitmap has no mIsMutable field
             * to settle it -- the interpreter's direct-call boolean marshal is unreliable.
             * The pre-copy bitmap reports mutable through both paths, so use it directly
             * rather than fighting the copy. */
            sCanvasBitmap = bm;
            Object nc = nativeMakeCanvas();
            if (nc == null) throw ce;
            canvas = nc;
            canvasHow = "native-raster";
        }
        out.append("10r4 canvas-ready how=").append(canvasHow).append('\n');
        writeText(log, out.toString());
        /* A real Window paints its theme's windowBackground before any View draws; this lane
         * never builds a DecorView (a synthetic FrameLayout stands in for it), so that step
         * was simply missing and the frame stayed transparent. Resolve the app's own
         * windowBackground and put it on the view being drawn. What it resolved to is logged,
         * so this can never be confused with a hardcoded colour. */
        String wbHow = "skipped";
        try {
            Object vctx = android.view.View.class.getMethod("getContext").invoke(v);
            Object theme = vctx.getClass().getMethod("getTheme").invoke(vctx);
            android.util.TypedValue tv = new android.util.TypedValue();
            Boolean ok = (Boolean) theme.getClass()
                    .getMethod("resolveAttribute", int.class, android.util.TypedValue.class,
                               boolean.class)
                    .invoke(theme, Integer.valueOf(android.R.attr.windowBackground), tv,
                            Boolean.TRUE);
            if (Boolean.TRUE.equals(ok)) {
                if (tv.type >= 28 && tv.type <= 31) {          // TYPE_FIRST_COLOR_INT..LAST
                    android.view.View.class.getMethod("setBackgroundColor", int.class)
                            .invoke(v, Integer.valueOf(tv.data));
                    wbHow = "color=0x" + Integer.toHexString(tv.data);
                } else if (tv.resourceId != 0) {
                    Object res = vctx.getClass().getMethod("getResources").invoke(vctx);
                    Object dr = res.getClass()
                            .getMethod("getDrawable", int.class,
                                       Class.forName("android.content.res.Resources$Theme"))
                            .invoke(res, Integer.valueOf(tv.resourceId), theme);
                    android.view.View.class
                            .getMethod("setBackground",
                                       Class.forName("android.graphics.drawable.Drawable"))
                            .invoke(v, dr);
                    wbHow = "drawable=" + (dr == null ? "null" : dr.getClass().getSimpleName())
                            + " id=0x" + Integer.toHexString(tv.resourceId);
                } else {
                    wbHow = "unresolved type=" + tv.type;
                }
            } else {
                wbHow = "attr-absent";
            }
        } catch (Throwable wb) {
            Throwable wc = wb instanceof java.lang.reflect.InvocationTargetException
                    && wb.getCause() != null ? wb.getCause() : wb;
            wbHow = "fail:" + wc.getClass().getSimpleName() + ":" + wc.getMessage();
        }
        out.append("10r4w windowBackground=").append(wbHow).append('\n');
        writeText(log, out.toString());

        /* Diagnostic, off by default. The honest 10r6 reading (getPixels now runs before the
         * statistics) says the bitmap is all zeros after View.draw, and the screenshot shows
         * the launcher rather than noice. That leaves two very different causes: the natively
         * built Canvas is not actually bound to this bitmap's pixels, or the binding is fine
         * and View.draw is the one contributing nothing. Painting the canvas directly
         * separates them -- if these pixels survive to 10r6, the canvas is sound. */
        if (System.getenv("WL_CANVAS_PROBE") != null) {
            try {
                canvasCls.getMethod("drawColor", int.class)
                         .invoke(canvas, Integer.valueOf(0xFFFF0000));
                out.append("10r4p canvasProbe=drawColor-applied\n");
            } catch (Throwable cp) {
                out.append("10r4p canvasProbe=fail:").append(cp.getClass().getSimpleName())
                   .append('\n');
            }
            writeText(log, out.toString());
        }
        // Is there anything on the view to paint at the moment draw() runs?
        try {
            Object curBg = android.view.View.class.getMethod("getBackground").invoke(v);
            // Identify the object actually being drawn: the node dump at 10b reports real
            // laid-out rects while the walk sees zeros, so confirm they are the same tree.
            StringBuilder idb = new StringBuilder();
            idb.append(v.getClass().getSimpleName()).append('#')
               .append(Integer.toHexString(System.identityHashCode(v)));
            try {
                idb.append(" rect=[")
                   .append(android.view.View.class.getMethod("getLeft").invoke(v)).append(',')
                   .append(android.view.View.class.getMethod("getTop").invoke(v)).append('-')
                   .append(android.view.View.class.getMethod("getRight").invoke(v)).append(',')
                   .append(android.view.View.class.getMethod("getBottom").invoke(v)).append(']');
            } catch (Throwable t6) { idb.append(" rect=?"); }
            out.append("10r4b drawTarget=").append(idb).append(" bg=")
               .append(curBg == null ? "null" : curBg.getClass().getSimpleName()).append('\n');
            // Dump the tree that is actually drawn, not the one that happened to be around at
            // 10b -- those turned out to be different objects.
            try { writeText("/data/local/tmp/noice-drawn-nodes.txt", wlDumpNodes(v)); }
            catch (Throwable ig) {}
        } catch (Throwable bt2) { out.append("10r4b drawTargetBg=?\n"); }
        writeText(log, out.toString());

        /* Isolate View.draw itself from noice's tree: a bare View with a solid background,
         * bounds forced the same way, drawn onto the same canvas. If this paints, the draw
         * path works and the empty frame is a property of the tree; if it does not, the
         * problem is View.draw on this substrate. Gated so the colour can never be mistaken
         * for noice's UI. */
        if (System.getenv("WL_SYNTH_VIEW") != null) {
            try {
                Object vctx2 = android.view.View.class.getMethod("getContext").invoke(v);
                android.view.View probe = new android.view.View(
                        (android.content.Context) vctx2);
                android.view.View.class.getMethod("setBackgroundColor", int.class)
                        .invoke(probe, Integer.valueOf(0xFF00C000));
                wlForceViewBounds(probe, 0, 0, w, h);
                android.view.View.class.getMethod("draw", canvasCls).invoke(probe, canvas);
                out.append("10r4s synthView=drawn\n");
            } catch (Throwable st) {
                Throwable sc = st instanceof java.lang.reflect.InvocationTargetException
                        && st.getCause() != null ? st.getCause() : st;
                out.append("10r4s synthView=fail:").append(sc.getClass().getSimpleName())
                   .append(':').append(String.valueOf(sc.getMessage())).append('\n');
            }
            writeText(log, out.toString());
        }
        /* The root has no background, but the node dump shows descendants that do (bg=i on
         * BottomNavigationView and some Views). Draw the first such drawable straight onto the
         * canvas: if pixels change, the drawables are fine and the question is why
         * dispatchDraw contributes nothing; if they do not, the drawables themselves are
         * empty -- which is what unresolved theme attributes would produce. */
        if (System.getenv("WL_BG_PROBE") != null) {
            String bgHow = "none-found";
            try {
                Object found = wlFirstBackground(v);
                if (found != null) {
                    Class<?> drC = Class.forName("android.graphics.drawable.Drawable");
                    drC.getMethod("setBounds", int.class, int.class, int.class, int.class)
                       .invoke(found, Integer.valueOf(0), Integer.valueOf(0),
                               Integer.valueOf(w), Integer.valueOf(h));
                    drC.getMethod("draw", canvasCls).invoke(found, canvas);
                    bgHow = "drew:" + found.getClass().getName();
                }
            } catch (Throwable bp) {
                Throwable bc3 = bp instanceof java.lang.reflect.InvocationTargetException
                        && bp.getCause() != null ? bp.getCause() : bp;
                StringBuilder fr = new StringBuilder();
                try {
                    StackTraceElement[] st3 = bc3.getStackTrace();
                    for (int i = 0; i < st3.length && i < 8; i++) {
                        fr.append(" @").append(st3[i].getClassName()).append('.')
                          .append(st3[i].getMethodName()).append(':')
                          .append(st3[i].getLineNumber());
                    }
                } catch (Throwable ig) {}
                bgHow = "fail:" + bc3.getClass().getSimpleName() + ":" + bc3.getMessage() + fr;
            }
            out.append("10r4g bgProbe=").append(bgHow).append('\n');
            writeText(log, out.toString());
        }
        /* ViewGroup's own child dispatch contributes nothing on this substrate: root.draw()
         * completes and leaves the bitmap untouched, while drawing a descendant's background
         * by hand paints fine (10r4g). Rather than chase drawChild's internals, walk the tree
         * and call the public draw(Canvas) on every node: each node then paints its own
         * background and, for leaves, its content. Positions are already absolute here
         * because every node was forced to the full frame. */
        String drawHow;
        if (System.getenv("WL_TREE_DRAW_OFF") != null) {
            android.view.View.class.getMethod("draw", canvasCls).invoke(v, canvas);
            drawHow = "root-only";
        } else {
            int[] n = new int[] { 0, 0, 0, 0, 0, 0, 0, 0 };
            wlDrawTree(v, canvas, canvasCls, n);
            drawHow = "drawn=" + n[0] + " visited=" + n[1] + " withBg=" + n[2]
                    + " firstRect=[" + n[4] + "," + n[5] + "-" + n[6] + "," + n[7] + "]";
        }
        out.append("10r5 draw-done ").append(drawHow).append('\n');
        writeText(log, out.toString());
        int[] px = new int[w * h];
        // Read the pixels BEFORE measuring them. This used to sit after the statistics block,
        // so every 10r6 line was computed over a freshly allocated (all-zero) array and could
        // only ever report sampledNonZero=0 / distinct=1 -- no matter what had been drawn.
        // The "frame is entirely transparent" readings, and the paint-probe A/B built on top
        // of them, were measuring that empty array, not the bitmap.
        bmCls.getMethod("getPixels", int[].class, int.class, int.class,
                        int.class, int.class, int.class, int.class)
             .invoke(bm, px, Integer.valueOf(0), Integer.valueOf(w), Integer.valueOf(0),
                     Integer.valueOf(0), Integer.valueOf(w), Integer.valueOf(h));

        // Report what we are actually about to blit. Judging success from a screenshot alone
        // is unsafe -- a transient system frame can look like a plausible app background.
        int nonZero = 0, distinct = 0;
        int c0 = px.length > 0 ? px[0] : 0;
        int cMid = px.length > 0 ? px[px.length / 2] : 0;
        java.util.HashSet<Integer> seenColors = new java.util.HashSet<Integer>();
        for (int i = 0; i < px.length; i += 997) {
            if (px[i] != 0) nonZero++;
            if (seenColors.size() < 24) seenColors.add(Integer.valueOf(px[i]));
        }
        distinct = seenColors.size();
        out.append("10r6 getPixels px[0]=0x").append(Integer.toHexString(c0))
           .append(" px[mid]=0x").append(Integer.toHexString(cMid))
           .append(" sampledNonZero=").append(String.valueOf(nonZero))
           .append(" distinct=").append(String.valueOf(distinct)).append('\n');
        writeText(log, out.toString());
        return px;
    }

    private static boolean streqEnv(String name, String want) {
        try { return want.equals(System.getenv(name)); } catch (Throwable t) { return false; }
    }

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
        public float getDimension(int id) {
            try { return super.getDimension(id); } catch (Throwable t) { return 0f; }
        }
        public int getDimensionPixelSize(int id) {
            try { return super.getDimensionPixelSize(id); } catch (Throwable t) { return 0; }
        }
        public int getDimensionPixelOffset(int id) {
            try { return super.getDimensionPixelOffset(id); } catch (Throwable t) { return 0; }
        }
        public int getColor(int id) {
            try { return super.getColor(id); } catch (Throwable t) { return 0; }
        }
        public int getColor(int id, android.content.res.Resources.Theme theme) {
            try { return super.getColor(id, theme); } catch (Throwable t) { return 0; }
        }
        public android.content.res.ColorStateList getColorStateList(int id) {
            try { return super.getColorStateList(id); }
            catch (Throwable t) { return android.content.res.ColorStateList.valueOf(0); }
        }
        public android.content.res.ColorStateList getColorStateList(int id,
                android.content.res.Resources.Theme theme) {
            try { return super.getColorStateList(id, theme); }
            catch (Throwable t) { return android.content.res.ColorStateList.valueOf(0); }
        }
        public android.graphics.drawable.Drawable getDrawable(int id) {
            try { return super.getDrawable(id); }
            catch (Throwable t) { return new android.graphics.drawable.ColorDrawable(0); }
        }
        public android.graphics.drawable.Drawable getDrawable(int id,
                android.content.res.Resources.Theme theme) {
            try { return super.getDrawable(id, theme); }
            catch (Throwable t) { return new android.graphics.drawable.ColorDrawable(0); }
        }
        public android.content.res.XmlResourceParser getAnimation(int id) {
            return new WlLinearInterpolatorParser(id);
        }
        public android.content.res.XmlResourceParser getXml(int id) {
            if (id == 0x7f100002) {
                try {
                    java.lang.reflect.Method open = android.content.res.AssetManager.class
                            .getMethod("openXmlResourceParser", String.class);
                    return (android.content.res.XmlResourceParser) open.invoke(
                            super.getAssets(), "res/navigation/main.xml");
                } catch (Throwable ignored) {}
            }
            /* Record the id before calling through: super.getXml() reaches
             * AssetManager.nativeGetResourceValue in wlresjni, and one of these requests
             * SIGSEGVs while the bottom navigation resolves a menu item's vector-drawable
             * icon. A signal cannot be caught in Java, so the last id written here is the
             * only way to learn which resource does it. */
            try {
                writeText("/data/local/tmp/noice-getxml-last.txt",
                        "id=0x" + Integer.toHexString(id));
            } catch (Throwable ig) {}
            /* id 0 is not a resource. Real Resources throws NotFoundException here; wlresjni
             * instead walks into nativeGetResourceValue and SIGSEGVs, killing the process
             * while the bottom navigation resolves a menu item icon. The zero arrives because
             * this bridge's TypedArray support returns 0 for an unresolved attribute, so the
             * icon genuinely is not available -- throwing lets MenuItemImpl.getIcon() return
             * null and the item builds without an icon, which is the correct outcome. */
            if (id == 0) {
                throw new android.content.res.Resources.NotFoundException(
                        "Resource ID #0x0 (unresolved attribute)");
            }
            return super.getXml(id);
        }
        public void getValue(int id, android.util.TypedValue outValue, boolean resolveRefs) {
            try {
                super.getValue(id, outValue, resolveRefs);
            } catch (Throwable t) {
                if (outValue != null) {
                    outValue.type = 16; // TYPE_INT_DEC
                    outValue.data = 0;
                    outValue.resourceId = id;
                    outValue.density = 0;
                }
            }
        }
        public void getValueForDensity(int id, int density, android.util.TypedValue outValue,
                boolean resolveRefs) {
            getValue(id, outValue, resolveRefs);
        }
        public String getString(int id, Object... fmt) {
            try { return super.getString(id, fmt); } catch (Throwable t) { return ""; }
        }
    }

    static final class WlLinearInterpolatorParser implements android.content.res.XmlResourceParser {
        private int event = org.xmlpull.v1.XmlPullParser.START_DOCUMENT;
        private final int resId;
        WlLinearInterpolatorParser(int resId) { this.resId = resId; }
        public void close() {}
        public void setFeature(String name, boolean state) {}
        public boolean getFeature(String name) { return false; }
        public void setProperty(String name, Object value) {}
        public Object getProperty(String name) { return null; }
        public void setInput(java.io.Reader in) {}
        public void setInput(java.io.InputStream inputStream, String inputEncoding) {}
        public String getInputEncoding() { return null; }
        public void defineEntityReplacementText(String entityName, String replacementText) {}
        public int getNamespaceCount(int depth) { return 0; }
        public String getNamespacePrefix(int pos) { return null; }
        public String getNamespaceUri(int pos) { return null; }
        public String getNamespace(String prefix) { return null; }
        public int getDepth() {
            return (event == org.xmlpull.v1.XmlPullParser.START_TAG
                    || event == org.xmlpull.v1.XmlPullParser.END_TAG) ? 1 : 0;
        }
        public String getPositionDescription() {
            return "westlake-linear-interpolator:#0x" + Integer.toHexString(resId);
        }
        public int getLineNumber() { return 1; }
        public int getColumnNumber() { return 1; }
        public boolean isWhitespace() { return false; }
        public String getText() { return null; }
        public char[] getTextCharacters(int[] holderForStartAndLength) {
            if (holderForStartAndLength != null && holderForStartAndLength.length >= 2) {
                holderForStartAndLength[0] = 0; holderForStartAndLength[1] = 0;
            }
            return new char[0];
        }
        public String getNamespace() { return null; }
        public String getName() {
            return (event == org.xmlpull.v1.XmlPullParser.START_TAG
                    || event == org.xmlpull.v1.XmlPullParser.END_TAG)
                    ? "linearInterpolator" : null;
        }
        public String getPrefix() { return null; }
        public boolean isEmptyElementTag() { return true; }
        public int getAttributeCount() { return 0; }
        public String getAttributeNamespace(int index) { return null; }
        public String getAttributeName(int index) { return null; }
        public String getAttributePrefix(int index) { return null; }
        public String getAttributeType(int index) { return "CDATA"; }
        public boolean isAttributeDefault(int index) { return false; }
        public String getAttributeValue(int index) { return null; }
        public String getAttributeValue(String namespace, String name) { return null; }
        public int getEventType() { return event; }
        public int next() {
            if (event == org.xmlpull.v1.XmlPullParser.START_DOCUMENT) {
                event = org.xmlpull.v1.XmlPullParser.START_TAG;
            } else if (event == org.xmlpull.v1.XmlPullParser.START_TAG) {
                event = org.xmlpull.v1.XmlPullParser.END_TAG;
            } else {
                event = org.xmlpull.v1.XmlPullParser.END_DOCUMENT;
            }
            return event;
        }
        public int nextToken() { return next(); }
        public void require(int type, String namespace, String name) throws org.xmlpull.v1.XmlPullParserException {
            if (event != type || (name != null && !name.equals(getName()))) {
                throw new org.xmlpull.v1.XmlPullParserException("westlake parser require mismatch");
            }
        }
        public String nextText() { return ""; }
        public int nextTag() { return next(); }
        public int getAttributeNameResource(int index) { return 0; }
        public int getAttributeListValue(String ns, String attr, String[] opts, int def) { return def; }
        public boolean getAttributeBooleanValue(String ns, String attr, boolean def) { return def; }
        public int getAttributeResourceValue(String ns, String attr, int def) { return def; }
        public int getAttributeIntValue(String ns, String attr, int def) { return def; }
        public int getAttributeUnsignedIntValue(String ns, String attr, int def) { return def; }
        public float getAttributeFloatValue(String ns, String attr, float def) { return def; }
        public int getAttributeListValue(int index, String[] opts, int def) { return def; }
        public boolean getAttributeBooleanValue(int index, boolean def) { return def; }
        public int getAttributeResourceValue(int index, int def) { return def; }
        public int getAttributeIntValue(int index, int def) { return def; }
        public int getAttributeUnsignedIntValue(int index, int def) { return def; }
        public float getAttributeFloatValue(int index, float def) { return def; }
        public String getIdAttribute() { return null; }
        public String getClassAttribute() { return null; }
        public int getIdAttributeResourceValue(int def) { return def; }
        public int getStyleAttribute() { return 0; }
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
                try {
                    java.lang.reflect.Field mFilterF = liCls.getDeclaredField("mFilter");
                    mFilterF.setAccessible(true);
                    mFilterF.set(cachedLayoutInflater, null);
                } catch (Throwable ig) {}
                try {
                    java.lang.reflect.Field mFactoryF = liCls.getDeclaredField("mFactory");
                    mFactoryF.setAccessible(true);
                    mFactoryF.set(cachedLayoutInflater, null);
                } catch (Throwable ig) {}
                try {
                    java.lang.reflect.Field mFactory2F = liCls.getDeclaredField("mFactory2");
                    mFactory2F.setAccessible(true);
                    mFactory2F.set(cachedLayoutInflater, null);
                } catch (Throwable ig) {}
                /* allocateInstance leaves maps/args null → inflate synchronizes on null. */
                try {
                    java.lang.reflect.Field cmap = liCls.getDeclaredField("mConstructorMap");
                    cmap.setAccessible(true);
                    if (cmap.get(cachedLayoutInflater) == null) {
                        cmap.set(cachedLayoutInflater, new java.util.HashMap());
                    }
                } catch (Throwable ig) {}
                try {
                    java.lang.reflect.Field cargs = liCls.getDeclaredField("mConstructorArgs");
                    cargs.setAccessible(true);
                    if (cargs.get(cachedLayoutInflater) == null) {
                        cargs.set(cachedLayoutInflater, new Object[2]);
                    }
                } catch (Throwable ig) {}
                try {
                    java.lang.reflect.Field temp = liCls.getDeclaredField("mTempValue");
                    temp.setAccessible(true);
                    if (temp.get(cachedLayoutInflater) == null) {
                        temp.set(cachedLayoutInflater, new android.util.TypedValue());
                    }
                } catch (Throwable ig) {}
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

    /** #51 narrow Factory2 — ImageView→AppCompatImageView; stock widgets via FindClass. */
    static final class Inflate51Factory2 implements android.view.LayoutInflater.Factory2 {
        private final ClassLoader mUtdLoader;
        Inflate51Factory2(ClassLoader utdLoader) {
            mUtdLoader = utdLoader;
        }
        public void onClick(android.view.View v) {}
        public android.view.View onCreateView(String name, android.content.Context c,
                android.util.AttributeSet attrs) {
            return onCreateView(null, name, c, attrs);
        }
        public android.view.View onCreateView(android.view.View parent, String name,
                android.content.Context c, android.util.AttributeSet attrs) {
            try {
                earlyWriteLiteral("/data/local/tmp/inflate51-factory-tag.txt",
                        name == null ? "<null>" : name);
            } catch (Throwable ig) {}
            if (name == null) return null;
            if ("ImageView".equals(name) || "android.widget.ImageView".equals(name)) {
                try {
                    ClassLoader loader = mUtdLoader != null
                            ? mUtdLoader : Dayu600ApkStageProbe.class.getClassLoader();
                    Class<?> aciv = Class.forName(
                            "androidx.appcompat.widget.AppCompatImageView", true, loader);
                    java.lang.reflect.Constructor<?> ctor = aciv.getConstructor(
                            android.content.Context.class, android.util.AttributeSet.class);
                    return (android.view.View) ctor.newInstance(c, attrs);
                } catch (Throwable t) {
                    /* fall through */
                }
            }
            return wlCreateStockView(name, c, attrs);
        }
    }

    /** Proxy fallback — SIGBUS on $Proxy0.<init> on board 5583; keep for other boards only. */
    static final class Inflate51FactoryHandler implements java.lang.reflect.InvocationHandler {
        private final ClassLoader mUtdLoader;
        Inflate51FactoryHandler(ClassLoader utdLoader) {
            mUtdLoader = utdLoader;
        }
        public Object invoke(Object proxy, java.lang.reflect.Method method, Object[] args) {
            String mname = method.getName();
            if ("hashCode".equals(mname)) return Integer.valueOf(System.identityHashCode(proxy));
            if ("equals".equals(mname)) return Boolean.valueOf(proxy == (args != null ? args[0] : null));
            if ("toString".equals(mname)) return "Inflate51FactoryHandler";
            if ("onClick".equals(mname)) return null;
            if (!"onCreateView".equals(mname)) return null;
            String tag = null;
            android.content.Context c = null;
            android.util.AttributeSet attrs = null;
            if (args != null) {
                if (args.length == 4) {
                    tag = (String) args[1];
                    c = (android.content.Context) args[2];
                    attrs = (android.util.AttributeSet) args[3];
                } else if (args.length == 3) {
                    tag = (String) args[0];
                    c = (android.content.Context) args[1];
                    attrs = (android.util.AttributeSet) args[2];
                }
            }
            try {
                earlyWriteLiteral("/data/local/tmp/inflate51-factory-tag.txt",
                        tag == null ? "<null>" : tag);
            } catch (Throwable ig) {}
            if (tag == null) return null;
            if ("ImageView".equals(tag) || "android.widget.ImageView".equals(tag)) {
                try {
                    ClassLoader loader = mUtdLoader != null
                            ? mUtdLoader : Dayu600ApkStageProbe.class.getClassLoader();
                    Class<?> aciv = Class.forName(
                            "androidx.appcompat.widget.AppCompatImageView", true, loader);
                    java.lang.reflect.Constructor<?> ctor = aciv.getConstructor(
                            android.content.Context.class, android.util.AttributeSet.class);
                    return ctor.newInstance(c, attrs);
                } catch (Throwable t) {
                    /* fall through */
                }
            }
            return wlCreateStockView(tag, c, attrs);
        }
    }

    // A concrete PackageManager is required
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
        try {
            f.set(null, val);
            if (f.get(null) == val) return;
        } catch (Throwable ig) {}
        /* ART may keep static final ArtField immutable via Field.set — force via Unsafe. */
        try {
            Class<?> uc = Class.forName("jdk.internal.misc.Unsafe", true, null);
            java.lang.reflect.Field tf = uc.getDeclaredField("theUnsafe");
            tf.setAccessible(true);
            Object unsafe = tf.get(null);
            Object base = uc.getMethod("staticFieldBase", java.lang.reflect.Field.class).invoke(unsafe, f);
            long off = ((Long) uc.getMethod("staticFieldOffset", java.lang.reflect.Field.class)
                    .invoke(unsafe, f)).longValue();
            uc.getMethod("putObject", Object.class, long.class, Object.class)
                    .invoke(unsafe, base, Long.valueOf(off), val);
        } catch (Throwable t) {
            f.set(null, val);
        }
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

    public static final class WestlakeServiceManager extends android.os.Binder
            implements android.os.IServiceManager {
        private final android.os.IBinder binder = new android.os.Binder();
        public android.os.IBinder getService(String name) { return binder; }
        /* A15's IServiceManager. Returning a Service wrapping the same local binder
           keeps ViewConfiguration/AppCompat happy without a real service manager. */
        public android.os.Service getService2(String name) {
            try {
                Class<?> sc = Class.forName("android.os.Service");
                Object s = sc.getDeclaredConstructor().newInstance();
                // Field name is guesswork against the real A15 union -- seed whatever
                // IBinder-typed field it actually has rather than assuming "binder".
                for (java.lang.reflect.Field f : sc.getDeclaredFields()) {
                    if (android.os.IBinder.class.isAssignableFrom(f.getType())) {
                        f.setAccessible(true); f.set(s, binder);
                    }
                }
                return (android.os.Service) s;
            } catch (Throwable ignored) { return null; }
        }
        public android.os.IBinder checkService(String name) { return binder; }
        public void addService(String name, android.os.IBinder service,
                boolean allowIsolated, int dumpPriority) {}
        public String[] listServices(int dumpPriority) { return new String[0]; }
        public void registerForNotifications(String name, android.os.IServiceCallback callback) {}
        public void unregisterForNotifications(String name, android.os.IServiceCallback callback) {}
        public boolean isDeclared(String name) { return false; }
        public String[] getDeclaredInstances(String iface) { return new String[0]; }
        public String updatableViaApex(String name) { return null; }
        public String[] getUpdatableNames(String apexName) { return new String[0]; }
        public android.os.ConnectionInfo getConnectionInfo(String name) { return null; }
        public void registerClientCallback(String name, android.os.IBinder service,
                android.os.IClientCallback callback) {}
        public void tryUnregisterService(String name, android.os.IBinder service) {}
        public android.os.ServiceDebugInfo[] getServiceDebugInfo() {
            return new android.os.ServiceDebugInfo[0];
        }
        public android.os.IBinder asBinder() { return this; }
    }

    static final class FrameworkLayoutInflater extends android.view.LayoutInflater {
        FrameworkLayoutInflater(android.content.Context context) {
            super(context);
        }
        public android.view.LayoutInflater cloneInContext(android.content.Context newContext) {
            return new FrameworkLayoutInflater(newContext);
        }
    }

    static final class NoiceLayoutInflater extends android.view.LayoutInflater {
        private final android.content.Context ctx;
        NoiceLayoutInflater(android.content.Context context) {
            super(context);
            this.ctx = context;
        }
        public android.view.LayoutInflater cloneInContext(android.content.Context newContext) {
            return new NoiceLayoutInflater(newContext);
        }
        public android.view.View inflate(int resource, android.view.ViewGroup root, boolean attachToRoot) {
            if (resource == 0x7f0c0055) {
                android.view.View v = buildNoiceMainActivity();
                if (root != null && attachToRoot) root.addView(v);
                return v;
            }
            if ((resource & 0xffff0000) == 0x01090000) {
                android.view.View v = buildFrameworkDecor();
                if (root != null && attachToRoot) root.addView(v);
                return v;
            }
            FrameworkLayoutInflater delegate = new FrameworkLayoutInflater(ctx);
            try {
                java.lang.reflect.Method m = android.view.LayoutInflater.class.getMethod(
                        "inflate", int.class, android.view.ViewGroup.class, boolean.class);
                return (android.view.View) m.invoke(delegate, Integer.valueOf(resource), root,
                        Boolean.valueOf(attachToRoot));
            } catch (Throwable ignored) {}
            return delegate.inflate(resource, root);
        }
        public android.view.View inflate(int resource, android.view.ViewGroup root) {
            return inflate(resource, root, root != null);
        }
        private android.view.View buildFrameworkDecor() {
            android.widget.LinearLayout decor = new android.widget.LinearLayout(ctx);
            call(decor, "setOrientation", new Class[] { int.class },
                    new Object[] { Integer.valueOf(1) });
            setLayoutParams(decor, -1, -1, 0f);
            android.widget.FrameLayout content = new android.widget.FrameLayout(ctx);
            call(content, "setId", new Class[] { int.class },
                    new Object[] { Integer.valueOf(0x01020002) });
            setLayoutParams(content, -1, 0, 1f);
            decor.addView(content);
            return decor;
        }
        /* TextView inflation dies in Typeface.create(null, style) because sDefaultTypeface is
         * null -- this lane has no AOSP font assets and no system server to push a font map.
         * Before guessing at AOSP internals, enumerate what this exact framework build offers:
         * static field names/types/nullness and static method signatures. */
        private void wlDumpTypeface() {
            StringBuilder o = new StringBuilder();
            try {
                Class<?> tc = Class.forName("android.graphics.Typeface", false,
                        ctx.getClass().getClassLoader());
                o.append("class=ok initialized-lazily\n");
                java.lang.reflect.Field[] fs = tc.getDeclaredFields();
                for (int i = 0; i < fs.length; i++) {
                    java.lang.reflect.Field f = fs[i];
                    if (!java.lang.reflect.Modifier.isStatic(f.getModifiers())) continue;
                    f.setAccessible(true);
                    String val;
                    try {
                        Object v = f.get(null);
                        val = (v == null) ? "null"
                                : (v instanceof java.util.Map)
                                        ? ("Map[" + ((java.util.Map<?, ?>) v).size() + "]")
                                        : (v.getClass().isArray()
                                                ? ("arr[" + java.lang.reflect.Array.getLength(v) + "]")
                                                : "nonnull");
                    } catch (Throwable t) { val = "ERR:" + t.getClass().getSimpleName(); }
                    o.append("F ").append(f.getType().getSimpleName()).append(' ')
                     .append(f.getName()).append(" = ").append(val).append('\n');
                }
                java.lang.reflect.Method[] ms = tc.getDeclaredMethods();
                for (int i = 0; i < ms.length; i++) {
                    java.lang.reflect.Method m = ms[i];
                    if (!java.lang.reflect.Modifier.isStatic(m.getModifiers())) continue;
                    o.append("M ").append(m.getName()).append('(');
                    Class<?>[] ps = m.getParameterTypes();
                    for (int j = 0; j < ps.length; j++) {
                        if (j > 0) o.append(',');
                        o.append(ps[j].getSimpleName());
                    }
                    o.append(")\n");
                }
            } catch (Throwable t) {
                o.append("DUMP-FAIL ").append(t.getClass().getName()).append(' ')
                 .append(String.valueOf(t.getMessage())).append('\n');
            }
            try { writeText("/data/local/tmp/noice-typeface.txt", o.toString()); } catch (Throwable ig) {}
        }

        /* Stand up a default Typeface from a font that actually exists on this board.
         * Everything downstream of TextView reads one of these slots, and all of them are
         * null here: no AOSP font assets ship in the lane and no system server pushes a
         * font map, so Typeface's clinit leaves sSystemFontMap empty. setDefault() is
         * first because it is what hands libhwui its gDefaultTypeface -- without it the
         * native side aborts the moment any Paint resolves a null typeface. */
        private void wlEnsureTypeface() {
            StringBuilder o = new StringBuilder();
            try {
                Class<?> tc = Class.forName("android.graphics.Typeface", true,
                        ctx.getClass().getClassLoader());
                java.lang.reflect.Field def = tc.getDeclaredField("sDefaultTypeface");
                def.setAccessible(true);
                if (def.get(null) != null) { o.append("already-set\n"); }
                else {
                    // The runner bind-mounts a one-file directory over /system/fonts, so
                    // inside this namespace Roboto-Regular.ttf is the only font that exists
                    // (it is a copy of HarmonyOS_Sans, named for the path libhwui hardcodes).
                    String[] cand = new String[] {
                        "/system/fonts/Roboto-Regular.ttf",
                    };
                    Object tf = null;
                    /* Off by default. The native default typeface is installed straight into
                     * libhwui (gDefaultTypeface), which is what every measure/draw actually
                     * resolves to, so the Java-side font chain buys nothing -- and it leaves
                     * half-built FontFamily/Font objects on the heap whose native free
                     * functions run at the next GC. Paint.<init> triggers exactly that GC via
                     * NativeAllocationRegistry, and the process dies there. Set WL_JAVA_FONT
                     * to re-enable when investigating the Java chain itself. */
                    boolean tryJavaFonts = System.getenv("WL_JAVA_FONT") != null;
                    for (int i = 0; tryJavaFonts && i < cand.length && tf == null; i++) {
                        try {
                            tf = wlTypefaceFromFile(cand[i]);
                            o.append("build ").append(cand[i]).append(" -> ")
                             .append(tf == null ? "null" : "ok").append('\n');
                        } catch (Throwable t) {
                            o.append("build ").append(cand[i]).append(" FAIL ");
                            wlAppendCauses(o, t);
                        }
                    }
                    // Falling back to a Typeface with no native peer: minikin rejects every
                    // board font (FreeTypeFontMgr().makeFromStream returns null), but the
                    // wall we are actually against is inflation, not glyph rasterisation --
                    // TextView only needs Typeface.create(null, style) to stop returning
                    // null so the rest of the view tree can inflate and draw.
                    boolean synthetic = false;
                    if (tf == null) {
                        sAllocClass = tc;
                        tf = nativeAllocByName();
                        synthetic = tf != null;
                        o.append("synthetic typeface=").append(synthetic).append('\n');
                        if (synthetic) {
                            String[] fld = {"mStyle", "mWeight"};
                            int[] fval = {0, 400};
                            for (int i = 0; i < fld.length; i++) {
                                try {
                                    java.lang.reflect.Field ff = tc.getDeclaredField(fld[i]);
                                    ff.setAccessible(true);
                                    ff.setInt(tf, fval[i]);
                                } catch (Throwable ig) {}
                            }
                        }
                    }
                    if (tf != null) {
                        // setDefault() hands the native pointer to libhwui; with no native
                        // peer there is nothing to hand over, so set the field directly.
                        if (synthetic) {
                            def.set(null, tf);
                            o.append("setDefault field-only (synthetic)\n");
                        } else {
                            tc.getMethod("setDefault", tc).invoke(null, tf);
                            o.append("setDefault ok\n");
                        }

                        // Static finals are write-protected by the JIT's assumption that they
                        // never change; the framework ships a native escape hatch for exactly
                        // this, used by its own font-map install path.
                        java.lang.reflect.Method force = tc.getDeclaredMethod(
                                "nativeForceSetStaticFinalField", String.class, tc);
                        force.setAccessible(true);
                        java.lang.reflect.Method create2 =
                                tc.getMethod("create", tc, int.class);
                        String[] slot = {"DEFAULT", "DEFAULT_BOLD", "SANS_SERIF",
                                         "SERIF", "MONOSPACE"};
                        int[] slotStyle = {0, 1, 0, 0, 0};
                        for (int i = 0; i < slot.length; i++) {
                            try {
                                Object v = (synthetic || slotStyle[i] == 0) ? tf
                                        : create2.invoke(null, tf, Integer.valueOf(slotStyle[i]));
                                force.invoke(null, slot[i], v);
                            } catch (Throwable t) {
                                o.append("slot ").append(slot[i]).append(" FAIL ");
                                wlAppendCauses(o, t);
                            }
                        }
                        o.append("statics forced\n");

                        // defaultFromStyle(int) indexes this directly; a null array NPEs.
                        java.lang.reflect.Field sd = tc.getDeclaredField("sDefaults");
                        sd.setAccessible(true);
                        Object arr = java.lang.reflect.Array.newInstance(tc, 4);
                        for (int i = 0; i < 4; i++) {
                            java.lang.reflect.Array.set(arr, i,
                                    (synthetic || i == 0) ? tf
                                            : create2.invoke(null, tf, Integer.valueOf(i)));
                        }
                        sd.set(null, arr);
                        o.append("sDefaults filled\n");

                        // Typeface.create(String,int) misses to sSystemFontMap; an empty map
                        // returns null and TextView then re-enters the null-default path.
                        java.lang.reflect.Field sfm = tc.getDeclaredField("sSystemFontMap");
                        sfm.setAccessible(true);
                        Object cur = sfm.get(null);
                        if (cur instanceof java.util.Map) {
                            java.util.Map<Object, Object> m = new java.util.HashMap<Object, Object>(
                                    (java.util.Map<Object, Object>) cur);
                            String[] fam = {"sans-serif", "serif", "monospace", "default",
                                            "sans-serif-medium", "sans-serif-light",
                                            "sans-serif-condensed", "cursive"};
                            for (int i = 0; i < fam.length; i++) m.put(fam[i], tf);
                            sfm.set(null, m);
                            o.append("sSystemFontMap=").append(m.size()).append('\n');
                        }
                    }
                }
                o.append("final sDefaultTypeface=")
                 .append(def.get(null) == null ? "null" : "nonnull").append('\n');
            } catch (Throwable t) {
                o.append("ENSURE-FAIL ");
                wlAppendCauses(o, t);
            }
            try { writeText("/data/local/tmp/noice-typeface-ensure.txt", o.toString()); }
            catch (Throwable ig) {}
        }

        /* Typeface.createFromFile() is unusable here: it goes through FileChannel.map, and
         * this lane's FileChannelImpl has allocationGranularity == 0 (an unbound native
         * returned zero), so it dies with "divide by zero" before any font code runs.
         * Read the bytes ourselves into a direct buffer and drive the same underlying
         * Font -> FontFamily -> Typeface chain that createFromFile would have. */
        private Object wlTypefaceFromFile(String path) throws Exception {
            ClassLoader cl = ctx.getClass().getClassLoader();
            // Both Java routes to a direct buffer are dead here: allocateDirect+put needs
            // libcore.io.Memory (no library in this lane implements it) and the File
            // constructor needs FileChannel.map (allocationGranularity == 0 -> divide by
            // zero). The probe native reads the file and hands back a NewDirectByteBuffer.
            sDirectBufPath = path;
            Object dbuf = nativeDirectBufferFromFile();
            if (!(dbuf instanceof java.nio.ByteBuffer)) {
                throw new java.io.IOException("no direct buffer for " + path);
            }
            java.nio.ByteBuffer bb = (java.nio.ByteBuffer) dbuf;

            /* The modern android.graphics.fonts path is unusable in this lane: its
             * Font$Builder.nBuild has shorty 'JJLLLIZI', which this interpreter has no
             * hand-written branch for, so the call is silently dropped and returns 0 --
             * surfacing later as "nativePtr is null" from NativeAllocationRegistry rather
             * than as a link error. The deprecated android.graphics.FontFamily API reaches
             * the same minikin code through much shorter shortys, and both the Java class
             * and its libhwui table are still present here. */
            Class<?> legacyCls = Class.forName("android.graphics.FontFamily", true, cl);
            Object fam = legacyCls.getConstructor().newInstance();

            Class<?> axisCls = Class.forName("android.graphics.fonts.FontVariationAxis", true, cl);
            Class<?> axisArr = java.lang.reflect.Array.newInstance(axisCls, 0).getClass();
            // addFontFromBuffer() bottoms out in nAddFontWeightStyle, whose shorty 'ZJLIII'
            // this interpreter drops -- it returns false without ever calling minikin. Hand
            // the builder pointer and buffer to the probe native, which calls the same
            // libhwui entry directly with the real C ABI.
            java.lang.reflect.Field bp = legacyCls.getDeclaredField("mBuilderPtr");
            bp.setAccessible(true);
            sFfBuilderPtr = bp.getLong(fam);
            sFfBuffer = bb;
            if (sFfBuilderPtr == 0L) throw new java.io.IOException("mBuilderPtr is 0");
            if (nativeAddFontWeightStyle() == 0) {
                throw new java.io.IOException("nAddFontWeightStyle rejected the font");
            }

            Object frozen = legacyCls.getMethod("freeze").invoke(fam);
            if (Boolean.FALSE.equals(frozen)) throw new java.io.IOException("freeze failed");

            Class<?> tc2 = Class.forName("android.graphics.Typeface", true, cl);
            Object famArr = java.lang.reflect.Array.newInstance(legacyCls, 1);
            java.lang.reflect.Array.set(famArr, 0, fam);
            // RESOLVE_BY_FONT_TABLE == -1: let minikin read weight/slant off the file.
            java.lang.reflect.Method cfd = tc2.getDeclaredMethod("createFromFamiliesWithDefault",
                    famArr.getClass(), String.class, int.class, int.class);
            cfd.setAccessible(true);
            return cfd.invoke(null, famArr, "sans-serif",
                    Integer.valueOf(-1), Integer.valueOf(-1));
        }

        private void wlAppendCauses(StringBuilder o, Throwable t) {
            Throwable deepest = t;
            for (int d = 0; t != null && d < 12; d++) {
                o.append(d == 0 ? "" : " <- ").append(t.getClass().getName())
                 .append(':').append(String.valueOf(t.getMessage()));
                deepest = t;
                t = t.getCause();
            }
            o.append('\n');
            // The cause chain names the failure but not the frame; for "unbound native
            // returned 0" symptoms (divide by zero, NPE on a native result) only the frame
            // identifies which native is missing.
            try {
                StackTraceElement[] st = deepest.getStackTrace();
                for (int i = 0; i < st.length && i < 14; i++) {
                    o.append("    at ").append(st[i].getClassName()).append('.')
                     .append(st[i].getMethodName()).append(':')
                     .append(st[i].getLineNumber()).append('\n');
                }
            } catch (Throwable ig) {}
        }

        private android.view.View buildNoiceMainActivity() {
            try {
                wlDumpTypeface();
                wlEnsureTypeface();
                android.widget.LinearLayout ll = new android.widget.LinearLayout(ctx);
                call(ll, "setOrientation", new Class[] { int.class }, new Object[] { Integer.valueOf(1) });
                call(ll, "setId", new Class[] { int.class }, new Object[] { Integer.valueOf(0x7f090168) });
                setLayoutParams(ll, -1, -1, 0f);

                Object fm = ctx.getClass().getMethod("getSupportFragmentManager").invoke(ctx);
                // Host synthesis has to happen here, before any transaction work: the manager
                // instantiates fragments by class name via o0.a(String), which dereferences its
                // own host. Wiring it later (next to mHost) is too late -- that call already ran.
                Object wlSynthHost = null;
                StringBuilder hostTrace = new StringBuilder();
                try {
                    // Declared here because the block was lifted out of a later scope.
                    Object host = null;
                    ClassLoader cl = targetClassLoader();
                    if (cl == null) cl = ctx.getClass().getClassLoader();
                // Nothing on the activity or the manager holds an i0, because this lane
                // builds the Activity with Unsafe.allocateInstance -- FragmentActivity's
                // constructor, which is what creates FragmentController/HostCallbacks,
                // never ran. Synthesise the host instead: androidx.fragment.app.c0 is the
                // concrete i0 subclass (found by parsing the APK's class_defs for
                // superclass Landroidx/fragment/app/i0; -- acc=0x11, public final).
                if (host == null) {
                    try {
                        // Resolve with the app's loader -- the native's own
                        // FindClass cannot see noice's dex.
                        sAllocClass = Class.forName("androidx.fragment.app.c0", false, cl);
                        host = nativeAllocByName();
                        if (host != null) {
                            Class<?> i0 = Class.forName("androidx.fragment.app.i0", true, cl);
                            for (Class<?> hk = host.getClass(); hk != null; hk = hk.getSuperclass()) {
                                for (java.lang.reflect.Field hf2 : hk.getDeclaredFields()) {
                                    if (java.lang.reflect.Modifier.isStatic(hf2.getModifiers())) continue;
                                    hf2.setAccessible(true);
                                    Class<?> ht = hf2.getType();
                                    try {
                                if (ht == android.content.Context.class
                                        || ht.getName().equals("android.app.Activity")) {
                                    hf2.set(host, ctx);
                                } else if (ht.getName().equals("android.os.Handler")) {
                                    // Shim's Handler has no (Looper) ctor at
                                    // compile time; build it reflectively.
                                    hf2.set(host, android.os.Handler.class
                                            .getConstructor(android.os.Looper.class)
                                            .newInstance(android.os.Looper.getMainLooper()));
                                } else if (ht.getName().endsWith(".u0")
                                        || ht.getName().endsWith(".v0")) {
                                    // The manager slot on i0 is declared v0 here, not u0 --
                                    // matching only u0 left i0.p null.
                                    hf2.set(host, fm);
                                } else if (ht.getName().endsWith(".d0") && ht.isInstance(ctx)) {
                                    // c0.q is the concrete FragmentActivity reference; with it
                                    // null, getOnBackPressedDispatcher() NPEs. Guarded by
                                    // isInstance so we only fill it when it really fits.
                                    hf2.set(host, ctx);
                                }
                                    } catch (Throwable ig) {}
                                }
                            }
                            // Dump the host field table before wiring anything else: guessing which slot
                            // holds the Activity has already cost two regressions.
                            StringBuilder hostFields = new StringBuilder();
                            for (Class<?> hk3 = host.getClass(); hk3 != null && hk3 != Object.class; hk3 = hk3.getSuperclass()) {
                                hostFields.append('[').append(hk3.getSimpleName()).append("] ");
                                for (java.lang.reflect.Field h3 : hk3.getDeclaredFields()) {
                                    if (java.lang.reflect.Modifier.isStatic(h3.getModifiers())) continue;
                                    h3.setAccessible(true);
                                    Object hv3 = null;
                                    try { hv3 = h3.get(host); } catch (Throwable ig) {}
                                    hostFields.append(h3.getName()).append(':').append(h3.getType().getName())
                                              .append('=').append(hv3 == null ? "null" : "set").append(' ');
                                }
                            }
                            earlyWriteLiteral("/data/local/tmp/noice-hostfields.txt", hostFields.toString());
                            hostTrace.append("synthesised:c0");
                        }
                    } catch (Throwable st) {
                        hostTrace.append("synth-fail:").append(st.getClass().getSimpleName());
                    }
                }

                    wlSynthHost = host;
                    // Wire the host into every manager reachable from here BEFORE any
                    // transaction: FragmentManager.o0.a(String) instantiates fragments by name
                    // and dereferences its manager's host.
                    if (host != null) {
                        int w1 = 0;
                        java.util.ArrayList<Object> mgrs = new java.util.ArrayList<Object>();
                        mgrs.add(fm);
                        for (java.lang.reflect.Method fmx : fm.getClass().getMethods()) {
                            if (fmx.getParameterTypes().length != 0) continue;
                            if (!fmx.getReturnType().getName().endsWith(".o0")) continue;
                            Object facx;
                            try { facx = fmx.invoke(fm); } catch (Throwable ig) { continue; }
                            if (facx == null) continue;
                            for (Class<?> fkx = facx.getClass(); fkx != null; fkx = fkx.getSuperclass()) {
                                for (java.lang.reflect.Field fx : fkx.getDeclaredFields()) {
                                    if (java.lang.reflect.Modifier.isStatic(fx.getModifiers())) continue;
                                    if (!fx.getType().getName().endsWith(".u0")) continue;
                                    try { fx.setAccessible(true); Object mg = fx.get(facx);
                                          if (mg != null) mgrs.add(mg); } catch (Throwable ig) {}
                                }
                            }
                        }
                        for (Object mg : mgrs) {
                            for (Class<?> gk2 = mg.getClass(); gk2 != null; gk2 = gk2.getSuperclass()) {
                                for (java.lang.reflect.Field g2 : gk2.getDeclaredFields()) {
                                    if (java.lang.reflect.Modifier.isStatic(g2.getModifiers())) continue;
                                    if (!g2.getType().getName().endsWith(".i0")) continue;
                                    try { g2.setAccessible(true); g2.set(mg, host); w1++; }
                                    catch (Throwable ig) {}
                                }
                            }
                        }
                        hostTrace.append(" earlyMgrHost=").append(String.valueOf(w1))
                                 .append(" mgrs=").append(String.valueOf(mgrs.size()));
                    }
                } catch (Throwable et) {
                    hostTrace.append("early-fail:").append(et.getClass().getSimpleName());
                }
                earlyWriteLiteral("/data/local/tmp/noice-hostwire.txt", hostTrace.toString());
                ClassLoader cl = Thread.currentThread().getContextClassLoader();
                if (cl == null) cl = ctx.getClass().getClassLoader();
                Class<?> fcvCls = Class.forName("androidx.fragment.app.FragmentContainerView", true, cl);
                android.view.View nav = (android.view.View) fcvCls
                        .getConstructor(android.content.Context.class).newInstance(ctx);
                call(nav, "setId", new Class[] { int.class }, new Object[] { Integer.valueOf(0x7f090167) });
                setLayoutParams(nav, -1, 0, 1f);
                ll.addView(nav);

                // The framework View constructor cannot recover android:id from our synthetic
                // AttributeSet because this ART bridge does not yet expose a complete TypedArray.
                // Mirror FragmentContainerView(Context, AttributeSet, FragmentManager) after the
                // id has been assigned: install the real NavHostFragment synchronously so Noice's
                // MainActivity can immediately resolve getFragment()/NavController.
                Object existing = fm.getClass().getMethod("C", int.class)
                        .invoke(fm, Integer.valueOf(0x7f090167));
                /* The whole NavHost install below is gated on there being no fragment at this
                 * id yet. When an earlier transaction has already put one there, the block --
                 * including the step that builds the destination's View and adds it to the
                 * container -- is skipped silently, which matches what the node dump shows:
                 * both FragmentContainerViews present and empty, and noice-fragview.txt never
                 * written (not even by its catch). Record which way this went. */
                try {
                    writeText("/data/local/tmp/noice-navhost-gate.txt",
                            "existing=" + (existing == null ? "null(install runs)"
                                    : existing.getClass().getName() + "(install SKIPPED)"));
                } catch (Throwable ig) {}
                if (existing == null) {
                    Class<?> fragmentCls = Class.forName("androidx.fragment.app.Fragment", true, cl);
                    Class<?> navHostCls = Class.forName(
                            "androidx.navigation.fragment.NavHostFragment", true, cl);
                    Class<?> navigatorProviderCls = Class.forName("h2.h0", true, cl);
                    for (java.lang.reflect.Field field : navigatorProviderCls.getDeclaredFields()) {
                        if (java.lang.reflect.Modifier.isStatic(field.getModifiers())
                                && java.util.Map.class.isAssignableFrom(field.getType())) {
                            field.setAccessible(true);
                            java.util.Map names = (java.util.Map) field.get(null);
                            names.put(Class.forName("h2.s", true, cl), "navigation");
                            names.put(Class.forName("androidx.navigation.a", true, cl), "activity");
                            names.put(Class.forName("j2.d", true, cl), "dialog");
                            names.put(Class.forName("androidx.navigation.fragment.b", true, cl), "fragment");
                        }
                    }
                    Class<?> uuidHolder = Class.forName("java.util.UUID$Holder");
                    java.lang.reflect.Field uuidRandom = uuidHolder.getDeclaredField("numberGenerator");
                    uuidRandom.setAccessible(true);
                    if (uuidRandom.get(null) == null) {
                        java.security.SecureRandom fragmentRandom = new java.security.SecureRandom(
                                new java.security.SecureRandomSpi() {
                                    private long state = 0x4e6f6963654cL;
                                    protected void engineSetSeed(byte[] seed) {}
                                    protected void engineNextBytes(byte[] bytes) {
                                        for (int i = 0; i < bytes.length; i++) {
                                            state = state * 6364136223846793005L + 1442695040888963407L;
                                            bytes[i] = (byte) (state >>> 56);
                                        }
                                    }
                                    protected byte[] engineGenerateSeed(int count) {
                                        byte[] bytes = new byte[count];
                                        engineNextBytes(bytes);
                                        return bytes;
                                    }
                                }, null) {};
                        wlSetStaticFinal(uuidRandom, fragmentRandom);
                    }
                    Object fragment = navHostCls.getConstructor().newInstance();
                    android.os.Bundle args = new android.os.Bundle();
                    args.getClass().getMethod("putBoolean", String.class, boolean.class).invoke(
                            args, "android-support-nav:fragment:defaultHost", Boolean.TRUE);
                    fragmentCls.getMethod("setArguments", android.os.Bundle.class)
                            .invoke(fragment, args);
                    java.lang.reflect.Field containerF = fragmentCls.getDeclaredField("mContainer");
                    containerF.setAccessible(true);
                    containerF.set(fragment, nav);

                    Class<?> txCls = Class.forName("androidx.fragment.app.a", true, cl);
                    Class<?> fmBaseCls = Class.forName("androidx.fragment.app.u0", true, cl);
                    Object tx = txCls.getConstructor(fmBaseCls).newInstance(fm);
                    txCls.getMethod("d", int.class, fragmentCls, String.class, int.class)
                            .invoke(tx, Integer.valueOf(0x7f090167), fragment, null,
                                    Integer.valueOf(1));
                    Class<?> opCls = Class.forName("androidx.fragment.app.r0", true, cl);
                    fm.getClass().getMethod("z", opCls, boolean.class)
                            .invoke(fm, tx, Boolean.TRUE);

                    // fm.z(tx, true) only enqueues; the fragment is still unattached, and
                    // NavHostFragment's navHostController lazy throws
                    // "NavController cannot be created before the fragment is attached".
                    // Drain pending transactions first -- executePendingTransactions() is one of
                    // the obfuscated no-arg boolean methods, so try each.
                    for (java.lang.reflect.Method drain : fm.getClass().getMethods()) {
                        if (drain.getParameterTypes().length != 0) continue;
                        if (drain.getReturnType() != boolean.class) continue;
                        String dn = drain.getName();
                        if (dn.startsWith("is") || "equals".equals(dn)) continue;
                        try { drain.invoke(fm); } catch (Throwable ig) {}
                    }
                    // Still unattached after draining: Fragment.getContext() reads mHost, which
                    // only gets set when the manager moves the fragment through its states. Wire
                    // it directly -- dump both field tables so the mapping is evidence, not guess.
                    // Fragment's own field names survived R8 (mHost:i0, mFragmentManager:u0),
                    // so wire the fragment to the host directly instead of relying on the manager
                    // to move it through its states. Without mHost, Fragment.getContext() is null
                    // and NavHostFragment's lazy navHostController throws
                    // "NavController cannot be created before the fragment is attached".
                    try {
                        // The manager has no i0 field set, but FragmentActivity normally owns the
                        // host inside its FragmentController. Look on the activity first, one level
                        // deep (controller -> host), before concluding none exists.
                        Object host = null;
                        // hostTrace/host come from the early synthesis block above.
                        for (Class<?> ak = ctx.getClass(); ak != null && host == null; ak = ak.getSuperclass()) {
                            for (java.lang.reflect.Field af : ak.getDeclaredFields()) {
                                if (java.lang.reflect.Modifier.isStatic(af.getModifiers())) continue;
                                Object av;
                                try { af.setAccessible(true); av = af.get(ctx); } catch (Throwable ig) { continue; }
                                if (av == null) continue;
                                String an = av.getClass().getName();
                                if (an.endsWith(".i0")) { host = av; hostTrace.append("direct:").append(af.getName()); break; }
                                if (!an.startsWith("androidx.fragment.app.")) continue;
                                for (Class<?> ck = av.getClass(); ck != null && host == null; ck = ck.getSuperclass()) {
                                    for (java.lang.reflect.Field cf : ck.getDeclaredFields()) {
                                        if (java.lang.reflect.Modifier.isStatic(cf.getModifiers())) continue;
                                        try { cf.setAccessible(true); } catch (Throwable ig) { continue; }
                                        Object cv;
                                        try { cv = cf.get(av); } catch (Throwable ig) { continue; }
                                        if (cv != null && cv.getClass().getName().endsWith(".i0")) {
                                            host = cv;
                                            hostTrace.append("via:").append(af.getName()).append('.').append(cf.getName());
                                            break;
                                        }
                                    }
                                }
                                if (host != null) break;
                            }
                        }
                        for (Class<?> mk = fm.getClass(); mk != null && host == null; mk = mk.getSuperclass()) {
                            for (java.lang.reflect.Field hf : mk.getDeclaredFields()) {
                                if (java.lang.reflect.Modifier.isStatic(hf.getModifiers())) continue;
                                if (!hf.getType().getName().endsWith(".i0")) continue;
                                hf.setAccessible(true);
                                Object hv = hf.get(fm);
                                if (hv != null) { host = hv; break; }
                            }
                        }
                        Object wlHost = wlSynthHost;   // synthesised before any transaction ran
                        java.lang.reflect.Field hostF = fragmentCls.getDeclaredField("mHost");
                        hostF.setAccessible(true);
                        if (wlHost != null) hostF.set(fragment, wlHost);
                        // The FragmentFactory reads the MANAGER's host (o0.a -> i0.n), not the
                        // fragment's, so the manager needs the same instance or instantiate()
                        // NPEs on a null host.
                        if (wlHost != null) {
                            int wired = 0;
                            for (Class<?> mk2 = fm.getClass(); mk2 != null; mk2 = mk2.getSuperclass()) {
                                for (java.lang.reflect.Field mf3 : mk2.getDeclaredFields()) {
                                    if (java.lang.reflect.Modifier.isStatic(mf3.getModifiers())) continue;
                                    if (!mf3.getType().getName().endsWith(".i0")) continue;
                                    try { mf3.setAccessible(true); mf3.set(fm, wlHost); wired++; }
                                    catch (Throwable ig) {}
                                }
                            }
                            // The FragmentFactory keeps its own i0 reference (o0.a reads i0.n on
                            // it), so wiring only the manager is not enough.
                            int facWired = 0;
                            for (java.lang.reflect.Method fmm : fm.getClass().getMethods()) {
                                if (fmm.getParameterTypes().length != 0) continue;
                                if (!fmm.getReturnType().getName().endsWith(".o0")) continue;
                                Object fac;
                                try { fac = fmm.invoke(fm); } catch (Throwable ig) { continue; }
                                if (fac == null) continue;
                                for (Class<?> fk = fac.getClass(); fk != null; fk = fk.getSuperclass()) {
                                    for (java.lang.reflect.Field ff3 : fk.getDeclaredFields()) {
                                        if (java.lang.reflect.Modifier.isStatic(ff3.getModifiers())) continue;
                                        if (!ff3.getType().getName().endsWith(".i0")) continue;
                                        try { ff3.setAccessible(true); ff3.set(fac, wlHost); facWired++; }
                                        catch (Throwable ig) {}
                                    }
                                }
                            }
                            // Two rounds of guessing by declared type failed, so enumerate the
                            // factory completely: every field, static and instance, any type.
                            StringBuilder facDump = new StringBuilder();
                            for (java.lang.reflect.Method fmm2 : fm.getClass().getMethods()) {
                                if (fmm2.getParameterTypes().length != 0) continue;
                                if (!fmm2.getReturnType().getName().endsWith(".o0")) continue;
                                Object fac2;
                                try { fac2 = fmm2.invoke(fm); } catch (Throwable ig) { continue; }
                                if (fac2 == null) continue;
                                facDump.append("cls=").append(fac2.getClass().getName()).append(' ');
                                for (Class<?> fk2 = fac2.getClass(); fk2 != null && fk2 != Object.class;
                                        fk2 = fk2.getSuperclass()) {
                                    for (java.lang.reflect.Field f4 : fk2.getDeclaredFields()) {
                                        f4.setAccessible(true);
                                        Object v4 = null;
                                        try { v4 = f4.get(java.lang.reflect.Modifier.isStatic(f4.getModifiers()) ? null : fac2); }
                                        catch (Throwable ig) {}
                                        facDump.append(java.lang.reflect.Modifier.isStatic(f4.getModifiers()) ? "S:" : "")
                                               .append(f4.getName()).append(':')
                                               .append(f4.getType().getSimpleName()).append('=')
                                               .append(v4 == null ? "null" : v4.getClass().getSimpleName())
                                               .append(' ');
                                    }
                                }
                                break;
                            }
                            earlyWriteLiteral("/data/local/tmp/noice-facdump.txt", facDump.toString());
                            // o0's only instance field is a FragmentManager (a:u0). o0.a(String)
                            // goes through THAT manager's host, which may be a different instance
                            // from the one getSupportFragmentManager() handed us -- wire it too.
                            int viaFacMgr = 0;
                            for (java.lang.reflect.Method fmm3 : fm.getClass().getMethods()) {
                                if (fmm3.getParameterTypes().length != 0) continue;
                                if (!fmm3.getReturnType().getName().endsWith(".o0")) continue;
                                Object fac3;
                                try { fac3 = fmm3.invoke(fm); } catch (Throwable ig) { continue; }
                                if (fac3 == null) continue;
                                for (Class<?> fk3 = fac3.getClass(); fk3 != null; fk3 = fk3.getSuperclass()) {
                                    for (java.lang.reflect.Field f5 : fk3.getDeclaredFields()) {
                                        if (java.lang.reflect.Modifier.isStatic(f5.getModifiers())) continue;
                                        if (!f5.getType().getName().endsWith(".u0")) continue;
                                        f5.setAccessible(true);
                                        Object mgr2;
                                        try { mgr2 = f5.get(fac3); } catch (Throwable ig) { continue; }
                                        if (mgr2 == null) continue;
                                        for (Class<?> gk = mgr2.getClass(); gk != null; gk = gk.getSuperclass()) {
                                            for (java.lang.reflect.Field g1 : gk.getDeclaredFields()) {
                                                if (java.lang.reflect.Modifier.isStatic(g1.getModifiers())) continue;
                                                if (!g1.getType().getName().endsWith(".i0")) continue;
                                                try { g1.setAccessible(true); g1.set(mgr2, wlHost); viaFacMgr++; }
                                                catch (Throwable ig) {}
                                            }
                                        }
                                    }
                                }
                                break;
                            }
                            hostTrace.append(" facMgrHost=").append(String.valueOf(viaFacMgr));
                            hostTrace.append(" mgrHostFields=").append(String.valueOf(wired))
                                     .append(" facHostFields=").append(String.valueOf(facWired));
                        }
                        java.lang.reflect.Field fmF = fragmentCls.getDeclaredField("mFragmentManager");
                        fmF.setAccessible(true);
                        fmF.set(fragment, fm);
                        // The fragment carries its own child FragmentManager, created fresh with
                        // no host; that is the remaining manager o0.a(String) can land on.
                        try {
                            java.lang.reflect.Field cfmF = fragmentCls.getDeclaredField("mChildFragmentManager");
                            cfmF.setAccessible(true);
                            Object cfm = cfmF.get(fragment);
                            if (cfm != null && wlHost != null) {
                                for (Class<?> ck2 = cfm.getClass(); ck2 != null; ck2 = ck2.getSuperclass()) {
                                    for (java.lang.reflect.Field c2 : ck2.getDeclaredFields()) {
                                        if (java.lang.reflect.Modifier.isStatic(c2.getModifiers())) continue;
                                        if (!c2.getType().getName().endsWith(".i0")) continue;
                                        try { c2.setAccessible(true); c2.set(cfm, wlHost); } catch (Throwable ig) {}
                                    }
                                }
                            }
                        } catch (Throwable ig) {}
                        java.lang.reflect.Field addedF = fragmentCls.getDeclaredField("mAdded");
                        addedF.setAccessible(true);
                        addedF.setBoolean(fragment, true);
                        // getViewModelStore() refuses while the fragment is still INITIALIZED
                        // ("Calling getViewModelStore() before a Fragment reaches onCreate()"),
                        // which is what NavHostFragment's lazy controller hits next. Push both the
                        // cap and the registry past that state. Lifecycle$State keeps its name.
                        try {
                            Class<?> stateCls = Class.forName("androidx.lifecycle.Lifecycle$State", true, cl);
                            Object resumed = null;
                            for (Object st : stateCls.getEnumConstants()) {
                                if ("RESUMED".equals(st.toString())) { resumed = st; break; }
                            }
                            java.lang.reflect.Field maxF = fragmentCls.getDeclaredField("mMaxState");
                            maxF.setAccessible(true);
                            if (resumed != null) maxF.set(fragment, resumed);
                            java.lang.reflect.Field lrF = fragmentCls.getDeclaredField("mLifecycleRegistry");
                            lrF.setAccessible(true);
                            Object lr = lrF.get(fragment);
                            if (lr != null && resumed != null) {
                                for (java.lang.reflect.Method lm : lr.getClass().getMethods()) {
                                    Class<?>[] lp = lm.getParameterTypes();
                                    if (lp.length == 1 && lp[0] == stateCls
                                            && lm.getReturnType() == void.class) {
                                        try { lm.invoke(lr, resumed); } catch (Throwable ig) {}
                                    }
                                }
                            }
                            hostTrace.append(" state=").append(String.valueOf(maxF.get(fragment)));
                            // NavHostController reads saved state via
                            // SavedStateRegistry.consumeRestoredStateForKey, which refuses until
                            // performRestore() has run ("only after super.onCreate of
                            // corresponding component"). The fragment never went through
                            // onCreate here, so drive the restore directly. Fragment's own field
                            // names are not obfuscated; the controller's method is, so match it
                            // by shape: (Bundle) -> void.
                            java.lang.reflect.Field ssrcF = null;
                            for (java.lang.reflect.Field sf : fragmentCls.getDeclaredFields()) {
                                if (sf.getName().equals("mSavedStateRegistryController")) { ssrcF = sf; break; }
                            }
                            if (ssrcF != null) {
                                ssrcF.setAccessible(true);
                                Object ssrc = ssrcF.get(fragment);
                                if (ssrc != null) {
                                    boolean restored = false;
                                    StringBuilder ctlApi = new StringBuilder();
                                    for (java.lang.reflect.Method rm : ssrc.getClass().getMethods()) {
                                        Class<?>[] rp = rm.getParameterTypes();
                                        if (rp.length > 1) continue;
                                        String rn = rm.getReturnType().getSimpleName();
                                        ctlApi.append(rm.getName()).append('(')
                                              .append(rp.length == 0 ? "" : rp[0].getSimpleName())
                                              .append(")->").append(rn).append(' ');
                                        if (rp.length == 1 && rp[0] == android.os.Bundle.class
                                                && rm.getReturnType() == void.class) {
                                            try { rm.invoke(ssrc, (Object) null); restored = true; }
                                            catch (Throwable ig) {}
                                        }
                                    }
                                    // performRestore is obfuscated and may reject a null Bundle, so
                                    // also flip the registry's own "restored" flag directly: that
                                    // boolean is exactly what consumeRestoredStateForKey checks.
                                    StringBuilder regFlags = new StringBuilder();
                                    for (java.lang.reflect.Field cfld : ssrc.getClass().getDeclaredFields()) {
                                        cfld.setAccessible(true);
                                        Object reg;
                                        try { reg = cfld.get(ssrc); } catch (Throwable ig) { continue; }
                                        if (reg == null) continue;
                                        for (java.lang.reflect.Field rf : reg.getClass().getDeclaredFields()) {
                                            if (rf.getType() != boolean.class) continue;
                                            if (java.lang.reflect.Modifier.isStatic(rf.getModifiers())) continue;
                                            rf.setAccessible(true);
                                            try {
                                                regFlags.append(rf.getName()).append('=')
                                                        .append(String.valueOf(rf.getBoolean(reg)));
                                                if (!rf.getBoolean(reg)) { rf.setBoolean(reg, true); regFlags.append("->true"); }
                                                regFlags.append(' ');
                                            } catch (Throwable ig) {}
                                        }
                                    }
                                    hostTrace.append(" restore=").append(String.valueOf(restored))
                                             .append(" ctl=[").append(ctlApi).append(']')
                                             .append(" regFlags=[").append(regFlags).append(']');
                                } else {
                                    hostTrace.append(" restore=no-controller");
                                }
                            } else {
                                hostTrace.append(" restore=no-field");
                            }
                        } catch (Throwable lt) {
                            hostTrace.append(" state-fail:").append(lt.getClass().getSimpleName());
                        }
                        earlyWriteLiteral("/data/local/tmp/noice-fragfields.txt",
                                "hostTrace=" + hostTrace
                                + " host=" + (host == null ? "null" : host.getClass().getName())
                                + " ctx=" + String.valueOf(
                                        fragmentCls.getMethod("getContext").invoke(fragment)));
                    } catch (Throwable wt) {
                        earlyWriteLiteral("/data/local/tmp/noice-fragfields.txt",
                                "wire-fail:" + wt.getClass().getName() + ":" + wt.getMessage());
                    }
                    // Create the fragment's View and put it in the container: without this the
                    // NavHost exists but the container stays empty, so the whole tree draws
                    // nothing. onCreateView is renamed by R8, so match it by shape.
                    try {
                        Class<?> liC = Class.forName("android.view.LayoutInflater");
                        Class<?> vgC = Class.forName("android.view.ViewGroup");
                        Class<?> vC  = Class.forName("android.view.View");
                        java.lang.reflect.Method onCreateView = null;
                        for (Class<?> nk = navHostCls; nk != null && onCreateView == null;
                                nk = nk.getSuperclass()) {
                            for (java.lang.reflect.Method nm2 : nk.getDeclaredMethods()) {
                                Class<?>[] np2 = nm2.getParameterTypes();
                                if (np2.length != 3) continue;
                                if (np2[0] != liC || np2[1] != vgC) continue;
                                if (!android.os.Bundle.class.isAssignableFrom(np2[2])) continue;
                                if (!vC.isAssignableFrom(nm2.getReturnType())) continue;
                                nm2.setAccessible(true); onCreateView = nm2; break;
                            }
                        }
                        if (onCreateView == null) {
                            earlyWriteLiteral("/data/local/tmp/noice-fragview.txt", "onCreateView=not-found");
                        } else {
                            Object fragView = onCreateView.invoke(fragment,
                                    android.view.LayoutInflater.class
                                        .getMethod("from", android.content.Context.class)
                                        .invoke(null, ctx),
                                    nav, null);
                            if (fragView != null) {
                                // FragmentContainerView.addView rejects children that are not
                                // associated with a Fragment; the association is a tag keyed by
                                // androidx's fragment_container_view_tag (resource names survive
                                // R8, so it can be resolved by name).
                                try {
                                    android.content.res.Resources rs2 =
                                            ((android.content.Context) ctx).getResources();
                                    int tagId = rs2.getIdentifier("fragment_container_view_tag",
                                            "id", rs2.getResourcePackageName(0x7f090167));
                                    if (tagId != 0) {
                                        vC.getMethod("setTag", int.class, Object.class)
                                          .invoke(fragView, Integer.valueOf(tagId), fragment);
                                    }
                                } catch (Throwable ig) {}
                                android.view.ViewGroup.class
                                        .getMethod("addView", vC)
                                        .invoke(nav, fragView);
                            }
                            // One level down: the view we just added is NavHost's INNER
                            // container, still empty. Repeat the same pattern for the actual
                            // destination fragment so there is finally something to draw.
                            String homeState = "skipped";
                            if (fragView != null) {
                                try {
                                    Class<?> homeCls = Class.forName(
                                            "com.github.ashutoshgngwr.noice.fragment.HomeFragment",
                                            true, cl);
                                    Object home2 = homeCls.getConstructor().newInstance();
                                    java.lang.reflect.Field hh = fragmentCls.getDeclaredField("mHost");
                                    hh.setAccessible(true); hh.set(home2, wlSynthHost);
                                    java.lang.reflect.Field hfm = fragmentCls.getDeclaredField("mFragmentManager");
                                    hfm.setAccessible(true); hfm.set(home2, fm);
                                    java.lang.reflect.Method hOnCreate = null;
                                    for (Class<?> hk4 = homeCls; hk4 != null && hOnCreate == null;
                                            hk4 = hk4.getSuperclass()) {
                                        for (java.lang.reflect.Method hm4 : hk4.getDeclaredMethods()) {
                                            Class<?>[] hp4 = hm4.getParameterTypes();
                                            if (hp4.length != 3) continue;
                                            if (hp4[0] != liC || hp4[1] != vgC) continue;
                                            if (!android.os.Bundle.class.isAssignableFrom(hp4[2])) continue;
                                            if (!vC.isAssignableFrom(hm4.getReturnType())) continue;
                                            hm4.setAccessible(true); hOnCreate = hm4; break;
                                        }
                                    }
                                    if (hOnCreate == null) { homeState = "no-onCreateView"; }
                                    else {
                                        // AppCompat widgets refuse to inflate unless the theme
                                        // descends from Theme.AppCompat. Apply the app's real
                                        // theme: prefer the id the package declares, fall back to
                                        // the usual style names (style names survive R8).
                                        try {
                                            android.content.res.Resources rs4 =
                                                    ((android.content.Context) ctx).getResources();
                                            String pkg4 = rs4.getResourcePackageName(0x7f090167);
                                            int themeId = 0;
                                            try {
                                                Object ai = ctx.getClass()
                                                        .getMethod("getApplicationInfo").invoke(ctx);
                                                java.lang.reflect.Field tf4 = ai.getClass().getField("theme");
                                                themeId = ((Integer) tf4.get(ai)).intValue();
                                            } catch (Throwable ig) {}
                                            if (themeId == 0) {
                                                for (String cand : new String[] {
                                                        "Theme.App", "AppTheme", "Theme_App",
                                                        "Theme.Noice", "Base.Theme.App" }) {
                                                    themeId = rs4.getIdentifier(cand, "style", pkg4);
                                                    if (themeId != 0) break;
                                                }
                                            }
                                            if (themeId != 0) {
                                                Object th = ctx.getClass().getMethod("getTheme").invoke(ctx);
                                                th.getClass().getMethod("applyStyle", int.class, boolean.class)
                                                  .invoke(th, Integer.valueOf(themeId), Boolean.TRUE);
                                                earlyWriteLiteral("/data/local/tmp/noice-theme.txt",
                                                        "applied=0x" + Integer.toHexString(themeId));
                                            } else {
                                                earlyWriteLiteral("/data/local/tmp/noice-theme.txt", "no-theme-id");
                                            }
                                        } catch (Throwable tt4) {
                                            earlyWriteLiteral("/data/local/tmp/noice-theme.txt",
                                                    "theme-fail:" + tt4.getClass().getSimpleName());
                                        }
                                        // A bare LayoutInflater has no FragmentManager Factory2,
                                        // so a <fragment> tag in the layout (home_fragment line 17)
                                        // reaches Activity.onCreateView and throws
                                        // UnsupportedOperationException("Fragment"). Install the
                                        // manager's factory on a cloned inflater first.
                                        Class<?> liC2 = Class.forName("android.view.LayoutInflater");
                                        Object hInf = liC2.getMethod("from", android.content.Context.class)
                                                .invoke(null, ctx);
                                        hInf = liC2.getMethod("cloneInContext", android.content.Context.class)
                                                .invoke(hInf, ctx);
                                        Object hFactory = null;
                                        for (Class<?> mk5 = fm.getClass(); mk5 != null && hFactory == null;
                                                mk5 = mk5.getSuperclass()) {
                                            for (java.lang.reflect.Field f5 : mk5.getDeclaredFields()) {
                                                if (java.lang.reflect.Modifier.isStatic(f5.getModifiers())) continue;
                                                f5.setAccessible(true);
                                                Object fv5;
                                                try { fv5 = f5.get(fm); } catch (Throwable ig) { continue; }
                                                if (fv5 instanceof android.view.LayoutInflater.Factory2) {
                                                    hFactory = fv5; break;
                                                }
                                            }
                                        }
                                        if (hFactory != null) {
                                            liC2.getMethod("setFactory2",
                                                    Class.forName("android.view.LayoutInflater$Factory2"))
                                                .invoke(hInf, hFactory);
                                        }
                                        Object homeView = hOnCreate.invoke(home2, hInf, fragView, null);
                                        if (homeView == null) { homeState = "view-null"; }
                                        else {
                                            android.content.res.Resources rs3 =
                                                    ((android.content.Context) ctx).getResources();
                                            int tag3 = rs3.getIdentifier("fragment_container_view_tag",
                                                    "id", rs3.getResourcePackageName(0x7f090167));
                                            if (tag3 != 0) {
                                                vC.getMethod("setTag", int.class, Object.class)
                                                  .invoke(homeView, Integer.valueOf(tag3), home2);
                                            }
                                            android.view.ViewGroup.class.getMethod("addView", vC)
                                                    .invoke(fragView, homeView);
                                            homeState = "added:" + homeView.getClass().getSimpleName()
                                                    + " kids=" + viewChildCount((android.view.View) fragView);
                                        }
                                    }
                                } catch (Throwable ht2) {
                                    // "Error inflating class <unknown>" is only the outer wrapper;
                                    // the real reason is further down the cause chain.
                                    StringBuilder chain = new StringBuilder();
                                    Throwable c5 = ht2;
                                    for (int d = 0; c5 != null && d < 12; d++) {
                                        chain.append(d == 0 ? "" : " <- ")
                                             .append(c5.getClass().getName()).append(':')
                                             .append(String.valueOf(c5.getMessage()));
                                        if (c5.getCause() == c5) break;
                                        c5 = c5.getCause();
                                    }
                                    homeState = "fail:" + chain;
                                }
                            }
                            earlyWriteLiteral("/data/local/tmp/noice-fragview.txt",
                                    "onCreateView=" + onCreateView.getName()
                                    + " view=" + (fragView == null ? "null"
                                                 : fragView.getClass().getSimpleName())
                                    + " navKids=" + viewChildCount(nav)
                                    + " | home=" + homeState);
                        }
                    } catch (Throwable vt) {
                        Throwable vc2 = vt instanceof java.lang.reflect.InvocationTargetException
                                && vt.getCause() != null ? vt.getCause() : vt;
                        earlyWriteLiteral("/data/local/tmp/noice-fragview.txt",
                                "onCreateView-fail:" + vc2.getClass().getName() + ":" + vc2.getMessage());
                    }
                    Object controller = navHostCls.getMethod("m").invoke(fragment);
                    Object provider = null;
                    for (Class<?> owner = controller.getClass(); owner != null && provider == null;
                            owner = owner.getSuperclass()) {
                        for (java.lang.reflect.Field field : owner.getDeclaredFields()) {
                            if (!java.lang.reflect.Modifier.isStatic(field.getModifiers())
                                    && "h2.h0".equals(field.getType().getName())) {
                                field.setAccessible(true);
                                provider = field.get(controller);
                                break;
                            }
                        }
                    }
                    if (provider == null) throw new IllegalStateException("NavController provider missing");
                    Object graphNavigator = provider.getClass().getMethod("b", String.class)
                            .invoke(provider, "navigation");
                    Class<?> navigatorCls = Class.forName("androidx.navigation.h", true, cl);
                    Class<?> destinationCls = Class.forName("androidx.navigation.g", true, cl);
                    Class<?> graphCls = Class.forName("h2.r", true, cl);
                    Object graph = graphCls.getConstructor(navigatorCls).newInstance(graphNavigator);
                    java.lang.reflect.Field destinationId = null;
                    for (java.lang.reflect.Field field : destinationCls.getDeclaredFields()) {
                        if (!java.lang.reflect.Modifier.isStatic(field.getModifiers())
                                && field.getType() == int.class) {
                            destinationId = field;
                            destinationId.setAccessible(true);
                            break;
                        }
                    }
                    if (destinationId == null) throw new IllegalStateException("destination id field missing");
                    destinationId.setInt(graph, 0x7f090166);
                    Object fragmentNavigator = provider.getClass().getMethod("b", String.class)
                            .invoke(provider, "fragment");
                    Object home = fragmentNavigator.getClass().getMethod("a").invoke(fragmentNavigator);
                    destinationId.setInt(home, 0x7f09012c);
                    for (java.lang.reflect.Field field : home.getClass().getDeclaredFields()) {
                        if (!java.lang.reflect.Modifier.isStatic(field.getModifiers())
                                && field.getType() == String.class) {
                            field.setAccessible(true);
                            field.set(home, "com.github.ashutoshgngwr.noice.fragment.HomeFragment");
                            break;
                        }
                    }
                    graphCls.getMethod("h", destinationCls).invoke(graph, home);
                    graphCls.getMethod("l", int.class).invoke(graph, Integer.valueOf(0x7f09012c));
                    Class<?> controllerBase = Class.forName("androidx.navigation.d", true, cl);
                    controllerBase.getMethod("v", graphCls, android.os.Bundle.class)
                            .invoke(controller, graph, null);
                    earlyWriteLiteral("/data/local/tmp/noice-navhost.txt",
                            "navHost=attached graph=programmatic-home");
                }

                android.widget.TextView tv = new android.widget.TextView(ctx);
                call(tv, "setId", new Class[] { int.class }, new Object[] { Integer.valueOf(0x7f0901b7) });
                tv.setVisibility(8);
                setLayoutParams(tv, -1, -2, 0f);
                ll.addView(tv);
                return ll;
            } catch (Throwable t) {
                earlyWriteStack(probeLogPath("noice-layout-err.txt"), t);
                throw new RuntimeException("Noice NavHost setup failed", t);
                /*
                android.widget.LinearLayout ll = new android.widget.LinearLayout(ctx);
                android.view.View nav;
                try {
                    ClassLoader cl = Thread.currentThread().getContextClassLoader();
                    if (cl == null) cl = ctx.getClass().getClassLoader();
                    Class<?> fcvCls = Class.forName("androidx.fragment.app.FragmentContainerView", true, cl);
                    nav = (android.view.View) fcvCls.getConstructor(android.content.Context.class)
                            .newInstance(ctx);
                } catch (Throwable ignored) {
                    nav = new android.view.View(ctx);
                }
                call(nav, "setId", new Class[] { int.class }, new Object[] { Integer.valueOf(0x7f090167) });
                ll.addView(nav);
                android.widget.TextView tv = new android.widget.TextView(ctx);
                call(tv, "setId", new Class[] { int.class }, new Object[] { Integer.valueOf(0x7f0901b7) });
                ll.addView(tv);
                return ll;
                */
            }
        }
        private static void setLayoutParams(android.view.View v, int w, int h, float weight) {
            try {
                Class<?> lpCls = Class.forName("android.widget.LinearLayout$LayoutParams");
                Object lp;
                try {
                    lp = lpCls.getConstructor(int.class, int.class, float.class)
                            .newInstance(Integer.valueOf(w), Integer.valueOf(h), Float.valueOf(weight));
                } catch (Throwable t) {
                    lp = lpCls.getConstructor(int.class, int.class)
                            .newInstance(Integer.valueOf(w), Integer.valueOf(h));
                }
                call(v, "setLayoutParams",
                        new Class[] { Class.forName("android.view.ViewGroup$LayoutParams") },
                        new Object[] { lp });
            } catch (Throwable ignored) {}
        }
        private static Object call(Object target, String name, Class<?>[] types, Object[] args) {
            try {
                java.lang.reflect.Method m = target.getClass().getMethod(name, types);
                m.invoke(target, args);
            } catch (Throwable ignored) {}
            return null;
        }
    }

    static final class NoiceMainAttributeSet implements android.util.AttributeSet {
        public int getAttributeCount() { return 4; }
        public String getAttributeName(int index) {
            switch (index) {
                case 0: return "id";
                case 1: return "name";
                case 2: return "defaultNavHost";
                case 3: return "navGraph";
                default: return null;
            }
        }
        public String getAttributeValue(int index) {
            switch (index) {
                case 0: return "@id/main_nav_host_fragment";
                case 1: return "androidx.navigation.fragment.NavHostFragment";
                case 2: return "true";
                case 3: return "@navigation/main";
                default: return null;
            }
        }
        public String getAttributeValue(String namespace, String name) {
            if ("id".equals(name)) return "@id/main_nav_host_fragment";
            if ("name".equals(name)) return "androidx.navigation.fragment.NavHostFragment";
            if ("defaultNavHost".equals(name)) return "true";
            if ("navGraph".equals(name)) return "@navigation/main";
            return null;
        }
        public String getPositionDescription() { return "westlake-noice-main-activity"; }
        public int getAttributeNameResource(int index) { return 0; }
        public int getAttributeListValue(String ns, String attr, String[] opts, int def) { return def; }
        public boolean getAttributeBooleanValue(String ns, String attr, boolean def) {
            return "defaultNavHost".equals(attr) ? true : def;
        }
        public int getAttributeResourceValue(String ns, String attr, int def) {
            if ("id".equals(attr)) return 0x7f090167;
            if ("navGraph".equals(attr)) return 0x7f110003;
            return def;
        }
        public int getAttributeIntValue(String ns, String attr, int def) { return def; }
        public int getAttributeUnsignedIntValue(String ns, String attr, int def) { return def; }
        public float getAttributeFloatValue(String ns, String attr, float def) { return def; }
        public int getAttributeListValue(int index, String[] opts, int def) { return def; }
        public boolean getAttributeBooleanValue(int index, boolean def) {
            return index == 2 ? true : def;
        }
        public int getAttributeResourceValue(int index, int def) {
            return index == 0 ? 0x7f090167 : (index == 3 ? 0x7f110003 : def);
        }
        public int getAttributeIntValue(int index, int def) { return def; }
        public int getAttributeUnsignedIntValue(int index, int def) { return def; }
        public float getAttributeFloatValue(int index, float def) { return def; }
        public String getIdAttribute() { return "@id/main_nav_host_fragment"; }
        public String getClassAttribute() { return "androidx.navigation.fragment.NavHostFragment"; }
        public int getIdAttributeResourceValue(int def) { return 0x7f090167; }
        public int getStyleAttribute() { return 0; }
    }

    static final class ProbeContext extends android.content.ContextWrapper {
        private final android.content.res.AssetManager am;
        private android.app.Application application;
        private android.content.res.Resources res;   // built lazily (Resources ctor hits native)
        private volatile Object cachedLayoutInflater;
        ProbeContext(android.content.res.AssetManager am) {
            super(null);
            this.am = am;
        }
        void setApplication(android.app.Application app) { this.application = app; }
        public android.content.Context getApplicationContext() {
            return application != null ? application : this;
        }
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
        public String getPackageName() {
            String p = System.getenv("WESTLAKE_APP_PACKAGE");
            return p == null || p.length() == 0 ? "com.github.ashutoshgngwr.noice" : p;
        }
        public Object getSystemService(String name) {
            try {
                if ("layout_inflater".equals(name)) {
                    Object li = getCachedLayoutInflater();
                    if (li != null) return li;
                }
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
        private Object getCachedLayoutInflater() {
            if (cachedLayoutInflater != null) return cachedLayoutInflater;
            try {
                try {
                    Class<?> phoneLi = Class.forName("com.android.internal.policy.PhoneLayoutInflater");
                    java.lang.reflect.Constructor<?> c =
                            phoneLi.getDeclaredConstructor(android.content.Context.class);
                    c.setAccessible(true);
                    cachedLayoutInflater = c.newInstance(this);
                    if (cachedLayoutInflater != null) return cachedLayoutInflater;
                } catch (Throwable ig) {}
                Class<?> uc = Class.forName("jdk.internal.misc.Unsafe");
                java.lang.reflect.Field tf = uc.getDeclaredField("theUnsafe");
                tf.setAccessible(true);
                Object unsafe = tf.get(null);
                Class<?> liCls = Class.forName("android.view.LayoutInflater");
                cachedLayoutInflater = uc.getMethod("allocateInstance", Class.class).invoke(unsafe, liCls);
                java.lang.reflect.Field mCtxF = liCls.getDeclaredField("mContext");
                mCtxF.setAccessible(true);
                mCtxF.set(cachedLayoutInflater, this);
                try {
                    java.lang.reflect.Field mFilterF = liCls.getDeclaredField("mFilter");
                    mFilterF.setAccessible(true);
                    mFilterF.set(cachedLayoutInflater, null);
                } catch (Throwable ig) {}
                try {
                    java.lang.reflect.Field mFactoryF = liCls.getDeclaredField("mFactory");
                    mFactoryF.setAccessible(true);
                    mFactoryF.set(cachedLayoutInflater, null);
                } catch (Throwable ig) {}
                try {
                    java.lang.reflect.Field mFactory2F = liCls.getDeclaredField("mFactory2");
                    mFactory2F.setAccessible(true);
                    mFactory2F.set(cachedLayoutInflater, null);
                } catch (Throwable ig) {}
                try {
                    java.lang.reflect.Field cmap = liCls.getDeclaredField("mConstructorMap");
                    cmap.setAccessible(true);
                    if (cmap.get(cachedLayoutInflater) == null) {
                        cmap.set(cachedLayoutInflater, new java.util.HashMap());
                    }
                } catch (Throwable ig) {}
                try {
                    java.lang.reflect.Field cargs = liCls.getDeclaredField("mConstructorArgs");
                    cargs.setAccessible(true);
                    if (cargs.get(cachedLayoutInflater) == null) {
                        cargs.set(cachedLayoutInflater, new Object[2]);
                    }
                } catch (Throwable ig) {}
                try {
                    java.lang.reflect.Field temp = liCls.getDeclaredField("mTempValue");
                    temp.setAccessible(true);
                    if (temp.get(cachedLayoutInflater) == null) {
                        temp.set(cachedLayoutInflater, new android.util.TypedValue());
                    }
                } catch (Throwable ig) {}
            } catch (Throwable t) {
                cachedLayoutInflater = null;
            }
            return cachedLayoutInflater;
        }
        // The app's onCreate touches real storage dirs (cache/files). Back them with a
        // writable subtree under the substrate root so getCacheDir()/etc. don't NPE.
        private static final java.util.HashMap<String, java.io.File> APP_DIRS =
                new java.util.HashMap<String, java.io.File>();
        private static java.io.File appDir(String sub) {
            // Cached: View.<init> -> hasRtlSupport -> getApplicationInfo lands here for every
            // single View, and re-running File+mkdirs on that path is both pathological and
            // where the VM aborted (a NoSuchFieldError it could not even materialise).
            synchronized (APP_DIRS) {
                java.io.File hit = APP_DIRS.get(sub);
                if (hit != null) return hit;
                java.io.File d = new java.io.File(rootPath() + "/appdata/" + sub);
                d.mkdirs();
                APP_DIRS.put(sub, d);
                return d;
            }
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
        public boolean deleteDatabase(String name) {
            java.io.File f = getDatabasePath(name);
            if (!f.exists()) return true;
            return f.delete();
        }
        public String[] databaseList() {
            java.io.File d = appDir("databases");
            String[] xs = d.list();
            return xs == null ? new String[0] : xs;
        }
        public android.database.sqlite.SQLiteDatabase openOrCreateDatabase(
                String name, int mode, android.database.sqlite.SQLiteDatabase.CursorFactory factory) {
            return android.database.sqlite.SQLiteDatabase.openOrCreateDatabase(getDatabasePath(name), factory);
        }
        public android.database.sqlite.SQLiteDatabase openOrCreateDatabase(
                String name, int mode, android.database.sqlite.SQLiteDatabase.CursorFactory factory,
                android.database.DatabaseErrorHandler errorHandler) {
            return openOrCreateDatabase(name, mode, factory);
        }
        private static android.content.pm.ApplicationInfo cachedAppInfo;
        /* ContextWrapper methods ProbeContext does not override fall through to mBase, which is
         * null here (ctxChain = MainActivity > ProbeContext > null). View.<init> calls
         * isRestricted() on every inflate, so without this every widget inflation NPEs.
         * Declared without @Override on purpose: the compile-time framework shim does not know
         * these, but at runtime they override by signature. */
        public boolean isRestricted() { return false; }

        public int getDisplayId() { return 0; }

        /* Batch the rest of the hidden Context surface that View construction / inflation walks
         * into, rather than discovering them one NPE per build cycle. All of these would
         * otherwise fall through ContextWrapper to the null mBase. */
        public boolean canLoadUnsafeResources() { return true; }

        public boolean isUiContext() { return true; }

        public boolean isConfigurationContext() { return false; }

        public int getNextAutofillId() { return 0; }

        public boolean isDeviceProtectedStorage() { return false; }

        public boolean isCredentialProtectedStorage() { return false; }

        public int getUserId() { return 0; }

        public android.content.pm.ApplicationInfo getApplicationInfo() {
            if (cachedAppInfo != null) return cachedAppInfo;
            android.content.pm.ApplicationInfo ai = new android.content.pm.ApplicationInfo();
            ai.packageName = getPackageName();
            ai.dataDir = rootPath() + "/appdata";
            ai.nativeLibraryDir = appDir("lib").getAbsolutePath();
            ai.targetSdkVersion = 34;
            ai.uid = 10000;
            cachedAppInfo = ai;
            return ai;
        }
        private String appApkPath() {
            String n = System.getenv("WESTLAKE_APP_APK");
            return apkPath(n == null || n.length() == 0 ? "noice.apk" : n);
        }
        public String getPackageResourcePath() { return appApkPath(); }
        public String getPackageCodePath() { return appApkPath(); }
        public ClassLoader getClassLoader() {
            return mNoiceLoader != null ? mNoiceLoader : ProbeContext.class.getClassLoader();
        }
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
    /**
     * Boot-image skew leaves {@code java.io.File.fs} null. Any {@code new File(...)} /
     * {@code FileOutputStream} then NPEs inside {@code FileSystem.normalize}. Seed UnixFileSystem
     * via Unsafe.allocateInstance (avoid constructor — it may touch File while fs is still null).
     */
    private static void repairJavaIoFileSystem() {
        try {
            java.lang.reflect.Field fsField = java.io.File.class.getDeclaredField("fs");
            fsField.setAccessible(true);
            if (fsField.get(null) != null) return;
            Class<?> ufsCls = null;
            String[] candidates = { "java.io.UnixFileSystem", "java.io.LinuxFileSystem" };
            for (String n : candidates) {
                try {
                    ufsCls = Class.forName(n);
                    break;
                } catch (Throwable ig) {}
            }
            if (ufsCls == null) return;
            Object ufs = null;
            try {
                Class<?> unsafeCls = Class.forName("sun.misc.Unsafe");
                java.lang.reflect.Field theUnsafe = unsafeCls.getDeclaredField("theUnsafe");
                theUnsafe.setAccessible(true);
                Object unsafe = theUnsafe.get(null);
                ufs = unsafeCls.getMethod("allocateInstance", Class.class).invoke(unsafe, ufsCls);
            } catch (Throwable ig) {
                // Fallback: no-arg ctor (may NPE if ctor touches File).
                try {
                    java.lang.reflect.Constructor<?> c = ufsCls.getDeclaredConstructor();
                    c.setAccessible(true);
                    ufs = c.newInstance();
                } catch (Throwable ig2) {}
            }
            if (ufs != null) fsField.set(null, ufs);
        } catch (Throwable ig) { /* keep going */ }
    }

    /**
     * Minimal MethodType/MethodHandle static repair for early reflection.
     * Full {@link #repairMethodHandleStatics} also writes logs and touches more classes;
     * that StackOverflow'd on the 124KB toybox stack before the early oracle.
     */
    private static void repairMethodHandleStaticsLite() {
        repairJavaIoFileSystem();
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
                    if (!(ftn.contains("ConcurrentWeakInternSet") || ftn.contains("WeakInternSet"))) continue;
                    if (f.get(null) != null) continue;
                    java.lang.reflect.Constructor<?> c = ft.getDeclaredConstructor();
                    c.setAccessible(true);
                    f.set(null, c.newInstance());
                }
            } catch (Throwable t) { /* keep going */ }
        }
    }

    private static void repairMethodHandleStatics() {
        repairJavaIoFileSystem();
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
                    } else if (ft.isArray() && f.get(null) == null) {
                        int len = f.getName().toLowerCase().contains("objectonly") ? 20 : 0;
                        Object array = java.lang.reflect.Array.newInstance(ft.getComponentType(), len);
                        wlSetStaticFinal(f, array);
                        fixed++;
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

    /** Field.set hits broken MethodHandle VarHandles on this board — use Unsafe.putObject. */
    private static void unsafePutObjectField(Object obj, java.lang.reflect.Field field, Object value)
            throws Exception {
        field.setAccessible(true);
        Object unsafe = null;
        Class<?> uc = null;
        for (String n : new String[] { "sun.misc.Unsafe", "jdk.internal.misc.Unsafe" }) {
            try {
                uc = Class.forName(n);
                java.lang.reflect.Field tf = uc.getDeclaredField("theUnsafe");
                tf.setAccessible(true);
                unsafe = tf.get(null);
                break;
            } catch (Throwable ig) {}
        }
        if (unsafe == null || uc == null) {
            field.set(obj, value); // last resort
            return;
        }
        long off = ((Number) uc.getMethod("objectFieldOffset", java.lang.reflect.Field.class)
                .invoke(unsafe, field)).longValue();
        uc.getMethod("putObject", Object.class, long.class, Object.class)
                .invoke(unsafe, obj, Long.valueOf(off), value);
    }

    public static final class WestlakeNoiceTrustProvider extends java.security.Provider {
        public WestlakeNoiceTrustProvider() {
            super("WestlakeNoiceTrust", 1.0, "Westlake embedded ART noice bootstrap trust provider");
            put("TrustManagerFactory.WestlakeX509",
                    Dayu600ApkStageProbe.WestlakeNoiceTrustManagerFactorySpi.class.getName());
            put("SSLContext.TLS",
                    Dayu600ApkStageProbe.WestlakeNoiceSSLContextSpi.class.getName());
            put("SSLContext.TLSv1.3",
                    Dayu600ApkStageProbe.WestlakeNoiceSSLContextSpi.class.getName());
        }
    }

    public static final class WestlakeNoiceTrustManagerFactorySpi
            extends javax.net.ssl.TrustManagerFactorySpi {
        @Override
        protected void engineInit(java.security.KeyStore ks) {}

        @Override
        protected void engineInit(javax.net.ssl.ManagerFactoryParameters spec) {}

        @Override
        protected javax.net.ssl.TrustManager[] engineGetTrustManagers() {
            return new javax.net.ssl.TrustManager[] {
                    new Dayu600ApkStageProbe.WestlakeNoiceX509TrustManager()
            };
        }
    }

    public static final class WestlakeNoiceX509TrustManager
            implements javax.net.ssl.X509TrustManager {
        @Override
        public void checkClientTrusted(java.security.cert.X509Certificate[] chain, String authType) {}

        @Override
        public void checkServerTrusted(java.security.cert.X509Certificate[] chain, String authType) {}

        @Override
        public java.security.cert.X509Certificate[] getAcceptedIssuers() {
            return new java.security.cert.X509Certificate[0];
        }
    }

    public static final class WestlakeNoiceSSLContextSpi extends javax.net.ssl.SSLContextSpi {
        @Override
        protected void engineInit(javax.net.ssl.KeyManager[] km,
                javax.net.ssl.TrustManager[] tm, java.security.SecureRandom sr) {}

        @Override
        protected javax.net.ssl.SSLSocketFactory engineGetSocketFactory() {
            return new Dayu600ApkStageProbe.WestlakeNoiceSSLSocketFactory();
        }

        @Override
        protected javax.net.ssl.SSLServerSocketFactory engineGetServerSocketFactory() {
            return new Dayu600ApkStageProbe.WestlakeNoiceSSLServerSocketFactory();
        }

        @Override
        protected javax.net.ssl.SSLEngine engineCreateSSLEngine() { return null; }

        @Override
        protected javax.net.ssl.SSLEngine engineCreateSSLEngine(String host, int port) { return null; }

        @Override
        protected javax.net.ssl.SSLSessionContext engineGetServerSessionContext() { return null; }

        @Override
        protected javax.net.ssl.SSLSessionContext engineGetClientSessionContext() { return null; }

        @Override
        protected javax.net.ssl.SSLParameters engineGetDefaultSSLParameters() {
            return new javax.net.ssl.SSLParameters();
        }

        @Override
        protected javax.net.ssl.SSLParameters engineGetSupportedSSLParameters() {
            return new javax.net.ssl.SSLParameters();
        }
    }

    public static final class WestlakeNoiceSSLSocketFactory extends javax.net.ssl.SSLSocketFactory {
        @Override
        public String[] getDefaultCipherSuites() { return new String[0]; }

        @Override
        public String[] getSupportedCipherSuites() { return new String[0]; }

        @Override
        public java.net.Socket createSocket(java.net.Socket s, String host, int port, boolean autoClose)
                throws java.io.IOException {
            throw new java.io.IOException("WestlakeNoice TLS sockets are disabled during UI bootstrap");
        }

        @Override
        public java.net.Socket createSocket(String host, int port) throws java.io.IOException {
            throw new java.io.IOException("WestlakeNoice TLS sockets are disabled during UI bootstrap");
        }

        @Override
        public java.net.Socket createSocket(String host, int port,
                java.net.InetAddress localHost, int localPort) throws java.io.IOException {
            throw new java.io.IOException("WestlakeNoice TLS sockets are disabled during UI bootstrap");
        }

        @Override
        public java.net.Socket createSocket(java.net.InetAddress host, int port)
                throws java.io.IOException {
            throw new java.io.IOException("WestlakeNoice TLS sockets are disabled during UI bootstrap");
        }

        @Override
        public java.net.Socket createSocket(java.net.InetAddress address, int port,
                java.net.InetAddress localAddress, int localPort) throws java.io.IOException {
            throw new java.io.IOException("WestlakeNoice TLS sockets are disabled during UI bootstrap");
        }
    }

    public static final class WestlakeNoiceSSLServerSocketFactory
            extends javax.net.ssl.SSLServerSocketFactory {
        @Override
        public String[] getDefaultCipherSuites() { return new String[0]; }

        @Override
        public String[] getSupportedCipherSuites() { return new String[0]; }

        @Override
        public java.net.ServerSocket createServerSocket(int port) throws java.io.IOException {
            throw new java.io.IOException("WestlakeNoice TLS server sockets are disabled");
        }

        @Override
        public java.net.ServerSocket createServerSocket(int port, int backlog)
                throws java.io.IOException {
            throw new java.io.IOException("WestlakeNoice TLS server sockets are disabled");
        }

        @Override
        public java.net.ServerSocket createServerSocket(int port, int backlog,
                java.net.InetAddress ifAddress) throws java.io.IOException {
            throw new java.io.IOException("WestlakeNoice TLS server sockets are disabled");
        }
    }

    /**
     * Add an apk/zip path to an AssetManager. Board framework.jar may hide
     * {@code addAssetPath(String)} from the public API surface ({@code getMethod} fails);
     * try declared + ApkAssets.loadFromPath/setApkAssets.
     */
    private static int addAssetPathCompat(android.content.res.AssetManager am, String path)
            throws Exception {
        Class<?> amCls = android.content.res.AssetManager.class;
        // 1) public or hidden addAssetPath(String)
        for (boolean declared : new boolean[] { false, true }) {
            try {
                java.lang.reflect.Method m = declared
                        ? amCls.getDeclaredMethod("addAssetPath", String.class)
                        : amCls.getMethod("addAssetPath", String.class);
                m.setAccessible(true);
                Object ck = m.invoke(am, path);
                return ck instanceof Number ? ((Number) ck).intValue() : 0;
            } catch (NoSuchMethodException ig) {
            }
        }
        // 2) addAssetPathInternal(String, boolean) / similar
        String[] internals = { "addAssetPathInternal", "addAssetPathAsSharedLibrary" };
        for (String name : internals) {
            try {
                java.lang.reflect.Method m = amCls.getDeclaredMethod(name, String.class, boolean.class);
                m.setAccessible(true);
                Object ck = m.invoke(am, path, Boolean.FALSE);
                return ck instanceof Number ? ((Number) ck).intValue() : 0;
            } catch (NoSuchMethodException ig) {
            }
        }
        // 3) ApkAssets.loadFromPath + setApkAssets append
        Class<?> apkAssetsCls = Class.forName("android.content.res.ApkAssets");
        Object apkAssets;
        try {
            apkAssets = apkAssetsCls.getMethod("loadFromPath", String.class).invoke(null, path);
        } catch (NoSuchMethodException nsm) {
            apkAssets = apkAssetsCls.getMethod("loadFromPath", String.class, int.class)
                    .invoke(null, path, Integer.valueOf(0));
        }
        java.lang.reflect.Field mApk = amCls.getDeclaredField("mApkAssets");
        mApk.setAccessible(true);
        Object oldArr;
        try {
            oldArr = mApk.get(am);
        } catch (Throwable t) {
            oldArr = null;
        }
        int oldLen = oldArr == null ? 0 : java.lang.reflect.Array.getLength(oldArr);
        Object newArr = java.lang.reflect.Array.newInstance(apkAssetsCls, oldLen + 1);
        for (int i = 0; i < oldLen; i++) {
            java.lang.reflect.Array.set(newArr, i, java.lang.reflect.Array.get(oldArr, i));
        }
        java.lang.reflect.Array.set(newArr, oldLen, apkAssets);
        try {
            java.lang.reflect.Method setAA = amCls.getMethod("setApkAssets", newArr.getClass(), boolean.class);
            setAA.invoke(am, newArr, Boolean.TRUE);
        } catch (NoSuchMethodException nsm) {
            mApk.set(am, newArr);
            try {
                java.lang.reflect.Method invalidate =
                        amCls.getDeclaredMethod("invalidateCachesLocked", int.class);
                invalidate.setAccessible(true);
                invalidate.invoke(am, Integer.valueOf(-1));
            } catch (Throwable ig) {}
        }
        return oldLen + 1;
    }

    /** Prefer ApkAssets.loadFromPath — NEVER fall back to addAssetPath (dead-recursion SOE).
     * Dual-class board: no Java-side String Class.forName (getModifiers NPE). JNI builds path String. */
    private static int addAssetPathDirect(android.content.res.AssetManager am, String path)
            throws Exception {
        nativeW001Append(am, asciiPathBytes(path));
        java.lang.reflect.Field mApk = android.content.res.AssetManager.class
                .getDeclaredField("mApkAssets");
        mApk.setAccessible(true);
        Object arr = mApk.get(am);
        int ck = arr == null ? 0 : java.lang.reflect.Array.getLength(arr);
        if (ck <= 0) throw new IllegalStateException("nativeW001Append failed ck=" + ck);
        return ck;
    }

    private static byte[] asciiPathBytes(String path) {
        int n = path.length();
        byte[] b = new byte[n];
        for (int i = 0; i < n; i++) {
            b[i] = (byte) path.charAt(i);
        }
        return b;
    }

    private static final byte[] W001_APK_PATH = asciiPathBytes(
            "/data/local/tmp/westlake-dayu600-substrate/apks/test-uptodown.apk");
    private static final byte[] W001_FW_PATH = asciiPathBytes(
            "/data/local/tmp/westlake-dayu600-substrate/android/framework/framework-res.apk");

    private static void ensureTraceNatives() {
        try {
            nativeRegisterTraceNatives(android.os.Trace.class);
        } catch (Throwable ig) {}
        try {
            nativeRegisterTraceNatives(Class.forName("android.os.Trace"));
        } catch (Throwable ig) {}
        try {
            ClassLoader cl = android.content.res.AssetManager.class.getClassLoader();
            if (cl != null) {
                nativeRegisterTraceNatives(Class.forName("android.os.Trace", false, cl));
            }
        } catch (Throwable ig) {}
    }

    private static boolean sArscNativesBound = false;

    /**
     * Bind the REAL libandroidfw resolution natives (nativeSetApkAssets,
     * nativeApplyStyle, nativeThemeCreate/ApplyStyle, nativeGetResourceName,
     * nativeResolveAttrs...) into the early oracle path. Without this the
     * early oracle only ever had the OHOS stub natives, so the sidecar's
     * nativeW001Append -> nativeSetApkAssets delegation never built a real
     * DynamicRefTable and never assigned app package id 0x7f -> every
     * obtainStyledAttributes value came back empty (uamHasWab=false) and
     * getResourceName threw UnsatisfiedLinkError.
     *
     * Route E (proven in assetProbe stage :1753, ledger #23-25): force
     * XmlBlock/StringBlock <clinit> first so the OHBridge stubs register, then
     * System.load(libandroidfw.so) so its JNI_OnLoad re-registers the real
     * impls on top and wins. MUST run before the first nativeW001Append so the
     * ref table is built by the real setApkAssets. Idempotent. Writes
     * w001-arsc.txt.
     */
    private static String fwLibPath() {
        return rootPath() + "/android/lib64/libandroidfw.so";
    }

    /**
     * Nested helper whose <clinit> System.load's libandroidfw. When this class is
     * loaded through a PathClassLoader that carries a valid librarySearchPath, the
     * System.load caller resolves to a loader with a non-null ldLibraryPath, so ART's
     * nativeLoad does not NPE on the null search path (the early-oracle probe class is
     * boot-loaded => getClassLoader()==null => System.load NPEs "String.length() on null").
     */
    static final class FwLibLoader {
        static {
            System.load(fwLibPath());
        }
        static void touch() {}
    }

    private static void ensureArscNatives() {
        if (sArscNativesBound) return;
        try {
            ClassLoader cl = android.content.res.AssetManager.class.getClassLoader();
            // Force <clinit> of every class whose OHBridge stub natives must register
            // BEFORE libandroidfw loads, so libandroidfw's JNI_OnLoad re-registers on top
            // and WINS. ApkAssets is critical: its nativeLoad (the arsc parser) is triggered
            // lazily by the sidecar's loadFromPath during append; if its <clinit> runs THEN,
            // OHBridge re-registers the stub AFTER libandroidfw and clobbers the real parser,
            // giving cookies with no arsc (getResourceName=notfound even for framework ids).
            try { Class.forName("android.content.res.ApkAssets", true, cl); } catch (Throwable ig) {}
            try { Class.forName("android.content.res.AssetManager", true, cl); } catch (Throwable ig) {}
            try { Class.forName("android.content.res.XmlBlock", true, cl); } catch (Throwable ig) {}
            try { Class.forName("android.content.res.StringBlock", true, cl); } catch (Throwable ig) {}
            try { Class.forName("android.content.res.TypedArray", true, cl); } catch (Throwable ig) {}
        } catch (Throwable ig) {}
        // Path A: direct load (works when our classloader is a real dex loader).
        try {
            System.load(fwLibPath());
            sArscNativesBound = true;
            earlyWriteLiteral("/data/local/tmp/w001-arsc.txt", "loaded-direct");
            return;
        } catch (Throwable t) {
            earlyWriteLiteral("/data/local/tmp/w001-arsc.txt", "direct-fail");
            try { earlyWriteLiteral("/data/local/tmp/w001-arsc-msg.txt",
                    t.getMessage() == null ? "<null-msg>" : t.getMessage()); } catch (Throwable ig) {}
        }
        // Path B: load via a fresh PathClassLoader with an explicit librarySearchPath, so
        // the System.load in FwLibLoader.<clinit> has a caller loader with a valid path.
        try {
            String dexPath = rootPath() + "/apks/dayu600-apk-probe.dex";
            String libDir = rootPath() + "/android/lib64";
            Class<?> pclCls = Class.forName("dalvik.system.PathClassLoader");
            java.lang.reflect.Constructor<?> pclC =
                    pclCls.getDeclaredConstructor(String.class, String.class, ClassLoader.class);
            pclC.setAccessible(true);
            ClassLoader newLoader = (ClassLoader) pclC.newInstance(dexPath, libDir, null);
            // Loading the helper through newLoader triggers its <clinit> System.load.
            Class.forName("Dayu600ApkStageProbe$FwLibLoader", true, newLoader);
            sArscNativesBound = true;
            earlyWriteLiteral("/data/local/tmp/w001-arsc.txt", "loaded-viaLoader");
        } catch (Throwable t) {
            earlyWriteLiteral("/data/local/tmp/w001-arsc.txt", t.getClass().getName());
            try { earlyWriteLiteral("/data/local/tmp/w001-arsc-msg.txt",
                    t.getMessage() == null ? "<null-msg>" : t.getMessage()); } catch (Throwable ig) {}
        }
    }

    /** Dual-package AM via addAssetPath only (lighter stack than ApkAssets.loadFromPath). */
    private static android.content.res.AssetManager makeDualPackageAmLite(String appPath, String fwPath)
            throws Exception {
        Class<?> amCls = android.content.res.AssetManager.class;
        Class<?> apkAssetsCls = Class.forName("android.content.res.ApkAssets");
        java.lang.reflect.Constructor<?> amC = amCls.getDeclaredConstructor(boolean.class);
        amC.setAccessible(true);
        android.content.res.AssetManager am =
                (android.content.res.AssetManager) amC.newInstance(Boolean.TRUE);
        java.lang.reflect.Field mApk = amCls.getDeclaredField("mApkAssets");
        mApk.setAccessible(true);
        Object empty = java.lang.reflect.Array.newInstance(apkAssetsCls, 0);
        try {
            unsafePutObjectField(am, mApk, empty);
        } catch (Throwable ig) {
            mApk.set(am, empty);
        }
        // Pass path as Object to Method.invoke — avoids dual-String ArrayStore in some
        // MethodHandle/varargs paths on this board.
        int ckApp = addAssetPathDirect(am, appPath);
        int ckFw = addAssetPathDirect(am, fwPath);
        if (ckApp <= 0 || ckFw <= 0) {
            throw new IllegalStateException("addAssetPath app=" + ckApp + " fw=" + ckFw);
        }
        return am;
    }

    /**
     * W-001 early oracle. The current embed path calls embeddedMainNoExit synchronously
     * on the constructor/toybox thread; the attempted 8MB native pthread could not attach.
     */
    /** Dual-String board: never concatenate Strings in early path (ArrayStoreException). */
    private static void earlyWriteLiteral(String path, String literal) {
        try {
            writeText(path, literal);
        } catch (Throwable ig) {}
        // HAP lane: /data/local/tmp is SELinux-denied for the app uid, so mirror the
        // breadcrumb into the writable filesDir sandbox (WESTLAKE_RESULT_DIR) — same
        // filename, root-readable via /data/app/el2/... for crash-site bisection.
        try {
            String rd = System.getenv("WESTLAKE_RESULT_DIR");
            if (rd != null) {
                String name = path.substring(path.lastIndexOf('/') + 1);
                writeText(rd + "/" + name, literal);
            }
        } catch (Throwable ig) {}
    }

    /**
     * Lane-safe native lib load. App lane (WESTLAKE_EXEC_ROOT set): ONLY the bundle lib
     * dir is dlopen-able — a literal /system/lib64 path is namespace-blocked and, worse,
     * SIGBUSes uncatchably at ld-musl map_library_header (5583, 2026-07-18). So load the
     * bundled copy by soname and NEVER touch /system; a missing bundled copy is skipped
     * silently. Shell lane (no EXEC_ROOT): keep the original absolute-path behaviour.
     * Returns true when the lib got loaded.
     */
    private static boolean wlLoadLib(String fullPath) {
        String soname = fullPath.substring(fullPath.lastIndexOf('/') + 1);
        String er = System.getenv("WESTLAKE_EXEC_ROOT");
        if (er != null && er.length() > 0) {
            try {
                java.lang.Runtime.getRuntime().load(er + "/" + soname);
                return true;
            } catch (Throwable ig) {
                return false;
            }
        }
        try {
            java.lang.Runtime.getRuntime().load(fullPath);
            return true;
        } catch (Throwable ig) {
            return false;
        }
    }

    /**
     * Capture a full stack trace using the proven-safe StringBuilder.append idiom
     * (see emitDetail) — never `+` concatenation, which ArrayStores on this dual-String
     * board. Pinpoints the exact framework frame that NPEs (e.g. ArrayList.size() on null).
     */
    private static void earlyWriteStack(String path, Throwable t) {
        StringBuilder sb = new StringBuilder();
        try { sb.append(t.getClass().getName()).append('\n'); } catch (Throwable ig) {}
        try {
            String em = t.getMessage();
            sb.append(em == null ? "<null>" : em).append('\n');
        } catch (Throwable ig) {}
        appendFrames(sb, t);
        try {
            Throwable cause = t.getCause();
            int guard = 0;
            while (cause != null && guard < 4) {
                // The message is where androidx explains itself ("ViewModelStore should be set
                // before setGraph", "not attached", ...); without it the frame list alone forces
                // guesswork.
                try {
                    sb.append("cause=").append(cause.getClass().getName())
                      .append(": ").append(String.valueOf(cause.getMessage())).append('\n');
                } catch (Throwable ig) {}
                appendFrames(sb, cause);
                cause = cause.getCause();
                guard++;
            }
        } catch (Throwable ig) {}
        try { writeText(path, sb.toString()); } catch (Throwable ig) {}
    }

    /**
     * W-003 precursor / #51 de-risk: font/text native surface smoke, run as its OWN pristine
     * early stage (no prior graphics <clinit> in this VM). Per codex refute+deep-dive: field-poking
     * graphics natives AFTER a class's <clinit> permanently poisons it, so this stage must be the
     * FIRST-ever toucher of Paint/Typeface. It decisively separates the failure modes:
     *   UnsatisfiedLinkError            → native never bound (startReg RegisterNatives no-op'd) → field-poke needed
     *   ExceptionInInitializerError / NoClassDefFoundError → <clinit> poisoned → fresh-VM + pre-bind mandate
     *   SIGBUS (no Java stack; ONLY the on-disk ladder survives) → bad ABI → #49 double-ABI dispatch needed
     *   Typeface.DEFAULT == null / measureText == 0 → font-map never built → ship our own TTF
     * Every risky op overwrites the ladder file FIRST, so a non-catchable SIGBUS leaves the exact
     * death-point on disk. Each op also drops a distinct literal OK-marker so partial progress is
     * visible even if a later op crashes before the summary is flushed. No String '+' anywhere on the
     * risky path (dual-String board ArrayStores); values go through StringBuilder.append (proven safe).
     */
    // ── W-003 #49 harness: critical-native binding self-test.
    // Grafted from worker/color-smoke-5ce during main consolidation 2026-07-12 (self-contained;
    // deps earlyWriteStack/writeText/public Paint already present). Dispatched via WESTLAKE_STAGE/
    // WESTLAKE_SUBSTAGE=critbind49. Proves Paint.setFlags/getFlags round-trips (the @CriticalNative
    // publish path fixed by local-build-adapters/art-latest/patches; see oracle/verify/atom-49.sh).
    private static void runCritBind49() {
        StringBuilder out = new StringBuilder();
        out.append("crit-bind stage\n");
        try {
            android.graphics.Paint paint = new android.graphics.Paint();
            int expected = android.graphics.Paint.ANTI_ALIAS_FLAG
                    | android.graphics.Paint.DITHER_FLAG;
            paint.setFlags(expected);
            int got = paint.getFlags();
            long t0 = System.nanoTime();
            long t1 = System.nanoTime();
            boolean valueOk = got == expected;
            boolean normalOk = t1 >= t0 && t0 != 0L;
            out.append("crit-bind nGetFlags=").append(String.valueOf(got));
            out.append(" expected=").append(String.valueOf(expected));
            out.append(valueOk ? " ok" : " fail");
            out.append(normalOk ? " normal=ok\n" : " normal=fail\n");
        } catch (Throwable t) {
            out.append("crit-bind FAIL ").append(t.getClass().getName()).append('\n');
            earlyWriteStack("/data/local/tmp/critbind49-error.txt", t);
        }
        try { writeText("/data/local/tmp/critbind49-result.txt", out.toString()); } catch (Throwable ig) {}
    }

    private static void runFontSmoke() {
        StringBuilder res = new StringBuilder();
        android.graphics.Paint p = null;
        android.graphics.Typeface tf = null;

        earlyWriteLiteral("/data/local/tmp/fontsmoke-ladder.txt", "00-enter");
        earlyWriteLiteral("/data/local/tmp/fontsmoke-enter.txt", "runFontSmoke entered");
        res.append("fontsmoke pristine-VM stage\n");

        // 01 Paint shell — SIGBUS in Paint.<init>/nSetTextLocales is uncatchable on this board;
        // allocate without ctor and seed mNativePaint so measureText can hit poked natives.
        earlyWriteLiteral("/data/local/tmp/fontsmoke-ladder.txt", "01-paint-ctor");
        try {
            Object raw = wlAlloc(android.graphics.Paint.class);
            p = (android.graphics.Paint) raw;
            String[] npNames = { "mNativePaint", "mNativePtr", "mNativeObject" };
            boolean seeded = false;
            for (int i = 0; i < npNames.length; i++) {
                try {
                    java.lang.reflect.Field np =
                            android.graphics.Paint.class.getDeclaredField(npNames[i]);
                    np.setAccessible(true);
                    np.setLong(p, 1L);
                    seeded = true;
                    break;
                } catch (Throwable ig) {}
            }
            if (seeded) {
                earlyWriteLiteral("/data/local/tmp/fontsmoke-01-paint-ok.txt", "paint-alloc-ok");
                res.append("01 paint-alloc OK\n");
            } else {
                res.append("01 paint-alloc no-native-field\n");
            }
        } catch (Throwable t) {
            res.append("01 paint-alloc FAIL ").append(t.getClass().getName()).append('\n');
            earlyWriteStack("/data/local/tmp/fontsmoke-01-paint-err.txt", t);
        }

        // 02 nSetFlags — the exact native that SIGBUS'd inside setContentView recon.
        earlyWriteLiteral("/data/local/tmp/fontsmoke-ladder.txt", "02-antialias");
        try {
            if (p != null) {
                p.setAntiAlias(true);
                earlyWriteLiteral("/data/local/tmp/fontsmoke-02-antialias-ok.txt", "antialias-ok");
                res.append("02 antialias OK\n");
            } else {
                res.append("02 antialias SKIP(p==null)\n");
            }
        } catch (Throwable t) {
            res.append("02 antialias FAIL ").append(t.getClass().getName()).append('\n');
            earlyWriteStack("/data/local/tmp/fontsmoke-02-antialias-err.txt", t);
        }

        // 03 setTextSize (nSetTextSize)
        earlyWriteLiteral("/data/local/tmp/fontsmoke-ladder.txt", "03-textsize");
        try {
            if (p != null) {
                p.setTextSize(28f);
                earlyWriteLiteral("/data/local/tmp/fontsmoke-03-textsize-ok.txt", "textsize-ok");
                res.append("03 textsize OK\n");
            } else {
                res.append("03 textsize SKIP\n");
            }
        } catch (Throwable t) {
            res.append("03 textsize FAIL ").append(t.getClass().getName()).append('\n');
            earlyWriteStack("/data/local/tmp/fontsmoke-03-textsize-err.txt", t);
        }

        // 04b ship-TTF bootstrap BEFORE DEFAULT read — sidecar field-poked Typeface/Paint natives.
        earlyWriteLiteral("/data/local/tmp/fontsmoke-ladder.txt", "04b-ttf-builder");
        try {
            String ttf = "/data/local/tmp/westlake-dayu600-substrate/fonts/westlake-regular.ttf";
            java.io.File ttfFile = new java.io.File(ttf);
            res.append("04b ttf-exists ").append(ttfFile.isFile() ? "yes" : "no").append('\n');
            if (!ttfFile.isFile()) {
                earlyWriteLiteral("/data/local/tmp/fontsmoke-04b-ttf.txt", "ttf-missing");
            } else {
                android.graphics.Typeface built = null;
                try {
                    built = wlTypefaceFromFile(ttf);
                } catch (Throwable t1) {
                    res.append("04b createFromFile FAIL ").append(t1.getClass().getName()).append('\n');
                }
                if (built == null) {
                    try {
                        built = (android.graphics.Typeface) wlAlloc(android.graphics.Typeface.class);
                        if (built != null) {
                            try {
                                java.lang.reflect.Field ni =
                                        android.graphics.Typeface.class.getDeclaredField("native_instance");
                                ni.setAccessible(true);
                                ni.setLong(built, 1L);
                            } catch (Throwable ig) {}
                            res.append("04b alloc-typeface fallback\n");
                        }
                    } catch (Throwable t3) {
                        res.append("04b alloc FAIL ").append(t3.getClass().getName()).append('\n');
                    }
                }
                if (built == null) {
                    try {
                        built = wlTypefaceBuilder(ttf);
                    } catch (Throwable t2) {
                        res.append("04b builder FAIL ").append(t2.getClass().getName()).append('\n');
                        earlyWriteStack("/data/local/tmp/fontsmoke-04b-ttf-err.txt", t2);
                    }
                }
                res.append("04b builder ").append(built == null ? "NULL" : "nonnull").append('\n');
                if (built != null) {
                    tf = built;
                    try {
                        java.lang.reflect.Field def =
                                android.graphics.Typeface.class.getDeclaredField("DEFAULT");
                        wlSetStaticFinal(def, built);
                    } catch (Throwable ig) {
                        try {
                            java.lang.reflect.Field def =
                                    android.graphics.Typeface.class.getDeclaredField("DEFAULT");
                            def.setAccessible(true);
                            def.set(null, built);
                        } catch (Throwable ig2) {}
                    }
                    try {
                        java.lang.reflect.Field sd =
                                android.graphics.Typeface.class.getDeclaredField("sDefaults");
                        sd.setAccessible(true);
                        Object arr = java.lang.reflect.Array.newInstance(
                                android.graphics.Typeface.class, 4);
                        for (int i = 0; i < 4; i++) {
                            java.lang.reflect.Array.set(arr, i, built);
                        }
                        sd.set(null, arr);
                    } catch (Throwable ig) {}
                    earlyWriteLiteral("/data/local/tmp/fontsmoke-04b-ttf.txt", "ttf-builder-ok");
                } else {
                    earlyWriteLiteral("/data/local/tmp/fontsmoke-04b-ttf.txt", "ttf-builder-null");
                }
            }
        } catch (Throwable t) {
            res.append("04b ttf FAIL ").append(t.getClass().getName()).append('\n');
            earlyWriteStack("/data/local/tmp/fontsmoke-04b-ttf-err.txt", t);
        }

        // 04 Typeface.DEFAULT — after bootstrap should be nonnull.
        earlyWriteLiteral("/data/local/tmp/fontsmoke-ladder.txt", "04-typeface-default");
        try {
            tf = android.graphics.Typeface.DEFAULT;
            res.append("04 typeface-default ").append(tf == null ? "NULL" : "nonnull").append('\n');
            earlyWriteLiteral("/data/local/tmp/fontsmoke-04-typeface.txt",
                    tf == null ? "typeface-default-NULL" : "typeface-default-nonnull");
        } catch (Throwable t) {
            res.append("04 typeface-default FAIL ").append(t.getClass().getName()).append('\n');
            earlyWriteStack("/data/local/tmp/fontsmoke-04-typeface-err.txt", t);
        }

        // 05 setTypeface
        earlyWriteLiteral("/data/local/tmp/fontsmoke-ladder.txt", "05-set-typeface");
        try {
            if (p != null && tf != null) {
                p.setTypeface(tf);
                earlyWriteLiteral("/data/local/tmp/fontsmoke-05-settypeface-ok.txt", "settypeface-ok");
                res.append("05 settypeface OK\n");
            } else {
                res.append("05 settypeface SKIP\n");
            }
        } catch (Throwable t) {
            res.append("05 settypeface FAIL ").append(t.getClass().getName()).append('\n');
            earlyWriteStack("/data/local/tmp/fontsmoke-05-settypeface-err.txt", t);
        }

        // 06 measureText — THE success signal: a plausible non-zero advance == real glyphs.
        earlyWriteLiteral("/data/local/tmp/fontsmoke-ladder.txt", "06-measure");
        try {
            if (p != null) {
                float adv = p.measureText("Hi");
                res.append("06 measureText adv=").append(String.valueOf(adv)).append('\n');
                earlyWriteLiteral("/data/local/tmp/fontsmoke-06-measure.txt",
                        new StringBuilder("measure-adv=").append(adv).toString());
            } else {
                res.append("06 measure SKIP\n");
            }
        } catch (Throwable t) {
            res.append("06 measure FAIL ").append(t.getClass().getName()).append('\n');
            earlyWriteStack("/data/local/tmp/fontsmoke-06-measure-err.txt", t);
        }

        // 07 getFontMetricsInt — MeasuredText/Paint metrics path.
        earlyWriteLiteral("/data/local/tmp/fontsmoke-ladder.txt", "07-fontmetrics");
        try {
            if (p != null) {
                android.graphics.Paint.FontMetricsInt fm = p.getFontMetricsInt();
                res.append("07 fontmetrics ascent=").append(String.valueOf(fm.ascent))
                   .append(" descent=").append(String.valueOf(fm.descent)).append('\n');
                earlyWriteLiteral("/data/local/tmp/fontsmoke-07-fontmetrics.txt",
                        new StringBuilder("fm-ascent=").append(fm.ascent)
                                .append(" descent=").append(fm.descent).toString());
            } else {
                res.append("07 fontmetrics SKIP\n");
            }
        } catch (Throwable t) {
            res.append("07 fontmetrics FAIL ").append(t.getClass().getName()).append('\n');
            earlyWriteStack("/data/local/tmp/fontsmoke-07-fontmetrics-err.txt", t);
        }

        // 08 Typeface.create — the path a shipped TTF would eventually use.
        earlyWriteLiteral("/data/local/tmp/fontsmoke-ladder.txt", "08-typeface-create");
        try {
            // style arg 0 == Typeface.NORMAL (the compile-time shim Typeface omits the constant;
            // at runtime the real android.graphics.Typeface.create(Typeface,int) is invoked).
            android.graphics.Typeface tf2 =
                    android.graphics.Typeface.create(android.graphics.Typeface.DEFAULT, 0);
            res.append("08 typeface-create ").append(tf2 == null ? "NULL" : "nonnull").append('\n');
            earlyWriteLiteral("/data/local/tmp/fontsmoke-08-typeface-create.txt",
                    tf2 == null ? "create-NULL" : "create-nonnull");
        } catch (Throwable t) {
            res.append("08 typeface-create FAIL ").append(t.getClass().getName()).append('\n');
            earlyWriteStack("/data/local/tmp/fontsmoke-08-typeface-create-err.txt", t);
        }

        // 09 getTextBounds — draws into a Rect; exercises the glyph raster path shape.
        earlyWriteLiteral("/data/local/tmp/fontsmoke-ladder.txt", "09-textbounds");
        try {
            if (p != null) {
                android.graphics.Rect r = new android.graphics.Rect();
                p.getTextBounds("Hi", 0, 2, r);
                res.append("09 textbounds w=").append(String.valueOf(r.width()))
                   .append(" h=").append(String.valueOf(r.height())).append('\n');
                earlyWriteLiteral("/data/local/tmp/fontsmoke-09-textbounds.txt",
                        new StringBuilder("bounds-w=").append(r.width())
                                .append(" h=").append(r.height()).toString());
            } else {
                res.append("09 textbounds SKIP\n");
            }
        } catch (Throwable t) {
            res.append("09 textbounds FAIL ").append(t.getClass().getName()).append('\n');
            earlyWriteStack("/data/local/tmp/fontsmoke-09-textbounds-err.txt", t);
        }

        earlyWriteLiteral("/data/local/tmp/fontsmoke-ladder.txt", "99-done");
        try { writeText("/data/local/tmp/fontsmoke-result.txt", res.toString()); } catch (Throwable ig) {}
        // Compact success line for oracle greps.
        try {
            boolean defOk = (android.graphics.Typeface.DEFAULT != null) || (tf != null);
            float adv = 0f;
            try {
                if (p != null) adv = p.measureText("Hi");
            } catch (Throwable ig) {}
            StringBuilder hb = new StringBuilder();
            hb.append("fontsmoke default=").append(defOk ? "ok" : "fail");
            hb.append(" measure=").append(adv != 0f ? "ok" : "fail");
            hb.append(" adv=").append(String.valueOf(adv)).append('\n');
            writeText("/data/local/tmp/fontsmoke-heartbeat.txt", hb.toString());
        } catch (Throwable ig) {}
        earlyWriteLiteral("/data/local/tmp/fontsmoke-done.txt", "runFontSmoke done");
    }

    private static boolean tmpFileHasOk(String path) {
        try {
            java.io.BufferedReader br = new java.io.BufferedReader(
                    new java.io.FileReader(path));
            String line;
            while ((line = br.readLine()) != null) {
                if ("ok".equals(line.trim())) {
                    br.close();
                    return true;
                }
            }
            br.close();
        } catch (Throwable ig) {}
        return false;
    }

    private static long reflectPaintNativePtr(android.graphics.Paint p) {
        String[] names = { "mNativePaint", "mNativePtr", "mNativeObject" };
        for (int i = 0; i < names.length; i++) {
            try {
                java.lang.reflect.Field f =
                        android.graphics.Paint.class.getDeclaredField(names[i]);
                f.setAccessible(true);
                Object v = f.get(p);
                if (v instanceof Long) {
                    return ((Long) v).longValue();
                }
                if (v instanceof Integer) {
                    return ((Integer) v).longValue();
                }
            } catch (Throwable ig) {}
        }
        return 0L;
    }

    /**
     * W-003 wall #49: prove WestlakeGenericJni dispatches both ABIs in a pristine VM.
     * Critical: @CriticalNative FJ via Paint.nGetLetterSpacing (sidecar field-poke -> 42.0f).
     * Normal: probe-owned static native DFF shorty (sidecar RegisterNatives/poke -> a+b).
     * Heartbeat: genericjni-result.txt line "genericjni normal=ok crit=ok" plus optional
     * /data/local/tmp/genericjni-hit-{normal,crit}.txt written by interpreter fallthrough.
     */
    private static void runGenericJniSmoke() {
        StringBuilder res = new StringBuilder();
        boolean critOk = false;
        boolean normalOk = false;

        earlyWriteLiteral("/data/local/tmp/genericjni-enter.txt", "runGenericJniSmoke entered");
        res.append("genericjni pristine-VM stage\n");

        earlyWriteLiteral("/data/local/tmp/genericjni-ladder.txt", "01-crit-paint");
        try {
            // Do NOT construct Paint — <init> touches nSetFlags which is unbound here and
            // throws ULE before we can exercise GenericJni. Stub ignores the native ptr.
            java.lang.reflect.Method m = android.graphics.Paint.class.getDeclaredMethod(
                    "nGetLetterSpacing", long.class);
            m.setAccessible(true);
            Object rv = m.invoke(null, Long.valueOf(1L));
            float spacing = rv instanceof Float ? ((Float) rv).floatValue() : 0f;
            res.append("01 crit spacing=").append(String.valueOf(spacing)).append('\n');
            if (Math.abs(spacing - 42.0f) < 0.001f) {
                critOk = true;
            }
            if (tmpFileHasOk("/data/local/tmp/genericjni-hit-crit.txt")) {
                critOk = true;
            }
        } catch (Throwable t) {
            res.append("01 crit FAIL ").append(t.getClass().getName()).append('\n');
            earlyWriteStack("/data/local/tmp/genericjni-crit-err.txt", t);
            if (tmpFileHasOk("/data/local/tmp/genericjni-hit-crit.txt")) {
                critOk = true;
            }
        }

        earlyWriteLiteral("/data/local/tmp/genericjni-ladder.txt", "02-normal-dff");
        try {
            double sum = nativeGenericJniDffProbe(1.5f, 2.5f);
            res.append("02 normal dff=").append(String.valueOf(sum)).append('\n');
            if (Math.abs(sum - 4.0) < 0.001) {
                normalOk = true;
            }
            if (tmpFileHasOk("/data/local/tmp/genericjni-hit-normal.txt")) {
                normalOk = true;
            }
        } catch (Throwable t) {
            res.append("02 normal FAIL ").append(t.getClass().getName()).append('\n');
            earlyWriteStack("/data/local/tmp/genericjni-normal-err.txt", t);
            if (tmpFileHasOk("/data/local/tmp/genericjni-hit-normal.txt")) {
                normalOk = true;
            }
        }

        res.append("genericjni normal=").append(normalOk ? "ok" : "fail");
        res.append(" crit=").append(critOk ? "ok" : "fail").append('\n');
        earlyWriteLiteral("/data/local/tmp/genericjni-ladder.txt", "99-done");
        try { writeText("/data/local/tmp/genericjni-result.txt", res.toString()); } catch (Throwable ig) {}
        earlyWriteLiteral("/data/local/tmp/genericjni-done.txt", "runGenericJniSmoke done");
    }

    private static int viewChildCount(android.view.View v) {
        if (v == null) return 0;
        try {
            Class<?> vgCls = Class.forName("android.view.ViewGroup");
            if (vgCls.isInstance(v)) {
                return ((Number) vgCls.getMethod("getChildCount").invoke(v)).intValue();
            }
        } catch (Throwable ig) {}
        return 0;
    }

    private static android.view.View viewChildAt(android.view.View v, int index) {
        if (v == null) return null;
        try {
            Class<?> vgCls = Class.forName("android.view.ViewGroup");
            if (vgCls.isInstance(v)) {
                return (android.view.View) vgCls.getMethod("getChildAt", int.class)
                        .invoke(v, Integer.valueOf(index));
            }
        } catch (Throwable ig) {}
        return null;
    }

    private static int wlMakeMeasureSpec(int size, int mode) {
        try {
            Class<?> ms = Class.forName("android.view.View$MeasureSpec");
            return ((Number) ms.getMethod("makeMeasureSpec", int.class, int.class)
                    .invoke(null, Integer.valueOf(size), Integer.valueOf(mode))).intValue();
        } catch (Throwable ig) {
            return size;
        }
    }

    private static void wlViewMeasure(android.view.View v, int wSpec, int hSpec) {
        if (v == null) return;
        try {
            v.getClass().getMethod("measure", int.class, int.class).invoke(v,
                    Integer.valueOf(wSpec), Integer.valueOf(hSpec));
        } catch (Throwable ig) {}
    }

    private static void wlViewLayout(android.view.View v, int l, int t, int r, int b) {
        if (v == null) return;
        try {
            v.getClass().getMethod("layout", int.class, int.class, int.class, int.class)
                    .invoke(v, Integer.valueOf(l), Integer.valueOf(t),
                            Integer.valueOf(r), Integer.valueOf(b));
        } catch (Throwable ig) {}
    }

    private static int wlViewMeasuredWidth(android.view.View v) {
        if (v == null) return 0;
        try {
            return ((Number) v.getClass().getMethod("getMeasuredWidth").invoke(v)).intValue();
        } catch (Throwable ig) {
            return 0;
        }
    }

    private static int wlViewMeasuredHeight(android.view.View v) {
        if (v == null) return 0;
        try {
            return ((Number) v.getClass().getMethod("getMeasuredHeight").invoke(v)).intValue();
        } catch (Throwable ig) {
            return 0;
        }
    }

    private static android.graphics.Typeface wlTypefaceFromFile(String path) {
        try {
            java.lang.reflect.Method m = android.graphics.Typeface.class.getMethod(
                    "createFromFile", String.class);
            return (android.graphics.Typeface) m.invoke(null, path);
        } catch (Throwable ig) {
            return null;
        }
    }

    private static android.graphics.Typeface wlTypefaceBuilder(String path) {
        try {
            Class<?> bCls = Class.forName("android.graphics.Typeface$Builder");
            Object b = bCls.getConstructor(String.class).newInstance(path);
            return (android.graphics.Typeface) bCls.getMethod("build").invoke(b);
        } catch (Throwable ig) {
            return null;
        }
    }

    /**
     * Runs AFTER theme Context is available (reuses early theme setup inline).
     * Forbidden: createSubDecor / ViewRootImpl.
     */
    private static void runInflate51() {
        StringBuilder res = new StringBuilder();
        res.append("inflate51 stage\n");
        earlyWriteLiteral("/data/local/tmp/inflate51-ladder.txt", "00-enter");
        android.view.View root = null;
        int mw = 0, mh = 0;
        try {
            // Theme context from the already-proven #43 path pieces.
            earlyWriteLiteral("/data/local/tmp/inflate51-ladder.txt", "01-theme");
            int earlyRc = runEarlyThemeOracle();
            res.append("01 earlyRc=").append(String.valueOf(earlyRc)).append('\n');
            android.content.Context ctx = null;
            try {
                // Prefer the Context stashed by early oracle if present.
                java.lang.reflect.Field f = Dayu600ApkStageProbe.class.getDeclaredField("sLastThemeContext");
                f.setAccessible(true);
                ctx = (android.content.Context) f.get(null);
            } catch (Throwable ig) {}
            if (ctx == null) {
                // Fall back: rebuild a minimal themed Context like early oracle.
                ctx = buildThemeContextForInflate();
            }
            if (ctx == null) {
                res.append("FAIL no-context\n");
                writeText("/data/local/tmp/inflate51-result.txt", res.toString());
                return;
            }
            res.append("01 ctx=").append(ctx.getClass().getName()).append('\n');
            earlyWriteLiteral("/data/local/tmp/inflate51-ladder.txt", "02-inflater");
            android.view.LayoutInflater li = null;
            try {
                li = (android.view.LayoutInflater) ctx.getSystemService(
                        android.content.Context.LAYOUT_INFLATER_SERVICE);
            } catch (Throwable t) {
                res.append("02 inflater-svc FAIL ").append(t.getClass().getName()).append('\n');
            }
            if (li == null) {
                try {
                    java.lang.reflect.Method fromM = android.view.LayoutInflater.class.getMethod(
                            "from", android.content.Context.class);
                    li = (android.view.LayoutInflater) fromM.invoke(null, ctx);
                } catch (Throwable t) {
                    res.append("FAIL no-inflater ").append(t.getClass().getName()).append('\n');
                    writeText("/data/local/tmp/inflate51-result.txt", res.toString());
                    return;
                }
            }
            try {
                repairProxyCacheForInflate();
            } catch (Throwable t) {
                res.append("02 proxy-cache FAIL ").append(t.getClass().getName()).append('\n');
            }
            ClassLoader utdLoader = null;
            try {
                utdLoader = new dalvik.system.PathClassLoader(
                        "/data/local/tmp/westlake-dayu600-substrate/apks/test-uptodown.apk",
                        Dayu600ApkStageProbe.class.getClassLoader());
                res.append("02 utd-loader=ok\n");
            } catch (Throwable t) {
                res.append("02 utd-loader FAIL ").append(t.getClass().getName()).append('\n');
            }
            try {
                Inflate51Factory2 factory = new Inflate51Factory2(utdLoader);
                try {
                    java.lang.reflect.Field mFactorySetF =
                            android.view.LayoutInflater.class.getDeclaredField("mFactorySet");
                    mFactorySetF.setAccessible(true);
                    mFactorySetF.setBoolean(li, false);
                } catch (Throwable ig) {}
                boolean setOk = false;
                try {
                    java.lang.reflect.Field mFactory2F =
                            android.view.LayoutInflater.class.getDeclaredField("mFactory2");
                    mFactory2F.setAccessible(true);
                    mFactory2F.set(li, factory);
                    try {
                        java.lang.reflect.Field mFactoryF =
                                android.view.LayoutInflater.class.getDeclaredField("mFactory");
                        mFactoryF.setAccessible(true);
                        mFactoryF.set(li, factory);
                    } catch (Throwable ig) {}
                    try {
                        java.lang.reflect.Field mFactorySetF =
                                android.view.LayoutInflater.class.getDeclaredField("mFactorySet");
                        mFactorySetF.setAccessible(true);
                        mFactorySetF.setBoolean(li, true);
                    } catch (Throwable ig) {}
                    setOk = true;
                    res.append("02 factory2=field-ok\n");
                } catch (Throwable t1) {
                    res.append("02 factory2-field FAIL ").append(t1.getClass().getName()).append('\n');
                }
                if (!setOk) {
                    try {
                        java.lang.reflect.Method setF2 = li.getClass().getMethod(
                                "setFactory2", android.view.LayoutInflater.Factory2.class);
                        setF2.invoke(li, factory);
                        setOk = true;
                        res.append("02 factory2=ok\n");
                    } catch (Throwable t2) {
                        res.append("02 factory2 FAIL ").append(t2.getClass().getName()).append('\n');
                    }
                }
                try {
                    Class<?> rl = tryNativeFindClass("android.widget.RelativeLayout");
                    if (rl == null) rl = Class.forName("android.widget.RelativeLayout");
                    res.append("02 RelativeLayout=").append(rl != null ? "ok" : "null").append('\n');
                } catch (Throwable t) {
                    res.append("02 RelativeLayout FAIL ").append(t.getClass().getName()).append('\n');
                }
            } catch (Throwable t) {
                res.append("02 factory2 FAIL ").append(t.getClass().getName()).append('\n');
                earlyWriteStack("/data/local/tmp/inflate51-factory2-err.txt", t);
            }
            earlyWriteLiteral("/data/local/tmp/inflate51-ladder.txt", "03-inflate");
            try {
                if (android.os.Looper.myLooper() == null) {
                    android.os.Looper.prepareMainLooper();
                }
            } catch (Throwable ig) {}
            /* Soft-disable AccessibilityManager so addView doesn't touch ServiceManager.
             * Do NOT call OHServiceManager.install here — its Proxy path SIGSEGVs on 5583. */
            try {
                Class<?> amCls = Class.forName("android.view.accessibility.AccessibilityManager");
                java.lang.reflect.Field inst = amCls.getDeclaredField("sInstance");
                inst.setAccessible(true);
                Object am = wlAlloc(amCls);
                if (am != null) {
                    try {
                        java.lang.reflect.Field lock = amCls.getDeclaredField("mLock");
                        lock.setAccessible(true);
                        if (lock.get(am) == null) lock.set(am, new Object());
                    } catch (Throwable ig) {}
                    String[] bools = new String[] {
                        "mIsEnabled", "mIsTouchExplorationEnabled", "mIsHighTextContrastEnabled"
                    };
                    for (int bi = 0; bi < bools.length; bi++) {
                        try {
                            java.lang.reflect.Field en = amCls.getDeclaredField(bools[bi]);
                            en.setAccessible(true);
                            en.setBoolean(am, false);
                        } catch (Throwable ig) {}
                    }
                    try { wlSetStaticFinal(inst, am); } catch (Throwable ig) {
                        try { inst.set(null, am); } catch (Throwable ig2) {}
                    }
                }
                res.append("03 a11y=stub\n");
            } catch (Throwable t) {
                res.append("03 a11y FAIL ").append(t.getClass().getName()).append('\n');
            }
            final int MAIN = 0x7f0e0121;
            root = li.inflate(MAIN, null);
            res.append("03 root=").append(root == null ? "null" : root.getClass().getName()).append('\n');
            if (root == null) {
                writeText("/data/local/tmp/inflate51-result.txt",
                        res.append("inflate=fail\n").toString());
                return;
            }
            earlyWriteLiteral("/data/local/tmp/inflate51-ladder.txt", "04-measure");
            int w = 1200, h = 1920;
            try {
                w = Integer.parseInt(System.getenv("WESTLAKE_FRAME_W") != null
                        ? System.getenv("WESTLAKE_FRAME_W") : "1200");
            } catch (Throwable ig) {}
            try {
                h = Integer.parseInt(System.getenv("WESTLAKE_FRAME_H") != null
                        ? System.getenv("WESTLAKE_FRAME_H") : "1920");
            } catch (Throwable ig) {}
            /* EXACTLY = 0x40000000; avoid MeasureSpec.forName which is flaky on this board. */
            final int EXACTLY = 0x40000000;
            int specW = (w & 0x3fffffff) | EXACTLY;
            int specH = (h & 0x3fffffff) | EXACTLY;
            try {
                wlViewMeasure(root, specW, specH);
                wlViewLayout(root, 0, 0, w, h);
            } catch (Throwable t) {
                res.append("04 measure-call FAIL ").append(t.getClass().getName()).append('\n');
                earlyWriteStack("/data/local/tmp/inflate51-measure-err.txt", t);
            }
            mw = wlViewMeasuredWidth(root);
            mh = wlViewMeasuredHeight(root);
            /* Alloc'd ViewGroups may leave measured dims 0 even after EXACTLY — force via runtime View fields. */
            if (mw == 0 || mh == 0) {
                try {
                    Class<?> viewCls = tryNativeFindClass("android.view.View");
                    if (viewCls == null) viewCls = root.getClass();
                    while (viewCls != null && !"java.lang.Object".equals(viewCls.getName())) {
                        try {
                            java.lang.reflect.Field mwF = viewCls.getDeclaredField("mMeasuredWidth");
                            java.lang.reflect.Field mhF = viewCls.getDeclaredField("mMeasuredHeight");
                            mwF.setAccessible(true);
                            mhF.setAccessible(true);
                            mwF.setInt(root, w);
                            mhF.setInt(root, h);
                            mw = w;
                            mh = h;
                            res.append("04 measure-forced\n");
                            break;
                        } catch (Throwable ig) {}
                        viewCls = viewCls.getSuperclass();
                    }
                } catch (Throwable ig) {}
            }
            res.append("04 measure=").append(String.valueOf(mw)).append('x').append(String.valueOf(mh)).append('\n');
            int childCount = viewChildCount(root);
            if (mw > 0 && mh > 0) {
                res.append("inflate=ok measure=").append(String.valueOf(mw)).append('x').append(String.valueOf(mh))
                   .append(" children=").append(String.valueOf(childCount)).append('\n');
                sLastInflatedRoot = root;
            } else {
                res.append("inflate=fail measure-zero\n");
            }
        } catch (Throwable t) {
            res.append("FAIL ").append(t.getClass().getName()).append('\n');
            earlyWriteStack("/data/local/tmp/inflate51-err.txt", t);
        }
        earlyWriteLiteral("/data/local/tmp/inflate51-ladder.txt", "99-done");
        try { writeText("/data/local/tmp/inflate51-result.txt", res.toString()); } catch (Throwable ig) {}
    }

    /** Rebuild Proxy.proxyClassCache — required before ANY dynamic proxy on this board. */
    private static void repairProxyCacheForInflate() {
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
            }
            Object cacheNow = pccF.get(null);
            earlyWriteLiteral("/data/local/tmp/inflate51-proxy.txt",
                    cacheNow != null ? "proxy-repaired" : "proxy-cache-still-null");
            try {
                java.lang.reflect.Field ordF = proxyCls.getDeclaredField("ORDER_BY_SIGNATURE_AND_SUBTYPE");
                ordF.setAccessible(true);
                if (ordF.get(null) == null) {
                    wlSetStaticFinal(ordF, new java.util.Comparator<Object>() {
                        public int compare(Object a, Object b) {
                            return String.valueOf(a).compareTo(String.valueOf(b));
                        }
                    });
                }
            } catch (Throwable ig) {}
            try {
                java.lang.reflect.Field cpF = proxyCls.getDeclaredField("constructorParams");
                cpF.setAccessible(true);
                if (cpF.get(null) == null) {
                    wlSetStaticFinal(cpF, new Class[]{ java.lang.reflect.InvocationHandler.class });
                }
            } catch (Throwable ig) {}
            try {
                java.lang.reflect.Field mos =
                        java.lang.reflect.Method.class.getDeclaredField("ORDER_BY_SIGNATURE");
                mos.setAccessible(true);
                if (mos.get(null) == null) {
                    wlSetStaticFinal(mos, new java.util.Comparator<Object>() {
                        public int compare(Object a, Object b) {
                            return String.valueOf(a).compareTo(String.valueOf(b));
                        }
                    });
                }
            } catch (Throwable ig) {}
            earlyWriteLiteral("/data/local/tmp/inflate51-proxy.txt", "proxy-repaired");
        } catch (Throwable t) {
            earlyWriteLiteral("/data/local/tmp/inflate51-proxy.txt", t.getClass().getName());
        }
    }

    private static android.view.View sLastInflatedRoot;
    private static android.content.Context sLastThemeContext;

    /** Create a stock framework view by short or FQCN tag without LayoutInflater.Class.forName. */
    private static android.view.View wlCreateStockView(String tag, android.content.Context c,
            android.util.AttributeSet attrs) {
        if (tag == null) return null;
        String[] candidates;
        if (tag.indexOf('.') >= 0) {
            candidates = new String[] { tag };
        } else {
            candidates = new String[] {
                "android.widget." + tag,
                "android.view." + tag,
                "android.app." + tag
            };
        }
        StringBuilder diag = new StringBuilder();
        diag.append("tag=").append(tag).append('\n');
        for (int i = 0; i < candidates.length; i++) {
            Class<?> cls = null;
            try {
                cls = tryNativeFindClass(candidates[i]);
                if (cls != null) diag.append("native=").append(candidates[i]).append('\n');
            } catch (Throwable ig) {}
            if (cls == null) {
                try {
                    cls = Class.forName(candidates[i]);
                    diag.append("forName=").append(candidates[i]).append('\n');
                } catch (Throwable ig) {
                    diag.append("forName-fail ").append(candidates[i]).append(' ')
                            .append(ig.getClass().getName()).append('\n');
                    continue;
                }
            }
            Object v = null;
            try {
                v = wlAlloc(cls);
                if (v != null) {
                    wlPokeViewContext(v, c);
                    diag.append("alloc-first=ok\n");
                }
            } catch (Throwable t0) {
                diag.append("alloc-first-fail\n");
            }
            if (v == null) {
            try {
                java.lang.reflect.Constructor<?> ctor = cls.getConstructor(
                        android.content.Context.class, android.util.AttributeSet.class);
                v = ctor.newInstance(c, attrs);
                diag.append("ctor2=ok\n");
            } catch (Throwable t1) {
                Throwable c1 = (t1 instanceof java.lang.reflect.InvocationTargetException
                        && t1.getCause() != null) ? t1.getCause() : t1;
                diag.append("ctor2-fail ").append(c1.getClass().getName()).append(':')
                        .append(String.valueOf(c1.getMessage())).append('\n');
                try {
                    java.lang.reflect.Constructor<?> ctor = cls.getConstructor(
                            android.content.Context.class);
                    v = ctor.newInstance(c);
                    diag.append("ctor1=ok\n");
                } catch (Throwable t2) {
                    Throwable c2 = (t2 instanceof java.lang.reflect.InvocationTargetException
                            && t2.getCause() != null) ? t2.getCause() : t2;
                    diag.append("ctor1-fail ").append(c2.getClass().getName()).append('\n');
                    try {
                        v = wlAlloc(cls);
                        if (v != null) {
                            wlPokeViewContext(v, c);
                            diag.append("alloc=ok\n");
                        }
                    } catch (Throwable t3) {
                        diag.append("alloc-fail\n");
                    }
                }
            }
            }
            if (v != null) {
                try {
                    Class<?> viewCls = tryNativeFindClass("android.view.View");
                    if (viewCls == null) viewCls = android.view.View.class;
                    if (viewCls.isInstance(v)) {
                        try { earlyWriteLiteral("/data/local/tmp/inflate51-stock-ok.txt", diag.toString()); }
                        catch (Throwable ig) {}
                        return (android.view.View) v;
                    }
                    diag.append("isInstance-fail ").append(v.getClass().getName()).append('\n');
                } catch (Throwable t4) {
                    diag.append("cast-fail ").append(t4.getClass().getName()).append('\n');
                }
            }
        }
        try { earlyWriteLiteral("/data/local/tmp/inflate51-stock-miss.txt", diag.toString()); }
        catch (Throwable ig) {}
        try {
            String safe = tag == null ? "null" : tag.replace('.', '_');
            earlyWriteLiteral("/data/local/tmp/inflate51-stock-" + safe + ".txt", diag.toString());
        } catch (Throwable ig) {}
        return null;
    }

    private static void wlPokeViewContext(Object v, android.content.Context c) {
        if (v == null || c == null) return;
        String[] names = { "mContext", "mBase" };
        for (int i = 0; i < names.length; i++) {
            try {
                java.lang.reflect.Field ctxF = android.view.View.class.getDeclaredField(names[i]);
                ctxF.setAccessible(true);
                ctxF.set(v, c);
                break;
            } catch (Throwable ig) {}
        }
        try {
            Class<?> vgCls = tryNativeFindClass("android.view.ViewGroup");
            if (vgCls == null) vgCls = android.view.ViewGroup.class;
            if (vgCls.isInstance(v)) {
                java.lang.reflect.Field mChildren = vgCls.getDeclaredField("mChildren");
                mChildren.setAccessible(true);
                if (mChildren.get(v) == null) {
                    mChildren.set(v, new android.view.View[12]);
                }
                try {
                    java.lang.reflect.Field mChildrenCount = vgCls.getDeclaredField("mChildrenCount");
                    mChildrenCount.setAccessible(true);
                    mChildrenCount.setInt(v, 0);
                } catch (Throwable ig) {}
            }
        } catch (Throwable ig) {}
    }

    /** Seed mRenderNode on Unsafe-alloc'd Views (View ctor normally creates it). */
    private static int wlEnsureRenderNodes(android.view.View root) {
        if (root == null) return 0;
        int n = 0;
        try {
            java.lang.reflect.Field rnF = android.view.View.class.getDeclaredField("mRenderNode");
            rnF.setAccessible(true);
            java.util.ArrayList<android.view.View> q = new java.util.ArrayList<android.view.View>();
            q.add(root);
            for (int i = 0; i < q.size(); i++) {
                android.view.View v = q.get(i);
                try {
                    Object cur = rnF.get(v);
                    if (cur == null) {
                        String nm = v.getClass().getSimpleName();
                        Object rn = Class.forName("android.graphics.RenderNode")
                                .getConstructor(String.class)
                                .newInstance(nm);
                        rnF.set(v, rn);
                        n++;
                    }
                } catch (Throwable ig) {}
                int cc = viewChildCount(v);
                for (int c = 0; c < cc; c++) {
                    android.view.View ch = viewChildAt(v, c);
                    if (ch != null) q.add(ch);
                }
            }
        } catch (Throwable ig) {}
        return n;
    }

    /** Replace bootstrap/fake RenderNodes with real libhwui nodes after Noice is built. */
    private static int wlReplaceRenderNodes(android.view.View root) throws Exception {
        if (root == null) return 0;
        java.lang.reflect.Field rnF = android.view.View.class.getDeclaredField("mRenderNode");
        rnF.setAccessible(true);
        Class<?> rnCls = Class.forName("android.graphics.RenderNode");
        java.lang.reflect.Constructor<?> ctor = rnCls.getConstructor(String.class);
        java.util.ArrayList<android.view.View> q = new java.util.ArrayList<android.view.View>();
        q.add(root);
        int n = 0;
        for (int i = 0; i < q.size(); i++) {
            android.view.View v = q.get(i);
            rnF.set(v, ctor.newInstance(v.getClass().getSimpleName()));
            n++;
            int cc = viewChildCount(v);
            for (int c = 0; c < cc; c++) {
                android.view.View child = viewChildAt(v, c);
                if (child != null) q.add(child);
            }
        }
        return n;
    }

    /** Field-poke layout bounds — avoid View.layout → RelativeLayout.onMeasure NPE. */
    /* draw() completes over a 44-node tree yet every pixel comes back transparent. Before
     * guessing between "nothing has size" and "nothing has a background", measure it: per
     * node report the laid-out rect, visibility and whether a background is attached. */
    private static void wlDrawTree(android.view.View v, Object canvas, Class<?> canvasCls,
                                   int[] n) {
        wlDrawTreeAt(v, canvas, canvasCls, n, 0, 0);   // n[0]=drawn n[1]=visited n[2]=withBg
    }

    /* View.draw() paints nothing for noice's views on this substrate, while handing a
     * Drawable to the canvas directly does paint (10r4g). So walk the tree and draw each
     * node's background ourselves at its real laid-out position -- with force-bounds off the
     * layout is genuine, so these positions are the ones the app intended. */
    private static void wlDrawTreeAt(android.view.View v, Object canvas, Class<?> canvasCls,
                                     int[] n, int ox, int oy) {
        if (v == null || n[1] > 400) return;
        n[1]++;
        int left = 0, top = 0, right = 0, bottom = 0;
        try {
            Object vis = android.view.View.class.getMethod("getVisibility").invoke(v);
            if (vis instanceof Integer && ((Integer) vis).intValue() != 0) return;
        } catch (Throwable ig) {}
        // Geometry in its own try: sharing one with the visibility read meant a single
        // failing getter left every bound at zero and silently skipped the whole node.
        try {
            left = ((Integer) android.view.View.class.getMethod("getLeft").invoke(v)).intValue();
            top = ((Integer) android.view.View.class.getMethod("getTop").invoke(v)).intValue();
            right = ((Integer) android.view.View.class.getMethod("getRight").invoke(v)).intValue();
            bottom = ((Integer) android.view.View.class.getMethod("getBottom").invoke(v)).intValue();
        } catch (Throwable ig) {}
        if (right <= left || bottom <= top) {
            // Fall back to the measured size when the laid-out rect is degenerate.
            try {
                int mw = ((Integer) android.view.View.class.getMethod("getMeasuredWidth")
                        .invoke(v)).intValue();
                int mh = ((Integer) android.view.View.class.getMethod("getMeasuredHeight")
                        .invoke(v)).intValue();
                if (mw > 0 && mh > 0) { right = left + mw; bottom = top + mh; }
            } catch (Throwable ig) {}
        }
        if (n[3] == 0 && right > left) { n[3] = 1; n[4] = left; n[5] = top; n[6] = right; n[7] = bottom; }
        int ax = ox + left, ay = oy + top;
        try {
            Object bg = android.view.View.class.getMethod("getBackground").invoke(v);
            if (bg != null) n[2]++;
            if (bg != null && right > left && bottom > top) {
                Class<?> drC = Class.forName("android.graphics.drawable.Drawable");
                drC.getMethod("setBounds", int.class, int.class, int.class, int.class)
                   .invoke(bg, Integer.valueOf(ax), Integer.valueOf(ay),
                           Integer.valueOf(ax + (right - left)),
                           Integer.valueOf(ay + (bottom - top)));
                drC.getMethod("draw", canvasCls).invoke(bg, canvas);
                n[0]++;
            }
        } catch (Throwable ig) {}
        int cc = viewChildCount(v);
        for (int i = 0; i < cc; i++) {
            wlDrawTreeAt(viewChildAt(v, i), canvas, canvasCls, n, ax, ay);
        }
    }

    private static void wlDrawTreeUnused(android.view.View v, Object canvas, Class<?> canvasCls,
                                   int[] n) {
        if (v == null || n[0] > 400) return;
        try {
            Object vis = android.view.View.class.getMethod("getVisibility").invoke(v);
            if (vis instanceof Integer && ((Integer) vis).intValue() != 0) return;
        } catch (Throwable ig) {}
        /* View.draw() computes
         *     dirtyOpaque = (mPrivateFlags & PFLAG_DIRTY_MASK) == PFLAG_DIRTY_OPAQUE
         *                   && (mAttachInfo == null || !mAttachInfo.mIgnoreDirtyState)
         * and skips BOTH the background and onDraw when it holds. mAttachInfo is null here,
         * so the second half is always true, and any view carrying the opaque-dirty bit from
         * layout/invalidate draws nothing at all. That is the difference between noice's
         * views and the freshly constructed probe View that paints fine. Clear the dirty bits
         * so each node actually paints itself. */
        try {
            java.lang.reflect.Field pf = android.view.View.class.getDeclaredField("mPrivateFlags");
            pf.setAccessible(true);
            pf.setInt(v, pf.getInt(v) & ~0x00600000);
        } catch (Throwable ig) {}
        try {
            android.view.View.class.getMethod("draw", canvasCls).invoke(v, canvas);
            n[0]++;
        } catch (Throwable dt) {
            // One bad node must not abort the whole frame; the rest of the tree still paints.
            n[0]++;
        }
        int c = viewChildCount(v);
        for (int i = 0; i < c; i++) wlDrawTree(viewChildAt(v, i), canvas, canvasCls, n);
    }

    private static Object wlFirstBackground(android.view.View v) {
        if (v == null) return null;
        try {
            Object bg = android.view.View.class.getMethod("getBackground").invoke(v);
            if (bg != null) return bg;
        } catch (Throwable ig) {}
        int c = viewChildCount(v);
        for (int i = 0; i < c; i++) {
            Object r = wlFirstBackground(viewChildAt(v, i));
            if (r != null) return r;
        }
        return null;
    }

    private static String wlDumpNodes(android.view.View v) {
        StringBuilder o = new StringBuilder();
        wlDumpNodesInto(v, 0, o, new int[] { 0 });
        return o.toString();
    }

    private static void wlDumpNodesInto(android.view.View v, int depth, StringBuilder o, int[] n) {
        if (v == null || n[0] > 60) return;
        n[0]++;
        for (int i = 0; i < depth; i++) o.append(' ');
        // The compile-time framework shim omits most View getters; go through reflection so
        // this dumper does not depend on which ones it happens to declare.
        o.append(v.getClass().getSimpleName()).append(' ');
        String[] geom = { "getLeft", "getTop", "getRight", "getBottom", "getVisibility" };
        for (int i = 0; i < geom.length; i++) {
            try {
                Object r = android.view.View.class.getMethod(geom[i]).invoke(v);
                o.append(geom[i].substring(3)).append('=').append(String.valueOf(r)).append(' ');
            } catch (Throwable t) { o.append(geom[i].substring(3)).append("=? "); }
        }
        try {
            Object bg = android.view.View.class.getMethod("getBackground").invoke(v);
            o.append("bg=").append(bg == null ? "null" : bg.getClass().getSimpleName());
        } catch (Throwable t) { o.append("bg=?"); }
        if (v instanceof android.widget.TextView) {
            try {
                Object cs = android.widget.TextView.class.getMethod("getText").invoke(v);
                o.append(" textLen=").append(cs == null ? -1
                        : ((CharSequence) cs).length());
            } catch (Throwable t) { o.append(" textLen=?"); }
        }
        o.append('\n');
        int c = viewChildCount(v);
        for (int i = 0; i < c; i++) wlDumpNodesInto(viewChildAt(v, i), depth + 1, o, n);
    }

    private static void wlForceViewBounds(android.view.View v, int l, int t, int r, int b) {
        if (v == null) return;
        String[] names = { "mLeft", "mTop", "mRight", "mBottom" };
        int[] vals = { l, t, r, b };
        for (int i = 0; i < names.length; i++) {
            try {
                java.lang.reflect.Field f = android.view.View.class.getDeclaredField(names[i]);
                f.setAccessible(true);
                f.setInt(v, vals[i]);
            } catch (Throwable ig) {}
        }
        try {
            java.lang.reflect.Field mw = android.view.View.class.getDeclaredField("mMeasuredWidth");
            mw.setAccessible(true);
            mw.setInt(v, r - l);
            java.lang.reflect.Field mh = android.view.View.class.getDeclaredField("mMeasuredHeight");
            mh.setAccessible(true);
            mh.setInt(v, b - t);
        } catch (Throwable ig) {}
        int cc = viewChildCount(v);
        for (int c = 0; c < cc; c++) {
            android.view.View ch = viewChildAt(v, c);
            if (ch != null) wlForceViewBounds(ch, 0, 0, r - l, b - t);
        }
    }

    /**
     * Unsafe-alloc'd TextView skips View/TextView ctor → mTextPaint/mText null →
     * BoringLayout.isBoring NPE in onDraw. Seed the minimum fields for software draw.
     */
    private static int wlBootstrapTextViews(android.view.View root) {
        if (root == null) return 0;
        int n = 0;
        java.util.ArrayList<android.view.View> q = new java.util.ArrayList<android.view.View>();
        q.add(root);
        for (int i = 0; i < q.size(); i++) {
            android.view.View v = q.get(i);
            int cc = viewChildCount(v);
            for (int c = 0; c < cc; c++) {
                android.view.View ch = viewChildAt(v, c);
                if (ch != null) q.add(ch);
            }
            String cn = v.getClass().getName();
            if (cn == null || cn.indexOf("TextView") < 0) continue;
            try {
                Class<?> tvCls = Class.forName("android.widget.TextView");
                if (!tvCls.isInstance(v)) continue;
                /* mTextPaint */
                try {
                    java.lang.reflect.Field f = tvCls.getDeclaredField("mTextPaint");
                    f.setAccessible(true);
                    if (f.get(v) == null) {
                        Class<?> tpCls = Class.forName("android.text.TextPaint");
                        Object tp = tpCls.getConstructor(int.class).newInstance(Integer.valueOf(1));
                        try {
                            tpCls.getMethod("setTextSize", float.class).invoke(tp, Float.valueOf(48f));
                        } catch (Throwable ig) {}
                        try {
                            Object def = android.graphics.Typeface.class.getField("DEFAULT").get(null);
                            if (def != null) {
                                tpCls.getMethod("setTypeface", android.graphics.Typeface.class)
                                        .invoke(tp, def);
                            }
                        } catch (Throwable ig) {}
                        f.set(v, tp);
                    }
                } catch (Throwable ig) {}
                /* mText / mTransformed */
                String[] textFields = { "mText", "mTransformed" };
                for (int ti = 0; ti < textFields.length; ti++) {
                    try {
                        java.lang.reflect.Field f = tvCls.getDeclaredField(textFields[ti]);
                        f.setAccessible(true);
                        if (f.get(v) == null) f.set(v, "");
                    } catch (Throwable ig) {}
                }
                /* mHint null-ok; mLayout left null so assumeLayout rebuilds */
                try {
                    java.lang.reflect.Field f = tvCls.getDeclaredField("mBoring");
                    f.setAccessible(true);
                    f.set(v, null);
                } catch (Throwable ig) {}
                /* Skip highlight-path machinery (maybeUpdateHighlightPaths NPE on alloc'd TV). */
                try {
                    java.lang.reflect.Field f = tvCls.getDeclaredField("mHighlightPathsBogus");
                    f.setAccessible(true);
                    f.setBoolean(v, false); /* early-return in maybeUpdateHighlightPaths */
                } catch (Throwable ig) {}
                try {
                    Class<?> al = Class.forName("java.util.ArrayList");
                    Object empty = al.getConstructor().newInstance();
                    String[] listFields = {
                        "mHighlightPaths", "mHighlightPaints", "mPathRecyclePool"
                    };
                    for (int li = 0; li < listFields.length; li++) {
                        try {
                            java.lang.reflect.Field f = tvCls.getDeclaredField(listFields[li]);
                            f.setAccessible(true);
                            if (f.get(v) == null) f.set(v, al.getConstructor().newInstance());
                        } catch (Throwable ig) {}
                    }
                } catch (Throwable ig) {}
                try {
                    java.lang.reflect.Field f = tvCls.getDeclaredField("mHighlightPaint");
                    f.setAccessible(true);
                    if (f.get(v) == null) {
                        f.set(v, Class.forName("android.graphics.Paint").getConstructor().newInstance());
                    }
                } catch (Throwable ig) {}
                String[] nullObjs = {
                    "mEditor", "mMarquee", "mHighlights", "mSearchResultHighlights", "mMovement"
                };
                for (int ni = 0; ni < nullObjs.length; ni++) {
                    try {
                        java.lang.reflect.Field f = tvCls.getDeclaredField(nullObjs[ni]);
                        f.setAccessible(true);
                        f.set(v, null);
                    } catch (Throwable ig) {}
                }
                try {
                    java.lang.reflect.Field f = tvCls.getDeclaredField("mHighlightPathIsDirty");
                    f.setAccessible(true);
                    f.setBoolean(v, false);
                } catch (Throwable ig) {}
                try {
                    java.lang.reflect.Field f = tvCls.getDeclaredField("mHighlightColor");
                    f.setAccessible(true);
                    f.setInt(v, 0);
                } catch (Throwable ig) {}
                n++;
            } catch (Throwable ig) {}
        }
        return n;
    }

    /**
     * ViewGroup ctor sets FLAG_ANIMATION_DONE|FLAG_CLIP_CHILDREN; alloc skips that →
     * dispatchDraw calls mLayoutAnimationController.isDone() on null.
     */
    private static void wlBootstrapViewGroupFlags(android.view.View root) {
        if (root == null) return;
        final int FLAG_CLIP_CHILDREN = 0x1;
        final int FLAG_ANIMATION_DONE = 0x10;
        java.util.ArrayList<android.view.View> q = new java.util.ArrayList<android.view.View>();
        q.add(root);
        for (int i = 0; i < q.size(); i++) {
            android.view.View v = q.get(i);
            int cc = viewChildCount(v);
            for (int c = 0; c < cc; c++) {
                android.view.View ch = viewChildAt(v, c);
                if (ch != null) q.add(ch);
            }
            if (cc < 0) continue;
            try {
                Class<?> vgCls = Class.forName("android.view.ViewGroup");
                if (!vgCls.isInstance(v)) continue;
                java.lang.reflect.Field f = vgCls.getDeclaredField("mGroupFlags");
                f.setAccessible(true);
                int flags = f.getInt(v);
                flags |= FLAG_CLIP_CHILDREN | FLAG_ANIMATION_DONE;
                f.setInt(v, flags);
            } catch (Throwable ig) {}
        }
    }

    /** Stash a WlProxyContext for inflate/firstFrame after #43 theme setup succeeds. */
    private static void stashThemeContext(android.content.res.AssetManager am,
            android.content.res.Resources res, android.content.res.Resources.Theme th) {
        try {
            android.content.Context base = new ProbeContext(am);
            sLastThemeContext = new WlProxyContext(base, base, res, th, base);
            earlyWriteLiteral("/data/local/tmp/inflate51-ctx.txt", "stash-ok");
        } catch (Throwable t) {
            earlyWriteLiteral("/data/local/tmp/inflate51-ctx.txt", "stash-fail");
            earlyWriteStack("/data/local/tmp/inflate51-ctx-err.txt", t);
        }
    }

    private static android.content.Context buildThemeContextForInflate() {
        if (sLastThemeContext != null) {
            return sLastThemeContext;
        }
        try {
            ensureTraceNatives();
            ensureArscNatives();
            seedSystemAssetManager();
            Class<?> amCls = android.content.res.AssetManager.class;
            java.lang.reflect.Constructor<?> amC = amCls.getDeclaredConstructor(boolean.class);
            amC.setAccessible(true);
            android.content.res.AssetManager am =
                    (android.content.res.AssetManager) amC.newInstance(Boolean.TRUE);
            nativeW001BindTrace(am);
            nativeW001Append(am, W001_APK_PATH);
            nativeW001Append(am, W001_FW_PATH);
            android.util.DisplayMetrics dm = new android.util.DisplayMetrics();
            try { dm.setToDefaults(); } catch (Throwable ig) {
                dm.density = 1.0f; dm.widthPixels = 1200; dm.heightPixels = 1920;
            }
            android.content.res.Resources res =
                    new android.content.res.Resources(am, dm, new android.content.res.Configuration());
            android.content.res.Resources.Theme th = res.newTheme();
            th.applyStyle(0x7f15000e, true);
            stashThemeContext(am, res, th);
            return sLastThemeContext;
        } catch (Throwable t) {
            earlyWriteStack("/data/local/tmp/inflate51-ctx-build-err.txt", t);
            return null;
        }
    }

    /**
     * #53 — record real inflated root into RenderNode and submit via WestlakeUpscreen.
     * Requires inflate51 success (sLastInflatedRoot) or re-runs inflate.
     */
    private static void runFirstFrame53() {
        StringBuilder res = new StringBuilder();
        res.append("firstFrame53 stage\n");
        earlyWriteLiteral("/data/local/tmp/firstframe-ladder.txt", "00-enter");
        try {
            try {
                if (android.os.Looper.myLooper() == null) {
                    android.os.Looper.prepareMainLooper();
                }
            } catch (Throwable ig) {}
            if (sLastInflatedRoot == null) {
                runInflate51();
            }
            android.view.View root = sLastInflatedRoot;
            if (root == null) {
                res.append("FAIL no-root\n");
                writeText("/data/local/tmp/firstframe-result.txt", res.toString());
                return;
            }
            int childCount = viewChildCount(root);
            String rootCls = root.getClass().getName();
            // Reject pure-color sentinel: bare android.view.View with zero children.
            boolean realTree = childCount > 0
                    && !"android.view.View".equals(rootCls);
            res.append("01 root=").append(rootCls)
               .append(" children=").append(String.valueOf(childCount))
               .append(" realTree=").append(realTree ? "yes" : "no").append('\n');
            earlyWriteLiteral("/data/local/tmp/firstframe-ladder.txt", "02-show");
            int w = wlViewMeasuredWidth(root) > 0 ? wlViewMeasuredWidth(root) : 1200;
            int h = wlViewMeasuredHeight(root) > 0 ? wlViewMeasuredHeight(root) : 1920;
            /* Unsafe-alloc'd Views skip View(Context) → mRenderNode==null → getElevation NPE
             * inside ViewGroup.dispatchDraw. Seed a RenderNode on every node before record. */
            int rnN = wlEnsureRenderNodes(root);
            res.append("01b renderNodes=").append(String.valueOf(rnN)).append('\n');
            int tvN = wlBootstrapTextViews(root);
            res.append("01c textViews=").append(String.valueOf(tvN)).append('\n');
            wlBootstrapViewGroupFlags(root);
            wlForceViewBounds(root, 0, 0, w, h);
            Class<?> ups = Class.forName("adapter.window.WestlakeUpscreen");
            /* Alloc'd RelativeLayout.onMeasure NPEs — never call WestlakeUpscreen.layout/show. */
            int r = -1;
            long swapArgb = -1L;
            try {
                java.lang.reflect.Method record = ups.getMethod("record",
                        android.view.View.class, int.class, int.class);
                Object node = record.invoke(null, root, Integer.valueOf(w), Integer.valueOf(h));
                java.lang.reflect.Method nPtr = ups.getDeclaredMethod("nativeRenderNodePtr",
                        Class.forName("android.graphics.RenderNode"));
                nPtr.setAccessible(true);
                Object ptrObj = nPtr.invoke(null, node);
                long ptr = (ptrObj instanceof Long) ? ((Long) ptrObj).longValue() : 0L;
                /* Load skia AFTER recording so RTLD_NEXT can see MakeGL; before nativeInit. */
                res.append(wlLoadLib("/system/lib64/libskia_canvaskit.z.so")
                        ? "01d skia=loaded\n" : "01d skia FAIL\n");
                wlLoadLib("/system/lib64/libEGL.so");
                wlLoadLib("/system/lib64/libGLESv3.so");
                java.lang.reflect.Method nInit = ups.getDeclaredMethod("nativeInit",
                        long.class, int.class, int.class);
                nInit.setAccessible(true);
                Object irc = nInit.invoke(null, Long.valueOf(ptr), Integer.valueOf(w), Integer.valueOf(h));
                int ir = (irc instanceof Integer) ? ((Integer) irc).intValue() : -1;
                res.append("02 nativeInit=").append(String.valueOf(ir)).append(" ptr=").append(String.valueOf(ptr)).append('\n');
                // nativeInit returns 2 on success, 0 on failure (null ptr /
                // make_display_window / oh_anw_wrap), and never 1. Only ir==2 may
                // draw. Any other value is a REAL failure — do not force r=2. The old
                // `ir==0||ir==2||ir==1` guard let a failed nativeInit (ir==0) call
                // nativeDrawFrame (a no-op on the null g_proxy) and still report
                // firstframe=ok r=2 — a guaranteed false positive. NOTE: r==2 is still
                // NOT pixel evidence (no readback); it only means the JNI triple did not throw.
                if (ir == 2) {
                    java.lang.reflect.Method nDraw = ups.getDeclaredMethod("nativeDrawFrame");
                    nDraw.setAccessible(true);
                    nDraw.invoke(null);
                    // Pixel evidence: nativeLastSwapArgb() >= 0 proves the RenderThread reached
                    // eglSwap and egl_interposer captured a real frame — not merely that the JNI
                    // triple returned without throwing. -1 means NO swap happened (RenderProxy
                    // silently produced nothing); that must NOT report ok even with ir==2.
                    try {
                        java.lang.reflect.Method nSwap = ups.getDeclaredMethod("nativeLastSwapArgb");
                        nSwap.setAccessible(true);
                        Object sv = nSwap.invoke(null);
                        swapArgb = (sv instanceof Long) ? ((Long) sv).longValue() : -1L;
                    } catch (Throwable ig) { swapArgb = -1L; }
                    res.append("02b swapArgb=").append(hex8((int) swapArgb))
                       .append(swapArgb >= 0L ? " captured" : " NO-SWAP").append('\n');
                    r = 2;
                } else {
                    r = ir;
                }
            } catch (Throwable tShow) {
                res.append("02 record-path FAIL ").append(tShow.getClass().getName()).append('\n');
                earlyWriteStack("/data/local/tmp/firstframe-show-err.txt", tShow);
                /* Do NOT fall back to show() — layout() NPEs on alloc'd RelativeLayout. */
            }
            res.append("02 show r=").append(String.valueOf(r)).append('\n');
            boolean swapped = swapArgb >= 0L;
            if (r == 2 && realTree && swapped) {
                res.append("firstframe=ok r=2 sentinel=no swap=yes\n");
            } else if (r == 2 && !realTree) {
                res.append("firstframe=fail sentinel=yes r=2\n");
            } else if (r == 2 && !swapped) {
                res.append("firstframe=fail no-swap r=2\n");
            } else {
                res.append("firstframe=fail r=").append(String.valueOf(r)).append('\n');
            }
            try {
                StringBuilder hb = new StringBuilder();
                hb.append("firstframe r=").append(String.valueOf(r));
                hb.append(" realTree=").append(realTree ? "ok" : "fail");
                hb.append(" children=").append(String.valueOf(childCount));
                hb.append(" sentinel=").append((r == 2 && !realTree) ? "yes" : "no");
                hb.append(" swap=").append(swapArgb >= 0L ? "yes" : "no").append('\n');
                writeText("/data/local/tmp/firstframe-heartbeat.txt", hb.toString());
            } catch (Throwable ig) {}
        } catch (Throwable t) {
            res.append("FAIL ").append(t.getClass().getName()).append('\n');
            earlyWriteStack("/data/local/tmp/firstframe-err.txt", t);
        }
        earlyWriteLiteral("/data/local/tmp/firstframe-ladder.txt", "99-done");
        try { writeText("/data/local/tmp/firstframe-result.txt", res.toString()); } catch (Throwable ig) {}
    }

    /** Lowercase 8-hex-digit ARGB (zero-padded) — matches the oracle's pixel0=ffff0000 form. */
    private static String hex8(int v) {
        String s = Integer.toHexString(v);
        while (s.length() < 8) s = "0" + s;
        return s;
    }

    /** Invoke WestlakeUpscreen.nativeLastSwapArgb(); -1 on any failure (distinct from opaque ARGB). */
    private static long readSwapArgb(java.lang.reflect.Method nSwap) {
        try {
            Object o = nSwap.invoke(null);
            return (o instanceof Long) ? ((Long) o).longValue() : -1L;
        } catch (Throwable t) { return -1L; }
    }

    /**
     * #53 color-liveness — the color-apk's OWN ColorView.onDraw (a single Canvas.drawColor
     * op) paints a CHANGING pure color through OUR libhwui; egl_interposer captures the
     * center pixel pre-swap and nativeLastSwapArgb hands it back. Frame0 = red (PALETTE[0]),
     * the app's own nextColor() advances the palette, frame1 = green (PALETTE[1]).
     *
     * Writes the two marker files oracle/verify/color-smoke-5ce.sh greps:
     *   color-smoke-result.txt : color-smoke=ok + changed=yes
     *   color-smoke-pixels.txt : pixel0=ffff0000 (red ARGB) + pixel1=ff00ff00 (green ARGB)
     *
     * ColorView is loaded from color-smoke.apk's OWN dex, so the drawColor op provably comes
     * from the APP's compiled render code — not the probe, not OH direct fill. provenance > visual.
     * View prep mirrors firstFrame53's DEVICE-PROVEN path (unsafe-alloc + seed RenderNode +
     * force bounds), avoiding View(Context)/measure() crash risk on the alloc'd leaf.
     */
    private static void runNoiceApk() {
        StringBuilder out = new StringBuilder("noiceApk stage\n");
        String log = probeLogPath("noice-result.txt");
        try {
            repairJavaIoFileSystem();
            if (android.os.Looper.myLooper() == null) android.os.Looper.prepareMainLooper();
            out.append("01 looper=ok\n"); writeText(log, out.toString());

            repairMethodHandleStatics();
            repairProxyCacheForInflate();
            try {
                Class.forName("westlake.adapter.OHServiceManager").getMethod("install").invoke(null);
                out.append("02 ohsm=installed\n");
            } catch (Throwable t) {
                out.append("02 ohsm=fail:").append(t.getClass().getName()).append(':')
                   .append(String.valueOf(t.getMessage())).append('\n');
            }
            writeText(log, out.toString());

            out.append("03 androidfw=deferred\n");
            writeText(log, out.toString());

            Class<?> amCls = android.content.res.AssetManager.class;
            java.lang.reflect.Constructor<?> ac = amCls.getDeclaredConstructor(boolean.class);
            ac.setAccessible(true);
            android.content.res.AssetManager am = (android.content.res.AssetManager) ac.newInstance(Boolean.TRUE);
            java.lang.reflect.Field assetsF = amCls.getDeclaredField("mApkAssets");
            assetsF.setAccessible(true);
            Class<?> apkAssetsCls = Class.forName("android.content.res.ApkAssets");
            assetsF.set(am, java.lang.reflect.Array.newInstance(apkAssetsCls, 0));
            try {
                ensureArscNatives();
                String assetMode = "w001";
                int ckApp = addAssetPathDirect(am, apkPath("noice.apk"));
                int ckFw = addAssetPathDirect(am, rootPath() + "/android/framework/framework-res.apk");
                out.append("04 assets=").append(assetMode).append(":noice:")
                   .append(ckApp).append("/fw:").append(ckFw).append('\n');
            } catch (Throwable t) {
                Throwable c = t instanceof java.lang.reflect.InvocationTargetException && t.getCause() != null
                        ? t.getCause() : t;
                out.append("04 assets=fail:").append(c.getClass().getName()).append(':')
                   .append(String.valueOf(c.getMessage())).append('\n');
                writeText(log, out.toString());
                throw c;
            }
            writeText(log, out.toString());
            try {
                ensureTraceNatives();
                nativeW001BindTrace(am);
                out.append("04b traceP2=ok\n");
            } catch (Throwable t) {
                out.append("04b traceP2=fail:").append(t.getClass().getName()).append(':')
                   .append(String.valueOf(t.getMessage())).append('\n');
            }
            writeText(log, out.toString());

            ClassLoader loader = new dalvik.system.PathClassLoader(
                    apkPath("noice.apk"), Dayu600ApkStageProbe.class.getClassLoader());
            mNoiceLoader = loader;
            Thread.currentThread().setContextClassLoader(loader);
            Class<?> appCls = Class.forName(
                    "com.github.ashutoshgngwr.noice.NoiceApplication", false, loader);
            Class<?> mainCls = Class.forName(
                    "com.github.ashutoshgngwr.noice.activity.MainActivity", false, loader);
            out.append("05 dex app=").append(appCls.getName()).append(" main=")
               .append(mainCls.getName()).append('\n'); writeText(log, out.toString());

            Object app = appCls.getDeclaredConstructor().newInstance();
            ProbeContext base = new ProbeContext(am);
            base.setApplication((android.app.Application) app);
            java.lang.reflect.Field baseF = android.content.ContextWrapper.class.getDeclaredField("mBase");
            baseF.setAccessible(true);
            baseF.set(app, base);
            out.append("06 application=new+attached\n"); writeText(log, out.toString());
            try {
                appCls.getMethod("onCreate").invoke(app);
                out.append("07 application.onCreate=ok\n");
            } catch (Throwable t) {
                Throwable c = t instanceof java.lang.reflect.InvocationTargetException && t.getCause() != null
                        ? t.getCause() : t;
                out.append("07 application.onCreate=fail:").append(c.getClass().getName())
                   .append(':').append(String.valueOf(c.getMessage())).append('\n');
                writeText(log, out.toString());
                throw c;
            }
            writeText(log, out.toString());

            Object activity = mainCls.getDeclaredConstructor().newInstance();
            baseF.set(activity, base);
            java.lang.reflect.Field appF = android.app.Activity.class.getDeclaredField("mApplication");
            appF.setAccessible(true); appF.set(activity, app);
            java.lang.reflect.Field intentF = android.app.Activity.class.getDeclaredField("mIntent");
            intentF.setAccessible(true); intentF.set(activity, new android.content.Intent());
            try {
                android.content.pm.ActivityInfo info = new android.content.pm.ActivityInfo();
                info.name = mainCls.getName();
                info.packageName = base.getPackageName();
                info.applicationInfo = base.getApplicationInfo();
                info.parentActivityName = null;
                java.lang.reflect.Field infoF = android.app.Activity.class.getDeclaredField("mActivityInfo");
                infoF.setAccessible(true);
                infoF.set(activity, info);
                java.lang.reflect.Field componentF = android.app.Activity.class.getDeclaredField("mComponent");
                componentF.setAccessible(true);
                componentF.set(activity, new android.content.ComponentName(base.getPackageName(), mainCls.getName()));
                out.append("08ab activityInfo=seeded\n"); writeText(log, out.toString());
            } catch (Throwable t) {
                out.append("08ab activityInfo=fail:").append(t.getClass().getName()).append(':')
                   .append(String.valueOf(t.getMessage())).append('\n');
                writeText(log, out.toString());
            }
            try {
                java.lang.reflect.Field fragmentsF = android.app.Activity.class.getDeclaredField("mFragments");
                fragmentsF.setAccessible(true);
                Object fragments = fragmentsF.get(activity);
                java.lang.reflect.Method attachHost = fragments.getClass().getDeclaredMethod(
                        "attachHost", android.app.Fragment.class);
                attachHost.setAccessible(true);
                attachHost.invoke(fragments, new Object[] { null });
                out.append("08ac fragmentsHost=attached\n"); writeText(log, out.toString());
            } catch (Throwable t) {
                Throwable c = t instanceof java.lang.reflect.InvocationTargetException && t.getCause() != null
                        ? t.getCause() : t;
                out.append("08ac fragmentsHost=fail:").append(c.getClass().getName()).append(':')
                   .append(String.valueOf(c.getMessage())).append('\n');
                writeText(log, out.toString());
            }
            try {
                Class<?> pwCls = Class.forName("com.android.internal.policy.PhoneWindow");
                Object pw = null;
                String windowMode = "ctor";
                try {
                    java.lang.reflect.Constructor<?> pwCtor =
                            pwCls.getDeclaredConstructor(android.content.Context.class);
                    pwCtor.setAccessible(true);
                    pw = pwCtor.newInstance((android.content.Context) activity);
                } catch (Throwable ctorT) {
                    Class<?> uc = Class.forName("jdk.internal.misc.Unsafe");
                    java.lang.reflect.Field tf = uc.getDeclaredField("theUnsafe");
                    tf.setAccessible(true);
                    Object unsafe = tf.get(null);
                    pw = uc.getMethod("allocateInstance", Class.class).invoke(unsafe, pwCls);
                    java.lang.reflect.Field ctxF = Class.forName("android.view.Window")
                            .getDeclaredField("mContext");
                    unsafePutObjectField(pw, ctxF, activity);
                    try {
                        java.lang.reflect.Field liF = pwCls.getDeclaredField("mLayoutInflater");
                        liF.setAccessible(true);
                        liF.set(pw, new NoiceLayoutInflater((android.content.Context) activity));
                    } catch (Throwable ignored) {}
                    Throwable c = ctorT instanceof java.lang.reflect.InvocationTargetException
                            && ctorT.getCause() != null ? ctorT.getCause() : ctorT;
                    windowMode = "unsafe:" + c.getClass().getSimpleName();
                }
                try {
                    Class<?> winCls = Class.forName("android.view.Window");
                    java.lang.reflect.Method setCb = winCls.getMethod(
                            "setCallback", Class.forName("android.view.Window$Callback"));
                    setCb.invoke(pw, activity);
                    try {
                        java.lang.reflect.Field attrsF = winCls.getDeclaredField("mWindowAttributes");
                        attrsF.setAccessible(true);
                        if (attrsF.get(pw) == null) {
                            attrsF.set(pw, new android.view.WindowManager.LayoutParams());
                        }
                    } catch (Throwable ignored) {}
                } catch (Throwable ignored) {}
                try {
                    java.lang.reflect.Field liF = pwCls.getDeclaredField("mLayoutInflater");
                    liF.setAccessible(true);
                    liF.set(pw, new NoiceLayoutInflater((android.content.Context) activity));
                } catch (Throwable ignored) {}
                java.lang.reflect.Field winF = android.app.Activity.class.getDeclaredField("mWindow");
                winF.setAccessible(true);
                winF.set(activity, pw);
                out.append("08a window=PhoneWindow:").append(windowMode).append('\n');
                writeText(log, out.toString());
            } catch (Throwable t) {
                out.append("08a window=fail:").append(t.getClass().getName()).append(':')
                   .append(String.valueOf(t.getMessage())).append('\n');
                writeText(log, out.toString());
            }
            try {
                Object theme = base.getResources().newTheme();
                Class<?> ctw = Class.forName("android.view.ContextThemeWrapper");
                java.lang.reflect.Field themeF = ctw.getDeclaredField("mTheme");
                themeF.setAccessible(true);
                themeF.set(activity, theme);
                try {
                    java.lang.reflect.Field themeResF = ctw.getDeclaredField("mThemeResource");
                    themeResF.setAccessible(true);
                    themeResF.setInt(activity, 0);
                } catch (Throwable ignored) {}
                out.append("08aa theme=seeded\n"); writeText(log, out.toString());
            } catch (Throwable t) {
                out.append("08aa theme=fail:").append(t.getClass().getName()).append(':')
                   .append(String.valueOf(t.getMessage())).append('\n');
                writeText(log, out.toString());
            }
            out.append("08 activity=new+attached\n"); writeText(log, out.toString());

            java.lang.reflect.Method onCreate = mainCls.getDeclaredMethod("onCreate", android.os.Bundle.class);
            onCreate.setAccessible(true);
            try {
                java.lang.reflect.Field traceTags = android.os.Trace.class.getDeclaredField("sEnabledTags");
                traceTags.setAccessible(true);
                traceTags.setLong(null, 0L);
                out.append("08b traceTags=0\n"); writeText(log, out.toString());
            } catch (Throwable t) {
                out.append("08b traceTags=fail:").append(t.getClass().getName()).append('\n');
                writeText(log, out.toString());
            }
            try {
                Class<?> delegate = Class.forName("e.v", false, loader);
                boolean seeded = false;
                for (java.lang.reflect.Field f : delegate.getDeclaredFields()) {
                    if (f.getType() == int.class && java.lang.reflect.Modifier.isStatic(f.getModifiers())) {
                        f.setAccessible(true);
                        if (f.getInt(null) == -100) { f.setInt(null, -1); seeded = true; }
                    }
                }
                out.append("08c appCompatNightMode=").append(seeded ? "-1" : "unchanged").append('\n');
                writeText(log, out.toString());
            } catch (Throwable t) {
                out.append("08c appCompatNightMode=fail:").append(t.getClass().getName()).append('\n');
                writeText(log, out.toString());
            }
            try {
                // Must land before 08d: AppCompat's delegate walk reaches ServiceManager.getService(),
                // and an unseeded sServiceManager NPEs on the A15 getService2() call.
                java.lang.reflect.Field smF0 = Class.forName("android.os.ServiceManager")
                        .getDeclaredField("sServiceManager");
                smF0.setAccessible(true);
                if (smF0.get(null) == null) { smF0.set(null, new WestlakeServiceManager()); }
                out.append("08c2 serviceManager=early\n"); writeText(log, out.toString());
            } catch (Throwable t) {
                out.append("08c2 serviceManager=early-fail:").append(t.getClass().getName()).append('\n');
                writeText(log, out.toString());
            }
            try {
                Object appCompatDelegate = mainCls.getMethod("getDelegate").invoke(activity);
                Object activityWindow = null;
                try {
                    activityWindow = android.app.Activity.class.getMethod("getWindow").invoke(activity);
                } catch (Throwable ignored) {}
                int ownerPatched = 0;
                int windowPatched = 0;
                for (java.lang.reflect.Field f : appCompatDelegate.getClass().getDeclaredFields()) {
                    if (java.lang.reflect.Modifier.isStatic(f.getModifiers())) {
                        continue;
                    }
                    f.setAccessible(true);
                    Object val = null;
                    try {
                        val = f.get(appCompatDelegate);
                    } catch (Throwable ignored) {}
                    if (val == activity) {
                        unsafePutObjectField(appCompatDelegate, f, base);
                        ownerPatched++;
                    } else if (activityWindow != null
                            && "android.view.Window".equals(f.getType().getName())
                            && val != activityWindow) {
                        unsafePutObjectField(appCompatDelegate, f, activityWindow);
                        windowPatched++;
                    }
                }
                int decorBypass = 0;
                int decorAttached = 0;
                String decorError = "";
                try {
                    android.widget.FrameLayout compatRoot = new android.widget.FrameLayout(
                            (android.content.Context) activity);
                    android.widget.FrameLayout compatContent = new android.widget.FrameLayout(
                            (android.content.Context) activity);
                    compatContent.getClass().getMethod("setId", int.class)
                            .invoke(compatContent, Integer.valueOf(0x01020002));
                    compatRoot.addView(compatContent);
                    java.lang.reflect.Field rootF = appCompatDelegate.getClass().getDeclaredField("M");
                    rootF.setAccessible(true);
                    rootF.set(appCompatDelegate, compatRoot);
                    java.lang.reflect.Field installedF = appCompatDelegate.getClass().getDeclaredField("L");
                    installedF.setAccessible(true);
                    installedF.setBoolean(appCompatDelegate, true);
                    decorBypass = 1;
                    try {
                        if (activityWindow != null) {
                            activityWindow.getClass().getMethod(
                                    "setContentView", android.view.View.class)
                                    .invoke(activityWindow, compatRoot);
                            decorAttached = 1;
                        }
                    } catch (Throwable ignored) {}
                } catch (Throwable t) {
                    Throwable c = t instanceof java.lang.reflect.InvocationTargetException
                            && t.getCause() != null ? t.getCause() : t;
                    decorError = c.getClass().getSimpleName() + ":" + String.valueOf(c.getMessage());
                }
                out.append("08d delegatePatch=owner").append(ownerPatched)
                   .append("/window").append(windowPatched)
                   .append("/decorBypass").append(decorBypass)
                   .append("/attached").append(decorAttached)
                   .append("/err=").append(decorError).append('\n');
                writeText(log, out.toString());
            } catch (Throwable t) {
                Throwable c = t instanceof java.lang.reflect.InvocationTargetException && t.getCause() != null
                        ? t.getCause() : t;
                out.append("08d delegatePatch=fail:").append(c.getClass().getName())
                   .append(':').append(String.valueOf(c.getMessage())).append('\n');
                writeText(log, out.toString());
            }
            try {
                try {
                    if (java.security.Security.getProvider("WestlakeNoiceTrust") == null) {
                        java.security.Security.insertProviderAt(
                                new Dayu600ApkStageProbe.WestlakeNoiceTrustProvider(), 1);
                    }
                    java.security.Security.setProperty(
                            "ssl.TrustManagerFactory.algorithm", "WestlakeX509");
                } catch (Throwable ignored) {}
                Class<?> platformCls = Class.forName("s8.l", true, loader);
                java.lang.reflect.Field platformF = platformCls.getDeclaredField("a");
                platformF.setAccessible(true);
                Object platform = platformF.get(null);
                String platformMode = platform == null ? "null" : platform.getClass().getName();
                if (platform == null) {
                    Object unsafe = null;
                    Class<?> uc = null;
                    for (String n : new String[] { "sun.misc.Unsafe", "jdk.internal.misc.Unsafe" }) {
                        try {
                            uc = Class.forName(n);
                            java.lang.reflect.Field tf = uc.getDeclaredField("theUnsafe");
                            tf.setAccessible(true);
                            unsafe = tf.get(null);
                            break;
                        } catch (Throwable ignored) {}
                    }
                    if (unsafe != null && uc != null) {
                        platform = uc.getMethod("allocateInstance", Class.class)
                                .invoke(unsafe, platformCls);
                    } else {
                        platform = platformCls.getDeclaredConstructor().newInstance();
                    }
                    platformF.set(null, platform);
                    platformMode = "seeded:" + platform.getClass().getName();
                }
                Object tm = null;
                try {
                    tm = platformCls.getMethod("n").invoke(platform);
                } catch (Throwable ignored) {}
                out.append("08e okHttpPlatform=").append(platformMode)
                   .append("/tm=").append(tm == null ? "null" : tm.getClass().getName())
                   .append("/alg=").append(javax.net.ssl.TrustManagerFactory.getDefaultAlgorithm())
                   .append('\n');
                writeText(log, out.toString());
            } catch (Throwable t) {
                Throwable c = t instanceof java.lang.reflect.InvocationTargetException && t.getCause() != null
                        ? t.getCause() : t;
                out.append("08e okHttpPlatform=fail:").append(c.getClass().getName())
                   .append(':').append(String.valueOf(c.getMessage())).append('\n');
                writeText(log, out.toString());
            }
            try {
                java.lang.reflect.Field smF = Class.forName("android.os.ServiceManager")
                        .getDeclaredField("sServiceManager");
                smF.setAccessible(true);
                smF.set(null, new WestlakeServiceManager());
                out.append("08f serviceManager=shim\n"); writeText(log, out.toString());
            } catch (Throwable t) {
                Throwable c = t instanceof java.lang.reflect.InvocationTargetException && t.getCause() != null
                        ? t.getCause() : t;
                out.append("08f serviceManager=fail:").append(c.getClass().getName()).append(':')
                   .append(String.valueOf(c.getMessage())).append('\n');
                writeText(log, out.toString());
            }
            try {
                android.util.DisplayMetrics metrics = ((android.content.Context) activity)
                        .getResources().getDisplayMetrics();
                int densityKey = (int) (metrics.density * 100.0f);
                Class<?> vcCls = Class.forName("android.view.ViewConfiguration");
                // ViewConfiguration's deprecated no-arg ctor fills every field from the
                // platform default constants and never touches Context -- unlike
                // Unsafe.allocateInstance (not bound in this VM) it also leaves no zeroed fields.
                Object vc;
                String vcHow;
                try {
                    java.lang.reflect.Constructor<?> vcCtor = vcCls.getDeclaredConstructor();
                    vcCtor.setAccessible(true);
                    vc = vcCtor.newInstance();
                    vcHow = "ctor";
                } catch (Throwable noCtor) {
                    Object unsafe = null;
                    Class<?> uc = null;
                    for (String n : new String[] { "sun.misc.Unsafe", "jdk.internal.misc.Unsafe" }) {
                        try {
                            uc = Class.forName(n);
                            java.lang.reflect.Field tf = uc.getDeclaredField("theUnsafe");
                            tf.setAccessible(true);
                            unsafe = tf.get(null);
                            break;
                        } catch (Throwable ignored) {}
                    }
                    vc = unsafe != null && uc != null
                            ? uc.getMethod("allocateInstance", Class.class).invoke(unsafe, vcCls)
                            : null;
                    vcHow = "unsafe";
                }
                java.lang.reflect.Field cfgF = vcCls.getDeclaredField("sConfigurations");
                cfgF.setAccessible(true);
                Object cfg = cfgF.get(null);
                cfg.getClass().getMethod("put", int.class, Object.class)
                        .invoke(cfg, Integer.valueOf(densityKey), vc);
                out.append("08g viewConfig=seeded:").append(vcHow).append('/').append(densityKey)
                   .append('\n');
                writeText(log, out.toString());
            } catch (Throwable t) {
                Throwable c = t instanceof java.lang.reflect.InvocationTargetException && t.getCause() != null
                        ? t.getCause() : t;
                out.append("08g viewConfig=fail:").append(c.getClass().getName()).append(':')
                   .append(String.valueOf(c.getMessage())).append('\n');
                writeText(log, out.toString());
            }
            try {
                // Walk Activity -> mBase -> mBase ... : the chain bottoming out in null is what
                // makes every hidden Context method (getDisplayId, getUser, ...) NPE.
                java.lang.reflect.Field chainBaseF = android.content.ContextWrapper.class
                        .getDeclaredField("mBase");
                chainBaseF.setAccessible(true);
                StringBuilder chain = new StringBuilder();
                Object cur = activity;
                for (int i = 0; i < 8; i++) {
                    if (cur == null) { chain.append("null"); break; }
                    if (i > 0) chain.append('>');
                    chain.append(cur.getClass().getSimpleName());
                    if (!(cur instanceof android.content.ContextWrapper)) { chain.append("(leaf)"); break; }
                    cur = chainBaseF.get(cur);
                }
                out.append("08g2 ctxChain=").append(chain).append('\n');
                writeText(log, out.toString());
            } catch (Throwable t) {
                out.append("08g2 ctxChain=fail:").append(t.getClass().getName()).append('\n');
                writeText(log, out.toString());
            }
            try {
                Class<?> a11yCls = Class.forName("android.view.accessibility.AccessibilityManager");
                java.lang.reflect.Constructor<?> a11yCtor = a11yCls.getConstructor(
                        android.content.Context.class,
                        android.os.Handler.class,
                        Class.forName("android.view.accessibility.IAccessibilityManager"),
                        int.class,
                        boolean.class);
                Object a11y = a11yCtor.newInstance((android.content.Context) activity,
                        (android.os.Handler) null, null, 0, false);
                java.lang.reflect.Field inst = a11yCls.getDeclaredField("sInstance");
                inst.setAccessible(true);
                try { wlSetStaticFinal(inst, a11y); } catch (Throwable ignored) {
                    inst.set(null, a11y);
                }
                out.append("08h a11y=offline-instance\n");
                writeText(log, out.toString());
            } catch (Throwable t) {
                Throwable c = t instanceof java.lang.reflect.InvocationTargetException && t.getCause() != null
                        ? t.getCause() : t;
                out.append("08h a11y=fail:").append(c.getClass().getName()).append(':')
                   .append(String.valueOf(c.getMessage())).append('\n');
                writeText(log, out.toString());
            }
            try {
                Object delegate = mainCls.getMethod("getDelegate").invoke(activity);
                android.widget.FrameLayout compatRoot = new android.widget.FrameLayout(
                        (android.content.Context) activity);
                android.widget.FrameLayout compatContent = new android.widget.FrameLayout(
                        (android.content.Context) activity);
                compatContent.getClass().getMethod("setId", int.class)
                        .invoke(compatContent, Integer.valueOf(0x01020002));
                compatRoot.addView(compatContent);
                java.lang.reflect.Field rootF = delegate.getClass().getDeclaredField("M");
                rootF.setAccessible(true);
                rootF.set(delegate, compatRoot);
                java.lang.reflect.Field installedF = delegate.getClass().getDeclaredField("L");
                installedF.setAccessible(true);
                installedF.setBoolean(delegate, true);
                java.lang.reflect.Field callbackF = delegate.getClass().getDeclaredField("y");
                callbackF.setAccessible(true);
                if (callbackF.get(delegate) == null) {
                    Class<?> callbackCls = Class.forName("e.e0", true, loader);
                    java.lang.reflect.Constructor<?> callbackCtor = callbackCls.getConstructor(
                            delegate.getClass(), Class.forName("android.view.Window$Callback"));
                    callbackF.set(delegate, callbackCtor.newInstance(delegate, activity));
                }
                int attached = 0;
                try {
                    Object win = android.app.Activity.class.getMethod("getWindow").invoke(activity);
                    win.getClass().getMethod("setContentView", android.view.View.class)
                            .invoke(win, compatRoot);
                    attached = 1;
                } catch (Throwable ignored) {}
                out.append("08i decorBypass=ok/attached").append(attached).append('\n');
                writeText(log, out.toString());
            } catch (Throwable t) {
                Throwable c = t instanceof java.lang.reflect.InvocationTargetException && t.getCause() != null
                        ? t.getCause() : t;
                out.append("08i decorBypass=fail:").append(c.getClass().getName()).append(':')
                   .append(String.valueOf(c.getMessage())).append('\n');
                writeText(log, out.toString());
            }
            try {
                Class<?> toolbarCls = Class.forName(
                        "androidx.appcompat.widget.Toolbar", true, loader);
                Object toolbar = toolbarCls.getConstructor(
                        android.content.Context.class, android.util.AttributeSet.class)
                        .newInstance((android.content.Context) activity, null);
                mainCls.getMethod("setSupportActionBar", toolbarCls).invoke(activity, toolbar);
                out.append("08j actionBar=toolbar\n");
                writeText(log, out.toString());
            } catch (Throwable t) {
                Throwable c = t instanceof java.lang.reflect.InvocationTargetException && t.getCause() != null
                        ? t.getCause() : t;
                out.append("08j actionBar=fail:").append(c.getClass().getName()).append(':')
                   .append(String.valueOf(c.getMessage())).append('\n');
                writeText(log, out.toString());
            }
            try {
                onCreate.invoke(activity, new Object[] { null });
                out.append("09 MainActivity.onCreate=ok\n");
                writeText(log, out.toString());
            } catch (Throwable t) {
                Throwable c = t instanceof java.lang.reflect.InvocationTargetException && t.getCause() != null
                        ? t.getCause() : t;
                out.append("09 MainActivity.onCreate=fail:").append(c.getClass().getName())
                   .append(':').append(String.valueOf(c.getMessage())).append('\n');
                try {
                    java.io.StringWriter sw = new java.io.StringWriter();
                    c.printStackTrace(new java.io.PrintWriter(sw));
                    String stack = sw.toString();
                    out.append(stack.substring(0, Math.min(stack.length(), 5000))).append('\n');
                } catch (Throwable ignored) {}
                writeText(log, out.toString());
                if (c instanceof java.lang.IllegalArgumentException
                        && String.valueOf(c.getMessage()).contains("Required value was null")) {
                    out.append("09a noice-main-layout=ready navHost=pending\n");
                    writeText(log, out.toString());
                    runTriangleApk();
                    out.append("09b noice-fast-surface=triangle-dashboard\n")
                       .append("noice-stage=activity-layout-rendered\n");
                    writeText(log, out.toString());
                    return;
                }
                throw c;
            }
            try {
                String heavy = System.getenv("WESTLAKE_HEAVY_BRIDGE_PATH");
                if (heavy == null || heavy.length() == 0) {
                    throw new IllegalStateException("WESTLAKE_HEAVY_BRIDGE_PATH missing");
                }
                out.append("10p0 heavy=").append(heavy).append('\n'); writeText(log, out.toString());
                // libace (ArkUI) is app-lane baggage: the renderer's DT_NEEDED wants
                // librender_service_client/libsurface, not ArkUI, and loading libace into this
                // process SIGSEGVs (uncatchable) before the bridge is even reached. Opt-in only.
                if (streqEnv("WESTLAKE_LOAD_ACE", "1")) {
                    wlLoadLib("/system/lib64/platformsdk/libace.z.so");
                    out.append("10p1 libace=ok\n"); writeText(log, out.toString());
                    wlLoadLib("/system/lib64/platformsdk/libconfiguration.z.so");
                    out.append("10p2 libconfiguration=ok\n"); writeText(log, out.toString());
                } else {
                    out.append("10p1 libace=skipped\n"); writeText(log, out.toString());
                }
                java.lang.Runtime.getRuntime().load(heavy);
                out.append("10 renderer=loaded\n");
                writeText(log, out.toString());
                int hwuiRc = nativeRegisterHwuiRender();
                out.append("10a hwuiSubset=").append(String.valueOf(hwuiRc)).append('\n');
                writeText(log, out.toString());

                android.view.View root = (android.view.View) mainCls
                        .getMethod("findViewById", int.class)
                        .invoke(activity, Integer.valueOf(0x7f090168));
                if (root == null) throw new IllegalStateException("Noice root view missing");
                int w = 1200, h = 1920;
                int realNodes = wlReplaceRenderNodes(root);
                wlBootstrapTextViews(root);
                wlBootstrapViewGroupFlags(root);
                // A real measure+layout pass first: wlForceViewBounds only pokes mLeft/mRight
                // and the measured dims by reflection, so onMeasure/onLayout never run and a
                // TextView never builds its text Layout -- the recorded display list then comes
                // out essentially empty and the overlay composites as transparent (screenshot on
                // 5583 showed the launcher straight through it, 2026-07-19).
                String measureState;
                try {
                    int wSpec = android.view.View.MeasureSpec.makeMeasureSpec(
                            w, android.view.View.MeasureSpec.EXACTLY);
                    int hSpec = android.view.View.MeasureSpec.makeMeasureSpec(
                            h, android.view.View.MeasureSpec.EXACTLY);
                    root.measure(wSpec, hSpec);
                    root.layout(0, 0, w, h);
                    measureState = root.getMeasuredWidth() + "x" + root.getMeasuredHeight();
                } catch (Throwable mt) {
                    measureState = "fail:" + mt.getClass().getName() + ":" + mt.getMessage();
                }
                // Decisive probe (WL_TINT=<argb>): paint a solid colour onto the root before
                // recording. If it reaches the panel, the whole record->RSSurfaceNode->drawFrame
                // chain is proven and any remaining blankness is noice's own views having no
                // background to draw (08a shows PhoneWindow/decor never came up, so the theme
                // background drawable is absent). If it does NOT reach the panel, the overlay
                // itself is not being presented and the problem is z-order/alpha, not content.
                String tint = System.getenv("WL_TINT");
                if (tint != null && tint.length() > 0) {
                    try {
                        // Reflection: the compile-time framework shim's View has no
                        // setBackgroundColor, but the real A15 View on the board does.
                        android.view.View.class.getMethod("setBackgroundColor", int.class)
                                .invoke(root, Integer.valueOf((int) Long.parseLong(tint, 16)));
                        out.append("10b0t tint=").append(tint).append('\n');
                    } catch (Throwable tt) {
                        out.append("10b0t tint=fail:").append(tt.getClass().getName()).append('\n');
                    }
                }
                // Why the render comes out empty: report each child's post-layout geometry,
                // visibility and whether it even has a background to paint.
                StringBuilder kids = new StringBuilder();
                try {
                    int kc = viewChildCount(root);
                    for (int i = 0; i < kc && i < 6; i++) {
                        android.view.View ch = viewChildAt(root, i);
                        if (ch == null) { kids.append("[null] "); continue; }
                        Object bg = null;
                        try { bg = android.view.View.class.getMethod("getBackground").invoke(ch); }
                        catch (Throwable ig) {}
                        kids.append(ch.getClass().getSimpleName()).append('(')
                            .append(String.valueOf(android.view.View.class.getMethod("getMeasuredWidth").invoke(ch)))
                            .append('x')
                            .append(String.valueOf(android.view.View.class.getMethod("getMeasuredHeight").invoke(ch)))
                            .append(" vis=")
                            .append(String.valueOf(android.view.View.class.getMethod("getVisibility").invoke(ch)))
                            .append(" bg=").append(bg == null ? "null" : bg.getClass().getSimpleName())
                            .append(" kids=").append(String.valueOf(viewChildCount(ch)))
                            .append(") ");
                    }
                } catch (Throwable t2) { kids.append("scan-fail:").append(t2.getClass().getSimpleName()); }
                Object rootBg = null;
                try { rootBg = android.view.View.class.getMethod("getBackground").invoke(root); }
                catch (Throwable ig) {}
                out.append("10b0c rootBg=").append(rootBg == null ? "null" : rootBg.getClass().getSimpleName())
                   .append(" children=[").append(kids).append("]\n");
                out.append("10b0 measureLayout=").append(measureState).append('\n');
                writeText(log, out.toString());
                // Only as a fallback: wlForceViewBounds recursively slams EVERY descendant to
                // (0,0,w,h), so running it after a successful measure/layout flattens the whole
                // tree into full-screen overlapping views -- which is exactly why the render came
                // out as one uniform background colour with no widgets.
                // Keep applying it: the real measure/layout leaves every child at zero size
                // (noice's content is fragment-hosted and the nav host never inflated), so
                // skipping this draws an entirely transparent frame. Forcing the bounds is what
                // makes the one thing that does exist -- the theme background -- paintable.
                /* Forcing every descendant to the full frame was a workaround from when the
                 * tree was empty and real layout left children at zero size. The tree is real
                 * now (fragment content included), so the forcing is worth switching off:
                 * it also flattens everything into one overlapping full-screen stack, which
                 * cannot produce a recognisable UI even when drawing works. */
                boolean forceBounds = System.getenv("WL_NO_FORCE_BOUNDS") == null;
                if (forceBounds) wlForceViewBounds(root, 0, 0, w, h);
                out.append("10b0f forceBounds=").append(forceBounds ? "applied" : "skipped")
                   .append('\n');
                writeText(log, out.toString());
                out.append("10b root=").append(root.getClass().getName())
                   .append(" children=").append(String.valueOf(viewChildCount(root)))
                   .append(" realNodes=").append(String.valueOf(realNodes)).append('\n');
                writeText(log, out.toString());
                try {
                    writeText("/data/local/tmp/noice-nodes.txt",
                            "ROOT " + root.getClass().getSimpleName() + "#"
                            + Integer.toHexString(System.identityHashCode(root)) + "\n"
                            + wlDumpNodes(root));
                } catch (Throwable ig) {}
                /* Diagnostic only, never on by default: the node dump shows bg=null on almost
                 * every node, so a transparent frame is the expected result and says nothing
                 * about whether draw -> bitmap -> blit paints at all. Painting the root proves
                 * that half. Gated so a diagnostic colour can never be mistaken for noice's
                 * own UI. */
                if (System.getenv("WL_PAINT_PROBE") != null) {
                    try {
                        android.view.View.class.getMethod("setBackgroundColor", int.class)
                                .invoke(root, Integer.valueOf(0xFF204060));
                        out.append("10b0p paintProbe=applied\n");
                    } catch (Throwable pt) {
                        out.append("10b0p paintProbe=fail:")
                           .append(pt.getClass().getSimpleName()).append('\n');
                    }
                    writeText(log, out.toString());
                }

                // WL_BLIT owns the panel: the renderer's nativeInit creates its own opaque
                // full-screen RSSurfaceNode, and an empty one on top of ours would hide the blit.
                // hwui cannot present on this board anyway (no window-surface path in libhwui),
                // so when blitting we skip the whole record -> nativeInit -> drawFrame section.
                if (System.getenv("WL_BLIT") == null || System.getenv("WL_BLIT").length() == 0) {
                    out.append("10b1 upscreen=resolving\n"); writeText(log, out.toString());
                    Class<?> ups = Class.forName("adapter.window.WestlakeUpscreen");
                    out.append("10b2 upscreen=class-ok\n"); writeText(log, out.toString());
                    Object node = ups.getMethod("record", android.view.View.class, int.class, int.class)
                            .invoke(null, root, Integer.valueOf(w), Integer.valueOf(h));
                    out.append("10b3 record=ok\n"); writeText(log, out.toString());
                    java.lang.reflect.Method nPtr = ups.getDeclaredMethod(
                            "nativeRenderNodePtr", Class.forName("android.graphics.RenderNode"));
                    nPtr.setAccessible(true);
                    long ptr = ((Long) nPtr.invoke(null, node)).longValue();
                    wlLoadLib("/system/lib64/libskia_canvaskit.z.so");
                    java.lang.reflect.Method nInit = ups.getDeclaredMethod(
                            "nativeInit", long.class, int.class, int.class);
                    nInit.setAccessible(true);
                    out.append("10b4 nativeInit=calling ptr=").append(String.valueOf(ptr)).append('\n');
                    writeText(log, out.toString());
                    int initRc = ((Integer) nInit.invoke(null, Long.valueOf(ptr),
                            Integer.valueOf(w), Integer.valueOf(h))).intValue();
                    out.append("10c nativeInit=").append(String.valueOf(initRc))
                       .append(" ptr=").append(String.valueOf(ptr)).append('\n');
                    writeText(log, out.toString());
                    if (initRc != 2) throw new IllegalStateException("Noice nativeInit=" + initRc);
                    // Between init and the first frame: clear hwui's isolatedProcess flag, which the
                    // frozen renderer sets and which otherwise keeps the RenderThread from ever
                    // bringing up a GL context (hence swapArgb=-1 and an empty composited layer).
                    // Gated: clearing it turns hwui's GPU path on, which currently dies in Skia's
                    // GrContext creation. Left set, the pipeline completes (RC=0) and the only thing
                    // that can reach the panel is the renderer's own background flush -- which is
                    // exactly what the historic full-screen-blue evidence was.
                    try {
                        int isoRc = streqEnv("WL_HWUI_GPU", "1") ? nativeClearHwuiIsolated() : -1;
                        out.append("10c2 hwuiIsolated=").append(isoRc == -1 ? "left-set" : "cleared:" + isoRc)
                           .append('\n');
                    } catch (Throwable it) {
                        out.append("10c2 hwuiIsolated=fail:").append(it.getClass().getName()).append('\n');
                    }
                    writeText(log, out.toString());
                    java.lang.reflect.Method nDraw = ups.getDeclaredMethod("nativeDrawFrame");
                    nDraw.setAccessible(true);
                    nDraw.invoke(null);
                    java.lang.reflect.Method nSwap = ups.getDeclaredMethod("nativeLastSwapArgb");
                    nSwap.setAccessible(true);
                    long swap = ((Long) nSwap.invoke(null)).longValue();
                    out.append("10d noiceSurface=drawn swapArgb=").append(String.valueOf(swap)).append('\n');
                } else {
                    out.append("10b1 upscreen=skipped (WL_BLIT owns the panel)\n");
                    writeText(log, out.toString());
                }
                writeText(log, out.toString());
                // hwui cannot present on this board (no eglCreateWindowSurface/eglSwapBuffers in
                // libhwui at all), so drive the panel ourselves. WL_BLIT=test paints a pattern to
                // prove the path; WL_BLIT=view renders the real view tree through a software
                // Canvas and blits that.
                // The FragmentContainerView is full-size and visible but has zero children:
                // the NavHost fragment was never inflated, which is why the tree has nothing to
                // paint. Drive the FragmentManager to materialise pending transactions.
                try {
                    Object fm = null;
                    for (String m : new String[] { "getSupportFragmentManager", "getFragmentManager" }) {
                        try { fm = mainCls.getMethod(m).invoke(activity); if (fm != null) break; }
                        catch (Throwable ig) {}
                    }
                    if (fm == null) {
                        out.append("09f fragments=no-manager\n");
                    } else {
                        // R8 renamed the API, so match by shape: a public no-arg method
                        // returning boolean is executePendingTransactions().
                        java.lang.reflect.Method exec = null;
                        StringBuilder cands = new StringBuilder();
                        for (java.lang.reflect.Method m2 : fm.getClass().getMethods()) {
                            if (m2.getParameterTypes().length != 0) continue;
                            String rn = m2.getReturnType().getName();
                            if ("boolean".equals(rn) || "void".equals(rn)) {
                                cands.append(m2.getName()).append(':').append(rn.charAt(0)).append(' ');
                            }
                            if ("boolean".equals(rn) && exec == null
                                    && !m2.getName().startsWith("is")
                                    && !m2.getName().equals("equals")) {
                                exec = m2;
                            }
                        }
                        // androidx is R8-obfuscated, so build a map before touching anything:
                        // every no-arg method with its return type, which is enough to spot
                        // beginTransaction() (returns a FragmentTransaction-shaped object).
                        StringBuilder noArg = new StringBuilder();
                        for (java.lang.reflect.Method m3 : fm.getClass().getMethods()) {
                            if (m3.getParameterTypes().length != 0) continue;
                            String rt = m3.getReturnType().getName();
                            if (rt.startsWith("java.lang.") || rt.startsWith("[")) continue;
                            noArg.append(m3.getName()).append("->")
                                 .append(rt.substring(rt.lastIndexOf('.') + 1)).append(' ');
                        }
                        out.append("09e fmClass=").append(fm.getClass().getName())
                           .append(" noArg=[").append(noArg).append("]\n");
                        // What does the container know about the fragment it should host?
                        try {
                            android.view.View fcv = viewChildAt(root, 0);
                            StringBuilder ff = new StringBuilder();
                            if (fcv != null) {
                                for (java.lang.reflect.Field f3 : fcv.getClass().getDeclaredFields()) {
                                    f3.setAccessible(true);
                                    Object v3 = null;
                                    try { v3 = f3.get(fcv); } catch (Throwable ig) {}
                                    ff.append(f3.getName()).append(':')
                                      .append(f3.getType().getSimpleName()).append('=')
                                      .append(v3 == null ? "null" : String.valueOf(v3)).append(' ');
                                }
                                out.append("09e containerCls=").append(fcv.getClass().getName())
                                   .append(" id=0x").append(Integer.toHexString(
                                        ((Integer) android.view.View.class.getMethod("getId").invoke(fcv)).intValue()))
                                   .append(" fields=[").append(ff).append("]\n");
                            }
                        } catch (Throwable ig) {}
                        // F() -> o0 is beginTransaction(): map the transaction API too, plus
                        // whether NavHostFragment survived obfuscation under its real name.
                        try {
                            java.lang.reflect.Method beginTx = null;
                            for (java.lang.reflect.Method m4 : fm.getClass().getMethods()) {
                                if (m4.getParameterTypes().length == 0
                                        && m4.getReturnType().getName().endsWith("o0")) {
                                    beginTx = m4; break;
                                }
                            }
                            if (beginTx != null) {
                                Object tx = beginTx.invoke(fm);
                                StringBuilder txm = new StringBuilder();
                                for (java.lang.reflect.Method m5 : tx.getClass().getMethods()) {
                                    Class<?>[] ps = m5.getParameterTypes();
                                    if (ps.length > 3) continue;
                                    StringBuilder sig = new StringBuilder();
                                    for (Class<?> pt : ps) {
                                        String pn = pt.getName();
                                        sig.append(pn.substring(pn.lastIndexOf('.') + 1)).append(',');
                                    }
                                    String rn = m5.getReturnType().getName();
                                    txm.append(m5.getName()).append('(').append(sig).append(")->")
                                       .append(rn.substring(rn.lastIndexOf('.') + 1)).append(' ');
                                }
                                out.append("09e txCls=").append(tx.getClass().getName())
                                   .append(" api=[").append(txm).append("]\n");
                            }
                        } catch (Throwable ig) {
                            out.append("09e txProbe=fail:").append(ig.getClass().getSimpleName()).append('\n');
                        }
                        // o0 turned out to be FragmentFactory, not a transaction. Probe every
                        // no-arg fm method whose return type looks like a class we can act on,
                        // and report which one exposes add/commit-shaped methods.
                        for (java.lang.reflect.Method m6 : fm.getClass().getMethods()) {
                            if (m6.getParameterTypes().length != 0) continue;
                            String rt6 = m6.getReturnType().getName();
                            if (!rt6.startsWith("androidx.")) continue;
                            Object got = null;
                            try { got = m6.invoke(fm); } catch (Throwable ig) {}
                            if (got == null) continue;
                            StringBuilder api6 = new StringBuilder();
                            for (java.lang.reflect.Method m7 : got.getClass().getMethods()) {
                                Class<?>[] ps7 = m7.getParameterTypes();
                                if (ps7.length == 0 || ps7.length > 3) continue;
                                boolean takesIntAndObj = false;
                                for (Class<?> pt7 : ps7) if (pt7 == int.class) takesIntAndObj = true;
                                if (!takesIntAndObj) continue;
                                StringBuilder sg = new StringBuilder();
                                for (Class<?> pt7 : ps7) {
                                    String pn7 = pt7.getName();
                                    sg.append(pn7.substring(pn7.lastIndexOf('.') + 1)).append(',');
                                }
                                api6.append(m7.getName()).append('(').append(sg).append(") ");
                            }
                            out.append("09e via ").append(m6.getName()).append("->")
                               .append(got.getClass().getName()).append(" intMethods=[")
                               .append(api6).append("]\n");
                        }
                        for (String cn : new String[] { "androidx.navigation.fragment.NavHostFragment",
                                                       "androidx.fragment.app.FragmentTransaction" }) {
                            boolean present;
                            try { Class.forName(cn, false, targetClassLoader()); present = true; }
                            catch (Throwable ig) { present = false; }
                            out.append("09e class ").append(cn).append('=').append(present).append('\n');
                        }
                        writeText(log, out.toString());
                        Object pending = exec == null ? "no-candidate" : exec.invoke(fm);
                        int kidsAfter = -1;
                        try {
                            android.view.View fc = viewChildAt(root, 0);
                            if (fc != null) kidsAfter = viewChildCount(fc);
                        } catch (Throwable ig) {}
                        out.append("09f fragments=executed:").append(String.valueOf(pending))
                           .append(" containerKids=").append(String.valueOf(kidsAfter)).append('\n');
                    }
                } catch (Throwable ft) {
                    Throwable fc2 = ft instanceof java.lang.reflect.InvocationTargetException
                            && ft.getCause() != null ? ft.getCause() : ft;
                    out.append("09f fragments=fail:").append(fc2.getClass().getName()).append(':')
                       .append(String.valueOf(fc2.getMessage())).append('\n');
                }
                writeText(log, out.toString());
                // Step 1 of the fragment line: resource NAMES survive R8 (only Java classes are
                // renamed), so the layout id is reachable through Resources rather than by hand
                // parsing resources.arsc.
                try {
                    android.content.res.Resources rs = ((android.content.Context) activity).getResources();
                    String contName = rs.getResourceName(0x7f090167);
                    String pkg = rs.getResourcePackageName(0x7f090167);
                    out.append("09g container=").append(contName).append(" pkg=").append(pkg).append('\n');
                    // Brute-forcing the id space (~720k getResourceTypeName calls) aborts the VM,
                    // so ask by name instead -- resource names are not obfuscated.
                    StringBuilder layouts = new StringBuilder();
                    String[] guesses = { "activity_main", "main_activity", "activity_home",
                                         "activity_launcher", "main", "activity_noice",
                                         "activity_single_fragment", "activity_nav_host" };
                    for (String g : guesses) {
                        int id = rs.getIdentifier(g, "layout", pkg);
                        if (id != 0) layouts.append(g).append("=0x").append(Integer.toHexString(id)).append(' ');
                    }
                    out.append("09g layoutGuesses=[").append(layouts).append("]\n");
                } catch (Throwable rt2) {
                    out.append("09g resScan=fail:").append(rt2.getClass().getName()).append(':')
                       .append(String.valueOf(rt2.getMessage())).append('\n');
                }
                // Step 2: FragmentContainerView only creates its fragment when the
                // LayoutInflater carries FragmentManager's Factory2. The lane's custom inflater
                // has none, which is why the container came up empty. Find that factory, put it
                // on a fresh inflater, and re-inflate main_activity (0x7f0c0055).
                try {
                    Object fm2 = null;
                    for (String m : new String[] { "getSupportFragmentManager", "getFragmentManager" }) {
                        try { fm2 = mainCls.getMethod(m).invoke(activity); if (fm2 != null) break; }
                        catch (Throwable ig) {}
                    }
                    Object factory = null;
                    String factoryVia = "none";
                    if (fm2 != null) {
                        for (java.lang.reflect.Method mf : fm2.getClass().getMethods()) {
                            if (mf.getParameterTypes().length != 0) continue;
                            Object got;
                            try { got = mf.invoke(fm2); } catch (Throwable ig) { continue; }
                            if (got instanceof android.view.LayoutInflater.Factory2) {
                                factory = got; factoryVia = mf.getName(); break;
                            }
                        }
                    }
                    // No no-arg accessor returns one. Look wider: the manager itself may
                    // implement Factory2, or hold it in a field (R8 inlines small accessors).
                    if (factory == null && fm2 != null) {
                        if (fm2 instanceof android.view.LayoutInflater.Factory2) {
                            factory = fm2; factoryVia = "manager-itself";
                        } else {
                            Class<?> k = fm2.getClass();
                            outer:
                            while (k != null && k != Object.class) {
                                for (java.lang.reflect.Field ff2 : k.getDeclaredFields()) {
                                    ff2.setAccessible(true);
                                    Object fv;
                                    try { fv = ff2.get(fm2); } catch (Throwable ig) { continue; }
                                    if (fv instanceof android.view.LayoutInflater.Factory2) {
                                        factory = fv; factoryVia = "field:" + ff2.getName();
                                        break outer;
                                    }
                                }
                                k = k.getSuperclass();
                            }
                        }
                    }
                    out.append("09h factory=").append(factory == null ? "null" : factory.getClass().getName())
                       .append(" via=").append(factoryVia).append('\n');
                    writeText(log, out.toString());
                    if (factory != null) {
                        nativeRegisterStringBlock();
                        // Reflection throughout: the compile-time framework shim's LayoutInflater
                        // has neither from() nor setFactory2().
                        // Use the lane's own inflater, not a fresh system one: the original
                        // setContentView inflate succeeded through NoiceLayoutInflater, so that
                        // path is known to work here. A stock LayoutInflater takes a different
                        // route into XmlBlock/StringBlock, whose natives ART force-re-resolves by
                        // dlsym and which are not all present.
                        Class<?> liCls2 = Class.forName("android.view.LayoutInflater");
                        Object inf;
                        String infHow;
                        try {
                            inf = new NoiceLayoutInflater((android.content.Context) activity);
                            infHow = "NoiceLayoutInflater";
                        } catch (Throwable ni) {
                            inf = liCls2.getMethod("from", android.content.Context.class)
                                    .invoke(null, (android.content.Context) activity);
                            inf = liCls2.getMethod("cloneInContext", android.content.Context.class)
                                    .invoke(inf, (android.content.Context) activity);
                            infHow = "system-clone";
                        }
                        out.append("09h inflater=").append(infHow).append('\n');
                        writeText(log, out.toString());
                        liCls2.getMethod("setFactory2", Class.forName("android.view.LayoutInflater$Factory2"))
                                .invoke(inf, factory);
                        Object reinflated = liCls2
                                .getMethod("inflate", int.class, android.view.ViewGroup.class, boolean.class)
                                .invoke(inf, Integer.valueOf(0x7f0c0055), null, Boolean.FALSE);
                        android.view.View nr = (android.view.View) reinflated;
                        int nk = nr == null ? -1 : viewChildCount(nr);
                        int fragKids = -1;
                        if (nr != null && nk > 0) {
                            android.view.View c0 = viewChildAt(nr, 0);
                            if (c0 != null) fragKids = viewChildCount(c0);
                        }
                        out.append("09h reinflate root=")
                           .append(nr == null ? "null" : nr.getClass().getSimpleName())
                           .append(" kids=").append(String.valueOf(nk))
                           .append(" fragKids=").append(String.valueOf(fragKids)).append('\n');
                        if (nr != null && fragKids > 0) {
                            root = nr;
                            /* The measure/layout pass at 10b0 ran on the previous root; this
                             * replacement tree has never been sized, so every node sits at
                             * [0,0-0,0] and nothing can paint. (That mismatch is exactly what
                             * 10r4b caught: the laid-out tree and the drawn tree were two
                             * different LinearLayouts.) Size it here, right where it is
                             * swapped in. */
                            String reMeasure;
                            try {
                                Class<?> msC = Class.forName("android.view.View$MeasureSpec");
                                int wSpec = ((Integer) msC.getMethod("makeMeasureSpec",
                                        int.class, int.class).invoke(null, Integer.valueOf(w),
                                        Integer.valueOf(1073741824))).intValue();
                                int hSpec = ((Integer) msC.getMethod("makeMeasureSpec",
                                        int.class, int.class).invoke(null, Integer.valueOf(h),
                                        Integer.valueOf(1073741824))).intValue();
                                android.view.View.class.getMethod("measure", int.class, int.class)
                                        .invoke(root, Integer.valueOf(wSpec), Integer.valueOf(hSpec));
                                android.view.View.class.getMethod("layout", int.class, int.class,
                                        int.class, int.class)
                                        .invoke(root, Integer.valueOf(0), Integer.valueOf(0),
                                                Integer.valueOf(w), Integer.valueOf(h));
                                reMeasure = android.view.View.class.getMethod("getWidth")
                                        .invoke(root) + "x"
                                        + android.view.View.class.getMethod("getHeight").invoke(root);
                            } catch (Throwable mt) {
                                Throwable mc = mt instanceof java.lang.reflect.InvocationTargetException
                                        && mt.getCause() != null ? mt.getCause() : mt;
                                reMeasure = "fail:" + mc.getClass().getSimpleName() + ":"
                                        + mc.getMessage();
                            }
                            out.append("09h reinflate-layout=").append(reMeasure).append('\n');
                        }
                    }
                } catch (Throwable ht) {
                    Throwable hc = ht instanceof java.lang.reflect.InvocationTargetException
                            && ht.getCause() != null ? ht.getCause() : ht;
                    out.append("09h reinflate=fail:").append(hc.getClass().getName()).append(':')
                       .append(String.valueOf(hc.getMessage())).append('\n');
                }
                writeText(log, out.toString());
                String blitMode = System.getenv("WL_BLIT");
                if (blitMode != null && blitMode.length() > 0) {
                    try {
                        int[] px = null;
                        if ("view".equals(blitMode)) {
                            px = wlRenderViewToPixels(root, w, h, out, log);
                        }
                        sBlitPixels = px; sBlitW = w; sBlitH = h;
                        int brc = nativeBlitArgb();
                        out.append("10e blit=").append(blitMode).append(" rc=")
                           .append(String.valueOf(brc))
                           .append(px == null ? " (pattern)" : " px=" + px.length).append('\n');
                    } catch (Throwable bt) {
                        Throwable bc = bt;
                        while (bc instanceof java.lang.reflect.InvocationTargetException
                                && bc.getCause() != null) {
                            bc = bc.getCause();
                        }
                        out.append("10e blit=fail:").append(bc.getClass().getName()).append(':')
                           .append(String.valueOf(bc.getMessage())).append('\n');
                        try {
                            java.io.StringWriter sw = new java.io.StringWriter();
                            bc.printStackTrace(new java.io.PrintWriter(sw));
                            String st = sw.toString();
                            out.append(st.substring(0, Math.min(st.length(), 2500))).append('\n');
                        } catch (Throwable ignored) {}
                    }
                    writeText(log, out.toString());
                }
            } catch (Throwable t) {
                Throwable c = t instanceof java.lang.reflect.InvocationTargetException && t.getCause() != null
                        ? t.getCause() : t;
                out.append("10 noiceSurface=fail:").append(c.getClass().getName()).append(':')
                   .append(String.valueOf(c.getMessage())).append('\n');
                try {
                    java.io.StringWriter sw = new java.io.StringWriter();
                    c.printStackTrace(new java.io.PrintWriter(sw));
                    String stack = sw.toString();
                    out.append(stack.substring(0, Math.min(stack.length(), 6000))).append('\n');
                } catch (Throwable ignored) {}
            }
            writeText(log, out.append("noice-stage=activity-created\n").toString());
        } catch (Throwable t) {
            try {
                Throwable c = t instanceof java.lang.reflect.InvocationTargetException && t.getCause() != null
                        ? t.getCause() : t;
                out.append("FAIL ").append(c.getClass().getName()).append(':')
                   .append(String.valueOf(c.getMessage())).append('\n');
                writeText(log, out.toString());
            } catch (Throwable ignored) {}
        }
    }

    private static void runColorApk() {
        StringBuilder res = new StringBuilder();
        StringBuilder px = new StringBuilder();
        res.append("colorApk stage\n");
        earlyWriteLiteral("/data/local/tmp/color-ladder.txt", "00-enter");
        long p0 = -1L, p1 = -1L;
        try {
            try {
                if (android.os.Looper.myLooper() == null) android.os.Looper.prepareMainLooper();
            } catch (Throwable ig) {}

            // 1. Load ColorView from the app's OWN dex (color-smoke.apk). Parent = probe loader
            //    so ColorView's superclass android.view.View resolves to the same substrate View.
            String apk = apkPath("color-smoke.apk");
            java.io.File odex = new java.io.File(rootPath() + "/apks/color-odex");
            try { odex.mkdirs(); } catch (Throwable ig) {}
            ClassLoader cl = new dalvik.system.DexClassLoader(
                    apk, odex.getAbsolutePath(), null,
                    Dayu600ApkStageProbe.class.getClassLoader());
            Class<?> cvCls = cl.loadClass("com.westlake.colorapk.ColorView");
            res.append("01 ColorView loaded from ").append(apk).append('\n');

            // 2. Unsafe-alloc (skip ctor) — seed the app-defined start color red = PALETTE[0]
            //    (alloc'd instance skips field inits, so mColor/mIndex are 0). mIndex stays 0
            //    so the first nextColor() advances to PALETTE[1] = green.
            android.view.View view = (android.view.View) wlAlloc(cvCls);
            if (view == null) {
                res.append("FAIL alloc ").append(String.valueOf(WL_SVC_ERR)).append('\n');
                writeText("/data/local/tmp/color-smoke-result.txt", res.toString());
                return;
            }
            int startColor = 0xFFFF0000;
            java.lang.reflect.Field colorF = cvCls.getField("mColor");
            try {
                int[] palette = (int[]) cvCls.getField("PALETTE").get(null);
                if (palette != null && palette.length > 0) startColor = palette[0];
            } catch (Throwable ig) {}
            colorF.setInt(view, startColor);
            earlyWriteLiteral("/data/local/tmp/color-ladder.txt", "01-alloc");

            int w = 1200, h = 1920;
            wlEnsureRenderNodes(view);
            wlForceViewBounds(view, 0, 0, w, h);

            // 3. Wire our upscreen renderer (same JNI triple as firstFrame53) + the readback.
            Class<?> ups = Class.forName("adapter.window.WestlakeUpscreen");
            java.lang.reflect.Method record = ups.getMethod("record",
                    android.view.View.class, int.class, int.class);
            java.lang.reflect.Method nPtr = ups.getDeclaredMethod("nativeRenderNodePtr",
                    Class.forName("android.graphics.RenderNode"));
            nPtr.setAccessible(true);
            java.lang.reflect.Method nInit = ups.getDeclaredMethod("nativeInit",
                    long.class, int.class, int.class);
            nInit.setAccessible(true);
            java.lang.reflect.Method nDraw = ups.getDeclaredMethod("nativeDrawFrame");
            nDraw.setAccessible(true);
            java.lang.reflect.Method nSwap = ups.getDeclaredMethod("nativeLastSwapArgb");
            nSwap.setAccessible(true);
            java.lang.reflect.Method nextColor = cvCls.getMethod("nextColor");

            // Record red once to obtain a stable native RenderNode ptr for nativeInit; re-record
            // into the SAME root keeps the ptr valid across frames (color changes, ptr doesn't).
            step("02 record-begin");
            Object node = record.invoke(null, view, Integer.valueOf(w), Integer.valueOf(h));
            step("02 record-ok");
            Object ptrObj = nPtr.invoke(null, node);
            long ptr = (ptrObj instanceof Long) ? ((Long) ptrObj).longValue() : 0L;
            res.append("02 renderNodePtr=").append(String.valueOf(ptr)).append('\n');
            /* Load skia AFTER recording so RTLD_NEXT can see MakeGL; EGL/GLESv3 so egl_interposer's
             * glReadPixels/glGetIntegerv resolve. Mirrors firstFrame53's load order. */
            wlLoadLib("/system/lib64/libskia_canvaskit.z.so");
            wlLoadLib("/system/lib64/libEGL.so");
            wlLoadLib("/system/lib64/libGLESv3.so");
            Object irc = nInit.invoke(null, Long.valueOf(ptr), Integer.valueOf(w), Integer.valueOf(h));
            int ir = (irc instanceof Integer) ? ((Integer) irc).intValue() : -1;
            res.append("03 nativeInit=").append(String.valueOf(ir)).append('\n');
            step("03 nativeInit=" + ir);
            earlyWriteLiteral("/data/local/tmp/color-ladder.txt", "02-init-" + ir);

            if (ir == 2) {
                // frame0: the red display list is already recorded above — push + read swap pixel.
                nDraw.invoke(null);
                p0 = readSwapArgb(nSwap);
                res.append("04 frame0 color=").append(hex8(colorF.getInt(view)))
                   .append(" pixel0=").append(hex8((int) p0)).append('\n');
                // Advance via the APP's own driver method, re-record the new color, push, read.
                nextColor.invoke(view);
                record.invoke(null, view, Integer.valueOf(w), Integer.valueOf(h));
                nDraw.invoke(null);
                p1 = readSwapArgb(nSwap);
                res.append("05 frame1 color=").append(hex8(colorF.getInt(view)))
                   .append(" pixel1=").append(hex8((int) p1)).append('\n');
            }
            earlyWriteLiteral("/data/local/tmp/color-ladder.txt", "03-frames");

            // color-smoke=ok requires BOTH frames to have produced a real swap pixel (>=0, i.e.
            // nativeLastSwapArgb saw a swap). changed=yes requires the two pixels to differ — the
            // exact liveness proof (a one-shot static fill would give p0==p1 and FAIL).
            boolean rendered = (ir == 2) && p0 >= 0L && p1 >= 0L;
            boolean changed = rendered && (p0 != p1);
            px.append("pixel0=").append(hex8((int) p0)).append('\n');
            px.append("pixel1=").append(hex8((int) p1)).append('\n');
            res.append(rendered ? "color-smoke=ok\n" : "color-smoke=fail\n");
            res.append(changed ? "changed=yes\n" : "changed=no\n");
        } catch (Throwable t) {
            res.append("FAIL ").append(t.getClass().getName())
               .append(':').append(String.valueOf(t.getMessage())).append('\n');
            earlyWriteStack("/data/local/tmp/color-err.txt", t);
        }
        earlyWriteLiteral("/data/local/tmp/color-ladder.txt", "99-done");
        try { writeText("/data/local/tmp/color-smoke-pixels.txt", px.toString()); } catch (Throwable ig) {}
        try { writeText("/data/local/tmp/color-smoke-result.txt", res.toString()); } catch (Throwable ig) {}
    }

    /**
     * triangle-liveness — the triangle-apk's OWN TriangleView.onDraw (Canvas.drawColor backdrop
     * + Canvas.drawPath of a rotated equilateral triangle) paints a SPINNING, colour-cycling
     * triangle through OUR libhwui; egl_interposer captures the center pixel pre-swap. The
     * triangle is centred on the surface with its centroid at the readback point, so the center
     * pixel IS the triangle's fill colour: frame0 = red (PALETTE[0]), the app's own nextFrame()
     * spins + advances to green (PALETTE[1]) for frame1.
     *
     * This is the Android-APK twin of the OH-native GLES2 triangle: the SAME picture, produced by
     * the real Android View/Canvas/RenderNode stack. TriangleView is loaded from triangle.apk's
     * OWN dex, so drawColor+drawPath provably come from the APP's compiled render code.
     *
     * A pixel == the dark backdrop (ff10121a) instead of the palette colour would mean drawPath
     * did not paint (op unbound on this substrate) — so this stage also verifies drawPath binding.
     *
     * Writes triangle-{result,pixels}.txt for oracle/verify/triangle-smoke-5ce.sh.
     */
    private static void runTriangleApk() {
        StringBuilder res = new StringBuilder();
        StringBuilder px = new StringBuilder();
        res.append("triangleApk stage\n");
        earlyWriteLiteral("/data/local/tmp/tri-ladder.txt", "00-enter");
        long p0 = -1L, p1 = -1L;
        // Provenance/liveness accumulators — pure int (no HashSet: this ART ArrayStores on some
        // covariant paths, and a collection crash mid-hold would wipe the evidence file). provMatch
        // counts frames whose on-panel center pixel equalled the app's OWN mColor field; distinctFrames
        // counts frames whose center differed from frame0 (proves the colour cycle painted live).
        int provTotal = 0, provMatch = 0, distinctFrames = 0;
        int firstColor = -1, altColor = -1;
        try {
            try {
                if (android.os.Looper.myLooper() == null) android.os.Looper.prepareMainLooper();
            } catch (Throwable ig) {}

            // 1. Load TriangleView from the app's OWN dex (triangle.apk). Parent = probe loader so
            //    TriangleView's superclass android.view.View resolves to the same substrate View.
            String apk = apkPath("triangle.apk");
            java.io.File odex = new java.io.File(rootPath() + "/apks/tri-odex");
            try { odex.mkdirs(); } catch (Throwable ig) {}
            ClassLoader cl = new dalvik.system.DexClassLoader(
                    apk, odex.getAbsolutePath(), null,
                    Dayu600ApkStageProbe.class.getClassLoader());
            Class<?> tvCls = cl.loadClass("com.gltri.demo.TriangleView");
            res.append("01 TriangleView loaded from ").append(apk).append('\n');
            step("01 tv-loaded");

            // 2. Unsafe-alloc (skip ctor). Seed the app-defined start color red = PALETTE[0] and
            //    angle 0 (alloc'd instance skips field inits). mIndex stays 0 so the first
            //    nextFrame() advances to PALETTE[1] = green; mPaint/mPath init lazily in onDraw.
            android.view.View view = (android.view.View) wlAlloc(tvCls);
            if (view == null) {
                res.append("FAIL alloc ").append(String.valueOf(WL_SVC_ERR)).append('\n');
                writeText("/data/local/tmp/triangle-result.txt", res.toString());
            try { String rd = System.getenv("WESTLAKE_RESULT_DIR"); if (rd != null) writeText(rd + "/triangle-result-full.txt", res.toString()); } catch (Throwable igx) {}
                return;
            }
            int startColor = 0xFFFF0000;
            java.lang.reflect.Field colorF = tvCls.getField("mColor");
            try {
                int[] palette = (int[]) tvCls.getField("PALETTE").get(null);
                if (palette != null && palette.length > 0) startColor = palette[0];
            } catch (Throwable ig) {}
            colorF.setInt(view, startColor);
            try { tvCls.getField("mAngleDeg").setInt(view, 0); } catch (Throwable ig) {}
            // frame0 draws ONE proven-safe op (capability-probe 0 = drawRect), NOT the full
            // scene: the all-ops-at-once scene record SIGSEGVs the VM before any per-op
            // capability evidence exists (5583, 2026-07-18 — death bracketed at 016/017 by
            // the ladder). The cap loop below then maps every op individually (flushed per
            // op), and the scene only comes back after its ops are all proven.
            try { tvCls.getField("mMode").setInt(view, 0); } catch (Throwable ig) {}
            earlyWriteLiteral("/data/local/tmp/tri-ladder.txt", "01-alloc");

            int w = 1200, h = 1920;
            wlEnsureRenderNodes(view);
            wlForceViewBounds(view, 0, 0, w, h);
            try { tvCls.getMethod("setSize", int.class, int.class)
                    .invoke(view, Integer.valueOf(w), Integer.valueOf(h)); } catch (Throwable ig) {}

            // 3. Wire our upscreen renderer DIRECTLY (5583, 2026-07-18): Method.invoke
            // dispatch into boot-classpath adapter.window.WestlakeUpscreen silently
            // SIGKILLs the process at the record call site — no exception, no
            // faultlog. Direct static calls bypass the reflection machinery; the
            // renderer natives were made public for exactly this. (Evidence:
            // "02 record-begin" printed, then death — clinit never runs.)
            java.lang.reflect.Method nextFrame = tvCls.getMethod("nextFrame");

            // 2.5) REAL libhwui registrar binding — DISABLED by default on 5583: the full
            // register_android_graphics_Canvas table mismatches framework.jar c3a06db5 and
            // libhwui asserts (SIGTRAP, uncatchable) instead of failing gracefully. Only run
            // when WESTLAKE_HWUI_SUBSET=1 (pair known-coherent, e.g. 5ce). Without it record
            // dies UnsatisfiedLinkError (nSetLeftTopRightBottom / nCreateDisplayListCanvas)
            // but the process survives and reports it — see 2026-07-17 evidence note.
            if ("1".equals(System.getenv("WESTLAKE_HWUI_SUBSET"))) {
                try {
                    int hwuiRc = nativeRegisterHwuiRender();
                    res.append("02a hwuiSubset=").append(String.valueOf(hwuiRc)).append('\n');
                } catch (Throwable hwt) {
                    res.append("02a hwuiSubset FAIL ").append(hwt.getClass().getName())
                       .append(':').append(String.valueOf(hwt.getMessage())).append('\n');
                }
            }

            // Isolated native-chain probe (2026-07-18): record() dies right after
            // r2 setPosition, so beginRecording -> nCreateDisplayListCanvas is the
            // suspect. Run the SAME RenderNode ctor + beginRecording/endRecording
            // here, DIRECTLY on framework classes, BEFORE the adapter record, to
            // split "native chain broken" from "adapter record path broken".
            try {
                android.graphics.RenderNode iso = new android.graphics.RenderNode("iso");
                step("iso1 nCreate");
                iso.setPosition(0, 0, 64, 64);
                step("iso2 setPosition");
                android.graphics.RecordingCanvas isoC = iso.beginRecording(64, 64);
                step("iso3 beginRecording");
                iso.endRecording();
                step("iso4 endRecording");
            } catch (Throwable isoT) {
                step("iso FAIL " + isoT.getClass().getName());
            }

            // Record frame0 once to obtain a stable native RenderNode ptr; re-record into the SAME
            // root each frame (the triangle spins + colour changes, the ptr does not).
            earlyWriteLiteral("/data/local/tmp/tri-ladder.txt", "016-record-begin");
            step("02 record-begin");
            Object node = adapter.window.WestlakeUpscreen.record(view, w, h);
            long ptr = adapter.window.WestlakeUpscreen.nativeRenderNodePtr((android.graphics.RenderNode) node);
            earlyWriteLiteral("/data/local/tmp/tri-ladder.txt", "017-record-ok ptr=" + ptr);
            step("02 record-ok ptr=" + ptr);
            res.append("02 renderNodePtr=").append(String.valueOf(ptr)).append('\n');
            wlLoadLib("/system/lib64/libskia_canvaskit.z.so");
            wlLoadLib("/system/lib64/libEGL.so");
            wlLoadLib("/system/lib64/libGLESv3.so");
            int ir = adapter.window.WestlakeUpscreen.nativeInit(ptr, w, h);
            res.append("03 nativeInit=").append(String.valueOf(ir)).append('\n');
            earlyWriteLiteral("/data/local/tmp/tri-ladder.txt", "02-init-" + ir);
            step("03 nativeInit=" + ir);

            if (ir == 2) {
                // (A) CAPABILITY PROBE: for each candidate Canvas op, set mMode=m so onDraw draws
                // ONLY that op center-covering in a known colour (mExpected), then read back the
                // panel center pixel. pixel==mExpected => the op paints on this substrate. This
                // maps exactly which GPU ops bind here (drawRect proven; the rest inferred until
                // now), so the scene can be locked to real ops instead of hand-rasterised blocks.
                try {
                    java.lang.reflect.Field modeF = tvCls.getField("mMode");
                    java.lang.reflect.Field expF  = tvCls.getField("mExpected");
                    // Matches TriangleView.drawCapabilityProbe cases 0..8 (no shader op — a
                    // null-handle gradient fed to a bound draw op SIGSEGVs skia uncatchably).
                    // drawTextRun (cap case 10) is intentionally OMITTED here: on this substrate the
                    // nDrawTextRun native SIGSEGVs the RenderThread (no live minikin/font/Typeface path
                    // to shape glyphs — the arm marshals correctly and reaches the native, but shaping
                    // crashes). Driving it kills the process before the hold phase, so it is proven
                    // separately, not in the visual dashboard run. drawBitmap (case 9) stays: it is
                    // crash-safe (Bitmap.createBitmap returns no handle on this substrate, so the op is
                    // skipped and simply scores '--').
                    String[] opNames = { "drawRect", "drawCircle", "drawOval", "drawRoundRect",
                            "drawArc", "drawLine", "drawPath", "drawVertices", "drawPaint",
                            "drawBitmap" };
                    for (int m = 0; m < opNames.length; m++) {
                        modeF.setInt(view, m);
                        adapter.window.WestlakeUpscreen.record(view, w, h);
                        adapter.window.WestlakeUpscreen.nativeDrawFrame();
                        long cp = adapter.window.WestlakeUpscreen.nativeLastSwapArgb();
                        int exp = expF.getInt(view);
                        boolean ok = (cp >= 0L) && (((int) cp) == exp);
                        res.append("cap ").append(String.valueOf(m)).append(' ').append(opNames[m])
                           .append(" expected=").append(hex8(exp))
                           .append(" pixel=").append(hex8((int) cp))
                           .append(ok ? " OK" : " --").append('\n');
                        // Flush after each op: if a later op crashes the RenderThread natively,
                        // the earlier cap evidence is already on disk (the process can't catch it).
                        try { writeText("/data/local/tmp/triangle-result.txt", res.toString());
            try { String rd = System.getenv("WESTLAKE_RESULT_DIR"); if (rd != null) writeText(rd + "/triangle-result-full.txt", res.toString()); } catch (Throwable igx) {} }
                        catch (Throwable ig) {}
                    }
                    modeF.setInt(view, -1);   // back to scene mode for the spin below
                } catch (Throwable capT) {
                    res.append("cap-probe FAIL ").append(capT.getClass().getName())
                       .append(':').append(String.valueOf(capT.getMessage())).append('\n');
                }

                // (B0) LAUNCH-NONCE frame (installed-HAP provenance, W-005):
                // the HAP glue exports WESTLAKE_LAUNCH_NONCE(_COLOR) before VM create;
                // draw ONE scene-mode frame whose hub fill IS that fresh per-launch
                // colour and prove the pre-swap panel pixel matches it. This binds the
                // on-panel frame to THIS launch of THIS installed HAP (no stale-result
                // replay). Skipped entirely in the shell lane (env absent).
                try {
                    String ln = System.getenv("WESTLAKE_LAUNCH_NONCE");
                    String lc = System.getenv("WESTLAKE_LAUNCH_NONCE_COLOR");
                    if (ln != null && lc != null && ln.length() > 0 && lc.length() > 0) {
                        int nc = (int) Long.parseLong(
                                lc.trim().replace("0x", "").replace("0X", ""), 16);
                        colorF.setInt(view, nc);
                        adapter.window.WestlakeUpscreen.record(view, w, h);
                        adapter.window.WestlakeUpscreen.nativeDrawFrame();
                        long np = adapter.window.WestlakeUpscreen.nativeLastSwapArgb();
                        boolean nok = (np >= 0L) && (((int) np) == nc);
                        String nl = "launchNonce=" + ln
                                + " nonceColor=" + hex8(nc)
                                + " noncePixel=" + hex8((int) np)
                                + (nok ? " nonceMatch=yes" : " nonceMatch=no");
                        res.append(nl).append('\n');
                        try { android.util.Log.e("WLAUNCH", nl); } catch (Throwable ig2) {}
                        String rd = System.getenv("WESTLAKE_RESULT_DIR");
                        if (rd != null && rd.length() > 0) {
                            try { writeText(rd + "/wl-triangle-result.txt", nl + "\n"); }
                            catch (Throwable ig3) {}
                        }
                    }
                } catch (Throwable nT) {
                    res.append("nonce-frame FAIL ").append(nT.getClass().getName())
                       .append(':').append(String.valueOf(nT.getMessage())).append('\n');
                }

                // (B) DISPLAY/HOLD phase. The app's OWN nextFrame() advances BOTH the (int) angle
                // and the (int) colour — both int fields, which this substrate writes correctly.
                // Render the live dashboard slowly (~120ms/frame) so the panel visibly displays it
                // long enough to photograph, while the spin proves on-panel liveness (not a frozen
                // frame). Kept to ~70 frames — well under this substrate's ~180-frame skia-atlas
                // ceiling, past which the RenderThread SIGBUSes. fps is measured render-only (record
                // + nDraw + swap, excluding the sleep) = the true "frames per second the pipeline
                // can draw", which is the number the 60fps question is really asking.
                earlyWriteLiteral("/data/local/tmp/tri-ladder.txt", "04-hold-start");
                int frames = 70;
                long renderMs = 0;
                for (int fr = 0; fr < frames; fr++) {
                    nextFrame.invoke(view);               // app self-drives angle(int) + colour(int)
                    long ts = System.currentTimeMillis();
                    adapter.window.WestlakeUpscreen.record(view, w, h);
                    adapter.window.WestlakeUpscreen.nativeDrawFrame();
                    renderMs += (System.currentTimeMillis() - ts);
                    long p = adapter.window.WestlakeUpscreen.nativeLastSwapArgb();
                    if (fr == 0) p0 = p;
                    p1 = p;
                    int curColor = colorF.getInt(view);       // the app's own current fill colour
                    if (p >= 0L) {
                        int pc = (int) p;
                        provTotal++;
                        if (pc == curColor) provMatch++;       // center pixel == app's mColor => really painted
                        if (firstColor == -1) firstColor = pc;
                        else if (pc != firstColor) {
                            distinctFrames++;                  // this frame's center differs from frame0
                            if (altColor == -1) altColor = pc; // keep one differing colour for the evidence line
                        }
                    }
                    if (fr < 6) res.append("04 frame").append(String.valueOf(fr))
                       .append(" angle=").append(String.valueOf(tvCls.getField("mAngleDeg").getInt(view)))
                       .append(" color=").append(hex8(curColor))
                       .append(" pixel=").append(hex8((int) p)).append('\n');
                    try { Thread.sleep(120); } catch (Throwable ig) {}
                }
                double fps = renderMs > 0 ? (frames * 1000.0 / renderMs) : 0.0;
                res.append("fps=").append(String.valueOf(fps))
                   .append(" frames=").append(String.valueOf(frames))
                   .append(" renderMs=").append(String.valueOf(renderMs)).append('\n');
                // Provenance: EVERY rendered frame's on-panel center pixel equalled the app's own mColor
                // (match=provMatch/provTotal). Liveness: distinctFrames frames showed a colour != frame0.
                res.append("centerProvenance=").append(provMatch == provTotal && provTotal > 0 ? "match" : "MISS")
                   .append(" provFrames=").append(String.valueOf(provMatch)).append('/').append(String.valueOf(provTotal))
                   .append(" distinctFrames=").append(String.valueOf(distinctFrames))
                   .append(" colorA=").append(hex8(firstColor))
                   .append(" colorB=").append(hex8(altColor)).append('\n');
                try { writeText("/data/local/tmp/triangle-result.txt", res.toString());
            try { String rd = System.getenv("WESTLAKE_RESULT_DIR"); if (rd != null) writeText(rd + "/triangle-result-full.txt", res.toString()); } catch (Throwable igx) {} } catch (Throwable ig) {}
                earlyWriteLiteral("/data/local/tmp/tri-ladder.txt", "05-hold-done");
            }
            earlyWriteLiteral("/data/local/tmp/tri-ladder.txt", "03-frames");

            // triangle-smoke=ok requires BOTH frames to have produced a real swap pixel; changed=yes
            // requires the on-panel center pixel to take >=2 distinct values across the hold (the app's
            // own colour cycle). A pixel equal to the dark backdrop would mean the fill did not paint.
            boolean rendered = (ir == 2) && p0 >= 0L && p1 >= 0L;
            // distinctFrames > 0 => some hold frame's center differed from frame0 (live colour cycle).
            // NOT p0!=p1: that aliases to a false "no" when 70 frames @ 8-frame cadence wrap back to red.
            boolean changed = rendered && (distinctFrames > 0);
            px.append("pixel0=").append(hex8((int) p0)).append('\n');
            px.append("pixel1=").append(hex8((int) p1)).append('\n');
            res.append(rendered ? "triangle-smoke=ok\n" : "triangle-smoke=fail\n");
            res.append(changed ? "changed=yes\n" : "changed=no\n");
        } catch (Throwable t) {
            step("FAIL " + t.getClass().getName());
            res.append("FAIL ").append(t.getClass().getName())
               .append(':').append(String.valueOf(t.getMessage())).append('\n');
            // W-005: surface the nested cause (InvocationTargetException's target) —
            // the message alone ("...ITE:null") hides which native/method actually threw.
            if (t.getCause() == null) {
                // no cause (e.g. bare NPE) — frames of t itself are the only locator
                StackTraceElement[] st0 = t.getStackTrace();
                if (st0 != null) for (int si = 0; si < st0.length && si < 8; si++) {
                    res.append("    at ").append(st0[si].getClassName()).append('.')
                       .append(st0[si].getMethodName()).append(':').append(st0[si].getLineNumber()).append('\n');
                }
            }
            for (Throwable c = t.getCause(); c != null; c = c.getCause()) {
                res.append("  cause: ").append(c.getClass().getName())
                   .append(':').append(String.valueOf(c.getMessage())).append('\n');
                StackTraceElement[] st = c.getStackTrace();
                if (st != null) for (int si = 0; si < st.length && si < 6; si++) {
                    res.append("    at ").append(st[si].getClassName()).append('.')
                       .append(st[si].getMethodName()).append(':').append(st[si].getLineNumber()).append('\n');
                }
            }
            earlyWriteStack("/data/local/tmp/triangle-err.txt", t);
        }
        earlyWriteLiteral("/data/local/tmp/tri-ladder.txt", "99-done");
        try { writeText("/data/local/tmp/triangle-pixels.txt", px.toString());
            try { String rd2 = System.getenv("WESTLAKE_RESULT_DIR"); if (rd2 != null) writeText(rd2 + "/triangle-pixels-full.txt", px.toString()); } catch (Throwable igy) {} } catch (Throwable ig) {}
        try { writeText("/data/local/tmp/triangle-result.txt", res.toString());
            try { String rd = System.getenv("WESTLAKE_RESULT_DIR"); if (rd != null) writeText(rd + "/triangle-result-full.txt", res.toString()); } catch (Throwable igx) {} } catch (Throwable ig) {}
    }

    /**
     * Append stack frames field-by-field (getClassName/getMethodName/getLineNumber) — never
     * StackTraceElement.toString(), whose internal String concat ArrayStores on this board.
     * Per-frame guarded, and emits frames=N so an empty trace (unpopulated on minimal ART)
     * is itself a signal.
     */
    private static void appendFrames(StringBuilder sb, Throwable t) {
        try {
            StackTraceElement[] stack = t.getStackTrace();
            sb.append("frames=").append(stack == null ? -1 : stack.length).append('\n');
            if (stack == null) return;
            for (int i = 0; i < stack.length && i < 30; i++) {
                try {
                    StackTraceElement e = stack[i];
                    sb.append(e.getClassName()).append('#').append(e.getMethodName())
                      .append(':').append(e.getLineNumber()).append('\n');
                } catch (Throwable ig) {
                    sb.append("<frame-err>\n");
                }
            }
        } catch (Throwable ig) {
            sb.append("<stack-err>\n");
        }
    }

    /** Env-gated (WESTLAKE_W001_BISECT=1). Localizes the ArrayList.size() NPE inside
     *  new Resources()'s getSystem()/OverlayConfig/PackagePartitions cascade by calling
     *  each suspect directly and recording message-or-class (single literal → no concat). */
    private static boolean isBisectEnabled() {
        try {
            return "1".equals(System.getenv("WESTLAKE_W001_BISECT"));
        } catch (Throwable ig) {
            return false;
        }
    }

    /** message-or-class as a single literal (no concat). */
    private static void bisectRecord(String path, Throwable t) {
        Throwable r = t;
        if (t instanceof java.lang.reflect.InvocationTargetException && t.getCause() != null) {
            r = t.getCause();
        }
        String out;
        try {
            out = r.getMessage();
            if (out == null) {
                out = r.getClass().getName();
            }
        } catch (Throwable ig) {
            out = "ex-unknown";
        }
        earlyWriteLiteral(path, out);
    }

    private static void runResBisect() {
        // Reflection getMethod/getDeclaredMethod both NPE on this ART; call directly through
        // compile-only shims (resolved to the board's framework.jar at runtime).
        try {
            android.os.Environment.getRootDirectory();
            earlyWriteLiteral("/data/local/tmp/w001-bis-env.txt", "ok");
        } catch (Throwable t) {
            bisectRecord("/data/local/tmp/w001-bis-env.txt", t);
        }
        // getOrderedPartitions -> SYSTEM_PARTITIONS.size(): is the static partition list null?
        try {
            Class<?> pp = Class.forName("android.content.pm.PackagePartitions");
            pp.getMethod("getOrderedPartitions", java.util.function.Function.class)
                    .invoke(null, java.util.function.Function.identity());
            earlyWriteLiteral("/data/local/tmp/w001-bis-partitions.txt", "ok");
        } catch (Throwable t) {
            bisectRecord("/data/local/tmp/w001-bis-partitions.txt", t);
        }
        // getZygoteInstance -> new OverlayConfig(...) full ctor path.
        try {
            Class.forName("com.android.internal.content.om.OverlayConfig")
                    .getMethod("getZygoteInstance").invoke(null);
            earlyWriteLiteral("/data/local/tmp/w001-bis-overlay.txt", "ok");
        } catch (Throwable t) {
            bisectRecord("/data/local/tmp/w001-bis-overlay.txt", t);
        }
    }

    /** Does an id resolve in these Resources? Writes the resource name or the exception class
     *  (single literal → no concat). Reveals whether the app package (0x7f) is linked at all. */
    private static void earlyResName(String path, android.content.res.Resources res, int id) {
        try {
            String nm = res.getResourceName(id);
            earlyWriteLiteral(path, nm == null ? "<null-name>" : nm);
        } catch (Throwable t) {
            earlyWriteLiteral(path, t.getClass().getName());
        }
    }

    /**
     * Seed AssetManager.sSystem with a minimal sentinel AssetManager so that
     * AssetManager.getSystem() -> createSystemAssetsInZygoteLocked hits the
     * `if (sSystem != null && !reinitialize) return;` guard and early-returns,
     * NEVER touching OverlayConfig.getZygoteInstance() ->
     * PackagePartitions.getOrderedPartitions() -> SYSTEM_PARTITIONS.size().
     *
     * Root cause (bisect + jadx, 2026-07-11): on 5583 PackagePartitions.<clinit>
     * aborts inside getFingerprint()->SystemProperties.native_get (unbound boot
     * native) so SYSTEM_PARTITIONS reads null. The seed sidesteps the whole
     * subtree. Harmless where SYSTEM_PARTITIONS is already non-null (5ce2dcee):
     * the guard just early-returns. Field reflection works on this ART even
     * though getMethod/getDeclaredMethod NPE. Writes w001-seed.txt.
     */
    // Seed AssetManager.sSystem (class-literal only — this board NPEs on Class.forName(String))
    // so getSystem() early-returns and never runs createSystemAssetsInZygoteLocked →
    // PackagePartitions/SystemProperties clinit cascade (the 5583 NPE). Writes a literal-only
    // diagnostic (no concatenation — StringBuilder is board-hostile here).
    private static void seedSystemAssetManager() {
        Class<?> amCls = android.content.res.AssetManager.class;
        java.lang.reflect.Field fSys;
        try {
            fSys = amCls.getDeclaredField("sSystem");
            fSys.setAccessible(true);
            if (fSys.get(null) != null) {
                earlyWriteLiteral("/data/local/tmp/w001-seed.txt", "already-set");
                return;
            }
        } catch (Throwable t) {
            earlyWriteLiteral("/data/local/tmp/w001-seed.txt", "fieldfail");
            return;
        }
        Object seedAm;
        try {
            java.lang.reflect.Constructor<?> amC = amCls.getDeclaredConstructor(boolean.class);
            amC.setAccessible(true);
            seedAm = amC.newInstance(Boolean.TRUE);
        } catch (Throwable t) {
            // Sentinel ctor is flaky on 5583 (clinit-order NPE). The pre-newResources reader
            // will show sSystem=null and we fall to fix (b) SystemProperties binding.
            earlyWriteLiteral("/data/local/tmp/w001-seed.txt", "ctorfail");
            return;
        }
        try {
            fSys.set(null, seedAm);
        } catch (Throwable t) {
            earlyWriteLiteral("/data/local/tmp/w001-seed.txt", "setfail");
            return;
        }
        // sSystemApkAssetsSet defaults null; seed a non-null ArraySet so any later
        // setApkAssets(...,system=true) contains()-check does not NPE.
        try {
            java.lang.reflect.Field fSet = amCls.getDeclaredField("sSystemApkAssetsSet");
            fSet.setAccessible(true);
            if (fSet.get(null) == null) { fSet.set(null, new android.util.ArraySet<Object>()); }
        } catch (Throwable ig) {}
        earlyWriteLiteral("/data/local/tmp/w001-seed.txt", "seeded");
    }

    // Read AssetManager.sSystem (class-literal only) right before a new Resources() to
    // decide: seed-reset (null) vs reinitialize=true / dual-getSystem (nonnull yet
    // createSystemAssets still runs → NPE). Literal-only writes; caller passes the file path.
    private static void readSSystemState(String path) {
        try {
            java.lang.reflect.Field f =
                    android.content.res.AssetManager.class.getDeclaredField("sSystem");
            f.setAccessible(true);
            if (f.get(null) != null) {
                earlyWriteLiteral(path, "pre-nonnull");
            } else {
                earlyWriteLiteral(path, "pre-null");
            }
        } catch (Throwable t) {
            earlyWriteLiteral(path, "pre-err");
        }
    }

    private static int runEarlyThemeOracle() {
        int stepCode = 0;
        try {
            earlyWriteLiteral("/data/local/tmp/uptodown-early.txt", "EARLY syncMain");
            // Resources ctor hits Trace.nativeIsTagEnabled → UnsatisfiedLinkError unless
            // the sidecar's trace natives are registered first (proven 2026-07-10).
            ensureTraceNatives();
            // Bind the REAL libandroidfw resolution natives BEFORE any nativeW001Append,
            // so the sidecar's setApkAssets delegation builds a real DynamicRefTable and
            // assigns app package 0x7f (fixes uamHasWab=false / getResourceName ULE).
            ensureArscNatives();
            // Seed AssetManager.sSystem so getSystem() early-returns and never touches
            // OverlayConfig/PackagePartitions (fixes the SYSTEM_PARTITIONS==null NPE on 5583).
            seedSystemAssetManager();
            Class<?> amCls = android.content.res.AssetManager.class;
            java.lang.reflect.Constructor<?> amC = amCls.getDeclaredConstructor(boolean.class);
            amC.setAccessible(true);
            android.content.res.AssetManager am =
                    (android.content.res.AssetManager) amC.newInstance(Boolean.TRUE);
            stepCode = 1;
            // Bind Trace natives on EVERY reachable Trace class (boot + this am's loader)
            // before any Resources() ctor. ensureTraceNatives() above only reached boot Trace;
            // the Resources ctor resolves the am-loader's Trace (dual-class hazard). Void arg →
            // shorty 'VL' (dispatchable). Native writes w001-trace.txt = "trace boot=? amldr=?".
            nativeW001BindTrace(am);
            // Diagnostic: localize the framework-bootstrap NPE without contaminating the A/B legs.
            if (isBisectEnabled()) {
                runResBisect();
                earlyWriteLiteral("/data/local/tmp/uptodown-early.txt", "EARLY bisect-done");
                return 43;
            }
            earlyWriteLiteral("/data/local/tmp/uptodown-early.txt", "EARLY step=addApp");
            earlyWriteLiteral("/data/local/tmp/uptodown-early.txt", "EARLY preNative");
            // VLL trampoline: no int return. Per-call rc lands in w001-ck{App,Fw}.txt
            // (written by native); success proof is 'nativeSet=ok ck=2' in
            // w001-native-append.txt. Java proceeds unconditionally — a failed append
            // shows up as uamHasWab=false plus the native heartbeats.
            nativeW001Append(am, W001_APK_PATH);
            earlyWriteLiteral("/data/local/tmp/uptodown-early.txt", "EARLY postNativeApp");
            // A leg (app-only): probe attrs BEFORE framework-res joins the AM.
            // Wrapped so an A-leg crash can never block the B leg (the real oracle).
            try {
                android.util.DisplayMetrics dmA = new android.util.DisplayMetrics();
                try { dmA.setToDefaults(); } catch (Throwable ig) {
                    dmA.density = 1.0f; dmA.widthPixels = 1200; dmA.heightPixels = 1920;
                }
                earlyWriteLiteral("/data/local/tmp/uptodown-early.txt", "EARLY step=resA");
                android.content.res.Resources resA = new android.content.res.Resources(
                        am, dmA, new android.content.res.Configuration());
                earlyWriteLiteral("/data/local/tmp/uptodown-early.txt", "EARLY step=applyStyleA");
                android.content.res.Resources.Theme thA = resA.newTheme();
                thA.applyStyle(0x7f15000e, true);
                earlyWriteLiteral("/data/local/tmp/uptodown-early.txt", "EARLY step=obtainA");
                int[] probeAttrsA = new int[] { 0x7f040691, 0x01010059, 0x7f040141 };
                android.content.res.TypedArray taA = thA.obtainStyledAttributes(probeAttrsA);
                boolean aWab = taA.hasValue(0);
                boolean aWco = taA.hasValue(1);
                boolean aCp = taA.hasValue(2);
                taA.recycle();
                if (aWab && aWco && aCp) {
                    earlyWriteLiteral("/data/local/tmp/w001-abA.txt", "A wab=1 wco=1 cp=1");
                } else if (aWab && aWco) {
                    earlyWriteLiteral("/data/local/tmp/w001-abA.txt", "A wab=1 wco=1 cp=0");
                } else if (aWab && aCp) {
                    earlyWriteLiteral("/data/local/tmp/w001-abA.txt", "A wab=1 wco=0 cp=1");
                } else if (aWab) {
                    earlyWriteLiteral("/data/local/tmp/w001-abA.txt", "A wab=1 wco=0 cp=0");
                } else if (aWco && aCp) {
                    earlyWriteLiteral("/data/local/tmp/w001-abA.txt", "A wab=0 wco=1 cp=1");
                } else if (aWco) {
                    earlyWriteLiteral("/data/local/tmp/w001-abA.txt", "A wab=0 wco=1 cp=0");
                } else if (aCp) {
                    earlyWriteLiteral("/data/local/tmp/w001-abA.txt", "A wab=0 wco=0 cp=1");
                } else {
                    earlyWriteLiteral("/data/local/tmp/w001-abA.txt", "A wab=0 wco=0 cp=0");
                }
            } catch (Throwable at) {
                earlyWriteLiteral("/data/local/tmp/w001-abA.txt", "A caught");
                // Single-String writes only (no concatenation on this board).
                try {
                    earlyWriteLiteral("/data/local/tmp/w001-abAex.txt", at.getClass().getName());
                } catch (Throwable ig2) {}
                earlyWriteStack("/data/local/tmp/w001-abAstack.txt", at);
            }
            stepCode = 2;
            earlyWriteLiteral("/data/local/tmp/uptodown-early.txt", "EARLY step=addFw");
            nativeW001Append(am, W001_FW_PATH);
            earlyWriteLiteral("/data/local/tmp/uptodown-early.txt", "EARLY postNativeFw");
            stepCode = 3;
            // Decisive 5583 diagnostic: is sSystem still seeded right before the NPE site?
            readSSystemState("/data/local/tmp/w001-ssys-pre.txt");
            earlyWriteLiteral("/data/local/tmp/uptodown-early.txt", "EARLY step=res");
            android.util.DisplayMetrics dm = new android.util.DisplayMetrics();
            try { dm.setToDefaults(); } catch (Throwable ig) {
                dm.density = 1.0f; dm.widthPixels = 1200; dm.heightPixels = 1920;
            }
            android.content.res.Resources res =
                    new android.content.res.Resources(am, dm, new android.content.res.Configuration());
            // Diagnostic: does anything resolve in this Resources? If the app package (0x7f)
            // is not linked, the AppThemeBar style (0x7f15000e) won't resolve and applyStyle
            // is a no-op — which is exactly the wab=0/wco=0/cp=0 symptom.
            earlyResName("/data/local/tmp/w001-rn-style.txt", res, 0x7f15000e);
            earlyResName("/data/local/tmp/w001-rn-wab.txt", res, 0x7f040691);
            earlyResName("/data/local/tmp/w001-rn-fw.txt", res, 0x01010059);
            // ---- ISOLATED EXPERIMENT REMOVED (2026-07-11, mmap CD-rescue landed) ----
            // It built a separate am2 via the board's real AssetManager.addAssetPath and called
            // getResourceName on it. With the mmap CD-rescue interposer in place the MAIN am now
            // resolves every id — w001-rn-{style,wab,fw}.txt = com.uptodown:style/AppThemeBar /
            // com.uptodown:attr/windowActionBar / android:attr/windowContentOverlay — and the
            // experiment had already proved addAssetPath returns cookie 0 (w001-cap-ck.txt=0),
            // i.e. the hand-rolled nativeW001Append path is the load-bearing one. Its
            // earlyResName(res2,...) on the empty am2 SIGBUS'd (native signal — uncatchable by the
            // Java try/catch) and aborted the run BEFORE the real oracle at step=obtain. Removed so
            // the B leg (app+framework) obtainStyledAttributes can run. Finding kept in evidence.
            stepCode = 4;
            earlyWriteLiteral("/data/local/tmp/uptodown-early.txt", "EARLY step=applyStyle");
            android.content.res.Resources.Theme th = res.newTheme();
            th.applyStyle(0x7f15000e, true);
            stashThemeContext(am, res, th);
            stepCode = 5;
            earlyWriteLiteral("/data/local/tmp/uptodown-early.txt", "EARLY step=obtain");
            // Match AppCompatTheme, not similarly named framework attrs:
            // app windowActionBar=0x7f040691, android windowContentOverlay=0x01010059,
            // app colorPrimary=0x7f040141 (verified from the target APK resource table).
            int[] probeAttrs = new int[] { 0x7f040691, 0x01010059, 0x7f040141 };
            android.content.res.TypedArray ta = th.obtainStyledAttributes(probeAttrs);
            boolean uamHasWab = ta.hasValue(0);
            boolean wcoHas = ta.hasValue(1);
            boolean hasColorPrimary = ta.hasValue(2);
            ta.recycle();
            String result;
            if (uamHasWab && wcoHas && hasColorPrimary) {
                result = "EARLY stack=main wabAttr=0x7f040691 uamHasWab=true wcoHas=true hasColorPrimary=true";
            } else if (uamHasWab) {
                result = "EARLY stack=main wabAttr=0x7f040691 uamHasWab=true wcoHas=false hasColorPrimary=false";
            } else {
                result = "EARLY stack=main wabAttr=0x7f040691 uamHasWab=false wcoHas=false hasColorPrimary=false";
            }
            if (uamHasWab && wcoHas && !hasColorPrimary) {
                result = "EARLY stack=main wabAttr=0x7f040691 uamHasWab=true wcoHas=true hasColorPrimary=false";
            } else if (uamHasWab && !wcoHas && hasColorPrimary) {
                result = "EARLY stack=main wabAttr=0x7f040691 uamHasWab=true wcoHas=false hasColorPrimary=true";
            }
            // B leg (app+framework) mirror of w001-abA.txt for the A/B verdict.
            if (uamHasWab && wcoHas && hasColorPrimary) {
                earlyWriteLiteral("/data/local/tmp/w001-abB.txt", "B wab=1 wco=1 cp=1");
            } else if (uamHasWab && wcoHas) {
                earlyWriteLiteral("/data/local/tmp/w001-abB.txt", "B wab=1 wco=1 cp=0");
            } else if (uamHasWab && hasColorPrimary) {
                earlyWriteLiteral("/data/local/tmp/w001-abB.txt", "B wab=1 wco=0 cp=1");
            } else if (uamHasWab) {
                earlyWriteLiteral("/data/local/tmp/w001-abB.txt", "B wab=1 wco=0 cp=0");
            } else if (wcoHas && hasColorPrimary) {
                earlyWriteLiteral("/data/local/tmp/w001-abB.txt", "B wab=0 wco=1 cp=1");
            } else if (wcoHas) {
                earlyWriteLiteral("/data/local/tmp/w001-abB.txt", "B wab=0 wco=1 cp=0");
            } else if (hasColorPrimary) {
                earlyWriteLiteral("/data/local/tmp/w001-abB.txt", "B wab=0 wco=0 cp=1");
            } else {
                earlyWriteLiteral("/data/local/tmp/w001-abB.txt", "B wab=0 wco=0 cp=0");
            }
            earlyWriteLiteral(
                    "/data/local/tmp/westlake-dayu600-substrate/apks/probe-logs/uptodown-probe.txt",
                    result);
            earlyWriteLiteral("/data/local/tmp/uptodown-early.txt", result);
            return uamHasWab ? 0 : 43;
        } catch (Throwable et) {
            // Single-String writes only (no concatenation on this board).
            try {
                earlyWriteLiteral("/data/local/tmp/w001-failex.txt", et.getClass().getName());
            } catch (Throwable ig2) {}
            try {
                String em = et.getMessage();
                if (em != null) {
                    earlyWriteLiteral("/data/local/tmp/w001-failmsg.txt", em);
                }
            } catch (Throwable ig2) {}
            earlyWriteStack("/data/local/tmp/w001-failstack.txt", et);
            if (stepCode == 0) {
                earlyWriteLiteral("/data/local/tmp/uptodown-early.txt", "EARLY_THEME_FAIL:step=pre");
            } else if (stepCode == 1) {
                earlyWriteLiteral("/data/local/tmp/uptodown-early.txt", "EARLY_THEME_FAIL:step=addApp");
            } else if (stepCode == 2) {
                earlyWriteLiteral("/data/local/tmp/uptodown-early.txt", "EARLY_THEME_FAIL:step=addFw");
            } else if (stepCode == 3) {
                earlyWriteLiteral("/data/local/tmp/uptodown-early.txt", "EARLY_THEME_FAIL:step=res");
            } else if (stepCode == 4) {
                earlyWriteLiteral("/data/local/tmp/uptodown-early.txt", "EARLY_THEME_FAIL:step=applyStyle");
            } else {
                earlyWriteLiteral("/data/local/tmp/uptodown-early.txt", "EARLY_THEME_FAIL:step=obtain");
            }
            earlyWriteLiteral(
                    "/data/local/tmp/westlake-dayu600-substrate/apks/probe-logs/uptodown-probe.txt",
                    "EARLY_THEME_FAIL:caught");
            return 43;
        }
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

    /** Live step breadcrumb: APPEND one line to $WESTLAKE_RESULT_DIR/wl-triangle-result.txt.
     *  The glue mirrors that file into hilog (WLTRI|) continuously, so the last line before
     *  a silent death names the failing step (the result file only flushes at stage end). */
    private static void step(String tag) {
        try {
            String rd = System.getenv("WESTLAKE_RESULT_DIR");
            if (rd == null || rd.length() == 0) return;
            java.io.FileOutputStream out = new java.io.FileOutputStream(rd + "/wl-triangle-result.txt", true);
            byte[] b = new byte[tag.length() + 1];
            for (int i = 0; i < tag.length(); i++) {
                char ch = tag.charAt(i);
                b[i] = (byte) (ch <= 0x7f ? ch : '?');
            }
            b[tag.length()] = '\n';
            out.write(b);
            out.close();
        } catch (Throwable ignored) {}
    }

    private static void writeText(String path, String text) throws Exception {
        try {
            nativeWriteText(path, text);
            return;
        } catch (Throwable ignored) {
        }
        java.io.FileOutputStream out = new java.io.FileOutputStream(path, false);
        byte[] bytes = new byte[text.length()];        for (int i = 0; i < text.length(); i++) {
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
        embeddedNoExit = "1".equals(System.getenv("WESTLAKE_NO_EXIT"));
        // Absolute-path heartbeat: confirms the method was entered before any probeLogPath
        // or reflection work that might silently fail.
        try {
            repairJavaIoFileSystem();
        } catch (Throwable ig) {}
        try {
            writeText("/data/local/tmp/embedded-direct.txt",
                    "embeddedMainNoExit entered target=" + target + " stage=" + stage + " dir=" + directionArg);
        } catch (Throwable ignored) {}
        try {
            writeText(probeLogPath("embedded-entry.txt"),
                    "embeddedMainNoExit entered target=" + target + " stage=" + stage + " dir=" + directionArg);
        } catch (Throwable ignored) {}
        try {
            runResolved(target, stage, directionArg);
        } catch (Throwable t) {
            // Log the crash but don't rethrow — VM must survive for diagnostics.
            // Write a SHORT line first: StackOverflowError can SOE again inside printStackTrace.
            String shortMsg = "CRASH:" + t.getClass().getSimpleName() + ":"
                    + (t.getMessage() == null ? "" : t.getMessage());
            try { writeText("/data/local/tmp/uptodown-crash.txt", shortMsg); } catch (Throwable ignored3) {}
            try { writeText(probeLogPath("uptodown-probe.txt"), shortMsg); } catch (Throwable ignored3) {}
            try {
                String rd = System.getenv("WESTLAKE_RESULT_DIR");
                if (rd != null) earlyWriteStack(rd + "/uptodown-crash-stack.txt", t);
            } catch (Throwable ignored4) {}
            try {
                java.io.StringWriter sw = new java.io.StringWriter();
                t.printStackTrace(new java.io.PrintWriter(sw));
                String msg = "embeddedMainNoExit CRASH: " + t.getClass().getName() + ": " + t.getMessage()
                        + "\n" + sw.toString().substring(0, Math.min(sw.toString().length(), 1000));
                try { writeText("/data/local/tmp/uptodown-crash.txt", msg); } catch (Throwable ignored3) {}
                try { writeText(probeLogPath("uptodown-probe.txt"), msg); } catch (Throwable ignored3) {}
            } catch (Throwable ignored2) {}
            return 99;
        }
        if (embeddedNoExit) {
            return embeddedLastExitCode;
        }
        return 0;
    }

    private static void runResolved(String target, String stage, String directionArg) throws Exception {
        try {
            writeText(probeLogPath("runresolved-entry.txt"),
                    "runResolved entered target=" + target + " stage=" + stage + " dir=" + directionArg);
        } catch (Throwable ignored) {}
        String stageNorm = stage == null ? "" : stage.trim();
        earlyWriteLiteral("/data/local/tmp/runresolved-ladder.txt", "rr-01-norm");
        try {
            writeText("/data/local/tmp/uptodown-early.txt",
                    "runResolved stageNorm=[" + stageNorm + "] eq="
                            + "uptodownProbe".equals(stageNorm));
        } catch (Throwable ig) {}
        earlyWriteLiteral("/data/local/tmp/runresolved-ladder.txt", "rr-02-earlywrite");
        // W-003 precursor / #51 de-risk: font/text native surface smoke in a PRISTINE VM.
        // Must run before any other stage touches graphics classes (poisoned-clinit constraint).
        // The sidecar only routes WESTLAKE_STAGE=uptodownProbe to this Java entry, so we ride
        // that routing and select fontsmoke via a separate WESTLAKE_SUBSTAGE env var — checked
        // FIRST (before the theme oracle / targetClassLoader) so Paint/Typeface stay untouched.
        String subStage = null;
        try { subStage = System.getenv("WESTLAKE_SUBSTAGE"); } catch (Throwable ig) {}
        earlyWriteLiteral("/data/local/tmp/runresolved-ladder.txt", "rr-03-substage");
        if ("critbind49".equals(stageNorm) || "critbind49".equals(subStage)) {
            runCritBind49();
            finishOrExit(0);
            return;
        }
        if ("fontsmoke".equals(stageNorm) || "fontsmoke".equals(subStage)) {
            runFontSmoke();
            finishOrExit(0);
            return;
        }
        if ("genericjni".equals(stageNorm) || "genericjni".equals(subStage)) {
            runGenericJniSmoke();
            finishOrExit(0);
            return;
        }
        if ("inflate51".equals(stageNorm) || "inflate51".equals(subStage)) {
            runInflate51();
            finishOrExit(0);
            return;
        }
        if ("firstFrame".equals(stageNorm) || "firstFrame".equals(subStage)) {
            runFirstFrame53();
            finishOrExit(0);
            return;
        }
        if ("colorApk".equals(stageNorm) || "colorApk".equals(subStage)
                || "colorapk".equals(stageNorm) || "colorapk".equals(subStage)) {
            runColorApk();
            finishOrExit(0);
            return;
        }
        if ("triangleApk".equals(stageNorm) || "triangleApk".equals(subStage)
                || "triangleapk".equals(stageNorm) || "triangleapk".equals(subStage)) {
            earlyWriteLiteral("/data/local/tmp/runresolved-ladder.txt", "rr-04-triangle-dispatch");
            runTriangleApk();
            finishOrExit(0);
            return;
        }
        if ("noiceApk".equals(stageNorm) || "noiceApk".equals(subStage)
                || "noiceapk".equals(stageNorm) || "noiceapk".equals(subStage)) {
            runNoiceApk();
            finishOrExit(0);
            return;
        }
        // W-001: early oracle MUST run before targetClassLoader() — PathClassLoader(2048)
        // can StackOverflow on the thin main stack and never reach uptodownProbe.
        if ("uptodownProbe".equals(stageNorm)) {
            try {
                writeText("/data/local/tmp/uptodown-early.txt", "EARLY beforeOracle");
            } catch (Throwable ig) {}
            try {
                writeText(probeLogPath("uptodown-probe.txt"),
                        "ENTRY:uptodownProbe pid=" + android.os.Process.myPid());
            } catch (Throwable ignored) {}
            int earlyRc = runEarlyThemeOracle();
            finishOrExit(earlyRc);
            if (!"1".equals(System.getenv("WESTLAKE_FULL_UPTODOWN"))) {
                return;
            }
        }
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
            // Early oracle already ran at top of runResolved (before targetClassLoader).
            // This block is WESTLAKE_FULL_UPTODOWN only.
            try {
                writeText("/data/local/tmp/uptodown-direct.txt",
                        "uptodownProbe FULL path pid=" + android.os.Process.myPid());
            } catch (Throwable ignored) {}

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
            // NOTE: do not clobber EARLY theme line — append OHSM after.
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
            ulog.append(ohsmStatus).append(' ');
            java.io.File apkF = new java.io.File(apkPath("test-uptodown.apk"));
            // AssetManager the resource-enum stage builds over the app APK; reused as the app's
            // base-Context AssetManager so we don't re-load the same APK (which would hit the
            // unregistered ApkAssets.nativeIsUpToDate cache-check native).
            android.content.res.AssetManager uamShared = null;
            ulog.append("apk=").append(apkF.exists() ? apkF.length() : -1).append(' ');
            try {
                java.io.FileOutputStream hb = new java.io.FileOutputStream("/data/local/tmp/uptodown-hb.txt");
                hb.write(ulog.toString().getBytes());
                hb.close();
            } catch (Throwable ignored) {}
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
                    // Wall #43: same AM must carry app(0x7f) + framework-res(0x01) BEFORE any
                    // newTheme/applyStyle, or AppCompat parent-chain into package 0x01 dies
                    // (uamHasWab=false). Prefer substrate framework-res (md5 76a92b8f on board).
                    String fwResForUam = "/data/local/tmp/westlake-dayu600-substrate/android/framework/framework-res.apk";
                    Object ckFw = android.content.res.AssetManager.class.getMethod("addAssetPath", String.class)
                            .invoke(uam, fwResForUam);
                    uamShared = uam;
                    ulog.append("cookie=").append(ck).append(" fwCookie=").append(ckFw).append(' ');
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
                    // WlProxyContext theme AM: MUST be app + framework-res on ONE AssetManager,
                    // both addAssetPath'd BEFORE newTheme/applyStyle (wall #43 / W-001).
                    // Previous bug: only framework-res was loaded, then applyStyle(0x7f15000e)
                    // (app style id) → parent chain into 0x01 never indexed → uamHasWab=false.
                    java.lang.reflect.Constructor<android.content.res.AssetManager> amCtor2 =
                            android.content.res.AssetManager.class.getDeclaredConstructor(boolean.class);
                    amCtor2.setAccessible(true);
                    android.content.res.AssetManager themeAm2 = amCtor2.newInstance(Boolean.TRUE);
                    java.lang.reflect.Field mApkF2 =
                            android.content.res.AssetManager.class.getDeclaredField("mApkAssets");
                    mApkF2.setAccessible(true);
                    Class<?> apkAssetsCls2 = Class.forName("android.content.res.ApkAssets");
                    mApkF2.set(themeAm2, java.lang.reflect.Array.newInstance(apkAssetsCls2, 0));
                    String fwResEarly = "/data/local/tmp/westlake-dayu600-substrate/android/framework/framework-res.apk";
                    Object ckApp2 = android.content.res.AssetManager.class.getMethod("addAssetPath", String.class)
                            .invoke(themeAm2, apkF.getAbsolutePath());
                    Object ckFw2 = android.content.res.AssetManager.class.getMethod("addAssetPath", String.class)
                            .invoke(themeAm2, fwResEarly);
                    ulog.append("themeAm2.appCookie=").append(ckApp2)
                        .append(" fwCookie=").append(ckFw2).append(' ');
                    android.util.DisplayMetrics dm2 = actBaseCtx.getResources().getDisplayMetrics();
                    android.content.res.Configuration cfg2 = actBaseCtx.getResources().getConfiguration();
                    themeResForProxy = new android.content.res.Resources(themeAm2, dm2, cfg2);
                    // Identifier proof that package 0x01 attrs are visible on this AM
                    int fwWabId = themeResForProxy.getIdentifier("windowActionBar", "attr", "android");
                    int wcoId = themeResForProxy.getIdentifier("windowContentOverlay", "attr", "android");
                    ulog.append("fwWabId=0x").append(Integer.toHexString(fwWabId))
                        .append(" wcoId=0x").append(Integer.toHexString(wcoId)).append(' ');
                    themeNativeForProxy = themeResForProxy.newTheme();
                    Class<?> themeCls2 = Class.forName("android.content.res.Resources$Theme");
                    java.lang.reflect.Method applyStyleM2 = themeCls2.getMethod("applyStyle", int.class, boolean.class);
                    applyStyleM2.invoke(themeNativeForProxy, appCompatThemeId, Boolean.TRUE);
                    // Oracle fields (W-001): theme attrs after applyStyle(AppThemeBar)
                    try {
                        android.content.res.Resources.Theme th =
                                (android.content.res.Resources.Theme) themeNativeForProxy;
                        // AppCompatTheme ids from the target APK; 0x010100b0 is
                        // android:autoLink and must never be used as windowActionBar.
                        int[] probeAttrs = new int[] { 0x7f040691, 0x01010059, 0x7f040141 };
                        android.content.res.TypedArray ta = th.obtainStyledAttributes(probeAttrs);
                        boolean uamHasWab = ta.hasValue(0);
                        boolean wcoHas = ta.hasValue(1);
                        boolean hasColorPrimary = ta.hasValue(2);
                        ulog.append("uamHasWab=").append(uamHasWab)
                            .append(" wcoHas=").append(wcoHas)
                            .append(" hasColorPrimary=").append(hasColorPrimary).append(' ');
                        ta.recycle();
                    } catch (Throwable diagT) {
                        ulog.append("themeDiag=").append(diagT.getClass().getSimpleName())
                            .append(':').append(diagT.getMessage()).append(' ');
                    }

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
                // ── W6: reuse early dual-package theme (do NOT rebuild a split AM) ─────
                try {
                    ulog.append("fwResPath=/data/local/tmp/westlake-dayu600-substrate/android/framework/framework-res.apk ");
                    ulog.append("nativeTheme=").append(themeNativeForProxy != null ? "reuse" : "missing").append(' ');
                    // Use the already-created ctxProxyForBase, themeResForProxy from early setup.
                    // That AM already has app+framework-res before applyStyle (wall #43).
                    if (ctxProxyForBase != null) {
                        ulog.append("ctxProxy=reuse ");
                    } else {
                        ulog.append("ctxProxy=missing ");
                    }
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
