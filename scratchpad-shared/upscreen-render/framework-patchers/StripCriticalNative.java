import com.android.tools.smali.dexlib2.DexFileFactory;
import com.android.tools.smali.dexlib2.Opcodes;
import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile;
import com.android.tools.smali.dexlib2.iface.Annotation;
import com.android.tools.smali.dexlib2.iface.DexFile;
import com.android.tools.smali.dexlib2.iface.Method;
import com.android.tools.smali.dexlib2.immutable.ImmutableAnnotation;
import com.android.tools.smali.dexlib2.immutable.ImmutableMethod;
import com.android.tools.smali.dexlib2.rewriter.*;
import com.android.tools.smali.dexlib2.writer.pool.DexPool;

import java.util.*;

/**
 * StripCriticalNative — Agent-C helper for the libhwui-adapter CriticalNative mismatch.
 *
 * Problem: B's framework.jar (A16 Baklava, md5 8c377c13) marks many graphics natives
 * (e.g. Paint.nSetFlags/nGetFlags) with @CriticalNative. Agent-C's libhwui-adapter.so
 * was built from AOSP-15 r9 registrar tables that register those methods with plain
 * JNI signatures (no "!" prefix). RegisterNatives therefore fails to bind, and ART
 * falls back to Java_android_graphics_* names -> ULE.
 *
 * This patcher removes the @CriticalNative annotation from selected methods so the
 * plain-signature registration in libhwui-adapter matches.
 *
 * Usage:
 *   java StripCriticalNative in.dex out.dex Lclass;|methodName [Lclass;|methodName ...]
 *   java StripCriticalNative in.dex out.dex --class-prefix Landroid/graphics/ ...
 */
public class StripCriticalNative {
    static final String CRIT = "Ldalvik/annotation/optimization/CriticalNative;";
    static int stripped = 0;
    static Set<String> targets = new HashSet<>(); // class|method
    static Set<String> classPrefixes = new HashSet<>(); // strip all @CriticalNative in classes whose descriptor starts with this

    public static void main(String[] args) throws Exception {
        if (args.length < 3) {
            System.err.println("Usage: StripCriticalNative in.dex out.dex Lclass;|method ...");
            System.err.println("       StripCriticalNative in.dex out.dex --class-prefix Landroid/graphics/ ...");
            System.exit(2);
        }
        String in = args[0], out = args[1];
        for (int i = 2; i < args.length; i++) {
            if (args[i].equals("--class-prefix")) {
                if (++i >= args.length) { System.err.println("--class-prefix needs argument"); System.exit(2); }
                classPrefixes.add(args[i]);
            } else {
                targets.add(args[i]);
            }
        }

        DexBackedDexFile dex = DexFileFactory.loadDexFile(in, Opcodes.forApi(35));
        DexRewriter rw = new DexRewriter(new RewriterModule() {
            @Override public Rewriter<Method> getMethodRewriter(Rewriters rewriters) {
                return new MethodRewriter(rewriters) {
                    @Override public Method rewrite(Method m) {
                        String cls = m.getDefiningClass();
                        String key = cls + "|" + m.getName();
                        boolean match = targets.contains(key);
                        if (!match) {
                            for (String p : classPrefixes) {
                                if (cls.startsWith(p)) { match = true; break; }
                            }
                        }
                        if (match) {
                            Set<Annotation> anns = new LinkedHashSet<>(m.getAnnotations());
                            boolean removed = anns.removeIf(a -> a.getType().equals(CRIT));
                            if (removed) {
                                stripped++;
                                StringBuilder desc = new StringBuilder("(");
                                for (CharSequence pt : m.getParameterTypes()) desc.append(pt);
                                desc.append(")").append(m.getReturnType());
                                System.out.println("[stripcrit] " + key + " " + desc);
                                return new ImmutableMethod(m.getDefiningClass(), m.getName(),
                                        m.getParameters(), m.getReturnType(), m.getAccessFlags(),
                                        anns, m.getHiddenApiRestrictions(), m.getImplementation());
                            }
                        }
                        return super.rewrite(m);
                    }
                };
            }
        });
        DexFile pd = rw.getDexFileRewriter().rewrite(dex);
        DexPool.writeTo(out, pd);
        System.out.println("[stripcrit] wrote " + out + " stripped=" + stripped);
        if (stripped < 1) throw new RuntimeException("no CriticalNative annotations stripped");
    }
}
