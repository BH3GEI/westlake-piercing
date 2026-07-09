package adapter.window;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/**
 * WestlakeInputAttach — Agent-D. Makes onClick actually fire under Strategy B.
 *
 * THE PROBLEM (notes/mattachinfo-onclick-BLOCKER.md): Strategy B never creates a
 * ViewRootImpl, so the whole View tree has mAttachInfo==null. In that state
 * View.post(mPerformClick) (how ACTION_UP triggers a click) defers to the View's
 * RunQueue and returns true, so the synchronous performClickInternal() fallback
 * never runs and the RunQueue never drains -> onClick silently never fires.
 *
 * THE FIX: give the tree a minimal fake AttachInfo whose mHandler is the UI
 * Looper handler, and — critically — with mHardwareAccelerated=FALSE so that
 *   drawingWithRenderNode = mAttachInfo!=null && mAttachInfo.mHardwareAccelerated && hwCanvas
 * stays false and Agent-C's software-flatten capture is unaffected. Then
 * dispatchAttachedToWindow the tree so post()/postDelayed() use the real handler
 * and PerformClick/CheckForTap run on the UI Looper.
 *
 * VERSION-RESILIENT: AttachInfo's constructor and dispatchAttachedToWindow are
 * hidden/package-private and their signatures drift across releases, so this
 * introspects the constructor at runtime (fills Handler/Context slots by type,
 * nulls the rest) instead of hardcoding one signature. Confirm against the A16
 * (8c377c13) baksmali if anything below throws.
 *
 * OWNERSHIP: this is rendering/window-adjacent (it attaches C's DecorView).
 * Preferred: Agent-C calls attachForInput(decor, WestlakeUpscreen.uiHandler())
 * inside show() after layout, before/after record. Exposed as a static so either
 * side can call it. Idempotent-ish: only attaches if currently detached.
 */
public final class WestlakeInputAttach {
    private static final String TAG = "WLInputAttach";
    private WestlakeInputAttach() {}

    /**
     * Attach `decor` (and its whole subtree) with a fake AttachInfo bound to
     * `uiHandler` and mHardwareAccelerated=false. Returns true on success.
     * Must run on the UI (show()) thread.
     */
    public static boolean attachForInput(View decor, Handler uiHandler) {
        if (decor == null || uiHandler == null) { Log.e(TAG, "null decor/handler"); return false; }
        try {
            // Already attached? (mAttachInfo != null) -> nothing to do.
            Field fAttach = View.class.getDeclaredField("mAttachInfo");
            fAttach.setAccessible(true);
            if (fAttach.get(decor) != null) { Log.i(TAG, "already attached"); return true; }

            Class<?> aiCls = Class.forName("android.view.View$AttachInfo");
            Object attachInfo = newAttachInfo(aiCls, decor.getContext(), uiHandler);
            if (attachInfo == null) return false;

            // Force software path so Agent-C's flatten capture is preserved.
            setBoolIfPresent(aiCls, attachInfo, "mHardwareAccelerated", false);
            setBoolIfPresent(aiCls, attachInfo, "mHardwareAccelerationRequested", false);
            // Ensure the handler slot is our UI handler even if the ctor set it differently.
            setFieldIfType(aiCls, attachInfo, Handler.class, uiHandler);

            // decor.dispatchAttachedToWindow(attachInfo, View.VISIBLE)
            Method dispatch = View.class.getDeclaredMethod(
                    "dispatchAttachedToWindow", aiCls, int.class);
            dispatch.setAccessible(true);
            dispatch.invoke(decor, attachInfo, View.VISIBLE);

            Object check = fAttach.get(decor);
            Log.i(TAG, "attachForInput done; mAttachInfo=" + (check != null ? "set" : "STILL NULL"));
            return check != null;
        } catch (Throwable t) {
            Log.e(TAG, "attachForInput failed (confirm AttachInfo ctor/dispatch sig vs A16 baksmali)", t);
            return false;
        }
    }

    /**
     * SAFER variant, recommended as the pure-color milestone DEFAULT: set the
     * mAttachInfo field recursively on the whole tree WITHOUT calling
     * dispatchAttachedToWindow. This is the minimum needed for View.post() (and
     * thus PerformClick) to route through the real UI handler, and it avoids the
     * onAttachedToWindow side-effects (which can deref the null mViewRootImpl/
     * mSession on complex views). Use attachForInput() instead only if a view
     * genuinely needs onAttachedToWindow to have run.
     *
     * Same rendering-safety guarantee: mHardwareAccelerated=false keeps
     * drawingWithRenderNode false, so Agent-C's software-flatten capture is
     * unaffected. Must run on the UI (show()) thread.
     */
    public static boolean attachForInputMinimal(View decor, Handler uiHandler) {
        if (decor == null || uiHandler == null) { Log.e(TAG, "null decor/handler"); return false; }
        try {
            Class<?> aiCls = Class.forName("android.view.View$AttachInfo");
            Object attachInfo = newAttachInfo(aiCls, decor.getContext(), uiHandler);
            if (attachInfo == null) return false;
            setBoolIfPresent(aiCls, attachInfo, "mHardwareAccelerated", false);
            setBoolIfPresent(aiCls, attachInfo, "mHardwareAccelerationRequested", false);
            setFieldIfType(aiCls, attachInfo, Handler.class, uiHandler);

            Field fAttach = View.class.getDeclaredField("mAttachInfo");
            fAttach.setAccessible(true);
            int[] count = {0};
            setAttachInfoRecursive(decor, fAttach, attachInfo, count);
            Log.i(TAG, "attachForInputMinimal: set mAttachInfo on " + count[0] + " views");
            return count[0] > 0;
        } catch (Throwable t) {
            Log.e(TAG, "attachForInputMinimal failed (confirm AttachInfo ctor vs A16 baksmali)", t);
            return false;
        }
    }

    private static void setAttachInfoRecursive(View v, Field fAttach, Object info, int[] count) {
        try { fAttach.set(v, info); count[0]++; } catch (Throwable ignore) {}
        if (v instanceof ViewGroup) {
            ViewGroup g = (ViewGroup) v;
            for (int i = 0, n = g.getChildCount(); i < n; i++) {
                View c = g.getChildAt(i);
                if (c != null) setAttachInfoRecursive(c, fAttach, info, count);
            }
        }
    }

    /** Reflectively build an AttachInfo, adapting to whatever constructor exists. */
    private static Object newAttachInfo(Class<?> aiCls, Context ctx, Handler h) throws Exception {
        Constructor<?>[] ctors = aiCls.getDeclaredConstructors();
        // Prefer the richest constructor (most params) — that's the real one.
        Constructor<?> best = null;
        for (Constructor<?> c : ctors) {
            if (best == null || c.getParameterTypes().length > best.getParameterTypes().length) best = c;
        }
        if (best == null) { Log.e(TAG, "no AttachInfo constructor"); return null; }
        best.setAccessible(true);
        Class<?>[] pts = best.getParameterTypes();
        Object[] args = new Object[pts.length];
        for (int i = 0; i < pts.length; i++) {
            if (pts[i].isAssignableFrom(Handler.class)) args[i] = h;
            else if (pts[i].isAssignableFrom(Context.class)) args[i] = ctx;
            else if (pts[i].isPrimitive()) args[i] = defaultPrimitive(pts[i]);
            else args[i] = null;   // IWindowSession/IWindow/Display/ViewRootImpl/Callbacks -> null
        }
        try {
            return best.newInstance(args);
        } catch (Throwable t) {
            Log.e(TAG, "AttachInfo ctor(" + pts.length + " args) threw; a null arg is likely deref'd "
                    + "on this build — supply a stub for it", t);
            return null;
        }
    }

    private static Object defaultPrimitive(Class<?> p) {
        if (p == boolean.class) return Boolean.FALSE;
        if (p == int.class) return Integer.valueOf(0);
        if (p == long.class) return Long.valueOf(0L);
        if (p == float.class) return Float.valueOf(0f);
        if (p == double.class) return Double.valueOf(0d);
        if (p == short.class) return Short.valueOf((short) 0);
        if (p == byte.class) return Byte.valueOf((byte) 0);
        if (p == char.class) return Character.valueOf('\0');
        return null;
    }

    private static void setBoolIfPresent(Class<?> cls, Object obj, String name, boolean val) {
        try { Field f = cls.getDeclaredField(name); f.setAccessible(true); f.setBoolean(obj, val); }
        catch (Throwable ignore) { /* field renamed/absent on this build */ }
    }

    private static void setFieldIfType(Class<?> cls, Object obj, Class<?> type, Object val) {
        for (Field f : cls.getDeclaredFields()) {
            if (f.getType() == type) {
                try { f.setAccessible(true); f.set(obj, val); return; } catch (Throwable ignore) {}
            }
        }
    }
}
