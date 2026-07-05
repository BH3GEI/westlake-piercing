// [DAYU600] Minimal AssetManager/ApkAssets JNI over the compiled libandroidfw C++ API.
// Bridges the framework.jar native declarations to android::AssetManager2/ApkAssets,
// avoiding the full android_runtime/GraphicsJNI/nativehelper chain. <jni.h> only.
#include <jni.h>
#include <string>
#include <vector>
#include "androidfw/AssetManager2.h"
#include "androidfw/ApkAssets.h"
#include "androidfw/ResourceTypes.h"

using namespace android;
using WApk = AssetManager2::ApkAssetsPtr;

#define LOGI(...) __android_log_print(4, "wl-am-jni", __VA_ARGS__)

static std::string jstr(JNIEnv* env, jstring s) {
  if (!s) return {};
  const char* c = env->GetStringUTFChars(s, nullptr);
  std::string r(c ? c : "");
  if (c) env->ReleaseStringUTFChars(s, c);
  return r;
}

// ---- ApkAssets ----
static jlong ApkAssets_nativeLoad(JNIEnv* env, jclass, jint /*format*/, jstring path,
                                  jint flags, jobject /*assetsProvider*/) {
  std::string p = jstr(env, path);
  WApk apk = ApkAssets::Load(p, static_cast<package_property_t>(flags));
  if (!apk) { LOGI("ApkAssets::Load failed for %s", p.c_str()); return 0; }
  return reinterpret_cast<jlong>(new WApk(apk));  // heap-held sp; nativeDestroy frees
}
static void ApkAssets_nativeDestroy(JNIEnv*, jclass, jlong ptr) {
  delete reinterpret_cast<WApk*>(ptr);
}
static jstring ApkAssets_nativeGetAssetPath(JNIEnv* env, jclass, jlong ptr) {
  auto* sp = reinterpret_cast<WApk*>(ptr);
  if (!sp || !*sp) return env->NewStringUTF("");
  auto path = (*sp)->GetPath();
  return env->NewStringUTF(path.has_value() ? std::string(*path).c_str() : "");
}

// ---- AssetManager ----
static jlong AssetManager_nativeCreate(JNIEnv*, jclass) {
  return reinterpret_cast<jlong>(new AssetManager2());
}
static void AssetManager_nativeDestroy(JNIEnv*, jclass, jlong ptr) {
  delete reinterpret_cast<AssetManager2*>(ptr);
}
static void AssetManager_nativeSetApkAssets(JNIEnv* env, jclass, jlong ptr,
                                            jobjectArray assets, jboolean inv, jboolean /*preset*/) {
  auto* am = reinterpret_cast<AssetManager2*>(ptr);
  jsize n = env->GetArrayLength(assets);
  std::vector<WApk> list;
  jclass apkCls = env->FindClass("android/content/res/ApkAssets");
  jfieldID fld = env->GetFieldID(apkCls, "mNativePtr", "J");
  for (jsize i = 0; i < n; i++) {
    jobject o = env->GetObjectArrayElement(assets, i);
    auto* sp = reinterpret_cast<WApk*>(env->GetLongField(o, fld));
    if (sp && *sp) list.push_back(*sp);
    env->DeleteLocalRef(o);
  }
  am->SetApkAssets(AssetManager2::ApkAssetsList(list.data(), list.size()), inv);
}
static jint AssetManager_nativeGetResourceIdentifier(JNIEnv* env, jclass, jlong ptr,
    jstring name, jstring defType, jstring defPackage) {
  auto* am = reinterpret_cast<AssetManager2*>(ptr);
  auto r = am->GetResourceId(jstr(env, name), jstr(env, defType), jstr(env, defPackage));
  return r.has_value() ? static_cast<jint>(*r) : 0;
}

static const JNINativeMethod kApkAssets[] = {
  {"nativeLoad", "(ILjava/lang/String;ILandroid/content/res/loader/AssetsProvider;)J", (void*)ApkAssets_nativeLoad},
  {"nativeDestroy", "(J)V", (void*)ApkAssets_nativeDestroy},
  {"nativeGetAssetPath", "(J)Ljava/lang/String;", (void*)ApkAssets_nativeGetAssetPath},
};
static const JNINativeMethod kAssetManager[] = {
  {"nativeCreate", "()J", (void*)AssetManager_nativeCreate},
  {"nativeDestroy", "(J)V", (void*)AssetManager_nativeDestroy},
  {"nativeSetApkAssets", "(J[Landroid/content/res/ApkAssets;ZZ)V", (void*)AssetManager_nativeSetApkAssets},
  {"nativeGetResourceIdentifier", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I",
   (void*)AssetManager_nativeGetResourceIdentifier},
};

extern "C" JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM* vm, void*) {
  JNIEnv* env = nullptr;
  if (vm->GetEnv((void**)&env, JNI_VERSION_1_6) != JNI_OK) return -1;
  jclass am = env->FindClass("android/content/res/AssetManager");
  jclass ak = env->FindClass("android/content/res/ApkAssets");
  if (am) env->RegisterNatives(am, kAssetManager, 4);
  if (ak) env->RegisterNatives(ak, kApkAssets, 3);
  LOGI("registered AssetManager(%d)/ApkAssets(%d) natives", am != nullptr, ak != nullptr);
  return JNI_VERSION_1_6;
}
