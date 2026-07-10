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
#include "androidfw/AttributeResolution.h"

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
// ApkAssets.getStringFromPool path: Java builds a StringBlock over this pool ptr. Must be OURS —
// the OHBridge stub otherwise returns a fake handle that our StringBlock natives then deref (SIGSEGV).
static jlong ApkAssets_nativeGetStringBlock(JNIEnv*, jclass, jlong ptr) {
  auto* sp = reinterpret_cast<WApk*>(ptr);
  if (!sp || !*sp) return 0;
  const LoadedArsc* arsc = (*sp)->GetLoadedArsc();
  if (!arsc) return 0;
  return reinterpret_cast<jlong>(arsc->GetStringPool());
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
  // AOSP JavaCookie convention: Java-visible cookies are 1-based (0/negative = invalid);
  // AssetManager.getResourceValue() treats a native return of <= 0 as NOT FOUND.
  env->SetIntField(outValue, env->GetFieldID(tv, "assetCookie", "I"), value.cookie + 1);
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
  return value.cookie + 1;  // JavaCookie (1-based)
}
// AssetManager.nativeOpenXmlAsset(long ptr, int cookie, String fileName) -> long (ResXMLTree*)
// The incoming cookie is a JavaCookie (1-based); convert to the 0-based ApkAssetsCookie.
static jlong AssetManager_nativeOpenXmlAsset(JNIEnv* env, jclass, jlong ptr, jint cookie, jstring fileName) {
  auto* am = reinterpret_cast<AssetManager2*>(ptr);
  std::string path = jstr(env, fileName);
  ApkAssetsCookie ac = cookie > 0 ? static_cast<ApkAssetsCookie>(cookie - 1) : kInvalidCookie;
  auto asset = am->OpenNonAsset(path, ac, Asset::AccessMode::ACCESS_RANDOM);
  if (!asset) return 0;
  auto buffer = asset->getIncFsBuffer(true /*aligned*/);
  const size_t length = asset->getLength();
  if (buffer.unsafe_ptr() == nullptr || length == 0) return 0;
  auto ref = am->GetDynamicRefTableForCookie(ac);
  auto* tree = new ResXMLTree(ref);
  if (tree->setTo(buffer.unsafe_ptr(), length, true) != NO_ERROR) { delete tree; return 0; }
  return reinterpret_cast<jlong>(tree);
}

// ---- Theme (AssetManager2::Theme) ----
// Mirrors AOSP android_util_AssetManager.cpp NativeTheme* using the compiled AssetManager2::Theme.
// The Theme is heap-allocated (new via NewTheme().release()) and owned by the Java-side
// NativeAllocationRegistry, whose free-function is nativeGetThemeFreeFunction -> ThemeDestroy.

// Fills an android.util.TypedValue from a resolved SelectedValue. Same convention/field writes as
// AssetManager_nativeGetResourceValue above (1-based JavaCookie; TYPE_STRING pulls from the pool).
static jint fillTypedValue(JNIEnv* env, AssetManager2* am,
                           const AssetManager2::SelectedValue& value, jint fallbackResId,
                           jobject outValue) {
  jclass tv = env->GetObjectClass(outValue);
  env->SetIntField(outValue, env->GetFieldID(tv, "type", "I"), value.type);
  env->SetIntField(outValue, env->GetFieldID(tv, "data", "I"), static_cast<jint>(value.data));
  env->SetIntField(outValue, env->GetFieldID(tv, "assetCookie", "I"),
                   value.cookie != kInvalidCookie ? value.cookie + 1 : -1);
  env->SetIntField(outValue, env->GetFieldID(tv, "resourceId", "I"),
                   value.resid ? static_cast<jint>(value.resid) : fallbackResId);
  env->SetIntField(outValue, env->GetFieldID(tv, "changingConfigurations", "I"),
                   static_cast<jint>(value.flags));
  env->SetIntField(outValue, env->GetFieldID(tv, "density", "I"), value.config.density);
  jfieldID sf = env->GetFieldID(tv, "string", "Ljava/lang/CharSequence;");
  jstring js = nullptr;
  if (value.type == 0x03 /*Res_value::TYPE_STRING*/ && am) {
    const ResStringPool* pool = am->GetStringPoolForCookie(value.cookie);
    if (pool) {
      auto s = pool->string8At(value.data);
      if (s.has_value()) js = env->NewStringUTF(std::string(s->data(), s->size()).c_str());
    }
  }
  if (sf) env->SetObjectField(outValue, sf, js);
  return value.cookie != kInvalidCookie ? value.cookie + 1 : -1;
}

// nativeThemeCreate(long assetManagerPtr) -> long : new AssetManager2::Theme owned by that AM.
static jlong AssetManager_nativeThemeCreate(JNIEnv*, jclass, jlong ptr) {
  auto* am = reinterpret_cast<AssetManager2*>(ptr);
  if (!am) return 0;
  return reinterpret_cast<jlong>(am->NewTheme().release());
}
// Free function handed to NativeAllocationRegistry: deletes the Theme.
static void AssetManager_nativeThemeDestroy(jlong themePtr) {
  delete reinterpret_cast<Theme*>(themePtr);
}
// nativeGetThemeFreeFunction() -> long : pointer to the theme free function (a void(*)(long)).
static jlong AssetManager_nativeGetThemeFreeFunction(JNIEnv*, jclass) {
  return static_cast<jlong>(reinterpret_cast<uintptr_t>(&AssetManager_nativeThemeDestroy));
}
// nativeThemeApplyStyle(long am, long theme, int resid, boolean force) -> void
static void AssetManager_nativeThemeApplyStyle(JNIEnv*, jclass, jlong /*ptr*/, jlong themePtr,
                                               jint resid, jboolean force) {
  Theme* theme = reinterpret_cast<Theme*>(themePtr);
  if (!theme) return;
  theme->ApplyStyle(static_cast<uint32_t>(resid), force);  // errors intentionally swallowed (CTS parity)
}
// nativeThemeCopy(long dstAm, long dstTheme, long srcAm, long srcTheme) -> void : dst->SetTo(*src)
static void AssetManager_nativeThemeCopy(JNIEnv*, jclass, jlong /*dstAm*/, jlong dstThemePtr,
                                         jlong /*srcAm*/, jlong srcThemePtr) {
  Theme* dst = reinterpret_cast<Theme*>(dstThemePtr);
  Theme* src = reinterpret_cast<Theme*>(srcThemePtr);
  if (!dst || !src) return;
  dst->SetTo(*src);
}
// nativeThemeGetAttributeValue(long am, long theme, int resid, TypedValue out, boolean resolve) -> int
static jint AssetManager_nativeThemeGetAttributeValue(JNIEnv* env, jclass, jlong ptr, jlong themePtr,
                                                      jint resid, jobject outValue,
                                                      jboolean resolveRefs) {
  auto* am = reinterpret_cast<AssetManager2*>(ptr);
  Theme* theme = reinterpret_cast<Theme*>(themePtr);
  if (!am || !theme) return -1;  // kInvalidCookie (JavaCookie)
  auto value = theme->GetAttribute(static_cast<uint32_t>(resid));
  if (!value.has_value()) return -1;
  if (resolveRefs) {
    auto r = am->ResolveReference(*value);
    if (!r.has_value()) return -1;
  }
  return fillTypedValue(env, am, *value, resid, outValue);
}
// nativeThemeGetChangingConfigurations(long theme) -> int
static jint AssetManager_nativeThemeGetChangingConfigurations(JNIEnv*, jclass, jlong themePtr) {
  Theme* theme = reinterpret_cast<Theme*>(themePtr);
  return theme ? static_cast<jint>(theme->GetChangingConfigurations()) : 0;
}

// ---- Style / attribute resolution (androidfw AttributeResolution free functions) ----
// Ports AOSP android_util_AssetManager.cpp NativeApplyStyle/NativeResolveAttrs/NativeRetrieveAttributes.
// out_values is a uint32_t array where each logical attr occupies STYLE_NUM_ENTRIES(7) slots.
// VERSION NOTE: this androidfw (AOSP-15) ApplyStyle() has NO resolve_refs bool arg (AOSP-11 did);
// the header (AttributeResolution.h) signature is followed exactly.
static void throwOOB(JNIEnv* env, const char* msg) {
  jclass c = env->FindClass("java/lang/IndexOutOfBoundsException");
  if (c) env->ThrowNew(c, msg);
}

// nativeApplyStyle(long am, long theme, int defStyleAttr, int defStyleRes, long xmlParser,
//                  int[] inAttrs, long outValuesAddr, long outIndicesAddr) -> void  [ART fast path]
// out_values/out_indices are raw native addresses (TypedArray-owned int[] pinned by the caller).
static void AssetManager_nativeApplyStyle(JNIEnv* env, jclass, jlong /*ptr*/, jlong themePtr,
                                          jint defStyleAttr, jint defStyleRes, jlong xmlParserPtr,
                                          jintArray javaAttrs, jlong outValuesAddr,
                                          jlong outIndicesAddr) {
  Theme* theme = reinterpret_cast<Theme*>(themePtr);
  if (!theme || !javaAttrs) return;
  ResXMLParser* xmlParser = reinterpret_cast<ResXMLParser*>(xmlParserPtr);  // may be null
  uint32_t* outValues = reinterpret_cast<uint32_t*>(outValuesAddr);
  uint32_t* outIndices = reinterpret_cast<uint32_t*>(outIndicesAddr);
  jsize attrsLen = env->GetArrayLength(javaAttrs);
  jint* attrs = reinterpret_cast<jint*>(env->GetPrimitiveArrayCritical(javaAttrs, nullptr));
  if (!attrs) return;
  ApplyStyle(theme, xmlParser, static_cast<uint32_t>(defStyleAttr),
             static_cast<uint32_t>(defStyleRes), reinterpret_cast<uint32_t*>(attrs),
             static_cast<size_t>(attrsLen), outValues, outIndices);
  env->ReleasePrimitiveArrayCritical(javaAttrs, attrs, JNI_ABORT);
}

// nativeResolveAttrs(long am, long theme, int defStyleAttr, int defStyleRes, int[] inValues,
//                    int[] inAttrs, int[] outValues, int[] outIndices) -> boolean
static jboolean AssetManager_nativeResolveAttrs(JNIEnv* env, jclass, jlong /*ptr*/, jlong themePtr,
                                                jint defStyleAttr, jint defStyleRes,
                                                jintArray javaValues, jintArray javaAttrs,
                                                jintArray outJavaValues, jintArray outJavaIndices) {
  Theme* theme = reinterpret_cast<Theme*>(themePtr);
  if (!theme || !javaAttrs || !outJavaValues) return JNI_FALSE;
  const jsize attrsLen = env->GetArrayLength(javaAttrs);
  const jsize outValuesLen = env->GetArrayLength(outJavaValues);
  if (outValuesLen < attrsLen * STYLE_NUM_ENTRIES) { throwOOB(env, "outValues too small"); return JNI_FALSE; }

  jint* attrs = reinterpret_cast<jint*>(env->GetPrimitiveArrayCritical(javaAttrs, nullptr));
  if (!attrs) return JNI_FALSE;
  jint* values = nullptr; jsize valuesLen = 0;
  if (javaValues) {
    valuesLen = env->GetArrayLength(javaValues);
    values = reinterpret_cast<jint*>(env->GetPrimitiveArrayCritical(javaValues, nullptr));
    if (!values) { env->ReleasePrimitiveArrayCritical(javaAttrs, attrs, JNI_ABORT); return JNI_FALSE; }
  }
  jint* outValues = reinterpret_cast<jint*>(env->GetPrimitiveArrayCritical(outJavaValues, nullptr));
  if (!outValues) {
    env->ReleasePrimitiveArrayCritical(javaAttrs, attrs, JNI_ABORT);
    if (values) env->ReleasePrimitiveArrayCritical(javaValues, values, JNI_ABORT);
    return JNI_FALSE;
  }
  jint* outIndices = nullptr;
  if (outJavaIndices && env->GetArrayLength(outJavaIndices) > attrsLen) {
    outIndices = reinterpret_cast<jint*>(env->GetPrimitiveArrayCritical(outJavaIndices, nullptr));
    if (!outIndices) {
      env->ReleasePrimitiveArrayCritical(javaAttrs, attrs, JNI_ABORT);
      if (values) env->ReleasePrimitiveArrayCritical(javaValues, values, JNI_ABORT);
      env->ReleasePrimitiveArrayCritical(outJavaValues, outValues, JNI_ABORT);
      return JNI_FALSE;
    }
  }
  auto result = ResolveAttrs(theme, static_cast<uint32_t>(defStyleAttr),
                             static_cast<uint32_t>(defStyleRes), reinterpret_cast<uint32_t*>(values),
                             static_cast<size_t>(valuesLen), reinterpret_cast<uint32_t*>(attrs),
                             static_cast<size_t>(attrsLen), reinterpret_cast<uint32_t*>(outValues),
                             reinterpret_cast<uint32_t*>(outIndices));
  if (outIndices) env->ReleasePrimitiveArrayCritical(outJavaIndices, outIndices, 0);
  env->ReleasePrimitiveArrayCritical(outJavaValues, outValues, 0);
  if (values) env->ReleasePrimitiveArrayCritical(javaValues, values, JNI_ABORT);
  env->ReleasePrimitiveArrayCritical(javaAttrs, attrs, JNI_ABORT);
  return result.has_value() ? JNI_TRUE : JNI_FALSE;
}

// nativeRetrieveAttributes(long am, long xmlParser, int[] inAttrs, int[] outValues, int[] outIndices) -> boolean
static jboolean AssetManager_nativeRetrieveAttributes(JNIEnv* env, jclass, jlong ptr,
                                                      jlong xmlParserPtr, jintArray javaAttrs,
                                                      jintArray outJavaValues, jintArray outJavaIndices) {
  auto* am = reinterpret_cast<AssetManager2*>(ptr);
  if (!am || !javaAttrs || !outJavaValues) return JNI_FALSE;
  const jsize attrsLen = env->GetArrayLength(javaAttrs);
  const jsize outValuesLen = env->GetArrayLength(outJavaValues);
  if (outValuesLen < attrsLen * STYLE_NUM_ENTRIES) { throwOOB(env, "outValues too small"); return JNI_FALSE; }
  jint* attrs = reinterpret_cast<jint*>(env->GetPrimitiveArrayCritical(javaAttrs, nullptr));
  if (!attrs) return JNI_FALSE;
  jint* outValues = reinterpret_cast<jint*>(env->GetPrimitiveArrayCritical(outJavaValues, nullptr));
  if (!outValues) { env->ReleasePrimitiveArrayCritical(javaAttrs, attrs, JNI_ABORT); return JNI_FALSE; }
  jint* outIndices = nullptr;
  if (outJavaIndices && env->GetArrayLength(outJavaIndices) > attrsLen) {
    outIndices = reinterpret_cast<jint*>(env->GetPrimitiveArrayCritical(outJavaIndices, nullptr));
    if (!outIndices) {
      env->ReleasePrimitiveArrayCritical(javaAttrs, attrs, JNI_ABORT);
      env->ReleasePrimitiveArrayCritical(outJavaValues, outValues, JNI_ABORT);
      return JNI_FALSE;
    }
  }
  ResXMLParser* xmlParser = reinterpret_cast<ResXMLParser*>(xmlParserPtr);  // may be null
  auto result = RetrieveAttributes(am, xmlParser, reinterpret_cast<uint32_t*>(attrs),
                                   static_cast<size_t>(attrsLen), reinterpret_cast<uint32_t*>(outValues),
                                   reinterpret_cast<uint32_t*>(outIndices));
  if (outIndices) env->ReleasePrimitiveArrayCritical(outJavaIndices, outIndices, 0);
  env->ReleasePrimitiveArrayCritical(outJavaValues, outValues, 0);
  env->ReleasePrimitiveArrayCritical(javaAttrs, attrs, JNI_ABORT);
  return result.has_value() ? JNI_TRUE : JNI_FALSE;
}

// ---- XmlBlock (parse the ResXMLTree returned by nativeOpenXmlAsset) ----
extern "C" JNIEXPORT jlong JNICALL Java_android_content_res_XmlBlock_nativeCreateParseState(JNIEnv*, jclass, jlong tree, jint /*resId*/) {
  ResXMLTree* t = reinterpret_cast<ResXMLTree*>(tree);
  if (!t) return 0;
  ResXMLParser* p = new ResXMLParser(*t);
  p->restart();
  FILE* df = fopen("/data/local/tmp/westlake-dayu600-substrate/apks/probe-logs/xmlblock.txt", "a");
  if (df) { fprintf(df, "[WL] nativeCreateParseState tree=%p treeErr=%d eventType=%d -> parser=%p\n",
                    (void*)t, (int)t->getError(), (int)p->getEventType(), (void*)p); fclose(df); }
  return reinterpret_cast<jlong>(p);
}
extern "C" JNIEXPORT void JNICALL Java_android_content_res_XmlBlock_nativeDestroyParseState(JNIEnv*, jclass, jlong state) {
  delete reinterpret_cast<ResXMLParser*>(state);
}
extern "C" JNIEXPORT jint JNICALL Java_android_content_res_XmlBlock_nativeNext(JNIEnv*, jclass, jlong state) {
  ResXMLParser* p = reinterpret_cast<ResXMLParser*>(state);
  if (!p) return 1;
  // Loop: ResXMLParser::next() also yields START/END_NAMESPACE events (0x0100/0x0101) that the
  // XmlPullParser interface skips — keep advancing until a mappable event.
  while (true) {
    ResXMLParser::event_code_t code = p->next();
    switch (code) {
      case ResXMLParser::START_TAG: return 2;  // XmlPullParser.START_TAG
      case ResXMLParser::END_TAG: return 3;
      case ResXMLParser::TEXT: return 4;
      case ResXMLParser::START_DOCUMENT: return 0;
      case ResXMLParser::END_DOCUMENT: return 1;
      case ResXMLParser::BAD_DOCUMENT: return 1;
      default: break;  // START_NAMESPACE / END_NAMESPACE -> skip
    }
  }
}
extern "C" JNIEXPORT jint JNICALL Java_android_content_res_XmlBlock_nativeGetName(JNIEnv*, jclass, jlong state) {
  ResXMLParser* p = reinterpret_cast<ResXMLParser*>(state);
  return p ? static_cast<jint>(p->getElementNameID()) : -1;
}
extern "C" JNIEXPORT jint JNICALL Java_android_content_res_XmlBlock_nativeGetAttributeCount(JNIEnv*, jclass, jlong state) {
  ResXMLParser* p = reinterpret_cast<ResXMLParser*>(state);
  return p ? static_cast<jint>(p->getAttributeCount()) : 0;
}
extern "C" JNIEXPORT jint JNICALL Java_android_content_res_XmlBlock_nativeGetText(JNIEnv*, jclass, jlong state) {
  ResXMLParser* p = reinterpret_cast<ResXMLParser*>(state);
  return p ? static_cast<jint>(p->getTextID()) : -1;
}
extern "C" JNIEXPORT jint JNICALL Java_android_content_res_XmlBlock_nativeGetNamespace(JNIEnv*, jclass, jlong state) {
  ResXMLParser* p = reinterpret_cast<ResXMLParser*>(state);
  return p ? static_cast<jint>(p->getElementNamespaceID()) : -1;
}
extern "C" JNIEXPORT jint JNICALL Java_android_content_res_XmlBlock_nativeGetLineNumber(JNIEnv*, jclass, jlong state) {
  ResXMLParser* p = reinterpret_cast<ResXMLParser*>(state);
  return p ? static_cast<jint>(p->getLineNumber()) : -1;
}
// String block (the XML tree's string pool) — XmlBlock.mStrings uses it to resolve indices.
extern "C" JNIEXPORT jlong JNICALL Java_android_content_res_XmlBlock_nativeGetStringBlock(JNIEnv*, jclass, jlong obj) {
  ResXMLTree* t = reinterpret_cast<ResXMLTree*>(obj);
  return t ? reinterpret_cast<jlong>(&t->getStrings()) : 0;
}
// ---- attribute getters (idx-based) ----
extern "C" JNIEXPORT jint JNICALL Java_android_content_res_XmlBlock_nativeGetAttributeNamespace(JNIEnv*, jclass, jlong state, jint idx) {
  ResXMLParser* p = reinterpret_cast<ResXMLParser*>(state);
  return p ? static_cast<jint>(p->getAttributeNamespaceID(idx)) : -1;
}
extern "C" JNIEXPORT jint JNICALL Java_android_content_res_XmlBlock_nativeGetAttributeName(JNIEnv*, jclass, jlong state, jint idx) {
  ResXMLParser* p = reinterpret_cast<ResXMLParser*>(state);
  return p ? static_cast<jint>(p->getAttributeNameID(idx)) : -1;
}
extern "C" JNIEXPORT jint JNICALL Java_android_content_res_XmlBlock_nativeGetAttributeResource(JNIEnv*, jclass, jlong state, jint idx) {
  ResXMLParser* p = reinterpret_cast<ResXMLParser*>(state);
  return p ? static_cast<jint>(p->getAttributeNameResID(idx)) : 0;
}
extern "C" JNIEXPORT jint JNICALL Java_android_content_res_XmlBlock_nativeGetAttributeDataType(JNIEnv*, jclass, jlong state, jint idx) {
  ResXMLParser* p = reinterpret_cast<ResXMLParser*>(state);
  return p ? static_cast<jint>(p->getAttributeDataType(idx)) : 0;
}
extern "C" JNIEXPORT jint JNICALL Java_android_content_res_XmlBlock_nativeGetAttributeData(JNIEnv*, jclass, jlong state, jint idx) {
  ResXMLParser* p = reinterpret_cast<ResXMLParser*>(state);
  return p ? static_cast<jint>(p->getAttributeData(idx)) : 0;
}
extern "C" JNIEXPORT jint JNICALL Java_android_content_res_XmlBlock_nativeGetAttributeStringValue(JNIEnv*, jclass, jlong state, jint idx) {
  ResXMLParser* p = reinterpret_cast<ResXMLParser*>(state);
  return p ? static_cast<jint>(p->getAttributeValueStringID(idx)) : -1;
}
extern "C" JNIEXPORT jint JNICALL Java_android_content_res_XmlBlock_nativeGetIdAttribute(JNIEnv*, jclass, jlong state) {
  ResXMLParser* p = reinterpret_cast<ResXMLParser*>(state);
  if (!p) return -1;
  ssize_t i = p->indexOfID();
  return i < 0 ? -1 : static_cast<jint>(p->getAttributeValueStringID(i));
}
extern "C" JNIEXPORT jint JNICALL Java_android_content_res_XmlBlock_nativeGetClassAttribute(JNIEnv*, jclass, jlong state) {
  ResXMLParser* p = reinterpret_cast<ResXMLParser*>(state);
  if (!p) return -1;
  ssize_t i = p->indexOfClass();
  return i < 0 ? -1 : static_cast<jint>(p->getAttributeValueStringID(i));
}
extern "C" JNIEXPORT jint JNICALL Java_android_content_res_XmlBlock_nativeGetStyleAttribute(JNIEnv*, jclass, jlong state) {
  ResXMLParser* p = reinterpret_cast<ResXMLParser*>(state);
  if (!p) return 0;
  ssize_t i = p->indexOfStyle();
  if (i < 0) return 0;
  Res_value v;
  if (p->getAttributeValue(i, &v) < 0) return 0;
  return (v.dataType == Res_value::TYPE_REFERENCE || v.dataType == Res_value::TYPE_ATTRIBUTE)
             ? static_cast<jint>(v.data) : 0;
}
extern "C" JNIEXPORT jint JNICALL Java_android_content_res_XmlBlock_nativeGetSourceResId(JNIEnv*, jclass, jlong state) {
  ResXMLParser* p = reinterpret_cast<ResXMLParser*>(state);
  return p ? static_cast<jint>(p->getSourceResourceId()) : 0;
}
static const JNINativeMethod kXmlBlock[] = {
  {"nativeCreateParseState", "(JI)J", (void*)Java_android_content_res_XmlBlock_nativeCreateParseState},
  {"nativeDestroyParseState", "(J)V", (void*)Java_android_content_res_XmlBlock_nativeDestroyParseState},
  {"nativeDestroy", "(J)V", (void*)Java_android_content_res_XmlBlock_nativeDestroyParseState},
  {"nativeNext", "(J)I", (void*)Java_android_content_res_XmlBlock_nativeNext},
  {"nativeGetName", "(J)I", (void*)Java_android_content_res_XmlBlock_nativeGetName},
  {"nativeGetText", "(J)I", (void*)Java_android_content_res_XmlBlock_nativeGetText},
  {"nativeGetNamespace", "(J)I", (void*)Java_android_content_res_XmlBlock_nativeGetNamespace},
  {"nativeGetLineNumber", "(J)I", (void*)Java_android_content_res_XmlBlock_nativeGetLineNumber},
  {"nativeGetStringBlock", "(J)J", (void*)Java_android_content_res_XmlBlock_nativeGetStringBlock},
  {"nativeGetAttributeCount", "(J)I", (void*)Java_android_content_res_XmlBlock_nativeGetAttributeCount},
  {"nativeGetAttributeNamespace", "(JI)I", (void*)Java_android_content_res_XmlBlock_nativeGetAttributeNamespace},
  {"nativeGetAttributeName", "(JI)I", (void*)Java_android_content_res_XmlBlock_nativeGetAttributeName},
  {"nativeGetAttributeResource", "(JI)I", (void*)Java_android_content_res_XmlBlock_nativeGetAttributeResource},
  {"nativeGetAttributeDataType", "(JI)I", (void*)Java_android_content_res_XmlBlock_nativeGetAttributeDataType},
  {"nativeGetAttributeData", "(JI)I", (void*)Java_android_content_res_XmlBlock_nativeGetAttributeData},
  {"nativeGetAttributeStringValue", "(JI)I", (void*)Java_android_content_res_XmlBlock_nativeGetAttributeStringValue},
  {"nativeGetIdAttribute", "(J)I", (void*)Java_android_content_res_XmlBlock_nativeGetIdAttribute},
  {"nativeGetClassAttribute", "(J)I", (void*)Java_android_content_res_XmlBlock_nativeGetClassAttribute},
  {"nativeGetStyleAttribute", "(J)I", (void*)Java_android_content_res_XmlBlock_nativeGetStyleAttribute},
  {"nativeGetSourceResId", "(J)I", (void*)Java_android_content_res_XmlBlock_nativeGetSourceResId},
};

// ---- StringBlock (resolves ResStringPool indices -> Java Strings; obj = ResStringPool*) ----
extern "C" JNIEXPORT jint JNICALL Java_android_content_res_StringBlock_nativeGetSize(JNIEnv*, jclass, jlong obj) {
  ResStringPool* pool = reinterpret_cast<ResStringPool*>(obj);
  return pool ? static_cast<jint>(pool->size()) : 0;
}
extern "C" JNIEXPORT jstring JNICALL Java_android_content_res_StringBlock_nativeGetString(JNIEnv* env, jclass, jlong obj, jint idx) {
  ResStringPool* pool = reinterpret_cast<ResStringPool*>(obj);
  if (!pool) return nullptr;
  auto s8 = pool->string8At(idx);
  if (s8.has_value()) return env->NewStringUTF(std::string(s8->data(), s8->size()).c_str());
  auto s16 = pool->stringAt(idx);
  if (!s16.has_value()) return nullptr;
  std::string out;  // UTF-16 -> UTF-8
  for (size_t i = 0; i < s16->size(); i++) {
    char16_t c = (*s16)[i];
    if (c < 0x80) { out.push_back(static_cast<char>(c)); }
    else if (c < 0x800) { out.push_back(0xC0 | (c >> 6)); out.push_back(0x80 | (c & 0x3f)); }
    else { out.push_back(0xE0 | (c >> 12)); out.push_back(0x80 | ((c >> 6) & 0x3f)); out.push_back(0x80 | (c & 0x3f)); }
  }
  return env->NewStringUTF(out.c_str());
}
extern "C" JNIEXPORT jobject JNICALL Java_android_content_res_StringBlock_nativeGetStyle(JNIEnv*, jclass, jlong, jint) { return nullptr; }
extern "C" JNIEXPORT void JNICALL Java_android_content_res_StringBlock_nativeDestroy(JNIEnv*, jclass, jlong) { /* pool freed with owner; leak standalone pools rather than risk double-free */ }
// StringBlock.nativeCreate(byte[] data, int offset, int length) -> long (ResStringPool*).
// The framework builds a standalone StringBlock over a resource string pool this way (e.g.
// during layout inflation). Copy the bytes into an owned ResStringPool so nativeGetSize/String work.
extern "C" JNIEXPORT jlong JNICALL Java_android_content_res_StringBlock_nativeCreate(
    JNIEnv* env, jclass, jbyteArray data, jint offset, jint length) {
  if (!data || length <= 0) return 0;
  jsize total = env->GetArrayLength(data);
  if (offset < 0 || (jlong)offset + length > total) return 0;
  jbyte* buf = env->GetByteArrayElements(data, nullptr);
  if (!buf) return 0;
  ResStringPool* pool = new ResStringPool();
  status_t err = pool->setTo(buf + offset, (size_t)length, true /*copyData*/);
  env->ReleaseByteArrayElements(data, buf, JNI_ABORT);
  if (err != NO_ERROR) { delete pool; return 0; }
  return reinterpret_cast<jlong>(pool);
}
static const JNINativeMethod kStringBlock[] = {
  {"nativeGetSize", "(J)I", (void*)Java_android_content_res_StringBlock_nativeGetSize},
  {"nativeGetString", "(JI)Ljava/lang/String;", (void*)Java_android_content_res_StringBlock_nativeGetString},
  {"nativeGetStyle", "(JI)[I", (void*)Java_android_content_res_StringBlock_nativeGetStyle},
  {"nativeDestroy", "(J)V", (void*)Java_android_content_res_StringBlock_nativeDestroy},
  {"nativeCreate", "([BII)J", (void*)Java_android_content_res_StringBlock_nativeCreate},
};

static const JNINativeMethod kApkAssets[] = {
  {"nativeLoad", "(ILjava/lang/String;ILandroid/content/res/loader/AssetsProvider;)J", (void*)ApkAssets_nativeLoad},
  {"nativeDestroy", "(J)V", (void*)ApkAssets_nativeDestroy},
  {"nativeGetAssetPath", "(J)Ljava/lang/String;", (void*)ApkAssets_nativeGetAssetPath},
  {"nativeGetStringBlock", "(J)J", (void*)ApkAssets_nativeGetStringBlock},
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
// Theme natives — registered per-entry (like kXmlBlock) so a signature mismatch in one does not
// nuke the whole batch (RegisterNatives is all-or-nothing per call).
static const JNINativeMethod kAssetManagerTheme[] = {
  {"nativeThemeCreate", "(J)J", (void*)AssetManager_nativeThemeCreate},
  {"nativeGetThemeFreeFunction", "()J", (void*)AssetManager_nativeGetThemeFreeFunction},
  {"nativeThemeApplyStyle", "(JJIZ)V", (void*)AssetManager_nativeThemeApplyStyle},
  {"nativeThemeCopy", "(JJJJ)V", (void*)AssetManager_nativeThemeCopy},
  {"nativeThemeGetAttributeValue", "(JJILandroid/util/TypedValue;Z)I",
   (void*)AssetManager_nativeThemeGetAttributeValue},
  {"nativeThemeGetChangingConfigurations", "(J)I",
   (void*)AssetManager_nativeThemeGetChangingConfigurations},
};
// Style / attribute-resolution natives (obtainStyledAttributes / inflate). Per-entry registered.
// nativeApplyStyle signature CONFIRMED by runtime error: (J J I I J [I J J)V (long-address out).
static const JNINativeMethod kAssetManagerStyle[] = {
  {"nativeApplyStyle", "(JJIIJ[IJJ)V", (void*)AssetManager_nativeApplyStyle},
  {"nativeResolveAttrs", "(JJII[I[I[I[I)Z", (void*)AssetManager_nativeResolveAttrs},
  {"nativeRetrieveAttributes", "(JJ[I[I[I)Z", (void*)AssetManager_nativeRetrieveAttributes},
};

extern "C" JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM* vm, void*) {
  JNIEnv* env = nullptr;
  if (vm->GetEnv((void**)&env, JNI_VERSION_1_6) != JNI_OK) return -1;
  jclass am = env->FindClass("android/content/res/AssetManager");
  jclass ak = env->FindClass("android/content/res/ApkAssets");
  if (am) env->RegisterNatives(am, kAssetManager, 7);
  if (ak) env->RegisterNatives(ak, kApkAssets, 4);
  jclass xb = env->FindClass("android/content/res/XmlBlock");
  if (env->ExceptionCheck()) env->ExceptionClear();
  FILE* df = fopen("/data/local/tmp/westlake-dayu600-substrate/apks/probe-logs/jni-onload.txt", "w");
  if (df) fprintf(df, "XmlBlock found=%d\n", xb != nullptr);
  if (xb) {
    for (size_t i = 0; i < 20; i++) {
      int rc = env->RegisterNatives(xb, &kXmlBlock[i], 1);
      if (env->ExceptionCheck()) env->ExceptionClear();
      if (df && rc != 0) fprintf(df, "  FAIL %s %s rc=%d\n", kXmlBlock[i].name, kXmlBlock[i].signature, rc);
    }
  }
  jclass sb = env->FindClass("android/content/res/StringBlock");
  if (env->ExceptionCheck()) env->ExceptionClear();
  if (df) fprintf(df, "StringBlock found=%d\n", sb != nullptr);
  if (sb) {
    for (size_t i = 0; i < 5; i++) {
      int rc = env->RegisterNatives(sb, &kStringBlock[i], 1);
      if (env->ExceptionCheck()) env->ExceptionClear();
      if (df && rc != 0) fprintf(df, "  FAIL %s %s rc=%d\n", kStringBlock[i].name, kStringBlock[i].signature, rc);
    }
  }
  // Theme natives on AssetManager — per-entry so one missing/renamed method can't fail the rest.
  if (env->ExceptionCheck()) env->ExceptionClear();
  int themeOk = 0;
  if (am) {
    const size_t n = sizeof(kAssetManagerTheme) / sizeof(kAssetManagerTheme[0]);
    for (size_t i = 0; i < n; i++) {
      int rc = env->RegisterNatives(am, &kAssetManagerTheme[i], 1);
      if (env->ExceptionCheck()) env->ExceptionClear();
      if (rc == 0) themeOk++;
      else if (df) fprintf(df, "  THEME FAIL %s %s rc=%d\n",
                           kAssetManagerTheme[i].name, kAssetManagerTheme[i].signature, rc);
    }
    if (df) fprintf(df, "AssetManager theme natives registered=%d/%zu\n", themeOk, n);
  }
  // Style / attribute-resolution natives on AssetManager — per-entry as well.
  if (env->ExceptionCheck()) env->ExceptionClear();
  int styleOk = 0;
  if (am) {
    const size_t n = sizeof(kAssetManagerStyle) / sizeof(kAssetManagerStyle[0]);
    for (size_t i = 0; i < n; i++) {
      int rc = env->RegisterNatives(am, &kAssetManagerStyle[i], 1);
      if (env->ExceptionCheck()) env->ExceptionClear();
      if (rc == 0) styleOk++;
      else if (df) fprintf(df, "  STYLE FAIL %s %s rc=%d\n",
                           kAssetManagerStyle[i].name, kAssetManagerStyle[i].signature, rc);
    }
    if (df) fprintf(df, "AssetManager style natives registered=%d/%zu\n", styleOk, n);
  }
  if (df) { fprintf(df, "done\n"); fclose(df); }
  LOGI("registered AssetManager(%d)/ApkAssets(%d)/XmlBlock(%d)/StringBlock(%d)/Theme(%d)/Style(%d) natives",
       am != nullptr, ak != nullptr, xb != nullptr, sb != nullptr, themeOk, styleOk);
  return JNI_VERSION_1_6;
}
