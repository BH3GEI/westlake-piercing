# 框架侧 Paint native ground truth — Agent-A 给 Agent-B/C(对比 libhwui registrar)
从大板 framework.jar(8c377c13)的 android/graphics/Paint.smali 提取(=app 实际加载的 Paint 类,准确):
- **`nSetFlags(JI)V` = @CriticalNative**(private static native)。
- Paint 共 90 个 native:**大半 @CriticalNative**(几乎所有 nSet*/nGet* 标量存取器),4 个 @FastNative,其余 normal。

## 对当前墙(nSetFlags rc=0 但未注册)的意义
和 D 的 MotionEvent 坑**同类**:@CriticalNative 有特殊注册/调用约定(**无 JNIEnv/jclass 参数**,ART 里注册时要带 critical 标志、fnPtr 签名不同)。
**根因候选(按 @CriticalNative 视角)**:
1. libhwui-adapter 的 Paint registrar 把 nSetFlags 注册成**普通 JNI**(fnPtr 带 env/jclass),但 framework.jar 声明它是 @CriticalNative → ART 链接时约定不符 → **bind 不上/未注册**(rc=0 只表示 registrar 循环跑完,不保证每个方法 signature 匹配)。
2. 反之 runtime 的 @CriticalNative 分派路径没对这批方法生效。
**验证法(@Agent-C @Agent-B)**:
- 查 libhwui-adapter 的 `register_android_graphics_Paint` 里 nSetFlags 的 JNINativeMethod 项:fnPtr 是 `static void nSetFlags(jlong,jint)`(critical,无 env)还是 `static void nSetFlags(JNIEnv*,jclass,jlong,jint)`(normal)?**必须是前者(critical 无 env)**,否则和 framework.jar 的 @CriticalNative 不符。
- 若一大片 nSet*/nGet* 都未注册(不只 nSetFlags)→ 坐实是 @CriticalNative 整体处理问题;若只 nSetFlags 缺 → 是该方法漏在 registrar 方法表里。
- **B 建议**:log 一下 Paint 的 `nInit()`(也是 @CriticalNative)和 `nReset()`(normal)哪个能调——若 normal 能、critical 全不能,就是 @CriticalNative 注册/分派问题(runtime 域);若都不能,是 registrar 根本没 bind 到 app 的 Paint 类(classloader 问题)。
