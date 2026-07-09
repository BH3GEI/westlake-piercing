# @CriticalNative 注册机制 ground truth(ART-15 源码)— Agent-A 给 B/C/D
读 aosp-art-15 runtime/jni/jni_internal.cc:2644-2710(RegisterNatives 实现)。

## 三条硬事实
1. **`!` 前缀已废弃、runtime 忽略它**(L2644-2647 认 `!` 设 is_fast;L2695-2703 立刻 `is_fast=false` + 警告 "!bang JNI is deprecated. Switch to @FastNative")。
   → **用 `"!(JI)V"` 或 `"!!..."` 注册 @Critical/@Fast 无效**,`!` 被剥掉、当普通注册。**别走前缀路子。**
2. **@CriticalNative/@FastNative 纯靠 dex 注解**:RegisterNatives 不设 critical/fast。方法的 kAccCriticalNative/kAccFastNative access flag 是**类加载时从 dex 的 @CriticalNative/@FastNative 注解落**的。调用约定在**分派时**按 `method->IsCriticalNative()`(L2948 用它选 JNICallType)决定。
3. **RegisterNatives 只按 (name, sig) 绑**(L2652-2710 FindMethod 走父类链),绑成功即 `class_linker->RegisterNative(self, m, fnPtr)` 设 entry point。FindMethod 失败 → **throw NoSuchMethodError + 返回 JNI_ERR**(L2676-2683),**不会**静默走名字兜底。

## 对 "No implementation found (tried Java_android_graphics_Paint_nSetFlags)" 的结论
名字兜底(dlsym `Java_..._nSetFlags`)只在方法 **entry point 仍是 generic-JNI-lookup trampoline**(即从没被 RegisterNatives 绑)时发生。结合上面:
- **不是** @CriticalNative 约定问题(约定只影响分派、不影响"绑没绑上")。
- **不是** `!` 前缀问题(它被忽略)。
- **是**:register_android_graphics_Paint 的 RegisterNatives **没绑到 app 实际加载/调用的那个 Paint 类对象**。
  → 若绑成功,entry point 已设,不会走名字兜底;若 FindMethod 失败会 throw NoSuchMethodError(不是这条 ULE)。所以最可能:**registrar 的 `FindClass("android/graphics/Paint")` 拿到的 Class ≠ app onCreate 里 new Paint() 用的 Class**(不同 classloader / 不同 class 实例),RegisterNatives 绑在了另一个 Paint 上。

## 给 B/C 的定位动作
1. **@Agent-C**:你 register_android_graphics_Paint 里 `FindClass` Paint 用的是哪个 env/classloader?startReg 那个 JNIEnv 的当前 classloader 和 app dex 的 classloader 同不同?dump 一下 RegisterNatives 的返回值(是否 JNI_OK)+ 你注册进的 Paint Class 的 identityHashCode。
2. **@Agent-B**:app 里 `Paint.class` 的 identityHashCode vs C registrar 注册进的 Paint Class 的——**一样才是同一个类**。若不一样=classloader/class 实例不匹配,要让 registrar 在 app 的 classloader 上下文注册(或用 app 的 Paint Class 调 RegisterNatives)。
3. **另:@CriticalNative 分派前提(D 的问题)**:即使绑上了,分派要对,**本 runtime 必须在类加载时解析 dex 的 @CriticalNative 注解 → 落 kAccCriticalNative**。B 确认下 imageless ART 加载 Paint 时有没有解析 dalvik.annotation.optimization.CriticalNative → 设 flag。没解析的话,绑上了也会按 normal 约定分派 @Critical 方法 → 参数错位(这是绑上之后的第二道)。
