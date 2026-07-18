/*
 * wl_selective_native_util.h — westlake selective JNI binder for ART core registrars.
 *
 * Problem this solves
 * -------------------
 * ART's stock runtime/native/native_util.h registers each core class's whole
 * JNINativeMethod table in ONE env->RegisterNatives() call and does
 *     CHECK_EQ(JNI_OK, jni_result);
 * i.e. LOG(FATAL) if *any* single method in the table is absent from the Java
 * side.  When the ART build (aosp-art-15-r9) is newer than the board's
 * framework/core jars, a handful of natives simply do not exist yet in the
 * board's core-libart.jar (observed on DAYU600 / OH 6.1.0.31:
 *   dalvik.system.VMRuntime.getFullGcCount()J
 * ) and the VM aborts with SIGABRT before finishing startup.
 *
 * Approach: probe before binding, never collide
 * ---------------------------------------------
 * An earlier revision registered per method and tolerated the resulting
 * failure. That still let ART *construct* a NoSuchMethodError for every
 * missing method, and on DAYU600 building that object is itself unsafe:
 * NoSuchMethodError.<init> -> ... -> Throwable.<init>(Throwable.java:219)
 * raised "IllegalMonitorStateException: object not locked by thread before
 * notify()" and ART died on "Throwing new exception with unexpected pending
 * exception" (thread.cc:2578) while registering java.io.FileInputStream.
 *
 * So we now ask first and only ever register methods that will succeed. The
 * question cannot be put to JNI - GetMethodID/GetStaticMethodID throw
 * NoSuchMethodError on a miss, which is the very object we are avoiding - so
 * it goes to wl_native_method_probe() (stubs/wl_method_probe.cc), which reads
 * ART's own class metadata and cannot throw.
 *
 * Anything the probe accepts is registered in a single bulk call. A failure
 * there means probe and RegisterNatives disagree, which is a real bug: it is
 * reported loudly and the offending methods are retried individually so one
 * bad entry cannot cost the whole table.
 *
 * How it is installed
 * -------------------
 * runtime/native/*.cc use a *quoted* include ("native_util.h"), which always
 * resolves to the file next to the includer, so -I cannot override it.
 * tools/build-r9-native-selective.sh therefore rewrites that one include line
 * to point here and compiles the result out of a generated directory.
 *
 * NOTE: this header must be included at the *original* include site, not
 * force-included with -include.  stubs/base/macros.h and stubs/android-base/
 * shadow their libartbase/AOSP namesakes for quoted includes originating in
 * stubs/; pulling them in before the TU's own prelude sets their include guards
 * to the stub versions, and the real definitions (NO_RETURN, UNREACHABLE, ...)
 * then never load.  Included at the normal site, the TU has already loaded the
 * real headers and these includes are no-ops - the same contract the older
 * stubs/tolerant_native_util.h relies on.  For the same reason the probe is
 * declared extern "C" here rather than including any ART internal header.
 *
 * Everything logs under the greppable tag WL_SELBIND.
 */

#ifndef WL_SELECTIVE_NATIVE_UTIL_H_
#define WL_SELECTIVE_NATIVE_UTIL_H_

/* Neutralise the two headers we are replacing. Must happen before either is
 * (transitively) included by the translation unit. */
#define ART_RUNTIME_NATIVE_NATIVE_UTIL_H_
#define ART_TOLERANT_NATIVE_UTIL_H_

#include <jni.h>

#include <vector>

#include "android-base/logging.h"
#include "base/macros.h"
#include "nativehelper/scoped_local_ref.h"

/* stubs/wl_method_probe.cc. Returns 1 = present and native (registrable),
 * -1 = present but implemented in Java, 0 = no such method. Never throws. */
extern "C" int wl_native_method_probe(JNIEnv* env,
                                      jclass java_class,
                                      const char* name,
                                      const char* sig);

namespace art HIDDEN {

ALWAYS_INLINE inline void RegisterNativeMethodsInternal(JNIEnv* env,
                                                        const char* jni_class_name,
                                                        const JNINativeMethod* methods,
                                                        jint method_count) {
  ScopedLocalRef<jclass> c(env, env->FindClass(jni_class_name));
  if (c.get() == nullptr) {
    // Pre-existing westlake behaviour (tolerant_native_util.h): a core class the
    // board's jars do not carry at all is skipped rather than fatal, otherwise
    // the VM cannot start on a mismatched substrate at all.
    if (env->ExceptionCheck()) {
      env->ExceptionClear();
    }
    LOG(ERROR) << "WL_SELBIND class-missing " << jni_class_name
               << " (skipping all " << method_count << " natives)";
    return;
  }

  std::vector<JNINativeMethod> registrable;
  registrable.reserve(static_cast<size_t>(method_count));
  jint absent = 0;
  jint not_native = 0;

  for (jint i = 0; i < method_count; ++i) {
    const int probe = wl_native_method_probe(env, c.get(), methods[i].name, methods[i].signature);
    if (probe == 1) {
      registrable.push_back(methods[i]);
      continue;
    }
    if (probe == 0) {
      ++absent;
      LOG(ERROR) << "WL_SELBIND skip " << jni_class_name << "." << methods[i].name
                 << methods[i].signature << " (absent from board jar)";
    } else {
      ++not_native;
      LOG(ERROR) << "WL_SELBIND skip " << jni_class_name << "." << methods[i].name
                 << methods[i].signature << " (present but implemented in Java)";
    }
  }

  jint bound = static_cast<jint>(registrable.size());
  if (bound != 0 &&
      env->RegisterNatives(c.get(), registrable.data(), bound) != JNI_OK) {
    // The probe vetted every entry, so this should be unreachable. Do not let a
    // single bad entry cost the whole table, but make the disagreement loud.
    if (env->ExceptionCheck()) {
      env->ExceptionClear();
    }
    LOG(ERROR) << "WL_SELBIND UNEXPECTED bulk RegisterNatives failed for " << jni_class_name
               << " after probing - retrying per method";
    bound = 0;
    for (const JNINativeMethod& m : registrable) {
      if (env->RegisterNatives(c.get(), &m, 1) == JNI_OK) {
        ++bound;
        continue;
      }
      if (env->ExceptionCheck()) {
        env->ExceptionClear();
      }
      ++absent;
      LOG(ERROR) << "WL_SELBIND UNEXPECTED skip " << jni_class_name << "." << m.name
                 << m.signature << " - probe said registrable but RegisterNatives refused";
    }
  }

  if (absent != 0 || not_native != 0) {
    LOG(ERROR) << "WL_SELBIND summary " << jni_class_name
               << " bound=" << bound
               << " absent=" << absent
               << " non-native=" << not_native
               << " total=" << method_count;
  }
}

#define REGISTER_NATIVE_METHODS(jni_class_name) \
  RegisterNativeMethodsInternal(env, (jni_class_name), gMethods, arraysize(gMethods))

}  // namespace art

#endif  // WL_SELECTIVE_NATIVE_UTIL_H_
