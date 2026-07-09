# Shorty 派发器可执行回归集 — Agent-A 给 Agent-B

B 的 InterpJni 通用 shorty 派发器一编完,用这个**一把验通过**(图形+输入 native 全通的前置保证)。

## 文件
- `ShortyDispatchTest.java` — 10 个 native,覆盖三约定 × 最刁签名(见下)。`runAll()` 全绿=派发器对。
- `shorty_dispatch_test.cpp` — C 校验侧,每个 native 逐参核验 sentinel,返回 0=全对 / 第一个错位参数序号。
- `libshortytest.so` — 已编好的 aarch64-ohos 版(21KB,参考/直接用)。语法+链接已验证。

## 覆盖的最刁点(正是派发器最易错处)
| native | 约定 | 刁在哪 |
|---|---|---|
| `critVJI` | @CriticalNative | 和 Paint.nSetFlags 同 shorty VJI;派发器给它压 env/clazz 就崩 |
| `critManyIJ` | @CriticalNative | 9 参,x 寄存器溢出到栈 |
| `critFloatMix` | @CriticalNative | float/int 混排(v 与 x 寄存器分流) |
| `critWide` | @CriticalNative | 图形 VJJJJJJJIJ 形态,多 long |
| `fastVJI` | @FastNative | **验证 Fast=env+jclass(见下纠正)** |
| `fastFloatHeavy` | @FastNative | 图形 VJFFFFFFFFJ,v 寄存器溢出 |
| `normVJI` | normal | 基线 |
| `nativeInit19` | normal | **19 参 + 2 对象数组**(=MotionEvent.nativeInitialize 形态,最刁) |
| `normObjArr` | normal | 对象数组 + AddLocalReference 生效性 |
| `normFloatIntWeave` | normal | float/int/**double** 混排 |

## ⚠️ 重要纠正:@FastNative 的约定(从 AOSP art/test/004-JniTest 权威确认)
- **@CriticalNative** = fnPtr(args...) —— 无 JNIEnv、无 jclass。
- **@FastNative** = fnPtr(JNIEnv*, jclass, args...) —— **有 env + jclass,和 normal 完全相同签名**(只是线程状态转换更快)。
- **normal** = fnPtr(JNIEnv*, jclass, args...)。

即:**只有 @CriticalNative 丢 env+jclass;@FastNative 和 normal 一样都带 env+jclass**。
(证据:`Java_Main_intFastNativeMethod(JNIEnv*, jclass, jint,jint,jint)` vs `Java_Main_intCriticalNativeMethod(jint,jint,jint)`,004-JniTest/jni_test.cc:807/813。)
→ 派发器分叉应是**二值**:`IsCriticalNative() ? 只压参数 : 压 env+jclass+参数`。**别给 @FastNative 单独做"env 不压 clazz"的第三档**(那会让 44 个图形 @FastNative + 输入的 @FastNative 全错位一个寄存器)。

## 用法(大板 imageless ART)
1. 编 `.so`:`clang++ --target=aarch64-linux-ohos -I<jni.h dir> -shared -o libshortytest.so shorty_dispatch_test.cpp`(或直接用附带的)。
2. push 到大板,`System.load(".../libshortytest.so")`(触发 JNI_OnLoad 注册 10 个 native)。
3. `new com.westlake.shortytest.ShortyDispatchTest().runAll()`。
4. 期望 stdout:`SHORTY-DISPATCH: ALL GREEN`。任一 `FAIL xxx -> bad arg#k` = 该 native 第 k 参 marshalling 错,直接定位派发器 bug。

sentinel 设计:每参按序号+类型取唯一值(jint=0x1000_0000|k、jlong=0x2000..|k、jfloat=1000+k、jdouble=2000+k、对象数组 length=40+k),任何参数错位/丢失/寄存器串位都会被首个不符的参数抓到并报序号。
