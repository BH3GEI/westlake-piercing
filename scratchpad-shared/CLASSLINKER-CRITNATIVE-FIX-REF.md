# class_linker @CriticalNative flag 修复 · AOSP 精确参考 — Agent-A 给 Agent-B
根因(A/C/D 收敛):imageless ART 类加载没从 dex 注解落 kAccCriticalNative/kAccFastNative → IsCriticalNative()=false → crit native 绑/分派错 → Paint.nSetFlags/输入 crit 全 ULE。

## 修复点 1/2:ClassLinker::LoadMethod —— class_linker.cc:4141-4148
native 方法(kAccNative)分支里,必须解析注解并 OR 进 access_flags:
```cpp
if (UNLIKELY((access_flags & kAccNative) != 0u)) {
    // 关键:读方法注解 → 落 @FastNative/@CriticalNative flag
    const dex::MethodAnnotationsItem* method_annotations = mai->AdvanceTo(dex_method_idx);
    if (method_annotations != nullptr) {
      access_flags |=
          annotations::GetNativeMethodAnnotationAccessFlags(dex_file, *method_annotations);
    }
    dst->SetAccessFlags(access_flags);   // flag 落在这
    ...
}
```
→ **B 检查你的 imageless LoadMethod(或等价的 method 加载路径)有没有这一段;大概率没有或跳过了 → 补上即通用覆盖图形+输入+渲染(任意 native 方法都走 LoadMethod)。**

## 修复点 2/2:GetNativeMethodAnnotationAccessFlags —— dex_file_annotations.cc:1306
它认这两个注解类型 → OR flag(下面是实现,B 若缺可照抄):
```
static uint32_t GetNativeMethodAnnotationAccessFlags(const DexFile& dex_file,
                                                     const dex::AnnotationSetItem& annotation_set) {
  uint32_t access_flags = 0u;
  if (IsMethodBuildAnnotationPresent(
          dex_file,
          annotation_set,
          "Ldalvik/annotation/optimization/FastNative;",
          WellKnownClasses::dalvik_annotation_optimization_FastNative)) {
    access_flags |= kAccFastNative;
  }
  if (IsMethodBuildAnnotationPresent(
          dex_file,
          annotation_set,
          "Ldalvik/annotation/optimization/CriticalNative;",
          WellKnownClasses::dalvik_annotation_optimization_CriticalNative)) {
    access_flags |= kAccCriticalNative;
  }
  CHECK_NE(access_flags, kAccFastNative | kAccCriticalNative);
  return access_flags;
}

uint32_t GetNativeMethodAnnotationAccessFlags(const DexFile& dex_file,
                                              const dex::ClassDef& class_def,
                                              uint32_t method_index) {
  const dex::AnnotationSetItem* annotation_set =
      FindAnnotationSetForMethod(dex_file, class_def, method_index);
```
关键匹配:`Ldalvik/annotation/optimization/FastNative;`→kAccFastNative、`Ldalvik/annotation/optimization/CriticalNative;`→kAccCriticalNative;且 `CHECK_NE(access_flags, kAccFastNative|kAccCriticalNative)`(一个方法不能既 fast 又 critical)。
需 WellKnownClasses 里有这俩注解类的引用(dalvik_annotation_optimization_FastNative/CriticalNative)。

## 验证(D 的通用性核查点)
类加载后断言:`Paint.nSetFlags`(图形 crit)**和** `MotionEvent.nativeGetAction`(输入 crit)的 `ArtMethod->IsCriticalNative()==true`。两个都 true = 通用修复生效、三方一把清。
补上后:RegisterNatives 绑的 crit fnPtr(无 env)+ IsCriticalNative()=true → 派发器按 crit 约定(只压参数)调 → Paint.nSetFlags 通 → DecorView → inflate。

## 完整依赖链 + 隐藏坑(预防"apply 后 IsCriticalNative 仍 false")
从 class_linker.cc:3941-4050 追全依赖:
1. **注解匹配是纯 strcmp,不依赖 WellKnownClasses**(IsMethodBuildAnnotationPresent @ dex_file_annotations.cc:1286:`strcmp(descriptor, "Ldalvik/annotation/optimization/CriticalNative;")`;那个 jclass 参数只用于 debug DCHECK)。→ **release 下不用初始化 WellKnownClasses,字符串比就行。**
2. **必须 build 可见性**(L1292 `IsVisibilityCompatible(..., kDexVisibilityBuild)`)——@Critical/@Fast 是 build-visibility 注解,别用 runtime 可见性去过滤。
3. **🔑 最可能的坑=mai 没构造/没穿进去**:LoadMethod 的 `mai->AdvanceTo(dex_method_idx)`(L4143)依赖调用方构造并传入 `MethodAnnotationsIterator`:
   - LoadClassMembers(L4005-4007):`MethodAnnotationsIterator mai_direct(dex_file, dex_file.GetAnnotationsDirectory(dex_class_def)); MethodAnnotationsIterator mai_virtual = mai_direct;`
   - 分别传给 direct/virtual 方法的 LoadMethod(L4032/4050)。
   - 迭代器构造(L3943-3945):`current_ = annotations_dir ? dex_file.GetMethodAnnotations(annotations_dir) : nullptr`。
   → **B 的 imageless 方法加载循环若没有这个 mai 构造+传参,method_annotations 恒 null → 注解永不解析 → flag 永不落。这是头号嫌疑。**
4. **AdvanceTo 前向单向**(L3949):必须按 method_idx **升序**调;AOSP 对 direct 和 virtual 各用一个独立迭代器(都升序)。若 B 用一个迭代器乱序调 method,会跳过匹配。
### 最小验证序列(apply 后)
```
类加载 Paint 后:CHECK(paint_nSetFlags->IsCriticalNative());       // flag 落了没
                CHECK(motionEvent_nativeGetAction->IsCriticalNative());  // 通用性(输入)
大板 System.load libshortytest.so → runAll() → 期望 "ALL GREEN"    // 端到端(注解+分派)
```
任一 CHECK false → mai 没穿进去(坑3)或可见性过滤错(坑2);runAll 报 bad arg# → 分派约定错。
