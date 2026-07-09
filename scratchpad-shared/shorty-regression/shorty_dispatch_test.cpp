// InterpJni 通用 shorty 派发器回归集 —— C 校验侧 —— Agent-A
// 编译: OHOS aarch64 clang，-shared -o libshortytest.so，System.load 后 JNI_OnLoad 自注册。
// 约定(从 AOSP art/test/004-JniTest 权威确认):
//   @CriticalNative : 无 JNIEnv、无 jclass —— fnPtr(args...)
//   @FastNative     : 有 JNIEnv + jclass  —— fnPtr(JNIEnv*, jclass, args...)   ← 和 normal 相同!
//   normal          : 有 JNIEnv + jclass  —— fnPtr(JNIEnv*, jclass, args...)
// 每个 impl 逐参核验 sentinel,返回 0=全对,否则第一个错位参数序号(1起)。
#include <jni.h>
#include <cstdint>

// sentinel 期望值(和 Java 侧 L()/I()/F()/D() 同款);参数序号 k 从 1 起
static inline int64_t EL(int k){ return (int64_t)0x2000000000000000LL | k; }
static inline int32_t EI(int k){ return (int32_t)0x10000000 | k; }
static inline float   EF(int k){ return 1000.0f + k; }
static inline double  ED(int k){ return 2000.0 + k; }

// 逐参核验宏:第 pos 个参数 got 应等 want,不符即 return pos
#define CK(pos, got, want) do{ if((got)!=(want)) return (pos); }while(0)

extern "C" {

// ---------- @CriticalNative:无 env、无 clazz ----------
jint critVJI_impl(jlong a1, jint a2){
  CK(1,a1,EL(1)); CK(2,a2,EI(2)); return 0;
}
jint critManyIJ_impl(jlong a1, jint a2, jint a3, jint a4, jint a5,
                     jint a6, jint a7, jlong a8, jint a9){
  CK(1,a1,EL(1)); CK(2,a2,EI(2)); CK(3,a3,EI(3)); CK(4,a4,EI(4)); CK(5,a5,EI(5));
  CK(6,a6,EI(6)); CK(7,a7,EI(7)); CK(8,a8,EL(8)); CK(9,a9,EI(9)); return 0;
}
jint critFloatMix_impl(jlong a1, jfloat a2, jint a3, jfloat a4,
                       jint a5, jfloat a6, jlong a7){
  CK(1,a1,EL(1)); CK(2,a2,EF(2)); CK(3,a3,EI(3)); CK(4,a4,EF(4));
  CK(5,a5,EI(5)); CK(6,a6,EF(6)); CK(7,a7,EL(7)); return 0;
}
jint critWide_impl(jlong a1, jlong a2, jlong a3, jlong a4, jlong a5,
                   jlong a6, jlong a7, jint a8, jlong a9){
  CK(1,a1,EL(1)); CK(2,a2,EL(2)); CK(3,a3,EL(3)); CK(4,a4,EL(4)); CK(5,a5,EL(5));
  CK(6,a6,EL(6)); CK(7,a7,EL(7)); CK(8,a8,EI(8)); CK(9,a9,EL(9)); return 0;
}

// ---------- @FastNative:env + jclass(和 normal 相同签名) ----------
jint fastVJI_impl(JNIEnv*, jclass, jlong a1, jint a2){
  CK(1,a1,EL(1)); CK(2,a2,EI(2)); return 0;
}
jint fastFloatHeavy_impl(JNIEnv*, jclass, jlong a1, jfloat a2, jfloat a3, jfloat a4,
                         jfloat a5, jfloat a6, jfloat a7, jfloat a8, jlong a9){
  CK(1,a1,EL(1)); CK(2,a2,EF(2)); CK(3,a3,EF(3)); CK(4,a4,EF(4)); CK(5,a5,EF(5));
  CK(6,a6,EF(6)); CK(7,a7,EF(7)); CK(8,a8,EF(8)); CK(9,a9,EL(9)); return 0;
}

// ---------- normal:env + jclass ----------
jint normVJI_impl(JNIEnv*, jclass, jlong a1, jint a2){
  CK(1,a1,EL(1)); CK(2,a2,EI(2)); return 0;
}
// 最刁:19 参 + 2 对象数组(MotionEvent.nativeInitialize 形态),返回 jlong(0=全对)
jlong nativeInit19_impl(JNIEnv* env, jclass, jlong a1, jint a2, jint a3, jint a4, jint a5,
                        jint a6, jint a7, jint a8, jint a9, jint a10, jfloat a11, jfloat a12,
                        jfloat a13, jfloat a14, jlong a15, jlong a16, jint a17,
                        jobjectArray a18, jobjectArray a19){
  CK(1,a1,EL(1)); CK(2,a2,EI(2)); CK(3,a3,EI(3)); CK(4,a4,EI(4)); CK(5,a5,EI(5));
  CK(6,a6,EI(6)); CK(7,a7,EI(7)); CK(8,a8,EI(8)); CK(9,a9,EI(9)); CK(10,a10,EI(10));
  CK(11,a11,EF(11)); CK(12,a12,EF(12)); CK(13,a13,EF(13)); CK(14,a14,EF(14));
  CK(15,a15,EL(15)); CK(16,a16,EL(16)); CK(17,a17,EI(17));
  // 对象数组参数:验 AddLocalReference 生效(引用合法 → GetArrayLength 可用、长度对)
  if(a18==nullptr || env->GetArrayLength(a18) != 40+18) return 18;
  if(a19==nullptr || env->GetArrayLength(a19) != 40+19) return 19;
  return 0;
}
jint normObjArr_impl(JNIEnv* env, jclass, jlong a1, jobjectArray a2, jint a3){
  CK(1,a1,EL(1));
  if(a2==nullptr || env->GetArrayLength(a2) != 40+2) return 2;
  CK(3,a3,EI(3)); return 0;
}
jint normFloatIntWeave_impl(JNIEnv*, jclass, jlong a1, jint a2, jfloat a3, jint a4,
                            jfloat a5, jint a6, jfloat a7, jdouble a8, jint a9){
  CK(1,a1,EL(1)); CK(2,a2,EI(2)); CK(3,a3,EF(3)); CK(4,a4,EI(4)); CK(5,a5,EF(5));
  CK(6,a6,EI(6)); CK(7,a7,EF(7)); CK(8,a8,ED(8)); CK(9,a9,EI(9)); return 0;
}

static const JNINativeMethod kMethods[] = {
  {"critVJI",           "(JI)I",                     (void*)critVJI_impl},
  {"critManyIJ",        "(JIIIIIIJI)I",              (void*)critManyIJ_impl},
  {"critFloatMix",      "(JFIFIFJ)I",                (void*)critFloatMix_impl},
  {"critWide",          "(JJJJJJJIJ)I",              (void*)critWide_impl},
  {"fastVJI",           "(JI)I",                     (void*)fastVJI_impl},
  {"fastFloatHeavy",    "(JFFFFFFFJ)I",              (void*)fastFloatHeavy_impl},
  {"normVJI",           "(JI)I",                     (void*)normVJI_impl},
  {"nativeInit19",      "(JIIIIIIIIIFFFFJJI[Ljava/lang/Object;[Ljava/lang/Object;)J", (void*)nativeInit19_impl},
  {"normObjArr",        "(J[Ljava/lang/Object;I)I",  (void*)normObjArr_impl},
  {"normFloatIntWeave", "(JIFIFIFDI)I",              (void*)normFloatIntWeave_impl},
};

JNIEXPORT jint JNI_OnLoad(JavaVM* vm, void*){
  JNIEnv* env=nullptr;
  if(vm->GetEnv((void**)&env, JNI_VERSION_1_6)!=JNI_OK) return JNI_ERR;
  jclass c=env->FindClass("com/westlake/shortytest/ShortyDispatchTest");
  if(!c) return JNI_ERR;
  if(env->RegisterNatives(c, kMethods, sizeof(kMethods)/sizeof(kMethods[0]))!=JNI_OK) return JNI_ERR;
  return JNI_VERSION_1_6;
}

} // extern "C"
