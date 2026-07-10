/*
 * Copyright (C) 2012 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include "interpreter.h"
#include "nth_caller_visitor.h"

#include <algorithm>
#include <cstdlib>
#include <cstring>
#include <dlfcn.h>
#include <unistd.h>
#include <sys/stat.h>
#include <limits>
#include <string_view>



#include "common_dex_operations.h"
#include "common_throws.h"
#include "dex/dex_file_types.h"
#include "handle_scope.h"
#include "interpreter_common.h"
#include "interpreter_switch_impl.h"
#include "jit/jit.h"
#include "jit/jit_code_cache.h"
#include "jvalue-inl.h"
#include "mirror/class-inl.h"
#include "mirror/method_handles_lookup.h"
#include "mirror/object-inl.h"
#include "mirror/string-inl.h"
#include "nativehelper/scoped_local_ref.h"
#include "scoped_thread_state_change-inl.h"
#include "shadow_frame-inl.h"
#include "stack.h"
#include "thread-inl.h"
#include "unstarted_runtime.h"
#include "entrypoints/runtime_asm_entrypoints.h"
#include "jni/java_vm_ext.h"
#include "jni/jni_env_ext.h"

namespace art HIDDEN {
namespace interpreter {

ALWAYS_INLINE static ObjPtr<mirror::Object> ObjArg(uint32_t arg)
    REQUIRES_SHARED(Locks::mutator_lock_) {
  return reinterpret_cast<mirror::Object*>(arg);
}

static int32_t WestlakeStringLastIndexOf(ObjPtr<mirror::String> haystack,
                                         ObjPtr<mirror::String> needle,
                                         int32_t from_index)
    REQUIRES_SHARED(Locks::mutator_lock_) {
  const int32_t haystack_len = haystack->GetLength();
  const int32_t needle_len = needle->GetLength();
  if (needle_len == 0) {
    return std::min(from_index, haystack_len);
  }
  if (from_index > haystack_len - needle_len) {
    from_index = haystack_len - needle_len;
  }
  if (from_index < 0) {
    return -1;
  }
  for (int32_t i = from_index; i >= 0; --i) {
    bool match = true;
    for (int32_t j = 0; j < needle_len; ++j) {
      if (haystack->CharAt(i + j) != needle->CharAt(j)) {
        match = false;
        break;
      }
    }
    if (match) {
      return i;
    }
  }
  return -1;
}

static bool WestlakeTraceTimeZoneBridge() {
  const char* value = getenv("WESTLAKE_TRACE_TZ");
  return value != nullptr && value[0] != '\0' && strcmp(value, "0") != 0 &&
         strcmp(value, "false") != 0 && strcmp(value, "FALSE") != 0;
}

// [DAYU600] The correct libcore.io.Linux file natives live in runtime.cc, but another
// registration (OHBridge stub) sometimes wins the JNI entry point and returns corrupt
// data (→ false ZipException:Duplicate on jar parse). Call the real impls directly.
extern "C" jint Westlake_Linux_readBytes(JNIEnv*, jobject, jobject, jobject, jint, jint);
extern "C" jint Westlake_Linux_writeBytes(JNIEnv*, jobject, jobject, jobject, jint, jint);
extern "C" jlong Westlake_Linux_lseek(JNIEnv*, jobject, jobject, jlong, jint);
// [DAYU600] no-op body for unregistered void natives (defined in quick_trampoline_entrypoints.cc).
extern "C" void WlCriticalNoop();

// [DAYU600] FindCodeForNativeMethod is scoped to the method's classloader libraries, so it misses
// framework natives that physically live in libandroidfw but weren't registered into the boot
// classloader's library list (e.g. XmlBlock's @CriticalNative parser methods nativeNext/nativeGetName/
// ...). Build the plain JNI symbol name (Java_<pkg>_<Class>_<method>) and dlsym it straight out of
// libandroidfw. Returns nullptr if not there.
static const void* WlDlsymFrameworkNative(art::ArtMethod* method)
    REQUIRES_SHARED(art::Locks::mutator_lock_) {
  static void* fw = nullptr;
  if (fw == nullptr) {
    fw = dlopen("libandroidfw.so", RTLD_NOW | RTLD_GLOBAL);
    if (fw == nullptr) fw = dlopen(
        "/data/local/tmp/westlake-dayu600-substrate/android/lib64/libandroidfw.so",
        RTLD_NOW | RTLD_GLOBAL);
  }
  if (fw == nullptr) return nullptr;
  std::string cls_desc;
  const char* desc = method->GetDeclaringClass()->GetDescriptor(&cls_desc);
  if (desc == nullptr || desc[0] != 'L') return nullptr;
  std::string sym = "Java_";
  for (const char* p = desc + 1; *p != '\0' && *p != ';'; ++p) sym += (*p == '/') ? '_' : *p;
  sym += '_';
  sym += method->GetName();
  return dlsym(fw, sym.c_str());
}

// ============================================================================
// [DAYU600 / WestLake] Generic InterpreterJni dispatcher.
// Marshals ANY shorty (arbitrary arg count/type, any of the 3 JNI calling
// conventions) into a single AArch64 AAPCS64 call, so a registered native whose
// shorty has no hand-written branch below is actually INVOKED instead of dropped.
// No libffi in this environment, so we hand-roll the equivalent: a tiny asm
// trampoline that loads x0-x7 / d0-d7 / stack from C-side arrays and blr's the
// native. C-side classifies every shorty char into the GP bank, FP bank, or the
// overflow stack, following AAPCS64.
// ============================================================================
#if defined(__aarch64__)
extern "C" void westlake_jni_trampoline(const void* fn,
                                        const uint64_t* gpr,   // -> x0..x7
                                        const uint64_t* fpr,   // -> d0..d7 (raw bits)
                                        const uint64_t* stack, // overflow GP args, 8B each
                                        uint64_t n_stack,
                                        uint64_t* out_gp,      // <- x0
                                        uint64_t* out_fp);     // <- d0
asm(
  ".text\n"
  ".p2align 2\n"
  ".globl westlake_jni_trampoline\n"
  ".type westlake_jni_trampoline, %function\n"
  "westlake_jni_trampoline:\n"
  "    stp x29, x30, [sp, #-96]!\n"
  "    mov x29, sp\n"
  "    stp x19, x20, [sp, #16]\n"
  "    stp x21, x22, [sp, #32]\n"
  "    stp x23, x24, [sp, #48]\n"
  "    stp x25, x26, [sp, #64]\n"
  "    mov x19, x0\n"
  "    mov x20, x1\n"
  "    mov x21, x2\n"
  "    mov x23, x3\n"
  "    mov x24, x4\n"
  "    mov x25, x5\n"
  "    mov x26, x6\n"
  "    lsl x9, x24, #3\n"
  "    add x9, x9, #15\n"
  "    mov x12, #-16\n"
  "    and x9, x9, x12\n"
  "    sub sp, sp, x9\n"
  "    mov x10, xzr\n"
  ".Lwl_tramp_copy:\n"
  "    cmp x10, x24\n"
  "    b.hs .Lwl_tramp_call\n"
  "    ldr x11, [x23, x10, lsl #3]\n"
  "    str x11, [sp,  x10, lsl #3]\n"
  "    add x10, x10, #1\n"
  "    b .Lwl_tramp_copy\n"
  ".Lwl_tramp_call:\n"
  "    ldp d0, d1, [x21, #0]\n"
  "    ldp d2, d3, [x21, #16]\n"
  "    ldp d4, d5, [x21, #32]\n"
  "    ldp d6, d7, [x21, #48]\n"
  "    ldp x0, x1, [x20, #0]\n"
  "    ldp x2, x3, [x20, #16]\n"
  "    ldp x4, x5, [x20, #32]\n"
  "    ldp x6, x7, [x20, #48]\n"
  "    blr x19\n"
  "    str x0, [x25]\n"
  "    str d0, [x26]\n"
  "    mov sp, x29\n"
  "    ldp x25, x26, [sp, #64]\n"
  "    ldp x23, x24, [sp, #48]\n"
  "    ldp x21, x22, [sp, #32]\n"
  "    ldp x19, x20, [sp, #16]\n"
  "    ldp x29, x30, [sp], #96\n"
  "    ret\n"
  ".size westlake_jni_trampoline, .-westlake_jni_trampoline\n"
);
#endif  // __aarch64__

static inline bool WlPushReg(uint64_t v, uint64_t* reg, size_t max_reg, size_t* nreg,
                             uint64_t* stk, size_t max_stk, size_t* nstk) {
  if (*nreg < max_reg) { reg[(*nreg)++] = v; return true; }
  if (*nstk < max_stk) { stk[(*nstk)++] = v; return true; }
  return false;
}

// soa == nullptr  => @CriticalNative ABI (no env/clazz, no object args)
// soa != nullptr  => normal / @FastNative ABI (env + jclass|receiver + AddLocalReference)
static bool WestlakeGenericJni(Thread* self,
                               ArtMethod* method,
                               std::string_view shorty,
                               ObjPtr<mirror::Object> receiver,
                               uint32_t* args,
                               JValue* result,
                               ScopedObjectAccessUnchecked* soa)
    REQUIRES_SHARED(Locks::mutator_lock_) {
#if defined(__aarch64__)
  const void* raw_fn = method->GetEntryPointFromJni();
  if (raw_fn == nullptr) {
    return false;
  }
  // The native may be UNREGISTERED — its JNI entry is then the dlsym-lookup stub (an asm
  // routine, not a C function). Calling it via the trampoline (esp. with the @CriticalNative
  // ABI: no env/clazz) reads garbage and crashes. Detect the stub and bail so the caller
  // falls through to its warning + typed default (void natives thus become a survivable no-op).
  if (raw_fn == GetJniDlsymLookupStub() || raw_fn == GetJniDlsymLookupCriticalStub()) {
    return false;
  }
  const bool is_critical = (soa == nullptr);

  static constexpr size_t kMaxGp = 8;
  static constexpr size_t kMaxFp = 8;
  static constexpr size_t kMaxStack = 32;
  uint64_t gpr[kMaxGp] = {0};
  uint64_t fpr[kMaxFp] = {0};
  uint64_t stk[kMaxStack] = {0};
  size_t ngp = 0, nfp = 0, nst = 0;

  jobject local_refs[kMaxGp + kMaxStack];
  size_t n_local = 0;
  bool ok = true;

  if (!is_critical) {
    ok = WlPushReg(reinterpret_cast<uint64_t>(soa->Env()),
                   gpr, kMaxGp, &ngp, stk, kMaxStack, &nst);
    jobject self_ref = method->IsStatic()
        ? reinterpret_cast<jobject>(
              soa->AddLocalReference<jclass>(method->GetDeclaringClass()))
        : soa->AddLocalReference<jobject>(receiver);
    local_refs[n_local++] = self_ref;
    ok = ok && WlPushReg(reinterpret_cast<uint64_t>(self_ref),
                         gpr, kMaxGp, &ngp, stk, kMaxStack, &nst);
  }

  size_t vreg = 0;
  for (size_t i = 1; ok && i < shorty.size(); ++i) {
    switch (shorty[i]) {
      case 'Z': case 'B': case 'C': case 'S': case 'I':
        ok = WlPushReg(static_cast<uint64_t>(static_cast<uint32_t>(args[vreg])),
                       gpr, kMaxGp, &ngp, stk, kMaxStack, &nst);
        vreg += 1;
        break;
      case 'J':
        ok = WlPushReg(*reinterpret_cast<uint64_t*>(&args[vreg]),
                       gpr, kMaxGp, &ngp, stk, kMaxStack, &nst);
        vreg += 2;
        break;
      case 'F':
        if (nfp < kMaxFp) { fpr[nfp++] = static_cast<uint64_t>(*reinterpret_cast<uint32_t*>(&args[vreg])); }
        else { ok = false; }
        vreg += 1;
        break;
      case 'D':
        if (nfp < kMaxFp) { fpr[nfp++] = *reinterpret_cast<uint64_t*>(&args[vreg]); }
        else { ok = false; }
        vreg += 2;
        break;
      case 'L': case '[': {
        if (is_critical) { ok = false; break; }
        jobject r = soa->AddLocalReference<jobject>(ObjArg(args[vreg]));
        local_refs[n_local++] = r;
        ok = WlPushReg(reinterpret_cast<uint64_t>(r),
                       gpr, kMaxGp, &ngp, stk, kMaxStack, &nst);
        vreg += 1;
        break;
      }
      default:
        ok = false;
        break;
    }
  }

  if (!ok) {
    if (soa != nullptr) {
      for (size_t k = 0; k < n_local; ++k) {
        if (local_refs[k] != nullptr) soa->Env()->DeleteLocalRef(local_refs[k]);
      }
    }
    return false;
  }

  uint64_t out_gp = 0, out_fp = 0;
  westlake_jni_trampoline(raw_fn, gpr, fpr, stk,
                          static_cast<uint64_t>(nst), &out_gp, &out_fp);

  switch (shorty[0]) {
    case 'V': break;
    case 'Z': result->SetZ(static_cast<uint8_t>(out_gp)); break;
    case 'B': result->SetB(static_cast<int8_t>(out_gp)); break;
    case 'C': result->SetC(static_cast<uint16_t>(out_gp)); break;
    case 'S': result->SetS(static_cast<int16_t>(out_gp)); break;
    case 'I': result->SetI(static_cast<int32_t>(out_gp)); break;
    case 'J': result->SetJ(static_cast<int64_t>(out_gp)); break;
    case 'F': { uint32_t b = static_cast<uint32_t>(out_fp); float f; memcpy(&f, &b, sizeof(f)); result->SetF(f); break; }
    case 'D': { double d; memcpy(&d, &out_fp, sizeof(d)); result->SetD(d); break; }
    case 'L': case '[':
      if (soa == nullptr || self->IsExceptionPending()) {
        result->SetL(nullptr);
      } else {
        jobject jr = reinterpret_cast<jobject>(out_gp);
        result->SetL(soa->Decode<mirror::Object>(jr));
        if (jr != nullptr) soa->Env()->DeleteLocalRef(jr);
      }
      break;
    default: break;
  }

  if (soa != nullptr) {
    for (size_t k = 0; k < n_local; ++k) {
      if (local_refs[k] != nullptr) soa->Env()->DeleteLocalRef(local_refs[k]);
    }
  }
  return true;
#else
  (void)self; (void)method; (void)shorty; (void)receiver;
  (void)args; (void)result; (void)soa;
  return false;
#endif  // __aarch64__
}

static void InterpreterJni(Thread* self,
                           ArtMethod* method,
                           std::string_view shorty,
                           ObjPtr<mirror::Object> receiver,
                           uint32_t* args,
                           JValue* result)
    REQUIRES_SHARED(Locks::mutator_lock_) {
  {
    std::string wcd0; const char* wd0 = method->GetDeclaringClass()->GetDescriptor(&wcd0);
    if (wd0 != nullptr && strstr(wd0, "XmlBlock") != nullptr) {
      std::string sh(shorty);
      jlong tok = *reinterpret_cast<jlong*>(&args[0]);
      fprintf(stderr, "WLXMLJNI %s shorty=%s crit=%d tok=%p a0=%08x a1=%08x recv=%p\n",
              method->GetName(), sh.c_str(), method->IsCriticalNative() ? 1 : 0,
              reinterpret_cast<void*>(tok), args[0], args[1],
              reinterpret_cast<void*>(receiver.Ptr()));
      fflush(stderr);
    }
    // [Agent-E dladdr audit] Map the provenance of every AssetManager/ApkAssets native: entry pointer
    // -> module+symbol. Entries in the OHBridge .so = garbage stubs; in our helper/libandroidfw = real.
    if (wd0 != nullptr && (strstr(wd0, "res/AssetManager;") != nullptr ||
                           strstr(wd0, "res/ApkAssets;") != nullptr)) {
      void* ep = reinterpret_cast<void*>(method->GetEntryPointFromJni());
      Dl_info wi; memset(&wi, 0, sizeof(wi));
      int wok = dladdr(ep, &wi);
      std::string sh(shorty);
      fprintf(stderr, "WLDLADDR %s.%s shorty=%s ep=%p mod=%s sym=%s crit=%d\n",
              wd0, method->GetName(), sh.c_str(), ep,
              (wok && wi.dli_fname) ? wi.dli_fname : "?",
              (wok && wi.dli_sname) ? wi.dli_sname : "?",
              method->IsCriticalNative() ? 1 : 0);
      fflush(stderr);
    }
  }
  // [DAYU600] Core java.lang.Math/StrictMath/System natives are not registered in standalone
  // mode (their JNI entry is the UnsatisfiedLinkError trampoline). Implement inline so
  // ColorSpace/FontVariationAxis clinit + app code that needs them succeed.
  if (method->IsStatic()) {
    const char* dmn = method->GetName();
    ObjPtr<mirror::Class> ddc = method->GetDeclaringClass();
    if (ddc->DescriptorEquals("Ljava/lang/Math;") ||
        ddc->DescriptorEquals("Ljava/lang/StrictMath;")) {
      if (shorty == "DDD") {
        double a = *reinterpret_cast<double*>(&args[0]);
        double b = *reinterpret_cast<double*>(&args[2]);
        if (strcmp(dmn, "pow") == 0) { result->SetD(std::pow(a, b)); return; }
        if (strcmp(dmn, "atan2") == 0) { result->SetD(std::atan2(a, b)); return; }
        if (strcmp(dmn, "hypot") == 0) { result->SetD(std::hypot(a, b)); return; }
        if (strcmp(dmn, "IEEEremainder") == 0) { result->SetD(std::remainder(a, b)); return; }
      } else if (shorty == "DD") {
        double a = *reinterpret_cast<double*>(&args[0]);
        if (strcmp(dmn, "sqrt") == 0) { result->SetD(std::sqrt(a)); return; }
        if (strcmp(dmn, "cbrt") == 0) { result->SetD(std::cbrt(a)); return; }
        if (strcmp(dmn, "exp") == 0) { result->SetD(std::exp(a)); return; }
        if (strcmp(dmn, "expm1") == 0) { result->SetD(std::expm1(a)); return; }
        if (strcmp(dmn, "log") == 0) { result->SetD(std::log(a)); return; }
        if (strcmp(dmn, "log10") == 0) { result->SetD(std::log10(a)); return; }
        if (strcmp(dmn, "log1p") == 0) { result->SetD(std::log1p(a)); return; }
        if (strcmp(dmn, "sin") == 0) { result->SetD(std::sin(a)); return; }
        if (strcmp(dmn, "cos") == 0) { result->SetD(std::cos(a)); return; }
        if (strcmp(dmn, "tan") == 0) { result->SetD(std::tan(a)); return; }
        if (strcmp(dmn, "asin") == 0) { result->SetD(std::asin(a)); return; }
        if (strcmp(dmn, "acos") == 0) { result->SetD(std::acos(a)); return; }
        if (strcmp(dmn, "atan") == 0) { result->SetD(std::atan(a)); return; }
        if (strcmp(dmn, "sinh") == 0) { result->SetD(std::sinh(a)); return; }
        if (strcmp(dmn, "cosh") == 0) { result->SetD(std::cosh(a)); return; }
        if (strcmp(dmn, "tanh") == 0) { result->SetD(std::tanh(a)); return; }
        if (strcmp(dmn, "rint") == 0) { result->SetD(std::rint(a)); return; }
      }
    } else if (ddc->DescriptorEquals("Ljava/lang/System;") && shorty == "J") {
      struct timespec dts;
      if (strcmp(dmn, "currentTimeMillis") == 0) {
        clock_gettime(CLOCK_REALTIME, &dts);
        result->SetJ(static_cast<jlong>(dts.tv_sec) * 1000 + dts.tv_nsec / 1000000);
        return;
      }
      if (strcmp(dmn, "nanoTime") == 0) {
        clock_gettime(CLOCK_MONOTONIC, &dts);
        result->SetJ(static_cast<jlong>(dts.tv_sec) * 1000000000LL + dts.tv_nsec);
        return;
      }
    } else if (ddc->DescriptorEquals("Landroid/os/SystemClock;") && shorty == "J") {
      // Framework clock natives (normally libandroid_runtime): monotonic clocks suffice here.
      struct timespec dts;
      if (strcmp(dmn, "uptimeMillis") == 0 || strcmp(dmn, "elapsedRealtime") == 0) {
        clock_gettime(CLOCK_MONOTONIC, &dts);
        result->SetJ(static_cast<jlong>(dts.tv_sec) * 1000 + dts.tv_nsec / 1000000);
        return;
      }
      if (strcmp(dmn, "uptimeNanos") == 0 || strcmp(dmn, "elapsedRealtimeNanos") == 0) {
        clock_gettime(CLOCK_MONOTONIC, &dts);
        result->SetJ(static_cast<jlong>(dts.tv_sec) * 1000000000LL + dts.tv_nsec);
        return;
      }
      if (strcmp(dmn, "currentThreadTimeMillis") == 0) {
        clock_gettime(CLOCK_THREAD_CPUTIME_ID, &dts);
        result->SetJ(static_cast<jlong>(dts.tv_sec) * 1000 + dts.tv_nsec / 1000000);
        return;
      }
    } else if (ddc->DescriptorEquals("Lsun/nio/fs/UnixNativeDispatcher;")) {
      // [DAYU600] sun.nio.fs POSIX natives are not registered in standalone mode; without
      // them the default FileSystem can't build / read attributes → ZipFile/
      // getResourceAsStream/ICU all die. Implement the ones the ZipFile path needs.
      if (shorty == "L" && strcmp(dmn, "getcwd") == 0) {
        char cwd_buf[4096];
        const char* cwd = getcwd(cwd_buf, sizeof(cwd_buf));
        if (cwd == nullptr) {
          cwd = "/";
        }
        const int32_t cwd_len = static_cast<int32_t>(strlen(cwd));
        ObjPtr<mirror::ByteArray> bytes = mirror::ByteArray::Alloc(self, cwd_len);
        if (bytes != nullptr && cwd_len > 0) {
          memcpy(bytes->GetData(), cwd, static_cast<size_t>(cwd_len));
        }
        result->SetL(bytes);
        return;
      }
      if (shorty == "VJL" &&
          (strcmp(dmn, "stat0") == 0 || strcmp(dmn, "lstat0") == 0)) {
        // stat0(long pathAddress, UnixFileAttributes attrs): pathAddress is a native
        // buffer holding the null-terminated path; stat it and fill attrs' fields.
        const uint64_t path_addr =
            (static_cast<uint64_t>(args[1]) << 32) | static_cast<uint32_t>(args[0]);
        ObjPtr<mirror::Object> attrs = ObjArg(args[2]);
        static int stat_dbg = 0;
        if (stat_dbg < 12) {
          stat_dbg++;
          fprintf(stderr, "[STAT0] %s args0=%x args1=%x args2=%x addr=%llx\n",
                  dmn, args[0], args[1], args[2],
                  static_cast<unsigned long long>(path_addr));
          fflush(stderr);
        }
        struct stat sb;
        int rc = -1;
        if (path_addr != 0) {
          const char* p = reinterpret_cast<const char*>(path_addr);
          rc = (strcmp(dmn, "lstat0") == 0) ? lstat(p, &sb) : stat(p, &sb);
        }
        if (rc != 0) {
          self->ThrowNewExceptionF("Lsun/nio/fs/UnixException;", "%s", strerror(errno));
          return;
        }
        if (attrs != nullptr && attrs->GetClass() != nullptr) {
          ObjPtr<mirror::Class> acls = attrs->GetClass();
          const auto set_i = [&](const char* n, int32_t v) REQUIRES_SHARED(Locks::mutator_lock_) {
            ArtField* f = acls->FindInstanceField(n, "I");
            if (f != nullptr) { f->SetInt<false>(attrs, v); }
          };
          const auto set_j = [&](const char* n, int64_t v) REQUIRES_SHARED(Locks::mutator_lock_) {
            ArtField* f = acls->FindInstanceField(n, "J");
            if (f != nullptr) { f->SetLong<false>(attrs, v); }
          };
          set_i("st_mode", static_cast<int32_t>(sb.st_mode));
          set_j("st_ino", static_cast<int64_t>(sb.st_ino));
          set_j("st_dev", static_cast<int64_t>(sb.st_dev));
          set_j("st_rdev", static_cast<int64_t>(sb.st_rdev));
          set_i("st_nlink", static_cast<int32_t>(sb.st_nlink));
          set_i("st_uid", static_cast<int32_t>(sb.st_uid));
          set_i("st_gid", static_cast<int32_t>(sb.st_gid));
          set_j("st_size", static_cast<int64_t>(sb.st_size));
          set_j("st_atime_sec", static_cast<int64_t>(sb.st_atime));
          set_j("st_mtime_sec", static_cast<int64_t>(sb.st_mtime));
          set_j("st_ctime_sec", static_cast<int64_t>(sb.st_ctime));
          set_j("st_atime_nsec", static_cast<int64_t>(sb.st_atim.tv_nsec));
          set_j("st_mtime_nsec", static_cast<int64_t>(sb.st_mtim.tv_nsec));
          set_j("st_ctime_nsec", static_cast<int64_t>(sb.st_ctim.tv_nsec));
          set_j("st_birthtime_sec", static_cast<int64_t>(sb.st_mtime));
        }
        return;
      }
    }
  }
  if (!method->IsStatic() &&
      shorty == "CI" &&
      strcmp(method->GetName(), "charAt") == 0 &&
      method->GetDeclaringClass()->DescriptorEquals("Ljava/lang/String;")) {
    if (receiver == nullptr) {
      ThrowNullPointerExceptionFromInterpreter();
      result->SetJ(0);
      return;
    }
    result->SetC(receiver->AsString()->CharAt(static_cast<int32_t>(args[0])));
    return;
  }
  if (!method->IsStatic() &&
      shorty == "LCC" &&
      strcmp(method->GetName(), "doReplace") == 0 &&
      method->GetDeclaringClass()->DescriptorEquals("Ljava/lang/String;")) {
    // [DAYU600] String.doReplace(char oldChar, char newChar) — ART runtime String
    // intrinsic (called by String.replace). Reuse mirror::String::DoReplace so real
    // framework resource-path processing (e.g. '.'->'/') returns a real string
    // instead of null (null return -> caller deref -> SIGSEGV on the AssetManager path).
    if (receiver == nullptr) {
      ThrowNullPointerExceptionFromInterpreter();
      result->SetL(nullptr);
      return;
    }
    StackHandleScope<1> hs(self);
    Handle<mirror::String> string = hs.NewHandle(receiver->AsString());
    result->SetL(mirror::String::DoReplace(self, string,
                                           static_cast<uint16_t>(args[0]),
                                           static_cast<uint16_t>(args[1])));
    return;
  }
  if (!method->IsStatic() &&
      shorty == "LLZ" &&
      strcmp(method->GetName(), "canonicalize0") == 0 &&
      method->GetDeclaringClass()->DescriptorEquals("Ljava/io/UnixFileSystem;")) {
    // [DAYU600] UnixFileSystem.canonicalize0(String path, boolean) — identity canonicalization
    // (return the path arg as-is); sufficient for asset/resource path resolution during inflate.
    result->SetL(ObjArg(args[0]));
    return;
  }
  if (method->IsStatic() &&
      shorty == "ZI" &&
      strcmp(method->GetName(), "isLetterImpl") == 0 &&
      method->GetDeclaringClass()->DescriptorEquals("Ljava/lang/Character;")) {
    const int32_t ch = static_cast<int32_t>(args[0]);
    result->SetZ((ch >= 'A' && ch <= 'Z') || (ch >= 'a' && ch <= 'z'));
    return;
  }
  if (method->IsStatic() &&
      shorty == "ZI" &&
      strcmp(method->GetName(), "isLetterOrDigitImpl") == 0 &&
      method->GetDeclaringClass()->DescriptorEquals("Ljava/lang/Character;")) {
    const int32_t ch = static_cast<int32_t>(args[0]);
    result->SetZ((ch >= 'A' && ch <= 'Z') ||
                 (ch >= 'a' && ch <= 'z') ||
                 (ch >= '0' && ch <= '9'));
    return;
  }
  if (!method->IsStatic() &&
      (shorty == "IL" || shorty == "ILI") &&
      strcmp(method->GetName(), "lastIndexOf") == 0 &&
      method->GetDeclaringClass()->DescriptorEquals("Ljava/lang/String;")) {
    if (receiver == nullptr) {
      ThrowNullPointerExceptionFromInterpreter();
      result->SetI(-1);
      return;
    }
    ObjPtr<mirror::Object> arg0 = ObjArg(args[0]);
    if (arg0 == nullptr) {
      ThrowNullPointerExceptionFromInterpreter();
      result->SetI(-1);
      return;
    }
    ObjPtr<mirror::String> haystack = receiver->AsString();
    ObjPtr<mirror::String> needle = arg0->AsString();
    const int32_t from_index = (shorty == "ILI")
        ? static_cast<int32_t>(args[1])
        : haystack->GetLength();
    result->SetI(WestlakeStringLastIndexOf(haystack, needle, from_index));
    return;
  }

  // [DAYU600] Robust SystemClock clock-native catch, independent of shorty (some clock natives
  // are @CriticalNative and reach here with a shorty the if-else chain above didn't match).
  // Must run BEFORE JNI name resolution, which would otherwise throw UnsatisfiedLinkError.
  if (method->IsStatic() &&
      method->GetDeclaringClass()->DescriptorEquals("Landroid/os/SystemClock;")) {
    const char* nm = method->GetName();
    struct timespec cts;
    if (strcmp(nm, "uptimeMillis") == 0 || strcmp(nm, "elapsedRealtime") == 0) {
      clock_gettime(CLOCK_MONOTONIC, &cts);
      result->SetJ(static_cast<jlong>(cts.tv_sec) * 1000 + cts.tv_nsec / 1000000);
      return;
    }
    if (strcmp(nm, "uptimeNanos") == 0 || strcmp(nm, "elapsedRealtimeNanos") == 0) {
      clock_gettime(CLOCK_MONOTONIC, &cts);
      result->SetJ(static_cast<jlong>(cts.tv_sec) * 1000000000LL + cts.tv_nsec);
      return;
    }
    if (strcmp(nm, "currentThreadTimeMillis") == 0) {
      clock_gettime(CLOCK_THREAD_CPUTIME_ID, &cts);
      result->SetJ(static_cast<jlong>(cts.tv_sec) * 1000 + cts.tv_nsec / 1000000);
      return;
    }
  }

  // Resolve the native function if it hasn't been registered yet.
  // The JNI entry point may be the dlsym lookup stub (an assembly routine),
  // which can't be called as a C function. We must resolve to the actual native.
  const void* jni_entry = nullptr;  // hoisted: the RESOLVED native code (may be WlCriticalNoop for an
                                    // unregistered graphics void @CriticalNative); the @CriticalNative
                                    // dispatch below must call THIS, not re-read the (stale) JNI entry.
  {
    jni_entry = method->GetEntryPointFromJni();
    const void* dlsym_stub = GetJniDlsymLookupStub();
    const void* dlsym_critical_stub = GetJniDlsymLookupCriticalStub();
    static constexpr uintptr_t kPFCutStaleNativeEntry = 0xfffffffffffffb17ULL;
    if (reinterpret_cast<uintptr_t>(jni_entry) == kPFCutStaleNativeEntry) {
      method->SetEntryPointFromJniPtrSize(nullptr, kRuntimePointerSize);
      jni_entry = nullptr;
    }
    // [DAYU600] For XmlBlock, the registered entry is the generic-JNI trampoline (in libart), which
    // MUST NOT be called directly as a C function from the interpreter — doing so builds corrupt parse
    // states / string blocks. Force re-resolution to the real libandroidfw Java_ symbol (and helper for
    // nativeCreate) so every shorty handler, whether it reads jni_entry or GetEntryPointFromJni(), calls
    // the real function.
    // [DAYU600] XmlBlock/StringBlock natives are @CriticalNative-trampoline mis-registered -> always
    // force re-resolution. AssetManager/ApkAssets natives are OHBridge garbage STUBs (pre-registered,
    // not unresolved), and MOST have no real impl anywhere (RegisterNatives stubs, not dlsym-able) — so
    // force re-resolution ONLY for the ones our helper actually implements (else FindCodeForNativeMethod
    // returns null -> ULE, breaking the working stubs). Probe the helper by symbol name.
    bool wl_is_xmlblock =
        method->GetDeclaringClass()->DescriptorEquals("Landroid/content/res/XmlBlock;") ||
        method->GetDeclaringClass()->DescriptorEquals("Landroid/content/res/StringBlock;");
    if (!wl_is_xmlblock) {
      const char* wl_acls = nullptr;
      if (method->GetDeclaringClass()->DescriptorEquals("Landroid/content/res/AssetManager;")) {
        wl_acls = "AssetManager";
      } else if (method->GetDeclaringClass()->DescriptorEquals("Landroid/content/res/ApkAssets;")) {
        wl_acls = "ApkAssets";
      }
      if (wl_acls != nullptr) {
        static void* wl_helper = dlopen(
            "/data/local/tmp/westlake-dayu600-substrate/android/lib64/libwl_xmlblock_create.so",
            RTLD_NOW | RTLD_GLOBAL);
        if (wl_helper != nullptr) {
          std::string wl_sym = "Java_android_content_res_";
          wl_sym += wl_acls;
          wl_sym += "_";
          wl_sym += method->GetName();
          if (dlsym(wl_helper, wl_sym.c_str()) != nullptr) {
            wl_is_xmlblock = true;
          }
        }
      }
    }
    if (jni_entry == dlsym_stub || jni_entry == dlsym_critical_stub || jni_entry == nullptr ||
        wl_is_xmlblock) {
      // Need to resolve the native method via JNI name lookup
      JavaVMExt* vm = down_cast<JNIEnvExt*>(self->GetJniEnv())->GetVm();
      std::string error_msg;
      const void* native_code = vm->FindCodeForNativeMethod(method, &error_msg, /*can_suspend=*/true);
      if (native_code == nullptr) {
        // Classloader-scoped lookup missed it — try dlsym'ing the JNI symbol straight from
        // libandroidfw (fixes XmlBlock @CriticalNative parser natives whose symbols exist but aren't
        // in the boot classloader's registered library list).
        native_code = WlDlsymFrameworkNative(method);
      }
      if (native_code == nullptr) {
        // Native method not found — throw UnsatisfiedLinkError
        self->ThrowNewException("Ljava/lang/UnsatisfiedLinkError;", error_msg.c_str());
        return;
      }
      // Register the resolved native code
      Runtime::Current()->GetClassLinker()->RegisterNative(self, method, native_code);
      // Use the resolved code directly: for @CriticalNative on a not-yet-visibly-initialized class,
      // RegisterNative stores the code in the ClassLinker map but leaves GetEntryPointFromJni() as
      // the dlsym stub, so re-reading it would spuriously look "stale" and throw.
      jni_entry = native_code;
    } else {
      jni_entry = method->GetEntryPointFromJni();
    }
    if (jni_entry == dlsym_stub ||
        jni_entry == dlsym_critical_stub ||
        jni_entry == nullptr ||
        reinterpret_cast<uintptr_t>(jni_entry) == kPFCutStaleNativeEntry) {
      method->SetEntryPointFromJniPtrSize(nullptr, kRuntimePointerSize);
      self->ThrowNewExceptionF("Ljava/lang/UnsatisfiedLinkError;",
                               "unresolved or stale native entry for %s",
                               method->PrettyMethod().c_str());
      return;
    }
  }

  // @CriticalNative dispatch: raw C call, no JNIEnv/jclass
  // Check: method has @CriticalNative flag AND was resolved from libandroid_runtime
  // (not our manual patches which use JNI calling convention)
  if (method->IsCriticalNative()) {
    std::string cls_desc;
    const char* desc = method->GetDeclaringClass()->GetDescriptor(&cls_desc);
    // [DAYU600] framework.jar (8c377c13) marks XmlBlock's parser natives @CriticalNative, but the
    // deployed libandroidfw actually provides NORMAL JNI functions (JNIEnv*/jclass + args), proven by
    // in-native ABI probing (raw jint(jlong) => wrong; jint(JNIEnv*,jclass,jlong) => correct events).
    // So dispatch these with the NORMAL ABI using the resolved jni_entry. (goto regular_jni does NOT
    // work here — a @CriticalNative shadow frame never reaches the static NORMAL handler, it hangs.)
    if (desc != nullptr && (strcmp(desc, "Landroid/content/res/XmlBlock;") == 0 ||
                            strcmp(desc, "Landroid/content/res/StringBlock;") == 0 ||
                            strcmp(desc, "Landroid/graphics/RenderNode;") == 0)) {
      // [DAYU600] RenderNode natives (nGetElevation FJ / nSet* ZJF / nSetClipToBounds ZJZ) are
      // @CriticalNative in framework.jar but our helper supplies NORMAL-ABI wrappers (libhwui's
      // register_android_view_RenderNode RegisterNatives doesn't stick for @CriticalNative here).
      // Same treatment as XmlBlock: re-resolve to the helper + call with the NORMAL ABI.
      // jni_entry is the @CriticalNative trampoline libraries_ registered (wrong ABI). Re-resolve to the
      // real NORMAL libandroidfw function via FindCodeForNativeMethod (which special-cases XmlBlock/StringBlock).
      std::string wl_err;
      void* fn = down_cast<JNIEnvExt*>(self->GetJniEnv())->GetVm()->FindCodeForNativeMethod(
          method, &wl_err, /*can_suspend=*/false);
      { static int wld = 0; if (wld < 3) { wld++;
          fprintf(stderr, "WLXMLIJ3 %s realfn=%p jnient=%p tok=%p\n", method->GetName(), fn,
                  const_cast<void*>(jni_entry),
                  reinterpret_cast<void*>(*reinterpret_cast<jlong*>(&args[0]))); fflush(stderr); } }
      if (fn == nullptr) fn = const_cast<void*>(jni_entry);
      ScopedObjectAccessUnchecked soa(self);
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      if (shorty == "IJ") {
        result->SetI(reinterpret_cast<jint(*)(JNIEnv*, jclass, jlong)>(fn)(
            soa.Env(), klass.get(), *reinterpret_cast<jlong*>(&args[0])));
        return;
      } else if (shorty == "IJI") {
        result->SetI(reinterpret_cast<jint(*)(JNIEnv*, jclass, jlong, jint)>(fn)(
            soa.Env(), klass.get(), *reinterpret_cast<jlong*>(&args[0]), args[2]));
        return;
      } else if (shorty == "JJ") {
        result->SetJ(reinterpret_cast<jlong(*)(JNIEnv*, jclass, jlong)>(fn)(
            soa.Env(), klass.get(), *reinterpret_cast<jlong*>(&args[0])));
        return;
      } else if (shorty == "VJ") {
        reinterpret_cast<void(*)(JNIEnv*, jclass, jlong)>(fn)(
            soa.Env(), klass.get(), *reinterpret_cast<jlong*>(&args[0]));
        return;
      } else if (shorty == "FJ") {
        // RenderNode.nGetElevation etc: float fn(long)
        result->SetF(reinterpret_cast<jfloat(*)(JNIEnv*, jclass, jlong)>(fn)(
            soa.Env(), klass.get(), *reinterpret_cast<jlong*>(&args[0])));
        return;
      } else if (shorty == "ZJ") {
        // RenderNode.nGetClipToOutline/nGetClipToBounds etc: boolean fn(long)
        result->SetZ(reinterpret_cast<jboolean(*)(JNIEnv*, jclass, jlong)>(fn)(
            soa.Env(), klass.get(), *reinterpret_cast<jlong*>(&args[0])));
        return;
      } else if (shorty == "ZJF") {
        // RenderNode.nSetElevation etc: boolean fn(long, float)
        result->SetZ(reinterpret_cast<jboolean(*)(JNIEnv*, jclass, jlong, jfloat)>(fn)(
            soa.Env(), klass.get(), *reinterpret_cast<jlong*>(&args[0]),
            *reinterpret_cast<jfloat*>(&args[2])));
        return;
      } else if (shorty == "ZJZ") {
        // RenderNode.nSetClipToBounds: boolean fn(long, boolean)
        result->SetZ(reinterpret_cast<jboolean(*)(JNIEnv*, jclass, jlong, jboolean)>(fn)(
            soa.Env(), klass.get(), *reinterpret_cast<jlong*>(&args[0]),
            static_cast<jboolean>(args[2])));
        return;
      } else if (shorty == "ZJI") {
        // RenderNode.nSetLeft/Top/Right/Bottom/ShadowColor/offset*: boolean fn(long, int)
        result->SetZ(reinterpret_cast<jboolean(*)(JNIEnv*, jclass, jlong, jint)>(fn)(
            soa.Env(), klass.get(), *reinterpret_cast<jlong*>(&args[0]), args[2]));
        return;
      } else if (shorty == "ZJJ") {
        // RenderNode.nSetStaticMatrix/nSetAnimationMatrix/nSetLayerPaint: boolean fn(long, long)
        result->SetZ(reinterpret_cast<jboolean(*)(JNIEnv*, jclass, jlong, jlong)>(fn)(
            soa.Env(), klass.get(), *reinterpret_cast<jlong*>(&args[0]),
            *reinterpret_cast<jlong*>(&args[2])));
        return;
      } else if (shorty == "ZJIIII") {
        // RenderNode.nSetLeftTopRightBottom/nSetClipBounds: boolean fn(long, int, int, int, int)
        result->SetZ(reinterpret_cast<jboolean(*)(JNIEnv*, jclass, jlong, jint, jint, jint, jint)>(fn)(
            soa.Env(), klass.get(), *reinterpret_cast<jlong*>(&args[0]),
            args[2], args[3], args[4], args[5]));
        return;
      } else if (shorty == "ZJIIIIFF") {
        // RenderNode.nSetOutlineRoundRect: boolean fn(long, int, int, int, int, float, float)
        result->SetZ(reinterpret_cast<jboolean(*)(JNIEnv*, jclass, jlong, jint, jint, jint, jint, jfloat, jfloat)>(fn)(
            soa.Env(), klass.get(), *reinterpret_cast<jlong*>(&args[0]),
            args[2], args[3], args[4], args[5],
            *reinterpret_cast<jfloat*>(&args[6]), *reinterpret_cast<jfloat*>(&args[7])));
        return;
      } else if (shorty == "VJJ") {
        // RenderNode.nSetDisplayList/nAddAnimator/nGetTransformMatrix stubs: void fn(long, long)
        reinterpret_cast<void(*)(JNIEnv*, jclass, jlong, jlong)>(fn)(
            soa.Env(), klass.get(), *reinterpret_cast<jlong*>(&args[0]),
            *reinterpret_cast<jlong*>(&args[2]));
        return;
      } else if (shorty == "VJI") {
        // RenderNode.nSetUsageHint stub: void fn(long, int)
        reinterpret_cast<void(*)(JNIEnv*, jclass, jlong, jint)>(fn)(
            soa.Env(), klass.get(), *reinterpret_cast<jlong*>(&args[0]), args[2]);
        return;
      }
      // Unknown shorty: fall through to the generic path below.
    }
    bool isParcelCritical = (desc != nullptr &&
        (strcmp(desc, "Landroid/os/Parcel;") == 0 ||
         strcmp(desc, "Landroid/graphics/Canvas;") == 0 ||
         strstr(desc, "android/graphics/") != nullptr ||
         strcmp(desc, "Landroid/view/Surface;") == 0 ||
         strcmp(desc, "Landroid/graphics/RecordingCanvas;") == 0));
    if (!isParcelCritical) {
      // Not a known @CriticalNative — use regular JNI dispatch
      goto regular_jni;
    }
    // Use the RESOLVED entry (jni_entry), NOT method->GetEntryPointFromJni(): for an unregistered
    // @CriticalNative on a not-yet-visibly-initialized class, GetEntryPointFromJni() is still the
    // dlsym-lookup critical stub. Calling that stub as a raw C function makes it walk a nonexistent
    // managed frame -> SIGSEGV in artFindNativeMethodRunnable. jni_entry is either the real
    // registered code or WlCriticalNoop (our survivable no-op for unregistered graphics void natives).
    const void* fn = jni_entry;
    // @CriticalNative shorty patterns — direct C call with raw args
    if (shorty == "IJ") {
      result->SetI(reinterpret_cast<jint(*)(jlong)>(const_cast<void*>(fn))(
          *reinterpret_cast<jlong*>(&args[0])));
    } else if (shorty == "IJI") {
      // int fn(long, int) — XmlBlock.nativeGetAttribute*(parseState, index)
      result->SetI(reinterpret_cast<jint(*)(jlong, jint)>(const_cast<void*>(fn))(
          *reinterpret_cast<jlong*>(&args[0]), args[2]));
    } else if (shorty == "LJ") {
      ScopedObjectAccessUnchecked soa(self);
      jobject r = reinterpret_cast<jobject(*)(jlong)>(const_cast<void*>(fn))(
          *reinterpret_cast<jlong*>(&args[0]));
      result->SetL(soa.Decode<mirror::Object>(r));
    } else if (shorty == "JJ") {
      result->SetJ(reinterpret_cast<jlong(*)(jlong)>(const_cast<void*>(fn))(
          *reinterpret_cast<jlong*>(&args[0])));
    } else if (shorty == "VJ") {
      reinterpret_cast<void(*)(jlong)>(const_cast<void*>(fn))(
          *reinterpret_cast<jlong*>(&args[0]));
    } else if (shorty == "VJII") {
      // void fn(long, int, int) — Canvas.nativeDrawColor(ptr, color, blendMode)
      reinterpret_cast<void(*)(jlong, jint, jint)>(const_cast<void*>(fn))(
          *reinterpret_cast<jlong*>(&args[0]), args[2], args[3]);
    } else if (shorty == "VJI") {
      reinterpret_cast<void(*)(jlong, jint)>(const_cast<void*>(fn))(
          *reinterpret_cast<jlong*>(&args[0]), args[2]);
    } else if (shorty == "VJL") {
      ScopedObjectAccessUnchecked soa(self);
      ScopedLocalRef<jobject> a1(soa.Env(), soa.AddLocalReference<jobject>(
          reinterpret_cast<StackReference<mirror::Object>*>(&args[2])->AsMirrorPtr()));
      reinterpret_cast<void(*)(jlong, jobject)>(const_cast<void*>(fn))(
          *reinterpret_cast<jlong*>(&args[0]), a1.get());
    } else if (shorty == "VJJ") {
      reinterpret_cast<void(*)(jlong, jlong)>(const_cast<void*>(fn))(
          *reinterpret_cast<jlong*>(&args[0]), *reinterpret_cast<jlong*>(&args[2]));
    } else if (shorty == "J") {
      result->SetJ(reinterpret_cast<jlong(*)()>(const_cast<void*>(fn))());
    } else if (shorty == "JJII") {
      // RecordingCanvas.nCreateDisplayListCanvas(long node, int w, int h) -> long
      result->SetJ(reinterpret_cast<jlong(*)(jlong, jint, jint)>(const_cast<void*>(fn))(
          *reinterpret_cast<jlong*>(&args[0]), args[2], args[3]));
    } else if (shorty == "VJJII") {
      // RecordingCanvas.nResetDisplayListCanvas(long canvas, long node, int w, int h) -> void
      reinterpret_cast<void(*)(jlong, jlong, jint, jint)>(const_cast<void*>(fn))(
          *reinterpret_cast<jlong*>(&args[0]), *reinterpret_cast<jlong*>(&args[2]), args[4], args[5]);
    } else if (shorty == "VJZ") {
      // RecordingCanvas.nEnableZ(long canvas, boolean) -> void
      reinterpret_cast<void(*)(jlong, jboolean)>(const_cast<void*>(fn))(
          *reinterpret_cast<jlong*>(&args[0]), static_cast<jboolean>(args[2]));
    } else if (shorty == "VJFF") {
      // Canvas.nTranslate/nScale(long, float, float) -> void
      reinterpret_cast<void(*)(jlong, jfloat, jfloat)>(const_cast<void*>(fn))(
          *reinterpret_cast<jlong*>(&args[0]),
          *reinterpret_cast<jfloat*>(&args[2]), *reinterpret_cast<jfloat*>(&args[3]));
    } else if (shorty == "ZJFFFF") {
      // Canvas.nQuickReject(long, f, f, f, f) -> boolean
      result->SetZ(reinterpret_cast<jboolean(*)(jlong, jfloat, jfloat, jfloat, jfloat)>(const_cast<void*>(fn))(
          *reinterpret_cast<jlong*>(&args[0]), *reinterpret_cast<jfloat*>(&args[2]),
          *reinterpret_cast<jfloat*>(&args[3]), *reinterpret_cast<jfloat*>(&args[4]),
          *reinterpret_cast<jfloat*>(&args[5])));
    } else if (shorty == "ZJFFFFI") {
      // Canvas.nClipRect(long, f, f, f, f, int op) -> boolean
      result->SetZ(reinterpret_cast<jboolean(*)(jlong, jfloat, jfloat, jfloat, jfloat, jint)>(const_cast<void*>(fn))(
          *reinterpret_cast<jlong*>(&args[0]), *reinterpret_cast<jfloat*>(&args[2]),
          *reinterpret_cast<jfloat*>(&args[3]), *reinterpret_cast<jfloat*>(&args[4]),
          *reinterpret_cast<jfloat*>(&args[5]), args[6]));
    } else if (shorty == "ZJ") {
      // Canvas.nRestore(long) -> boolean
      result->SetZ(reinterpret_cast<jboolean(*)(jlong)>(const_cast<void*>(fn))(
          *reinterpret_cast<jlong*>(&args[0])));
    } else if (shorty == "IJFFFFI") {
      // Canvas.nSaveLayerAlpha(long, f, f, f, f, int alpha) -> int
      result->SetI(reinterpret_cast<jint(*)(jlong, jfloat, jfloat, jfloat, jfloat, jint)>(const_cast<void*>(fn))(
          *reinterpret_cast<jlong*>(&args[0]), *reinterpret_cast<jfloat*>(&args[2]),
          *reinterpret_cast<jfloat*>(&args[3]), *reinterpret_cast<jfloat*>(&args[4]),
          *reinterpret_cast<jfloat*>(&args[5]), args[6]));
    } else {
      LOG(WARNING) << "InterpreterJni: unhandled @CriticalNative shorty '" << shorty
                   << "' for " << method->PrettyMethod();
    }
    return;
  }

  // Regular JNI dispatch (JNIEnv + jclass/jobject)
  regular_jni:
  const bool trace_tz_native =
      WestlakeTraceTimeZoneBridge() &&
      method->GetDeclaringClassDescriptor() != nullptr &&
      strcmp(method->GetDeclaringClassDescriptor(), "Ljava/util/TimeZone;") == 0 &&
      (strcmp(method->GetName(), "getDefault") == 0 ||
       strcmp(method->GetName(), "getDefaultRef") == 0);
  if (trace_tz_native) {
    fprintf(stderr,
            "[WESTLAKE-TZ-JNI] before SOA method=%s shorty=%.*s quick=%p jni=%p self=%p env=%p\n",
            method->PrettyMethod().c_str(),
            static_cast<int>(shorty.size()),
            shorty.data(),
            method->GetEntryPointFromQuickCompiledCode(),
            method->GetEntryPointFromJni(),
            self,
            self != nullptr ? self->GetJniEnv() : nullptr);
    fflush(stderr);
  }
  ScopedObjectAccessUnchecked soa(self);
  if (trace_tz_native) {
    fprintf(stderr,
            "[WESTLAKE-TZ-JNI] after SOA env=%p method=%s\n",
            soa.Env(),
            method->PrettyMethod().c_str());
    fflush(stderr);
  }
  if (method->IsStatic()) {
    if (shorty == "L") {
      using fntype = jobject(JNIEnv*, jclass);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      if (trace_tz_native) {
        fprintf(stderr,
                "[WESTLAKE-TZ-JNI] static L before klass local fn=%p env=%p declaring=%p\n",
                reinterpret_cast<void*>(fn),
                soa.Env(),
                method->GetDeclaringClass().Ptr());
        fflush(stderr);
      }
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      if (trace_tz_native) {
        fprintf(stderr,
                "[WESTLAKE-TZ-JNI] static L before call klass=%p fn=%p env=%p\n",
                klass.get(),
                reinterpret_cast<void*>(fn),
                soa.Env());
        fflush(stderr);
      }
      jobject jresult;
      {
        // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
        jresult = fn(soa.Env(), klass.get());
      }
      if (trace_tz_native) {
        fprintf(stderr, "[WESTLAKE-TZ-JNI] static L after call result=%p\n", jresult);
        fflush(stderr);
      }
      result->SetL(soa.Decode<mirror::Object>(jresult));
      if (trace_tz_native) {
        fprintf(stderr, "[WESTLAKE-TZ-JNI] static L after decode\n");
        fflush(stderr);
      }
    } else if (shorty == "V") {
      using fntype = void(JNIEnv*, jclass);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
      fn(soa.Env(), klass.get());
    } else if (shorty == "VI") {
      using fntype = void(JNIEnv*, jclass, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
      fn(soa.Env(), klass.get(), args[0]);
    } else if (shorty == "J") {
      using fntype = jlong(JNIEnv*, jclass);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
      result->SetJ(fn(soa.Env(), klass.get()));
    } else if (shorty == "ZI") {
      using fntype = jboolean(JNIEnv*, jclass, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
      result->SetZ(fn(soa.Env(), klass.get(), args[0]));
    } else if (shorty == "JL") {
      using fntype = jlong(JNIEnv*, jclass, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> arg0(soa.Env(),
          soa.AddLocalReference<jobject>(reinterpret_cast<StackReference<mirror::Object>*>(&args[0])->AsMirrorPtr()));
      // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
      result->SetJ(fn(soa.Env(), klass.get(), arg0.get()));
    } else if (shorty == "JLII") {
      // jlong fn(JNIEnv*, jclass, jobject, jint, jint) — StringBlock.nativeCreate(byte[], off, size)
      using fntype = jlong(JNIEnv*, jclass, jobject, jint, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> arg0(soa.Env(),
          soa.AddLocalReference<jobject>(reinterpret_cast<StackReference<mirror::Object>*>(&args[0])->AsMirrorPtr()));
      result->SetJ(fn(soa.Env(), klass.get(), arg0.get(), args[1], args[2]));
      {
        std::string wcd; const char* wd = method->GetDeclaringClass()->GetDescriptor(&wcd);
        if (wd != nullptr && strstr(wd, "XmlBlock") != nullptr) {
          fprintf(stderr, "WLXMLCREATE %s ret=%p fn=%p\n", method->GetName(),
                  reinterpret_cast<void*>(result->GetJ()), reinterpret_cast<void*>(fn));
          fflush(stderr);
        }
      }
    } else if (shorty == "VLL") {
      using fntype = void(JNIEnv*, jclass, jobject, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> arg0(soa.Env(),
          soa.AddLocalReference<jobject>(reinterpret_cast<StackReference<mirror::Object>*>(&args[0])->AsMirrorPtr()));
      ScopedLocalRef<jobject> arg1(soa.Env(),
          soa.AddLocalReference<jobject>(reinterpret_cast<StackReference<mirror::Object>*>(&args[1])->AsMirrorPtr()));
      // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
      fn(soa.Env(), klass.get(), arg0.get(), arg1.get());
    } else if (shorty == "IF") {
      using fntype = jint(JNIEnv*, jclass, jfloat);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
      result->SetI(fn(soa.Env(), klass.get(), *reinterpret_cast<float*>(&args[0])));
    } else if (shorty == "JD") {
      using fntype = jlong(JNIEnv*, jclass, jdouble);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
      result->SetJ(fn(soa.Env(), klass.get(), *reinterpret_cast<double*>(&args[0])));
    } else if (shorty == "DJ") {
      using fntype = jdouble(JNIEnv*, jclass, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
      result->SetD(fn(soa.Env(), klass.get(), *reinterpret_cast<jlong*>(&args[0])));
    } else if (shorty == "DD") {
      // double fn(JNIEnv*, jclass, double) — Math.ceil, Math.floor, Math.sqrt, etc.
      using fntype = jdouble(JNIEnv*, jclass, jdouble);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jdouble arg0 = *reinterpret_cast<jdouble*>(&args[0]);
      result->SetD(fn(soa.Env(), klass.get(), arg0));
    } else if (shorty == "DDD") {
      // double fn(JNIEnv*, jclass, double, double) — Math.max, Math.min, Math.pow
      using fntype = jdouble(JNIEnv*, jclass, jdouble, jdouble);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jdouble arg0 = *reinterpret_cast<jdouble*>(&args[0]);
      jdouble arg1 = *reinterpret_cast<jdouble*>(&args[2]); // double takes 2 slots
      result->SetD(fn(soa.Env(), klass.get(), arg0, arg1));
    } else if (shorty == "FI") {
      using fntype = jfloat(JNIEnv*, jclass, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
      result->SetF(fn(soa.Env(), klass.get(), args[0]));
    } else if (shorty == "FJ") {
      using fntype = jfloat(JNIEnv*, jclass, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      result->SetF(fn(soa.Env(), klass.get(), arg0));
    } else if (shorty == "LLIII") {
      using fntype = jobject(JNIEnv*, jclass, jobject, jint, jint, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> arg0(soa.Env(),
          soa.AddLocalReference<jobject>(reinterpret_cast<StackReference<mirror::Object>*>(&args[0])->AsMirrorPtr()));
      // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
      ScopedLocalRef<jobject> r(soa.Env(), fn(soa.Env(), klass.get(), arg0.get(), args[1], args[2], args[3]));
      result->SetL(soa.Decode<mirror::Object>(r.get()));
    } else if (shorty == "VII") {
      using fntype = void(JNIEnv*, jclass, jint, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
      fn(soa.Env(), klass.get(), args[0], args[1]);
    } else if (shorty == "VL") {
      using fntype = void(JNIEnv*, jclass, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> arg0(soa.Env(),
          soa.AddLocalReference<jobject>(reinterpret_cast<StackReference<mirror::Object>*>(&args[0])->AsMirrorPtr()));
      // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
      fn(soa.Env(), klass.get(), arg0.get());
    } else if (shorty == "VLJZ") {
      // java.lang.Thread.nativeCreate(Thread, long, boolean)
      using fntype = void(JNIEnv*, jclass, jobject, jlong, jboolean);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> arg0(soa.Env(),
          soa.AddLocalReference<jobject>(reinterpret_cast<StackReference<mirror::Object>*>(&args[0])->AsMirrorPtr()));
      jlong arg1 = *reinterpret_cast<jlong*>(&args[1]);
      jboolean arg2 = static_cast<jboolean>(args[3]);
      fn(soa.Env(), klass.get(), arg0.get(), arg1, arg2);
    } else if (shorty == "IL") {
      using fntype = jint(JNIEnv*, jclass, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> arg0(soa.Env(),
          soa.AddLocalReference<jobject>(reinterpret_cast<StackReference<mirror::Object>*>(&args[0])->AsMirrorPtr()));
      // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
      result->SetI(fn(soa.Env(), klass.get(), arg0.get()));
    } else if (shorty == "Z") {
      using fntype = jboolean(JNIEnv*, jclass);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
      result->SetZ(fn(soa.Env(), klass.get()));
    } else if (shorty == "BI") {
      using fntype = jbyte(JNIEnv*, jclass, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
      result->SetB(fn(soa.Env(), klass.get(), args[0]));
    } else if (shorty == "II") {
      using fntype = jint(JNIEnv*, jclass, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
      result->SetI(fn(soa.Env(), klass.get(), args[0]));
    } else if (shorty == "LI") {
      using fntype = jobject(JNIEnv*, jclass, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jobject jresult;
      {
        jresult = fn(soa.Env(), klass.get(), args[0]);
      }
      result->SetL(soa.Decode<mirror::Object>(jresult));
    } else if (shorty == "LL") {
      using fntype = jobject(JNIEnv*, jclass, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> arg0(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[0])));
      jobject jresult;
      {
        // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
        jresult = fn(soa.Env(), klass.get(), arg0.get());
      }
      result->SetL(soa.Decode<mirror::Object>(jresult));
    } else if (shorty == "LLLILL") {
      // jobject fn(JNIEnv*, jclass, jobject, jobject, jint, jobject, jobject)
      // dalvik.system.DexFile.openDexFileNative(String, String, int, ClassLoader, Element[]).
      // Without this branch the interpreter's generic JNI bridge drops the call, leaving
      // PathClassLoader with a null cookie — every app-APK class then misses (CNFE).
      using fntype = jobject(JNIEnv*, jclass, jobject, jobject, jint, jobject, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> arg0(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[0])));
      ScopedLocalRef<jobject> arg1(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[1])));
      ScopedLocalRef<jobject> arg3(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[3])));
      ScopedLocalRef<jobject> arg4(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[4])));
      jobject jresult;
      {
        // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
        jresult = fn(soa.Env(), klass.get(), arg0.get(), arg1.get(), args[2], arg3.get(), arg4.get());
      }
      result->SetL(soa.Decode<mirror::Object>(jresult));
    } else if (shorty == "IJLILILZ") {
      // jint fn(JNIEnv*, jclass, jlong, jobject, jint, jobject, jint, jobject, jboolean)
      // com.android.icu.charset.NativeConverter.encode/decode(long handle, char[]/byte[] in,
      // int inEnd, byte[]/char[] out, int outEnd, int[] data, boolean flush). Without this
      // branch the generic JNI bridge drops the call, so the charset converter never runs —
      // data[] stays zero → MalformedInputException on even ASCII → UnixPath/FileSystem/
      // ZipFile/getResourceAsStream/ICU all break. The long occupies two vregs (low, high).
      using fntype = jint(JNIEnv*, jclass, jlong, jobject, jint, jobject, jint, jobject, jboolean);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      const jlong handle = static_cast<jlong>(
          (static_cast<uint64_t>(args[1]) << 32) | static_cast<uint32_t>(args[0]));
      ScopedLocalRef<jobject> in_arr(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[2])));
      ScopedLocalRef<jobject> out_arr(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[4])));
      ScopedLocalRef<jobject> data_arr(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[6])));
      jint jresult;
      {
        // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
        jresult = fn(soa.Env(), klass.get(), handle, in_arr.get(),
                     static_cast<jint>(args[3]), out_arr.get(),
                     static_cast<jint>(args[5]), data_arr.get(),
                     static_cast<jboolean>(args[7]));
      }
      result->SetI(jresult);
    } else if (shorty == "IIZ") {
      using fntype = jint(JNIEnv*, jclass, jint, jboolean);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
      result->SetI(fn(soa.Env(), klass.get(), args[0], args[1]));
    } else if (shorty == "ILI") {
      using fntype = jint(JNIEnv*, jclass, jobject, jint);
      fntype* const fn = reinterpret_cast<fntype*>(const_cast<void*>(
          method->GetEntryPointFromJni()));
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> arg0(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[0])));
      // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
      result->SetI(fn(soa.Env(), klass.get(), arg0.get(), args[1]));
    } else if (shorty == "SIZ") {
      using fntype = jshort(JNIEnv*, jclass, jint, jboolean);
      fntype* const fn =
          reinterpret_cast<fntype*>(const_cast<void*>(method->GetEntryPointFromJni()));
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
      result->SetS(fn(soa.Env(), klass.get(), args[0], args[1]));
    } else if (shorty == "VIZ") {
      using fntype = void(JNIEnv*, jclass, jint, jboolean);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
      fn(soa.Env(), klass.get(), args[0], args[1]);
    } else if (shorty == "ZLL") {
      using fntype = jboolean(JNIEnv*, jclass, jobject, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> arg0(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[0])));
      ScopedLocalRef<jobject> arg1(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[1])));
      // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
      result->SetZ(fn(soa.Env(), klass.get(), arg0.get(), arg1.get()));
    } else if (shorty == "ZILL") {
      using fntype = jboolean(JNIEnv*, jclass, jint, jobject, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> arg1(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[1])));
      ScopedLocalRef<jobject> arg2(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[2])));
      // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
      result->SetZ(fn(soa.Env(), klass.get(), args[0], arg1.get(), arg2.get()));
    } else if (shorty == "VILII") {
      using fntype = void(JNIEnv*, jclass, jint, jobject, jint, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> arg1(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[1])));
      // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
      fn(soa.Env(), klass.get(), args[0], arg1.get(), args[2], args[3]);
    } else if (shorty == "VLILII") {
      using fntype = void(JNIEnv*, jclass, jobject, jint, jobject, jint, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> arg0(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[0])));
      ScopedLocalRef<jobject> arg2(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[2])));
      // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
      fn(soa.Env(), klass.get(), arg0.get(), args[1], arg2.get(), args[3], args[4]);
    } else if (shorty == "JI") {
      using fntype = jlong(JNIEnv*, jclass, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      result->SetJ(fn(soa.Env(), klass.get(), args[0]));
    } else if (shorty == "JIII") {
      // long fn(JNIEnv*, jclass, int, int, int) — OHBridge.bitmapCreate
      using fntype = jlong(JNIEnv*, jclass, jint, jint, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      result->SetJ(fn(soa.Env(), klass.get(), args[0], args[1], args[2]));
    } else if (shorty == "JJII") {
      // long fn(JNIEnv*, jclass, long, int, int) — OHBridge.surfaceCreate
      using fntype = jlong(JNIEnv*, jclass, jlong, jint, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      const int pending_before = soa.Env()->ExceptionCheck() ? 1 : 0;
      fprintf(stderr,
              "[PF202N] interpreter JJII entry fn=%p handle=%lld a2=%d a3=%d pending_before=%d\n",
              reinterpret_cast<void*>(fn),
              static_cast<long long>(arg0),
              static_cast<int>(args[2]),
              static_cast<int>(args[3]),
              pending_before);
      fflush(stderr);
      const jlong native_result = fn(soa.Env(), klass.get(), arg0, args[2], args[3]);
      const int pending_after = soa.Env()->ExceptionCheck() ? 1 : 0;
      fprintf(stderr,
              "[PF202N] interpreter JJII return result=%lld pending_after=%d\n",
              static_cast<long long>(native_result),
              pending_after);
      fflush(stderr);
      result->SetJ(native_result);
    } else if (shorty == "VJF") {
      // void fn(JNIEnv*, jclass, long, float) — OHBridge.fontSetSize / penSetWidth
      using fntype = void(JNIEnv*, jclass, jlong, jfloat);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      fn(soa.Env(), klass.get(), arg0, *reinterpret_cast<jfloat*>(&args[2]));
    } else if (shorty == "VJZ") {
      // void fn(JNIEnv*, jclass, long, boolean) — OHBridge.penSetAntiAlias
      using fntype = void(JNIEnv*, jclass, jlong, jboolean);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      fn(soa.Env(), klass.get(), arg0, static_cast<jboolean>(args[2]));
    } else if (shorty == "ZJF") {
      // [DAYU600] VectorDrawable.nSetRootAlpha(long,float)->bool — @FastNative static (sticks via
      // register_android_graphics_classes; needs regular_jni marshalling, not the @CriticalNative ZJF above).
      using fntype = jboolean(JNIEnv*, jclass, jlong, jfloat);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      result->SetZ(fn(soa.Env(), klass.get(), *reinterpret_cast<jlong*>(&args[0]),
                      *reinterpret_cast<jfloat*>(&args[2])));
    } else if (shorty == "VJLI") {
      // VectorDrawable.nSetPathString(long,String,int) / PathParser.nParseStringForPath — @FastNative static
      using fntype = void(JNIEnv*, jclass, jlong, jobject, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> a2(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[2])));
      fn(soa.Env(), klass.get(), *reinterpret_cast<jlong*>(&args[0]), a2.get(), args[3]);
    } else if (shorty == "ZJLI") {
      // VectorDrawable.nGetFullPathProperties(long,byte[],int)->bool / nGetGroupProperties — @FastNative static
      using fntype = jboolean(JNIEnv*, jclass, jlong, jobject, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> a2(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[2])));
      result->SetZ(fn(soa.Env(), klass.get(), *reinterpret_cast<jlong*>(&args[0]), a2.get(), args[3]));
    } else if (shorty == "VJFFFFFFF") {
      // VectorDrawable.nUpdateGroupProperties(long, 7 floats) — @FastNative static
      using fntype = void(JNIEnv*, jclass, jlong, jfloat, jfloat, jfloat, jfloat, jfloat, jfloat, jfloat);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      fn(soa.Env(), klass.get(), *reinterpret_cast<jlong*>(&args[0]),
         *reinterpret_cast<jfloat*>(&args[2]), *reinterpret_cast<jfloat*>(&args[3]),
         *reinterpret_cast<jfloat*>(&args[4]), *reinterpret_cast<jfloat*>(&args[5]),
         *reinterpret_cast<jfloat*>(&args[6]), *reinterpret_cast<jfloat*>(&args[7]),
         *reinterpret_cast<jfloat*>(&args[8]));
    } else if (shorty == "VJFIFIFFFFFIII") {
      // VectorDrawable.nUpdateFullPathProperties(long, f,i,f,i,f,f,f,f,f,i,i,i) — @FastNative static
      using fntype = void(JNIEnv*, jclass, jlong, jfloat, jint, jfloat, jint,
                          jfloat, jfloat, jfloat, jfloat, jfloat, jint, jint, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      fn(soa.Env(), klass.get(), *reinterpret_cast<jlong*>(&args[0]),
         *reinterpret_cast<jfloat*>(&args[2]), args[3], *reinterpret_cast<jfloat*>(&args[4]), args[5],
         *reinterpret_cast<jfloat*>(&args[6]), *reinterpret_cast<jfloat*>(&args[7]),
         *reinterpret_cast<jfloat*>(&args[8]), *reinterpret_cast<jfloat*>(&args[9]),
         *reinterpret_cast<jfloat*>(&args[10]), args[11], args[12], args[13]);
    } else if (shorty == "VCLL") {
      // void System.log(char, String, Throwable)
      using fntype = void(JNIEnv*, jclass, jchar, jobject, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> arg1(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[1])));
      ScopedLocalRef<jobject> arg2(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[2])));
      fn(soa.Env(), klass.get(), args[0], arg1.get(), arg2.get());
    } else if (shorty == "LL") {
      // static Object method(Object)
      using fntype = jobject(JNIEnv*, jclass, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> arg0(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[0])));
      jobject jresult = fn(soa.Env(), klass.get(), arg0.get());
      result->SetL(soa.Decode<mirror::Object>(jresult));
    } else if (shorty == "LLL") {
      // Object method(Object, Object) — e.g. SystemProperties.native_get(String, String)
      using fntype = jobject(JNIEnv*, jclass, jobject, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> arg0(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[0])));
      ScopedLocalRef<jobject> arg1(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[1])));
      jobject jresult = fn(soa.Env(), klass.get(), arg0.get(), arg1.get());
      result->SetL(soa.Decode<mirror::Object>(jresult));
    } else if (shorty == "LLZL") {
      // Class classForName(String, boolean, ClassLoader)
      using fntype = jobject(JNIEnv*, jclass, jobject, jboolean, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> arg0(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[0])));
      ScopedLocalRef<jobject> arg2(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[2])));
      jobject jresult = fn(soa.Env(), klass.get(), arg0.get(), args[1], arg2.get());
      result->SetL(soa.Decode<mirror::Object>(jresult));
    } else if (shorty == "ZLI") {
      // boolean fn(JNIEnv*, jclass, String, int) — e.g. Log.isLoggable
      using fntype = jboolean(JNIEnv*, jclass, jobject, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> arg0(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[0])));
      result->SetZ(fn(soa.Env(), klass.get(), arg0.get(), args[1]));
    } else if (shorty == "ILLI") {
      // int fn(JNIEnv*, jclass, int, String, String, int) — e.g. Log.println_native
      using fntype = jint(JNIEnv*, jclass, jint, jint, jobject, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      result->SetI(fn(soa.Env(), klass.get(), args[0], args[1],
                       soa.AddLocalReference<jobject>(ObjArg(args[2])),
                       soa.AddLocalReference<jobject>(ObjArg(args[3]))));
    } else if (shorty == "IILL") {
      // int fn(JNIEnv*, jclass, int, int, String, String) — Log.println_native variant
      using fntype = jint(JNIEnv*, jclass, jint, jint, jobject, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> arg2(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[2])));
      ScopedLocalRef<jobject> arg3(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[3])));
      result->SetI(fn(soa.Env(), klass.get(), args[0], args[1], arg2.get(), arg3.get()));
    } else if (shorty == "ZLZ") {
      // boolean fn(JNIEnv*, jclass, String, boolean) — SystemProperties.native_get_boolean
      using fntype = jboolean(JNIEnv*, jclass, jobject, jboolean);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> arg0(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[0])));
      result->SetZ(fn(soa.Env(), klass.get(), arg0.get(), args[1]));
    } else if (shorty == "ILI") {
      // int fn(JNIEnv*, jclass, String, int) — SystemProperties.native_get_int
      using fntype = jint(JNIEnv*, jclass, jobject, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> arg0(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[0])));
      result->SetI(fn(soa.Env(), klass.get(), arg0.get(), args[1]));
    } else if (shorty == "JLJ") {
      // long fn(JNIEnv*, jclass, String, long) — SystemProperties.native_get_long
      using fntype = jlong(JNIEnv*, jclass, jobject, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> arg0(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[0])));
      jlong arg1 = *reinterpret_cast<jlong*>(&args[1]);
      result->SetJ(fn(soa.Env(), klass.get(), arg0.get(), arg1));
    } else if (shorty == "LLLL") {
      // Object fn(JNIEnv*, jclass, Object, Object, Object) — Runtime.nativeLoad
      using fntype = jobject(JNIEnv*, jclass, jobject, jobject, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> arg0(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[0])));
      ScopedLocalRef<jobject> arg1(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[1])));
      ScopedLocalRef<jobject> arg2(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[2])));
      ScopedLocalRef<jobject> jresult(soa.Env(),
                                      fn(soa.Env(), klass.get(), arg0.get(), arg1.get(), arg2.get()));
      result->SetL(soa.Decode<mirror::Object>(jresult.get()));
    } else if (shorty == "LLII") {
      // Object fn(JNIEnv*, jclass, Object, int, int) — StringFactory.newStringFromUtf8Bytes etc.
      using fntype = jobject(JNIEnv*, jclass, jobject, jint, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> arg0(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[0])));
      ScopedLocalRef<jobject> jresult(soa.Env(), fn(soa.Env(), klass.get(), arg0.get(), args[1], args[2]));
      result->SetL(soa.Decode<mirror::Object>(jresult.get()));
    } else if (shorty == "LLIIL") {
      // Object fn(JNIEnv*, jclass, Object, int, int, Object) — StringFactory.newStringFromBytes(
      // byte[], int, int, Charset), i.e. `new String(bytes, off, len, charset)`. This is the
      // ZipCoder entry-name decode; without this the call is dropped → null string → ZipFile
      // throws "Duplicate entry name: null" → getResourceAsStream/ICU all break.
      using fntype = jobject(JNIEnv*, jclass, jobject, jint, jint, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> arg0(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[0])));
      ScopedLocalRef<jobject> arg3(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[3])));
      ScopedLocalRef<jobject> jresult(soa.Env(),
          fn(soa.Env(), klass.get(), arg0.get(), args[1], args[2], arg3.get()));
      result->SetL(soa.Decode<mirror::Object>(jresult.get()));
    } else if (shorty == "VLIILIIZ") {
      // void fn(JNIEnv*, jclass, Object dst, int dstOff, int byteCount, byte[] src,
      //         int srcOff, int sizeofT, boolean swap) — libcore.io.Memory.unsafeBulkGet,
      // the bulk ByteBuffer copy used while parsing ICU .res data.
      using fntype = void(JNIEnv*, jclass, jobject, jint, jint, jobject, jint, jint, jboolean);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> a0(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[0])));
      ScopedLocalRef<jobject> a3(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[3])));
      fn(soa.Env(), klass.get(), a0.get(), args[1], args[2], a3.get(),
         args[4], args[5], static_cast<jboolean>(args[6]));
    } else if (shorty == "JLLL") {
      // long fn(JNIEnv*, jclass, Object, Object, Object) — e.g.
      // android.os.PerfettoTrace$Category.native_init(name, tags, severity).
      using fntype = jlong(JNIEnv*, jclass, jobject, jobject, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> a0(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[0])));
      ScopedLocalRef<jobject> a1(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[1])));
      ScopedLocalRef<jobject> a2(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[2])));
      result->SetJ(fn(soa.Env(), klass.get(), a0.get(), a1.get(), a2.get()));
    } else if (shorty == "DJII") {
      using fntype = jdouble(JNIEnv*, jclass, jlong, jint, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(), soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong p0 = *reinterpret_cast<jlong*>(&args[0]);
      jint p1 = static_cast<jint>(args[2]);
      jint p2 = static_cast<jint>(args[3]);
      result->SetD(fn(soa.Env(), klass.get(), p0, p1, p2));
    } else if (shorty == "I") {
      using fntype = jint(JNIEnv*, jclass);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(), soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      result->SetI(fn(soa.Env(), klass.get()));
    } else if (shorty == "IJII") {
      using fntype = jint(JNIEnv*, jclass, jlong, jint, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(), soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong p0 = *reinterpret_cast<jlong*>(&args[0]);
      jint p1 = static_cast<jint>(args[2]);
      jint p2 = static_cast<jint>(args[3]);
      result->SetI(fn(soa.Env(), klass.get(), p0, p1, p2));
    } else if (shorty == "IJJ") {
      using fntype = jint(JNIEnv*, jclass, jlong, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(), soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong p0 = *reinterpret_cast<jlong*>(&args[0]);
      jlong p1 = *reinterpret_cast<jlong*>(&args[2]);
      result->SetI(fn(soa.Env(), klass.get(), p0, p1));
    } else if (shorty == "JJ") {
      using fntype = jlong(JNIEnv*, jclass, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(), soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong p0 = *reinterpret_cast<jlong*>(&args[0]);
      result->SetJ(fn(soa.Env(), klass.get(), p0));
    } else if (shorty == "JJJ") {
      using fntype = jlong(JNIEnv*, jclass, jlong, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(), soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong p0 = *reinterpret_cast<jlong*>(&args[0]);
      jlong p1 = *reinterpret_cast<jlong*>(&args[2]);
      result->SetJ(fn(soa.Env(), klass.get(), p0, p1));
    } else if (shorty == "JJJJIIZ") {
      using fntype = jlong(JNIEnv*, jclass, jlong, jlong, jlong, jint, jint, jboolean);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(), soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong p0 = *reinterpret_cast<jlong*>(&args[0]);
      jlong p1 = *reinterpret_cast<jlong*>(&args[2]);
      jlong p2 = *reinterpret_cast<jlong*>(&args[4]);
      jint p3 = static_cast<jint>(args[6]);
      jint p4 = static_cast<jint>(args[7]);
      jboolean p5 = static_cast<jboolean>(args[8]);
      result->SetJ(fn(soa.Env(), klass.get(), p0, p1, p2, p3, p4, p5));
    } else if (shorty == "JJL") {
      using fntype = jlong(JNIEnv*, jclass, jlong, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(), soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong p0 = *reinterpret_cast<jlong*>(&args[0]);
      ScopedLocalRef<jobject> p1(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[2])));
      result->SetJ(fn(soa.Env(), klass.get(), p0, p1.get()));
    } else if (shorty == "JLILZZII") {
      using fntype = jlong(JNIEnv*, jclass, jobject, jint, jobject, jboolean, jboolean, jint, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(), soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> p0(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[0])));
      jint p1 = static_cast<jint>(args[1]);
      ScopedLocalRef<jobject> p2(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[2])));
      jboolean p3 = static_cast<jboolean>(args[3]);
      jboolean p4 = static_cast<jboolean>(args[4]);
      jint p5 = static_cast<jint>(args[5]);
      jint p6 = static_cast<jint>(args[6]);
      result->SetJ(fn(soa.Env(), klass.get(), p0.get(), p1, p2.get(), p3, p4, p5, p6));
    } else if (shorty == "LJ") {
      using fntype = jobject(JNIEnv*, jclass, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(), soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong p0 = *reinterpret_cast<jlong*>(&args[0]);
      jobject r = fn(soa.Env(), klass.get(), p0);
      result->SetL(soa.Decode<mirror::Object>(r));
    } else if (shorty == "LJII") {
      using fntype = jobject(JNIEnv*, jclass, jlong, jint, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(), soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong p0 = *reinterpret_cast<jlong*>(&args[0]);
      jint p1 = static_cast<jint>(args[2]);
      jint p2 = static_cast<jint>(args[3]);
      jobject r = fn(soa.Env(), klass.get(), p0, p1, p2);
      result->SetL(soa.Decode<mirror::Object>(r));
    } else if (shorty == "LJJ") {
      using fntype = jobject(JNIEnv*, jclass, jlong, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(), soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong p0 = *reinterpret_cast<jlong*>(&args[0]);
      jlong p1 = *reinterpret_cast<jlong*>(&args[2]);
      jobject r = fn(soa.Env(), klass.get(), p0, p1);
      result->SetL(soa.Decode<mirror::Object>(r));
    } else if (shorty == "LJJI") {
      using fntype = jobject(JNIEnv*, jclass, jlong, jlong, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(), soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong p0 = *reinterpret_cast<jlong*>(&args[0]);
      jlong p1 = *reinterpret_cast<jlong*>(&args[2]);
      jint p2 = static_cast<jint>(args[4]);
      jobject r = fn(soa.Env(), klass.get(), p0, p1, p2);
      result->SetL(soa.Decode<mirror::Object>(r));
    } else if (shorty == "VJIIL") {
      using fntype = void(JNIEnv*, jclass, jlong, jint, jint, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(), soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong p0 = *reinterpret_cast<jlong*>(&args[0]);
      jint p1 = static_cast<jint>(args[2]);
      jint p2 = static_cast<jint>(args[3]);
      ScopedLocalRef<jobject> p3(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[4])));
      fn(soa.Env(), klass.get(), p0, p1, p2, p3.get());
    } else if (shorty == "VJJ") {
      using fntype = void(JNIEnv*, jclass, jlong, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(), soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong p0 = *reinterpret_cast<jlong*>(&args[0]);
      jlong p1 = *reinterpret_cast<jlong*>(&args[2]);
      fn(soa.Env(), klass.get(), p0, p1);
    } else if (shorty == "VJJI") {
      using fntype = void(JNIEnv*, jclass, jlong, jlong, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(), soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong p0 = *reinterpret_cast<jlong*>(&args[0]);
      jlong p1 = *reinterpret_cast<jlong*>(&args[2]);
      jint p2 = static_cast<jint>(args[4]);
      fn(soa.Env(), klass.get(), p0, p1, p2);
    } else if (shorty == "VJJID") {
      using fntype = void(JNIEnv*, jclass, jlong, jlong, jint, jdouble);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(), soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong p0 = *reinterpret_cast<jlong*>(&args[0]);
      jlong p1 = *reinterpret_cast<jlong*>(&args[2]);
      jint p2 = static_cast<jint>(args[4]);
      jdouble p3 = *reinterpret_cast<jdouble*>(&args[5]);
      fn(soa.Env(), klass.get(), p0, p1, p2, p3);
    } else if (shorty == "VJJIJ") {
      using fntype = void(JNIEnv*, jclass, jlong, jlong, jint, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(), soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong p0 = *reinterpret_cast<jlong*>(&args[0]);
      jlong p1 = *reinterpret_cast<jlong*>(&args[2]);
      jint p2 = static_cast<jint>(args[4]);
      jlong p3 = *reinterpret_cast<jlong*>(&args[5]);
      fn(soa.Env(), klass.get(), p0, p1, p2, p3);
    } else if (shorty == "VJJIL") {
      using fntype = void(JNIEnv*, jclass, jlong, jlong, jint, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(), soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong p0 = *reinterpret_cast<jlong*>(&args[0]);
      jlong p1 = *reinterpret_cast<jlong*>(&args[2]);
      jint p2 = static_cast<jint>(args[4]);
      ScopedLocalRef<jobject> p3(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[5])));
      fn(soa.Env(), klass.get(), p0, p1, p2, p3.get());
    } else if (shorty == "VJJZ") {
      using fntype = void(JNIEnv*, jclass, jlong, jlong, jboolean);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(), soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong p0 = *reinterpret_cast<jlong*>(&args[0]);
      jlong p1 = *reinterpret_cast<jlong*>(&args[2]);
      jboolean p2 = static_cast<jboolean>(args[4]);
      fn(soa.Env(), klass.get(), p0, p1, p2);
    } else if (shorty == "VJL") {
      using fntype = void(JNIEnv*, jclass, jlong, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(), soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong p0 = *reinterpret_cast<jlong*>(&args[0]);
      ScopedLocalRef<jobject> p1(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[2])));
      fn(soa.Env(), klass.get(), p0, p1.get());
    } else if (shorty == "VJLL") {
      using fntype = void(JNIEnv*, jclass, jlong, jobject, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(), soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong p0 = *reinterpret_cast<jlong*>(&args[0]);
      ScopedLocalRef<jobject> p1(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[2])));
      ScopedLocalRef<jobject> p2(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[3])));
      fn(soa.Env(), klass.get(), p0, p1.get(), p2.get());
    } else if (shorty == "ZJDII") {
      using fntype = jboolean(JNIEnv*, jclass, jlong, jdouble, jint, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(), soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong p0 = *reinterpret_cast<jlong*>(&args[0]);
      jdouble p1 = *reinterpret_cast<jdouble*>(&args[2]);
      jint p2 = static_cast<jint>(args[4]);
      jint p3 = static_cast<jint>(args[5]);
      result->SetZ(fn(soa.Env(), klass.get(), p0, p1, p2, p3));
    } else if (shorty == "ZJI") {
      using fntype = jboolean(JNIEnv*, jclass, jlong, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(), soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong p0 = *reinterpret_cast<jlong*>(&args[0]);
      jint p1 = static_cast<jint>(args[2]);
      result->SetZ(fn(soa.Env(), klass.get(), p0, p1));
    } else if (shorty == "ZJII") {
      using fntype = jboolean(JNIEnv*, jclass, jlong, jint, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(), soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong p0 = *reinterpret_cast<jlong*>(&args[0]);
      jint p1 = static_cast<jint>(args[2]);
      jint p2 = static_cast<jint>(args[3]);
      result->SetZ(fn(soa.Env(), klass.get(), p0, p1, p2));
    } else if (shorty == "ZJJ") {
      using fntype = jboolean(JNIEnv*, jclass, jlong, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(), soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong p0 = *reinterpret_cast<jlong*>(&args[0]);
      jlong p1 = *reinterpret_cast<jlong*>(&args[2]);
      result->SetZ(fn(soa.Env(), klass.get(), p0, p1));
    } else if (shorty == "ZJJII") {
      using fntype = jboolean(JNIEnv*, jclass, jlong, jlong, jint, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(), soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong p0 = *reinterpret_cast<jlong*>(&args[0]);
      jlong p1 = *reinterpret_cast<jlong*>(&args[2]);
      jint p2 = static_cast<jint>(args[4]);
      jint p3 = static_cast<jint>(args[5]);
      result->SetZ(fn(soa.Env(), klass.get(), p0, p1, p2, p3));
    } else if (shorty == "ZJLII") {
      using fntype = jboolean(JNIEnv*, jclass, jlong, jobject, jint, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(), soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong p0 = *reinterpret_cast<jlong*>(&args[0]);
      ScopedLocalRef<jobject> p1(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[2])));
      jint p2 = static_cast<jint>(args[3]);
      jint p3 = static_cast<jint>(args[4]);
      result->SetZ(fn(soa.Env(), klass.get(), p0, p1.get(), p2, p3));
    } else if (shorty == "JZ") {
      // long fn(JNIEnv*, jclass, boolean) — java.util.zip.Inflater.init(nowrap).
      using fntype = jlong(JNIEnv*, jclass, jboolean);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      result->SetJ(fn(soa.Env(), klass.get(), static_cast<jboolean>(args[0])));
    } else if (shorty == "III") {
      // int fn(JNIEnv*, jclass, int, int) — e.g. java.lang.Character.digitImpl(cp, radix).
      using fntype = jint(JNIEnv*, jclass, jint, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      result->SetI(fn(soa.Env(), klass.get(), static_cast<jint>(args[0]), static_cast<jint>(args[1])));
    } else if (shorty == "VJLII") {
      // void fn(JNIEnv*, jclass, long, byte[], int, int) — Inflater.setDictionary(addr,b,off,len).
      using fntype = void(JNIEnv*, jclass, jlong, jobject, jint, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong a0 = *reinterpret_cast<jlong*>(&args[0]);
      ScopedLocalRef<jobject> a2(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[2])));
      fn(soa.Env(), klass.get(), a0, a2.get(), args[3], args[4]);
    } else if (shorty == "VJ") {
      // void fn(JNIEnv*, jclass, long) — Inflater.end(addr) / Inflater.reset(addr).
      using fntype = void(JNIEnv*, jclass, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      fn(soa.Env(), klass.get(), *reinterpret_cast<jlong*>(&args[0]));
    } else if (shorty == "IJ") {
      // int fn(JNIEnv*, jclass, long) — Inflater.getAdler(addr) / MatcherNative.groupCountImpl.
      using fntype = jint(JNIEnv*, jclass, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      result->SetI(fn(soa.Env(), klass.get(), *reinterpret_cast<jlong*>(&args[0])));
    } else if (shorty == "ZJ") {
      // boolean fn(JNIEnv*, jclass, long) — MatcherNative.hitEndImpl / requireEndImpl.
      using fntype = jboolean(JNIEnv*, jclass, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      result->SetZ(fn(soa.Env(), klass.get(), *reinterpret_cast<jlong*>(&args[0])));
    } else if (shorty == "JLI") {
      // long fn(JNIEnv*, jclass, Object, int) — PatternNative.compileImpl(regex, flags).
      using fntype = jlong(JNIEnv*, jclass, jobject, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> a0(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[0])));
      result->SetJ(fn(soa.Env(), klass.get(), a0.get(), static_cast<jint>(args[1])));
    } else if (shorty == "IJL") {
      // int fn(JNIEnv*, jclass, long, Object) — PatternNative.getMatchedGroupIndexImpl.
      using fntype = jint(JNIEnv*, jclass, jlong, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong a0 = *reinterpret_cast<jlong*>(&args[0]);
      ScopedLocalRef<jobject> a2(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[2])));
      result->SetI(fn(soa.Env(), klass.get(), a0, a2.get()));
    } else if (shorty == "ZJL") {
      // boolean fn(JNIEnv*, jclass, long, Object) — MatcherNative.matchesImpl/lookingAtImpl/
      // findNextImpl(addr, int[]).
      using fntype = jboolean(JNIEnv*, jclass, jlong, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong a0 = *reinterpret_cast<jlong*>(&args[0]);
      ScopedLocalRef<jobject> a2(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[2])));
      result->SetZ(fn(soa.Env(), klass.get(), a0, a2.get()));
    } else if (shorty == "ZJIL") {
      // boolean fn(JNIEnv*, jclass, long, int, Object) — MatcherNative.findImpl(addr, from, int[]).
      using fntype = jboolean(JNIEnv*, jclass, jlong, jint, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong a0 = *reinterpret_cast<jlong*>(&args[0]);
      ScopedLocalRef<jobject> a3(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[3])));
      result->SetZ(fn(soa.Env(), klass.get(), a0, static_cast<jint>(args[2]), a3.get()));
    } else if (shorty == "JJ") {
      // long fn(JNIEnv*, jclass, long) — e.g. ApkAssets.nativeGetStringBlock(long)
      using fntype = jlong(JNIEnv*, jclass, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      result->SetJ(fn(soa.Env(), klass.get(), arg0));
    } else if (shorty == "JILIL") {
      // long fn(JNIEnv*, jclass, int, String, int, Object) — ApkAssets.nativeLoad
      using fntype = jlong(JNIEnv*, jclass, jint, jobject, jint, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> arg1(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[1])));
      ScopedLocalRef<jobject> arg3(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[3])));
      result->SetJ(fn(soa.Env(), klass.get(), args[0], arg1.get(), args[2], arg3.get()));
    } else if (shorty == "I") {
      // int fn(JNIEnv*, jclass) — VMRuntime.getNotifyNativeInterval etc.
      using fntype = jint(JNIEnv*, jclass);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      result->SetI(fn(soa.Env(), klass.get()));
    } else if (shorty == "VJ") {
      // void fn(JNIEnv*, jclass, long) — Parcel.nativeFreeBuffer, nativeDestroy etc.
      using fntype = void(JNIEnv*, jclass, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      fn(soa.Env(), klass.get(), arg0);
    } else if (shorty == "VJJI") {
      // void fn(JNIEnv*, jclass, long, long, int) — SC.nativeSetLayer/nativeSetLayerStack
      using fntype = void(JNIEnv*, jclass, jlong, jlong, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(), soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong a0 = *reinterpret_cast<jlong*>(&args[0]);
      jlong a1 = *reinterpret_cast<jlong*>(&args[2]);
      fn(soa.Env(), klass.get(), a0, a1, args[4]);
    } else if (shorty == "VJJII") {
      // void fn(JNIEnv*, jclass, long, long, int, int) — SC.nativeSetFlags
      using fntype = void(JNIEnv*, jclass, jlong, jlong, jint, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(), soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong a0 = *reinterpret_cast<jlong*>(&args[0]);
      jlong a1 = *reinterpret_cast<jlong*>(&args[2]);
      fn(soa.Env(), klass.get(), a0, a1, args[4], args[5]);
    } else if (shorty == "VJJLLJ") {
      // void fn(JNIEnv*, jclass, long, long, Object, Object, long) — SC.nativeSetGeometry
      using fntype = void(JNIEnv*, jclass, jlong, jlong, jobject, jobject, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(), soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong a0 = *reinterpret_cast<jlong*>(&args[0]);
      jlong a1 = *reinterpret_cast<jlong*>(&args[2]);
      ScopedLocalRef<jobject> a2(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[4])));
      ScopedLocalRef<jobject> a3(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[5])));
      jlong a4 = *reinterpret_cast<jlong*>(&args[6]);
      fn(soa.Env(), klass.get(), a0, a1, a2.get(), a3.get(), a4);
    } else if (shorty == "VJZZ") {
      // void fn(JNIEnv*, jclass, long, boolean, boolean) — SC.nativeApplyTransaction
      using fntype = void(JNIEnv*, jclass, jlong, jboolean, jboolean);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(), soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong a0 = *reinterpret_cast<jlong*>(&args[0]);
      fn(soa.Env(), klass.get(), a0, (jboolean)args[2], (jboolean)args[3]);
    } else if (shorty == "VLJI") {
      // void fn(JNIEnv*, jclass, Object, long, int) — Thread.sleep
      using fntype = void(JNIEnv*, jclass, jobject, jlong, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(), soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> a0(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[0])));
      jlong a1 = *reinterpret_cast<jlong*>(&args[1]);
      fn(soa.Env(), klass.get(), a0.get(), a1, args[3]);
    } else if (shorty == "VJII") {
      // void fn(JNIEnv*, jclass, long, int, int) — Canvas.nDrawColor etc.
      using fntype = void(JNIEnv*, jclass, jlong, jint, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      fn(soa.Env(), klass.get(), arg0, args[2], args[3]);
    } else if (shorty == "VJL") {
      // void fn(JNIEnv*, jclass, long, Object) — Parcel.nativeMarkForBinder etc.
      using fntype = void(JNIEnv*, jclass, jlong, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      ScopedLocalRef<jobject> arg1(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[2])));
      fn(soa.Env(), klass.get(), arg0, arg1.get());
    } else if (shorty == "IJL") {
      // int fn(JNIEnv*, jclass, long, Object) — Parcel.nativeReadInt etc.
      using fntype = jint(JNIEnv*, jclass, jlong, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      ScopedLocalRef<jobject> arg1(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[2])));
      result->SetI(fn(soa.Env(), klass.get(), arg0, arg1.get()));
    } else if (shorty == "IJ") {
      // int fn(JNIEnv*, jclass, long) — Parcel.nativeReadInt(long)
      using fntype = jint(JNIEnv*, jclass, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      result->SetI(fn(soa.Env(), klass.get(), arg0));
    } else if (shorty == "LJ") {
      // Object fn(JNIEnv*, jclass, long) — Parcel.nativeReadString etc.
      using fntype = jobject(JNIEnv*, jclass, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      ScopedLocalRef<jobject> r(soa.Env(), fn(soa.Env(), klass.get(), arg0));
      result->SetL(soa.Decode<mirror::Object>(r.get()));
    } else if (shorty == "LLI") {
      // Object fn(JNIEnv*, jclass, Object, int) — Array.createObjectArray etc.
      using fntype = jobject(JNIEnv*, jclass, jobject, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> arg0(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[0])));
      ScopedLocalRef<jobject> r(soa.Env(), fn(soa.Env(), klass.get(), arg0.get(), args[1]));
      result->SetL(soa.Decode<mirror::Object>(r.get()));
    } else if (shorty == "LIIL") {
      // Object fn(JNIEnv*, jclass, int, int, Object) — StringFactory.newStringFromChars
      using fntype = jobject(JNIEnv*, jclass, jint, jint, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> arg2(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[2])));
      ScopedLocalRef<jobject> r(soa.Env(), fn(soa.Env(), klass.get(), args[0], args[1], arg2.get()));
      result->SetL(soa.Decode<mirror::Object>(r.get()));
    } else if (shorty == "VLLJ") {
      // void fn(JNIEnv*, jclass, Object, Object, long) — McdLoader.nativeSetApkAssets etc.
      using fntype = void(JNIEnv*, jclass, jobject, jobject, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> arg0(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[0])));
      ScopedLocalRef<jobject> arg1(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[1])));
      jlong arg2 = *reinterpret_cast<jlong*>(&args[2]);
      fn(soa.Env(), klass.get(), arg0.get(), arg1.get(), arg2);
    } else if (shorty == "VJI") {
      // void fn(JNIEnv*, jclass, long, int) — Parcel.nativeWriteInt etc.
      using fntype = void(JNIEnv*, jclass, jlong, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      fn(soa.Env(), klass.get(), arg0, args[2]);
    } else if (shorty == "VJJ") {
      // void fn(JNIEnv*, jclass, long, long) — NativeAllocationRegistry.applyFreeFunction
      using fntype = void(JNIEnv*, jclass, jlong, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      jlong arg1 = *reinterpret_cast<jlong*>(&args[2]);
      fn(soa.Env(), klass.get(), arg0, arg1);
    } else if (shorty == "VJFF") {
      // void fn(JNIEnv*, jclass, long, float, float) — OHBridge.canvasTranslate / canvasScale
      using fntype = void(JNIEnv*, jclass, jlong, jfloat, jfloat);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      fn(soa.Env(),
         klass.get(),
         arg0,
         *reinterpret_cast<jfloat*>(&args[2]),
         *reinterpret_cast<jfloat*>(&args[3]));
    } else if (shorty == "VJFFF") {
      // void fn(JNIEnv*, jclass, long, float, float, float) — OHBridge.canvasRotate
      using fntype = void(JNIEnv*, jclass, jlong, jfloat, jfloat, jfloat);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      fn(soa.Env(),
         klass.get(),
         arg0,
         *reinterpret_cast<jfloat*>(&args[2]),
         *reinterpret_cast<jfloat*>(&args[3]),
         *reinterpret_cast<jfloat*>(&args[4]));
    } else if (shorty == "VJFFFF") {
      // void fn(JNIEnv*, jclass, long, float, float, float, float) — OHBridge.canvasClipRect
      using fntype = void(JNIEnv*, jclass, jlong, jfloat, jfloat, jfloat, jfloat);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      fn(soa.Env(),
         klass.get(),
         arg0,
         *reinterpret_cast<jfloat*>(&args[2]),
         *reinterpret_cast<jfloat*>(&args[3]),
         *reinterpret_cast<jfloat*>(&args[4]),
         *reinterpret_cast<jfloat*>(&args[5]));
    } else if (shorty == "VJFFFFJ") {
      // void fn(JNIEnv*, jclass, long, float, float, float, float, long) — OHBridge.canvasDrawLine
      using fntype = void(JNIEnv*, jclass, jlong, jfloat, jfloat, jfloat, jfloat, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      jlong arg5 = *reinterpret_cast<jlong*>(&args[6]);
      fn(soa.Env(),
         klass.get(),
         arg0,
         *reinterpret_cast<jfloat*>(&args[2]),
         *reinterpret_cast<jfloat*>(&args[3]),
         *reinterpret_cast<jfloat*>(&args[4]),
         *reinterpret_cast<jfloat*>(&args[5]),
         arg5);
    } else if (shorty == "VJFFFJJ") {
      // void fn(JNIEnv*, jclass, long, float, float, float, long, long) — OHBridge.canvasDrawCircle
      using fntype = void(JNIEnv*, jclass, jlong, jfloat, jfloat, jfloat, jlong, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      jlong arg4 = *reinterpret_cast<jlong*>(&args[5]);
      jlong arg5 = *reinterpret_cast<jlong*>(&args[7]);
      fn(soa.Env(),
         klass.get(),
         arg0,
         *reinterpret_cast<jfloat*>(&args[2]),
         *reinterpret_cast<jfloat*>(&args[3]),
         *reinterpret_cast<jfloat*>(&args[4]),
         arg4,
         arg5);
    } else if (shorty == "VJJFF") {
      // void fn(JNIEnv*, jclass, long, long, float, float) — OHBridge.canvasDrawBitmap
      using fntype = void(JNIEnv*, jclass, jlong, jlong, jfloat, jfloat);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      jlong arg1 = *reinterpret_cast<jlong*>(&args[2]);
      fn(soa.Env(),
         klass.get(),
         arg0,
         arg1,
         *reinterpret_cast<jfloat*>(&args[4]),
         *reinterpret_cast<jfloat*>(&args[5]));
    } else if (shorty == "VJJJJ") {
      // void fn(JNIEnv*, jclass, long, long, long, long) — OHBridge.canvasDrawPath
      using fntype = void(JNIEnv*, jclass, jlong, jlong, jlong, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      jlong arg1 = *reinterpret_cast<jlong*>(&args[2]);
      jlong arg2 = *reinterpret_cast<jlong*>(&args[4]);
      jlong arg3 = *reinterpret_cast<jlong*>(&args[6]);
      fn(soa.Env(), klass.get(), arg0, arg1, arg2, arg3);
    } else if (shorty == "VJFFFFJJ") {
      // void fn(JNIEnv*, jclass, long, float, float, float, float, long, long) — OHBridge.canvasDrawRect / canvasDrawOval
      using fntype = void(JNIEnv*, jclass, jlong, jfloat, jfloat, jfloat, jfloat, jlong, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      jlong arg5 = *reinterpret_cast<jlong*>(&args[6]);
      jlong arg6 = *reinterpret_cast<jlong*>(&args[8]);
      fn(soa.Env(),
         klass.get(),
         arg0,
         *reinterpret_cast<jfloat*>(&args[2]),
         *reinterpret_cast<jfloat*>(&args[3]),
         *reinterpret_cast<jfloat*>(&args[4]),
         *reinterpret_cast<jfloat*>(&args[5]),
         arg5,
         arg6);
    } else if (shorty == "VJFFFFFFJ") {
      // BaseRecordingCanvas.nDrawRoundRect(long, f,f,f,f,rx,ry, long paint) — draw-op hedge (@FastNative)
      using fntype = void(JNIEnv*, jclass, jlong, jfloat, jfloat, jfloat, jfloat, jfloat, jfloat, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      fn(soa.Env(), klass.get(), *reinterpret_cast<jlong*>(&args[0]),
         *reinterpret_cast<jfloat*>(&args[2]), *reinterpret_cast<jfloat*>(&args[3]),
         *reinterpret_cast<jfloat*>(&args[4]), *reinterpret_cast<jfloat*>(&args[5]),
         *reinterpret_cast<jfloat*>(&args[6]), *reinterpret_cast<jfloat*>(&args[7]),
         *reinterpret_cast<jlong*>(&args[8]));
    } else if (shorty == "VJFFFFFFJJ") {
      // void fn(JNIEnv*, jclass, long, float, float, float, float, float, float, long, long) — OHBridge.canvasDrawRoundRect
      using fntype = void(JNIEnv*, jclass, jlong, jfloat, jfloat, jfloat, jfloat, jfloat, jfloat, jlong, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      jlong arg7 = *reinterpret_cast<jlong*>(&args[8]);
      jlong arg8 = *reinterpret_cast<jlong*>(&args[10]);
      fn(soa.Env(),
         klass.get(),
         arg0,
         *reinterpret_cast<jfloat*>(&args[2]),
         *reinterpret_cast<jfloat*>(&args[3]),
         *reinterpret_cast<jfloat*>(&args[4]),
         *reinterpret_cast<jfloat*>(&args[5]),
         *reinterpret_cast<jfloat*>(&args[6]),
         *reinterpret_cast<jfloat*>(&args[7]),
         arg7,
         arg8);
    } else if (shorty == "VJFFFFFFZJJ") {
      // void fn(JNIEnv*, jclass, long, float, float, float, float, float, float, boolean, long, long) — OHBridge.canvasDrawArc
      using fntype = void(JNIEnv*, jclass, jlong, jfloat, jfloat, jfloat, jfloat, jfloat, jfloat, jboolean, jlong, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      jlong arg8 = *reinterpret_cast<jlong*>(&args[9]);
      jlong arg9 = *reinterpret_cast<jlong*>(&args[11]);
      fn(soa.Env(),
         klass.get(),
         arg0,
         *reinterpret_cast<jfloat*>(&args[2]),
         *reinterpret_cast<jfloat*>(&args[3]),
         *reinterpret_cast<jfloat*>(&args[4]),
         *reinterpret_cast<jfloat*>(&args[5]),
         *reinterpret_cast<jfloat*>(&args[6]),
         *reinterpret_cast<jfloat*>(&args[7]),
         static_cast<jboolean>(args[8]),
         arg8,
         arg9);
    } else if (shorty == "JJLL") {
      // long fn(JNIEnv*, jclass, long, Object, Object) — Surface.nativeLockCanvas
      using fntype = jlong(JNIEnv*, jclass, jlong, jobject, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(), soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      ScopedLocalRef<jobject> a1(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[2])));
      ScopedLocalRef<jobject> a2(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[3])));
      result->SetJ(fn(soa.Env(), klass.get(), arg0, a1.get(), a2.get()));
    } else if (shorty == "JLLIIIIJL") {
      // long fn(JNIEnv*, jclass, Object, Object, int, int, int, int, long, Object)
      // SurfaceControl.nativeCreate(Session, name, w, h, format, flags, parentPtr, metadata)
      using fntype = jlong(JNIEnv*, jclass, jobject, jobject, jint, jint, jint, jint, jlong, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(), soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> a0(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[0])));
      ScopedLocalRef<jobject> a1(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[1])));
      jlong a5 = *reinterpret_cast<jlong*>(&args[6]); // after 4 ints + 2 obj slots = offset 6
      ScopedLocalRef<jobject> a6(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[8])));
      result->SetJ(fn(soa.Env(), klass.get(), a0.get(), a1.get(), args[2], args[3], args[4], args[5], a5, a6.get()));
    } else if (shorty == "VJLZZ") {
      // void fn(JNIEnv*, jclass, long, Object[], boolean, boolean) — AssetManager.nativeSetApkAssets
      using fntype = void(JNIEnv*, jclass, jlong, jobjectArray, jboolean, jboolean);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      ScopedLocalRef<jobject> arg1(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[2]))); // after long (2 slots)
      fn(soa.Env(), klass.get(), arg0, (jobjectArray)arg1.get(), (jboolean)args[3], (jboolean)args[4]);
    } else if (shorty == "J" &&
               method->GetDeclaringClass()->DescriptorEquals("Landroid/content/res/AssetManager;")) {
      // [DAYU600] long fn(JNIEnv*, jclass) — AssetManager.nativeCreate (new AssetManager2()).
      using fntype = jlong(JNIEnv*, jclass);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      result->SetJ(fn(soa.Env(), klass.get()));
    } else if (shorty == "VJIIL") {
      using fntype = void(JNIEnv*, jclass, jlong, jint, jint, jbyteArray);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      ScopedLocalRef<jobject> arg3(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[4])));
      fn(soa.Env(), klass.get(), arg0, args[2], args[3], reinterpret_cast<jbyteArray>(arg3.get()));
    } else if (shorty == "VJLFFII") {
      // void fn(JNIEnv*, jclass, long, Object, float, float, int, int) — OHBridge.canvasDrawImage
      using fntype = void(JNIEnv*, jclass, jlong, jbyteArray, jfloat, jfloat, jint, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      ScopedLocalRef<jobject> arg1(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[2])));
      fn(soa.Env(),
         klass.get(),
         arg0,
         reinterpret_cast<jbyteArray>(arg1.get()),
         *reinterpret_cast<jfloat*>(&args[3]),
         *reinterpret_cast<jfloat*>(&args[4]),
         args[5],
         args[6]);
    } else if (shorty == "VJLFFJJJ") {
      // void fn(JNIEnv*, jclass, long, Object, float, float, long, long, long) — OHBridge.canvasDrawText
      using fntype = void(JNIEnv*, jclass, jlong, jstring, jfloat, jfloat, jlong, jlong, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      ScopedLocalRef<jobject> arg1(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[2])));
      jlong arg4 = *reinterpret_cast<jlong*>(&args[5]);
      jlong arg5 = *reinterpret_cast<jlong*>(&args[7]);
      jlong arg6 = *reinterpret_cast<jlong*>(&args[9]);
      fn(soa.Env(),
         klass.get(),
         arg0,
         reinterpret_cast<jstring>(arg1.get()),
         *reinterpret_cast<jfloat*>(&args[3]),
         *reinterpret_cast<jfloat*>(&args[4]),
         arg4,
         arg5,
         arg6);
    } else if (shorty == "VLLL") {
      // void fn(JNIEnv*, jclass, Object, Object, Object)
      using fntype = void(JNIEnv*, jclass, jobject, jobject, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> arg0(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[0])));
      ScopedLocalRef<jobject> arg1(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[1])));
      ScopedLocalRef<jobject> arg2(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[2])));
      fn(soa.Env(), klass.get(), arg0.get(), arg1.get(), arg2.get());
    } else if (shorty == "J") {
      // long fn(JNIEnv*, jclass) — System.currentTimeMillis / nanoTime
      using fntype = jlong(JNIEnv*, jclass);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      result->SetJ(fn(soa.Env(), klass.get()));
    } else if (shorty == "ZJ") {
      // boolean fn(JNIEnv*, jclass, long) — Trace.nativeIsTagEnabled
      using fntype = jboolean(JNIEnv*, jclass, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      result->SetZ(fn(soa.Env(), klass.get(), arg0));
    } else if (shorty == "JILIL") {
      // [DAYU600] long fn(JNIEnv*, jclass, int, String, int, Object) — ApkAssets.nativeLoad
      using fntype = jlong(JNIEnv*, jclass, jint, jstring, jint, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> a1(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[1])));
      ScopedLocalRef<jobject> a3(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[3])));
      result->SetJ(fn(soa.Env(), klass.get(), args[0],
                      reinterpret_cast<jstring>(a1.get()), args[2], a3.get()));
    } else if (shorty == "IJLLL") {
      // [DAYU600] int fn(JNIEnv*, jclass, long, String, String, String) — nativeGetResourceIdentifier
      using fntype = jint(JNIEnv*, jclass, jlong, jstring, jstring, jstring);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      ScopedLocalRef<jobject> a1(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[2])));
      ScopedLocalRef<jobject> a2(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[3])));
      ScopedLocalRef<jobject> a3(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[4])));
      result->SetI(fn(soa.Env(), klass.get(), arg0, reinterpret_cast<jstring>(a1.get()),
                      reinterpret_cast<jstring>(a2.get()), reinterpret_cast<jstring>(a3.get())));
    } else if (shorty == "LJI") {
      // [DAYU600] String fn(JNIEnv*, jclass, long, int) — AssetManager.nativeGetResourceName
      using fntype = jobject(JNIEnv*, jclass, jlong, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      jobject r = fn(soa.Env(), klass.get(), arg0, args[2]);
      result->SetL(soa.Decode<mirror::Object>(r));
    } else if (shorty == "IJISLZ") {
      // [DAYU600] int fn(JNIEnv*, jclass, long, int, short, Object, boolean) — nativeGetResourceValue
      using fntype = jint(JNIEnv*, jclass, jlong, jint, jshort, jobject, jboolean);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      ScopedLocalRef<jobject> a3(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[4])));
      result->SetI(fn(soa.Env(), klass.get(), arg0, args[2],
                      static_cast<jshort>(args[3]), a3.get(), static_cast<jboolean>(args[5])));
    } else if (shorty == "JJIL") {
      // [DAYU600] long fn(JNIEnv*, jclass, long, int, String) — AssetManager.nativeOpenXmlAsset
      using fntype = jlong(JNIEnv*, jclass, jlong, jint, jstring);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      ScopedLocalRef<jobject> a2(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[3])));
      result->SetJ(fn(soa.Env(), klass.get(), arg0, args[2], reinterpret_cast<jstring>(a2.get())));
    } else if (shorty == "JJI") {
      // [DAYU600] long fn(JNIEnv*, jclass, long, int) — XmlBlock.nativeCreateParseState. Use jni_entry
      // (the resolved code), not GetEntryPointFromJni() which can still be the unresolved dlsym stub.
      using fntype = jlong(JNIEnv*, jclass, jlong, jint);
      void* fn_raw = const_cast<void*>(jni_entry);
      {
        // [DAYU600] For XmlBlock, jni_entry is the generic-JNI trampoline (in libart), not the real
        // libandroidfw function — calling it directly builds a corrupt parse state. Re-resolve to the
        // real Java_ symbol (FindCodeForNativeMethod special-cases XmlBlock).
        std::string wcd; const char* wd = method->GetDeclaringClass()->GetDescriptor(&wcd);
        if (wd != nullptr && strcmp(wd, "Landroid/content/res/XmlBlock;") == 0) {
          std::string werr;
          void* r = down_cast<JNIEnvExt*>(self->GetJniEnv())->GetVm()->FindCodeForNativeMethod(
              method, &werr, /*can_suspend=*/false);
          if (r != nullptr) fn_raw = r;
        }
      }
      fntype* const fn = reinterpret_cast<fntype*>(fn_raw);
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      result->SetJ(fn(soa.Env(), klass.get(), arg0, args[2]));
    } else if (shorty == "IJ") {
      // [DAYU600] int fn(JNIEnv*, jclass, long) — XmlBlock.nativeNext/nativeGetName/nativeGetAttributeCount/nativeGetText
      using fntype = jint(JNIEnv*, jclass, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(const_cast<void*>(jni_entry));
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      {
        std::string wcd; const char* wd = method->GetDeclaringClass()->GetDescriptor(&wcd);
        if (wd != nullptr && strstr(wd, "XmlBlock") != nullptr) {
          fprintf(stderr, "WLXMLIJ %s token=%p fn=%p args0=%08x args1=%08x\n",
                  method->GetName(), reinterpret_cast<void*>(arg0), const_cast<void*>(jni_entry),
                  args[0], args[1]);
          fflush(stderr);
        }
      }
      result->SetI(fn(soa.Env(), klass.get(), arg0));
    } else if (shorty == "VJ") {
      // [DAYU600] void fn(JNIEnv*, jclass, long) — XmlBlock.nativeDestroyParseState
      using fntype = void(JNIEnv*, jclass, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      fn(soa.Env(), klass.get(), arg0);
    } else if (shorty == "IJI") {
      // [DAYU600] int fn(JNIEnv*, jclass, long, int) — XmlBlock.nativeGetAttribute*(state, idx)
      using fntype = jint(JNIEnv*, jclass, jlong, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      result->SetI(fn(soa.Env(), klass.get(), arg0, args[2]));
    } else if (shorty == "JJ") {
      // [DAYU600] long fn(JNIEnv*, jclass, long) — XmlBlock.nativeGetStringBlock
      using fntype = jlong(JNIEnv*, jclass, jlong);
      void* fn_raw = reinterpret_cast<void*>(method->GetEntryPointFromJni());
      {
        // For XmlBlock, the registered entry is the generic-JNI trampoline, not libandroidfw's real
        // function — re-resolve so the StringBlock we build is valid (else getName() reads garbage).
        std::string wcd; const char* wd = method->GetDeclaringClass()->GetDescriptor(&wcd);
        if (wd != nullptr && strcmp(wd, "Landroid/content/res/XmlBlock;") == 0) {
          std::string werr;
          void* r = down_cast<JNIEnvExt*>(self->GetJniEnv())->GetVm()->FindCodeForNativeMethod(
              method, &werr, /*can_suspend=*/false);
          if (r != nullptr) fn_raw = r;
        }
      }
      fntype* const fn = reinterpret_cast<fntype*>(fn_raw);
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      result->SetJ(fn(soa.Env(), klass.get(), arg0));
    } else if (shorty == "VJJIIJLJJ") {
      // [DAYU600] void fn(JNIEnv*, jclass, long, long, int, int, long, int[], long, long) —
      // AssetManager.nativeApplyStyle (our helper wraps libandroidfw's C++ ApplyStyle). vreg layout:
      // ptr[0,1] theme[2,3] dsa[4] dsr[5] xml[6,7] attrs[8](obj) outValues[9,10] outIndices[11,12].
      using fntype = void(JNIEnv*, jclass, jlong, jlong, jint, jint, jlong, jobject, jlong, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(const_cast<void*>(jni_entry));
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      ScopedLocalRef<jobject> aAttrs(soa.Env(),
          soa.AddLocalReference<jobject>(reinterpret_cast<StackReference<mirror::Object>*>(&args[8])->AsMirrorPtr()));
      fn(soa.Env(), klass.get(),
         *reinterpret_cast<jlong*>(&args[0]), *reinterpret_cast<jlong*>(&args[2]),
         static_cast<jint>(args[4]), static_cast<jint>(args[5]),
         *reinterpret_cast<jlong*>(&args[6]), aAttrs.get(),
         *reinterpret_cast<jlong*>(&args[9]), *reinterpret_cast<jlong*>(&args[11]));
    } else if (shorty == "VJJIZ") {
      // [DAYU600] void fn(JNIEnv*, jclass, long, long, int, boolean) — AssetManager.nativeThemeApplyStyle
      // vreg layout: amPtr[0,1] themePtr[2,3] resId[4] force[5].
      using fntype = void(JNIEnv*, jclass, jlong, jlong, jint, jboolean);
      fntype* const fn = reinterpret_cast<fntype*>(const_cast<void*>(jni_entry));
      ScopedLocalRef<jclass> klass(soa.Env(),
                                   soa.AddLocalReference<jclass>(method->GetDeclaringClass()));
      fn(soa.Env(), klass.get(), *reinterpret_cast<jlong*>(&args[0]),
         *reinterpret_cast<jlong*>(&args[2]), static_cast<jint>(args[4]),
         static_cast<jboolean>(args[5]));
    } else {
      LOG(WARNING) << "InterpreterJni: unhandled static shorty '" << shorty << "' for " << method->PrettyMethod();
      // [DAYU600] Return a type-correct default instead of leaving garbage in the
      // result register — garbage returns from unhandled framework natives drive
      // deep recursion / SIGSEGV on the real AssetManager/Resources path.
      switch (shorty[0]) {
        case 'L': result->SetL(nullptr); break;
        case 'Z': case 'B': case 'C': case 'S': case 'I': result->SetI(0); break;
        case 'J': result->SetJ(0); break;
        case 'F': result->SetF(0); break;
        case 'D': result->SetD(0); break;
        default: break;  // 'V'
      }
    }
  } else {
    if (shorty == "VI") {
      // void method(int) — e.g. Runtime.halt(int)
      using fntype = void(JNIEnv*, jobject, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(),
                                   soa.AddLocalReference<jobject>(receiver));
      fn(soa.Env(), rcvr.get(), args[0]);
    } else if (shorty == "VL") {
      // void method(Object) — e.g. Thread.setName(String)
      using fntype = void(JNIEnv*, jobject, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(),
                                   soa.AddLocalReference<jobject>(receiver));
      ScopedLocalRef<jobject> arg0(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[0])));
      fn(soa.Env(), rcvr.get(), arg0.get());
    } else if (shorty == "L") {
      using fntype = jobject(JNIEnv*, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      static int l_count = 0;
      if (fn == nullptr || ++l_count <= 20) {
        fprintf(stderr, "[InterpJni] L: fn=%p rcvr=%p for %s\n",
                (void*)fn, receiver.Ptr(), method->PrettyMethod().c_str());
        fflush(stderr);
      }
      ScopedLocalRef<jobject> rcvr(soa.Env(),
                                   soa.AddLocalReference<jobject>(receiver));
      jobject jresult;
      {
        // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
        jresult = fn(soa.Env(), rcvr.get());
      }
      result->SetL(soa.Decode<mirror::Object>(jresult));
    } else if (shorty == "LLL" && !method->IsStatic()) {
      // Object method(Object, Object) — non-static
      using fntype = jobject(JNIEnv*, jobject, jobject, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(), soa.AddLocalReference<jobject>(receiver));
      ScopedLocalRef<jobject> arg0(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[0])));
      ScopedLocalRef<jobject> arg1(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[1])));
      jobject jresult = fn(soa.Env(), rcvr.get(), arg0.get(), arg1.get());
      result->SetL(soa.Decode<mirror::Object>(jresult));
    } else if (shorty == "JLL" && !method->IsStatic()) {
      // long method(Object, Object) -- Unsafe.objectFieldOffset(Class, String).
      using fntype = jlong(JNIEnv*, jobject, jobject, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(), soa.AddLocalReference<jobject>(receiver));
      ScopedLocalRef<jobject> arg0(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[0])));
      ScopedLocalRef<jobject> arg1(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[1])));
      result->SetJ(fn(soa.Env(), rcvr.get(), arg0.get(), arg1.get()));
    } else if (shorty == "JJ") {
      // long method(long) — instance. e.g. jdk.internal.misc.Unsafe.allocateMemory(long).
      // Without an INSTANCE JJ branch the arg was zeroed → allocateMemory returned 0 →
      // sun.nio.fs NativeBuffers got a 0-address path buffer → stat0 EINVAL → ZipFile/
      // getResourceAsStream/ICU all broke. Pass the receiver + the wide arg.
      using fntype = jlong(JNIEnv*, jobject, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(), soa.AddLocalReference<jobject>(receiver));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      result->SetJ(fn(soa.Env(), rcvr.get(), arg0));
    } else if (shorty == "VJ") {
      // void method(long) — instance. e.g. Unsafe.freeMemory(long).
      using fntype = void(JNIEnv*, jobject, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(), soa.AddLocalReference<jobject>(receiver));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      fn(soa.Env(), rcvr.get(), arg0);
    } else if (shorty == "BJ") {
      // byte method(long) — instance. e.g. Unsafe.getByte(long).
      using fntype = jbyte(JNIEnv*, jobject, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(), soa.AddLocalReference<jobject>(receiver));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      result->SetB(fn(soa.Env(), rcvr.get(), arg0));
    } else if (shorty == "VJB") {
      // void method(long, byte) — instance. e.g. Unsafe.putByte(long, byte).
      using fntype = void(JNIEnv*, jobject, jlong, jbyte);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(), soa.AddLocalReference<jobject>(receiver));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      fn(soa.Env(), rcvr.get(), arg0, static_cast<jbyte>(args[2]));
    } else if (shorty == "JLJI") {
      // long method(Object, long, int) — instance. e.g. libcore.io.Linux.lseek(FD, long, int).
      // Without this, the registered Linux.lseek native was never invoked → RandomAccessFile.seek
      // no-op'd → ZipFile.findEND read at EOF → getResourceAsStream/ICU broke.
      using fntype = jlong(JNIEnv*, jobject, jobject, jlong, jint);
      fntype* fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      if (method->GetDeclaringClass()->DescriptorEquals("Llibcore/io/Linux;") &&
          strcmp(method->GetName(), "lseek") == 0) {
        fn = &Westlake_Linux_lseek;  // bypass the conflicting stub registration
      }
      ScopedLocalRef<jobject> rcvr(soa.Env(), soa.AddLocalReference<jobject>(receiver));
      ScopedLocalRef<jobject> arg0(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[0])));
      jlong arg1 = *reinterpret_cast<jlong*>(&args[1]);
      result->SetJ(fn(soa.Env(), rcvr.get(), arg0.get(), arg1, static_cast<jint>(args[3])));
    } else if (shorty == "JJLIILII") {
      // long method(long addr, byte[] in, int inOff, int inLen, byte[] out, int outOff,
      //   int outLen) — instance java.util.zip.Inflater.inflateBytesBytes (DEFLATE decode).
      using fntype = jlong(JNIEnv*, jobject, jlong, jobject, jint, jint, jobject, jint, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(), soa.AddLocalReference<jobject>(receiver));
      jlong addr = *reinterpret_cast<jlong*>(&args[0]);
      ScopedLocalRef<jobject> ain(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[2])));
      ScopedLocalRef<jobject> aout(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[5])));
      result->SetJ(fn(soa.Env(), rcvr.get(), addr, ain.get(), args[3], args[4],
                      aout.get(), args[6], args[7]));
    } else if (shorty == "VJI") {
      // void method(long, int) — java.lang.Object.wait(long millis, int nanos). WITHOUT this
      // the InterpJni drops wait() (no-op → returns immediately), so every wait/notify or
      // lock-condition loop (`while(!cond) obj.wait()`) busy-spins forever — deadlocking
      // Kotlin coroutines, blocking queues, thread joins, etc. Route to the real monitor wait.
      jlong millis = *reinterpret_cast<jlong*>(&args[0]);
      jint nanos = static_cast<jint>(args[2]);
      receiver->Wait(self, static_cast<int64_t>(millis), static_cast<int32_t>(nanos));
    } else if (shorty == "ILZJJZ") {
      // int method(FileDescriptor, boolean, long, long, boolean) — instance
      // sun.nio.ch.FileDispatcherImpl.lock0. long args each take two vregs.
      using fntype = jint(JNIEnv*, jobject, jobject, jboolean, jlong, jlong, jboolean);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(), soa.AddLocalReference<jobject>(receiver));
      ScopedLocalRef<jobject> fd(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[0])));
      jlong pos = *reinterpret_cast<jlong*>(&args[2]);
      jlong size = *reinterpret_cast<jlong*>(&args[4]);
      result->SetI(fn(soa.Env(), rcvr.get(), fd.get(), static_cast<jboolean>(args[1]),
                      pos, size, static_cast<jboolean>(args[6])));
    } else if (shorty == "ILLILILLZ") {
      // int method(byte[],byte[],int,byte[],int,byte[],int[],boolean) — instance
      // java.lang.UNIXProcess.forkAndExec. All args single-slot (no long/double).
      using fntype = jint(JNIEnv*, jobject, jbyteArray, jbyteArray, jint, jbyteArray, jint,
                          jbyteArray, jintArray, jboolean);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(), soa.AddLocalReference<jobject>(receiver));
      ScopedLocalRef<jobject> a0(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[0])));
      ScopedLocalRef<jobject> a1(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[1])));
      ScopedLocalRef<jobject> a3(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[3])));
      ScopedLocalRef<jobject> a5(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[5])));
      ScopedLocalRef<jobject> a6(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[6])));
      result->SetI(fn(soa.Env(), rcvr.get(),
                      reinterpret_cast<jbyteArray>(a0.get()), reinterpret_cast<jbyteArray>(a1.get()),
                      static_cast<jint>(args[2]), reinterpret_cast<jbyteArray>(a3.get()),
                      static_cast<jint>(args[4]), reinterpret_cast<jbyteArray>(a5.get()),
                      reinterpret_cast<jintArray>(a6.get()), static_cast<jboolean>(args[7])));
    } else if (shorty == "ILLII") {
      // int method(Object, Object, int, int) — instance. e.g. libcore.io.Linux.readBytes/
      // writeBytes(FileDescriptor, byte[], int, int).
      using fntype = jint(JNIEnv*, jobject, jobject, jobject, jint, jint);
      fntype* fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      if (method->GetDeclaringClass()->DescriptorEquals("Llibcore/io/Linux;")) {
        const char* nm = method->GetName();
        if (strcmp(nm, "readBytes") == 0) { fn = &Westlake_Linux_readBytes; }
        else if (strcmp(nm, "writeBytes") == 0) { fn = &Westlake_Linux_writeBytes; }
      }
      ScopedLocalRef<jobject> rcvr(soa.Env(), soa.AddLocalReference<jobject>(receiver));
      ScopedLocalRef<jobject> arg0(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[0])));
      ScopedLocalRef<jobject> arg1(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[1])));
      result->SetI(fn(soa.Env(), rcvr.get(), arg0.get(), arg1.get(),
                      static_cast<jint>(args[2]), static_cast<jint>(args[3])));
    } else if (shorty == "V") {
      using fntype = void(JNIEnv*, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(),
                                   soa.AddLocalReference<jobject>(receiver));
      // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
      fn(soa.Env(), rcvr.get());
    } else if (shorty == "LL") {
      using fntype = jobject(JNIEnv*, jobject, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(),
                                   soa.AddLocalReference<jobject>(receiver));
      ScopedLocalRef<jobject> arg0(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[0])));
      jobject jresult;
      {
        // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
        jresult = fn(soa.Env(), rcvr.get(), arg0.get());
      }
      result->SetL(soa.Decode<mirror::Object>(jresult));
      // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
    } else if (shorty == "CI") {
      using fntype = jchar(JNIEnv*, jobject, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(),
          soa.AddLocalReference<jobject>(receiver));
      // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
      result->SetC(fn(soa.Env(), rcvr.get(), args[0]));
    } else if (shorty == "LZ") {
      // Object getDeclaredMethodsUnchecked(boolean)
      using fntype = jobject(JNIEnv*, jobject, jboolean);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(), soa.AddLocalReference<jobject>(receiver));
      jobject jresult = fn(soa.Env(), rcvr.get(), args[0]);
      result->SetL(soa.Decode<mirror::Object>(jresult));
    } else if (shorty == "I" && !method->IsStatic()) {
      using fntype = jint(JNIEnv*, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(),
          soa.AddLocalReference<jobject>(receiver));
      // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
      result->SetI(fn(soa.Env(), rcvr.get()));
    } else if (shorty == "VLI") {
      using fntype = void(JNIEnv*, jobject, jobject, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(),
          soa.AddLocalReference<jobject>(receiver));
      ScopedLocalRef<jobject> arg0(soa.Env(),
          soa.AddLocalReference<jobject>(reinterpret_cast<StackReference<mirror::Object>*>(&args[0])->AsMirrorPtr()));
      // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
      fn(soa.Env(), rcvr.get(), arg0.get(), args[1]);
    } else if (shorty == "III") {
      using fntype = jint(JNIEnv*, jobject, jint, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(),
                                   soa.AddLocalReference<jobject>(receiver));
      // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
      result->SetI(fn(soa.Env(), rcvr.get(), args[0], args[1]));
    } else if (shorty == "ZL") {
      using fntype = jboolean(JNIEnv*, jobject, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(),
                                   soa.AddLocalReference<jobject>(receiver));
      ScopedLocalRef<jobject> arg0(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[0])));
      // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
      result->SetZ(fn(soa.Env(), rcvr.get(), arg0.get()));
    } else if (shorty == "ZLI") {
      // boolean fn(JNIEnv*, jobject, Object, int) — UnixFileSystem.checkAccess / hasBooleanAttributes
      using fntype = jboolean(JNIEnv*, jobject, jobject, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(),
                                   soa.AddLocalReference<jobject>(receiver));
      ScopedLocalRef<jobject> arg0(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[0])));
      result->SetZ(fn(soa.Env(), rcvr.get(), arg0.get(), args[1]));
    } else if (shorty == "JL") {
      // long fn(JNIEnv*, jobject, Object) — UnixFileSystem.getLength / getLastModifiedTime
      using fntype = jlong(JNIEnv*, jobject, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(),
                                   soa.AddLocalReference<jobject>(receiver));
      ScopedLocalRef<jobject> arg0(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[0])));
      result->SetJ(fn(soa.Env(), rcvr.get(), arg0.get()));
    } else if (shorty == "LII") {
      // String fastSubstring(int, int)
      using fntype = jobject(JNIEnv*, jobject, jint, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(),
                                   soa.AddLocalReference<jobject>(receiver));
      jobject jresult = fn(soa.Env(), rcvr.get(), args[0], args[1]);
      result->SetL(soa.Decode<mirror::Object>(jresult));
    } else if (shorty == "LI") {
      using fntype = jobject(JNIEnv*, jobject, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(),
                                   soa.AddLocalReference<jobject>(receiver));
      // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
      jobject jresult = fn(soa.Env(), rcvr.get(), args[0]);
      result->SetL(soa.Decode<mirror::Object>(jresult));
    } else if (shorty == "ZLJII") {
      using fntype = jboolean(JNIEnv*, jobject, jobject, jlong, jint, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(),
                                   soa.AddLocalReference<jobject>(receiver));
      ScopedLocalRef<jobject> arg0(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[0])));
      jlong arg1 = *reinterpret_cast<jlong*>(&args[1]);
      // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
      result->SetZ(fn(soa.Env(), rcvr.get(), arg0.get(), arg1, args[3], args[4]));
    } else if (shorty == "JLL") {
      using fntype = jlong(JNIEnv*, jobject, jobject, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(),
                                   soa.AddLocalReference<jobject>(receiver));
      ScopedLocalRef<jobject> arg0(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[0])));
      ScopedLocalRef<jobject> arg1(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[1])));
      // No state transition: stay in kRunnable for FastNative compat + nonconcurrent GC
      result->SetJ(fn(soa.Env(), rcvr.get(), arg0.get(), arg1.get()));
    } else if (shorty == "LLJ") {
      // Object getReferenceVolatile(Object, long)
      using fntype = jobject(JNIEnv*, jobject, jobject, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(),
                                   soa.AddLocalReference<jobject>(receiver));
      ScopedLocalRef<jobject> arg0(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[0])));
      jlong arg1 = *reinterpret_cast<jlong*>(&args[1]);
      jobject jresult = fn(soa.Env(), rcvr.get(), arg0.get(), arg1);
      result->SetL(soa.Decode<mirror::Object>(jresult));
    } else if (shorty == "ZLJLL") {
      // boolean compareAndSetReference(Object, long, Object, Object)
      using fntype = jboolean(JNIEnv*, jobject, jobject, jlong, jobject, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(),
                                   soa.AddLocalReference<jobject>(receiver));
      ScopedLocalRef<jobject> arg0(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[0])));
      jlong arg1 = *reinterpret_cast<jlong*>(&args[1]);
      ScopedLocalRef<jobject> arg3(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[3])));
      ScopedLocalRef<jobject> arg4(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[4])));
      result->SetZ(fn(soa.Env(), rcvr.get(), arg0.get(), arg1, arg3.get(), arg4.get()));
    } else if (shorty == "ZLJII") {
      // boolean compareAndSetInt(Object, long, int, int)
      using fntype = jboolean(JNIEnv*, jobject, jobject, jlong, jint, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(),
                                   soa.AddLocalReference<jobject>(receiver));
      ScopedLocalRef<jobject> arg0(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[0])));
      jlong arg1 = *reinterpret_cast<jlong*>(&args[1]);
      result->SetZ(fn(soa.Env(), rcvr.get(), arg0.get(), arg1, args[3], args[4]));
    } else if (shorty == "VLJLL") {
      // void putReferenceVolatile(Object, long, Object)
      using fntype = void(JNIEnv*, jobject, jobject, jlong, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(),
                                   soa.AddLocalReference<jobject>(receiver));
      ScopedLocalRef<jobject> arg0(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[0])));
      jlong arg1 = *reinterpret_cast<jlong*>(&args[1]);
      ScopedLocalRef<jobject> arg3(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[3])));
      fn(soa.Env(), rcvr.get(), arg0.get(), arg1, arg3.get());
    } else if (shorty == "VLJI") {
      // void putIntVolatile(Object, long, int)
      using fntype = void(JNIEnv*, jobject, jobject, jlong, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(),
                                   soa.AddLocalReference<jobject>(receiver));
      ScopedLocalRef<jobject> arg0(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[0])));
      jlong arg1 = *reinterpret_cast<jlong*>(&args[1]);
      fn(soa.Env(), rcvr.get(), arg0.get(), arg1, args[3]);
    } else if (shorty == "ILJ") {
      // int getIntVolatile(Object, long)
      using fntype = jint(JNIEnv*, jobject, jobject, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(),
                                   soa.AddLocalReference<jobject>(receiver));
      ScopedLocalRef<jobject> arg0(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[0])));
      jlong arg1 = *reinterpret_cast<jlong*>(&args[1]);
      result->SetI(fn(soa.Env(), rcvr.get(), arg0.get(), arg1));
    } else if (shorty == "ZLJJJ") {
      // boolean compareAndSetLong(Object, long, long, long)
      using fntype = jboolean(JNIEnv*, jobject, jobject, jlong, jlong, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(),
                                   soa.AddLocalReference<jobject>(receiver));
      ScopedLocalRef<jobject> arg0(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[0])));
      jlong arg1 = *reinterpret_cast<jlong*>(&args[1]);
      jlong arg3 = *reinterpret_cast<jlong*>(&args[3]);
      jlong arg5 = *reinterpret_cast<jlong*>(&args[5]);
      result->SetZ(fn(soa.Env(), rcvr.get(), arg0.get(), arg1, arg3, arg5));
    } else if (shorty == "JLJ") {
      // long getLongVolatile(Object, long)
      using fntype = jlong(JNIEnv*, jobject, jobject, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(),
                                   soa.AddLocalReference<jobject>(receiver));
      ScopedLocalRef<jobject> arg0(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[0])));
      jlong arg1 = *reinterpret_cast<jlong*>(&args[1]);
      result->SetJ(fn(soa.Env(), rcvr.get(), arg0.get(), arg1));
    } else if (shorty == "VLJJ") {
      // void putLongVolatile(Object, long, long)
      using fntype = void(JNIEnv*, jobject, jobject, jlong, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(),
                                   soa.AddLocalReference<jobject>(receiver));
      ScopedLocalRef<jobject> arg0(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[0])));
      jlong arg1 = *reinterpret_cast<jlong*>(&args[1]);
      jlong arg3 = *reinterpret_cast<jlong*>(&args[3]);
      fn(soa.Env(), rcvr.get(), arg0.get(), arg1, arg3);
    } else if (shorty == "VLJL") {
      // void putReferenceVolatile(Object, long, Object)
      using fntype = void(JNIEnv*, jobject, jobject, jlong, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(),
                                   soa.AddLocalReference<jobject>(receiver));
      ScopedLocalRef<jobject> arg0(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[0])));
      jlong arg1 = *reinterpret_cast<jlong*>(&args[1]);
      ScopedLocalRef<jobject> arg3(soa.Env(),
                                   soa.AddLocalReference<jobject>(ObjArg(args[3])));
      fn(soa.Env(), rcvr.get(), arg0.get(), arg1, arg3.get());
    } else if (shorty == "JI") {
      // long sysconf(int) - non-static
      using fntype = jlong(JNIEnv*, jobject, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(),
                                   soa.AddLocalReference<jobject>(receiver));
      result->SetJ(fn(soa.Env(), rcvr.get(), args[0]));
    } else if (shorty == "ILLII") {
      // int writeBytes(FileDescriptor, Object, int, int) — I/O write
      using fntype = jint(JNIEnv*, jobject, jobject, jobject, jint, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(), soa.AddLocalReference<jobject>(receiver));
      ScopedLocalRef<jobject> arg0(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[0])));
      ScopedLocalRef<jobject> arg1(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[1])));
      result->SetI(fn(soa.Env(), rcvr.get(), arg0.get(), arg1.get(), args[2], args[3]));
    } else if (shorty == "VIILI") {
      // void String.getCharsNoCheck(int, int, char[], int)
      using fntype = void(JNIEnv*, jobject, jint, jint, jobject, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(), soa.AddLocalReference<jobject>(receiver));
      ScopedLocalRef<jobject> arg2(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[2])));
      fn(soa.Env(), rcvr.get(), args[0], args[1], arg2.get(), args[3]);
    } else if (shorty == "VLL") {
      // void fn(JNIEnv*, jobject, Object, Object) — e.g. Field.set
      using fntype = void(JNIEnv*, jobject, jobject, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(), soa.AddLocalReference<jobject>(receiver));
      ScopedLocalRef<jobject> arg0(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[0])));
      ScopedLocalRef<jobject> arg1(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[1])));
      fn(soa.Env(), rcvr.get(), arg0.get(), arg1.get());
    } else if (shorty == "II") {
      // int fn(JNIEnv*, jobject, int) — e.g. String.lastIndexOf(int)
      using fntype = jint(JNIEnv*, jobject, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(), soa.AddLocalReference<jobject>(receiver));
      result->SetI(fn(soa.Env(), rcvr.get(), args[0]));
    } else if (shorty == "IZ") {
      // int fn(JNIEnv*, jobject, boolean) — e.g. Thread.nativeGetStatus
      using fntype = jint(JNIEnv*, jobject, jboolean);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(), soa.AddLocalReference<jobject>(receiver));
      result->SetI(fn(soa.Env(), rcvr.get(), args[0]));
    } else if (shorty == "LLI") {
      // Object fn(JNIEnv*, jobject, Object, int) — e.g. Field.get with index
      using fntype = jobject(JNIEnv*, jobject, jobject, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(), soa.AddLocalReference<jobject>(receiver));
      ScopedLocalRef<jobject> arg0(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[0])));
      jobject jresult = fn(soa.Env(), rcvr.get(), arg0.get(), args[1]);
      result->SetL(soa.Decode<mirror::Object>(jresult));
    } else if (shorty == "Z") {
      // boolean fn(JNIEnv*, jobject) — e.g. Activity.isTaskRoot
      using fntype = jboolean(JNIEnv*, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(), soa.AddLocalReference<jobject>(receiver));
      result->SetZ(fn(soa.Env(), rcvr.get()));
    } else if (shorty == "IL") {
      // int fn(JNIEnv*, jobject, Object) — e.g. Field.getInt(Object)
      using fntype = jint(JNIEnv*, jobject, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(), soa.AddLocalReference<jobject>(receiver));
      ScopedLocalRef<jobject> arg0(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[0])));
      result->SetI(fn(soa.Env(), rcvr.get(), arg0.get()));
    } else if (shorty == "ILI") {
      // int fn(JNIEnv*, jobject, Object, int) - String.lastIndexOf(String, int)
      using fntype = jint(JNIEnv*, jobject, jobject, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(), soa.AddLocalReference<jobject>(receiver));
      ScopedLocalRef<jobject> arg0(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[0])));
      result->SetI(fn(soa.Env(), rcvr.get(), arg0.get(), args[1]));
    } else if (shorty == "LJ") {
      // Object fn(JNIEnv*, jobject, long) — BinderProxy$ProxyMap.get(long) etc.
      using fntype = jobject(JNIEnv*, jobject, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(), soa.AddLocalReference<jobject>(receiver));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      ScopedLocalRef<jobject> r(soa.Env(), fn(soa.Env(), rcvr.get(), arg0));
      result->SetL(soa.Decode<mirror::Object>(r.get()));
    } else if (shorty == "LLII") {
      // Object fn(JNIEnv*, jobject, Object, int, int) — Linux.open(path, flags, mode)
      using fntype = jobject(JNIEnv*, jobject, jobject, jint, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(), soa.AddLocalReference<jobject>(receiver));
      ScopedLocalRef<jobject> arg0(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[0])));
      ScopedLocalRef<jobject> r(soa.Env(), fn(soa.Env(), rcvr.get(), arg0.get(), args[1], args[2]));
      result->SetL(soa.Decode<mirror::Object>(r.get()));
    } else if (shorty == "ZILLI") {
      // boolean fn(JNIEnv*, jobject, int, Object, Object, int) — BinderProxy.transactNative!
      using fntype = jboolean(JNIEnv*, jobject, jint, jobject, jobject, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(), soa.AddLocalReference<jobject>(receiver));
      ScopedLocalRef<jobject> arg1(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[1])));
      ScopedLocalRef<jobject> arg2(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[2])));
      result->SetZ(fn(soa.Env(), rcvr.get(), args[0], arg1.get(), arg2.get(), args[3]));
    } else if (shorty == "VLJ") {
      // void fn(JNIEnv*, jobject, Object, long) — Field.setLong etc.
      using fntype = void(JNIEnv*, jobject, jobject, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(), soa.AddLocalReference<jobject>(receiver));
      ScopedLocalRef<jobject> arg0(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[0])));
      jlong arg1 = *reinterpret_cast<jlong*>(&args[1]);
      fn(soa.Env(), rcvr.get(), arg0.get(), arg1);
    } else if (shorty == "VJ") {
      // void fn(JNIEnv*, jobject, long) — VMRuntime.registerNativeAllocation
      using fntype = void(JNIEnv*, jobject, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(), soa.AddLocalReference<jobject>(receiver));
      jlong arg0 = *reinterpret_cast<jlong*>(&args[0]);
      fn(soa.Env(), rcvr.get(), arg0);
    } else if (shorty == "VZJ") {
      // void fn(JNIEnv*, jobject, boolean, long) — Unsafe.park(boolean, long)
      using fntype = void(JNIEnv*, jobject, jboolean, jlong);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(), soa.AddLocalReference<jobject>(receiver));
      jlong arg1 = *reinterpret_cast<jlong*>(&args[1]);
      fn(soa.Env(), rcvr.get(), static_cast<jboolean>(args[0]), arg1);
    } else if (shorty == "VLF") {
      // void fn(JNIEnv*, jobject, Object, float) — Field.setFloat
      using fntype = void(JNIEnv*, jobject, jobject, jfloat);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(), soa.AddLocalReference<jobject>(receiver));
      ScopedLocalRef<jobject> arg0(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[0])));
      fn(soa.Env(), rcvr.get(), arg0.get(), *reinterpret_cast<jfloat*>(&args[1]));
    } else if (shorty == "VLI") {
      // void fn(JNIEnv*, jobject, Object, int) — Field.setInt etc.
      using fntype = void(JNIEnv*, jobject, jobject, jint);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(), soa.AddLocalReference<jobject>(receiver));
      ScopedLocalRef<jobject> arg0(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[0])));
      fn(soa.Env(), rcvr.get(), arg0.get(), args[1]);
    } else if (shorty == "VLZ") {
      // void fn(JNIEnv*, jobject, Object, boolean) — Field.setBoolean
      using fntype = void(JNIEnv*, jobject, jobject, jboolean);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(), soa.AddLocalReference<jobject>(receiver));
      ScopedLocalRef<jobject> arg0(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[0])));
      fn(soa.Env(), rcvr.get(), arg0.get(), static_cast<jboolean>(args[1]));
    } else if (shorty == "VLIZ") {
      // void fn(JNIEnv*, jobject, Object, int, boolean) — Activity.onApplyThemeResource
      using fntype = void(JNIEnv*, jobject, jobject, jint, jboolean);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(), soa.AddLocalReference<jobject>(receiver));
      ScopedLocalRef<jobject> arg0(soa.Env(), soa.AddLocalReference<jobject>(ObjArg(args[0])));
      fn(soa.Env(), rcvr.get(), arg0.get(), args[1], (jboolean)args[2]);
    } else if (shorty == "I") {
      // int fn(JNIEnv*, jobject) — hashCode, etc.
      using fntype = jint(JNIEnv*, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(), soa.AddLocalReference<jobject>(receiver));
      result->SetI(fn(soa.Env(), rcvr.get()));
    } else if (shorty == "J") {
      // long fn(JNIEnv*, jobject) — e.g. currentTimeMillis on instance
      using fntype = jlong(JNIEnv*, jobject);
      fntype* const fn = reinterpret_cast<fntype*>(method->GetEntryPointFromJni());
      ScopedLocalRef<jobject> rcvr(soa.Env(), soa.AddLocalReference<jobject>(receiver));
      result->SetJ(fn(soa.Env(), rcvr.get()));
    } else {
      LOG(WARNING) << "InterpreterJni: unhandled non-static shorty '" << shorty << "' for " << method->PrettyMethod();
      // [DAYU600] Type-correct default (see static branch note).
      switch (shorty[0]) {
        case 'L': result->SetL(nullptr); break;
        case 'Z': case 'B': case 'C': case 'S': case 'I': result->SetI(0); break;
        case 'J': result->SetJ(0); break;
        case 'F': result->SetF(0); break;
        case 'D': result->SetD(0); break;
        default: break;  // 'V'
      }
    }
  }
}

NO_STACK_PROTECTOR
static JValue ExecuteSwitch(Thread* self,
                            const CodeItemDataAccessor& accessor,
                            ShadowFrame& shadow_frame,
                            JValue result_register,
                            bool interpret_one_instruction) REQUIRES_SHARED(Locks::mutator_lock_) {
  Runtime* runtime = Runtime::Current();
  ArtMethod* method = shadow_frame.GetMethod();
  UNUSED(method);
  const bool pfc_fm_trace = false;
  if (UNLIKELY(pfc_fm_trace && !runtime->IsActiveTransaction())) {
    fprintf(stderr,
            "[PFCUT-FM] ExecuteSwitch bypassing asm wrapper method=%s insns=%p "
            "interpret_one=%d\n",
            method->PrettyMethod().c_str(),
            accessor.Insns(),
            interpret_one_instruction ? 1 : 0);
    fflush(stderr);
    SwitchImplContext ctx {
      .self = self,
      .accessor = accessor,
      .shadow_frame = shadow_frame,
      .result_register = result_register,
      .interpret_one_instruction = interpret_one_instruction,
      .result = JValue(),
    };
    ExecuteSwitchImplCpp</*transaction_active=*/ false>(&ctx);
    return ctx.result;
  }
  auto switch_impl_cpp = runtime->IsActiveTransaction()
      ? runtime->GetClassLinker()->GetTransactionalInterpreter()
      : reinterpret_cast<const void*>(&ExecuteSwitchImplCpp</*transaction_active=*/ false>);
  return ExecuteSwitchImpl(
      self, accessor, shadow_frame, result_register, interpret_one_instruction, switch_impl_cpp);
}

NO_STACK_PROTECTOR
static inline JValue Execute(
    Thread* self,
    const CodeItemDataAccessor& accessor,
    ShadowFrame& shadow_frame,
    JValue result_register,
    bool stay_in_interpreter = false,
    bool from_deoptimize = false) REQUIRES_SHARED(Locks::mutator_lock_) {
  ArtMethod* pfc_execute_method = shadow_frame.GetMethod();
  UNUSED(pfc_execute_method);
  // [DAYU600-CLONE-BODY] Execute() = the chokepoint all 4 interpreter wrappers funnel into.
  if (false && pfc_execute_method != nullptr && pfc_execute_method->GetName() != nullptr &&
      strcmp(pfc_execute_method->GetName(), "clone") == 0 &&
      pfc_execute_method->GetDeclaringClass() != nullptr &&
      pfc_execute_method->GetDeclaringClass()->DescriptorEquals("Ljava/lang/Object;")) {
    static int dcb = 0;
    if (dcb < 8) { dcb++;
      size_t recv_reg = accessor.RegistersSize() - accessor.InsSize();
      ObjPtr<mirror::Object> recv = shadow_frame.GetVRegReference(recv_reg);
      fprintf(stderr, "[CLONE-BODY] recv=%p type=%s isClass=%d\n",
              reinterpret_cast<void*>(recv.Ptr()),
              recv != nullptr ? recv->PrettyTypeOf().c_str() : "null",
              (recv != nullptr && recv->IsClass()) ? 1 : 0);
      // [DAYU600-RT-LOOKUP] the caller frame is unreflectVarHandle whose declaring class is
      // MethodHandles$Lookup — dump its RUNTIME vtable state to settle image-vs-runtime.
      {
        ShadowFrame* clf = shadow_frame.GetLink();
        if (clf != nullptr && clf->GetMethod() != nullptr &&
            clf->GetMethod()->GetDeclaringClass() != nullptr) {
          ObjPtr<mirror::Class> lc = clf->GetMethod()->GetDeclaringClass();
          fprintf(stderr, "[RT-LOOKUP] class=%s vtable_len=%d caller=%s caller_idx=%u\n",
                  lc->PrettyDescriptor().c_str(), lc->GetVTableLength(),
                  clf->GetMethod()->PrettyMethod().c_str(),
                  clf->GetMethod()->GetMethodIndex());
          for (uint32_t vi = 0; vi < lc->GetVTableLength() && vi < 40; vi++) {
            ArtMethod* ve = lc->GetVTableEntry(vi, kRuntimePointerSize);
            const char* vn = (ve != nullptr) ? ve->GetName() : "null";
            if (vn != nullptr && (strstr(vn, "findVarHandle") != nullptr ||
                                  strstr(vn, "unreflectVarHandle") != nullptr)) {
              fprintf(stderr, "   vtable[%u]=%s\n", vi, ve->PrettyMethod().c_str());
            }
          }
          fflush(stderr);
        }
      }
      for (ShadowFrame* f = shadow_frame.GetLink(); f != nullptr; f = f->GetLink()) {
        ArtMethod* fm = f->GetMethod();
        uint32_t fpc = f->GetDexPC();
        std::string inststr = "?";
        if (fm != nullptr) {
          CodeItemInstructionAccessor fa(fm->DexInstructions());
          if (fa.HasCodeItem() && fpc < fa.InsnsSizeInCodeUnits()) {
            inststr = fa.InstructionAt(fpc).DumpString(fm->GetDexFile());
          }
        }
        fprintf(stderr, "   caller-chain: %s @dex%u  inst=[%s]\n",
                fm != nullptr ? fm->PrettyMethod().c_str() : "?", fpc, inststr.c_str());
      }
      // [DAYU600-CLONE-BODY] decode the CALLER's current instruction (which invoke mis-dispatched to clone)
      {
        ShadowFrame* cf = shadow_frame.GetLink();
        if (cf != nullptr && cf->GetMethod() != nullptr) {
          ArtMethod* cmeth = cf->GetMethod();
          uint32_t cpc = cf->GetDexPC();
          CodeItemInstructionAccessor cacc(cmeth->DexInstructions());
          if (cacc.HasCodeItem() && cpc < cacc.InsnsSizeInCodeUnits()) {
            const Instruction& in = cacc.InstructionAt(cpc);
            fprintf(stderr, "   caller-inst @dex%u: %s\n", cpc, in.DumpString(cmeth->GetDexFile()).c_str());
          }
        }
      }
      // [DAYU600-CLONE-BODY] full REAL stack (quick+shadow) to find the true invoking frame
      for (size_t d = 0; d < 16; d++) {
        NthCallerVisitor v(self, d, /*include_runtime_and_upcalls=*/true);
        v.WalkStack();
        if (v.caller != nullptr) {
          fprintf(stderr, "   real-frame[%zu]: %s\n",
                  d, v.caller->PrettyMethod().c_str());
        }
      }
      fflush(stderr);
    }
  }
  const bool pfc_fm_trace = false;
  if (pfc_fm_trace) {
    fprintf(stderr,
            "[PFCUT-FM] Execute enter method=%s stay=%d deopt=%d dex_pc=%u "
            "top_shadow=%p top_quick=%p\n",
            pfc_execute_method->PrettyMethod().c_str(),
            stay_in_interpreter ? 1 : 0,
            from_deoptimize ? 1 : 0,
            shadow_frame.GetDexPC(),
            self->GetManagedStack()->GetTopShadowFrame(),
            self->GetManagedStack()->GetTopQuickFrame());
    fflush(stderr);
  }
  DCHECK(!shadow_frame.GetMethod()->IsAbstract());
  DCHECK(!shadow_frame.GetMethod()->IsNative());
  if (pfc_fm_trace) {
    fprintf(stderr, "[PFCUT-FM] Execute after DCHECK\n");
    fflush(stderr);
  }

  // We cache the result of NeedsDexPcEvents in the shadow frame so we don't need to call
  // NeedsDexPcEvents on every instruction for better performance. NeedsDexPcEvents only gets
  // updated asynchronoulsy in a SuspendAll scope and any existing shadow frames are updated with
  // new value. So it is safe to cache it here.
  shadow_frame.SetNotifyDexPcMoveEvents(
      Runtime::Current()->GetInstrumentation()->NeedsDexPcEvents(shadow_frame.GetMethod(), self));
  if (pfc_fm_trace) {
    fprintf(stderr,
            "[PFCUT-FM] Execute after SetNotifyDexPcMoveEvents notify=%d\n",
            shadow_frame.GetNotifyDexPcMoveEvents() ? 1 : 0);
    fflush(stderr);
  }

  if (LIKELY(!from_deoptimize)) {  // Entering the method, but not via deoptimization.
    if (kIsDebugBuild) {
      CHECK_EQ(shadow_frame.GetDexPC(), 0u);
      self->AssertNoPendingException();
    }
    ArtMethod *method = shadow_frame.GetMethod();
    if (pfc_fm_trace) {
      fprintf(stderr,
              "[PFCUT-FM] Execute method-entry block listeners=%d force_pop=%d force_interp=%d\n",
              Runtime::Current()->GetInstrumentation()->HasMethodEntryListeners() ? 1 : 0,
              shadow_frame.GetForcePopFrame() ? 1 : 0,
              self->IsForceInterpreter() ? 1 : 0);
      fflush(stderr);
    }

    // If we can continue in JIT and have JITed code available execute JITed code.
    if (!stay_in_interpreter &&
        !self->IsForceInterpreter() &&
        !shadow_frame.GetForcePopFrame() &&
        !shadow_frame.GetNotifyDexPcMoveEvents()) {
      jit::Jit* jit = Runtime::Current()->GetJit();
      if (jit != nullptr) {
        jit->MethodEntered(self, shadow_frame.GetMethod());
        if (jit->CanInvokeCompiledCode(method)) {
          JValue result;

          // Pop the shadow frame before calling into compiled code.
          self->PopShadowFrame();
          // Calculate the offset of the first input reg. The input registers are in the high regs.
          // It's ok to access the code item here since JIT code will have been touched by the
          // interpreter and compiler already.
          uint16_t arg_offset = accessor.RegistersSize() - accessor.InsSize();
          ArtInterpreterToCompiledCodeBridge(self, nullptr, &shadow_frame, arg_offset, &result);
          // Push the shadow frame back as the caller will expect it.
          self->PushShadowFrame(&shadow_frame);

          return result;
        }
      }
    }

    instrumentation::Instrumentation* instrumentation = Runtime::Current()->GetInstrumentation();
    if (UNLIKELY(instrumentation->HasMethodEntryListeners() || shadow_frame.GetForcePopFrame())) {
      instrumentation->MethodEnterEvent(self, method);
      if (UNLIKELY(shadow_frame.GetForcePopFrame())) {
        // The caller will retry this invoke or ignore the result. Just return immediately without
        // any value.
        DCHECK(Runtime::Current()->AreNonStandardExitsEnabled());
        JValue ret = JValue();
        PerformNonStandardReturn(self,
                                 shadow_frame,
                                 ret,
                                 instrumentation,
                                 /* unlock_monitors= */ false);
        return ret;
      }
      if (UNLIKELY(self->IsExceptionPending())) {
        instrumentation->MethodUnwindEvent(self,
                                           method,
                                           0);
        JValue ret = JValue();
        if (UNLIKELY(shadow_frame.GetForcePopFrame())) {
          DCHECK(Runtime::Current()->AreNonStandardExitsEnabled());
          PerformNonStandardReturn(self,
                                   shadow_frame,
                                   ret,
                                   instrumentation,
                                   /* unlock_monitors= */ false);
        }
        return ret;
      }
    }
    if (pfc_fm_trace) {
      fprintf(stderr,
              "[PFCUT-FM] Execute after method-entry block pending=%d\n",
              self->IsExceptionPending() ? 1 : 0);
      fflush(stderr);
    }
  }

  ArtMethod* method = shadow_frame.GetMethod();

  if (pfc_fm_trace) {
    fprintf(stderr,
            "[PFCUT-FM] Execute before DCheckStaticState class=%p flags=0x%x\n",
            method->GetDeclaringClass().Ptr(),
            method->GetAccessFlags());
    fflush(stderr);
  }
  DCheckStaticState(self, method);
  if (pfc_fm_trace) {
    fprintf(stderr,
            "[PFCUT-FM] Execute before ExecuteSwitch insns=%p pending=%d\n",
            accessor.Insns(),
            self->IsExceptionPending() ? 1 : 0);
    fflush(stderr);
  }

  // Lock counting is a special version of accessibility checks, and for simplicity and
  // reduction of template parameters, we gate it behind access-checks mode.
  DCHECK_IMPLIES(method->SkipAccessChecks(), !method->MustCountLocks());

  VLOG(interpreter) << "Interpreting " << method->PrettyMethod();

  return ExecuteSwitch(
      self, accessor, shadow_frame, result_register, /*interpret_one_instruction=*/ false);
}

void EnterInterpreterFromInvoke(Thread* self,
                                ArtMethod* method,
                                ObjPtr<mirror::Object> receiver,
                                uint32_t* args,
                                JValue* result,
                                bool stay_in_interpreter) {
  DCHECK_EQ(self, Thread::Current());

  // Interpreter depth guard — prevents infinite recursion from circular class init
  static thread_local int invoke_depth = 0;
  invoke_depth++;
  struct InvokeDepthGuard { ~InvokeDepthGuard() { invoke_depth--; } } idg;
  if (invoke_depth > 50) {
    // Don't decrement here — RAII guard handles it
    ThrowStackOverflowError(self);
    return;
  }

  bool implicit_check = Runtime::Current()->GetImplicitStackOverflowChecks();
  if (UNLIKELY(__builtin_frame_address(0) < self->GetStackEndForInterpreter(implicit_check))) {
    ThrowStackOverflowError(self);
    return;
  }

  // This can happen if we are in forced interpreter mode and an obsolete method is called using
  // reflection.
  if (UNLIKELY(method->IsObsolete())) {
    ThrowInternalError("Attempting to invoke obsolete version of '%s'.",
                       method->PrettyMethod().c_str());
    return;
  }

  if (method->IsNative() &&
      method->IsStatic() &&
      method->GetDeclaringClassDescriptor() != nullptr &&
      strcmp(method->GetDeclaringClassDescriptor(), "Ljava/util/TimeZone;") == 0 &&
      (strcmp(method->GetName(), "getDefault") == 0 ||
       strcmp(method->GetName(), "getDefaultRef") == 0) &&
      method->GetInterfaceMethodIfProxy(kRuntimePointerSize)->GetShortyView() == "L") {
    using FnType = jobject (*)(JNIEnv*, jclass);
    FnType fn = reinterpret_cast<FnType>(const_cast<void*>(method->GetEntryPointFromJni()));
    JNIEnvExt* env = down_cast<JNIEnvExt*>(self->GetJniEnv());
    const bool trace_tz = WestlakeTraceTimeZoneBridge();
    if (trace_tz) {
      fprintf(stderr,
              "[WESTLAKE-TZ-EARLY] direct native invoke method=%s fn=%p env=%p\n",
              method->PrettyMethod().c_str(),
              reinterpret_cast<void*>(fn),
              env);
      fflush(stderr);
    }
    jobject jresult = fn(env, nullptr);
    if (trace_tz) {
      fprintf(stderr, "[WESTLAKE-TZ-EARLY] direct native invoke result=%p\n", jresult);
      fflush(stderr);
    }
    result->SetL(self->DecodeJObject(jresult));
    if (trace_tz) {
      fprintf(stderr, "[WESTLAKE-TZ-EARLY] direct native invoke decoded\n");
      fflush(stderr);
    }
    return;
  }

  const char* old_cause = self->StartAssertNoThreadSuspension("EnterInterpreterFromInvoke");
  CodeItemDataAccessor accessor(method->DexInstructionData());
  uint16_t num_regs;
  uint16_t num_ins;
  if (accessor.HasCodeItem()) {
    num_regs =  accessor.RegistersSize();
    num_ins = accessor.InsSize();
  } else if (!method->IsInvokable()) {
    self->EndAssertNoThreadSuspension(old_cause);
    method->ThrowInvocationTimeError(receiver);
    return;
  } else {
    DCHECK(method->IsNative()) << method->PrettyMethod();
    num_regs = num_ins = ArtMethod::NumArgRegisters(method->GetShortyView());
    if (!method->IsStatic()) {
      num_regs++;
      num_ins++;
    }
  }
  // Set up shadow frame with matching number of reference slots to vregs.
  ShadowFrameAllocaUniquePtr shadow_frame_unique_ptr =
      CREATE_SHADOW_FRAME(num_regs, method, /* dex pc */ 0);
  ShadowFrame* shadow_frame = shadow_frame_unique_ptr.get();

  size_t cur_reg = num_regs - num_ins;
  if (!method->IsStatic()) {
    if (UNLIKELY(receiver == nullptr)) {
      self->EndAssertNoThreadSuspension(old_cause);
      InvokeType invoke_type = method->IsDirect()
          ? InvokeType::kDirect
          : (method->GetDeclaringClass()->IsInterface() ? InvokeType::kInterface
                                                        : InvokeType::kVirtual);
      ThrowNullPointerExceptionForMethodAccess(method, invoke_type);
      return;
    }
    shadow_frame->SetVRegReference(cur_reg, receiver);
    ++cur_reg;
  }
  uint32_t shorty_len = 0;
  const char* shorty = method->GetShorty(&shorty_len);
  // DEBUG: trace shorty for non-boot-image methods
  if (method->IsNative()) {
    std::string class_desc_storage;
    const char* class_desc = method->GetDeclaringClass()->GetDescriptor(&class_desc_storage);
    const char* method_name = method->GetName();
    const bool is_thread_sleep =
        class_desc != nullptr &&
        strcmp(class_desc, "Ljava/lang/Thread;") == 0 &&
        method_name != nullptr &&
        strcmp(method_name, "sleep") == 0;
    const bool is_thread_current =
        class_desc != nullptr &&
        strcmp(class_desc, "Ljava/lang/Thread;") == 0 &&
        method_name != nullptr &&
        strcmp(method_name, "currentThread") == 0;
    const bool is_system_nano_time =
        class_desc != nullptr &&
        strcmp(class_desc, "Ljava/lang/System;") == 0 &&
        method_name != nullptr &&
        strcmp(method_name, "nanoTime") == 0;
    const bool is_string_last_index =
        class_desc != nullptr &&
        strcmp(class_desc, "Ljava/lang/String;") == 0 &&
        method_name != nullptr &&
        strcmp(method_name, "lastIndexOf") == 0;
    const bool is_hot_loop_probe =
        is_thread_sleep || is_thread_current || is_system_nano_time || is_string_last_index;

    auto dump_shadow_callers = [&](const char* label) {
      fprintf(stderr,
              "[InterpJniTrace] %s %s shorty='%s' len=%u dexIdx=%u\n",
              label,
              method->PrettyMethod().c_str(),
              shorty != nullptr ? shorty : "NULL",
              shorty_len,
              method->GetDexMethodIndex());
      int depth = 0;
      for (auto* frame = self->GetManagedStack()->GetTopShadowFrame();
           frame != nullptr && depth < 6;
           frame = frame->GetLink(), ++depth) {
        ArtMethod* caller = frame->GetMethod();
        if (caller != nullptr) {
          fprintf(stderr,
                  "[InterpJniTrace]   #%d %s (dex_pc=%u)\n",
                  depth,
                  caller->PrettyMethod().c_str(),
                  frame->GetDexPC());
        }
      }
      fflush(stderr);
    };

    if (is_thread_sleep) {
      static int sleep_trace_count = 0;
      if (sleep_trace_count < 48) {
        ++sleep_trace_count;
        jlong millis = 0;
        jint nanos = 0;
        if (shorty_len >= 4) {
          millis = *reinterpret_cast<jlong*>(&args[1]);
          nanos = static_cast<jint>(args[3]);
        }
        char label[96];
        snprintf(label, sizeof(label), "sleep(millis=%lld,nanos=%d)",
                 static_cast<long long>(millis), static_cast<int>(nanos));
        dump_shadow_callers(label);
      }
    } else if (is_string_last_index) {
      static int last_index_trace_count = 0;
      if (last_index_trace_count < 24) {
        ++last_index_trace_count;
        jint ch = shorty_len >= 2 ? static_cast<jint>(args[0]) : 0;
        jint from_index = shorty_len >= 3 ? static_cast<jint>(args[1]) : -1;
        char label[96];
        snprintf(label, sizeof(label), "lastIndexOf(ch=%d,from=%d)",
                 static_cast<int>(ch), static_cast<int>(from_index));
        dump_shadow_callers(label);
      }
    } else if (!is_hot_loop_probe) {
      // [DAYU600] Per-native-call trace disabled: it floods stderr to 100s of GB during
      // View/graphics inflate (every graphics native call) and fills the board disk.
      // Re-enable behind an env gate if a specific native needs tracing.
    }
  }
  for (size_t shorty_pos = 0, arg_pos = 0; cur_reg < num_regs; ++shorty_pos, ++arg_pos, cur_reg++) {
    DCHECK_LT(shorty_pos + 1, shorty_len);
    switch (shorty[shorty_pos + 1]) {
      case 'L': {
        ObjPtr<mirror::Object> o =
            reinterpret_cast<StackReference<mirror::Object>*>(&args[arg_pos])->AsMirrorPtr();
        shadow_frame->SetVRegReference(cur_reg, o);
        break;
      }
      case 'J': case 'D': {
        uint64_t wide_value = (static_cast<uint64_t>(args[arg_pos + 1]) << 32) | args[arg_pos];
        shadow_frame->SetVRegLong(cur_reg, wide_value);
        cur_reg++;
        arg_pos++;
        break;
      }
      default:
        shadow_frame->SetVReg(cur_reg, args[arg_pos]);
        break;
    }
  }
  self->EndAssertNoThreadSuspension(old_cause);
  if (!EnsureInitialized(self, shadow_frame)) {
    return;
  }
  self->PushShadowFrame(shadow_frame);
  if (LIKELY(!method->IsNative())) {
    std::string class_desc_storage;
    const char* class_desc = method->GetDeclaringClass()->GetDescriptor(&class_desc_storage);
    const char* method_name = method->GetName();
    if (class_desc != nullptr &&
        strcmp(class_desc, "Ljava/lang/invoke/MethodHandles;") == 0 &&
        method_name != nullptr &&
        strcmp(method_name, "lookup") == 0) {
      ShadowFrame* caller_frame = shadow_frame->GetLink();
      ObjPtr<mirror::Class> caller_class = caller_frame != nullptr
          ? caller_frame->GetMethod()->GetDeclaringClass()
          : method->GetDeclaringClass();
      StackHandleScope<1> hs(self);
      Handle<mirror::Class> lookup_class(hs.NewHandle(caller_class));
      ObjPtr<mirror::MethodHandlesLookup> lookup =
          mirror::MethodHandlesLookup::Create(self, lookup_class);
      if (result != nullptr) {
        result->SetL(lookup);
      }
      self->PopShadowFrame();
      return;
    }
    JValue r = Execute(self, accessor, *shadow_frame, JValue(), stay_in_interpreter);
    if (result != nullptr) {
      *result = r;
    }
  } else {
    // We don't expect to be asked to interpret native code (which is entered via a JNI compiler
    // generated stub) except during testing and image writing.
    // Update args to be the args in the shadow frame since the input ones could hold stale
    // references pointers due to moving GC.
    args = shadow_frame->GetVRegArgs(method->IsStatic() ? 0 : 1);
    // Always use InterpreterJni (not UnstartedRuntime::Jni) — our native stubs
    // are registered and available even before Runtime::IsStarted(). UnstartedRuntime::Jni
    // only handles a subset of methods and returns null for unhandled ones.
    if (!Runtime::Current()->IsStarted() && Runtime::Current()->IsAotCompiler()) {
      UnstartedRuntime::Jni(self, method, receiver.Ptr(), args, result);
    } else {
      InterpreterJni(self, method, shorty, receiver, args, result);
    }
  }
  // [DAYU600-DIAG] identify methods that leave an EXTRA frame above shadow_frame (imbalance).
  {
    ShadowFrame* top = self->GetManagedStack()->GetTopShadowFrame();
    if (top != shadow_frame) {
      static int dc = 0;
      if (dc < 200) { dc++;
        fprintf(stderr, "[FRAME-IMBALANCE] method=%s dexIdx=%u top=%p frame=%p link=%p\n",
                method != nullptr ? method->PrettyMethod().c_str() : "?",
                method != nullptr ? method->GetDexMethodIndex() : 0u,
                (void*)top, (void*)shadow_frame, (void*)shadow_frame->GetLink());
        fflush(stderr);
      }
    }
  }
  // [DAYU600-FIX-A] 861 pop-skip removed (caused shadow-stack imbalance -> heap-object corruption)
  self->PopShadowFrame();
}

static int16_t GetReceiverRegisterForStringInit(const Instruction* instr) {
  DCHECK(instr->Opcode() == Instruction::INVOKE_DIRECT_RANGE ||
         instr->Opcode() == Instruction::INVOKE_DIRECT);
  return (instr->Opcode() == Instruction::INVOKE_DIRECT_RANGE) ?
      instr->VRegC_3rc() : instr->VRegC_35c();
}

void EnterInterpreterFromDeoptimize(Thread* self,
                                    ShadowFrame* shadow_frame,
                                    JValue* ret_val,
                                    bool from_code,
                                    DeoptimizationMethodType deopt_method_type)
    REQUIRES_SHARED(Locks::mutator_lock_) {
  JValue value;
  // Set value to last known result in case the shadow frame chain is empty.
  value.SetJ(ret_val->GetJ());
  // How many frames we have executed.
  size_t frame_cnt = 0;
  while (shadow_frame != nullptr) {
    // We do not want to recover lock state for lock counting when deoptimizing. Currently,
    // the compiler should not have compiled a method that failed structured-locking checks.
    DCHECK(!shadow_frame->GetMethod()->MustCountLocks());

    self->SetTopOfShadowStack(shadow_frame);
    CodeItemDataAccessor accessor(shadow_frame->GetMethod()->DexInstructionData());
    const uint32_t dex_pc = shadow_frame->GetDexPC();
    uint32_t new_dex_pc = dex_pc;
    if (UNLIKELY(self->IsExceptionPending())) {
      DCHECK(self->GetException() != Thread::GetDeoptimizationException());
      // If we deoptimize from the QuickExceptionHandler, we already reported the exception throw
      // event to the instrumentation. Skip throw listeners for the first frame. The deopt check
      // should happen after the throw listener is called as throw listener can trigger a
      // deoptimization.
      new_dex_pc = MoveToExceptionHandler(self,
                                          *shadow_frame,
                                          /* skip_listeners= */ false,
                                          /* skip_throw_listener= */ frame_cnt == 0) ?
                       shadow_frame->GetDexPC() :
                       dex::kDexNoIndex;
    } else if (!from_code) {
      // Deoptimization is not called from code directly.
      const Instruction* instr = &accessor.InstructionAt(dex_pc);
      if (deopt_method_type == DeoptimizationMethodType::kKeepDexPc ||
          shadow_frame->GetForceRetryInstruction()) {
        DCHECK(frame_cnt == 0 || shadow_frame->GetForceRetryInstruction())
            << "frame_cnt: " << frame_cnt
            << " force-retry: " << shadow_frame->GetForceRetryInstruction();
        // Need to re-execute the dex instruction.
        // (1) An invocation might be split into class initialization and invoke.
        //     In this case, the invoke should not be skipped.
        // (2) A suspend check should also execute the dex instruction at the
        //     corresponding dex pc.
        // If the ForceRetryInstruction bit is set this must be the second frame (the first being
        // the one that is being popped).
        DCHECK_EQ(new_dex_pc, dex_pc);
        shadow_frame->SetForceRetryInstruction(false);
      } else if (instr->Opcode() == Instruction::MONITOR_ENTER ||
                 instr->Opcode() == Instruction::MONITOR_EXIT) {
        DCHECK(deopt_method_type == DeoptimizationMethodType::kDefault);
        DCHECK_EQ(frame_cnt, 0u);
        // Non-idempotent dex instruction should not be re-executed.
        // On the other hand, if a MONITOR_ENTER is at the dex_pc of a suspend
        // check, that MONITOR_ENTER should be executed. That case is handled
        // above.
        new_dex_pc = dex_pc + instr->SizeInCodeUnits();
      } else if (instr->IsInvoke()) {
        DCHECK(deopt_method_type == DeoptimizationMethodType::kDefault);
        if (IsStringInit(*instr, shadow_frame->GetMethod())) {
          uint16_t this_obj_vreg = GetReceiverRegisterForStringInit(instr);
          // Move the StringFactory.newStringFromChars() result into the register representing
          // "this object" when invoking the string constructor in the original dex instruction.
          // Also move the result into all aliases.
          DCHECK(value.GetL()->IsString());
          SetStringInitValueToAllAliases(shadow_frame, this_obj_vreg, value);
          // Calling string constructor in the original dex code doesn't generate a result value.
          value.SetJ(0);
        }
        new_dex_pc = dex_pc + instr->SizeInCodeUnits();
      } else if (instr->Opcode() == Instruction::NEW_INSTANCE) {
        // A NEW_INSTANCE is simply re-executed, including
        // "new-instance String" which is compiled into a call into
        // StringFactory.newEmptyString().
        DCHECK_EQ(new_dex_pc, dex_pc);
      } else {
        DCHECK(deopt_method_type == DeoptimizationMethodType::kDefault);
        DCHECK_EQ(frame_cnt, 0u);
        // By default, we re-execute the dex instruction since if they are not
        // an invoke, so that we don't have to decode the dex instruction to move
        // result into the right vreg. All slow paths have been audited to be
        // idempotent except monitor-enter/exit and invocation stubs.
        // TODO: move result and advance dex pc. That also requires that we
        // can tell the return type of a runtime method, possibly by decoding
        // the dex instruction at the caller.
        DCHECK_EQ(new_dex_pc, dex_pc);
      }
    } else {
      // Nothing to do, the dex_pc is the one at which the code requested
      // the deoptimization.
      DCHECK_EQ(frame_cnt, 0u);
      DCHECK_EQ(new_dex_pc, dex_pc);
    }
    if (new_dex_pc != dex::kDexNoIndex) {
      shadow_frame->SetDexPC(new_dex_pc);
      value = Execute(self,
                      accessor,
                      *shadow_frame,
                      value,
                      /* stay_in_interpreter= */ true,
                      /* from_deoptimize= */ true);
    }
    ShadowFrame* old_frame = shadow_frame;
    shadow_frame = shadow_frame->GetLink();
    ShadowFrame::DeleteDeoptimizedFrame(old_frame);
    // Following deoptimizations of shadow frames must be at invocation point
    // and should advance dex pc past the invoke instruction.
    from_code = false;
    deopt_method_type = DeoptimizationMethodType::kDefault;
    frame_cnt++;
  }
  ret_val->SetJ(value.GetJ());
}

NO_STACK_PROTECTOR
JValue EnterInterpreterFromEntryPoint(Thread* self, const CodeItemDataAccessor& accessor,
                                      ShadowFrame* shadow_frame) {
  DCHECK_EQ(self, Thread::Current());
  bool implicit_check = Runtime::Current()->GetImplicitStackOverflowChecks();
  if (UNLIKELY(__builtin_frame_address(0) < self->GetStackEndForInterpreter(implicit_check))) {
    ThrowStackOverflowError(self);
    return JValue();
  }

  jit::Jit* jit = Runtime::Current()->GetJit();
  if (jit != nullptr) {
    jit->NotifyCompiledCodeToInterpreterTransition(self, shadow_frame->GetMethod());
  }
  return Execute(self, accessor, *shadow_frame, JValue());
}

NO_STACK_PROTECTOR
void ArtInterpreterToInterpreterBridge(Thread* self,
                                       const CodeItemDataAccessor& accessor,
                                       ShadowFrame* shadow_frame,
                                       JValue* result) {
  ArtMethod* pfc_method = shadow_frame != nullptr ? shadow_frame->GetMethod() : nullptr;
  UNUSED(pfc_method);
  const bool pfc_fm_trace = false;
  if (pfc_fm_trace) {
    fprintf(stderr,
            "[PFCUT-FM] bridge enter method=%s frame=%p code_item=%p insns=%p regs=%u ins=%u "
            "top_shadow=%p top_quick=%p\n",
            pfc_method->PrettyMethod().c_str(),
            shadow_frame,
            pfc_method->GetCodeItem(),
            accessor.Insns(),
            accessor.RegistersSize(),
            accessor.InsSize(),
            self->GetManagedStack()->GetTopShadowFrame(),
            self->GetManagedStack()->GetTopQuickFrame());
    fflush(stderr);
  }
  bool implicit_check = Runtime::Current()->GetImplicitStackOverflowChecks();
  if (UNLIKELY(__builtin_frame_address(0) < self->GetStackEndForInterpreter(implicit_check))) {
    ThrowStackOverflowError(self);
    return;
  }

  self->PushShadowFrame(shadow_frame);
  if (pfc_fm_trace) {
    fprintf(stderr,
            "[PFCUT-FM] bridge after push top_shadow=%p top_quick=%p\n",
            self->GetManagedStack()->GetTopShadowFrame(),
            self->GetManagedStack()->GetTopQuickFrame());
    fflush(stderr);
  }

  if (LIKELY(!shadow_frame->GetMethod()->IsNative())) {
    result->SetJ(Execute(self, accessor, *shadow_frame, JValue()).GetJ());
    if (pfc_fm_trace) {
      fprintf(stderr,
              "[PFCUT-FM] bridge after Execute result=%p pending=%d top_shadow=%p top_quick=%p\n",
              result != nullptr ? result->GetL() : nullptr,
              self->IsExceptionPending() ? 1 : 0,
              self->GetManagedStack()->GetTopShadowFrame(),
              self->GetManagedStack()->GetTopQuickFrame());
      fflush(stderr);
    }
  } else {
    // We don't expect to be asked to interpret native code (which is entered via a JNI compiler
    // generated stub) except during testing and image writing.
    ArtMethod* native_method = shadow_frame->GetMethod();
    if (native_method->IsStatic() &&
        native_method->GetDeclaringClassDescriptor() != nullptr &&
        strcmp(native_method->GetDeclaringClassDescriptor(), "Ljava/util/TimeZone;") == 0 &&
        (strcmp(native_method->GetName(), "getDefault") == 0 ||
         strcmp(native_method->GetName(), "getDefaultRef") == 0) &&
        native_method->GetInterfaceMethodIfProxy(kRuntimePointerSize)->GetShortyView() == "L") {
      using FnType = jobject (*)(JNIEnv*, jclass);
      FnType fn = reinterpret_cast<FnType>(
          const_cast<void*>(native_method->GetEntryPointFromJni()));
      JNIEnvExt* env = down_cast<JNIEnvExt*>(self->GetJniEnv());
      const bool trace_tz = WestlakeTraceTimeZoneBridge();
      if (trace_tz) {
        fprintf(stderr,
                "[WESTLAKE-TZ-INVOKE] direct native invoke method=%s fn=%p env=%p\n",
                native_method->PrettyMethod().c_str(),
                reinterpret_cast<void*>(fn),
                env);
        fflush(stderr);
      }
      jobject jresult = fn(env, nullptr);
      if (trace_tz) {
        fprintf(stderr, "[WESTLAKE-TZ-INVOKE] direct native invoke result=%p\n", jresult);
        fflush(stderr);
      }
      result->SetL(self->DecodeJObject(jresult));
      if (trace_tz) {
        fprintf(stderr, "[WESTLAKE-TZ-INVOKE] direct native invoke decoded\n");
        fflush(stderr);
      }
      self->PopShadowFrame();
      return;
    }
    CHECK(!Runtime::Current()->IsStarted());
    bool is_static = shadow_frame->GetMethod()->IsStatic();
    ObjPtr<mirror::Object> receiver = is_static ? nullptr : shadow_frame->GetVRegReference(0);
    uint32_t* args = shadow_frame->GetVRegArgs(is_static ? 0 : 1);
    if (Runtime::Current()->IsAotCompiler()) {
      UnstartedRuntime::Jni(self, shadow_frame->GetMethod(), receiver.Ptr(), args, result);
    } else {
      ArtMethod* method = shadow_frame->GetMethod();
      std::string_view shorty =
          method->GetInterfaceMethodIfProxy(kRuntimePointerSize)->GetShortyView();
      InterpreterJni(self, method, shorty, receiver, args, result);
    }
  }

  self->PopShadowFrame();
}

void CheckInterpreterAsmConstants() {
  CheckNterpAsmConstants();
}

bool PrevFrameWillRetry(Thread* self, const ShadowFrame& frame) {
  ShadowFrame* prev_frame = frame.GetLink();
  if (prev_frame == nullptr) {
    NthCallerVisitor vis(self, 1, false);
    vis.WalkStack();
    prev_frame = vis.GetCurrentShadowFrame();
    if (prev_frame == nullptr) {
      prev_frame = self->FindDebuggerShadowFrame(vis.GetFrameId());
    }
  }
  return prev_frame != nullptr && prev_frame->GetForceRetryInstruction();
}

}  // namespace interpreter
}  // namespace art
