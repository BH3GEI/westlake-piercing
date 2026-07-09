# 正则 native (PatternNative.create 返 0) 离线诊断 — Agent-A 给 Agent-B 参考

## 类与 native(A11-A16 稳定,ICU 桥自 A10 未变)
- Java 类:`com.android.icu.util.regex.PatternNative`(**不是** java.util.regex 直接 native;java.util.regex.Pattern 内部委托到它)。
- `create(String pattern,int flags)` → `compileImpl(pattern,flags)`(native)。
- native 方法表(gMethods,register_com_android_icu_util_regex_PatternNative):
  - `compileImpl` sig `(Ljava/lang/String;I)J`
  - `getNativeFinalizer` `()J`
  - `openMatcherImpl` `(J)J`
  - `getMatchedGroupIndexImpl` `(JLjava/lang/String;)I`

## compileImpl 真实实现(返0的唯一路径)
```cpp
jlong PatternNative_compileImpl(JNIEnv* env, jclass, jstring javaRegex, jint flags){
  flags |= UREGEX_ERROR_ON_UNKNOWN_ESCAPES;
  ScopedJavaUnicodeString regex(env, javaRegex);
  if (!regex.valid()) { return 0; }            // ← 唯一 return 0
  icu::RegexPattern* result = icu::RegexPattern::compile(regex.unicodeString(), flags, error, status);
  if(!U_SUCCESS(status)) throwPatternSyntaxException(...);  // 语法错→throw,不返0
  return (jlong)(uintptr_t)result;             // 正常→非0 指针
}
```
且 `ScopedJavaUnicodeString::valid(){ return mString != NULL; }`(只判 jstring 非空;构造里 GetStringChars+GetStringLength+UnicodeString.setTo)。

## 根因判断(任意 pattern 都返 0)
返 0 **当且仅当 javaRegex 参数 == NULL**。所以两种可能:
1. **compileImpl 是 stub**(westlake 运行时把它桩成 `return 0`)→ 需换成真实 ICU 实现(见上)。
2. **真实 impl 被调,但 String 参数以 NULL 到达 native** → JNI 字符串参数编组问题:
   - 查这个 native 的**调用约定**:是否被误注册/误分派为 @CriticalNative(那会丢 JNIEnv/jclass 并错位参数,jstring 变垃圾/NULL)。compileImpl 是 **normal JNI**(要 env、要 jclass、String 引用参数),**绝不能当 critical/fast 处理**。
   - 查 RegisterNatives 的 fnPtr 是否绑对(sig `(Ljava/lang/String;I)J`)。
   - 对比 D 的 MotionEvent 经验:critical/fast/normal 分类错会导致参数错位——同一坑。

## 依赖
- 需要 ICU:`icu::RegexPattern::compile`(libicu / libandroidicu / libicuuc+libicui18n)。确认运行时能 dlopen 到 ICU 且符号可解析。
- ICU data(icudtXXl.dat)要能加载(u_setDataDirectory / ICU_DATA)——但注意:**data 缺失通常导致 compile 抛异常(U_FILE_ACCESS_ERROR)而非返0**,所以 data 问题排在参数问题之后。

## 最快定位法
在 compileImpl 入口加一行 log 打 `javaRegex==NULL?` 和 `env->GetStringUTFChars(javaRegex)`:
- 若 javaRegex==NULL → 是**参数编组/调用约定**问题(runtime 分派层)。
- 若非 NULL 但 valid()仍 false / compile 抛异常 → 是 **ICU/data** 问题。
这一行 log 就能二分定位。
