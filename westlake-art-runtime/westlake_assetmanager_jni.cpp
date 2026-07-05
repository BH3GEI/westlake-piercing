// [DAYU600] Minimal AssetManager/ApkAssets JNI over the compiled libandroidfw C++ API.
// Bridges the framework.jar native declarations to android::AssetManager2/ApkAssets,
// avoiding the full android_runtime/GraphicsJNI/nativehelper chain. <jni.h> only.
#include <jni.h>
#include <string>
#include <vector>
#include <variant>
#include <cstdio>
#include <sys/stat.h>
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
  FILE* df = fopen("/data/local/tmp/westlake-dayu600-substrate/apks/probe-logs/nativeload.txt", "a");
  if (df) {
    struct stat st; int ex = (stat(p.c_str(), &st) == 0);
    fprintf(df, "path=[%s] flags=%d exists=%d size=%lld loaded=%d\n", p.c_str(), (int)flags,
            ex, ex ? (long long)st.st_size : -1LL, apk ? 1 : 0);
    fclose(df);
  }
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
  (void)inv;  // force cache (re)build so GetResourceId/GetResourceName index is populated
  am->SetApkAssets(AssetManager2::ApkAssetsList(list.data(), list.size()), true);
}
static jint AssetManager_nativeGetResourceIdentifier(JNIEnv* env, jclass, jlong ptr,
    jstring name, jstring defType, jstring defPackage) {
  auto* am = reinterpret_cast<AssetManager2*>(ptr);
  auto r = am->GetResourceId(jstr(env, name), jstr(env, defType), jstr(env, defPackage));
  return r.has_value() ? static_cast<jint>(*r) : 0;
}
static void append16(std::string& s, const char16_t* p, size_t n) {
  for (size_t i = 0; i < n; i++) s.push_back(static_cast<char>(p[i] & 0x7f));
}
static jstring AssetManager_nativeGetResourceName(JNIEnv* env, jclass, jlong ptr, jint resid) {
  auto* am = reinterpret_cast<AssetManager2*>(ptr);
  auto r = am->GetResourceName(static_cast<uint32_t>(resid));
  if (!r.has_value()) {
    // diagnostic: distinguish "not found (null)" vs IOError so the probe can see why
    return env->NewStringUTF(std::holds_alternative<IOError>(r.error()) ? "GRN:ioerror" : "GRN:notfound");
  }
  std::string s;
  if (r->package && r->package_len) s.append(r->package, r->package_len);
  s.append(":");
  if (r->type && r->type_len) s.append(r->type, r->type_len);
  else if (r->type16 && r->type_len) append16(s, r->type16, r->type_len);
  s.append("/");
  if (r->entry && r->entry_len) s.append(r->entry, r->entry_len);
  else if (r->entry16 && r->entry_len) append16(s, r->entry16, r->entry_len);
  return env->NewStringUTF(s.c_str());
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
  {"nativeGetResourceName", "(JI)Ljava/lang/String;", (void*)AssetManager_nativeGetResourceName},
};

extern "C" JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM* vm, void*) {
  JNIEnv* env = nullptr;
  if (vm->GetEnv((void**)&env, JNI_VERSION_1_6) != JNI_OK) return -1;
  jclass am = env->FindClass("android/content/res/AssetManager");
  jclass ak = env->FindClass("android/content/res/ApkAssets");
  if (am) env->RegisterNatives(am, kAssetManager, 5);
  if (ak) env->RegisterNatives(ak, kApkAssets, 3);
  LOGI("registered AssetManager(%d)/ApkAssets(%d) natives", am != nullptr, ak != nullptr);
  return JNI_VERSION_1_6;
}
