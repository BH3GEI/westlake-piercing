import com.android.tools.smali.dexlib2.Opcode;
import com.android.tools.smali.dexlib2.Opcodes;
import com.android.tools.smali.dexlib2.DexFileFactory;
import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile;
import com.android.tools.smali.dexlib2.iface.*;
import com.android.tools.smali.dexlib2.iface.instruction.Instruction;
import com.android.tools.smali.dexlib2.immutable.*;
import com.android.tools.smali.dexlib2.immutable.instruction.*;
import com.android.tools.smali.dexlib2.immutable.reference.*;
import com.android.tools.smali.dexlib2.rewriter.*;
import com.android.tools.smali.dexlib2.writer.pool.DexPool;

import java.util.*;

// args: in out Lclass;|method|libraryName
// Inserts System.loadLibrary(name) at the very beginning of the named method body.
public class PatchLoadLibrary {
    static int patched = 0;
    public static void main(String[] args) throws Exception {
        String in = args[0], out = args[1];
        if (args.length < 3) throw new RuntimeException("Usage: PatchLoadLibrary in.dex out.dex Lclass;|method|libName");
        String[] parts = args[2].split("\\|", -1);
        String targetClass = parts[0];
        String targetMethod = parts.length > 1 ? parts[1] : "";
        String libName = parts.length > 2 ? parts[2] : "";

        DexBackedDexFile dex = DexFileFactory.loadDexFile(in, Opcodes.forApi(34));
        DexRewriter rw = new DexRewriter(new RewriterModule() {
            @Override public Rewriter<Method> getMethodRewriter(Rewriters rewriters) {
                return new MethodRewriter(rewriters) {
                    @Override public Method rewrite(Method m) {
                        String key = m.getDefiningClass() + "|" + m.getName();
                        if (key.equals(targetClass + "|" + targetMethod) && m.getImplementation() != null) {
                            MethodImplementation orig = m.getImplementation();
                            // Allocate one extra register for the scratch string ref.
                            int regs = orig.getRegisterCount() + 1;
                            int scratch = orig.getRegisterCount(); // 0-indexed; highest original reg.
                            List<Instruction> ins = new ArrayList<>();
                            // const-string vX, "libName"
                            ins.add(new ImmutableInstruction21c(Opcode.CONST_STRING, scratch,
                                    new ImmutableStringReference(libName)));
                            // invoke-static/range {vscratch}, System.loadLibrary(Ljava/lang/String;)V
                            // Format 3rc requires INVOKE_STATIC_RANGE opcode, not plain INVOKE_STATIC.
                            ins.add(new ImmutableInstruction3rc(Opcode.INVOKE_STATIC_RANGE, scratch, 1,
                                    new ImmutableMethodReference("Ljava/lang/System;", "loadLibrary",
                                        Collections.<CharSequence>singletonList("Ljava/lang/String;"), "V")));
                            // Append the original instructions unchanged.
                            for (Instruction i : orig.getInstructions()) ins.add(i);
                            patched++;
                            return new ImmutableMethod(m.getDefiningClass(), m.getName(),
                                    m.getParameters(), m.getReturnType(), m.getAccessFlags(),
                                    m.getAnnotations(), m.getHiddenApiRestrictions(),
                                    new ImmutableMethodImplementation(regs, ins,
                                            orig.getTryBlocks(), orig.getDebugItems()));
                        }
                        return super.rewrite(m);
                    }
                };
            }
        });
        DexFile pd = rw.getDexFileRewriter().rewrite(dex);
        DexPool.writeTo(out, pd);
        System.out.println("[loadlib] wrote " + out + " patched=" + patched);
        if (patched != 1) throw new RuntimeException("expected 1 got " + patched);
    }
}
