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

static jint AssetManager_nativeGetResourceValue(JNIEnv* env, jclass, jlong ptr, jint resId,
    jshort density, jobject outValue, jboolean resolveRefs) {
  auto* am = reinterpret_cast<AssetManager2*>(ptr);
  auto sv = am->GetResource(static_cast<uint32_t>(resId), false, static_cast<uint16_t>(density));
  if (!sv.has_value()) return -1;  // kInvalidCookie
  AssetManager2::SelectedValue value = *sv;
  if (resolveRefs) { auto r = am->ResolveReference(value); (void)r; }
  jclass tv = env->GetObjectClass(outValue);
  env->SetIntField(outValue, env->GetFieldID(tv, "type", "I"), value.type);
  env->SetIntField(outValue, env->GetFieldID(tv, "data", "I"), static_cast<jint>(value.data));
  env->SetIntField(outValue, env->GetFieldID(tv, "assetCookie", "I"), value.cookie);
  env->SetIntField(outValue, env->GetFieldID(tv, "resourceId", "I"), value.resid ? value.resid : resId);
  env->SetIntField(outValue, env->GetFieldID(tv, "changingConfigurations", "I"), static_cast<jint>(value.flags));
  env->SetIntField(outValue, env->GetFieldID(tv, "density", "I"), value.config.density);
  if (value.type == 0x03 /*Res_value::TYPE_STRING*/) {
    const ResStringPool* pool = am->GetStringPoolForCookie(value.cookie);
    if (pool) {
      auto s = pool->string8At(value.data);
      if (s.has_value()) {
        jstring js = env->NewStringUTF(std::string(s->data(), s->size()).c_str());
        jfieldID sf = env->GetFieldID(tv, "string", "Ljava/lang/CharSequence;");
        if (sf) env->SetObjectField(outValue, sf, js);
      }
    }
  }
  return value.cookie;
}
// AssetManager.nativeOpenXmlAsset(long ptr, int cookie, String fileName) -> long (ResXMLTree*)
static jlong AssetManager_nativeOpenXmlAsset(JNIEnv* env, jclass, jlong ptr, jint cookie, jstring fileName) {
  auto* am = reinterpret_cast<AssetManager2*>(ptr);
  std::string path = jstr(env, fileName);
  auto asset = am->OpenNonAsset(path, static_cast<ApkAssetsCookie>(cookie), Asset::AccessMode::ACCESS_RANDOM);
  if (!asset) return 0;
  auto buffer = asset->getIncFsBuffer(true /*aligned*/);
  const size_t length = asset->getLength();
  if (buffer.unsafe_ptr() == nullptr || length == 0) return 0;
  auto ref = am->GetDynamicRefTableForCookie(cookie);
  auto* tree = new ResXMLTree(ref);
  if (tree->setTo(buffer.unsafe_ptr(), length, true) != NO_ERROR) { delete tree; return 0; }
  return reinterpret_cast<jlong>(tree);
}

// ---- XmlBlock (parse the ResXMLTree returned by nativeOpenXmlAsset) ----
static jlong XmlBlock_nativeCreateParseState(JNIEnv*, jclass, jlong tree, jint /*resId*/) {
  ResXMLTree* t = reinterpret_cast<ResXMLTree*>(tree);
  if (!t) return 0;
  ResXMLParser* p = new ResXMLParser(*t);
  p->restart();
  return reinterpret_cast<jlong>(p);
}
static void XmlBlock_nativeDestroyParseState(JNIEnv*, jclass, jlong state) {
  delete reinterpret_cast<ResXMLParser*>(state);
}
static jint XmlBlock_nativeNext(JNIEnv*, jclass, jlong state) {
  ResXMLParser* p = reinterpret_cast<ResXMLParser*>(state);
  if (!p) return 1;
  ResXMLParser::event_code_t code = p->next();
  switch (code) {
    case ResXMLParser::START_TAG: return 2;  // XmlPullParser.START_TAG
    case ResXMLParser::END_TAG: return 3;
    case ResXMLParser::TEXT: return 4;
    case ResXMLParser::START_DOCUMENT: return 0;
    default: return 1;  // END_DOCUMENT / BAD_DOCUMENT
  }
}
static jint XmlBlock_nativeGetName(JNIEnv*, jclass, jlong state) {
  ResXMLParser* p = reinterpret_cast<ResXMLParser*>(state);
  return p ? static_cast<jint>(p->getElementNameID()) : -1;
}
static jint XmlBlock_nativeGetAttributeCount(JNIEnv*, jclass, jlong state) {
  ResXMLParser* p = reinterpret_cast<ResXMLParser*>(state);
  return p ? static_cast<jint>(p->getAttributeCount()) : 0;
}
static jint XmlBlock_nativeGetText(JNIEnv*, jclass, jlong state) {
  ResXMLParser* p = reinterpret_cast<ResXMLParser*>(state);
  return p ? static_cast<jint>(p->getTextID()) : -1;
}
static jint XmlBlock_nativeGetNamespace(JNIEnv*, jclass, jlong state) {
  ResXMLParser* p = reinterpret_cast<ResXMLParser*>(state);
  return p ? static_cast<jint>(p->getElementNamespaceID()) : -1;
}
static jint XmlBlock_nativeGetLineNumber(JNIEnv*, jclass, jlong state) {
  ResXMLParser* p = reinterpret_cast<ResXMLParser*>(state);
  return p ? static_cast<jint>(p->getLineNumber()) : -1;
}
// String block (the XML tree's string pool) — XmlBlock.mStrings uses it to resolve indices.
static jlong XmlBlock_nativeGetStringBlock(JNIEnv*, jclass, jlong obj) {
  ResXMLTree* t = reinterpret_cast<ResXMLTree*>(obj);
  return t ? reinterpret_cast<jlong>(&t->getStrings()) : 0;
}
// ---- attribute getters (idx-based) ----
static jint XmlBlock_nativeGetAttributeNamespace(JNIEnv*, jclass, jlong state, jint idx) {
  ResXMLParser* p = reinterpret_cast<ResXMLParser*>(state);
  return p ? static_cast<jint>(p->getAttributeNamespaceID(idx)) : -1;
}
static jint XmlBlock_nativeGetAttributeName(JNIEnv*, jclass, jlong state, jint idx) {
  ResXMLParser* p = reinterpret_cast<ResXMLParser*>(state);
  return p ? static_cast<jint>(p->getAttributeNameID(idx)) : -1;
}
static jint XmlBlock_nativeGetAttributeResource(JNIEnv*, jclass, jlong state, jint idx) {
  ResXMLParser* p = reinterpret_cast<ResXMLParser*>(state);
  return p ? static_cast<jint>(p->getAttributeNameResID(idx)) : 0;
}
static jint XmlBlock_nativeGetAttributeDataType(JNIEnv*, jclass, jlong state, jint idx) {
  ResXMLParser* p = reinterpret_cast<ResXMLParser*>(state);
  return p ? static_cast<jint>(p->getAttributeDataType(idx)) : 0;
}
static jint XmlBlock_nativeGetAttributeData(JNIEnv*, jclass, jlong state, jint idx) {
  ResXMLParser* p = reinterpret_cast<ResXMLParser*>(state);
  return p ? static_cast<jint>(p->getAttributeData(idx)) : 0;
}
static jint XmlBlock_nativeGetAttributeStringValue(JNIEnv*, jclass, jlong state, jint idx) {
  ResXMLParser* p = reinterpret_cast<ResXMLParser*>(state);
  return p ? static_cast<jint>(p->getAttributeValueStringID(idx)) : -1;
}
static jint XmlBlock_nativeGetIdAttribute(JNIEnv*, jclass, jlong state) {
  ResXMLParser* p = reinterpret_cast<ResXMLParser*>(state);
  if (!p) return -1;
  ssize_t i = p->indexOfID();
  return i < 0 ? -1 : static_cast<jint>(p->getAttributeValueStringID(i));
}
static jint XmlBlock_nativeGetClassAttribute(JNIEnv*, jclass, jlong state) {
  ResXMLParser* p = reinterpret_cast<ResXMLParser*>(state);
  if (!p) return -1;
  ssize_t i = p->indexOfClass();
  return i < 0 ? -1 : static_cast<jint>(p->getAttributeValueStringID(i));
}
static jint XmlBlock_nativeGetStyleAttribute(JNIEnv*, jclass, jlong state) {
  ResXMLParser* p = reinterpret_cast<ResXMLParser*>(state);
  if (!p) return 0;
  ssize_t i = p->indexOfStyle();
  if (i < 0) return 0;
  Res_value v;
  if (p->getAttributeValue(i, &v) < 0) return 0;
  return (v.dataType == Res_value::TYPE_REFERENCE || v.dataType == Res_value::TYPE_ATTRIBUTE)
             ? static_cast<jint>(v.data) : 0;
}
static jint XmlBlock_nativeGetSourceResId(JNIEnv*, jclass, jlong state) {
  ResXMLParser* p = reinterpret_cast<ResXMLParser*>(state);
  return p ? static_cast<jint>(p->getSourceResourceId()) : 0;
}
static const JNINativeMethod kXmlBlock[] = {
  {"nativeCreateParseState", "(JI)J", (void*)XmlBlock_nativeCreateParseState},
  {"nativeDestroyParseState", "(J)V", (void*)XmlBlock_nativeDestroyParseState},
  {"nativeDestroy", "(J)V", (void*)XmlBlock_nativeDestroyParseState},
  {"nativeNext", "(J)I", (void*)XmlBlock_nativeNext},
  {"nativeGetName", "(J)I", (void*)XmlBlock_nativeGetName},
  {"nativeGetText", "(J)I", (void*)XmlBlock_nativeGetText},
  {"nativeGetNamespace", "(J)I", (void*)XmlBlock_nativeGetNamespace},
  {"nativeGetLineNumber", "(J)I", (void*)XmlBlock_nativeGetLineNumber},
  {"nativeGetStringBlock", "(J)J", (void*)XmlBlock_nativeGetStringBlock},
  {"nativeGetAttributeCount", "(J)I", (void*)XmlBlock_nativeGetAttributeCount},
  {"nativeGetAttributeNamespace", "(JI)I", (void*)XmlBlock_nativeGetAttributeNamespace},
  {"nativeGetAttributeName", "(JI)I", (void*)XmlBlock_nativeGetAttributeName},
  {"nativeGetAttributeResource", "(JI)I", (void*)XmlBlock_nativeGetAttributeResource},
  {"nativeGetAttributeDataType", "(JI)I", (void*)XmlBlock_nativeGetAttributeDataType},
  {"nativeGetAttributeData", "(JI)I", (void*)XmlBlock_nativeGetAttributeData},
  {"nativeGetAttributeStringValue", "(JI)I", (void*)XmlBlock_nativeGetAttributeStringValue},
  {"nativeGetIdAttribute", "(J)I", (void*)XmlBlock_nativeGetIdAttribute},
  {"nativeGetClassAttribute", "(J)I", (void*)XmlBlock_nativeGetClassAttribute},
  {"nativeGetStyleAttribute", "(J)I", (void*)XmlBlock_nativeGetStyleAttribute},
  {"nativeGetSourceResId", "(J)I", (void*)XmlBlock_nativeGetSourceResId},
};

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
  {"nativeGetResourceValue", "(JISLandroid/util/TypedValue;Z)I", (void*)AssetManager_nativeGetResourceValue},
  {"nativeOpenXmlAsset", "(JILjava/lang/String;)J", (void*)AssetManager_nativeOpenXmlAsset},
};

extern "C" JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM* vm, void*) {
  JNIEnv* env = nullptr;
  if (vm->GetEnv((void**)&env, JNI_VERSION_1_6) != JNI_OK) return -1;
  jclass am = env->FindClass("android/content/res/AssetManager");
  jclass ak = env->FindClass("android/content/res/ApkAssets");
  if (am) env->RegisterNatives(am, kAssetManager, 7);
  if (ak) env->RegisterNatives(ak, kApkAssets, 3);
  jclass xb = env->FindClass("android/content/res/XmlBlock");
  if (xb) env->RegisterNatives(xb, kXmlBlock, 20);
  LOGI("registered AssetManager(%d)/ApkAssets(%d)/XmlBlock(%d) natives", am != nullptr, ak != nullptr, xb != nullptr);
  return JNI_VERSION_1_6;
}
