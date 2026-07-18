/*
 * wl_method_probe.cc — westlake OHOS relink.
 *
 * WHY THIS FILE EXISTS
 * --------------------
 * We register ART's core-class JNI tables against a board whose framework jars
 * are OLDER than this ART build, so some natives in the tables simply are not
 * in the board's dex. The obvious guard - "ask JNI whether the method exists
 * before registering it" - does NOT work:
 *
 *     env->GetMethodID() / GetStaticMethodID()
 *         -> JNI::FindMethodID -> ThrowNoSuchMethodError()
 *
 * i.e. the probe itself constructs a NoSuchMethodError, which is exactly the
 * object we must avoid building. On DAYU600 that construction aborts the VM:
 * NoSuchMethodError.<init> -> ... -> Throwable.<init>(Throwable.java:219)
 * raises "IllegalMonitorStateException: object not locked by thread before
 * notify()", and ART then dies on "Throwing new exception with unexpected
 * pending exception" (thread.cc:2578). env->RegisterNatives() has the same
 * problem for the same reason.
 *
 * So the probe has to run below JNI, on ART's own class metadata, where a
 * miss is just a null pointer and nothing is ever thrown. That is what this
 * file provides. It mirrors the search JNI::RegisterNatives itself performs
 * (runtime/jni/jni_internal.cc): walk the class then its superclasses, and for
 * each look for a name+signature match, preferring a native one.
 *
 * Exposed as extern "C" so the plain-C JNI stubs (stubs/openjdk_stub.c, ...)
 * can use it too, and so stubs/wl_selective_native_util.h can stay free of ART
 * internal headers - that header is included by all 33 runtime/native/*.cc TUs
 * and must not drag stubs/base/macros.h into them (see its own comment).
 *
 * Return value:
 *    1  method exists and is native      -> safe to RegisterNatives
 *   -1  method exists but is NOT native  -> must skip (board implements it in
 *                                           Java; registering would throw)
 *    0  no such method                   -> must skip
 */

#include <jni.h>

#include <cstring>
#include <string>
#include <string_view>

#include "art_method-inl.h"
#include "base/pointer_size.h"
#include "class_linker.h"
#include "mirror/class-inl.h"
#include "obj_ptr.h"
#include "runtime.h"
#include "scoped_thread_state_change-inl.h"

extern "C" int wl_native_method_probe(JNIEnv* env,
                                      jclass java_class,
                                      const char* name,
                                      const char* sig) {
  if (env == nullptr || java_class == nullptr || name == nullptr || sig == nullptr) {
    return 0;
  }
  // Legacy "!bang JNI" fast-native marker; RegisterNatives strips it before
  // matching, so we must too or every fast native looks absent.
  if (*sig == '!') {
    ++sig;
  }

  art::ScopedObjectAccess soa(env);
  art::ObjPtr<art::mirror::Class> c = soa.Decode<art::mirror::Class>(java_class);
  if (c == nullptr) {
    return 0;
  }

  const std::string_view name_sv(name);
  const std::string_view sig_sv(sig);
  const art::PointerSize pointer_size =
      art::Runtime::Current()->GetClassLinker()->GetImagePointerSize();

  for (art::ObjPtr<art::mirror::Class> k = c; k != nullptr; k = k->GetSuperClass()) {
    art::ArtMethod* fallback = nullptr;
    for (auto& m : k->GetMethods(pointer_size)) {
      if (name_sv == m.GetName() && m.GetSignature() == sig_sv) {
        if (m.IsNative()) {
          return 1;  // exact match, native: registrable
        }
        fallback = &m;  // remember, but keep looking for a native overload
      }
    }
    if (fallback != nullptr) {
      return -1;  // present in this class but implemented in Java
    }
  }
  return 0;
}

/*
 * Class descriptor for logging, e.g. "java.io.FileInputStream".
 * The plain-C stubs hold only a jclass, and asking JNI for the name means
 * calling Class.getName() (managed code) - avoidable, so read it off the
 * mirror instead. Always NUL-terminates; never throws.
 */
extern "C" void wl_class_descriptor(JNIEnv* env, jclass java_class, char* buf, int buflen) {
  if (buf == nullptr || buflen <= 0) {
    return;
  }
  buf[0] = '\0';
  if (env == nullptr || java_class == nullptr) {
    return;
  }
  art::ScopedObjectAccess soa(env);
  art::ObjPtr<art::mirror::Class> c = soa.Decode<art::mirror::Class>(java_class);
  if (c == nullptr) {
    return;
  }
  const std::string pretty = c->PrettyDescriptor();
  const int n = static_cast<int>(pretty.size());
  const int copy = (n < buflen - 1) ? n : (buflen - 1);
  memcpy(buf, pretty.c_str(), static_cast<size_t>(copy));
  buf[copy] = '\0';
}
