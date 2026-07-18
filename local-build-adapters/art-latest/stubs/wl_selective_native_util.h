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
 * Approach
 * --------
 * Register the table one method at a time and skip ONLY the methods whose
 * failure is "the Java side has no such (native) method" — which ART signals by
 * throwing java.lang.NoSuchMethodError from JNI::RegisterNatives (both the
 * "no such method" and the "method exists but is not native" branches).  Any
 * other failure is still LOG(FATAL), so genuine bugs are not silenced.
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
 * stubs/tolerant_native_util.h relies on.
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

#include "android-base/logging.h"
#include "base/macros.h"
#include "nativehelper/scoped_local_ref.h"

namespace art HIDDEN {

// Returns true iff a NoSuchMethodError is pending; consumes the pending
// exception either way. Leaves no exception pending on return.
inline bool WlSelBindConsumeNoSuchMethodError(JNIEnv* env) {
  if (!env->ExceptionCheck()) {
    return false;
  }
  ScopedLocalRef<jthrowable> pending(env, env->ExceptionOccurred());
  env->ExceptionClear();
  if (pending.get() == nullptr) {
    return false;
  }
  ScopedLocalRef<jclass> nsme(env, env->FindClass("java/lang/NoSuchMethodError"));
  if (nsme.get() == nullptr) {
    // Cannot classify without the class; do not swallow.
    env->ExceptionClear();
    return false;
  }
  return env->IsInstanceOf(pending.get(), nsme.get()) == JNI_TRUE;
}

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

  // Fast path: whole table at once. Only on failure do we pay for per-method
  // registration (and for ART's very verbose DumpClass on each failure).
  if (env->RegisterNatives(c.get(), methods, method_count) == JNI_OK) {
    return;
  }
  if (env->ExceptionCheck()) {
    env->ExceptionClear();
  }

  jint bound = 0;
  jint skipped = 0;
  for (jint i = 0; i < method_count; ++i) {
    if (env->RegisterNatives(c.get(), &methods[i], 1) == JNI_OK) {
      ++bound;
      continue;
    }
    if (!WlSelBindConsumeNoSuchMethodError(env)) {
      // Not a generational gap - a real registration bug. Keep it loud.
      LOG(FATAL) << "WL_SELBIND fatal " << jni_class_name << "." << methods[i].name
                 << methods[i].signature
                 << " : RegisterNatives failed without a pending NoSuchMethodError";
    }
    ++skipped;
    LOG(ERROR) << "WL_SELBIND skip " << jni_class_name << "." << methods[i].name
               << methods[i].signature << " (absent from board jar)";
  }

  LOG(ERROR) << "WL_SELBIND summary " << jni_class_name
             << " bound=" << bound << " skipped=" << skipped
             << " total=" << method_count;
}

#define REGISTER_NATIVE_METHODS(jni_class_name) \
  RegisterNativeMethodsInternal(env, (jni_class_name), gMethods, arraysize(gMethods))

}  // namespace art

#endif  // WL_SELECTIVE_NATIVE_UTIL_H_
