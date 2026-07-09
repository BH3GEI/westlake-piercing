package com.westlake.shortytest;

import dalvik.annotation.optimization.CriticalNative;
import dalvik.annotation.optimization.FastNative;

/**
 * B 的 InterpJni 通用 shorty 派发器回归集 —— Agent-A。
 * 覆盖三调用约定 (Critical/Fast/normal) × 最刁签名(19参、对象数组、float/int 混排、
 * 寄存器溢出、long/宽签名)。每个 native 用 sentinel 参数;C 侧逐参核验并回状态。
 *
 * 用法(B 在大板 imageless ART 里):
 *   1) System.load 编好的 libshortytest.so(它 JNI_OnLoad 里 RegisterNatives 注册下列 native,
 *      Critical 的 fnPtr 无 env/clazz、Fast 的有 env 无 clazz、normal 有 env+clazz)。
 *   2) new ShortyDispatchTest().runAll() —— 全绿即派发器三约定 × 各签名全正确。
 *   3) 任一返回非 0 = 该参数位 marshalling 错(返回值编码了第一个错位的参数序号,见 C 注释)。
 *
 * Sentinel 约定(C 侧同款):第 k 个参数(从1起)
 *   jint    = 0x1000_0000 | k
 *   jlong   = 0x2000_0000_0000_0000L | k
 *   jfloat  = 1000.0f + k
 *   jdouble = 2000.0  + k
 *   对象数组:length == 40+k,且 [0] 是 Integer(0x3000_0000|k)
 * C 侧核验每个参数 == 期望 sentinel,首个不符就返回 k(否则返回 0)。
 */
public class ShortyDispatchTest {

    // ---- @CriticalNative:无 env、无 clazz,只压参数 ----
    // 关键:和 Paint.nSetFlags 同 shorty VJI,但 critical。派发器给它压 env/clazz 就崩。
    @CriticalNative static native int critVJI(long a1, int a2);                 // shorty VJI(此处 I 返回便于回状态)
    @CriticalNative static native int critManyIJ(long a1, int a2, int a3, int a4, int a5,
                                                 int a6, int a7, long a8, int a9);   // 9 参,x 寄存器溢出到栈
    @CriticalNative static native int critFloatMix(long a1, float a2, int a3, float a4,
                                                   int a5, float a6, long a7);        // float/int 混排(v 与 x 寄存器分流)
    @CriticalNative static native int critWide(long a1, long a2, long a3, long a4, long a5,
                                               long a6, long a7, int a8, long a9);     // 对应图形 VJJJJJJJIJ

    // ---- @FastNative:有 env、无 clazz ----
    @FastNative static native int fastVJI(long a1, int a2);
    @FastNative static native int fastFloatHeavy(long a1, float a2, float a3, float a4, float a5,
                                                 float a6, float a7, float a8, long a9);  // 图形 VJFFFFFFFFJ 类:v 寄存器溢出

    // ---- normal:有 env + clazz ----
    static native int normVJI(long a1, int a2);
    // 最刁:MotionEvent.nativeInitialize 19 参(含 2 对象数组),normal
    static native long nativeInit19(long a1, int a2, int a3, int a4, int a5, int a6, int a7,
                                    int a8, int a9, int a10, float a11, float a12, float a13,
                                    float a14, long a15, long a16, int a17,
                                    Object[] a18, Object[] a19);
    static native int normObjArr(long a1, Object[] a2, int a3);                 // 对象数组 + AddLocalReference
    static native int normFloatIntWeave(long a1, int a2, float a3, int a4, float a5,
                                        int a6, float a7, double a8, int a9);   // float/int/double 混排

    // ---- 驱动 ----
    public int runAll() {
        int fails = 0;
        fails += check("critVJI",        critVJI(L(1), I(2)), 0);
        fails += check("critManyIJ",     critManyIJ(L(1), I(2), I(3), I(4), I(5), I(6), I(7), L(8), I(9)), 0);
        fails += check("critFloatMix",   critFloatMix(L(1), F(2), I(3), F(4), I(5), F(6), L(7)), 0);
        fails += check("critWide",       critWide(L(1), L(2), L(3), L(4), L(5), L(6), L(7), I(8), L(9)), 0);
        fails += check("fastVJI",        fastVJI(L(1), I(2)), 0);
        fails += check("fastFloatHeavy", fastFloatHeavy(L(1), F(2), F(3), F(4), F(5), F(6), F(7), F(8), L(9)), 0);
        fails += check("normVJI",        normVJI(L(1), I(2)), 0);
        long r19 = nativeInit19(L(1), I(2), I(3), I(4), I(5), I(6), I(7), I(8), I(9), I(10),
                                F(11), F(12), F(13), F(14), L(15), L(16), I(17), objArr(18), objArr(19));
        fails += check("nativeInit19",   (int)(r19), 0);       // C 侧回 0=全对,否则第一个错位序号
        fails += check("normObjArr",     normObjArr(L(1), objArr(2), I(3)), 0);
        fails += check("normFloatIntWeave", normFloatIntWeave(L(1), I(2), F(3), I(4), F(5), I(6), F(7), D(8), I(9)), 0);
        System.out.println(fails == 0 ? "SHORTY-DISPATCH: ALL GREEN" : ("SHORTY-DISPATCH: " + fails + " FAILED"));
        return fails;
    }

    static long  L(int k) { return 0x2000000000000000L | k; }
    static int   I(int k) { return 0x10000000 | k; }
    static float F(int k) { return 1000.0f + k; }
    static double D(int k) { return 2000.0 + k; }
    static Object[] objArr(int k) {
        Object[] a = new Object[40 + k];
        a[0] = Integer.valueOf(0x30000000 | k);
        return a;
    }
    static int check(String name, int got, int want) {
        if (got != want) { System.out.println("  FAIL " + name + " -> bad arg#" + got); return 1; }
        System.out.println("  ok   " + name);
        return 0;
    }
}
