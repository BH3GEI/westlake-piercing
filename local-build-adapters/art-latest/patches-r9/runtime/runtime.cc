/*
 * Copyright (C) 2011 The Android Open Source Project
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

#include "runtime.h"

#include <atomic>
#include <ctime>
#include <errno.h>
#include <optional>
#include <utility>

#ifdef __linux__
#include <sys/prctl.h>
#endif

#include <dlfcn.h>
#include <fcntl.h>
#include <signal.h>
#include <sys/mount.h>
#include <sys/socket.h>
#include <sys/syscall.h>
#include <sys/statvfs.h>
#include <sys/wait.h>
#include <sys/stat.h>
#include <strings.h>
#include <unistd.h>
#include <math.h>
#include <regex>
#include <wctype.h>
#include <zlib.h>

#if defined(__APPLE__)
#include <crt_externs.h>  // for _NSGetEnviron
#endif

#include <android-base/properties.h>
#include <android-base/strings.h>
#include <string.h>

#include <cstdio>
#include <cstdlib>
#include <limits>
#include <string>
#include <thread>
#include <unordered_set>
#include <vector>

#include "arch/arm/registers_arm.h"
#include "arch/arm64/registers_arm64.h"
#include "arch/context.h"
#include "arch/instruction_set_features.h"
#include "arch/x86/registers_x86.h"
#include "arch/x86_64/registers_x86_64.h"
#include "art_field-inl.h"
#include "art_method-inl.h"
#include "asm_support.h"
#include "base/aborting.h"
#include "base/arena_allocator.h"
#include "base/atomic.h"
#include "base/dumpable.h"
#include "base/file_utils.h"
#include "base/flags.h"
#include "base/malloc_arena_pool.h"
#include "base/mem_map_arena_pool.h"
#include "base/memory_tool.h"
#include "base/mutex.h"
#include "base/os.h"
#include "base/pointer_size.h"
#include "base/quasi_atomic.h"
#include "base/sdk_version.h"
#include "base/stl_util.h"
#include "base/systrace.h"
#include "base/unix_file/fd_file.h"
#include "base/utils.h"
#include "class_linker-inl.h"
#include "class_root-inl.h"
#include "compiler_callbacks.h"
#include "debugger.h"
#include "dex/art_dex_file_loader.h"
#include "dex/dex_file_loader.h"
#include "entrypoints/entrypoint_utils-inl.h"
#include "entrypoints/runtime_asm_entrypoints.h"
#include "experimental_flags.h"
#include "fault_handler.h"
#include "gc/accounting/card_table-inl.h"
#include "gc/heap.h"
#include "interpreter/unstarted_runtime.h"
#include "gc/scoped_gc_critical_section.h"
#include "gc/space/image_space.h"
#include "gc/space/space-inl.h"
#include "gc/system_weak.h"
#include "gc/task_processor.h"
#include "handle_scope-inl.h"
#include "hidden_api.h"
#include "indirect_reference_table.h"
#include "instrumentation.h"
#include "intern_table-inl.h"
#include "interpreter/interpreter.h"
#include "jit/jit.h"
#include "jit/jit_code_cache.h"
#include "jit/profile_saver.h"
#include "jni/jni_env_ext.h"
#include "jni/java_vm_ext.h"
#include "jni/jni_id_manager.h"
#include "jni_id_type.h"
#include "linear_alloc.h"
#include "memory_representation.h"
#include "metrics/statsd.h"
#include "mirror/array.h"
#include "mirror/array-alloc-inl.h"
#include "mirror/object_array-inl.h"
#include "mirror/object-inl.h"
#include "mirror/class-alloc-inl.h"
#include "mirror/class-inl.h"
#include "mirror/class_ext.h"
#include "mirror/class_loader-inl.h"
#include "mirror/emulated_stack_frame.h"
#include "mirror/field.h"
#include "mirror/field-inl.h"
#include "mirror/method.h"
#include "mirror/method_handle_impl.h"
#include "mirror/method_handles_lookup.h"
#include "mirror/method_type.h"
#include "mirror/stack_trace_element.h"
#include "mirror/throwable.h"
#include "mirror/var_handle.h"
#include "monitor.h"
#include "native/dalvik_system_BaseDexClassLoader.h"
#include "native/dalvik_system_DexFile.h"
#include "native/dalvik_system_VMDebug.h"
#include "native/dalvik_system_VMRuntime.h"
#include "native/dalvik_system_VMStack.h"
#include "native/dalvik_system_ZygoteHooks.h"
#include "native/java_lang_Class.h"
#include "native/java_lang_Object.h"
#include "native/java_lang_StackStreamFactory.h"
#include "native/java_lang_String.h"
#include "native/java_lang_StringFactory.h"
#include "native/java_lang_System.h"
#include "native/java_lang_Thread.h"
#include "native/java_lang_Throwable.h"
#include "native/java_lang_VMClassLoader.h"
#include "native/java_lang_invoke_MethodHandle.h"
#include "native/java_lang_invoke_MethodHandleImpl.h"
#include "native/java_lang_ref_FinalizerReference.h"
#include "native/java_lang_ref_Reference.h"
#include "native/java_lang_reflect_Array.h"
#include "native/java_lang_reflect_Constructor.h"
#include "native/java_lang_reflect_Executable.h"
#include "native/java_lang_reflect_Field.h"
#include "native/java_lang_reflect_Method.h"
#include "native/java_lang_reflect_Parameter.h"
#include "native/java_lang_reflect_Proxy.h"
#include "native/java_util_concurrent_atomic_AtomicLong.h"
#include "native/jdk_internal_misc_Unsafe.h"
#include "native/libcore_io_Memory.h"
#include "native/libcore_util_CharsetUtils.h"
#include "native/org_apache_harmony_dalvik_ddmc_DdmServer.h"
#include "native/org_apache_harmony_dalvik_ddmc_DdmVmInternal.h"
#include "native/sun_misc_Unsafe.h"
#include "native_bridge_art_interface.h"
#include "native_stack_dump.h"
#include "nativehelper/scoped_local_ref.h"
#include "nterp_helpers.h"
#include "oat/elf_file.h"
#include "oat/image-inl.h"
#include "oat/oat.h"
#include "oat/oat_file_manager.h"
#include "oat/oat_quick_method_header.h"
#include "object_callbacks.h"
#include "odr_statslog/odr_statslog.h"
#include "parsed_options.h"
#include "quick/quick_method_frame_info.h"
#include "reflection.h"
#include "runtime_callbacks.h"
#include "runtime_common.h"
#include "runtime_image.h"
#include "runtime_intrinsics.h"
#include "runtime_options.h"
#include "scoped_thread_state_change-inl.h"
#include "sigchain.h"
#include "signal_catcher.h"
#include "signal_set.h"
#include "thread.h"
#include "thread_list.h"
#include "ti/agent.h"
#include "trace.h"
#include "vdex_file.h"
#include "verifier/class_verifier.h"
#include "well_known_classes-inl.h"

#ifdef ART_TARGET_ANDROID
#include <android/api-level.h>
#include <android/set_abort_message.h>
#include "com_android_apex.h"
namespace apex = com::android::apex;

#endif

// Static asserts to check the values of generated assembly-support macros.
#define ASM_DEFINE(NAME, EXPR) static_assert((NAME) == (EXPR), "Unexpected value of " #NAME);
#include "asm_defines.def"
#undef ASM_DEFINE

// Stub JNI_OnLoad functions linked from our stub .o files
extern "C" int JNI_OnLoad_icu(void* vm, void* reserved);
extern "C" int JNI_OnLoad_javacore(void* vm, void* reserved);
extern "C" int JNI_OnLoad_openjdk(void* vm, void* reserved);
extern "C" int JNI_OnLoad_framework(void* vm, void* reserved);

namespace art HIDDEN {

void register_java_lang_Character(JNIEnv* env);

extern "C" jint Westlake_UnixFileSystem_getBooleanAttributes(JNIEnv*, jobject, jobject);
extern "C" jboolean Westlake_UnixFileSystem_hasBooleanAttributes(JNIEnv*, jobject, jobject, jint);
extern "C" jboolean Westlake_UnixFileSystem_checkAccess(JNIEnv*, jobject, jobject, jint);
extern "C" jlong Westlake_UnixFileSystem_getLastModifiedTime(JNIEnv*, jobject, jobject);
extern "C" jlong Westlake_UnixFileSystem_getLength(JNIEnv*, jobject, jobject);
extern "C" jobjectArray Westlake_UnixFileSystem_list(JNIEnv*, jobject, jobject);

static std::atomic<jint> g_westlake_threadlocal_hash_counter{0};

extern "C" jint Westlake_ThreadLocal_nextHashCode(JNIEnv*, jclass) {
  static constexpr jint kHashIncrement = static_cast<jint>(0x61c88647u);
  return g_westlake_threadlocal_hash_counter.fetch_add(kHashIncrement);
}

static bool Westlake_CStringEquals(const char* a, const char* b) {
  if (a == nullptr || b == nullptr) {
    return false;
  }
  while (*a != 0 && *b != 0) {
    if (*a != *b) {
      return false;
    }
    ++a;
    ++b;
  }
  return *a == 0 && *b == 0;
}

static const char* Westlake_EnvironmentDefaultPath(const char* variable_name) {
  if (Westlake_CStringEquals(variable_name, "ANDROID_ROOT")) return "/system";
  if (Westlake_CStringEquals(variable_name, "ANDROID_DATA")) return "/data";
  if (Westlake_CStringEquals(variable_name, "ANDROID_EXPAND")) return "/mnt/expand";
  if (Westlake_CStringEquals(variable_name, "ANDROID_STORAGE")) return "/storage";
  if (Westlake_CStringEquals(variable_name, "DOWNLOAD_CACHE")) return "/cache";
  if (Westlake_CStringEquals(variable_name, "OEM_ROOT")) return "/oem";
  if (Westlake_CStringEquals(variable_name, "ODM_ROOT")) return "/odm";
  if (Westlake_CStringEquals(variable_name, "VENDOR_ROOT")) return "/vendor";
  if (Westlake_CStringEquals(variable_name, "PRODUCT_ROOT")) return "/product";
  if (Westlake_CStringEquals(variable_name, "PRODUCT_SERVICES_ROOT")) return "/product_services";
  if (Westlake_CStringEquals(variable_name, "SYSTEM_EXT_ROOT")) return "/system_ext";
  if (Westlake_CStringEquals(variable_name, "APEX_ROOT")) return "/apex";
  if (Westlake_CStringEquals(variable_name, "EXTERNAL_STORAGE")) return "/storage/emulated/0";
  return "/";
}

static std::string Westlake_JStringToString(JNIEnv* env, jstring value, const char* fallback) {
  if (value == nullptr) {
    return fallback != nullptr ? fallback : "";
  }
  const char* chars = env->GetStringUTFChars(value, nullptr);
  if (env->ExceptionCheck() || chars == nullptr) {
    return fallback != nullptr ? fallback : "";
  }
  std::string result(chars);
  env->ReleaseStringUTFChars(value, chars);
  return result;
}

static std::string Westlake_FilePath(JNIEnv* env, jobject file) {
  if (file == nullptr) {
    return "";
  }
  jclass file_class = env->GetObjectClass(file);
  if (file_class == nullptr || env->ExceptionCheck()) {
    return "";
  }
  jfieldID path_field = env->GetFieldID(file_class, "path", "Ljava/lang/String;");
  if (path_field == nullptr || env->ExceptionCheck()) {
    return "";
  }
  jstring path = reinterpret_cast<jstring>(env->GetObjectField(file, path_field));
  if (env->ExceptionCheck()) {
    return "";
  }
  return Westlake_JStringToString(env, path, "");
}

static std::string Westlake_JoinPath(const std::string& parent, const std::string& child) {
  if (child.empty()) {
    return parent.empty() ? std::string("/") : parent;
  }
  if (!child.empty() && child[0] == '/') {
    return child;
  }
  if (parent.empty()) {
    return child;
  }
  if (parent[parent.size() - 1] == '/') {
    return parent + child;
  }
  return parent + "/" + child;
}

static bool Westlake_FileAssignPath(JNIEnv* env, jobject file, jstring path) {
  if (file == nullptr) {
    return false;
  }
  jclass file_class = env->GetObjectClass(file);
  if (file_class == nullptr || env->ExceptionCheck()) {
    return false;
  }
  jfieldID path_field = env->GetFieldID(file_class, "path", "Ljava/lang/String;");
  jfieldID prefix_field = env->GetFieldID(file_class, "prefixLength", "I");
  if (path_field == nullptr || prefix_field == nullptr || env->ExceptionCheck()) {
    return false;
  }

  jstring final_path = path;
  if (final_path == nullptr) {
    const char* fallback = getenv("ANDROID_DATA");
    if (fallback == nullptr || fallback[0] == 0) {
      fallback = "/";
    }
    final_path = env->NewStringUTF(fallback);
    if (final_path == nullptr || env->ExceptionCheck()) {
      return false;
    }
  }

  jint prefix_length = 0;
  const char* path_chars = env->GetStringUTFChars(final_path, nullptr);
  if (path_chars == nullptr || env->ExceptionCheck()) {
    return false;
  }
  prefix_length = path_chars[0] == '/' ? 1 : 0;
  env->ReleaseStringUTFChars(final_path, path_chars);

  env->SetObjectField(file, path_field, final_path);
  env->SetIntField(file, prefix_field, prefix_length);
  if (env->ExceptionCheck()) {
    return false;
  }

  jfieldID status_field = env->GetFieldID(file_class, "status", "Ljava/io/File$PathStatus;");
  if (env->ExceptionCheck()) {
    env->ExceptionClear();
    status_field = nullptr;
  }
  if (status_field != nullptr) {
    env->SetObjectField(file, status_field, nullptr);
  }
  return !env->ExceptionCheck();
}

static jobject Westlake_NewFileWithPath(JNIEnv* env, jstring path) {
  jclass file_class = env->FindClass("java/io/File");
  if (file_class == nullptr || env->ExceptionCheck()) {
    return nullptr;
  }
  jobject file = env->AllocObject(file_class);
  if (file == nullptr || env->ExceptionCheck()) {
    return nullptr;
  }
  return Westlake_FileAssignPath(env, file, path) ? file : nullptr;
}

extern "C" jstring Westlake_Environment_getDirectoryPath(
    JNIEnv* env, jclass, jstring variable_name_j, jstring default_path_j) {
  const char* variable_name = nullptr;
  const char* default_path = nullptr;
  if (variable_name_j != nullptr) {
    variable_name = env->GetStringUTFChars(variable_name_j, nullptr);
    if (env->ExceptionCheck()) {
      return nullptr;
    }
  }
  if (default_path_j != nullptr) {
    default_path = env->GetStringUTFChars(default_path_j, nullptr);
    if (env->ExceptionCheck()) {
      if (variable_name != nullptr) {
        env->ReleaseStringUTFChars(variable_name_j, variable_name);
      }
      return nullptr;
    }
  }

  const char* env_path = variable_name != nullptr ? getenv(variable_name) : nullptr;
  const char* chosen = env_path != nullptr ? env_path : default_path;
  if (chosen == nullptr || chosen[0] == 0) {
    chosen = Westlake_EnvironmentDefaultPath(variable_name);
  }

  fprintf(stderr,
          "[RT] Environment.getDirectoryPath(%s, %s) -> %s\n",
          variable_name != nullptr ? variable_name : "<null>",
          default_path != nullptr ? default_path : "<null>",
          chosen);
  fflush(stderr);

  jstring result = env->NewStringUTF(chosen);
  if (default_path != nullptr) {
    env->ReleaseStringUTFChars(default_path_j, default_path);
  }
  if (variable_name != nullptr) {
    env->ReleaseStringUTFChars(variable_name_j, variable_name);
  }
  return result;
}

extern "C" jobject Westlake_Environment_getDirectory(
    JNIEnv* env, jclass klass, jstring variable_name_j, jstring default_path_j) {
  jstring path = Westlake_Environment_getDirectoryPath(
      env, klass, variable_name_j, default_path_j);
  if (path == nullptr || env->ExceptionCheck()) {
    return nullptr;
  }
  return Westlake_NewFileWithPath(env, path);
}

extern "C" jobject Westlake_Environment_getUserConfigDirectory(
    JNIEnv* env, jclass, jint user_id) {
  const char* data = getenv("ANDROID_DATA");
  if (data == nullptr || data[0] == 0) {
    data = Westlake_EnvironmentDefaultPath("ANDROID_DATA");
  }
  std::string path = std::string(data) + "/misc/user/" + std::to_string(user_id);
  fprintf(stderr, "[RT] Environment.getUserConfigDirectory(%d) -> %s\n",
          user_id, path.c_str());
  fflush(stderr);
  jstring path_j = env->NewStringUTF(path.c_str());
  if (path_j == nullptr || env->ExceptionCheck()) {
    return nullptr;
  }
  return Westlake_NewFileWithPath(env, path_j);
}

extern "C" void Westlake_File_initString(JNIEnv* env, jobject thiz, jstring pathname_j) {
  Westlake_FileAssignPath(env, thiz, pathname_j);
}

extern "C" void Westlake_File_initStringString(
    JNIEnv* env, jobject thiz, jstring parent_j, jstring child_j) {
  std::string parent = Westlake_JStringToString(env, parent_j, "");
  if (env->ExceptionCheck()) {
    return;
  }
  std::string child = Westlake_JStringToString(env, child_j, "");
  if (env->ExceptionCheck()) {
    return;
  }
  std::string path = Westlake_JoinPath(parent, child);
  jstring path_j = env->NewStringUTF(path.c_str());
  if (path_j == nullptr || env->ExceptionCheck()) {
    return;
  }
  Westlake_FileAssignPath(env, thiz, path_j);
}

extern "C" void Westlake_File_initFileString(
    JNIEnv* env, jobject thiz, jobject parent_j, jstring child_j) {
  std::string parent = Westlake_FilePath(env, parent_j);
  if (env->ExceptionCheck()) {
    return;
  }
  std::string child = Westlake_JStringToString(env, child_j, "");
  if (env->ExceptionCheck()) {
    return;
  }
  std::string path = Westlake_JoinPath(parent, child);
  jstring path_j = env->NewStringUTF(path.c_str());
  if (path_j == nullptr || env->ExceptionCheck()) {
    return;
  }
  Westlake_FileAssignPath(env, thiz, path_j);
}

extern "C" jstring Westlake_Build_joinListOrElse(
    JNIEnv* env, jclass, jobject, jstring default_value) {
  if (default_value != nullptr) {
    return default_value;
  }
  return env->NewStringUTF("");
}

static jobjectArray Westlake_NewStringArray(
    JNIEnv* env, const char* const* values, size_t count) {
  if (values == nullptr && count != 0) {
    return nullptr;
  }

  ScopedObjectAccess soa(env);
  Thread* self = soa.Self();
  StackHandleScope<1> hs(self);
  ObjPtr<mirror::Class> array_class = GetClassRoot<mirror::ObjectArray<mirror::String>>();
  ObjPtr<mirror::Array> raw_array = mirror::Array::Alloc<true, false>(
      self,
      array_class,
      static_cast<int32_t>(count),
      array_class->GetComponentSizeShift(),
      Runtime::Current()->GetHeap()->GetCurrentAllocator());
  Handle<mirror::ObjectArray<mirror::String>> array = hs.NewHandle(
      raw_array == nullptr ? nullptr : raw_array->AsObjectArray<mirror::String>());
  if (array == nullptr) {
    return nullptr;
  }

  for (size_t i = 0; i < count; ++i) {
    ObjPtr<mirror::String> value = mirror::String::AllocFromModifiedUtf8(self, values[i]);
    if (value == nullptr) {
      return nullptr;
    }
    array->SetWithoutChecks<false>(static_cast<int32_t>(i), value);
  }

  return soa.AddLocalReference<jobjectArray>(array.Get());
}

extern "C" jobjectArray Westlake_Build_getStringList(
    JNIEnv* env, jclass, jstring property_j, jstring) {
  std::string property = Westlake_JStringToString(env, property_j, "");
  if (env->ExceptionCheck()) {
    return nullptr;
  }
  static const char* const kAbis[] = {"arm64-v8a", "armeabi-v7a", "armeabi"};
  static const char* const kAbis64[] = {"arm64-v8a"};
  static const char* const kAbis32[] = {"armeabi-v7a", "armeabi"};
  static const char* const kRel[] = {"REL"};
  if (property == "ro.product.cpu.abilist") {
    return Westlake_NewStringArray(env, kAbis, 1);
  }
  if (property == "ro.product.cpu.abilist64") {
    return Westlake_NewStringArray(env, kAbis64, 1);
  }
  if (property == "ro.product.cpu.abilist32") {
    return Westlake_NewStringArray(env, kAbis32, 1);
  }
  if (property == "ro.build.version.all_codenames" ||
      property == "ro.build.version.known_codenames") {
    return Westlake_NewStringArray(env, kRel, 1);
  }
  return Westlake_NewStringArray(env, nullptr, 0);
}

extern "C" jint Westlake_AtomicInteger_getAndAdd(JNIEnv* env, jobject thiz, jint delta) {
  if (thiz == nullptr) {
    return 0;
  }
  jclass atomic_class = env->GetObjectClass(thiz);
  if (atomic_class == nullptr || env->ExceptionCheck()) {
    return 0;
  }
  jfieldID value_field = env->GetFieldID(atomic_class, "value", "I");
  if (value_field == nullptr || env->ExceptionCheck()) {
    return 0;
  }
  jint old_value = env->GetIntField(thiz, value_field);
  if (env->ExceptionCheck()) {
    return 0;
  }
  env->SetIntField(thiz, value_field, old_value + delta);
  return old_value;
}

// PF-630 (2026-05-04) boot-aware routing gate. Set once after the standalone
// app PathClassLoader is installed in Runtime::Start(). PFCut Unsafe-array
// routing only activates after this flips true; boot-time clinit
// (ICU/Charset/Provider/Crypto) goes through stock CAS/SetField paths.
static std::atomic<bool> g_pfcut_app_loader_seen{false};

bool PFCutAppClassLoaderSeen() {
  return g_pfcut_app_loader_seen.load(std::memory_order_relaxed);
}

void PFCutMarkAppClassLoaderSeen() {
  g_pfcut_app_loader_seen.store(true, std::memory_order_release);
}

// PF-noice-001 (2026-05-04) per-Unsafe-array-write trace flag. Active from
// runtime startup to the JNI hook nativePfcutTraceStop() called by Java when
// MainActivity.onResume completes. Used to localize the boot-class
// ArrayStoreException cascade without adding permanent runtime overhead.
static std::atomic<bool> g_pfcut_trace_active{false};

bool PFCutTraceActive() {
  return g_pfcut_trace_active.load(std::memory_order_relaxed);
}

void PFCutTraceStart() {
  g_pfcut_trace_active.store(true, std::memory_order_release);
}

void PFCutTraceStop() {
  g_pfcut_trace_active.store(false, std::memory_order_release);
}

// Durable trace sink. Opens the file lazily under a once-init.
static FILE* PFCutTraceFile() {
  static FILE* f = []() -> FILE* {
    FILE* result = fopen("/sdcard/westlake_pfcut_trace.txt", "w");
    if (result == nullptr) {
      result = fopen("/data/local/tmp/westlake_pfcut_trace.txt", "w");
    }
    if (result != nullptr) {
      // Line-buffered so logcat backpressure doesn't lose lines on crash.
      setvbuf(result, nullptr, _IOLBF, 4096);
    }
    return result;
  }();
  return f;
}

void PFCutTraceWrite(const char* line) {
  // Always emit to stderr (logcat) for cheap inspection.
  fputs(line, stderr);
  fputc('\n', stderr);
  // Also emit to durable file.
  FILE* f = PFCutTraceFile();
  if (f != nullptr) {
    fputs(line, f);
    fputc('\n', f);
  }
}

// Per-thread cap so trace volume stays bounded. The cascade fires within the
// first few hundred Unsafe writes; capping at 200 per thread is plenty.
static constexpr int kPFCutTracePerThreadCap = 200;

// Emit a structured trace line for the given Unsafe-array operation. NOT
// static so sun_misc_Unsafe.cc / jdk_internal_misc_Unsafe.cc can extern it.
void PFCutTraceUnsafeArrayWrite(const char* kind,
                                ObjPtr<mirror::Object> /*array_obj*/,
                                int32_t array_index,
                                int32_t array_length,
                                ObjPtr<mirror::Class> array_class,
                                ObjPtr<mirror::Class> component_class,
                                ObjPtr<mirror::Object> value,
                                ObjPtr<mirror::Class> value_class,
                                bool assignable)
    REQUIRES_SHARED(Locks::mutator_lock_) {
  if (!PFCutTraceActive()) {
    return;
  }
  static thread_local int per_thread_count = 0;
  if (per_thread_count >= kPFCutTracePerThreadCap) {
    return;
  }
  per_thread_count++;

  struct timespec ts;
  clock_gettime(CLOCK_MONOTONIC, &ts);
  uint64_t ts_us = (uint64_t)ts.tv_sec * 1000000ULL + (uint64_t)ts.tv_nsec / 1000ULL;

  std::string caller = "<unknown>";
  ArtMethod* current = Thread::Current()->GetCurrentMethod(/*dex_pc=*/ nullptr);
  if (current != nullptr) {
    caller = current->PrettyMethod();
  }

  std::string thread_name;
  Thread::Current()->GetThreadName(thread_name);

  std::string array_class_name = array_class != nullptr
      ? array_class->PrettyDescriptor() : "<null>";
  std::string component_class_name = component_class != nullptr
      ? component_class->PrettyDescriptor() : "<null>";
  std::string value_class_name = value_class != nullptr
      ? value_class->PrettyDescriptor() : "<null>";

  char buf[1024];
  snprintf(buf, sizeof(buf),
           "[PFCUT-TRACE] thread=%s ts_us=%llu kind=%s "
           "caller=\"%s\" array.class=%s array.componentType=%s "
           "array.length=%d index=%d value.ptr=%p value.class=%s "
           "assignable=%d",
           thread_name.c_str(),
           (unsigned long long) ts_us,
           kind,
           caller.c_str(),
           array_class_name.c_str(),
           component_class_name.c_str(),
           array_length,
           array_index,
           value.Ptr(),
           value_class_name.c_str(),
           assignable ? 1 : 0);
  PFCutTraceWrite(buf);
}

static void Westlake_ThrowErrnoException(JNIEnv* env, const char* function_name, int errnum) {
  jclass cls = env->FindClass("android/system/ErrnoException");
  if (cls == nullptr || env->ExceptionCheck()) {
    env->ExceptionClear();
    return;
  }
  jmethodID ctor = env->GetMethodID(cls, "<init>", "(Ljava/lang/String;I)V");
  if (ctor == nullptr || env->ExceptionCheck()) {
    env->ExceptionClear();
    return;
  }
  jstring name = env->NewStringUTF(function_name);
  if (name == nullptr || env->ExceptionCheck()) {
    env->ExceptionClear();
    return;
  }
  jobject exc = env->NewObject(cls, ctor, name, static_cast<jint>(errnum));
  if (exc == nullptr || env->ExceptionCheck()) {
    env->ExceptionClear();
    return;
  }
  env->Throw(reinterpret_cast<jthrowable>(exc));
}

static jint Westlake_GetFileDescriptor(JNIEnv* env, jobject fd_obj) {
  if (fd_obj == nullptr) {
    return -1;
  }
  jclass fd_cls = env->GetObjectClass(fd_obj);
  if (fd_cls == nullptr || env->ExceptionCheck()) {
    env->ExceptionClear();
    return -1;
  }
  jfieldID descriptor = env->GetFieldID(fd_cls, "descriptor", "I");
  if (descriptor == nullptr || env->ExceptionCheck()) {
    env->ExceptionClear();
    return -1;
  }
  return env->GetIntField(fd_obj, descriptor);
}

static jobject Westlake_MakeFileDescriptor(JNIEnv* env, int fd) {
  jclass fd_cls = env->FindClass("java/io/FileDescriptor");
  if (fd_cls == nullptr || env->ExceptionCheck()) {
    env->ExceptionClear();
    return nullptr;
  }
  jmethodID ctor = env->GetMethodID(fd_cls, "<init>", "()V");
  if (ctor == nullptr || env->ExceptionCheck()) {
    env->ExceptionClear();
    return nullptr;
  }
  jobject fd_obj = env->NewObject(fd_cls, ctor);
  if (fd_obj == nullptr || env->ExceptionCheck()) {
    env->ExceptionClear();
    return nullptr;
  }
  jfieldID descriptor = env->GetFieldID(fd_cls, "descriptor", "I");
  if (descriptor == nullptr || env->ExceptionCheck()) {
    env->ExceptionClear();
    return nullptr;
  }
  env->SetIntField(fd_obj, descriptor, static_cast<jint>(fd));
  if (env->ExceptionCheck()) {
    env->ExceptionClear();
    return nullptr;
  }
  return fd_obj;
}

static jobject Westlake_MakeStructStat(JNIEnv* env, const struct stat& sb) {
  jclass cls = env->FindClass("android/system/StructStat");
  if (cls == nullptr || env->ExceptionCheck()) {
    env->ExceptionClear();
    return nullptr;
  }
  jmethodID ctor = env->GetMethodID(cls, "<init>", "(JJIJIIJJJJJJJ)V");
  if (ctor == nullptr || env->ExceptionCheck()) {
    env->ExceptionClear();
    return nullptr;
  }
  return env->NewObject(cls,
                        ctor,
                        static_cast<jlong>(sb.st_dev),
                        static_cast<jlong>(sb.st_ino),
                        static_cast<jint>(sb.st_mode),
                        static_cast<jlong>(sb.st_nlink),
                        static_cast<jint>(sb.st_uid),
                        static_cast<jint>(sb.st_gid),
                        static_cast<jlong>(sb.st_rdev),
                        static_cast<jlong>(sb.st_size),
                        static_cast<jlong>(sb.st_atime),
                        static_cast<jlong>(sb.st_mtime),
                        static_cast<jlong>(sb.st_ctime),
                        static_cast<jlong>(sb.st_blksize),
                        static_cast<jlong>(sb.st_blocks));
}

static jobject Westlake_MakeStructLinger(JNIEnv* env, int onoff, int seconds) {
  jclass cls = env->FindClass("android/system/StructLinger");
  if (cls == nullptr || env->ExceptionCheck()) {
    env->ExceptionClear();
    return nullptr;
  }
  jmethodID ctor = env->GetMethodID(cls, "<init>", "(II)V");
  if (ctor == nullptr || env->ExceptionCheck()) {
    env->ExceptionClear();
    return nullptr;
  }
  return env->NewObject(cls, ctor, static_cast<jint>(onoff), static_cast<jint>(seconds));
}

extern "C" jobject Westlake_Linux_open(JNIEnv* env, jobject, jstring path_j, jint flags, jint mode) {
  if (path_j == nullptr) {
    Westlake_ThrowErrnoException(env, "open", EINVAL);
    return nullptr;
  }
  const char* path = env->GetStringUTFChars(path_j, nullptr);
  if (path == nullptr) {
    return nullptr;
  }
  int fd = ::open(path, static_cast<int>(flags), static_cast<mode_t>(mode));
  int saved_errno = errno;
  env->ReleaseStringUTFChars(path_j, path);
  if (fd < 0) {
    Westlake_ThrowErrnoException(env, "open", saved_errno);
    return nullptr;
  }
  jobject fd_obj = Westlake_MakeFileDescriptor(env, fd);
  if (fd_obj == nullptr) {
    ::close(fd);
  }
  return fd_obj;
}

extern "C" void Westlake_Linux_close(JNIEnv* env, jobject, jobject fd_obj) {
  int fd = Westlake_GetFileDescriptor(env, fd_obj);
  if (fd >= 0 && ::close(fd) != 0) {
    Westlake_ThrowErrnoException(env, "close", errno);
  }
}

extern "C" jint Westlake_Linux_readBytes(JNIEnv* env,
                                          jobject,
                                          jobject fd_obj,
                                          jobject buffer,
                                          jint offset,
                                          jint byte_count) {
  int fd = Westlake_GetFileDescriptor(env, fd_obj);
  if (fd < 0) {
    Westlake_ThrowErrnoException(env, "read", EBADF);
    return -1;
  }
  if (buffer == nullptr || offset < 0 || byte_count < 0) {
    Westlake_ThrowErrnoException(env, "read", EINVAL);
    return -1;
  }
  jbyteArray byte_array = reinterpret_cast<jbyteArray>(buffer);
  jsize length = env->GetArrayLength(byte_array);
  if (env->ExceptionCheck()) {
    env->ExceptionClear();
    Westlake_ThrowErrnoException(env, "read", EINVAL);
    return -1;
  }
  if (offset > length || byte_count > length - offset) {
    Westlake_ThrowErrnoException(env, "read", EINVAL);
    return -1;
  }
  jbyte* bytes = env->GetByteArrayElements(byte_array, nullptr);
  if (bytes == nullptr) {
    return -1;
  }
  ssize_t n = ::read(fd, bytes + offset, static_cast<size_t>(byte_count));
  int saved_errno = errno;
  static int rd_dbg = 0;
  bool do_dbg = rd_dbg < 30;
  unsigned char b0 = 0, b1 = 0, b2 = 0, b3 = 0;
  if (do_dbg && n >= 4) {
    b0 = static_cast<unsigned char>(bytes[offset]);
    b1 = static_cast<unsigned char>(bytes[offset + 1]);
    b2 = static_cast<unsigned char>(bytes[offset + 2]);
    b3 = static_cast<unsigned char>(bytes[offset + 3]);
  }
  env->ReleaseByteArrayElements(byte_array, bytes, 0);
  if (do_dbg) {
    rd_dbg++;
    fprintf(stderr, "[RDBYTES] fd=%d off=%d want=%d -> %lld data=%02x%02x%02x%02x\n",
            fd, offset, byte_count, static_cast<long long>(n), b0, b1, b2, b3);
    fflush(stderr);
  }
  if (n < 0) {
    Westlake_ThrowErrnoException(env, "read", saved_errno);
    return -1;
  }
  return static_cast<jint>(n);
}

extern "C" jint Westlake_Linux_writeBytes(JNIEnv* env,
                                           jobject,
                                           jobject fd_obj,
                                           jobject buffer,
                                           jint offset,
                                           jint byte_count) {
  int fd = Westlake_GetFileDescriptor(env, fd_obj);
  if (fd < 0) {
    Westlake_ThrowErrnoException(env, "write", EBADF);
    return -1;
  }
  if (buffer == nullptr || offset < 0 || byte_count < 0) {
    Westlake_ThrowErrnoException(env, "write", EINVAL);
    return -1;
  }
  jbyteArray byte_array = reinterpret_cast<jbyteArray>(buffer);
  jsize length = env->GetArrayLength(byte_array);
  if (env->ExceptionCheck()) {
    env->ExceptionClear();
    Westlake_ThrowErrnoException(env, "write", EINVAL);
    return -1;
  }
  if (offset > length || byte_count > length - offset) {
    Westlake_ThrowErrnoException(env, "write", EINVAL);
    return -1;
  }
  jbyte* bytes = env->GetByteArrayElements(byte_array, nullptr);
  if (bytes == nullptr) {
    return -1;
  }
  ssize_t n = ::write(fd, bytes + offset, static_cast<size_t>(byte_count));
  int saved_errno = errno;
  env->ReleaseByteArrayElements(byte_array, bytes, JNI_ABORT);
  if (n < 0) {
    Westlake_ThrowErrnoException(env, "write", saved_errno);
    return -1;
  }
  return static_cast<jint>(n);
}

// ---- java.lang.Character.*Impl (Unicode character properties) ------------------------
// AOSP backs these with ICU; libart here does not link ICU, so approximate with the musl
// wctype.h classifiers. Adequate for app startup (isDigit/isLetter/case mapping); not a
// full Unicode property database.
extern "C" jboolean Westlake_Character_isDigitImpl(JNIEnv*, jclass, jint cp) {
  return iswdigit(static_cast<wint_t>(cp)) ? JNI_TRUE : JNI_FALSE;
}
extern "C" jboolean Westlake_Character_isLetterImpl(JNIEnv*, jclass, jint cp) {
  return iswalpha(static_cast<wint_t>(cp)) ? JNI_TRUE : JNI_FALSE;
}
extern "C" jboolean Westlake_Character_isLetterOrDigitImpl(JNIEnv*, jclass, jint cp) {
  return iswalnum(static_cast<wint_t>(cp)) ? JNI_TRUE : JNI_FALSE;
}
extern "C" jboolean Westlake_Character_isWhitespaceImpl(JNIEnv*, jclass, jint cp) {
  return iswspace(static_cast<wint_t>(cp)) ? JNI_TRUE : JNI_FALSE;
}
extern "C" jboolean Westlake_Character_isSpaceCharImpl(JNIEnv*, jclass, jint cp) {
  return iswspace(static_cast<wint_t>(cp)) ? JNI_TRUE : JNI_FALSE;
}
extern "C" jboolean Westlake_Character_isUpperCaseImpl(JNIEnv*, jclass, jint cp) {
  return iswupper(static_cast<wint_t>(cp)) ? JNI_TRUE : JNI_FALSE;
}
extern "C" jboolean Westlake_Character_isLowerCaseImpl(JNIEnv*, jclass, jint cp) {
  return iswlower(static_cast<wint_t>(cp)) ? JNI_TRUE : JNI_FALSE;
}
extern "C" jboolean Westlake_Character_isTitleCaseImpl(JNIEnv*, jclass, jint cp) {
  return iswupper(static_cast<wint_t>(cp)) ? JNI_TRUE : JNI_FALSE;
}
extern "C" jboolean Westlake_Character_isDefinedImpl(JNIEnv*, jclass, jint cp) {
  wint_t w = static_cast<wint_t>(cp);
  return (iswprint(w) || iswcntrl(w) || iswspace(w)) ? JNI_TRUE : JNI_FALSE;
}
extern "C" jboolean Westlake_Character_isAlphabeticImpl(JNIEnv*, jclass, jint cp) {
  return iswalpha(static_cast<wint_t>(cp)) ? JNI_TRUE : JNI_FALSE;
}
extern "C" jboolean Westlake_Character_isIdeographicImpl(JNIEnv*, jclass, jint cp) {
  return (cp >= 0x4E00 && cp <= 0x9FFF) ? JNI_TRUE : JNI_FALSE;
}
extern "C" jboolean Westlake_Character_isMirroredImpl(JNIEnv*, jclass, jint) { return JNI_FALSE; }
extern "C" jboolean Westlake_Character_isIdentifierIgnorableImpl(JNIEnv*, jclass, jint cp) {
  wint_t w = static_cast<wint_t>(cp);
  return (iswcntrl(w) && !iswspace(w)) ? JNI_TRUE : JNI_FALSE;
}
extern "C" jboolean Westlake_Character_isUnicodeIdentifierStartImpl(JNIEnv*, jclass, jint cp) {
  return iswalpha(static_cast<wint_t>(cp)) ? JNI_TRUE : JNI_FALSE;
}
extern "C" jboolean Westlake_Character_isUnicodeIdentifierPartImpl(JNIEnv*, jclass, jint cp) {
  return iswalnum(static_cast<wint_t>(cp)) ? JNI_TRUE : JNI_FALSE;
}
extern "C" jint Westlake_Character_toLowerCaseImpl(JNIEnv*, jclass, jint cp) {
  return static_cast<jint>(towlower(static_cast<wint_t>(cp)));
}
extern "C" jint Westlake_Character_toUpperCaseImpl(JNIEnv*, jclass, jint cp) {
  return static_cast<jint>(towupper(static_cast<wint_t>(cp)));
}
extern "C" jint Westlake_Character_toTitleCaseImpl(JNIEnv*, jclass, jint cp) {
  return static_cast<jint>(towupper(static_cast<wint_t>(cp)));
}
extern "C" jint Westlake_Character_digitImpl(JNIEnv*, jclass, jint cp, jint radix) {
  int d = -1;
  if (cp >= '0' && cp <= '9') d = cp - '0';
  else if (cp >= 'a' && cp <= 'z') d = cp - 'a' + 10;
  else if (cp >= 'A' && cp <= 'Z') d = cp - 'A' + 10;
  if (d < 0 || d >= radix) return -1;
  return d;
}
extern "C" jint Westlake_Character_getNumericValueImpl(JNIEnv*, jclass, jint cp) {
  if (cp >= '0' && cp <= '9') return cp - '0';
  if (cp >= 'a' && cp <= 'z') return cp - 'a' + 10;
  if (cp >= 'A' && cp <= 'Z') return cp - 'A' + 10;
  return -1;
}
extern "C" jbyte Westlake_Character_getDirectionalityImpl(JNIEnv*, jclass, jint) {
  return 0;  // DIRECTIONALITY_LEFT_TO_RIGHT
}
extern "C" jint Westlake_Character_getTypeImpl(JNIEnv*, jclass, jint cp) {
  wint_t w = static_cast<wint_t>(cp);
  if (iswupper(w)) return 1;   // UPPERCASE_LETTER
  if (iswlower(w)) return 2;   // LOWERCASE_LETTER
  if (iswdigit(w)) return 9;   // DECIMAL_DIGIT_NUMBER
  if (iswalpha(w)) return 5;   // OTHER_LETTER
  if (iswspace(w)) return 12;  // SPACE_SEPARATOR
  if (iswcntrl(w)) return 15;  // CONTROL
  if (iswpunct(w)) return 24;  // OTHER_PUNCTUATION
  return 0;                    // UNASSIGNED
}

// ---- android.os.PerfettoTrackEventExtra* tracing natives — no-op stubs -----------------
// The app's onCreate emits trace counters, creating per-type nested tracing objects; none of
// their ~60 natives are registered in standalone mode. Make tracing a harmless no-op:
// init/get_extra_ptr return a fake non-null handle, all setters/emit do nothing.
extern "C" jlong Westlake_pf_J(JNIEnv*, jclass) { return 1; }
extern "C" jlong Westlake_pf_JtoJ(JNIEnv*, jclass, jlong a) { return a; }
extern "C" jlong Westlake_pf_LtoJ(JNIEnv*, jclass, jstring) { return 1; }
extern "C" jlong Westlake_pf_LJtoJ(JNIEnv*, jclass, jstring, jlong) { return 1; }
extern "C" jlong Westlake_pf_JLJtoJ(JNIEnv*, jclass, jlong, jstring, jlong) { return 1; }
extern "C" void Westlake_pf_v_IJLJ(JNIEnv*, jclass, jint, jlong, jstring, jlong) {}
extern "C" void Westlake_pf_v_J(JNIEnv*, jclass, jlong) {}
extern "C" void Westlake_pf_v_JD(JNIEnv*, jclass, jlong, jdouble) {}
extern "C" void Westlake_pf_v_JJ(JNIEnv*, jclass, jlong, jlong) {}
extern "C" void Westlake_pf_v_JJD(JNIEnv*, jclass, jlong, jlong, jdouble) {}
extern "C" void Westlake_pf_v_JJJ(JNIEnv*, jclass, jlong, jlong, jlong) {}
extern "C" void Westlake_pf_v_JJL(JNIEnv*, jclass, jlong, jlong, jstring) {}
extern "C" void Westlake_pf_v_JL(JNIEnv*, jclass, jlong, jstring) {}
extern "C" void Westlake_pf_v_JZ(JNIEnv*, jclass, jlong, jboolean) {}
// android.os.PerfettoTrace / PerfettoTrace$Category natives. Category.native_init returns a
// fake non-null handle (so MQ_CATEGORY isn't null → no NPE), native_is_enabled returns false
// (so category-guarded tracing is skipped), sessions/triggers are no-ops.
extern "C" jlong Westlake_pf_LLLtoJ(JNIEnv*, jclass, jstring, jstring, jstring) { return 1; }
extern "C" jboolean Westlake_pf_isEnabled(JNIEnv*, jclass, jlong) { return JNI_FALSE; }
extern "C" void Westlake_pf_v_LI(JNIEnv*, jclass, jstring, jint) {}
extern "C" void Westlake_pf_v_Z(JNIEnv*, jclass, jboolean) {}
extern "C" jlong Westlake_pf_ZBtoJ(JNIEnv*, jclass, jboolean, jbyteArray) { return 1; }
extern "C" jbyteArray Westlake_pf_JtoBA(JNIEnv*, jclass, jlong) { return nullptr; }
// android.os.Trace native methods. nativeIsTagEnabled → false (disables tracing); the
// begin/end/counter/instant emitters are no-ops (also never reached once tags are disabled).
extern "C" jboolean Westlake_Trace_IsTagEnabled(JNIEnv*, jclass, jlong) { return JNI_FALSE; }
extern "C" void Westlake_v_JLJ(JNIEnv*, jclass, jlong, jstring, jlong) {}
extern "C" void Westlake_v_JLI(JNIEnv*, jclass, jlong, jstring, jint) {}
extern "C" void Westlake_v_JLL(JNIEnv*, jclass, jlong, jstring, jstring) {}
extern "C" void Westlake_v_JLLI(JNIEnv*, jclass, jlong, jstring, jstring, jint) {}
// android.os.Process scheduling natives (L12.A20). setThreadPriority etc. are unregistered and
// THROW inside HandlerThread.run(), killing looper threads. Make them no-ops / benign values.
extern "C" void Westlake_proc_v_I(JNIEnv*, jclass, jint) {}
extern "C" void Westlake_proc_v_II(JNIEnv*, jclass, jint, jint) {}
extern "C" void Westlake_proc_v_III(JNIEnv*, jclass, jint, jint, jint) {}
extern "C" jint Westlake_proc_i_I(JNIEnv*, jclass, jint) { return 0; }
extern "C" void Westlake_proc_v_L(JNIEnv*, jclass, jstring) {}
// android.os.Binder static natives (L12.A22): StrictMode policy no-op, calling identity =
// this process, work-source no-ops.
extern "C" jint Westlake_ret0_i(JNIEnv*, jclass) { return 0; }
extern "C" jlong Westlake_ret0_j(JNIEnv*, jclass) { return 0; }
extern "C" jint Westlake_retm1_i(JNIEnv*, jclass) { return -1; }
extern "C" jlong Westlake_ret0_ji(JNIEnv*, jclass, jint) { return 0; }
extern "C" jint Westlake_getpid_i(JNIEnv*, jclass) { return static_cast<jint>(getpid()); }
extern "C" jint Westlake_getuid_i(JNIEnv*, jclass) { return static_cast<jint>(getuid()); }
// sun.nio.ch.NativeThread — interruptible-IO thread identity. Unregistered in standalone mode;
// NIO channels (WorkManager's SQLite/file IO) use current()/signal(). current()=tid, rest no-op.
extern "C" jlong Westlake_NativeThread_current(JNIEnv*, jclass) {
  return static_cast<jlong>(syscall(SYS_gettid));
}
extern "C" void Westlake_NativeThread_signal(JNIEnv*, jclass, jlong) {}
extern "C" void Westlake_void_static(JNIEnv*, jclass) {}
// sun.nio.ch.FileKey.init(FileDescriptor) — set st_dev/st_ino from fstat so FileChannel can tell
// whether two descriptors refer to the same file. Instance native, unregistered in standalone mode.
extern "C" void Westlake_FileKey_init(JNIEnv* env, jobject thiz, jobject fdObj) {
  if (fdObj == nullptr) {
    return;
  }
  jclass fdCls = env->GetObjectClass(fdObj);
  jfieldID descF = env->GetFieldID(fdCls, "descriptor", "I");
  if (descF == nullptr) { env->ExceptionClear(); return; }
  jint fd = env->GetIntField(fdObj, descF);
  struct stat st;
  if (fstat(fd, &st) != 0) {
    return;
  }
  jclass fkCls = env->GetObjectClass(thiz);
  jfieldID devF = env->GetFieldID(fkCls, "st_dev", "J");
  jfieldID inoF = env->GetFieldID(fkCls, "st_ino", "J");
  if (devF != nullptr && inoF != nullptr) {
    env->SetLongField(thiz, devF, static_cast<jlong>(st.st_dev));
    env->SetLongField(thiz, inoF, static_cast<jlong>(st.st_ino));
  } else {
    env->ExceptionClear();
  }
}
// sun.nio.ch.FileDispatcherImpl.lock0 — file locking (androidx.work MultiProcessLock). In a
// single process the lock is uncontended → report LOCKED(0). release0 is a no-op.
extern "C" jint Westlake_FDImpl_lock0(
    JNIEnv*, jobject, jobject, jboolean, jlong, jlong, jboolean) {
  return 0;  // LOCKED
}
extern "C" void Westlake_FDImpl_release0(JNIEnv*, jobject, jobject, jlong, jlong) {}
// java.lang.UNIXProcess.forkAndExec(...) — fork+exec a child process. Unregistered in standalone
// mode; ProcessBuilder/Runtime.exec route here (e.g. root-detection `exec("su")`). Real fork/exec
// with an error pipe so a failed exec surfaces as a clean IOException instead of a hang.
static char* WlDupBytes(JNIEnv* env, jbyteArray arr) {
  if (arr == nullptr) return nullptr;
  jsize n = env->GetArrayLength(arr);
  char* out = reinterpret_cast<char*>(malloc(static_cast<size_t>(n) + 1));
  if (out == nullptr) return nullptr;
  env->GetByteArrayRegion(arr, 0, n, reinterpret_cast<jbyte*>(out));
  out[n] = '\0';
  return out;
}
extern "C" jint Westlake_UNIXProcess_forkAndExec(
    JNIEnv* env, jobject, jbyteArray prog,
    jbyteArray argBlock, jint argc, jbyteArray envBlock, jint envc, jbyteArray dir,
    jintArray fds, jboolean redirectErrorStream) {
  char* progPath = WlDupBytes(env, prog);
  // Build argv from argBlock (argc NUL-separated strings), argv[0] = prog.
  jsize abLen = (argBlock == nullptr) ? 0 : env->GetArrayLength(argBlock);
  char* ab = (abLen > 0) ? WlDupBytes(env, argBlock) : nullptr;
  char** argv = reinterpret_cast<char**>(calloc(static_cast<size_t>(argc) + 2, sizeof(char*)));
  int ai = 0;
  argv[ai++] = progPath;
  if (ab != nullptr) {
    char* p = ab; char* end = ab + abLen;
    while (p < end && ai <= argc) { argv[ai++] = p; while (p < end && *p) p++; p++; }
  }
  argv[ai] = nullptr;
  char* dirPath = WlDupBytes(env, dir);
  jint fdArr[3] = {-1, -1, -1};
  if (fds != nullptr) env->GetIntArrayRegion(fds, 0, 3, fdArr);
  int errpipe[2];
  if (pipe(errpipe) != 0) { errpipe[0] = errpipe[1] = -1; }
  pid_t pid = fork();
  if (pid == 0) {
    // child
    if (errpipe[0] >= 0) close(errpipe[0]);
    if (errpipe[1] >= 0) fcntl(errpipe[1], F_SETFD, FD_CLOEXEC);
    if (fdArr[0] >= 0) dup2(fdArr[0], 0);
    if (fdArr[1] >= 0) dup2(fdArr[1], 1);
    if (redirectErrorStream) { dup2(1, 2); } else if (fdArr[2] >= 0) { dup2(fdArr[2], 2); }
    if (dirPath != nullptr && dirPath[0] != '\0') { if (chdir(dirPath) != 0) {} }
    execvp(progPath, argv);
    int e = errno;
    if (errpipe[1] >= 0) { ssize_t w = write(errpipe[1], &e, sizeof(e)); (void)w; }
    _exit(127);
  }
  // parent
  if (errpipe[1] >= 0) close(errpipe[1]);
  int childErr = 0;
  if (pid < 0) {
    childErr = errno;
  } else if (errpipe[0] >= 0) {
    ssize_t r = read(errpipe[0], &childErr, sizeof(childErr));
    if (r != static_cast<ssize_t>(sizeof(childErr))) childErr = 0;
  }
  if (errpipe[0] >= 0) close(errpipe[0]);
  free(progPath); free(ab); free(argv); free(dirPath);
  if (childErr != 0 || pid < 0) {
    if (pid > 0) { int st; waitpid(pid, &st, 0); }
    jclass ioe = env->FindClass("java/io/IOException");
    if (ioe != nullptr) env->ThrowNew(ioe, "Cannot run program");
    return -1;
  }
  return static_cast<jint>(pid);
}

// libcore.io.Linux.statvfs(String) -> android.system.StructStatVfs. Used by android.os.StatFs
// (Picasso/OkHttp cache sizing). Unregistered in standalone mode; run a real statvfs().
extern "C" jobject Westlake_Linux_statvfs(JNIEnv* env, jobject, jstring pathStr) {
  if (pathStr == nullptr) {
    return nullptr;
  }
  const char* path = env->GetStringUTFChars(pathStr, nullptr);
  struct statvfs sv;
  int r = (path != nullptr) ? statvfs(path, &sv) : -1;
  if (path != nullptr) {
    env->ReleaseStringUTFChars(pathStr, path);
  }
  if (r != 0) {
    memset(&sv, 0, sizeof(sv));
    sv.f_bsize = 4096; sv.f_frsize = 4096;
    sv.f_blocks = 262144; sv.f_bfree = 131072; sv.f_bavail = 131072;
    sv.f_namemax = 255;
  }
  jclass cls = env->FindClass("android/system/StructStatVfs");
  if (cls == nullptr) { env->ExceptionClear(); return nullptr; }
  jmethodID ctor = env->GetMethodID(cls, "<init>", "(JJJJJJJJJJJ)V");
  if (ctor == nullptr) { env->ExceptionClear(); return nullptr; }
  return env->NewObject(cls, ctor,
      static_cast<jlong>(sv.f_bsize), static_cast<jlong>(sv.f_frsize),
      static_cast<jlong>(sv.f_blocks), static_cast<jlong>(sv.f_bfree),
      static_cast<jlong>(sv.f_bavail), static_cast<jlong>(sv.f_files),
      static_cast<jlong>(sv.f_ffree), static_cast<jlong>(sv.f_favail),
      static_cast<jlong>(sv.f_fsid), static_cast<jlong>(sv.f_flag),
      static_cast<jlong>(sv.f_namemax));
}

// jdk.internal.misc.Unsafe.allocateInstance(Class) — allocate an object WITHOUT running any
// constructor. Not registered in standalone mode; frameworks (and our own service stubs) rely
// on it. Allocates via the class's normal object allocator after ensuring it is initialized.
extern "C" jobject Westlake_Unsafe_allocateInstance(JNIEnv* env, jobject, jclass cls)
    REQUIRES_SHARED(Locks::mutator_lock_) {
  ScopedObjectAccessUnchecked soa(env);
  ObjPtr<mirror::Class> klass = soa.Decode<mirror::Class>(cls);
  if (klass == nullptr) {
    return nullptr;
  }
  Thread* self = soa.Self();
  StackHandleScope<1> hs(self);
  Handle<mirror::Class> h_klass(hs.NewHandle(klass));
  ClassLinker* cl = Runtime::Current()->GetClassLinker();
  if (!cl->EnsureInitialized(self, h_klass, /*can_init_fields=*/true, /*can_init_parents=*/true)) {
    if (self->IsExceptionPending()) self->ClearException();
    return nullptr;
  }
  ObjPtr<mirror::Object> obj = h_klass->AllocObject(self);
  return soa.AddLocalReference<jobject>(obj);
}

// com.android.org.conscrypt.NativeCrypto.RAND_bytes(byte[]) — fill the array with random bytes.
// Unregistered in standalone mode; SecureRandom/UUID.randomUUID route here. Backed by
// /dev/urandom (falls back to a weak fill only if that is unavailable).
extern "C" void Westlake_NativeCrypto_RAND_bytes(JNIEnv* env, jclass, jbyteArray arr) {
  if (arr == nullptr) {
    return;
  }
  jsize len = env->GetArrayLength(arr);
  if (len <= 0) {
    return;
  }
  jbyte* buf = env->GetByteArrayElements(arr, nullptr);
  if (buf == nullptr) {
    return;
  }
  jsize got = 0;
  int fd = open("/dev/urandom", O_RDONLY);
  if (fd >= 0) {
    while (got < len) {
      ssize_t r = read(fd, buf + got, static_cast<size_t>(len - got));
      if (r <= 0) break;
      got += static_cast<jsize>(r);
    }
    close(fd);
  }
  for (jsize i = got; i < len; i++) {
    buf[i] = static_cast<jbyte>((i * 1103515245 + 12345) >> 7);
  }
  env->ReleaseByteArrayElements(arr, buf, 0);
}

// ---- java.util.regex via com.android.icu.util.regex.{PatternNative,MatcherNative} ------
// AOSP backs regex with ICU uregex; libart here can't link OHOS ICU (no uregex symbols),
// so implement with C++ std::regex over UTF-16 (one wchar_t per code unit → Java char
// offsets for the BMP). Missing → PatternNative.compileImpl returns 0 → "nativePtr is null"
// → e.g. BouncyCastle JSSE JcaAlgorithmDecomposer.<clinit> fails → no System TLS.
namespace {
struct WlPattern { std::wregex re; int group_count; };
struct WlMatcher {
  WlPattern* pat = nullptr;
  std::wstring input;
  int region_start = 0, region_end = 0, next_from = 0;
  bool anchoring = true, transparent = false, hit_end = false, require_end = false;
};
std::wstring WlJStringToW(JNIEnv* env, jstring s) {
  std::wstring w;
  if (s == nullptr) return w;
  const jchar* chars = env->GetStringChars(s, nullptr);
  if (chars == nullptr) return w;
  jsize len = env->GetStringLength(s);
  w.reserve(len);
  for (jsize i = 0; i < len; i++) w.push_back(static_cast<wchar_t>(chars[i]));
  env->ReleaseStringChars(s, chars);
  return w;
}
void WlFillOffsets(JNIEnv* env, const std::wsmatch& match, jint base, jintArray offsets) {
  if (offsets == nullptr) return;
  jsize olen = env->GetArrayLength(offsets);
  jint* buf = env->GetIntArrayElements(offsets, nullptr);
  if (buf == nullptr) return;
  size_t groups = match.size();
  for (jsize i = 0; i + 1 < olen; i += 2) {
    size_t g = static_cast<size_t>(i / 2);
    if (g < groups && match[g].matched) {
      buf[i] = base + static_cast<jint>(match.position(g));
      buf[i + 1] = base + static_cast<jint>(match.position(g) + match.length(g));
    } else {
      buf[i] = -1;
      buf[i + 1] = -1;
    }
  }
  env->ReleaseIntArrayElements(offsets, buf, 0);
}
jboolean WlRunSearch(JNIEnv* env, WlMatcher* m, jint from, jintArray offsets,
                     bool anchored, bool full) {
  if (m == nullptr || m->pat == nullptr) return JNI_FALSE;
  if (from < m->region_start) from = m->region_start;
  if (from > m->region_end) { m->hit_end = true; return JNI_FALSE; }
  auto begin = m->input.cbegin() + from;
  auto end = m->input.cbegin() + m->region_end;
  std::wsmatch match;
  auto fl = std::regex_constants::match_default;
  if (from > 0) fl |= std::regex_constants::match_prev_avail;
  bool ok;
  try {
    if (full) {
      ok = std::regex_match(begin, end, match, m->pat->re, fl);
    } else if (anchored) {
      ok = std::regex_search(begin, end, match, m->pat->re,
                             fl | std::regex_constants::match_continuous);
    } else {
      ok = std::regex_search(begin, end, match, m->pat->re, fl);
    }
  } catch (...) {
    return JNI_FALSE;
  }
  if (ok) {
    WlFillOffsets(env, match, from, offsets);
    int mstart = from + static_cast<int>(match.position(0));
    int mend = mstart + static_cast<int>(match.length(0));
    m->next_from = (mend > mstart) ? mend : mend + 1;
  }
  return ok ? JNI_TRUE : JNI_FALSE;
}
// Best-effort rewrite of Java/ICU regex constructs that std::regex (ECMAScript) rejects:
// lookbehind assertions (?<=..)/(?<!..) are dropped; possessive quantifiers X++/X*+/X?+/X}+
// lose the extra '+'; named-group opens (?<name> become plain (. Enough to let patterns
// like BouncyCastle's "with|and|(?<!padd)in" compile.
const wchar_t* WlPosixClassFor(const std::wstring& name) {
  struct M { const wchar_t* java; const wchar_t* posix; };
  static const M kMap[] = {
      {L"Alnum", L"alnum"}, {L"Alpha", L"alpha"}, {L"Blank", L"blank"},
      {L"Cntrl", L"cntrl"}, {L"Digit", L"digit"}, {L"Graph", L"graph"},
      {L"Lower", L"lower"}, {L"Print", L"print"}, {L"Punct", L"punct"},
      {L"Space", L"space"}, {L"Upper", L"upper"}, {L"XDigit", L"xdigit"},
      {L"L", L"alpha"},  {L"Lu", L"upper"}, {L"Ll", L"lower"}, {L"Lt", L"upper"},
      {L"Lm", L"alpha"}, {L"Lo", L"alpha"}, {L"N", L"digit"},  {L"Nd", L"digit"},
      {L"P", L"punct"},  {L"S", L"punct"},  {L"Z", L"space"},  {L"Zs", L"space"},
      {L"IsAlphabetic", L"alpha"}, {L"IsDigit", L"digit"}, {L"IsSpace", L"space"},
      {L"IsWhite_Space", L"space"}, {L"IsAlnum", L"alnum"}, {L"IsUpper", L"upper"},
      {L"IsLower", L"lower"}, {L"javaLetter", L"alpha"}, {L"javaLetterOrDigit", L"alnum"},
      {L"javaWhitespace", L"space"}, {L"javaDigit", L"digit"},
  };
  for (const M& m : kMap) { if (name == m.java) return m.posix; }
  return L"alnum";  // unknown property -> best-effort word-ish
}

std::wstring WlSanitizeRegex(const std::wstring& in) {
  auto escape_literal = [](std::wstring& out, wchar_t c) {
    switch (c) {
      case L'\\': case L'^': case L'$': case L'.': case L'|': case L'?':
      case L'*':  case L'+': case L'(': case L')': case L'[': case L']':
      case L'{':  case L'}': case L'/':
        out.push_back(L'\\');
        [[fallthrough]];
      default:
        out.push_back(c);
    }
  };
  std::wstring out;
  out.reserve(in.size() + 16);
  bool in_class = false;
  for (size_t i = 0; i < in.size();) {
    wchar_t c = in[i];

    // \Q ... \E  -> escaped literal run
    if (c == L'\\' && i + 1 < in.size() && in[i + 1] == L'Q') {
      size_t j = i + 2;
      while (j < in.size()) {
        if (in[j] == L'\\' && j + 1 < in.size() && in[j + 1] == L'E') { j += 2; break; }
        escape_literal(out, in[j]);
        ++j;
      }
      i = j;
      continue;
    }

    // \p{Name} / \P{Name} / \pX / \PX  -> POSIX class (context-aware)
    if (c == L'\\' && i + 1 < in.size() && (in[i + 1] == L'p' || in[i + 1] == L'P')) {
      bool negate = (in[i + 1] == L'P');
      std::wstring name;
      size_t j = i + 2;
      if (j < in.size() && in[j] == L'{') {
        ++j;
        while (j < in.size() && in[j] != L'}') name.push_back(in[j++]);
        if (j < in.size()) ++j;  // consume '}'
      } else if (j < in.size()) {
        name.push_back(in[j++]);  // single-letter form: \pL
      }
      const wchar_t* posix = WlPosixClassFor(name);
      if (in_class) {
        out.append(L"[:").append(posix).append(L":]");
      } else if (negate) {
        out.append(L"[^[:").append(posix).append(L":]]");
      } else {
        out.append(L"[[:").append(posix).append(L":]]");
      }
      i = j;
      continue;
    }

    // Java-only anchors / shorthands with cheap ECMAScript equivalents
    if (c == L'\\' && i + 1 < in.size()) {
      wchar_t n = in[i + 1];
      if (!in_class && n == L'A') { out.push_back(L'^'); i += 2; continue; }
      if (!in_class && (n == L'z' || n == L'Z')) { out.push_back(L'$'); i += 2; continue; }
      if (n == L'G') { i += 2; continue; }
      if (n == L'h') { out.append(L"[ \\t]"); i += 2; continue; }
      if (n == L'H') { out.append(L"[^ \\t]"); i += 2; continue; }
      if (n == L'R') { out.append(L"(?:\\r\\n|[\\n\\r])"); i += 2; continue; }
      out.push_back(c);
      out.push_back(n);
      i += 2;
      continue;
    }

    // Lookbehind (?<=..)/(?<!..) -> drop the whole group
    if (!in_class && i + 3 < in.size() && c == L'(' && in[i + 1] == L'?' &&
        in[i + 2] == L'<' && (in[i + 3] == L'=' || in[i + 3] == L'!')) {
      int depth = 1;
      size_t j = i + 4;
      for (; j < in.size() && depth > 0; ++j) {
        if (in[j] == L'\\') { ++j; continue; }
        if (in[j] == L'(') ++depth;
        else if (in[j] == L')') --depth;
      }
      i = j;
      continue;
    }

    // Named group (?<name> -> (
    if (!in_class && i + 2 < in.size() && c == L'(' && in[i + 1] == L'?' &&
        in[i + 2] == L'<' && i + 3 < in.size() && in[i + 3] != L'=' && in[i + 3] != L'!') {
      out.push_back(L'(');
      size_t j = i + 3;
      while (j < in.size() && in[j] != L'>') ++j;
      i = (j < in.size()) ? j + 1 : j;
      continue;
    }

    // Possessive X++ / X*+ / X?+ / X}+ -> drop the extra '+'
    if (!in_class && (c == L'+' || c == L'*' || c == L'?' || c == L'}') &&
        i + 1 < in.size() && in[i + 1] == L'+') {
      out.push_back(c);
      i += 2;
      continue;
    }

    if (c == L'[') in_class = true;
    else if (c == L']') in_class = false;
    out.push_back(c);
    ++i;
  }
  return out;
}
}  // namespace

extern "C" jlong Westlake_PatternNative_compileImpl(JNIEnv* env, jclass, jstring regex,
                                                    jint flags) {
  std::wstring pat = WlJStringToW(env, regex);
  auto syntax = std::regex_constants::ECMAScript;
  if (flags & 0x02) syntax |= std::regex_constants::icase;      // CASE_INSENSITIVE
  if (flags & 0x08) syntax |= std::regex_constants::multiline;  // MULTILINE
  std::string u8(pat.begin(), pat.end());
  WlPattern* p = new WlPattern();
  try {
    p->re.assign(pat, syntax);
    p->group_count = static_cast<int>(p->re.mark_count());
    return static_cast<jlong>(reinterpret_cast<uintptr_t>(p));
  } catch (...) {
    // Retry with unsupported constructs stripped (lookbehind, possessive, named groups).
    try {
      p->re.assign(WlSanitizeRegex(pat), syntax);
      p->group_count = static_cast<int>(p->re.mark_count());
      return static_cast<jlong>(reinterpret_cast<uintptr_t>(p));
    } catch (const std::exception& e) {
      fprintf(stderr, "[WLREGEX] compile FAIL flags=%d pat='%s' err=%s\n",
              flags, u8.c_str(), e.what());
      fflush(stderr);
      delete p;
      return 0;
    } catch (...) {
      delete p;
      return 0;
    }
  }
}
extern "C" jlong Westlake_PatternNative_openMatcherImpl(JNIEnv*, jclass, jlong patAddr) {
  WlPattern* p = reinterpret_cast<WlPattern*>(static_cast<uintptr_t>(patAddr));
  if (p == nullptr) return 0;
  WlMatcher* m = new WlMatcher();
  m->pat = p;
  return static_cast<jlong>(reinterpret_cast<uintptr_t>(m));
}
extern "C" jint Westlake_PatternNative_getMatchedGroupIndexImpl(JNIEnv*, jclass, jlong, jstring) {
  return -1;  // named-group lookup unsupported by std::regex ECMAScript
}
extern "C" jlong Westlake_Regex_getNativeFinalizer(JNIEnv*, jclass) { return 0; }
extern "C" void Westlake_MatcherNative_setInputImpl(JNIEnv* env, jclass, jlong mAddr,
                                                    jstring input, jint start, jint end) {
  WlMatcher* m = reinterpret_cast<WlMatcher*>(static_cast<uintptr_t>(mAddr));
  if (m == nullptr) return;
  m->input = WlJStringToW(env, input);
  int n = static_cast<int>(m->input.size());
  m->region_start = (start < 0) ? 0 : (start > n ? n : start);
  m->region_end = (end < 0) ? 0 : (end > n ? n : end);
  m->next_from = m->region_start;
  m->hit_end = false;
}
extern "C" void Westlake_MatcherNative_useAnchoringBoundsImpl(JNIEnv*, jclass, jlong mAddr,
                                                              jboolean v) {
  WlMatcher* m = reinterpret_cast<WlMatcher*>(static_cast<uintptr_t>(mAddr));
  if (m) m->anchoring = v;
}
extern "C" void Westlake_MatcherNative_useTransparentBoundsImpl(JNIEnv*, jclass, jlong mAddr,
                                                                jboolean v) {
  WlMatcher* m = reinterpret_cast<WlMatcher*>(static_cast<uintptr_t>(mAddr));
  if (m) m->transparent = v;
}
extern "C" jint Westlake_MatcherNative_groupCountImpl(JNIEnv*, jclass, jlong mAddr) {
  WlMatcher* m = reinterpret_cast<WlMatcher*>(static_cast<uintptr_t>(mAddr));
  return (m && m->pat) ? static_cast<jint>(m->pat->group_count) : 0;
}
extern "C" jboolean Westlake_MatcherNative_hitEndImpl(JNIEnv*, jclass, jlong mAddr) {
  WlMatcher* m = reinterpret_cast<WlMatcher*>(static_cast<uintptr_t>(mAddr));
  return (m && m->hit_end) ? JNI_TRUE : JNI_FALSE;
}
extern "C" jboolean Westlake_MatcherNative_requireEndImpl(JNIEnv*, jclass, jlong mAddr) {
  WlMatcher* m = reinterpret_cast<WlMatcher*>(static_cast<uintptr_t>(mAddr));
  return (m && m->require_end) ? JNI_TRUE : JNI_FALSE;
}
extern "C" jboolean Westlake_MatcherNative_matchesImpl(JNIEnv* env, jclass, jlong mAddr,
                                                       jintArray offsets) {
  WlMatcher* m = reinterpret_cast<WlMatcher*>(static_cast<uintptr_t>(mAddr));
  return WlRunSearch(env, m, m ? m->region_start : 0, offsets, true, true);
}
extern "C" jboolean Westlake_MatcherNative_lookingAtImpl(JNIEnv* env, jclass, jlong mAddr,
                                                         jintArray offsets) {
  WlMatcher* m = reinterpret_cast<WlMatcher*>(static_cast<uintptr_t>(mAddr));
  return WlRunSearch(env, m, m ? m->region_start : 0, offsets, true, false);
}
extern "C" jboolean Westlake_MatcherNative_findImpl(JNIEnv* env, jclass, jlong mAddr,
                                                    jint startIndex, jintArray offsets) {
  WlMatcher* m = reinterpret_cast<WlMatcher*>(static_cast<uintptr_t>(mAddr));
  return WlRunSearch(env, m, startIndex, offsets, false, false);
}
extern "C" jboolean Westlake_MatcherNative_findNextImpl(JNIEnv* env, jclass, jlong mAddr,
                                                        jintArray offsets) {
  WlMatcher* m = reinterpret_cast<WlMatcher*>(static_cast<uintptr_t>(mAddr));
  return WlRunSearch(env, m, m ? m->next_from : 0, offsets, false, false);
}

// ---- java.lang.Math / StrictMath natives via libm --------------------------------------
// Unregistered here → e.g. HashMap.calculateHashMapCapacity → Math.ceil UnsatisfiedLinkError
// → app collection <clinit>s and BouncyCastle JSSE init fail. Map to the C math library.
extern "C" jdouble Westlake_Math_ceil(JNIEnv*, jclass, jdouble a) { return ::ceil(a); }
extern "C" jdouble Westlake_Math_floor(JNIEnv*, jclass, jdouble a) { return ::floor(a); }
extern "C" jdouble Westlake_Math_sqrt(JNIEnv*, jclass, jdouble a) { return ::sqrt(a); }
extern "C" jdouble Westlake_Math_cbrt(JNIEnv*, jclass, jdouble a) { return ::cbrt(a); }
extern "C" jdouble Westlake_Math_sin(JNIEnv*, jclass, jdouble a) { return ::sin(a); }
extern "C" jdouble Westlake_Math_cos(JNIEnv*, jclass, jdouble a) { return ::cos(a); }
extern "C" jdouble Westlake_Math_tan(JNIEnv*, jclass, jdouble a) { return ::tan(a); }
extern "C" jdouble Westlake_Math_asin(JNIEnv*, jclass, jdouble a) { return ::asin(a); }
extern "C" jdouble Westlake_Math_acos(JNIEnv*, jclass, jdouble a) { return ::acos(a); }
extern "C" jdouble Westlake_Math_atan(JNIEnv*, jclass, jdouble a) { return ::atan(a); }
extern "C" jdouble Westlake_Math_exp(JNIEnv*, jclass, jdouble a) { return ::exp(a); }
extern "C" jdouble Westlake_Math_log(JNIEnv*, jclass, jdouble a) { return ::log(a); }
extern "C" jdouble Westlake_Math_log10(JNIEnv*, jclass, jdouble a) { return ::log10(a); }
extern "C" jdouble Westlake_Math_expm1(JNIEnv*, jclass, jdouble a) { return ::expm1(a); }
extern "C" jdouble Westlake_Math_log1p(JNIEnv*, jclass, jdouble a) { return ::log1p(a); }
extern "C" jdouble Westlake_Math_sinh(JNIEnv*, jclass, jdouble a) { return ::sinh(a); }
extern "C" jdouble Westlake_Math_cosh(JNIEnv*, jclass, jdouble a) { return ::cosh(a); }
extern "C" jdouble Westlake_Math_tanh(JNIEnv*, jclass, jdouble a) { return ::tanh(a); }
extern "C" jdouble Westlake_Math_rint(JNIEnv*, jclass, jdouble a) { return ::rint(a); }
extern "C" jdouble Westlake_Math_atan2(JNIEnv*, jclass, jdouble y, jdouble x) { return ::atan2(y, x); }
extern "C" jdouble Westlake_Math_pow(JNIEnv*, jclass, jdouble x, jdouble y) { return ::pow(x, y); }
extern "C" jdouble Westlake_Math_hypot(JNIEnv*, jclass, jdouble x, jdouble y) { return ::hypot(x, y); }
extern "C" jdouble Westlake_Math_IEEEremainder(JNIEnv*, jclass, jdouble x, jdouble y) {
  return ::remainder(x, y);
}

// ---- java.util.zip.Inflater (DEFLATE decompression) via zlib -------------------------
// Not registered in this AOSP-15 snapshot → Inflater.init(boolean) UnsatisfiedLinkError →
// e.g. android.icu.util.TimeZone.<clinit> tolerated-failed (LOGGER stayed null → later NPE),
// and any DEFLATE-compressed zip entry could not be read. libart already links zlib.
extern "C" jlong Westlake_Inflater_init(JNIEnv* env, jclass, jboolean nowrap) {
  z_stream* strm = reinterpret_cast<z_stream*>(calloc(1, sizeof(z_stream)));
  if (strm == nullptr) {
    Westlake_ThrowErrnoException(env, "Inflater.init", ENOMEM);
    return 0;
  }
  int ret = inflateInit2(strm, nowrap ? -MAX_WBITS : MAX_WBITS);
  if (ret != Z_OK) {
    free(strm);
    Westlake_ThrowErrnoException(env, "Inflater.init", EINVAL);
    return 0;
  }
  return static_cast<jlong>(reinterpret_cast<uintptr_t>(strm));
}

extern "C" jlong Westlake_Inflater_inflateBytesBytes(
    JNIEnv* env, jobject, jlong addr, jbyteArray inputArray, jint inputOff, jint inputLen,
    jbyteArray outputArray, jint outputOff, jint outputLen) {
  z_stream* strm = reinterpret_cast<z_stream*>(static_cast<uintptr_t>(addr));
  if (strm == nullptr) {
    return 0;
  }
  jbyte* in = reinterpret_cast<jbyte*>(env->GetPrimitiveArrayCritical(inputArray, nullptr));
  if (in == nullptr) {
    return 0;
  }
  jbyte* out = reinterpret_cast<jbyte*>(env->GetPrimitiveArrayCritical(outputArray, nullptr));
  if (out == nullptr) {
    env->ReleasePrimitiveArrayCritical(inputArray, in, JNI_ABORT);
    return 0;
  }
  strm->next_in = reinterpret_cast<Bytef*>(in + inputOff);
  strm->avail_in = static_cast<uInt>(inputLen);
  strm->next_out = reinterpret_cast<Bytef*>(out + outputOff);
  strm->avail_out = static_cast<uInt>(outputLen);
  int ret = inflate(strm, Z_PARTIAL_FLUSH);
  jint inRead = inputLen - static_cast<jint>(strm->avail_in);
  jint outWritten = outputLen - static_cast<jint>(strm->avail_out);
  env->ReleasePrimitiveArrayCritical(outputArray, out, 0);
  env->ReleasePrimitiveArrayCritical(inputArray, in, JNI_ABORT);
  // Result layout expected by Inflater.java: outputConsumed in bits [0..30],
  // inputConsumed in bits [31..61], finished at bit 62, needDict at bit 63.
  jlong result = (static_cast<jlong>(inRead) << 31) | static_cast<jlong>(outWritten);
  if (ret == Z_STREAM_END) {
    result |= (static_cast<jlong>(1) << 62);
  } else if (ret == Z_NEED_DICT) {
    result |= (static_cast<jlong>(1) << 63);
  } else if (ret != Z_OK && ret != Z_BUF_ERROR) {
    // Z_DATA_ERROR / Z_MEM_ERROR etc. — surface as a DataFormatException-like failure.
    Westlake_ThrowErrnoException(env, "Inflater.inflate", EINVAL);
  }
  return result;
}

extern "C" void Westlake_Inflater_end(JNIEnv*, jclass, jlong addr) {
  z_stream* strm = reinterpret_cast<z_stream*>(static_cast<uintptr_t>(addr));
  if (strm != nullptr) {
    inflateEnd(strm);
    free(strm);
  }
}

extern "C" void Westlake_Inflater_reset(JNIEnv*, jclass, jlong addr) {
  z_stream* strm = reinterpret_cast<z_stream*>(static_cast<uintptr_t>(addr));
  if (strm != nullptr) {
    inflateReset(strm);
  }
}

extern "C" jint Westlake_Inflater_getAdler(JNIEnv*, jclass, jlong addr) {
  z_stream* strm = reinterpret_cast<z_stream*>(static_cast<uintptr_t>(addr));
  return strm == nullptr ? 0 : static_cast<jint>(strm->adler);
}

extern "C" void Westlake_Inflater_setDictionary(
    JNIEnv* env, jclass, jlong addr, jbyteArray b, jint off, jint len) {
  z_stream* strm = reinterpret_cast<z_stream*>(static_cast<uintptr_t>(addr));
  if (strm == nullptr) {
    return;
  }
  jbyte* buf = reinterpret_cast<jbyte*>(env->GetPrimitiveArrayCritical(b, nullptr));
  if (buf == nullptr) {
    return;
  }
  inflateSetDictionary(strm, reinterpret_cast<Bytef*>(buf + off), static_cast<uInt>(len));
  env->ReleasePrimitiveArrayCritical(b, buf, JNI_ABORT);
}

// libcore.io.Linux.lseek(FileDescriptor, long offset, int whence) -> long.
// Missing registration → RandomAccessFile.seek was a no-op → ZipFile.findEND read at
// the wrong position → EOFException → getResourceAsStream/ICU broke.
extern "C" jlong Westlake_Linux_lseek(JNIEnv* env, jobject, jobject fd_obj, jlong offset, jint whence) {
  int fd = Westlake_GetFileDescriptor(env, fd_obj);
  if (fd < 0) {
    Westlake_ThrowErrnoException(env, "lseek", EBADF);
    return -1;
  }
  off_t result = ::lseek(fd, static_cast<off_t>(offset), whence);
  static int lseek_dbg = 0;
  if (lseek_dbg < 30) {
    lseek_dbg++;
    fprintf(stderr, "[LSEEK] fd=%d off=%lld whence=%d -> %lld\n",
            fd, static_cast<long long>(offset), whence, static_cast<long long>(result));
    fflush(stderr);
  }
  if (result == static_cast<off_t>(-1)) {
    Westlake_ThrowErrnoException(env, "lseek", errno);
    return -1;
  }
  return static_cast<jlong>(result);
}

// libcore.io.Linux.pread(FileDescriptor, byte[], int, int, long) -> int.
extern "C" jint Westlake_Linux_pread(JNIEnv* env, jobject, jobject fd_obj,
                                     jobject buffer, jint offset, jint byte_count, jlong file_offset) {
  int fd = Westlake_GetFileDescriptor(env, fd_obj);
  if (fd < 0) {
    Westlake_ThrowErrnoException(env, "pread", EBADF);
    return -1;
  }
  if (buffer == nullptr || offset < 0 || byte_count < 0) {
    Westlake_ThrowErrnoException(env, "pread", EINVAL);
    return -1;
  }
  jbyteArray byte_array = reinterpret_cast<jbyteArray>(buffer);
  jbyte* bytes = env->GetByteArrayElements(byte_array, nullptr);
  if (bytes == nullptr) {
    return -1;
  }
  ssize_t n = ::pread(fd, bytes + offset, static_cast<size_t>(byte_count),
                      static_cast<off_t>(file_offset));
  int saved_errno = errno;
  env->ReleaseByteArrayElements(byte_array, bytes, 0);
  if (n < 0) {
    Westlake_ThrowErrnoException(env, "pread", saved_errno);
    return -1;
  }
  return static_cast<jint>(n);
}

extern "C" jobject Westlake_Linux_fstat(JNIEnv* env, jobject, jobject fd_obj) {
  int fd = Westlake_GetFileDescriptor(env, fd_obj);
  struct stat sb;
  if (fd < 0 || ::fstat(fd, &sb) != 0) {
    Westlake_ThrowErrnoException(env, "fstat", fd < 0 ? EBADF : errno);
    return nullptr;
  }
  return Westlake_MakeStructStat(env, sb);
}

extern "C" jobject Westlake_Linux_stat(JNIEnv* env, jobject, jstring path_j) {
  if (path_j == nullptr) {
    Westlake_ThrowErrnoException(env, "stat", EINVAL);
    return nullptr;
  }
  const char* path = env->GetStringUTFChars(path_j, nullptr);
  if (path == nullptr) {
    return nullptr;
  }
  struct stat sb;
  int rc = ::stat(path, &sb);
  int saved_errno = errno;
  env->ReleaseStringUTFChars(path_j, path);
  if (rc != 0) {
    Westlake_ThrowErrnoException(env, "stat", saved_errno);
    return nullptr;
  }
  return Westlake_MakeStructStat(env, sb);
}

extern "C" jobject Westlake_Linux_lstat(JNIEnv* env, jobject, jstring path_j) {
  if (path_j == nullptr) {
    Westlake_ThrowErrnoException(env, "lstat", EINVAL);
    return nullptr;
  }
  const char* path = env->GetStringUTFChars(path_j, nullptr);
  if (path == nullptr) {
    return nullptr;
  }
  struct stat sb;
  int rc = ::lstat(path, &sb);
  int saved_errno = errno;
  env->ReleaseStringUTFChars(path_j, path);
  if (rc != 0) {
    Westlake_ThrowErrnoException(env, "lstat", saved_errno);
    return nullptr;
  }
  return Westlake_MakeStructStat(env, sb);
}

extern "C" jboolean Westlake_Linux_access(JNIEnv* env, jobject, jstring path_j, jint mode) {
  if (path_j == nullptr) {
    Westlake_ThrowErrnoException(env, "access", EINVAL);
    return JNI_FALSE;
  }
  const char* path = env->GetStringUTFChars(path_j, nullptr);
  if (path == nullptr) {
    return JNI_FALSE;
  }
  int rc = ::access(path, static_cast<int>(mode));
  int saved_errno = errno;
  env->ReleaseStringUTFChars(path_j, path);
  if (rc != 0) {
    Westlake_ThrowErrnoException(env, "access", saved_errno);
    return JNI_FALSE;
  }
  return JNI_TRUE;
}

extern "C" jobject Westlake_Linux_getsockoptLinger(JNIEnv* env,
                                                    jobject,
                                                    jobject fd_obj,
                                                    jint level,
                                                    jint option) {
  int fd = Westlake_GetFileDescriptor(env, fd_obj);
  if (fd < 0) {
    return Westlake_MakeStructLinger(env, 0, 0);
  }

  struct stat sb;
  if (::fstat(fd, &sb) != 0 || !S_ISSOCK(sb.st_mode)) {
    return Westlake_MakeStructLinger(env, 0, 0);
  }

  struct linger linger_value {};
  socklen_t len = sizeof(linger_value);
  if (::getsockopt(fd,
                   static_cast<int>(level),
                   static_cast<int>(option),
                   &linger_value,
                   &len) != 0) {
    return Westlake_MakeStructLinger(env, 0, 0);
  }
  return Westlake_MakeStructLinger(env, linger_value.l_onoff, linger_value.l_linger);
}

namespace {

struct WestlakePortableTimeZone {
  const char* id;
  jint raw_offset_ms;
  bool use_daylight;
  jint dst_savings_ms;
};

static bool Westlake_TraceTimeZone() {
  const char* value = getenv("WESTLAKE_TRACE_TZ");
  return value != nullptr && value[0] != '\0' && strcmp(value, "0") != 0 &&
         strcasecmp(value, "false") != 0;
}

static const char* Westlake_NormalizeTimeZoneId(const char* id) {
  if (id == nullptr || id[0] == '\0') {
    return "UTC";
  }
  if (id[0] == ':' && id[1] != '\0') {
    ++id;
  }
  if (strcmp(id, "Etc/UTC") == 0 || strcmp(id, "Etc/GMT") == 0 ||
      strcmp(id, "GMT0") == 0) {
    return "UTC";
  }
  return id;
}

static jint Westlake_ClampOffsetMillis(double seconds) {
  const double millis = seconds * 1000.0;
  if (millis > static_cast<double>(std::numeric_limits<jint>::max())) {
    return std::numeric_limits<jint>::max();
  }
  if (millis < static_cast<double>(std::numeric_limits<jint>::min())) {
    return std::numeric_limits<jint>::min();
  }
  return static_cast<jint>(millis);
}

static WestlakePortableTimeZone Westlake_ResolvePortableTimeZone() {
  WestlakePortableTimeZone tz = {
      Westlake_NormalizeTimeZoneId(getenv("WESTLAKE_TIMEZONE_ID")),
      0,
      false,
      0,
  };
  if (strcmp(tz.id, "UTC") == 0) {
    tz.id = Westlake_NormalizeTimeZoneId(getenv("TZ"));
  }

  tzset();
  time_t now = time(nullptr);
  struct tm local_tm {};
  struct tm utc_tm {};
  if (now != static_cast<time_t>(-1) &&
      localtime_r(&now, &local_tm) != nullptr &&
      gmtime_r(&now, &utc_tm) != nullptr) {
    struct tm local_copy = local_tm;
    struct tm utc_copy = utc_tm;
    const time_t local_epoch = mktime(&local_copy);
    const time_t utc_as_local_epoch = mktime(&utc_copy);
    if (local_epoch != static_cast<time_t>(-1) &&
        utc_as_local_epoch != static_cast<time_t>(-1)) {
      tz.raw_offset_ms = Westlake_ClampOffsetMillis(difftime(local_epoch, utc_as_local_epoch));
    }
    if (local_tm.tm_isdst > 0) {
      tz.use_daylight = true;
      tz.dst_savings_ms = 60 * 60 * 1000;
    }
  }
  return tz;
}

static ObjPtr<mirror::Object> Westlake_CreatePortableTimeZone(Thread* self,
                                                              ClassLinker* class_linker)
    REQUIRES_SHARED(Locks::mutator_lock_) {
  if (self == nullptr || class_linker == nullptr) {
    return nullptr;
  }

  WestlakePortableTimeZone resolved = Westlake_ResolvePortableTimeZone();
  StackHandleScope<4> hs(self);
  Handle<mirror::Class> simple_cls(hs.NewHandle(
      class_linker->FindSystemClass(self, "Ljava/util/SimpleTimeZone;")));
  if (self->IsExceptionPending()) {
    self->ClearException();
  }
  if (simple_cls == nullptr) {
    return nullptr;
  }

  Handle<mirror::Object> tz(hs.NewHandle(simple_cls->AllocObject(self)));
  if (self->IsExceptionPending()) {
    self->ClearException();
  }
  if (tz == nullptr) {
    return nullptr;
  }

  Handle<mirror::String> id(
      hs.NewHandle(mirror::String::AllocFromModifiedUtf8(self, resolved.id)));
  if (self->IsExceptionPending()) {
    self->ClearException();
  }

  Handle<mirror::Class> time_zone_cls(hs.NewHandle(
      class_linker->FindSystemClass(self, "Ljava/util/TimeZone;")));
  if (self->IsExceptionPending()) {
    self->ClearException();
  }
  if (time_zone_cls != nullptr && id != nullptr) {
    ArtField* id_field = time_zone_cls->FindInstanceField("ID", "Ljava/lang/String;");
    if (id_field != nullptr) {
      id_field->SetObject<false>(tz.Get(), id.Get());
    }
    if (self->IsExceptionPending()) {
      self->ClearException();
    }
  }

  ArtField* raw_offset = simple_cls->FindInstanceField("rawOffset", "I");
  if (raw_offset != nullptr && !self->IsExceptionPending()) {
    raw_offset->SetInt<false>(tz.Get(), resolved.raw_offset_ms);
  }
  if (self->IsExceptionPending()) {
    self->ClearException();
  }

  ArtField* use_daylight = simple_cls->FindInstanceField("useDaylight", "Z");
  if (use_daylight != nullptr && !self->IsExceptionPending()) {
    use_daylight->SetBoolean<false>(tz.Get(), resolved.use_daylight);
  }
  if (self->IsExceptionPending()) {
    self->ClearException();
  }

  ArtField* dst_savings = simple_cls->FindInstanceField("dstSavings", "I");
  if (dst_savings != nullptr && !self->IsExceptionPending()) {
    dst_savings->SetInt<false>(tz.Get(), resolved.dst_savings_ms);
  }
  if (self->IsExceptionPending()) {
    self->ClearException();
  }

  if (Westlake_TraceTimeZone()) {
    fprintf(stderr,
            "[WESTLAKE-TZ] id=%s rawOffsetMs=%d useDaylight=%d dstSavingsMs=%d object=%p\n",
            resolved.id,
            resolved.raw_offset_ms,
            resolved.use_daylight ? 1 : 0,
            resolved.dst_savings_ms,
            tz.Get());
    fflush(stderr);
  }
  return tz.Get();
}

}  // namespace

extern "C" jobject Westlake_TimeZone_getDefault(JNIEnv* env, jclass) {
  Thread* self = Thread::Current();
  if (self == nullptr) {
    return nullptr;
  }
  JNIEnvExt* env_ext = down_cast<JNIEnvExt*>(self->GetJniEnv());
  if (env_ext == nullptr) {
    return nullptr;
  }
  ClassLinker* class_linker = Runtime::Current()->GetClassLinker();
  ObjPtr<mirror::Object> tz = Westlake_CreatePortableTimeZone(self, class_linker);
  if (tz == nullptr) {
    return nullptr;
  }
  return env_ext->AddLocalReference<jobject>(tz.Ptr());
}

extern "C" void* Westlake_TimeZone_getDefaultObjectForQuick() {
  Thread* self = Thread::Current();
  if (self == nullptr) {
    return nullptr;
  }
  ClassLinker* class_linker = Runtime::Current()->GetClassLinker();
  if (class_linker == nullptr) {
    return nullptr;
  }
  ObjPtr<mirror::Object> tz = Westlake_CreatePortableTimeZone(self, class_linker);
  return tz.Ptr();
}

extern "C" void* Westlake_NumberingSystem_newDefaultForQuick() {
  Thread* self = Thread::Current();
  if (self == nullptr) {
    return nullptr;
  }
  ClassLinker* class_linker = Runtime::Current()->GetClassLinker();
  if (class_linker == nullptr) {
    return nullptr;
  }

  StackHandleScope<3> hs(self);
  Handle<mirror::Class> numbering_cls(hs.NewHandle(
      class_linker->FindSystemClass(self, "Landroid/icu/text/NumberingSystem;")));
  if (self->IsExceptionPending()) {
    self->ClearException();
  }
  if (numbering_cls == nullptr) {
    return nullptr;
  }

  Handle<mirror::Object> numbering(hs.NewHandle(numbering_cls->AllocObject(self)));
  if (self->IsExceptionPending()) {
    self->ClearException();
  }
  if (numbering == nullptr) {
    return nullptr;
  }

  Handle<mirror::String> latn(hs.NewHandle(mirror::String::AllocFromModifiedUtf8(self, "latn")));
  if (self->IsExceptionPending()) {
    self->ClearException();
  }
  Handle<mirror::String> digits(hs.NewHandle(
      mirror::String::AllocFromModifiedUtf8(self, "0123456789")));
  if (self->IsExceptionPending()) {
    self->ClearException();
  }

  ArtField* radix = numbering_cls->FindInstanceField("radix", "I");
  if (radix != nullptr) {
    radix->SetInt<false>(numbering.Get(), 10);
  }
  if (self->IsExceptionPending()) {
    self->ClearException();
  }

  ArtField* algorithmic = numbering_cls->FindInstanceField("algorithmic", "Z");
  if (algorithmic != nullptr) {
    algorithmic->SetBoolean<false>(numbering.Get(), false);
  }
  if (self->IsExceptionPending()) {
    self->ClearException();
  }

  ArtField* name = numbering_cls->FindInstanceField("name", "Ljava/lang/String;");
  if (name != nullptr && latn != nullptr) {
    name->SetObject<false>(numbering.Get(), latn.Get());
  }
  if (self->IsExceptionPending()) {
    self->ClearException();
  }

  ArtField* desc = numbering_cls->FindInstanceField("desc", "Ljava/lang/String;");
  if (desc != nullptr && digits != nullptr) {
    desc->SetObject<false>(numbering.Get(), digits.Get());
  }
  if (self->IsExceptionPending()) {
    self->ClearException();
  }

  fprintf(stderr, "[PFCUT-ICU] return default NumberingSystem object=%p\n", numbering.Get());
  fflush(stderr);
  return numbering.Get();
}

extern "C" jobject Westlake_HashMap_put(JNIEnv* env, jobject thiz, jobject key, jobject value) {
  struct HashMapIds {
    bool init_attempted = false;
    bool init_ok = false;
    jclass hash_map_class = nullptr;
    jclass node_class = nullptr;
    jfieldID table_field = nullptr;
    jfieldID size_field = nullptr;
    jfieldID threshold_field = nullptr;
    jfieldID mod_count_field = nullptr;
    jfieldID node_hash_field = nullptr;
    jfieldID node_key_field = nullptr;
    jfieldID node_value_field = nullptr;
    jfieldID node_next_field = nullptr;
    jmethodID node_ctor = nullptr;
    jmethodID object_hash_code = nullptr;
    jmethodID object_equals = nullptr;
  };
  static HashMapIds ids;

  if (thiz == nullptr) {
    return nullptr;
  }

  if (!ids.init_attempted) {
    ids.init_attempted = true;
    jclass hash_map_local = env->FindClass("java/util/HashMap");
    jclass node_local = env->FindClass("java/util/HashMap$Node");
    jclass object_local = env->FindClass("java/lang/Object");
    if (env->ExceptionCheck()) {
      env->ExceptionClear();
    }
    if (hash_map_local != nullptr) {
      ids.hash_map_class = reinterpret_cast<jclass>(env->NewGlobalRef(hash_map_local));
    }
    if (node_local != nullptr) {
      ids.node_class = reinterpret_cast<jclass>(env->NewGlobalRef(node_local));
    }
    if (ids.hash_map_class != nullptr) {
      ids.table_field = env->GetFieldID(ids.hash_map_class, "table", "[Ljava/util/HashMap$Node;");
      ids.size_field = env->GetFieldID(ids.hash_map_class, "size", "I");
      ids.threshold_field = env->GetFieldID(ids.hash_map_class, "threshold", "I");
      ids.mod_count_field = env->GetFieldID(ids.hash_map_class, "modCount", "I");
    }
    if (ids.node_class != nullptr) {
      ids.node_hash_field = env->GetFieldID(ids.node_class, "hash", "I");
      ids.node_key_field = env->GetFieldID(ids.node_class, "key", "Ljava/lang/Object;");
      ids.node_value_field = env->GetFieldID(ids.node_class, "value", "Ljava/lang/Object;");
      ids.node_next_field = env->GetFieldID(ids.node_class, "next", "Ljava/util/HashMap$Node;");
      ids.node_ctor = env->GetMethodID(
          ids.node_class, "<init>", "(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)V");
    }
    if (object_local != nullptr) {
      ids.object_hash_code = env->GetMethodID(object_local, "hashCode", "()I");
      ids.object_equals = env->GetMethodID(object_local, "equals", "(Ljava/lang/Object;)Z");
    }
    if (env->ExceptionCheck()) {
      env->ExceptionClear();
    }
    ids.init_ok = ids.hash_map_class != nullptr &&
                  ids.node_class != nullptr &&
                  ids.table_field != nullptr &&
                  ids.size_field != nullptr &&
                  ids.threshold_field != nullptr &&
                  ids.mod_count_field != nullptr &&
                  ids.node_hash_field != nullptr &&
                  ids.node_key_field != nullptr &&
                  ids.node_value_field != nullptr &&
                  ids.node_next_field != nullptr &&
                  ids.node_ctor != nullptr &&
                  ids.object_hash_code != nullptr &&
                  ids.object_equals != nullptr;
    fprintf(stderr, "[RT] HashMap.put native init: %s\n", ids.init_ok ? "ok" : "failed");
    fflush(stderr);
  }

  if (!ids.init_ok) {
    return nullptr;
  }

  jobjectArray table = reinterpret_cast<jobjectArray>(env->GetObjectField(thiz, ids.table_field));
  if (env->ExceptionCheck()) {
    env->ExceptionClear();
    table = nullptr;
  }
  jint table_length = table != nullptr ? env->GetArrayLength(table) : 0;
  if (table == nullptr || table_length == 0) {
    jint requested = env->GetIntField(thiz, ids.threshold_field);
    if (env->ExceptionCheck()) {
      env->ExceptionClear();
      requested = 0;
    }
    jint capacity = requested > 0 ? requested : 64;
    jint rounded = 1;
    while (rounded < capacity && rounded < (1 << 29)) {
      rounded <<= 1;
    }
    if (rounded < 16) {
      rounded = 16;
    }
    capacity = rounded;
    table = env->NewObjectArray(capacity, ids.node_class, nullptr);
    if (env->ExceptionCheck()) {
      env->ExceptionClear();
      return nullptr;
    }
    env->SetObjectField(thiz, ids.table_field, table);
    env->SetIntField(thiz, ids.threshold_field, capacity - (capacity >> 2));
    if (env->ExceptionCheck()) {
      env->ExceptionClear();
    }
    table_length = capacity;
  }

  jint hash = 0;
  if (key != nullptr) {
    jint raw_hash = env->CallIntMethod(key, ids.object_hash_code);
    if (env->ExceptionCheck()) {
      env->ExceptionClear();
      raw_hash = 0;
    }
    hash = raw_hash ^ static_cast<jint>(static_cast<uint32_t>(raw_hash) >> 16);
  }

  jint index = (table_length - 1) & hash;
  jobject node = env->GetObjectArrayElement(table, index);
  jobject prev = nullptr;
  while (node != nullptr) {
    jint node_hash = env->GetIntField(node, ids.node_hash_field);
    jobject node_key = env->GetObjectField(node, ids.node_key_field);
    bool same_key = env->IsSameObject(node_key, key);
    if (!same_key && key != nullptr && node_key != nullptr) {
      same_key = env->CallBooleanMethod(key, ids.object_equals, node_key) == JNI_TRUE;
      if (env->ExceptionCheck()) {
        env->ExceptionClear();
        same_key = false;
      }
    }
    if (node_hash == hash && same_key) {
      jobject old_value = env->GetObjectField(node, ids.node_value_field);
      if (env->ExceptionCheck()) {
        env->ExceptionClear();
        old_value = nullptr;
      }
      env->SetObjectField(node, ids.node_value_field, value);
      if (env->ExceptionCheck()) {
        env->ExceptionClear();
      }
      return old_value;
    }
    prev = node;
    node = env->GetObjectField(node, ids.node_next_field);
    if (env->ExceptionCheck()) {
      env->ExceptionClear();
      node = nullptr;
    }
  }

  jobject new_node = env->NewObject(ids.node_class, ids.node_ctor, hash, key, value, nullptr);
  if (env->ExceptionCheck()) {
    env->ExceptionClear();
    return nullptr;
  }
  if (prev == nullptr) {
    env->SetObjectArrayElement(table, index, new_node);
  } else {
    env->SetObjectField(prev, ids.node_next_field, new_node);
  }
  if (env->ExceptionCheck()) {
    env->ExceptionClear();
  }

  jint size = env->GetIntField(thiz, ids.size_field);
  jint mod_count = env->GetIntField(thiz, ids.mod_count_field);
  if (env->ExceptionCheck()) {
    env->ExceptionClear();
  }
  env->SetIntField(thiz, ids.size_field, size + 1);
  env->SetIntField(thiz, ids.mod_count_field, mod_count + 1);
  if (env->ExceptionCheck()) {
    env->ExceptionClear();
  }
  return nullptr;
}

// If a signal isn't handled properly, enable a handler that attempts to dump the Java stack.
static constexpr bool kEnableJavaStackTraceHandler = false;
// Tuned by compiling GmsCore under perf and measuring time spent in DescriptorEquals for class
// linking.
static constexpr double kLowMemoryMinLoadFactor = 0.5;
static constexpr double kLowMemoryMaxLoadFactor = 0.8;
static constexpr double kNormalMinLoadFactor = 0.4;
static constexpr double kNormalMaxLoadFactor = 0.7;

#ifdef ART_PAGE_SIZE_AGNOSTIC
// Declare the constant as ALWAYS_HIDDEN to ensure it isn't visible from outside libart.so.
const size_t PageSize::value_ ALWAYS_HIDDEN = GetPageSizeSlow();
PageSize gPageSize ALWAYS_HIDDEN;
#endif

Runtime* Runtime::instance_ = nullptr;

struct TraceConfig {
  Trace::TraceMode trace_mode;
  TraceOutputMode trace_output_mode;
  std::string trace_file;
  size_t trace_file_size;
  TraceClockSource clock_source;
};

namespace {

#ifdef __APPLE__
inline char** GetEnviron() {
  // When Google Test is built as a framework on MacOS X, the environ variable
  // is unavailable. Apple's documentation (man environ) recommends using
  // _NSGetEnviron() instead.
  return *_NSGetEnviron();
}
#else
// Some POSIX platforms expect you to declare environ. extern "C" makes
// it reside in the global namespace.
EXPORT extern "C" char** environ;
inline char** GetEnviron() { return environ; }
#endif

void CheckConstants() {
  CHECK_EQ(mirror::Array::kFirstElementOffset, mirror::Array::FirstElementOffset());
}

// Standalone Westlake runs app dex files through a native-created PathClassLoader.
// Keep the DexFile storage alive for the whole process so the class loader's
// cookies never reference freed DexFile objects.
std::vector<std::unique_ptr<const DexFile>> g_standalone_class_path_dex_files;
jobject g_westlake_exported_class_loader = nullptr;

}  // namespace

Runtime::Runtime()
    : resolution_method_(nullptr),
      imt_conflict_method_(nullptr),
      imt_unimplemented_method_(nullptr),
      instruction_set_(InstructionSet::kNone),
      compiler_callbacks_(nullptr),
      is_zygote_(false),
      is_primary_zygote_(false),
      is_system_server_(false),
      must_relocate_(false),
      is_concurrent_gc_enabled_(true),
      is_explicit_gc_disabled_(false),
      is_eagerly_release_explicit_gc_disabled_(false),
      image_dex2oat_enabled_(true),
      default_stack_size_(0),
      heap_(nullptr),
      max_spins_before_thin_lock_inflation_(Monitor::kDefaultMaxSpinsBeforeThinLockInflation),
      monitor_list_(nullptr),
      monitor_pool_(nullptr),
      thread_list_(nullptr),
      intern_table_(nullptr),
      class_linker_(nullptr),
      signal_catcher_(nullptr),
      java_vm_(nullptr),
      thread_pool_ref_count_(0u),
      fault_message_(nullptr),
      threads_being_born_(0),
      shutdown_cond_(new ConditionVariable("Runtime shutdown", *Locks::runtime_shutdown_lock_)),
      shutting_down_(false),
      shutting_down_started_(false),
      started_(false),
      finished_starting_(false),
      vfprintf_(nullptr),
      exit_(nullptr),
      abort_(nullptr),
      stats_enabled_(false),
      is_running_on_memory_tool_(kRunningOnMemoryTool),
      instrumentation_(),
      main_thread_group_(nullptr),
      system_thread_group_(nullptr),
      system_class_loader_(nullptr),
      dump_gc_performance_on_shutdown_(false),
      active_transaction_(false),
      verify_(verifier::VerifyMode::kNone),
      target_sdk_version_(static_cast<uint32_t>(SdkVersion::kUnset)),
      compat_framework_(),
      implicit_null_checks_(false),
      implicit_so_checks_(false),
      implicit_suspend_checks_(false),
      no_sig_chain_(false),
      force_native_bridge_(false),
      is_native_bridge_loaded_(false),
      is_native_debuggable_(false),
      async_exceptions_thrown_(false),
      non_standard_exits_enabled_(false),
      runtime_debug_state_(RuntimeDebugState::kNonJavaDebuggable),
      monitor_timeout_enable_(false),
      monitor_timeout_ns_(0),
      zygote_max_failed_boots_(0),
      experimental_flags_(ExperimentalFlags::kNone),
      oat_file_manager_(nullptr),
      is_low_memory_mode_(false),
      madvise_willneed_total_dex_size_(0),
      madvise_willneed_odex_filesize_(0),
      madvise_willneed_art_filesize_(0),
      safe_mode_(false),
      hidden_api_policy_(hiddenapi::EnforcementPolicy::kDisabled),
      core_platform_api_policy_(hiddenapi::EnforcementPolicy::kDisabled),
      test_api_policy_(hiddenapi::EnforcementPolicy::kDisabled),
      dedupe_hidden_api_warnings_(true),
      hidden_api_access_event_log_rate_(0),
      dump_native_stack_on_sig_quit_(true),
      // Initially assume we perceive jank in case the process state is never updated.
      process_state_(kProcessStateJankPerceptible),
      zygote_no_threads_(false),
      verifier_logging_threshold_ms_(100),
      verifier_missing_kthrow_fatal_(false),
      perfetto_hprof_enabled_(false),
      perfetto_javaheapprof_enabled_(false),
      out_of_memory_error_hook_(nullptr) {
  static_assert(Runtime::kCalleeSaveSize ==
                    static_cast<uint32_t>(CalleeSaveType::kLastCalleeSaveType), "Unexpected size");
  CheckConstants();

  std::fill(callee_save_methods_, callee_save_methods_ + arraysize(callee_save_methods_), 0u);
  interpreter::CheckInterpreterAsmConstants();
  callbacks_.reset(new RuntimeCallbacks());
  for (size_t i = 0; i <= static_cast<size_t>(DeoptimizationKind::kLast); ++i) {
    deoptimization_counts_[i] = 0u;
  }
}

Runtime::~Runtime() {
  ScopedTrace trace("Runtime shutdown");
  if (is_native_bridge_loaded_) {
    UnloadNativeBridge();
  }

  Thread* self = Thread::Current();
  const bool attach_shutdown_thread = self == nullptr;
  if (attach_shutdown_thread) {
    // We can only create a peer if the runtime is actually started. This is only not true during
    // some tests. If there is extreme memory pressure the allocation of the thread peer can fail.
    // In this case we will just try again without allocating a peer so that shutdown can continue.
    // Very few things are actually capable of distinguishing between the peer & peerless states so
    // this should be fine.
    // Running callbacks is prone to deadlocks in libjdwp tests that need an event handler lock to
    // process any event. We also need to enter a GCCriticalSection when processing certain events
    // (for ex: removing the last breakpoint). These two restrictions together make the tear down
    // of the jdwp tests deadlock prone if we fail to finish Thread::Attach callback.
    // (TODO:b/251163712) Remove this once we update deopt manager to not use GCCriticalSection.
    bool thread_attached = AttachCurrentThread("Shutdown thread",
                                               /* as_daemon= */ false,
                                               GetSystemThreadGroup(),
                                               /* create_peer= */ IsStarted(),
                                               /* should_run_callbacks= */ false);
    if (UNLIKELY(!thread_attached)) {
      LOG(WARNING) << "Failed to attach shutdown thread. Trying again without a peer.";
      CHECK(AttachCurrentThread("Shutdown thread (no java peer)",
                                /* as_daemon= */   false,
                                /* thread_group=*/ nullptr,
                                /* create_peer= */ false));
    }
    self = Thread::Current();
  } else {
    LOG(WARNING) << "Current thread not detached in Runtime shutdown";
  }

  if (dump_gc_performance_on_shutdown_) {
    heap_->CalculatePreGcWeightedAllocatedBytes();
    uint64_t process_cpu_end_time = ProcessCpuNanoTime();
    ScopedLogSeverity sls(LogSeverity::INFO);
    // This can't be called from the Heap destructor below because it
    // could call RosAlloc::InspectAll() which needs the thread_list
    // to be still alive.
    heap_->DumpGcPerformanceInfo(LOG_STREAM(INFO));

    uint64_t process_cpu_time = process_cpu_end_time - heap_->GetProcessCpuStartTime();
    uint64_t gc_cpu_time = heap_->GetTotalGcCpuTime();
    float ratio = static_cast<float>(gc_cpu_time) / process_cpu_time;
    LOG_STREAM(INFO) << "GC CPU time " << PrettyDuration(gc_cpu_time)
        << " out of process CPU time " << PrettyDuration(process_cpu_time)
        << " (" << ratio << ")"
        << "\n";
    double pre_gc_weighted_allocated_bytes =
        heap_->GetPreGcWeightedAllocatedBytes() / process_cpu_time;
    // Here we don't use process_cpu_time for normalization, because VM shutdown is not a real
    // GC. Both numerator and denominator take into account until the end of the last GC,
    // instead of the whole process life time like pre_gc_weighted_allocated_bytes.
    double post_gc_weighted_allocated_bytes =
        heap_->GetPostGcWeightedAllocatedBytes() /
          (heap_->GetPostGCLastProcessCpuTime() - heap_->GetProcessCpuStartTime());

    LOG_STREAM(INFO) << "Average bytes allocated at GC start, weighted by CPU time between GCs: "
        << static_cast<uint64_t>(pre_gc_weighted_allocated_bytes)
        << " (" <<  PrettySize(pre_gc_weighted_allocated_bytes)  << ")";
    LOG_STREAM(INFO) << "Average bytes allocated at GC end, weighted by CPU time between GCs: "
        << static_cast<uint64_t>(post_gc_weighted_allocated_bytes)
        << " (" <<  PrettySize(post_gc_weighted_allocated_bytes)  << ")"
        << "\n";
  }

  // Wait for the workers of thread pools to be created since there can't be any
  // threads attaching during shutdown.
  WaitForThreadPoolWorkersToStart();
  if (jit_ != nullptr) {
    jit_->WaitForWorkersToBeCreated();
    // Stop the profile saver thread before marking the runtime as shutting down.
    // The saver will try to dump the profiles before being sopped and that
    // requires holding the mutator lock.
    jit_->StopProfileSaver();
    // Delete thread pool before the thread list since we don't want to wait forever on the
    // JIT compiler threads. Also this should be run before marking the runtime
    // as shutting down as some tasks may require mutator access.
    jit_->DeleteThreadPool();
  }
  if (oat_file_manager_ != nullptr) {
    oat_file_manager_->WaitForWorkersToBeCreated();
  }
  // Disable GC before deleting the thread-pool and shutting down runtime as it
  // restricts attaching new threads.
  heap_->DisableGCForShutdown();
  heap_->WaitForWorkersToBeCreated();
  // Make sure to let the GC complete if it is running.
  heap_->WaitForGcToComplete(gc::kGcCauseBackground, self);

  // Shutdown any trace before SetShuttingDown. Trace uses thread pool workers to flush entries
  // and we want to make sure they are fully created. Threads cannot attach while shutting down.
  Trace::Shutdown();

  {
    ScopedTrace trace2("Wait for shutdown cond");
    MutexLock mu(self, *Locks::runtime_shutdown_lock_);
    shutting_down_started_ = true;
    while (threads_being_born_ > 0) {
      shutdown_cond_->Wait(self);
    }
    SetShuttingDown();
  }
  // Shutdown and wait for the daemons.
  CHECK(self != nullptr);
  if (IsFinishedStarting()) {
    ScopedTrace trace2("Waiting for Daemons");
    self->ClearException();
    ScopedObjectAccess soa(self);
    WellKnownClasses::java_lang_Daemons_stop->InvokeStatic<'V'>(self);
  }

  // Report death. Clients may require a working thread, still, so do it before GC completes and
  // all non-daemon threads are done.
  {
    ScopedObjectAccess soa(self);
    callbacks_->NextRuntimePhase(RuntimePhaseCallback::RuntimePhase::kDeath);
  }

  // Delete thread pools before detaching the current thread in case tasks
  // getting deleted need to have access to Thread::Current.
  heap_->DeleteThreadPool();
  if (oat_file_manager_ != nullptr) {
    oat_file_manager_->DeleteThreadPool();
  }
  DeleteThreadPool();
  CHECK(thread_pool_ == nullptr);

  if (attach_shutdown_thread) {
    DetachCurrentThread(/* should_run_callbacks= */ false);
    self = nullptr;
  }

  // Make sure our internal threads are dead before we start tearing down things they're using.
  GetRuntimeCallbacks()->StopDebugger();
  // Deletion ordering is tricky. Null out everything we've deleted.
  delete signal_catcher_;
  signal_catcher_ = nullptr;

  // Shutdown metrics reporting.
  metrics_reporter_.reset();

  // Make sure all other non-daemon threads have terminated, and all daemon threads are suspended.
  // Also wait for daemon threads to quiesce, so that in addition to being "suspended", they
  // no longer access monitor and thread list data structures. We leak user daemon threads
  // themselves, since we have no mechanism for shutting them down.
  {
    ScopedTrace trace2("Delete thread list");
    thread_list_->ShutDown();
  }

  // TODO Maybe do some locking.
  for (auto& agent : agents_) {
    agent->Unload();
  }

  // TODO Maybe do some locking
  for (auto& plugin : plugins_) {
    plugin.Unload();
  }

  // Finally delete the thread list.
  // Thread_list_ can be accessed by "suspended" threads, e.g. in InflateThinLocked.
  // We assume that by this point, we've waited long enough for things to quiesce.
  delete thread_list_;
  thread_list_ = nullptr;

  // Delete the JIT after thread list to ensure that there is no remaining threads which could be
  // accessing the instrumentation when we delete it.
  if (jit_ != nullptr) {
    VLOG(jit) << "Deleting jit";
    jit_.reset(nullptr);
    jit_code_cache_.reset(nullptr);
  }

  // Shutdown the fault manager if it was initialized.
  fault_manager.Shutdown();

  ScopedTrace trace2("Delete state");
  delete monitor_list_;
  monitor_list_ = nullptr;
  delete monitor_pool_;
  monitor_pool_ = nullptr;
  delete class_linker_;
  class_linker_ = nullptr;
  delete small_lrt_allocator_;
  small_lrt_allocator_ = nullptr;
  delete heap_;
  heap_ = nullptr;
  delete intern_table_;
  intern_table_ = nullptr;
  delete oat_file_manager_;
  oat_file_manager_ = nullptr;
  Thread::Shutdown();
  QuasiAtomic::Shutdown();

  // Destroy allocators before shutting down the MemMap because they may use it.
  java_vm_.reset();
  linear_alloc_.reset();
  delete ReleaseStartupLinearAlloc();
  linear_alloc_arena_pool_.reset();
  arena_pool_.reset();
  jit_arena_pool_.reset();
  protected_fault_page_.Reset();
  MemMap::Shutdown();

  // TODO: acquire a static mutex on Runtime to avoid racing.
  CHECK(instance_ == nullptr || instance_ == this);
  instance_ = nullptr;

  // Well-known classes must be deleted or it is impossible to successfully start another Runtime
  // instance. We rely on a small initialization order issue in Runtime::Start() that requires
  // elements of WellKnownClasses to be null, see b/65500943.
  WellKnownClasses::Clear();

#ifdef ART_PAGE_SIZE_AGNOSTIC
  // This is added to ensure no test is able to access gPageSize prior to initializing Runtime just
  // because a Runtime instance was created (and subsequently destroyed) by another test.
  gPageSize.DisallowAccess();
#endif
}

struct AbortState {
  void Dump(std::ostream& os) const {
    if (gAborting > 1) {
      os << "Runtime aborting --- recursively, so no thread-specific detail!\n";
      DumpRecursiveAbort(os);
      return;
    }
    gAborting++;
    os << "Runtime aborting...\n";
    if (Runtime::Current() == nullptr) {
      os << "(Runtime does not yet exist!)\n";
      DumpNativeStack(os, GetTid(), "  native: ", nullptr);
      return;
    }
    Thread* self = Thread::Current();

    // Dump all threads first and then the aborting thread. While this is counter the logical flow,
    // it improves the chance of relevant data surviving in the Android logs.

    DumpAllThreads(os, self);

    if (self == nullptr) {
      os << "(Aborting thread was not attached to runtime!)\n";
      DumpNativeStack(os, GetTid(), "  native: ", nullptr);
    } else {
      os << "Aborting thread:\n";
      if (Locks::mutator_lock_->IsExclusiveHeld(self) || Locks::mutator_lock_->IsSharedHeld(self)) {
        DumpThread(os, self);
      } else {
        if (Locks::mutator_lock_->SharedTryLock(self)) {
          DumpThread(os, self);
          Locks::mutator_lock_->SharedUnlock(self);
        }
      }
    }
  }

  // No thread-safety analysis as we do explicitly test for holding the mutator lock.
  void DumpThread(std::ostream& os, Thread* self) const NO_THREAD_SAFETY_ANALYSIS {
    DCHECK(Locks::mutator_lock_->IsExclusiveHeld(self) || Locks::mutator_lock_->IsSharedHeld(self));
    self->Dump(os);
    if (self->IsExceptionPending()) {
      mirror::Throwable* exception = self->GetException();
      os << "Pending exception " << exception->Dump();
    }
  }

  void DumpAllThreads(std::ostream& os, Thread* self) const {
    Runtime* runtime = Runtime::Current();
    if (runtime != nullptr) {
      ThreadList* thread_list = runtime->GetThreadList();
      if (thread_list != nullptr) {
        // Dump requires ThreadListLock and ThreadSuspendCountLock to not be held (they will be
        // grabbed).
        // TODO(b/134167395): Change Dump to work with the locks held, and have a loop with timeout
        //                    acquiring the locks.
        bool tll_already_held = Locks::thread_list_lock_->IsExclusiveHeld(self);
        bool tscl_already_held = Locks::thread_suspend_count_lock_->IsExclusiveHeld(self);
        if (tll_already_held || tscl_already_held) {
          os << "Skipping all-threads dump as locks are held:"
             << (tll_already_held ? "" : " thread_list_lock")
             << (tscl_already_held ? "" : " thread_suspend_count_lock")
             << "\n";
          return;
        }
        bool ml_already_exlusively_held = Locks::mutator_lock_->IsExclusiveHeld(self);
        if (ml_already_exlusively_held) {
          os << "Skipping all-threads dump as mutator lock is exclusively held.";
          return;
        }
        bool ml_already_held = Locks::mutator_lock_->IsSharedHeld(self);
        if (!ml_already_held) {
          os << "Dumping all threads without mutator lock held\n";
        }
        os << "All threads:\n";
        thread_list->Dump(os);
      }
    }
  }

  // For recursive aborts.
  void DumpRecursiveAbort(std::ostream& os) const NO_THREAD_SAFETY_ANALYSIS {
    // The only thing we'll attempt is dumping the native stack of the current thread. We will only
    // try this if we haven't exceeded an arbitrary amount of recursions, to recover and actually
    // die.
    // Note: as we're using a global counter for the recursive abort detection, there is a potential
    //       race here and it is not OK to just print when the counter is "2" (one from
    //       Runtime::Abort(), one from previous Dump() call). Use a number that seems large enough.
    static constexpr size_t kOnlyPrintWhenRecursionLessThan = 100u;
    if (gAborting < kOnlyPrintWhenRecursionLessThan) {
      gAborting++;
      DumpNativeStack(os, GetTid());
    }
  }
};

void Runtime::SetAbortMessage(const char* msg) {
  auto old_value = gAborting.fetch_add(1);  // set before taking any locks

  // Only set the first abort message.
  if (old_value == 0) {
#ifdef ART_TARGET_ANDROID
    android_set_abort_message(msg);
#endif
    // Set the runtime fault message in case our unexpected-signal code will run.
    Runtime* current = Runtime::Current();
    if (current != nullptr) {
      current->SetFaultMessage(msg);
    }
  }
}

void Runtime::Abort(const char* msg) {
  SetAbortMessage(msg);

  // May be coming from an unattached thread.
  if (Thread::Current() == nullptr) {
    Runtime* current = Runtime::Current();
    if (current != nullptr && current->IsStarted() && !current->IsShuttingDownUnsafe()) {
      // We do not flag this to the unexpected-signal handler so that that may dump the stack.
      abort();
      UNREACHABLE();
    }
  }

  {
    // Ensure that we don't have multiple threads trying to abort at once,
    // which would result in significantly worse diagnostics.
    ScopedThreadStateChange tsc(Thread::Current(), ThreadState::kNativeForAbort);
    Locks::abort_lock_->ExclusiveLock(Thread::Current());
  }

  // Get any pending output out of the way.
  fflush(nullptr);

  // Many people have difficulty distinguish aborts from crashes,
  // so be explicit.
  // Note: use cerr on the host to print log lines immediately, so we get at least some output
  //       in case of recursive aborts. We lose annotation with the source file and line number
  //       here, which is a minor issue. The same is significantly more complicated on device,
  //       which is why we ignore the issue there.
  AbortState state;
  if (kIsTargetBuild) {
    LOG(FATAL_WITHOUT_ABORT) << Dumpable<AbortState>(state);
  } else {
    std::cerr << Dumpable<AbortState>(state);
  }

  // Sometimes we dump long messages, and the Android abort message only retains the first line.
  // In those cases, just log the message again, to avoid logcat limits.
  if (msg != nullptr && strchr(msg, '\n') != nullptr) {
    LOG(FATAL_WITHOUT_ABORT) << msg;
  }

  FlagRuntimeAbort();

  // Call the abort hook if we have one.
  if (Runtime::Current() != nullptr && Runtime::Current()->abort_ != nullptr) {
    LOG(FATAL_WITHOUT_ABORT) << "Calling abort hook...";
    Runtime::Current()->abort_();
    // notreached
    LOG(FATAL_WITHOUT_ABORT) << "Unexpectedly returned from abort hook!";
  }

  abort();
  // notreached
}

/**
 * Update entrypoints of methods before the first fork. This
 * helps sharing pages where ArtMethods are allocated between the zygote and
 * forked apps.
 */
class UpdateMethodsPreFirstForkVisitor : public ClassVisitor {
 public:
  explicit UpdateMethodsPreFirstForkVisitor(ClassLinker* class_linker)
      : class_linker_(class_linker),
        can_use_nterp_(interpreter::CanRuntimeUseNterp()) {}

  bool operator()(ObjPtr<mirror::Class> klass) override REQUIRES_SHARED(Locks::mutator_lock_) {
    bool is_initialized = klass->IsVisiblyInitialized();
    for (ArtMethod& method : klass->GetDeclaredMethods(kRuntimePointerSize)) {
      if (!is_initialized && method.NeedsClinitCheckBeforeCall() && can_use_nterp_) {
        const void* existing = method.GetEntryPointFromQuickCompiledCode();
        if (class_linker_->IsQuickResolutionStub(existing) && CanMethodUseNterp(&method)) {
          method.SetEntryPointFromQuickCompiledCode(interpreter::GetNterpWithClinitEntryPoint());
        }
      }
    }
    return true;
  }

 private:
  ClassLinker* const class_linker_;
  const bool can_use_nterp_;

  DISALLOW_COPY_AND_ASSIGN(UpdateMethodsPreFirstForkVisitor);
};

// Wait until the kernel thinks we are single-threaded again.
static void WaitUntilSingleThreaded() {
#if defined(__linux__)
  // Read num_threads field from /proc/self/stat, avoiding higher-level IO libraries that may
  // break atomicity of the read.
  static constexpr size_t kNumTries = 2000;
  static constexpr size_t kNumThreadsIndex = 20;
  static constexpr size_t BUF_SIZE = 500;
  static constexpr size_t BUF_PRINT_SIZE = 150;  // Only log this much on failure to limit length.
  static_assert(BUF_SIZE > BUF_PRINT_SIZE);
  char buf[BUF_SIZE];
  size_t bytes_read = 0;
  uint64_t millis = 0;
  for (size_t tries = 0; tries < kNumTries; ++tries) {
    bytes_read = GetOsThreadStat(getpid(), buf, BUF_SIZE);
    CHECK_NE(bytes_read, 0u);
    size_t pos = 0;
    while (pos < bytes_read && buf[pos++] != ')') {}
    ++pos;
    // We're now positioned at the beginning of the third field. Don't count blanks embedded in
    // second (command) field.
    size_t blanks_seen = 2;
    while (pos < bytes_read && blanks_seen < kNumThreadsIndex - 1) {
      if (buf[pos++] == ' ') {
        ++blanks_seen;
      }
    }
    CHECK(pos < bytes_read - 2);
    // pos is first character of num_threads field.
    CHECK_EQ(buf[pos + 1], ' ');  // We never have more than single-digit threads here.
    if (buf[pos] == '1') {
      return;  //  num_threads == 1; success.
    }
    if (millis == 0) {
      millis = MilliTime();
    }
    usleep(tries < 10 ? 1000 : 2000);
  }
  buf[std::min(BUF_PRINT_SIZE, bytes_read)] = '\0';  // Truncate buf before printing.
  LOG(ERROR) << "Not single threaded: bytes_read = " << bytes_read << " stat contents = \"" << buf
             << "...\"";
  LOG(ERROR) << "Other threads' abbreviated stats: " << GetOtherThreadOsStats();
  bytes_read = GetOsThreadStat(getpid(), buf, BUF_PRINT_SIZE);
  CHECK_NE(bytes_read, 0u);
  LOG(ERROR) << "After re-read: bytes_read = " << bytes_read << " stat contents = \"" << buf
             << "...\"";
  LOG(FATAL) << "Failed to reach single-threaded state: wait_time = " << MilliTime() - millis;
#else  // Not Linux; shouldn't matter, but this has a high probability of working slowly.
  usleep(20'000);
#endif
}

void Runtime::PreZygoteFork() {
  if (GetJit() != nullptr) {
    GetJit()->PreZygoteFork();
  }
  // All other threads have already been joined, but they may not have finished
  // removing themselves from the thread list. Wait until the other threads have completely
  // finished, and are no longer in the thread list.
  // TODO: Since the threads Unregister() themselves before exiting, the first wait should be
  // unnecessary. But since we're reading from a /proc entry that's concurrently changing, for
  // now we play this as safe as possible.
  ThreadList* tl = GetThreadList();
  {
    Thread* self = Thread::Current();
    MutexLock mu(self, *Locks::thread_list_lock_);
    tl->WaitForUnregisterToComplete(self);
    if (kIsDebugBuild) {
      auto list = tl->GetList();
      if (list.size() != 1) {
        for (Thread* t : list) {
          std::string name;
          t->GetThreadName(name);
          LOG(ERROR) << "Remaining pre-fork thread: " << name;
        }
      }
    }
    CHECK_EQ(tl->Size(), 1u);
    // And then wait until the kernel thinks the threads are gone.
    WaitUntilSingleThreaded();
  }

  if (!heap_->HasZygoteSpace()) {
    Thread* self = Thread::Current();
    // This is the first fork. Update ArtMethods in the boot classpath now to
    // avoid having forked apps dirty the memory.

    // Ensure we call FixupStaticTrampolines on all methods that are
    // initialized.
    class_linker_->MakeInitializedClassesVisiblyInitialized(self, /*wait=*/ true);

    ScopedObjectAccess soa(self);
    UpdateMethodsPreFirstForkVisitor visitor(class_linker_);
    class_linker_->VisitClasses(&visitor);
  }
  heap_->PreZygoteFork();
  PreZygoteForkNativeBridge();
}

void Runtime::PostZygoteFork() {
  jit::Jit* jit = GetJit();
  if (jit != nullptr) {
    jit->PostZygoteFork();
    // Ensure that the threads in the JIT pool have been created with the right
    // priority.
    if (kIsDebugBuild && jit->GetThreadPool() != nullptr) {
      jit->GetThreadPool()->CheckPthreadPriority(
          IsZygote() ? jit->GetZygoteThreadPoolPthreadPriority()
                     : jit->GetThreadPoolPthreadPriority());
    }
  }
  // Reset all stats.
  ResetStats(0xFFFFFFFF);
}

void Runtime::CallExitHook(jint status) {
  if (exit_ != nullptr) {
    ScopedThreadStateChange tsc(Thread::Current(), ThreadState::kNative);
    exit_(status);
    LOG(WARNING) << "Exit hook returned instead of exiting!";
  }
}

void Runtime::SweepSystemWeaks(IsMarkedVisitor* visitor) {
  // Userfaultfd compaction updates weak intern-table page-by-page via
  // LinearAlloc.
  if (!GetHeap()->IsPerformingUffdCompaction()) {
    GetInternTable()->SweepInternTableWeaks(visitor);
  }
  GetMonitorList()->SweepMonitorList(visitor);
  GetJavaVM()->SweepJniWeakGlobals(visitor);
  GetHeap()->SweepAllocationRecords(visitor);
  // Sweep JIT tables only if the GC is moving as in other cases the entries are
  // not updated.
  if (GetJit() != nullptr && GetHeap()->IsMovingGc()) {
    // Visit JIT literal tables. Objects in these tables are classes and strings
    // and only classes can be affected by class unloading. The strings always
    // stay alive as they are strongly interned.
    // TODO: Move this closer to CleanupClassLoaders, to avoid blocking weak accesses
    // from mutators. See b/32167580.
    GetJit()->GetCodeCache()->SweepRootTables(visitor);
  }

  // All other generic system-weak holders.
  for (gc::AbstractSystemWeakHolder* holder : system_weak_holders_) {
    holder->Sweep(visitor);
  }
}

bool Runtime::ParseOptions(const RuntimeOptions& raw_options,
                           bool ignore_unrecognized,
                           RuntimeArgumentMap* runtime_options) {
  Locks::Init();
  fprintf(stderr, "[RT-DBG] Locks::Init done, calling InitLogging\n");
  InitLogging(/* argv= */ nullptr, Abort);  // Calls Locks::Init() as a side effect.
  fprintf(stderr, "[RT-DBG] InitLogging done, calling ParsedOptions::Parse\n");
  bool parsed = ParsedOptions::Parse(raw_options, ignore_unrecognized, runtime_options);
  if (!parsed) {
    LOG(ERROR) << "Failed to parse options";
    return false;
  }
  return true;
}

// Callback to check whether it is safe to call Abort (e.g., to use a call to
// LOG(FATAL)).  It is only safe to call Abort if the runtime has been created,
// properly initialized, and has not shut down.
static bool IsSafeToCallAbort() NO_THREAD_SAFETY_ANALYSIS {
  Runtime* runtime = Runtime::Current();
  return runtime != nullptr && runtime->IsStarted() && !runtime->IsShuttingDownLocked();
}

void Runtime::AddGeneratedCodeRange(const void* start, size_t size) {
  if (HandlesSignalsInCompiledCode()) {
    fault_manager.AddGeneratedCodeRange(start, size);
  }
}

void Runtime::RemoveGeneratedCodeRange(const void* start, size_t size) {
  if (HandlesSignalsInCompiledCode()) {
    fault_manager.RemoveGeneratedCodeRange(start, size);
  }
}

bool Runtime::Create(RuntimeArgumentMap&& runtime_options) {
  // TODO: acquire a static mutex on Runtime to avoid racing.
  if (Runtime::instance_ != nullptr) {
    return false;
  }
  instance_ = new Runtime;
  Locks::SetClientCallback(IsSafeToCallAbort);
  if (!instance_->Init(std::move(runtime_options))) {
    // TODO: Currently deleting the instance will abort the runtime on destruction. Now This will
    // leak memory, instead. Fix the destructor. b/19100793.
    // delete instance_;
    instance_ = nullptr;
    return false;
  }
  return true;
}

bool Runtime::Create(const RuntimeOptions& raw_options, bool ignore_unrecognized) {
  RuntimeArgumentMap runtime_options;
  return ParseOptions(raw_options, ignore_unrecognized, &runtime_options) &&
      Create(std::move(runtime_options));
}

static jobject CreateSystemClassLoader(Runtime* runtime) {
  if (runtime->IsAotCompiler() && !runtime->GetCompilerCallbacks()->IsBootImage()) {
    return nullptr;
  }

  ScopedObjectAccess soa(Thread::Current());
  ClassLinker* cl = runtime->GetClassLinker();
  auto pointer_size = cl->GetImagePointerSize();

  ObjPtr<mirror::Class> class_loader_class = GetClassRoot<mirror::ClassLoader>(cl);
  DCHECK(class_loader_class->IsInitialized());  // Class roots have been initialized.

  ArtMethod* getSystemClassLoader = class_loader_class->FindClassMethod(
      "getSystemClassLoader", "()Ljava/lang/ClassLoader;", pointer_size);
  CHECK(getSystemClassLoader != nullptr);
  CHECK(getSystemClassLoader->IsStatic());

  ObjPtr<mirror::Object> system_class_loader = getSystemClassLoader->InvokeStatic<'L'>(soa.Self());
  CHECK(system_class_loader != nullptr)
      << (soa.Self()->IsExceptionPending() ? soa.Self()->GetException()->Dump() : "<null>");

  ScopedAssertNoThreadSuspension sants(__FUNCTION__);
  jobject g_system_class_loader =
      runtime->GetJavaVM()->AddGlobalRef(soa.Self(), system_class_loader);
  // Standalone Westlake builds keep the Java-level system/context class loader,
  // but skipping the native class-loader override avoids SIGBUS in LookupClass
  // when native class resolution decodes the override during app class loading.

  ObjPtr<mirror::Class> thread_class = WellKnownClasses::java_lang_Thread.Get();
  ArtField* contextClassLoader =
      thread_class->FindDeclaredInstanceField("contextClassLoader", "Ljava/lang/ClassLoader;");
  CHECK(contextClassLoader != nullptr);

  // We can't run in a transaction yet.
  contextClassLoader->SetObject<false>(soa.Self()->GetPeer(), system_class_loader);

  return g_system_class_loader;
}

std::string Runtime::GetCompilerExecutable() const {
  if (!compiler_executable_.empty()) {
    return compiler_executable_;
  }
  std::string compiler_executable = GetArtBinDir() + "/dex2oat";
  if (kIsDebugBuild) {
    compiler_executable += 'd';
  }
  if (kIsTargetBuild) {
    compiler_executable += Is64BitInstructionSet(kRuntimeISA) ? "64" : "32";
  }
  return compiler_executable;
}

void Runtime::RunRootClinits(Thread* self) {
  // In dex2oat, Runtime::Start() is never called, so:
  // 1. RegisterRuntimeNativeMethods is never invoked (null JNI entry points)
  // 2. started_ is never set to true (interpreter uses unstarted runtime for native calls)
  // We fix both here before running root clinits.
  static bool natives_registered = false;
  if (!natives_registered) {
    natives_registered = true;
    fprintf(stderr, "[RT] RunRootClinits: calling RegisterRuntimeNativeMethods\n"); fflush(stderr);
    RegisterRuntimeNativeMethods(self->GetJniEnv());
    fprintf(stderr, "[RT] RunRootClinits: RegisterRuntimeNativeMethods done\n"); fflush(stderr);
    if (self->IsExceptionPending()) self->ClearException();

    auto patch_root_clinit_native =
        [&](ArtMethod* method, const void* fn, uint32_t extra_flags, const char* label) {
          if (method == nullptr) {
            return;
          }
          method->SetAccessFlags(method->GetAccessFlags() | kAccNative | extra_flags);
          method->SetCodeItem(nullptr, false);
          GetInstrumentation()->InitializeMethodsCode(method, /*aot_code=*/nullptr);
          method->SetEntryPointFromJni(fn);
          if (label != nullptr) {
            fprintf(stderr, "[RT] RunRootClinits: %s -> native quick=%p jni=%p\n",
                    label,
                    method->GetEntryPointFromQuickCompiledCode(),
                    method->GetEntryPointFromJni());
            fflush(stderr);
          }
        };

    {
      ScopedObjectAccess soa(self);
      ObjPtr<mirror::Class> unsafe_class =
          class_linker_->FindSystemClass(self, "Ljdk/internal/misc/Unsafe;");
      if (unsafe_class != nullptr) {
        ArtMethod* object_field_offset = unsafe_class->FindClassMethod(
            "objectFieldOffset", "(Ljava/lang/Class;Ljava/lang/String;)J",
            class_linker_->GetImagePointerSize());
        extern jlong Unsafe_objectFieldOffsetClassString(JNIEnv*, jobject, jclass, jstring);
        patch_root_clinit_native(object_field_offset,
                                 reinterpret_cast<const void*>(&Unsafe_objectFieldOffsetClassString),
                                 kAccFastNative,
                                 "Unsafe.objectFieldOffset(Class,String)");

        ArtMethod* object_field_offset_field = unsafe_class->FindClassMethod(
            "objectFieldOffset", "(Ljava/lang/reflect/Field;)J",
            class_linker_->GetImagePointerSize());
        ArtMethod* static_field_offset = unsafe_class->FindClassMethod(
            "staticFieldOffset", "(Ljava/lang/reflect/Field;)J",
            class_linker_->GetImagePointerSize());
        ArtMethod* static_field_base = unsafe_class->FindClassMethod(
            "staticFieldBase", "(Ljava/lang/reflect/Field;)Ljava/lang/Object;",
            class_linker_->GetImagePointerSize());
        extern jlong Unsafe_jdkObjectFieldOffset(JNIEnv*, jobject, jobject);
        extern jlong Unsafe_jdkStaticFieldOffset(JNIEnv*, jobject, jobject);
        extern jobject Unsafe_jdkStaticFieldBase(JNIEnv*, jobject, jobject);
        patch_root_clinit_native(object_field_offset_field,
                                 reinterpret_cast<const void*>(&Unsafe_jdkObjectFieldOffset),
                                 kAccFastNative,
                                 "Unsafe.objectFieldOffset(Field)");
        patch_root_clinit_native(static_field_offset,
                                 reinterpret_cast<const void*>(&Unsafe_jdkStaticFieldOffset),
                                 kAccFastNative,
                                 "Unsafe.staticFieldOffset(Field)");
        patch_root_clinit_native(static_field_base,
                                 reinterpret_cast<const void*>(&Unsafe_jdkStaticFieldBase),
                                 kAccFastNative,
                                 "Unsafe.staticFieldBase(Field)");
      }
      if (self->IsExceptionPending()) self->ClearException();

      ObjPtr<mirror::Class> thread_local_class =
          class_linker_->FindSystemClass(self, "Ljava/lang/ThreadLocal;");
      if (thread_local_class != nullptr) {
        ArtMethod* next_hash_code = thread_local_class->FindClassMethod(
            "nextHashCode", "()I", class_linker_->GetImagePointerSize());
        patch_root_clinit_native(next_hash_code,
                                 reinterpret_cast<const void*>(&Westlake_ThreadLocal_nextHashCode),
                                 kAccFastNative,
                                 "ThreadLocal.nextHashCode()");
      }
      if (self->IsExceptionPending()) self->ClearException();

      ObjPtr<mirror::Class> environment_class =
          class_linker_->FindSystemClass(self, "Landroid/os/Environment;");
      if (environment_class != nullptr) {
        ArtMethod* get_directory = environment_class->FindClassMethod(
            "getDirectory", "(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;",
            class_linker_->GetImagePointerSize());
        ArtMethod* get_directory_path = environment_class->FindClassMethod(
            "getDirectoryPath", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;",
            class_linker_->GetImagePointerSize());
        ArtMethod* get_user_config_directory = environment_class->FindClassMethod(
            "getUserConfigDirectory", "(I)Ljava/io/File;",
            class_linker_->GetImagePointerSize());
        patch_root_clinit_native(get_directory,
                                 reinterpret_cast<const void*>(&Westlake_Environment_getDirectory),
                                 0,
                                 "Environment.getDirectory(String,String)");
        patch_root_clinit_native(
            get_directory_path,
            reinterpret_cast<const void*>(&Westlake_Environment_getDirectoryPath),
            0,
            "Environment.getDirectoryPath(String,String)");
        patch_root_clinit_native(
            get_user_config_directory,
            reinterpret_cast<const void*>(&Westlake_Environment_getUserConfigDirectory),
            0,
            "Environment.getUserConfigDirectory(int)");
      }
      if (self->IsExceptionPending()) self->ClearException();

      ObjPtr<mirror::Class> build_class =
          class_linker_->FindSystemClass(self, "Landroid/os/Build;");
      if (build_class != nullptr) {
        ArtMethod* get_string_list = build_class->FindClassMethod(
            "getStringList", "(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;",
            class_linker_->GetImagePointerSize());
        ArtMethod* join_list_or_else = build_class->FindClassMethod(
            "joinListOrElse", "(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;",
            class_linker_->GetImagePointerSize());
        patch_root_clinit_native(get_string_list,
                                 reinterpret_cast<const void*>(&Westlake_Build_getStringList),
                                 0,
                                 "Build.getStringList(String,String)");
        patch_root_clinit_native(join_list_or_else,
                                 reinterpret_cast<const void*>(&Westlake_Build_joinListOrElse),
                                 0,
                                 "Build.joinListOrElse(List,String)");
      }
      if (self->IsExceptionPending()) self->ClearException();

      ObjPtr<mirror::Class> file_class =
          class_linker_->FindSystemClass(self, "Ljava/io/File;");
      if (file_class != nullptr) {
        ArtMethod* file_string_ctor = file_class->FindConstructor(
            "(Ljava/lang/String;)V", class_linker_->GetImagePointerSize());
        ArtMethod* file_string_string_ctor = file_class->FindConstructor(
            "(Ljava/lang/String;Ljava/lang/String;)V", class_linker_->GetImagePointerSize());
        ArtMethod* file_file_string_ctor = file_class->FindConstructor(
            "(Ljava/io/File;Ljava/lang/String;)V", class_linker_->GetImagePointerSize());
        patch_root_clinit_native(file_string_ctor,
                                 reinterpret_cast<const void*>(&Westlake_File_initString),
                                 0,
                                 "File.<init>(String)");
        patch_root_clinit_native(file_string_string_ctor,
                                 reinterpret_cast<const void*>(&Westlake_File_initStringString),
                                 0,
                                 "File.<init>(String,String)");
        patch_root_clinit_native(file_file_string_ctor,
                                 reinterpret_cast<const void*>(&Westlake_File_initFileString),
                                 0,
                                 "File.<init>(File,String)");
      }
      if (self->IsExceptionPending()) self->ClearException();

      ObjPtr<mirror::Class> atomic_integer_class =
          class_linker_->FindSystemClass(self, "Ljava/util/concurrent/atomic/AtomicInteger;");
      if (atomic_integer_class != nullptr) {
        ArtMethod* get_and_add = atomic_integer_class->FindClassMethod(
            "getAndAdd", "(I)I", class_linker_->GetImagePointerSize());
        patch_root_clinit_native(get_and_add,
                                 reinterpret_cast<const void*>(&Westlake_AtomicInteger_getAndAdd),
                                 0,
                                 "AtomicInteger.getAndAdd(int)");
      }
      if (self->IsExceptionPending()) self->ClearException();
    }

    // Initialize UnstartedRuntime handler tables BEFORE setting started_=true.
    // This ensures the handler tables are populated when PerformCall routes
    // through UnstartedRuntime during class initialization.
    // Initialize/Reinitialize UnstartedRuntime for AOT class init
    if (IsAotCompiler()) {
      fprintf(stderr, "[RT] RunRootClinits: reinitializing UnstartedRuntime\n"); fflush(stderr);
      interpreter::UnstartedRuntime::Reinitialize();
    }

    // Now set started_ so normal JNI dispatch works for registered natives.
    // The PerformCall IsAotCompiler() check still routes through UnstartedRuntime.
    if (!started_) {
      fprintf(stderr, "[RT] RunRootClinits: setting started_=true\n"); fflush(stderr);
      started_ = true;
    }

    // Call WellKnownClasses::LateInit to populate boxing cache field pointers
    // (java_lang_Byte_ByteCache_cache, etc.) needed by image_writer.
    fprintf(stderr, "[RT] RunRootClinits: calling WellKnownClasses::LateInit\n"); fflush(stderr);
    WellKnownClasses::LateInit(self->GetJniEnv());
    fprintf(stderr, "[RT] RunRootClinits: WellKnownClasses::LateInit done\n"); fflush(stderr);
    if (self->IsExceptionPending()) self->ClearException();
  }
  class_linker_->RunRootClinits(self);

  // Skip manual System.out/err — PrintStream init triggers SIGBUS in current build
  // TODO: fix after boot image or assembly stub issues resolved
  if (false) {
    JNIEnv* env = self->GetJniEnv();
    jclass system_class = env->FindClass("java/lang/System");
    if (system_class != nullptr) {
      jfieldID err_field = env->GetStaticFieldID(system_class, "err", "Ljava/io/PrintStream;");
      if (err_field != nullptr && env->GetStaticObjectField(system_class, err_field) == nullptr) {
        // System.err is null — create a PrintStream for stderr (fd 2)
        jclass fd_class = env->FindClass("java/io/FileDescriptor");
        jclass fos_class = env->FindClass("java/io/FileOutputStream");
        jclass ps_class = env->FindClass("java/io/PrintStream");
        if (fd_class && fos_class && ps_class) {
          jfieldID fd_err = env->GetStaticFieldID(fd_class, "err", "Ljava/io/FileDescriptor;");
          jobject fd_err_obj = fd_err ? env->GetStaticObjectField(fd_class, fd_err) : nullptr;
          if (fd_err_obj) {
            jmethodID fos_init = env->GetMethodID(fos_class, "<init>", "(Ljava/io/FileDescriptor;)V");
            jmethodID ps_init = env->GetMethodID(ps_class, "<init>", "(Ljava/io/OutputStream;Z)V");
            if (fos_init && ps_init) {
              jobject fos = env->NewObject(fos_class, fos_init, fd_err_obj);
              if (fos) {
                jobject ps = env->NewObject(ps_class, ps_init, fos, JNI_TRUE);
                if (ps) {
                  env->SetStaticObjectField(system_class, err_field, ps);
                  // Also set System.out to the same stream for now
                  jfieldID out_field = env->GetStaticFieldID(system_class, "out", "Ljava/io/PrintStream;");
                  if (out_field) env->SetStaticObjectField(system_class, out_field, ps);
                  fprintf(stderr, "[RT] Manually set System.out/err to PrintStream(stderr)\n");
                }
              }
            }
          }
        }
      }
    }
    if (self->IsExceptionPending()) self->ClearException();
    fflush(stderr);
  }

  GcRoot<mirror::Throwable>* exceptions[] = {
      &pre_allocated_OutOfMemoryError_when_throwing_exception_,
      // &pre_allocated_OutOfMemoryError_when_throwing_oome_,             // Same class as above.
      // &pre_allocated_OutOfMemoryError_when_handling_stack_overflow_,   // Same class as above.
      &pre_allocated_NoClassDefFoundError_,
  };
  for (GcRoot<mirror::Throwable>* exception : exceptions) {
    StackHandleScope<1> hs(self);
    Handle<mirror::Class> klass = hs.NewHandle<mirror::Class>(exception->Read()->GetClass());
    class_linker_->EnsureInitialized(self, klass, true, true);
    self->AssertNoPendingException();
  }
}

bool Runtime::Start() {
  fprintf(stderr, "[RT] Runtime::Start() ENTERED\n"); fflush(stderr);

  // Prepare a standalone app class loader from -classpath dex files without
  // appending those dex files to the boot class path.
  std::vector<const DexFile*> standalone_class_path;
  if (!class_path_string_.empty()) {
    std::vector<std::string> cp_entries;
    Split(class_path_string_, ':', &cp_entries);
    static constexpr bool kVerifyChecksum = true;
    const bool verify = IsVerificationEnabled();
    g_standalone_class_path_dex_files.clear();
    for (const std::string& entry : cp_entries) {
      if (entry.empty()) {
        continue;
      }
      std::vector<std::unique_ptr<const DexFile>> dex_files;
      std::string error_msg;
      ArtDexFileLoader dex_file_loader(entry.c_str());
      if (!dex_file_loader.Open(verify, kVerifyChecksum, &error_msg, &dex_files)) {
        fprintf(stderr, "[RT] Deferred BCP append failed: %s (%s)\n",
                entry.c_str(),
                error_msg.c_str());
        fflush(stderr);
        continue;
      }
      fprintf(stderr, "[RT] Standalone class path open: %s (%zu dex)\n",
              entry.c_str(),
              dex_files.size());
      fflush(stderr);
      for (std::unique_ptr<const DexFile>& dex_file : dex_files) {
        standalone_class_path.push_back(dex_file.get());
        g_standalone_class_path_dex_files.push_back(std::move(dex_file));
      }
    }
    fprintf(stderr, "[RT] Standalone class path ready: %zu dex files\n",
            standalone_class_path.size());
    fflush(stderr);
  }
  VLOG(startup) << "Runtime::Start entering";

  // PATCH: Allow no_sig_chain in WESTLAKE_INPROCESS mode
  if (getenv("WESTLAKE_INPROCESS") == nullptr) {
    CHECK(!no_sig_chain_) << "A started runtime should have sig chain enabled";
  }

  // If a debug host build, disable ptrace restriction for debugging and test timeout thread dump.
  // Only 64-bit as prctl() may fail in 32 bit userspace on a 64-bit kernel.
#if defined(__linux__) && !defined(ART_TARGET_ANDROID) && defined(__x86_64__)
  if (kIsDebugBuild) {
    if (prctl(PR_SET_PTRACER, PR_SET_PTRACER_ANY) != 0) {
      PLOG(WARNING) << "Failed setting PR_SET_PTRACER to PR_SET_PTRACER_ANY";
    }
  }
#endif

  // Restore main thread state to kNative as expected by native code.
  Thread* self = Thread::Current();

  started_ = true;

  // Before running any clinit, set up the native methods provided by the runtime itself.
  RegisterRuntimeNativeMethods(self->GetJniEnv());
  fprintf(stderr, "[RT] RegisterRuntimeNativeMethods done\n"); fflush(stderr);

  auto patch_runtime_native_method =
      [&](ArtMethod* method, const void* fn, uint32_t extra_flags, const char* label) {
        if (method == nullptr) {
          return;
        }
        method->SetAccessFlags(method->GetAccessFlags() | kAccNative | extra_flags);
        method->SetCodeItem(nullptr, false);
        Runtime::Current()->GetInstrumentation()->InitializeMethodsCode(
            method, /*aot_code=*/nullptr);
        method->SetEntryPointFromJni(fn);
        if (label != nullptr) {
          fprintf(stderr, "[RT] %s -> native quick=%p jni=%p\n",
                  label,
                  method->GetEntryPointFromQuickCompiledCode(),
                  method->GetEntryPointFromJni());
          fflush(stderr);
        }
      };

  // PATCH: Route ThreadLocal.nextHashCode directly to a native counter.
  // The dalvikvm-side ArtMethod rewrite is not surviving the full runtime start
  // path on the accepted phone build, which sends control back into
  // AtomicInteger/Unsafe before Application.onCreate().
  {
    ScopedObjectAccess soa(self);
    ObjPtr<mirror::Class> thread_local_class =
        class_linker_->FindSystemClass(self, "Ljava/lang/ThreadLocal;");
    if (thread_local_class != nullptr) {
      ArtMethod* next_hash_code = thread_local_class->FindClassMethod(
          "nextHashCode", "()I", class_linker_->GetImagePointerSize());
      patch_runtime_native_method(next_hash_code,
                                  reinterpret_cast<const void*>(&Westlake_ThreadLocal_nextHashCode),
                                  kAccFastNative,
                                  "ThreadLocal.nextHashCode()");
    }
    if (self->IsExceptionPending()) self->ClearException();
  }

  // PATCH: Avoid Environment.<clinit> falling into File(null) in the
  // imageless DAYU600 runtime. This also sidesteps invoke-static object
  // argument corruption seen on getDirectory(String, String).
  {
    ScopedObjectAccess soa(self);
    ObjPtr<mirror::Class> environment_class =
        class_linker_->FindSystemClass(self, "Landroid/os/Environment;");
    if (environment_class != nullptr) {
      struct NativePatch {
        const char* name;
        const char* sig;
        const void* fn;
        const char* label;
      };
      const NativePatch methods[] = {
          {"getDirectory", "(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;",
           reinterpret_cast<const void*>(&Westlake_Environment_getDirectory),
           "Environment.getDirectory(String,String)"},
          {"getDirectoryPath", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;",
           reinterpret_cast<const void*>(&Westlake_Environment_getDirectoryPath),
           "Environment.getDirectoryPath(String,String)"},
          {"getUserConfigDirectory", "(I)Ljava/io/File;",
           reinterpret_cast<const void*>(&Westlake_Environment_getUserConfigDirectory),
           "Environment.getUserConfigDirectory(int)"},
      };
      for (const NativePatch& patch : methods) {
        ArtMethod* method = environment_class->FindClassMethod(
            patch.name, patch.sig, class_linker_->GetImagePointerSize());
        patch_runtime_native_method(method, patch.fn, 0, patch.label);
      }
    }
    if (self->IsExceptionPending()) self->ClearException();
  }

  // PATCH: Build.<clinit> uses stream collectors to stringify telephony
  // baseband properties. The standalone bridge still has stream/EnumMap
  // rough edges, so keep this helper native and deterministic.
  {
    ScopedObjectAccess soa(self);
    ObjPtr<mirror::Class> build_class =
        class_linker_->FindSystemClass(self, "Landroid/os/Build;");
    if (build_class != nullptr) {
      ArtMethod* get_string_list = build_class->FindClassMethod(
          "getStringList", "(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;",
          class_linker_->GetImagePointerSize());
      ArtMethod* join_list_or_else = build_class->FindClassMethod(
          "joinListOrElse", "(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;",
          class_linker_->GetImagePointerSize());
      patch_runtime_native_method(get_string_list,
                                  reinterpret_cast<const void*>(&Westlake_Build_getStringList),
                                  0,
                                  "Build.getStringList(String,String)");
      patch_runtime_native_method(join_list_or_else,
                                  reinterpret_cast<const void*>(&Westlake_Build_joinListOrElse),
                                  0,
                                  "Build.joinListOrElse(List,String)");
    }
    if (self->IsExceptionPending()) self->ClearException();
  }

  // PATCH: The OHOS JNI/interpreter bridge can drop object arguments when
  // framework code calls File(String). Set File fields natively instead of
  // running the Java constructor body.
  {
    ScopedObjectAccess soa(self);
    ObjPtr<mirror::Class> file_class =
        class_linker_->FindSystemClass(self, "Ljava/io/File;");
    if (file_class != nullptr) {
      ArtMethod* file_string_ctor = file_class->FindConstructor(
          "(Ljava/lang/String;)V", class_linker_->GetImagePointerSize());
      ArtMethod* file_string_string_ctor = file_class->FindConstructor(
          "(Ljava/lang/String;Ljava/lang/String;)V", class_linker_->GetImagePointerSize());
      ArtMethod* file_file_string_ctor = file_class->FindConstructor(
          "(Ljava/io/File;Ljava/lang/String;)V", class_linker_->GetImagePointerSize());
      patch_runtime_native_method(file_string_ctor,
                                  reinterpret_cast<const void*>(&Westlake_File_initString),
                                  0,
                                  "File.<init>(String)");
      patch_runtime_native_method(file_string_string_ctor,
                                  reinterpret_cast<const void*>(&Westlake_File_initStringString),
                                  0,
                                  "File.<init>(String,String)");
      patch_runtime_native_method(file_file_string_ctor,
                                  reinterpret_cast<const void*>(&Westlake_File_initFileString),
                                  0,
                                  "File.<init>(File,String)");
    }
    if (self->IsExceptionPending()) self->ClearException();
  }

  // PATCH: Early ClassValue/Enum initialization can hit AtomicInteger's
  // VarHandle before VarHandle support is ready in this port.
  {
    ScopedObjectAccess soa(self);
    ObjPtr<mirror::Class> atomic_integer_class =
        class_linker_->FindSystemClass(self, "Ljava/util/concurrent/atomic/AtomicInteger;");
    if (atomic_integer_class != nullptr) {
      ArtMethod* get_and_add = atomic_integer_class->FindClassMethod(
          "getAndAdd", "(I)I", class_linker_->GetImagePointerSize());
      patch_runtime_native_method(get_and_add,
                                  reinterpret_cast<const void*>(&Westlake_AtomicInteger_getAndAdd),
                                  0,
                                  "AtomicInteger.getAndAdd(int)");
    }
    if (self->IsExceptionPending()) self->ClearException();
  }

  // PATCH: Replace Unsafe.objectFieldOffset(Class, String) Java method with native IMMEDIATELY
  // after native registration. Must be before ANY class init that uses ConcurrentHashMap.
  {
    ScopedObjectAccess soa(self);
    ObjPtr<mirror::Class> unsafe_class = class_linker_->FindSystemClass(self, "Ljdk/internal/misc/Unsafe;");
    if (unsafe_class != nullptr) {
      ArtMethod* java_method = unsafe_class->FindClassMethod(
          "objectFieldOffset", "(Ljava/lang/Class;Ljava/lang/String;)J",
          class_linker_->GetImagePointerSize());
      if (java_method != nullptr && !java_method->IsNative()) {
        // Directly set native entry point (bypass RegisterNatives which checks DEX flags)
        extern jlong Unsafe_objectFieldOffsetClassString(JNIEnv*, jobject, jclass, jstring);
        patch_runtime_native_method(java_method,
                                    reinterpret_cast<const void*>(&Unsafe_objectFieldOffsetClassString),
                                    kAccFastNative,
                                    "Unsafe.objectFieldOffset(Class,String)");
      }

      struct JdkUnsafePatch {
        const char* name;
        const char* sig;
        const void* fn;
        const char* label;
      };
      extern jlong Unsafe_jdkObjectFieldOffset(JNIEnv*, jobject, jobject);
      extern jlong Unsafe_jdkStaticFieldOffset(JNIEnv*, jobject, jobject);
      extern jobject Unsafe_jdkStaticFieldBase(JNIEnv*, jobject, jobject);
      const JdkUnsafePatch methods[] = {
          {"objectFieldOffset", "(Ljava/lang/reflect/Field;)J",
           reinterpret_cast<const void*>(&Unsafe_jdkObjectFieldOffset),
           "Unsafe.objectFieldOffset(Field)"},
          {"staticFieldOffset", "(Ljava/lang/reflect/Field;)J",
           reinterpret_cast<const void*>(&Unsafe_jdkStaticFieldOffset),
           "Unsafe.staticFieldOffset(Field)"},
          {"staticFieldBase", "(Ljava/lang/reflect/Field;)Ljava/lang/Object;",
           reinterpret_cast<const void*>(&Unsafe_jdkStaticFieldBase),
           "Unsafe.staticFieldBase(Field)"},
      };
      for (const JdkUnsafePatch& patch : methods) {
        ArtMethod* method = unsafe_class->FindClassMethod(
            patch.name, patch.sig, class_linker_->GetImagePointerSize());
        patch_runtime_native_method(method, patch.fn, kAccFastNative, patch.label);
      }
    }
    if (self->IsExceptionPending()) self->ClearException();
  }

  // PATCH: Android 11 libcore exposes sun.misc.Unsafe array-offset wrappers.
  // Route them directly to ART-side natives so the wrapper bytecode does not
  // cross stale libcore/ART bootstrap paths.
  {
    ScopedObjectAccess soa(self);
    ObjPtr<mirror::Class> unsafe_class = class_linker_->FindSystemClass(self, "Lsun/misc/Unsafe;");
    if (unsafe_class != nullptr) {
      struct NativePatch {
        const char* name;
        const char* sig;
        const void* fn;
        const char* label;
      };
      extern jint Unsafe_arrayBaseOffset(JNIEnv*, jobject, jclass);
      extern jint Unsafe_arrayIndexScale(JNIEnv*, jobject, jclass);
      extern jlong Unsafe_objectFieldOffset(JNIEnv*, jobject, jobject);
      const NativePatch methods[] = {
          {"arrayBaseOffset", "(Ljava/lang/Class;)I",
           reinterpret_cast<const void*>(&Unsafe_arrayBaseOffset),
           "sun.misc.Unsafe.arrayBaseOffset(Class)"},
          {"arrayIndexScale", "(Ljava/lang/Class;)I",
           reinterpret_cast<const void*>(&Unsafe_arrayIndexScale),
           "sun.misc.Unsafe.arrayIndexScale(Class)"},
          {"objectFieldOffset", "(Ljava/lang/reflect/Field;)J",
           reinterpret_cast<const void*>(&Unsafe_objectFieldOffset),
           "sun.misc.Unsafe.objectFieldOffset(Field)"},
      };
      for (const NativePatch& patch : methods) {
        ArtMethod* method = unsafe_class->FindClassMethod(
            patch.name, patch.sig, class_linker_->GetImagePointerSize());
        patch_runtime_native_method(method, patch.fn, kAccFastNative, patch.label);
      }
    }
    if (self->IsExceptionPending()) self->ClearException();
  }

  // PATCH: Route java.io.UnixFileSystem wrappers directly to native stubs.
  // In imageless standalone mode these methods can lose their native flags or
  // trip Blocker/ThreadLocal before reaching the private *0 natives.
  {
    ScopedObjectAccess soa(self);
    ObjPtr<mirror::Class> unixfs_class = class_linker_->FindSystemClass(self, "Ljava/io/UnixFileSystem;");
    if (unixfs_class != nullptr) {
      struct NativePatch {
        const char* name;
        const char* sig;
        const void* fn;
      };
      const NativePatch methods[] = {
          {"getBooleanAttributes", "(Ljava/io/File;)I",
           reinterpret_cast<const void*>(&Westlake_UnixFileSystem_getBooleanAttributes)},
          {"hasBooleanAttributes", "(Ljava/io/File;I)Z",
           reinterpret_cast<const void*>(&Westlake_UnixFileSystem_hasBooleanAttributes)},
          {"checkAccess", "(Ljava/io/File;I)Z",
           reinterpret_cast<const void*>(&Westlake_UnixFileSystem_checkAccess)},
          {"getLastModifiedTime", "(Ljava/io/File;)J",
           reinterpret_cast<const void*>(&Westlake_UnixFileSystem_getLastModifiedTime)},
          {"getLength", "(Ljava/io/File;)J",
           reinterpret_cast<const void*>(&Westlake_UnixFileSystem_getLength)},
          {"list", "(Ljava/io/File;)[Ljava/lang/String;",
           reinterpret_cast<const void*>(&Westlake_UnixFileSystem_list)},
      };
      for (const NativePatch& patch : methods) {
        ArtMethod* method = unixfs_class->FindClassMethod(
            patch.name, patch.sig, class_linker_->GetImagePointerSize());
        std::string label = std::string("UnixFileSystem.") + patch.name + patch.sig;
        patch_runtime_native_method(method, patch.fn, /*extra_flags=*/0u, label.c_str());
      }
    }
    if (self->IsExceptionPending()) self->ClearException();
  }

  // PATCH: Route HashMap.put directly to JNI.
  // This is now opt-in only. The controlled canary proves the native rewrite
  // can itself become the first crash owner on the standalone path.
  {
    ScopedObjectAccess soa(self);
    const bool enable_hashmap_put_native = getenv("WESTLAKE_ENABLE_HASHMAP_PUT_NATIVE") != nullptr;
    ObjPtr<mirror::Class> hash_map_class =
        class_linker_->FindSystemClass(self, "Ljava/util/HashMap;");
    if (enable_hashmap_put_native && hash_map_class != nullptr) {
      ArtMethod* put_method = hash_map_class->FindClassMethod(
          "put", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
          class_linker_->GetImagePointerSize());
      patch_runtime_native_method(put_method,
                                  reinterpret_cast<const void*>(&Westlake_HashMap_put),
                                  /*extra_flags=*/0u,
                                  "HashMap.put(Ljava/lang/Object;Ljava/lang/Object;)");
      ObjPtr<mirror::PointerArray> vtable = hash_map_class->GetVTableDuringLinking();
      if (vtable != nullptr) {
        const int count = vtable->GetLength();
        for (int i = 0; i < count; ++i) {
          ArtMethod* vm = vtable->GetElementPtrSize<ArtMethod*>(i, kRuntimePointerSize);
          if (vm != nullptr &&
              strcmp(vm->GetName(), "put") == 0 &&
              vm->GetSignature().ToString() == "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;") {
            patch_runtime_native_method(vm,
                                        reinterpret_cast<const void*>(&Westlake_HashMap_put),
                                        /*extra_flags=*/0u,
                                        /*label=*/nullptr);
          }
        }
      }
    } else if (!enable_hashmap_put_native) {
      fprintf(stderr, "[RT] HashMap.put native patch disabled\n");
      fflush(stderr);
    }
    if (self->IsExceptionPending()) self->ClearException();
  }

  // PATCH: Route early libcore.io.Linux wrappers directly to native.
  // System.<clinit> and stock app startup can hit these before launcher-side
  // RegisterNatives has a stable path, so patch the boot ArtMethods here.
  {
    ScopedObjectAccess soa(self);
    ObjPtr<mirror::Class> linux_class = class_linker_->FindSystemClass(self, "Llibcore/io/Linux;");
    if (linux_class != nullptr) {
      static auto getuid_fn = +[](JNIEnv*, jobject) -> jint { return static_cast<jint>(getuid()); };
      static auto geteuid_fn = +[](JNIEnv*, jobject) -> jint { return static_cast<jint>(geteuid()); };
      static auto getgid_fn = +[](JNIEnv*, jobject) -> jint { return static_cast<jint>(getgid()); };
      static auto getegid_fn = +[](JNIEnv*, jobject) -> jint { return static_cast<jint>(getegid()); };
      static auto getpid_fn = +[](JNIEnv*, jobject) -> jint { return static_cast<jint>(getpid()); };
      static auto gettid_fn = +[](JNIEnv*, jobject) -> jint {
        return static_cast<jint>(syscall(SYS_gettid));
      };
      static auto getppid_fn = +[](JNIEnv*, jobject) -> jint { return static_cast<jint>(getppid()); };
      static auto sysconf_fn = +[](JNIEnv*, jobject, jint name) -> jlong {
        errno = 0;
        long value = sysconf(name);
        if ((name == _SC_NPROCESSORS_CONF || name == _SC_NPROCESSORS_ONLN) &&
            (value <= 0 || value > 64)) {
          value = 4;
        }
        return value < 0 ? static_cast<jlong>(-1) : static_cast<jlong>(value);
      };
      struct LinuxPatch {
        const char* name;
        const char* sig;
        const void* fn;
        const char* label;
      };
      const LinuxPatch methods[] = {
          {"nativeGetuid", "()I", reinterpret_cast<const void*>(+getuid_fn), nullptr},
          {"nativeGeteuid", "()I", reinterpret_cast<const void*>(+geteuid_fn), nullptr},
          {"nativeGetgid", "()I", reinterpret_cast<const void*>(+getgid_fn), nullptr},
          {"nativeGetegid", "()I", reinterpret_cast<const void*>(+getegid_fn), nullptr},
          {"nativeGetpid", "()I", reinterpret_cast<const void*>(+getpid_fn), nullptr},
          {"nativeGettid", "()I", reinterpret_cast<const void*>(+gettid_fn), nullptr},
          {"nativeGetppid", "()I", reinterpret_cast<const void*>(+getppid_fn), nullptr},
          {"getuid", "()I", reinterpret_cast<const void*>(+getuid_fn), nullptr},
          {"geteuid", "()I", reinterpret_cast<const void*>(+geteuid_fn), nullptr},
          {"getgid", "()I", reinterpret_cast<const void*>(+getgid_fn), nullptr},
          {"getegid", "()I", reinterpret_cast<const void*>(+getegid_fn), nullptr},
          {"getpid", "()I", reinterpret_cast<const void*>(+getpid_fn), nullptr},
          {"gettid", "()I", reinterpret_cast<const void*>(+gettid_fn), nullptr},
          {"getppid", "()I", reinterpret_cast<const void*>(+getppid_fn), nullptr},
          {"sysconf", "(I)J", reinterpret_cast<const void*>(+sysconf_fn), nullptr},
          {"nativeSysconf", "(I)J", reinterpret_cast<const void*>(+sysconf_fn), nullptr},
          {"open", "(Ljava/lang/String;II)Ljava/io/FileDescriptor;",
              reinterpret_cast<const void*>(&Westlake_Linux_open), "Linux.open"},
          {"close", "(Ljava/io/FileDescriptor;)V",
              reinterpret_cast<const void*>(&Westlake_Linux_close), "Linux.close"},
          {"readBytes", "(Ljava/io/FileDescriptor;Ljava/lang/Object;II)I",
              reinterpret_cast<const void*>(&Westlake_Linux_readBytes), "Linux.readBytes"},
          {"writeBytes", "(Ljava/io/FileDescriptor;Ljava/lang/Object;II)I",
              reinterpret_cast<const void*>(&Westlake_Linux_writeBytes), "Linux.writeBytes"},
          {"lseek", "(Ljava/io/FileDescriptor;JI)J",
              reinterpret_cast<const void*>(&Westlake_Linux_lseek), "Linux.lseek"},
          {"pread", "(Ljava/io/FileDescriptor;Ljava/lang/Object;IIJ)I",
              reinterpret_cast<const void*>(&Westlake_Linux_pread), "Linux.pread"},
          {"fstat", "(Ljava/io/FileDescriptor;)Landroid/system/StructStat;",
              reinterpret_cast<const void*>(&Westlake_Linux_fstat), "Linux.fstat"},
          {"stat", "(Ljava/lang/String;)Landroid/system/StructStat;",
              reinterpret_cast<const void*>(&Westlake_Linux_stat), "Linux.stat"},
          {"lstat", "(Ljava/lang/String;)Landroid/system/StructStat;",
              reinterpret_cast<const void*>(&Westlake_Linux_lstat), "Linux.lstat"},
          {"access", "(Ljava/lang/String;I)Z",
              reinterpret_cast<const void*>(&Westlake_Linux_access), "Linux.access"},
          {"getsockoptLinger",
              "(Ljava/io/FileDescriptor;II)Landroid/system/StructLinger;",
              reinterpret_cast<const void*>(&Westlake_Linux_getsockoptLinger),
              "Linux.getsockoptLinger"},
      };
      for (const LinuxPatch& patch : methods) {
        ArtMethod* method = linux_class->FindClassMethod(
            patch.name, patch.sig, class_linker_->GetImagePointerSize());
        patch_runtime_native_method(method, patch.fn, /*extra_flags=*/0u, patch.label);
        ObjPtr<mirror::PointerArray> vtable = linux_class->GetVTableDuringLinking();
        if (vtable != nullptr) {
          const int count = vtable->GetLength();
          for (int i = 0; i < count; ++i) {
            ArtMethod* vm = vtable->GetElementPtrSize<ArtMethod*>(i, kRuntimePointerSize);
            if (vm != nullptr &&
                strcmp(vm->GetName(), patch.name) == 0 &&
                vm->GetSignature().ToString() == patch.sig) {
              patch_runtime_native_method(vm, patch.fn, /*extra_flags=*/0u, /*label=*/nullptr);
            }
          }
        }
      }
      fprintf(stderr, "[RT] libcore.io.Linux natives patched early\n");
      fflush(stderr);
    }
    if (self->IsExceptionPending()) self->ClearException();
  }

  // PATCH: Route java.util.zip.Inflater natives to our zlib-backed impls (see the
  // Westlake_Inflater_* functions above). Missing here → TimeZone/ICU <clinit> failures
  // and unreadable DEFLATE-compressed zip entries.
  {
    ScopedObjectAccess soa(self);
    ObjPtr<mirror::Class> inflater_class =
        class_linker_->FindSystemClass(self, "Ljava/util/zip/Inflater;");
    if (inflater_class != nullptr) {
      struct InflPatch { const char* name; const char* sig; const void* fn; };
      const InflPatch imethods[] = {
          {"init", "(Z)J", reinterpret_cast<const void*>(&Westlake_Inflater_init)},
          {"end", "(J)V", reinterpret_cast<const void*>(&Westlake_Inflater_end)},
          {"reset", "(J)V", reinterpret_cast<const void*>(&Westlake_Inflater_reset)},
          {"getAdler", "(J)I", reinterpret_cast<const void*>(&Westlake_Inflater_getAdler)},
          {"setDictionary", "(J[BII)V",
              reinterpret_cast<const void*>(&Westlake_Inflater_setDictionary)},
          {"inflateBytesBytes", "(J[BII[BII)J",
              reinterpret_cast<const void*>(&Westlake_Inflater_inflateBytesBytes)},
      };
      for (const InflPatch& patch : imethods) {
        ArtMethod* method = inflater_class->FindClassMethod(
            patch.name, patch.sig, class_linker_->GetImagePointerSize());
        patch_runtime_native_method(method, patch.fn, /*extra_flags=*/0u, /*label=*/nullptr);
        ObjPtr<mirror::PointerArray> vtable = inflater_class->GetVTableDuringLinking();
        if (vtable != nullptr) {
          const int count = vtable->GetLength();
          for (int i = 0; i < count; ++i) {
            ArtMethod* vm = vtable->GetElementPtrSize<ArtMethod*>(i, kRuntimePointerSize);
            if (vm != nullptr && strcmp(vm->GetName(), patch.name) == 0 &&
                vm->GetSignature().ToString() == patch.sig) {
              patch_runtime_native_method(vm, patch.fn, /*extra_flags=*/0u, /*label=*/nullptr);
            }
          }
        }
      }
      fprintf(stderr, "[RT] java.util.zip.Inflater natives patched\n");
      fflush(stderr);
    }
    if (self->IsExceptionPending()) self->ClearException();
  }

  // PATCH: Route java.lang.Character.*Impl natives to wctype-backed impls (see above).
  // Missing here → Character.isDigitImpl/etc. UnsatisfiedLinkError during app onCreate.
  {
    ScopedObjectAccess soa(self);
    ObjPtr<mirror::Class> ch_class =
        class_linker_->FindSystemClass(self, "Ljava/lang/Character;");
    if (ch_class != nullptr) {
      struct ChPatch { const char* name; const char* sig; const void* fn; };
      const ChPatch cmethods[] = {
          {"isDigitImpl", "(I)Z", reinterpret_cast<const void*>(&Westlake_Character_isDigitImpl)},
          {"isLetterImpl", "(I)Z", reinterpret_cast<const void*>(&Westlake_Character_isLetterImpl)},
          {"isLetterOrDigitImpl", "(I)Z",
              reinterpret_cast<const void*>(&Westlake_Character_isLetterOrDigitImpl)},
          {"isWhitespaceImpl", "(I)Z",
              reinterpret_cast<const void*>(&Westlake_Character_isWhitespaceImpl)},
          {"isSpaceCharImpl", "(I)Z",
              reinterpret_cast<const void*>(&Westlake_Character_isSpaceCharImpl)},
          {"isUpperCaseImpl", "(I)Z",
              reinterpret_cast<const void*>(&Westlake_Character_isUpperCaseImpl)},
          {"isLowerCaseImpl", "(I)Z",
              reinterpret_cast<const void*>(&Westlake_Character_isLowerCaseImpl)},
          {"isTitleCaseImpl", "(I)Z",
              reinterpret_cast<const void*>(&Westlake_Character_isTitleCaseImpl)},
          {"isDefinedImpl", "(I)Z", reinterpret_cast<const void*>(&Westlake_Character_isDefinedImpl)},
          {"isAlphabeticImpl", "(I)Z",
              reinterpret_cast<const void*>(&Westlake_Character_isAlphabeticImpl)},
          {"isIdeographicImpl", "(I)Z",
              reinterpret_cast<const void*>(&Westlake_Character_isIdeographicImpl)},
          {"isMirroredImpl", "(I)Z",
              reinterpret_cast<const void*>(&Westlake_Character_isMirroredImpl)},
          {"isIdentifierIgnorableImpl", "(I)Z",
              reinterpret_cast<const void*>(&Westlake_Character_isIdentifierIgnorableImpl)},
          {"isUnicodeIdentifierStartImpl", "(I)Z",
              reinterpret_cast<const void*>(&Westlake_Character_isUnicodeIdentifierStartImpl)},
          {"isUnicodeIdentifierPartImpl", "(I)Z",
              reinterpret_cast<const void*>(&Westlake_Character_isUnicodeIdentifierPartImpl)},
          {"toLowerCaseImpl", "(I)I",
              reinterpret_cast<const void*>(&Westlake_Character_toLowerCaseImpl)},
          {"toUpperCaseImpl", "(I)I",
              reinterpret_cast<const void*>(&Westlake_Character_toUpperCaseImpl)},
          {"toTitleCaseImpl", "(I)I",
              reinterpret_cast<const void*>(&Westlake_Character_toTitleCaseImpl)},
          {"digitImpl", "(II)I", reinterpret_cast<const void*>(&Westlake_Character_digitImpl)},
          {"getNumericValueImpl", "(I)I",
              reinterpret_cast<const void*>(&Westlake_Character_getNumericValueImpl)},
          {"getTypeImpl", "(I)I", reinterpret_cast<const void*>(&Westlake_Character_getTypeImpl)},
          {"getDirectionalityImpl", "(I)B",
              reinterpret_cast<const void*>(&Westlake_Character_getDirectionalityImpl)},
      };
      for (const ChPatch& patch : cmethods) {
        ArtMethod* method = ch_class->FindClassMethod(
            patch.name, patch.sig, class_linker_->GetImagePointerSize());
        patch_runtime_native_method(method, patch.fn, /*extra_flags=*/0u, /*label=*/nullptr);
      }
      fprintf(stderr, "[RT] java.lang.Character.*Impl natives patched\n");
      fflush(stderr);
    }
    if (self->IsExceptionPending()) self->ClearException();
  }

  // PATCH: Route java.lang.Math / java.lang.StrictMath double natives to libm (see above).
  // Missing → Math.ceil UnsatisfiedLinkError → HashMap.calculateHashMapCapacity / BC JSSE fail.
  {
    ScopedObjectAccess soa(self);
    struct MPatch { const char* name; const char* sig; const void* fn; };
    const MPatch mmethods[] = {
        {"ceil", "(D)D", reinterpret_cast<const void*>(&Westlake_Math_ceil)},
        {"floor", "(D)D", reinterpret_cast<const void*>(&Westlake_Math_floor)},
        {"sqrt", "(D)D", reinterpret_cast<const void*>(&Westlake_Math_sqrt)},
        {"cbrt", "(D)D", reinterpret_cast<const void*>(&Westlake_Math_cbrt)},
        {"sin", "(D)D", reinterpret_cast<const void*>(&Westlake_Math_sin)},
        {"cos", "(D)D", reinterpret_cast<const void*>(&Westlake_Math_cos)},
        {"tan", "(D)D", reinterpret_cast<const void*>(&Westlake_Math_tan)},
        {"asin", "(D)D", reinterpret_cast<const void*>(&Westlake_Math_asin)},
        {"acos", "(D)D", reinterpret_cast<const void*>(&Westlake_Math_acos)},
        {"atan", "(D)D", reinterpret_cast<const void*>(&Westlake_Math_atan)},
        {"exp", "(D)D", reinterpret_cast<const void*>(&Westlake_Math_exp)},
        {"log", "(D)D", reinterpret_cast<const void*>(&Westlake_Math_log)},
        {"log10", "(D)D", reinterpret_cast<const void*>(&Westlake_Math_log10)},
        {"expm1", "(D)D", reinterpret_cast<const void*>(&Westlake_Math_expm1)},
        {"log1p", "(D)D", reinterpret_cast<const void*>(&Westlake_Math_log1p)},
        {"sinh", "(D)D", reinterpret_cast<const void*>(&Westlake_Math_sinh)},
        {"cosh", "(D)D", reinterpret_cast<const void*>(&Westlake_Math_cosh)},
        {"tanh", "(D)D", reinterpret_cast<const void*>(&Westlake_Math_tanh)},
        {"rint", "(D)D", reinterpret_cast<const void*>(&Westlake_Math_rint)},
        {"atan2", "(DD)D", reinterpret_cast<const void*>(&Westlake_Math_atan2)},
        {"pow", "(DD)D", reinterpret_cast<const void*>(&Westlake_Math_pow)},
        {"hypot", "(DD)D", reinterpret_cast<const void*>(&Westlake_Math_hypot)},
        {"IEEEremainder", "(DD)D", reinterpret_cast<const void*>(&Westlake_Math_IEEEremainder)},
    };
    const char* math_classes[] = {"Ljava/lang/Math;", "Ljava/lang/StrictMath;"};
    for (const char* cls : math_classes) {
      ObjPtr<mirror::Class> mc = class_linker_->FindSystemClass(self, cls);
      if (mc == nullptr) {
        if (self->IsExceptionPending()) self->ClearException();
        continue;
      }
      for (const MPatch& patch : mmethods) {
        ArtMethod* method = mc->FindClassMethod(
            patch.name, patch.sig, class_linker_->GetImagePointerSize());
        if (method != nullptr && method->IsNative()) {
          patch_runtime_native_method(method, patch.fn, /*extra_flags=*/0u, /*label=*/nullptr);
        }
      }
    }
    fprintf(stderr, "[RT] java.lang.Math/StrictMath natives patched\n");
    fflush(stderr);
    if (self->IsExceptionPending()) self->ClearException();
  }

  // PATCH: Stub ALL android.os.PerfettoTrackEventExtra* tracing natives + Trace.IsTagEnabled.
  {
    ScopedObjectAccess soa(self);
    struct PfEntry { const char* cls; const char* name; const char* sig; const void* fn; };
    const PfEntry pf_entries[] = {
          {"Landroid/os/PerfettoTrackEventExtra$ArgBool;", "native_delete", "()J", reinterpret_cast<const void*>(&Westlake_pf_J)},
          {"Landroid/os/PerfettoTrackEventExtra$ArgBool;", "native_get_extra_ptr", "(J)J", reinterpret_cast<const void*>(&Westlake_pf_JtoJ)},
          {"Landroid/os/PerfettoTrackEventExtra$ArgBool;", "native_init", "(Ljava/lang/String;)J", reinterpret_cast<const void*>(&Westlake_pf_LtoJ)},
          {"Landroid/os/PerfettoTrackEventExtra$ArgBool;", "native_set_value", "(JZ)V", reinterpret_cast<const void*>(&Westlake_pf_v_JZ)},
          {"Landroid/os/PerfettoTrackEventExtra$ArgDouble;", "native_delete", "()J", reinterpret_cast<const void*>(&Westlake_pf_J)},
          {"Landroid/os/PerfettoTrackEventExtra$ArgDouble;", "native_get_extra_ptr", "(J)J", reinterpret_cast<const void*>(&Westlake_pf_JtoJ)},
          {"Landroid/os/PerfettoTrackEventExtra$ArgDouble;", "native_init", "(Ljava/lang/String;)J", reinterpret_cast<const void*>(&Westlake_pf_LtoJ)},
          {"Landroid/os/PerfettoTrackEventExtra$ArgDouble;", "native_set_value", "(JD)V", reinterpret_cast<const void*>(&Westlake_pf_v_JD)},
          {"Landroid/os/PerfettoTrackEventExtra$ArgInt64;", "native_delete", "()J", reinterpret_cast<const void*>(&Westlake_pf_J)},
          {"Landroid/os/PerfettoTrackEventExtra$ArgInt64;", "native_get_extra_ptr", "(J)J", reinterpret_cast<const void*>(&Westlake_pf_JtoJ)},
          {"Landroid/os/PerfettoTrackEventExtra$ArgInt64;", "native_init", "(Ljava/lang/String;)J", reinterpret_cast<const void*>(&Westlake_pf_LtoJ)},
          {"Landroid/os/PerfettoTrackEventExtra$ArgInt64;", "native_set_value", "(JJ)V", reinterpret_cast<const void*>(&Westlake_pf_v_JJ)},
          {"Landroid/os/PerfettoTrackEventExtra$ArgString;", "native_delete", "()J", reinterpret_cast<const void*>(&Westlake_pf_J)},
          {"Landroid/os/PerfettoTrackEventExtra$ArgString;", "native_get_extra_ptr", "(J)J", reinterpret_cast<const void*>(&Westlake_pf_JtoJ)},
          {"Landroid/os/PerfettoTrackEventExtra$ArgString;", "native_init", "(Ljava/lang/String;)J", reinterpret_cast<const void*>(&Westlake_pf_LtoJ)},
          {"Landroid/os/PerfettoTrackEventExtra$ArgString;", "native_set_value", "(JLjava/lang/String;)V", reinterpret_cast<const void*>(&Westlake_pf_v_JL)},
          {"Landroid/os/PerfettoTrackEventExtra$CounterDouble;", "native_delete", "()J", reinterpret_cast<const void*>(&Westlake_pf_J)},
          {"Landroid/os/PerfettoTrackEventExtra$CounterDouble;", "native_get_extra_ptr", "(J)J", reinterpret_cast<const void*>(&Westlake_pf_JtoJ)},
          {"Landroid/os/PerfettoTrackEventExtra$CounterDouble;", "native_init", "()J", reinterpret_cast<const void*>(&Westlake_pf_J)},
          {"Landroid/os/PerfettoTrackEventExtra$CounterDouble;", "native_set_value", "(JD)V", reinterpret_cast<const void*>(&Westlake_pf_v_JD)},
          {"Landroid/os/PerfettoTrackEventExtra$CounterInt64;", "native_delete", "()J", reinterpret_cast<const void*>(&Westlake_pf_J)},
          {"Landroid/os/PerfettoTrackEventExtra$CounterInt64;", "native_get_extra_ptr", "(J)J", reinterpret_cast<const void*>(&Westlake_pf_JtoJ)},
          {"Landroid/os/PerfettoTrackEventExtra$CounterInt64;", "native_init", "()J", reinterpret_cast<const void*>(&Westlake_pf_J)},
          {"Landroid/os/PerfettoTrackEventExtra$CounterInt64;", "native_set_value", "(JJ)V", reinterpret_cast<const void*>(&Westlake_pf_v_JJ)},
          {"Landroid/os/PerfettoTrackEventExtra$CounterTrack;", "native_delete", "()J", reinterpret_cast<const void*>(&Westlake_pf_J)},
          {"Landroid/os/PerfettoTrackEventExtra$CounterTrack;", "native_get_extra_ptr", "(J)J", reinterpret_cast<const void*>(&Westlake_pf_JtoJ)},
          {"Landroid/os/PerfettoTrackEventExtra$CounterTrack;", "native_init", "(Ljava/lang/String;J)J", reinterpret_cast<const void*>(&Westlake_pf_LJtoJ)},
          {"Landroid/os/PerfettoTrackEventExtra$FieldDouble;", "native_delete", "()J", reinterpret_cast<const void*>(&Westlake_pf_J)},
          {"Landroid/os/PerfettoTrackEventExtra$FieldDouble;", "native_get_extra_ptr", "(J)J", reinterpret_cast<const void*>(&Westlake_pf_JtoJ)},
          {"Landroid/os/PerfettoTrackEventExtra$FieldDouble;", "native_init", "()J", reinterpret_cast<const void*>(&Westlake_pf_J)},
          {"Landroid/os/PerfettoTrackEventExtra$FieldDouble;", "native_set_value", "(JJD)V", reinterpret_cast<const void*>(&Westlake_pf_v_JJD)},
          {"Landroid/os/PerfettoTrackEventExtra$FieldInt64;", "native_delete", "()J", reinterpret_cast<const void*>(&Westlake_pf_J)},
          {"Landroid/os/PerfettoTrackEventExtra$FieldInt64;", "native_get_extra_ptr", "(J)J", reinterpret_cast<const void*>(&Westlake_pf_JtoJ)},
          {"Landroid/os/PerfettoTrackEventExtra$FieldInt64;", "native_init", "()J", reinterpret_cast<const void*>(&Westlake_pf_J)},
          {"Landroid/os/PerfettoTrackEventExtra$FieldInt64;", "native_set_value", "(JJJ)V", reinterpret_cast<const void*>(&Westlake_pf_v_JJJ)},
          {"Landroid/os/PerfettoTrackEventExtra$FieldNested;", "native_add_field", "(JJ)V", reinterpret_cast<const void*>(&Westlake_pf_v_JJ)},
          {"Landroid/os/PerfettoTrackEventExtra$FieldNested;", "native_delete", "()J", reinterpret_cast<const void*>(&Westlake_pf_J)},
          {"Landroid/os/PerfettoTrackEventExtra$FieldNested;", "native_get_extra_ptr", "(J)J", reinterpret_cast<const void*>(&Westlake_pf_JtoJ)},
          {"Landroid/os/PerfettoTrackEventExtra$FieldNested;", "native_init", "()J", reinterpret_cast<const void*>(&Westlake_pf_J)},
          {"Landroid/os/PerfettoTrackEventExtra$FieldNested;", "native_set_id", "(JJ)V", reinterpret_cast<const void*>(&Westlake_pf_v_JJ)},
          {"Landroid/os/PerfettoTrackEventExtra$FieldString;", "native_delete", "()J", reinterpret_cast<const void*>(&Westlake_pf_J)},
          {"Landroid/os/PerfettoTrackEventExtra$FieldString;", "native_get_extra_ptr", "(J)J", reinterpret_cast<const void*>(&Westlake_pf_JtoJ)},
          {"Landroid/os/PerfettoTrackEventExtra$FieldString;", "native_init", "()J", reinterpret_cast<const void*>(&Westlake_pf_J)},
          {"Landroid/os/PerfettoTrackEventExtra$FieldString;", "native_set_value", "(JJLjava/lang/String;)V", reinterpret_cast<const void*>(&Westlake_pf_v_JJL)},
          {"Landroid/os/PerfettoTrackEventExtra$Flow;", "native_delete", "()J", reinterpret_cast<const void*>(&Westlake_pf_J)},
          {"Landroid/os/PerfettoTrackEventExtra$Flow;", "native_get_extra_ptr", "(J)J", reinterpret_cast<const void*>(&Westlake_pf_JtoJ)},
          {"Landroid/os/PerfettoTrackEventExtra$Flow;", "native_init", "()J", reinterpret_cast<const void*>(&Westlake_pf_J)},
          {"Landroid/os/PerfettoTrackEventExtra$Flow;", "native_set_process_flow", "(JJ)V", reinterpret_cast<const void*>(&Westlake_pf_v_JJ)},
          {"Landroid/os/PerfettoTrackEventExtra$Flow;", "native_set_process_terminating_flow", "(JJ)V", reinterpret_cast<const void*>(&Westlake_pf_v_JJ)},
          {"Landroid/os/PerfettoTrackEventExtra$NamedTrack;", "native_delete", "()J", reinterpret_cast<const void*>(&Westlake_pf_J)},
          {"Landroid/os/PerfettoTrackEventExtra$NamedTrack;", "native_get_extra_ptr", "(J)J", reinterpret_cast<const void*>(&Westlake_pf_JtoJ)},
          {"Landroid/os/PerfettoTrackEventExtra$NamedTrack;", "native_init", "(JLjava/lang/String;J)J", reinterpret_cast<const void*>(&Westlake_pf_JLJtoJ)},
          {"Landroid/os/PerfettoTrackEventExtra$Proto;", "native_add_field", "(JJ)V", reinterpret_cast<const void*>(&Westlake_pf_v_JJ)},
          {"Landroid/os/PerfettoTrackEventExtra$Proto;", "native_clear_fields", "(J)V", reinterpret_cast<const void*>(&Westlake_pf_v_J)},
          {"Landroid/os/PerfettoTrackEventExtra$Proto;", "native_delete", "()J", reinterpret_cast<const void*>(&Westlake_pf_J)},
          {"Landroid/os/PerfettoTrackEventExtra$Proto;", "native_get_extra_ptr", "(J)J", reinterpret_cast<const void*>(&Westlake_pf_JtoJ)},
          {"Landroid/os/PerfettoTrackEventExtra$Proto;", "native_init", "()J", reinterpret_cast<const void*>(&Westlake_pf_J)},
          {"Landroid/os/PerfettoTrackEventExtra;", "native_add_arg", "(JJ)V", reinterpret_cast<const void*>(&Westlake_pf_v_JJ)},
          {"Landroid/os/PerfettoTrackEventExtra;", "native_clear_args", "(J)V", reinterpret_cast<const void*>(&Westlake_pf_v_J)},
          {"Landroid/os/PerfettoTrackEventExtra;", "native_delete", "()J", reinterpret_cast<const void*>(&Westlake_pf_J)},
          {"Landroid/os/PerfettoTrackEventExtra;", "native_emit", "(IJLjava/lang/String;J)V", reinterpret_cast<const void*>(&Westlake_pf_v_IJLJ)},
          {"Landroid/os/PerfettoTrackEventExtra;", "native_init", "()J", reinterpret_cast<const void*>(&Westlake_pf_J)},
          {"Landroid/os/PerfettoTrace$Category;", "native_delete", "()J", reinterpret_cast<const void*>(&Westlake_pf_J)},
          {"Landroid/os/PerfettoTrace$Category;", "native_get_extra_ptr", "(J)J", reinterpret_cast<const void*>(&Westlake_pf_JtoJ)},
          {"Landroid/os/PerfettoTrace$Category;", "native_init", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J", reinterpret_cast<const void*>(&Westlake_pf_LLLtoJ)},
          {"Landroid/os/PerfettoTrace$Category;", "native_is_enabled", "(J)Z", reinterpret_cast<const void*>(&Westlake_pf_isEnabled)},
          {"Landroid/os/PerfettoTrace$Category;", "native_register", "(J)V", reinterpret_cast<const void*>(&Westlake_pf_v_J)},
          {"Landroid/os/PerfettoTrace$Category;", "native_unregister", "(J)V", reinterpret_cast<const void*>(&Westlake_pf_v_J)},
          {"Landroid/os/PerfettoTrace;", "native_activate_trigger", "(Ljava/lang/String;I)V", reinterpret_cast<const void*>(&Westlake_pf_v_LI)},
          {"Landroid/os/PerfettoTrace;", "native_get_process_track_uuid", "()J", reinterpret_cast<const void*>(&Westlake_pf_J)},
          {"Landroid/os/PerfettoTrace;", "native_get_thread_track_uuid", "(J)J", reinterpret_cast<const void*>(&Westlake_pf_JtoJ)},
          {"Landroid/os/PerfettoTrace;", "native_register", "(Z)V", reinterpret_cast<const void*>(&Westlake_pf_v_Z)},
          {"Landroid/os/PerfettoTrace;", "native_start_session", "(Z[B)J", reinterpret_cast<const void*>(&Westlake_pf_ZBtoJ)},
          {"Landroid/os/PerfettoTrace;", "native_stop_session", "(J)[B", reinterpret_cast<const void*>(&Westlake_pf_JtoBA)},
    };
    const char* pf_cur = nullptr;
    ObjPtr<mirror::Class> pf_cls = nullptr;
    for (const PfEntry& e : pf_entries) {
      if (pf_cur == nullptr || strcmp(pf_cur, e.cls) != 0) {
        pf_cur = e.cls;
        pf_cls = class_linker_->FindSystemClass(self, e.cls);
        if (self->IsExceptionPending()) self->ClearException();
      }
      if (pf_cls == nullptr) continue;
      ArtMethod* m = pf_cls->FindClassMethod(e.name, e.sig, class_linker_->GetImagePointerSize());
      if (m != nullptr && m->IsNative()) {
        patch_runtime_native_method(m, e.fn, /*extra_flags=*/0u, /*label=*/nullptr);
      }
    }
    fprintf(stderr, "[RT] PerfettoTrackEventExtra* natives stubbed (all)\n");
    fflush(stderr);
    ObjPtr<mirror::Class> tr = class_linker_->FindSystemClass(self, "Landroid/os/Trace;");
    if (tr != nullptr) {
      struct TrPatch { const char* name; const char* sig; const void* fn; };
      const TrPatch trmethods[] = {
          {"nativeIsTagEnabled", "(J)Z", reinterpret_cast<const void*>(&Westlake_Trace_IsTagEnabled)},
          {"nativeSetAppTracingAllowed", "(Z)V", reinterpret_cast<const void*>(&Westlake_pf_v_Z)},
          {"nativeSetTracingEnabled", "(Z)V", reinterpret_cast<const void*>(&Westlake_pf_v_Z)},
          {"nativeTraceBegin", "(JLjava/lang/String;)V", reinterpret_cast<const void*>(&Westlake_pf_v_JL)},
          {"nativeTraceEnd", "(J)V", reinterpret_cast<const void*>(&Westlake_pf_v_J)},
          {"nativeInstant", "(JLjava/lang/String;)V", reinterpret_cast<const void*>(&Westlake_pf_v_JL)},
          {"nativeTraceCounter", "(JLjava/lang/String;J)V", reinterpret_cast<const void*>(&Westlake_v_JLJ)},
          {"nativeAsyncTraceBegin", "(JLjava/lang/String;I)V", reinterpret_cast<const void*>(&Westlake_v_JLI)},
          {"nativeAsyncTraceEnd", "(JLjava/lang/String;I)V", reinterpret_cast<const void*>(&Westlake_v_JLI)},
          {"nativeAsyncTraceForTrackBegin", "(JLjava/lang/String;Ljava/lang/String;I)V", reinterpret_cast<const void*>(&Westlake_v_JLLI)},
          {"nativeAsyncTraceForTrackEnd", "(JLjava/lang/String;I)V", reinterpret_cast<const void*>(&Westlake_v_JLI)},
          {"nativeInstantForTrack", "(JLjava/lang/String;Ljava/lang/String;)V", reinterpret_cast<const void*>(&Westlake_v_JLL)},
      };
      for (const TrPatch& patch : trmethods) {
        ArtMethod* m = tr->FindClassMethod(patch.name, patch.sig, class_linker_->GetImagePointerSize());
        if (m != nullptr && m->IsNative()) {
          patch_runtime_native_method(m, patch.fn, /*extra_flags=*/0u, /*label=*/nullptr);
        }
      }
      fprintf(stderr, "[RT] android.os.Trace natives stubbed\n");
      fflush(stderr);
    }
    if (self->IsExceptionPending()) self->ClearException();
  }

  // PATCH: Route com.android.icu.util.regex.{PatternNative,MatcherNative} to std::regex impls.
  // Missing → PatternNative.compileImpl returns 0 → "nativePtr is null" → regex-using
  // <clinit>s (BouncyCastle JSSE, many app classes) fail → no TLS.
  {
    ScopedObjectAccess soa(self);
    struct RxPatch { const char* cls; const char* name; const char* sig; const void* fn; };
    const RxPatch rxmethods[] = {
        {"Lcom/android/icu/util/regex/PatternNative;", "compileImpl", "(Ljava/lang/String;I)J",
            reinterpret_cast<const void*>(&Westlake_PatternNative_compileImpl)},
        {"Lcom/android/icu/util/regex/PatternNative;", "openMatcherImpl", "(J)J",
            reinterpret_cast<const void*>(&Westlake_PatternNative_openMatcherImpl)},
        {"Lcom/android/icu/util/regex/PatternNative;", "getMatchedGroupIndexImpl",
            "(JLjava/lang/String;)I",
            reinterpret_cast<const void*>(&Westlake_PatternNative_getMatchedGroupIndexImpl)},
        {"Lcom/android/icu/util/regex/PatternNative;", "getNativeFinalizer", "()J",
            reinterpret_cast<const void*>(&Westlake_Regex_getNativeFinalizer)},
        {"Lcom/android/icu/util/regex/MatcherNative;", "setInputImpl", "(JLjava/lang/String;II)V",
            reinterpret_cast<const void*>(&Westlake_MatcherNative_setInputImpl)},
        {"Lcom/android/icu/util/regex/MatcherNative;", "matchesImpl", "(J[I)Z",
            reinterpret_cast<const void*>(&Westlake_MatcherNative_matchesImpl)},
        {"Lcom/android/icu/util/regex/MatcherNative;", "lookingAtImpl", "(J[I)Z",
            reinterpret_cast<const void*>(&Westlake_MatcherNative_lookingAtImpl)},
        {"Lcom/android/icu/util/regex/MatcherNative;", "findImpl", "(JI[I)Z",
            reinterpret_cast<const void*>(&Westlake_MatcherNative_findImpl)},
        {"Lcom/android/icu/util/regex/MatcherNative;", "findNextImpl", "(J[I)Z",
            reinterpret_cast<const void*>(&Westlake_MatcherNative_findNextImpl)},
        {"Lcom/android/icu/util/regex/MatcherNative;", "groupCountImpl", "(J)I",
            reinterpret_cast<const void*>(&Westlake_MatcherNative_groupCountImpl)},
        {"Lcom/android/icu/util/regex/MatcherNative;", "hitEndImpl", "(J)Z",
            reinterpret_cast<const void*>(&Westlake_MatcherNative_hitEndImpl)},
        {"Lcom/android/icu/util/regex/MatcherNative;", "requireEndImpl", "(J)Z",
            reinterpret_cast<const void*>(&Westlake_MatcherNative_requireEndImpl)},
        {"Lcom/android/icu/util/regex/MatcherNative;", "useAnchoringBoundsImpl", "(JZ)V",
            reinterpret_cast<const void*>(&Westlake_MatcherNative_useAnchoringBoundsImpl)},
        {"Lcom/android/icu/util/regex/MatcherNative;", "useTransparentBoundsImpl", "(JZ)V",
            reinterpret_cast<const void*>(&Westlake_MatcherNative_useTransparentBoundsImpl)},
        {"Lcom/android/icu/util/regex/MatcherNative;", "getNativeFinalizer", "()J",
            reinterpret_cast<const void*>(&Westlake_Regex_getNativeFinalizer)},
    };
    for (const RxPatch& patch : rxmethods) {
      ObjPtr<mirror::Class> rc = class_linker_->FindSystemClass(self, patch.cls);
      if (rc == nullptr) {
        fprintf(stderr, "[RT][regex] class NOT FOUND %s\n", patch.cls);
        if (self->IsExceptionPending()) self->ClearException();
        continue;
      }
      ArtMethod* method = rc->FindClassMethod(
          patch.name, patch.sig, class_linker_->GetImagePointerSize());
      fprintf(stderr, "[RT][regex] %s.%s method=%p native=%d\n", patch.cls, patch.name,
              reinterpret_cast<void*>(method), method != nullptr ? method->IsNative() : -1);
      if (method != nullptr) {
        patch_runtime_native_method(method, patch.fn, /*extra_flags=*/0u, /*label=*/nullptr);
      }
    }
    fprintf(stderr, "[RT] regex Pattern/Matcher natives patched\n");
    fflush(stderr);
    if (self->IsExceptionPending()) self->ClearException();
  }

  // PATCH: Stub android.os.Process scheduling natives (no-op) so HandlerThread.run() and
  // other looper threads don't die on setThreadPriority etc.
  {
    ScopedObjectAccess soa(self);
    ObjPtr<mirror::Class> pc = class_linker_->FindSystemClass(self, "Landroid/os/Process;");
    if (pc != nullptr) {
      struct PcPatch { const char* name; const char* sig; const void* fn; };
      const PcPatch pcmethods[] = {
          {"setThreadPriority", "(I)V", reinterpret_cast<const void*>(&Westlake_proc_v_I)},
          {"setThreadPriority", "(II)V", reinterpret_cast<const void*>(&Westlake_proc_v_II)},
          {"setThreadGroup", "(II)V", reinterpret_cast<const void*>(&Westlake_proc_v_II)},
          {"setThreadGroupAndCpuset", "(II)V", reinterpret_cast<const void*>(&Westlake_proc_v_II)},
          {"setThreadScheduler", "(III)V", reinterpret_cast<const void*>(&Westlake_proc_v_III)},
          {"getThreadPriority", "(I)I", reinterpret_cast<const void*>(&Westlake_proc_i_I)},
          {"getThreadScheduler", "(I)I", reinterpret_cast<const void*>(&Westlake_proc_i_I)},
          {"setArgV0Native", "(Ljava/lang/String;)V", reinterpret_cast<const void*>(&Westlake_proc_v_L)},
          {"setCanSelfBackground", "(Z)V", reinterpret_cast<const void*>(&Westlake_pf_v_Z)},
      };
      for (const PcPatch& patch : pcmethods) {
        ArtMethod* method = pc->FindClassMethod(
            patch.name, patch.sig, class_linker_->GetImagePointerSize());
        if (method != nullptr && method->IsNative()) {
          patch_runtime_native_method(method, patch.fn, /*extra_flags=*/0u, /*label=*/nullptr);
        }
      }
      fprintf(stderr, "[RT] android.os.Process scheduling natives stubbed\n");
      fflush(stderr);
    }
    if (self->IsExceptionPending()) self->ClearException();
  }

  // PATCH: Stub android.os.Binder static natives (StrictMode/calling-identity/work-source).
  {
    ScopedObjectAccess soa(self);
    ObjPtr<mirror::Class> bc = class_linker_->FindSystemClass(self, "Landroid/os/Binder;");
    if (bc != nullptr) {
      struct BcPatch { const char* name; const char* sig; const void* fn; };
      const BcPatch bcmethods[] = {
          {"setThreadStrictModePolicy", "(I)V", reinterpret_cast<const void*>(&Westlake_proc_v_I)},
          {"getThreadStrictModePolicy", "()I", reinterpret_cast<const void*>(&Westlake_ret0_i)},
          {"clearCallingIdentity", "()J", reinterpret_cast<const void*>(&Westlake_ret0_j)},
          {"restoreCallingIdentity", "(J)V", reinterpret_cast<const void*>(&Westlake_pf_v_J)},
          {"clearCallingWorkSource", "()J", reinterpret_cast<const void*>(&Westlake_ret0_j)},
          {"restoreCallingWorkSource", "(J)V", reinterpret_cast<const void*>(&Westlake_pf_v_J)},
          {"getCallingPid", "()I", reinterpret_cast<const void*>(&Westlake_getpid_i)},
          {"getCallingUid", "()I", reinterpret_cast<const void*>(&Westlake_getuid_i)},
          {"getCallingWorkSourceUid", "()I", reinterpret_cast<const void*>(&Westlake_retm1_i)},
          {"setCallingWorkSourceUid", "(I)J", reinterpret_cast<const void*>(&Westlake_ret0_ji)},
          {"flushPendingCommands", "()V", reinterpret_cast<const void*>(&Westlake_ret0_i)},
      };
      for (const BcPatch& patch : bcmethods) {
        ArtMethod* method = bc->FindClassMethod(
            patch.name, patch.sig, class_linker_->GetImagePointerSize());
        if (method != nullptr && method->IsNative()) {
          patch_runtime_native_method(method, patch.fn, /*extra_flags=*/0u, /*label=*/nullptr);
        }
      }
      fprintf(stderr, "[RT] android.os.Binder static natives stubbed\n");
      fflush(stderr);
    }
    if (self->IsExceptionPending()) self->ClearException();
  }

  // PATCH: Implement jdk.internal.misc.Unsafe.allocateInstance (unregistered in standalone mode).
  {
    ScopedObjectAccess soa(self);
    ObjPtr<mirror::Class> uc = class_linker_->FindSystemClass(self, "Ljdk/internal/misc/Unsafe;");
    if (uc != nullptr) {
      ArtMethod* m = uc->FindClassMethod(
          "allocateInstance", "(Ljava/lang/Class;)Ljava/lang/Object;",
          class_linker_->GetImagePointerSize());
      if (m != nullptr && m->IsNative()) {
        patch_runtime_native_method(
            m, reinterpret_cast<const void*>(&Westlake_Unsafe_allocateInstance), 0u, nullptr);
        fprintf(stderr, "[RT] jdk.internal.misc.Unsafe.allocateInstance implemented\n");
        fflush(stderr);
      }
    }
    ObjPtr<mirror::Class> ncrypto =
        class_linker_->FindSystemClass(self, "Lcom/android/org/conscrypt/NativeCrypto;");
    if (ncrypto != nullptr) {
      ArtMethod* m = ncrypto->FindClassMethod(
          "RAND_bytes", "([B)V", class_linker_->GetImagePointerSize());
      if (m != nullptr && m->IsNative()) {
        patch_runtime_native_method(
            m, reinterpret_cast<const void*>(&Westlake_NativeCrypto_RAND_bytes), 0u, nullptr);
        fprintf(stderr, "[RT] conscrypt NativeCrypto.RAND_bytes implemented\n");
        fflush(stderr);
      }
    }
    ObjPtr<mirror::Class> nthr =
        class_linker_->FindSystemClass(self, "Lsun/nio/ch/NativeThread;");
    if (nthr != nullptr) {
      struct NtPatch { const char* name; const char* sig; const void* fn; };
      const NtPatch ntmethods[] = {
          {"current", "()J", reinterpret_cast<const void*>(&Westlake_NativeThread_current)},
          {"signal", "(J)V", reinterpret_cast<const void*>(&Westlake_NativeThread_signal)},
          {"init", "()V", reinterpret_cast<const void*>(&Westlake_void_static)},
      };
      for (const NtPatch& p : ntmethods) {
        ArtMethod* m = nthr->FindClassMethod(p.name, p.sig, class_linker_->GetImagePointerSize());
        if (m != nullptr && m->IsNative()) {
          patch_runtime_native_method(m, p.fn, 0u, nullptr);
        }
      }
      fprintf(stderr, "[RT] sun.nio.ch.NativeThread implemented\n");
      fflush(stderr);
    }
    ObjPtr<mirror::Class> fkey = class_linker_->FindSystemClass(self, "Lsun/nio/ch/FileKey;");
    if (fkey != nullptr) {
      ArtMethod* m = fkey->FindClassMethod(
          "init", "(Ljava/io/FileDescriptor;)V", class_linker_->GetImagePointerSize());
      if (m != nullptr && m->IsNative()) {
        patch_runtime_native_method(
            m, reinterpret_cast<const void*>(&Westlake_FileKey_init), 0u, nullptr);
        fprintf(stderr, "[RT] sun.nio.ch.FileKey.init implemented\n");
        fflush(stderr);
      }
    }
    ObjPtr<mirror::Class> fdi = class_linker_->FindSystemClass(self, "Lsun/nio/ch/FileDispatcherImpl;");
    if (fdi != nullptr) {
      ArtMethod* ml = fdi->FindClassMethod(
          "lock0", "(Ljava/io/FileDescriptor;ZJJZ)I", class_linker_->GetImagePointerSize());
      if (ml != nullptr && ml->IsNative()) {
        patch_runtime_native_method(ml, reinterpret_cast<const void*>(&Westlake_FDImpl_lock0), 0u, nullptr);
      }
      ArtMethod* mr = fdi->FindClassMethod(
          "release0", "(Ljava/io/FileDescriptor;JJ)V", class_linker_->GetImagePointerSize());
      if (mr != nullptr && mr->IsNative()) {
        patch_runtime_native_method(mr, reinterpret_cast<const void*>(&Westlake_FDImpl_release0), 0u, nullptr);
      }
      fprintf(stderr, "[RT] sun.nio.ch.FileDispatcherImpl lock0/release0 implemented\n");
      fflush(stderr);
    }
    ObjPtr<mirror::Class> linux_cls = class_linker_->FindSystemClass(self, "Llibcore/io/Linux;");
    if (linux_cls != nullptr) {
      ArtMethod* m = linux_cls->FindClassMethod(
          "statvfs", "(Ljava/lang/String;)Landroid/system/StructStatVfs;",
          class_linker_->GetImagePointerSize());
      if (m != nullptr && m->IsNative()) {
        patch_runtime_native_method(
            m, reinterpret_cast<const void*>(&Westlake_Linux_statvfs), 0u, nullptr);
        fprintf(stderr, "[RT] libcore.io.Linux.statvfs implemented\n");
        fflush(stderr);
      }
    }
    ObjPtr<mirror::Class> uproc = class_linker_->FindSystemClass(self, "Ljava/lang/UNIXProcess;");
    if (uproc != nullptr) {
      ArtMethod* m = uproc->FindClassMethod(
          "forkAndExec", "([B[BI[BI[B[IZ)I", class_linker_->GetImagePointerSize());
      if (m != nullptr && m->IsNative()) {
        patch_runtime_native_method(
            m, reinterpret_cast<const void*>(&Westlake_UNIXProcess_forkAndExec), 0u, nullptr);
        fprintf(stderr, "[RT] java.lang.UNIXProcess.forkAndExec implemented\n");
        fflush(stderr);
      }
    }
    if (self->IsExceptionPending()) self->ClearException();
  }

  // PATCH: Keep Field.isSynthetic() side-effect free.
  // The core-libart Java implementation can re-enter reflection while tolerating
  // a failed java.io.File clinit, producing an endless Field.isSynthetic() stack.
  // The answer is just ACC_SYNTHETIC (0x1000) on the backing ArtField.
  {
    ScopedObjectAccess soa(self);
    const bool enable_field_is_synthetic_native =
        getenv("WESTLAKE_ENABLE_FIELD_IS_SYNTHETIC_NATIVE") != nullptr;
    if (enable_field_is_synthetic_native) {
      static auto field_is_synthetic = +[](JNIEnv* env, jobject java_field) -> jboolean {
        ScopedObjectAccess soa(env);
        ObjPtr<mirror::Field> field = soa.Decode<mirror::Field>(java_field);
        ArtField* art_field = field != nullptr ? field->GetArtField() : nullptr;
        constexpr uint32_t kSyntheticAccessFlag = 0x00001000u;
        return art_field != nullptr &&
               ((art_field->GetAccessFlags() & kSyntheticAccessFlag) != 0u)
            ? JNI_TRUE
            : JNI_FALSE;
      };
      ObjPtr<mirror::Class> field_class =
          class_linker_->FindSystemClass(self, "Ljava/lang/reflect/Field;");
      if (field_class != nullptr) {
        ArtMethod* method = field_class->FindClassMethod(
            "isSynthetic", "()Z", class_linker_->GetImagePointerSize());
        patch_runtime_native_method(method,
                                    reinterpret_cast<const void*>(+field_is_synthetic),
                                    kAccFastNative,
                                    "Field.isSynthetic()");
      }
    } else {
      fprintf(stderr, "[RT] Field.isSynthetic native patch disabled\n");
      fflush(stderr);
    }
    if (self->IsExceptionPending()) self->ClearException();
  }

  // PATCH: Keep BaseDexClassLoader / DexPathList stringification side-effect free.
  // When class resolution fails, the exception path tries to stringify the loader.
  // The current standalone DexPathList path can NPE while formatting that message.
  {
    ScopedObjectAccess soa(self);
    static auto loader_to_string = +[](JNIEnv* env, jobject) -> jstring {
      return env->NewStringUTF("dalvik.system.PathClassLoader[westlake]");
    };
    auto patch_to_string = [&](const char* class_desc) {
      ObjPtr<mirror::Class> klass = class_linker_->FindSystemClass(self, class_desc);
      if (klass == nullptr) {
        return;
      }
      ArtMethod* method = klass->FindClassMethod(
          "toString", "()Ljava/lang/String;", class_linker_->GetImagePointerSize());
      patch_runtime_native_method(method,
                                  reinterpret_cast<const void*>(+loader_to_string),
                                  /*extra_flags=*/0u,
                                  /*label=*/nullptr);
      ObjPtr<mirror::PointerArray> vtable = klass->GetVTableDuringLinking();
      if (vtable != nullptr) {
        const int count = vtable->GetLength();
        for (int i = 0; i < count; ++i) {
          ArtMethod* vm = vtable->GetElementPtrSize<ArtMethod*>(i, kRuntimePointerSize);
          if (vm != nullptr &&
              strcmp(vm->GetName(), "toString") == 0 &&
              vm->GetSignature().ToString() == "()Ljava/lang/String;") {
            patch_runtime_native_method(vm,
                                        reinterpret_cast<const void*>(+loader_to_string),
                                        /*extra_flags=*/0u,
                                        /*label=*/nullptr);
          }
        }
      }
    };
    patch_to_string("Ldalvik/system/BaseDexClassLoader;");
    patch_to_string("Ldalvik/system/PathClassLoader;");
    patch_to_string("Ldalvik/system/DexPathList;");
    if (self->IsExceptionPending()) self->ClearException();
  }

  // PATCH: Keep default timezone lookup in-process and portable. Android's
  // libcore implementation reads host timezone files through libcore.io.Linux;
  // until boot quick-code deopt is complete, route the stock API to a UTC
  // SimpleTimeZone object instead of entering the Linux.open compiled path.
  {
    ScopedObjectAccess soa(self);
    ObjPtr<mirror::Class> time_zone_class =
        class_linker_->FindSystemClass(self, "Ljava/util/TimeZone;");
    if (time_zone_class != nullptr) {
      const char* methods[][2] = {
          {"getDefault", "()Ljava/util/TimeZone;"},
          {"getDefaultRef", "()Ljava/util/TimeZone;"},
      };
      for (const auto& method_info : methods) {
        ArtMethod* method = time_zone_class->FindClassMethod(
            method_info[0], method_info[1], class_linker_->GetImagePointerSize());
        patch_runtime_native_method(method,
                                    reinterpret_cast<const void*>(&Westlake_TimeZone_getDefault),
                                    /*extra_flags=*/0u,
                                    "TimeZone.default");
        if (method != nullptr) {
          method->SetEntryPointFromQuickCompiledCode(GetQuickToInterpreterBridge());
          fprintf(stderr,
                  "[RT] TimeZone.default quick forced to interpreter bridge method=%s quick=%p jni=%p\n",
                  method->PrettyMethod().c_str(),
                  method->GetEntryPointFromQuickCompiledCode(),
                  method->GetEntryPointFromJni());
          fflush(stderr);
        }
      }
      fprintf(stderr, "[RT] TimeZone default patched to UTC SimpleTimeZone\n");
      fflush(stderr);
    }
    if (self->IsExceptionPending()) self->ClearException();
  }

  // PATCH: Force-init I/O classes that cause StackOverflow during System.<clinit>
  {
    ScopedObjectAccess soa(self);
    const char* io_classes[] = {
      "Ljava/io/BufferedInputStream;",
      "Ljava/io/FilterInputStream;",
      "Ljava/io/InputStream;",
      "Ljava/io/OutputStream;",
      "Ljava/io/FilterOutputStream;",
      "Ljava/io/BufferedOutputStream;",
      "Ljava/io/FileInputStream;",
      "Ljava/io/FileOutputStream;",
      "Ljava/io/PrintStream;",
      "Ljava/io/OutputStreamWriter;",
      "Ljava/io/Writer;",
      "Ljava/io/BufferedWriter;",
      "Ljava/nio/charset/Charset;",
      "Ljava/nio/charset/StandardCharsets;",
      "Lsun/nio/cs/UTF_8;",
      "Lsun/nio/cs/StreamEncoder;",
      "Lsun/nio/cs/StreamDecoder;",
      "Ljava/nio/charset/CharsetEncoder;",
      "Ljava/nio/charset/CharsetDecoder;",
      "Ljava/nio/charset/CodingErrorAction;",
      nullptr
    };
    for (int i = 0; io_classes[i]; i++) {
      ObjPtr<mirror::Class> klass = class_linker_->FindSystemClass(self, io_classes[i]);
      if (klass != nullptr && !klass->IsVisiblyInitialized()) {
        klass->SetStatusForPrimitiveOrArray(ClassStatus::kVisiblyInitialized);
      }
      if (self->IsExceptionPending()) self->ClearException();
    }
    fprintf(stderr, "[RT] Pre-initialized I/O + Charset classes\n"); fflush(stderr);

    // Set Charset.defaultCharset to UTF-8 so PrintStream can encode strings
    ObjPtr<mirror::Class> charset_class = class_linker_->FindSystemClass(self, "Ljava/nio/charset/Charset;");
    ObjPtr<mirror::Class> standard_charsets_class =
        class_linker_->FindSystemClass(self, "Ljava/nio/charset/StandardCharsets;");
    ObjPtr<mirror::Class> utf8_class = class_linker_->FindSystemClass(self, "Lsun/nio/cs/UTF_8;");
    if (charset_class != nullptr && utf8_class != nullptr) {
      // Create a UTF_8 Charset instance
      gc::AllocatorType alloc = GetHeap()->GetCurrentAllocator();
      ObjPtr<mirror::Object> utf8_obj = utf8_class->Alloc(self, alloc);
      if (utf8_obj != nullptr) {
        // Set the name field (inherited from Charset)
        ArtField* name_field = charset_class->FindDeclaredInstanceField("name", "Ljava/lang/String;");
        if (name_field != nullptr) {
          ObjPtr<mirror::String> utf8_name = mirror::String::AllocFromModifiedUtf8(self, "UTF-8");
          if (utf8_name != nullptr) {
            name_field->SetObject<false>(utf8_obj, utf8_name);
          }
        }
        if (standard_charsets_class != nullptr) {
          ArtField* utf8_field = standard_charsets_class->FindDeclaredStaticField(
              "UTF_8", "Ljava/nio/charset/Charset;");
          if (utf8_field != nullptr) {
            utf8_field->SetObject<false>(standard_charsets_class, utf8_obj);
            fprintf(stderr, "[RT] Set StandardCharsets.UTF_8\n"); fflush(stderr);
          }
        }
        // Set Charset.defaultCharset static field
        ArtField* default_field = charset_class->FindDeclaredStaticField("defaultCharset", "Ljava/nio/charset/Charset;");
        if (default_field != nullptr) {
          default_field->SetObject<false>(charset_class, utf8_obj);
          fprintf(stderr, "[RT] Set Charset.defaultCharset = UTF-8\n"); fflush(stderr);
        }
      }
    }
    if (self->IsExceptionPending()) self->ClearException();
  }

  // PATCH: Pre-initialize FileDescriptor.in/out/err before System.<clinit>.
  // Without boot image, FileDescriptor.<clinit> loops because getAppend triggers init recursion.
  {
    ScopedObjectAccess soa(self);
    ObjPtr<mirror::Class> fd_class = class_linker_->FindSystemClass(self, "Ljava/io/FileDescriptor;");
    if (fd_class != nullptr) {
      // Force to VisiblyInitialized — skip its <clinit> entirely
      if (!fd_class->IsVisiblyInitialized()) {
        fd_class->SetStatusForPrimitiveOrArray(ClassStatus::kVisiblyInitialized);
      }
      // Create FileDescriptor objects for fd 0, 1, 2
      ArtField* fd_in = fd_class->FindDeclaredStaticField("in", "Ljava/io/FileDescriptor;");
      ArtField* fd_out = fd_class->FindDeclaredStaticField("out", "Ljava/io/FileDescriptor;");
      ArtField* fd_err = fd_class->FindDeclaredStaticField("err", "Ljava/io/FileDescriptor;");
      ArtField* desc_field = fd_class->FindDeclaredInstanceField("descriptor", "I");
      if (fd_in && fd_out && fd_err && desc_field) {
        gc::AllocatorType alloc = GetHeap()->GetCurrentAllocator();
        ArtField* targets[] = {fd_in, fd_out, fd_err};
        for (int i = 0; i < 3; i++) {
          ObjPtr<mirror::Object> obj = fd_class->Alloc(self, alloc);
          if (obj != nullptr) {
            desc_field->Set32<false>(obj, static_cast<uint32_t>(i));
            targets[i]->SetObject<false>(fd_class, obj);
          }
        }
        fprintf(stderr, "[RT] Pre-initialized FileDescriptor.in/out/err\n"); fflush(stderr);
      }
    }
    if (self->IsExceptionPending()) self->ClearException();
  }

  // PATCH: Replace System.addLegacyLocaleSystemProperties() with native no-op.
  // The Java implementation calls getProperty() which returns null strings in imageless
  // mode (InternStrong fails), causing NPE at String.lastIndexOf. Without this fix,
  // System.<clinit> fails and System.out/err are never initialized.
  {
    ScopedObjectAccess soa(self);
    ObjPtr<mirror::Class> system_class = class_linker_->FindSystemClass(self, "Ljava/lang/System;");
    if (system_class != nullptr) {
      ArtMethod* locale_method = system_class->FindClassMethod(
          "addLegacyLocaleSystemProperties", "()V",
          class_linker_->GetImagePointerSize());
      if (locale_method != nullptr && !locale_method->IsNative()) {
        // Make it native no-op
        // Set JNI entry to a simple void function that does nothing
        // We can use any void(*)(JNIEnv*, jclass) function — use System.log's stub
        // or just set it to a known no-op. The simplest: just use the dlsym lookup stub
        // which will find nothing and return (for void methods, returning is a no-op).
        // Actually, let's use a real no-op:
        static auto noop_fn = +[](JNIEnv*, jclass) -> void {};
        patch_runtime_native_method(locale_method,
                                    reinterpret_cast<const void*>(noop_fn),
                                    /*extra_flags=*/0u,
                                    "System.addLegacyLocaleSystemProperties");
      }
    }
    if (self->IsExceptionPending()) self->ClearException();
  }

  // PATCH: Early-noop Throwable.printStackTrace() before guest Java bootstrap.
  // The standalone guest still hits fragile PrintStream internals while reporting
  // exceptions, which hides the real failure behind reporter crashes.
  {
    ScopedObjectAccess soa(self);
    ObjPtr<mirror::Class> throwable_class =
        class_linker_->FindSystemClass(self, "Ljava/lang/Throwable;");
    if (throwable_class != nullptr) {
      ArtMethod* print_method = throwable_class->FindClassMethod(
          "printStackTrace", "()V", class_linker_->GetImagePointerSize());
      if (print_method != nullptr && !print_method->IsNative()) {
        static auto log_throwable = +[](JNIEnv* env, jobject thiz) -> void {
          if (thiz == nullptr) {
            fprintf(stderr, "[RT] Throwable.printStackTrace(null)\n");
            fflush(stderr);
            return;
          }
          jclass throwable_cls = env->FindClass("java/lang/Throwable");
          if (env->ExceptionCheck()) env->ExceptionClear();
          jclass class_cls = env->FindClass("java/lang/Class");
          if (env->ExceptionCheck()) env->ExceptionClear();
          jmethodID get_name = class_cls != nullptr
              ? env->GetMethodID(class_cls, "getNameNative", "()Ljava/lang/String;")
              : nullptr;
          if (env->ExceptionCheck()) { env->ExceptionClear(); get_name = nullptr; }
          jfieldID msg_field = throwable_cls != nullptr
              ? env->GetFieldID(throwable_cls, "detailMessage", "Ljava/lang/String;")
              : nullptr;
          if (env->ExceptionCheck()) { env->ExceptionClear(); msg_field = nullptr; }
          jclass exc_cls = env->GetObjectClass(thiz);
          if (env->ExceptionCheck()) env->ExceptionClear();
          jstring name_j = (get_name != nullptr && exc_cls != nullptr)
              ? reinterpret_cast<jstring>(env->CallObjectMethod(exc_cls, get_name))
              : nullptr;
          if (env->ExceptionCheck()) { env->ExceptionClear(); name_j = nullptr; }
          const char* name = name_j != nullptr ? env->GetStringUTFChars(name_j, nullptr) : nullptr;
          jstring msg_j = msg_field != nullptr
              ? reinterpret_cast<jstring>(env->GetObjectField(thiz, msg_field))
              : nullptr;
          if (env->ExceptionCheck()) { env->ExceptionClear(); msg_j = nullptr; }
          const char* msg = msg_j != nullptr ? env->GetStringUTFChars(msg_j, nullptr) : nullptr;
          fprintf(stderr, "[RT] Throwable.printStackTrace -> %s: %s\n",
                  name != nullptr ? name : "<unknown>",
                  msg != nullptr ? msg : "<no message>");
          fflush(stderr);
          if (msg_j != nullptr && msg != nullptr) {
            env->ReleaseStringUTFChars(msg_j, msg);
          }
          if (name_j != nullptr && name != nullptr) {
            env->ReleaseStringUTFChars(name_j, name);
          }
        };
        patch_runtime_native_method(print_method,
                                    reinterpret_cast<const void*>(log_throwable),
                                    /*extra_flags=*/0u,
                                    "Throwable.printStackTrace()");
      }
    }
    if (self->IsExceptionPending()) self->ClearException();
  }

  // PATCH: Keep System.<clinit> off the fragile timezone ICU path. On the standalone
  // guest path, TimeZoneDataFiles.generateIcuDataPath() can NPE inside String.join()
  // before the app gets to real startup. This rewrite is now opt-in because it can
  // also become the first crashing native handoff on the control canary path.
  {
    ScopedObjectAccess soa(self);
    ObjPtr<mirror::Class> tz_class =
        class_linker_->FindSystemClass(self, "Llibcore/timezone/TimeZoneDataFiles;");
    if (tz_class != nullptr) {
      ArtMethod* icu_path_method = tz_class->FindClassMethod(
          "generateIcuDataPath", "()Ljava/lang/String;",
          class_linker_->GetImagePointerSize());
      if (icu_path_method != nullptr &&
          !icu_path_method->IsNative() &&
          getenv("WESTLAKE_ENABLE_ICU_DATA_PATH_NATIVE") != nullptr) {
        static auto empty_icu_path = +[](JNIEnv* env, jclass) -> jstring {
          return env->NewStringUTF("");
        };
        patch_runtime_native_method(icu_path_method,
                                    reinterpret_cast<const void*>(empty_icu_path),
                                    /*extra_flags=*/0u,
                                    "TimeZoneDataFiles.generateIcuDataPath");
      } else if (icu_path_method != nullptr) {
        fprintf(stderr, "[RT] TimeZoneDataFiles.generateIcuDataPath native patch disabled\n");
        fflush(stderr);
      }
    }
    if (self->IsExceptionPending()) self->ClearException();
  }

  // Debug: check Field.getBoolean JNI entry point right after registration
  {
    ScopedObjectAccess soa(self);
    ObjPtr<mirror::Class> fieldCls = class_linker_->FindSystemClass(self, "Ljava/lang/reflect/Field;");
    if (fieldCls != nullptr) {
      for (ArtMethod& m : fieldCls->GetDeclaredVirtualMethods(class_linker_->GetImagePointerSize())) {
        if (strcmp(m.GetName(), "getBoolean") == 0) {
          fprintf(stderr, "[RT] POST-REG Field.getBoolean: native=%d entry=%p\n",
                  m.IsNative(), m.GetEntryPointFromJni());
          break;
        }
      }
    }
    if (self->IsExceptionPending()) self->ClearException();
  }

  // Register art.io.NativeLog.print(String) native method
  {
    JNIEnv* env = self->GetJniEnv();
    jclass nlog_class = env->FindClass("art/io/NativeLog");
    if (nlog_class != nullptr) {
      static auto print_fn = +[](JNIEnv* e, jclass, jstring msg) -> void {
        if (msg == nullptr) { fprintf(stderr, "(null)\n"); return; }
        const char* utf = e->GetStringUTFChars(msg, nullptr);
        if (utf) { fprintf(stderr, "%s\n", utf); e->ReleaseStringUTFChars(msg, utf); }
      };
      JNINativeMethod nm = {"print", "(Ljava/lang/String;)V", (void*)print_fn};
      env->RegisterNatives(nlog_class, &nm, 1);
      fprintf(stderr, "[RT] Registered art.io.NativeLog.print\n"); fflush(stderr);
    }
    if (self->IsExceptionPending()) self->ClearException();
  }

  // For standalone boot image builds, RunEarlyRootClinits may crash on missing
  // JNI natives (VarHandle, ThreadGroup, etc.). Skip it.
  if (self->IsExceptionPending()) self->ClearException();
  // RunEarlyRootClinits re-enabled
  // RunEarlyRootClinits patched to only call WellKnownClasses::Init (no EnsureRootInitialized)
  fprintf(stderr, "[RT] RunEarlyRootClinits entering\n"); fflush(stderr);
  class_linker_->RunEarlyRootClinits(self);
  fprintf(stderr, "[RT] RunEarlyRootClinits done\n"); fflush(stderr);
  if (self->IsExceptionPending()) self->ClearException();

  // CRITICAL: Fix ConcurrentHashMap.U IMMEDIATELY after boot image clinits.
  // Must happen before ANY class loading that might create ConcurrentHashMaps.
  {
    ScopedObjectAccess soa(self);
    ObjPtr<mirror::Class> unsafe_class = class_linker_->FindSystemClass(self, "Ljdk/internal/misc/Unsafe;");
    if (self->IsExceptionPending()) self->ClearException();
    ObjPtr<mirror::Class> chm_class = class_linker_->FindSystemClass(self, "Ljava/util/concurrent/ConcurrentHashMap;");
    if (self->IsExceptionPending()) self->ClearException();
    if (unsafe_class != nullptr && chm_class != nullptr) {
      // Find Unsafe.theUnsafe field
      ArtField* theUnsafeField = nullptr;
      for (uint32_t i = 0; i < unsafe_class->NumStaticFields(); i++) {
        ArtField* f = unsafe_class->GetStaticField(i);
        if (strcmp(f->GetName(), "theUnsafe") == 0) { theUnsafeField = f; break; }
      }
      // Find ConcurrentHashMap.U field
      ArtField* uField = nullptr;
      for (uint32_t i = 0; i < chm_class->NumStaticFields(); i++) {
        ArtField* f = chm_class->GetStaticField(i);
        if (strcmp(f->GetName(), "U") == 0) { uField = f; break; }
      }
      if (theUnsafeField && uField) {
        ObjPtr<mirror::Object> unsafeObj = theUnsafeField->GetObject(unsafe_class);
        if (unsafeObj == nullptr) {
          // Create an Unsafe instance
          StackHandleScope<1> hs(self);
          Handle<mirror::Class> h_unsafe = hs.NewHandle(unsafe_class);
          unsafeObj = h_unsafe->AllocObject(self);
          if (self->IsExceptionPending()) self->ClearException();
          if (unsafeObj != nullptr) {
            theUnsafeField->SetObject<false>(unsafe_class, unsafeObj);
            fprintf(stderr, "[RT] Created Unsafe.theUnsafe (early)\n");
          }
        }
        if (unsafeObj != nullptr) {
          uField->SetObject<false>(chm_class, unsafeObj);
          fprintf(stderr, "[RT] Set ConcurrentHashMap.U (EARLY, before any class loading)\n");
          fflush(stderr);
          // Also set field offsets
          ArtField* fields[] = {nullptr, nullptr, nullptr, nullptr};
          const char* names[] = {"SIZECTL", "TRANSFERINDEX", "BASECOUNT", "CELLSBUSY"};
          const char* inames[] = {"sizeCtl", "transferIndex", "baseCount", "cellsBusy"};
          for (uint32_t i = 0; i < chm_class->NumStaticFields(); i++) {
            ArtField* f = chm_class->GetStaticField(i);
            for (int j = 0; j < 4; j++) {
              if (strcmp(f->GetName(), names[j]) == 0) fields[j] = f;
            }
          }
          for (int j = 0; j < 4; j++) {
            if (fields[j]) {
              // Find instance field offset
              for (uint32_t i = 0; i < chm_class->NumInstanceFields(); i++) {
                ArtField* f = chm_class->GetInstanceField(i);
                if (strcmp(f->GetName(), inames[j]) == 0) {
                  fields[j]->SetLong<false>(chm_class, f->GetOffset().SizeValue());
                  break;
                }
              }
            }
          }
          // CRITICAL: Also set ABASE and ASHIFT for Node[] array element access
          {
            ArtField* abaseF = nullptr;
            ArtField* ashiftF = nullptr;
            for (uint32_t i = 0; i < chm_class->NumStaticFields(); i++) {
              ArtField* f = chm_class->GetStaticField(i);
              if (strcmp(f->GetName(), "ABASE") == 0) abaseF = f;
              if (strcmp(f->GetName(), "ASHIFT") == 0) ashiftF = f;
            }
            if (abaseF && ashiftF) {
              // ABASE = Object array data offset (typically 12 on 32-bit refs, 16 on 64-bit)
              int32_t abase = mirror::Array::DataOffset(
                  sizeof(mirror::HeapReference<mirror::Object>)).Int32Value();
              // ASHIFT = log2 of reference size
              int32_t scale = sizeof(mirror::HeapReference<mirror::Object>);
              int32_t ashift = 0;
              while ((1 << ashift) < scale) ashift++;
              abaseF->SetInt<false>(chm_class, abase);
              ashiftF->SetInt<false>(chm_class, ashift);
              fprintf(stderr, "[RT] Set ConcurrentHashMap ABASE=%d ASHIFT=%d\n", abase, ashift);
              {
                // PF-noice-001 verification: aarch64 dalvikvm with compressed
                // refs (kHeapReferenceSize=4) expects ABASE=12 ASHIFT=2; with
                // uncompressed refs ABASE=16 ASHIFT=3. Mismatch with the build's
                // actual layout = corrupt CHM Node[] addressing.
                const int32_t expected_abase_compressed = 12;
                const int32_t expected_ashift_compressed = 2;
                const int32_t expected_abase_uncompressed = 16;
                const int32_t expected_ashift_uncompressed = 3;
                const bool layout_compressed =
                    sizeof(mirror::HeapReference<mirror::Object>) == 4u;
                const int32_t expect_abase = layout_compressed
                    ? expected_abase_compressed
                    : expected_abase_uncompressed;
                const int32_t expect_ashift = layout_compressed
                    ? expected_ashift_compressed
                    : expected_ashift_uncompressed;
                const bool match = (abase == expect_abase) && (ashift == expect_ashift);
                fprintf(stderr,
                        "[PFCUT-VERIFY] CHM ABASE=%d ASHIFT=%d "
                        "kHeapReferenceSize=%zu compressed=%d expected_abase=%d "
                        "expected_ashift=%d match=%d\n",
                        abase, ashift, sizeof(mirror::HeapReference<mirror::Object>),
                        layout_compressed ? 1 : 0, expect_abase, expect_ashift,
                        match ? 1 : 0);
                fflush(stderr);
              }
            }
          }
        }
      }
    }
    if (self->IsExceptionPending()) self->ClearException();
  }

  fprintf(stderr, "[RT] InitializeIntrinsics entering\n"); fflush(stderr);
  InitializeIntrinsics();
  fprintf(stderr, "[RT] InitializeIntrinsics done\n"); fflush(stderr);

  self->TransitionFromRunnableToSuspended(ThreadState::kNative);

  // Skip InitNativeMethods - it loads libjavacore.so etc. which aren't available
  // in standalone builds.
  // InitNativeMethods re-enabled
  // InitNativeMethods loads libjavacore.so, libopenjdk.so, libicu_jni.so and runs JNI_OnLoad.
  // These may trigger class init that segfaults on mismatched boot image. Make tolerant.
  fprintf(stderr, "[RT] InitNativeMethods entering\n"); fflush(stderr);
  {
    // Load our stub JNI libraries with error tolerance
    JNIEnv* jni_env = self->GetJniEnv();
    jclass java_lang_Object;
    {
      ScopedObjectAccess soa(self);
      java_lang_Object = reinterpret_cast<jclass>(
          GetJavaVM()->AddGlobalRef(self, GetClassRoot<mirror::Object>(GetClassLinker())));
    }
    // Call our stub JNI_OnLoad functions directly — bypass LoadNativeLibrary which
    // crashes on dynamic binary because dlsym() on fake handles from OpenNativeLibrary
    // dereferences invalid soinfo pointers. Our stubs register the native methods we need.
    // FIRST: dlopen libandroid_runtime.so and register ALL native methods.
    // Must happen BEFORE JNI_OnLoad calls, because JNI_OnLoad_framework triggers
    // class loading that may invoke AssetManager clinit → needs native methods.
    {
      void* librt = dlopen("libandroid_runtime.so", RTLD_NOW | RTLD_GLOBAL);
      if (librt) {
        fprintf(stderr, "[RT] dlopen(libandroid_runtime.so) = %p (EARLY)\n", librt); fflush(stderr);
        typedef int (*RegFn)(JNIEnv*);
        struct { const char* sym; const char* name; } regs[] = {
          {"register_android_graphics_classes", "ALL_GRAPHICS"},
          {"register_android_functions", "ALL_FUNCTIONS"},
          {"_Z26register_android_os_BinderP7_JNIEnv", "Binder"},
          {"_ZN7android26register_android_os_ParcelEP7_JNIEnv", "Parcel"},
          {"_ZN7android36register_android_os_SystemPropertiesEP7_JNIEnv", "SystemProperties"},
          {"_ZN7android31register_android_os_SystemClockEP7_JNIEnv", "SystemClock"},
          {"_Z27register_android_os_ProcessP7_JNIEnv", "Process"},
          {"_ZN7android25register_android_os_TraceEP7_JNIEnv", "Trace"},
          {"_ZN7android25register_android_os_DebugEP7_JNIEnv", "Debug"},
          {"_ZN7android32register_android_os_MessageQueueEP7_JNIEnv", "MessageQueue"},
          {"_ZN7android34register_android_os_ServiceManagerEP7_JNIEnv", "ServiceManager"},
          {"_ZN7android40register_android_os_ServiceManagerNativeEP7_JNIEnv", "ServiceManagerNative"},
          {"_ZN7android37register_android_content_AssetManagerEP7_JNIEnv", "AssetManager"},
          {"_ZN7android38register_android_content_res_ApkAssetsEP7_JNIEnv", "ApkAssets"},
          {"_ZN7android36register_android_content_StringBlockEP7_JNIEnv", "StringBlock"},
          {"_ZN7android33register_android_content_XmlBlockEP7_JNIEnv", "XmlBlock"},
          {"_ZN7android42register_android_content_res_ConfigurationEP7_JNIEnv", "Configuration"},
          {"_ZN7android29register_android_view_SurfaceEP7_JNIEnv", "Surface"},
          {"_ZN7android36register_android_view_SurfaceControlEP7_JNIEnv", "SurfaceControl"},
          {"_ZN7android36register_android_view_SurfaceSessionEP7_JNIEnv", "SurfaceSession"},
          {"_ZN7android33register_android_view_InputDeviceEP7_JNIEnv", "InputDevice"},
          {"_ZN7android34register_android_view_InputChannelEP7_JNIEnv", "InputChannel"},
          {"_ZN7android30register_android_view_KeyEventEP7_JNIEnv", "KeyEvent"},
          {"_ZN7android33register_android_view_MotionEventEP7_JNIEnv", "MotionEvent"},
          {"_ZN7android41register_android_view_WindowManagerGlobalEP7_JNIEnv", "WindowManagerGlobal"},
          {"_ZN7android29register_android_app_ActivityEP7_JNIEnv", "Activity"},
          {"_ZN7android35register_android_app_ActivityThreadEP7_JNIEnv", "ActivityThread"},
          {"_ZN7android47register_android_animation_PropertyValuesHolderEP7_JNIEnv", "PropertyValuesHolder"},
          {"_ZN7android42register_android_database_SQLiteConnectionEP7_JNIEnv", "SQLiteConnection"},
          {"_ZN7android38register_android_database_CursorWindowEP7_JNIEnv", "CursorWindow"},
          {"_ZN7android25register_android_util_LogEP7_JNIEnv", "Log"},
          {nullptr, nullptr}
        };
        int registered = 0, failed = 0;
        for (int i = 0; regs[i].sym; i++) {
          RegFn fn = (RegFn)dlsym(librt, regs[i].sym);
          if (fn) {
            jni_env->PushLocalFrame(128);
            int rc = fn(jni_env);
            jni_env->PopLocalFrame(nullptr);
            if (self->IsExceptionPending()) self->ClearException();
            if (rc == 0) registered++;
            else { fprintf(stderr, "[RT]   WARN: %s returned %d\n", regs[i].name, rc); failed++; }
          } else { failed++; }
        }
        fprintf(stderr, "[RT] libandroid_runtime EARLY: %d/%d registrations OK\n",
                registered, registered + failed);
        fflush(stderr);
      } else {
        fprintf(stderr, "[RT] dlopen(libandroid_runtime.so) failed: %s (expected in static)\n", dlerror());
        fflush(stderr);
      }
    }
    if (self->IsExceptionPending()) self->ClearException();

    JavaVM* raw_vm = reinterpret_cast<JavaVM*>(java_vm_.get());
    fprintf(stderr, "[RT]   Calling JNI_OnLoad_icu...\n"); fflush(stderr);
    jni_env->PushLocalFrame(128);
    JNI_OnLoad_icu(raw_vm, nullptr);
    jni_env->PopLocalFrame(nullptr);
    if (self->IsExceptionPending()) self->ClearException();
    fprintf(stderr, "[RT]   Calling JNI_OnLoad_javacore...\n"); fflush(stderr);
    jni_env->PushLocalFrame(128);
    JNI_OnLoad_javacore(raw_vm, nullptr);
    jni_env->PopLocalFrame(nullptr);
    if (self->IsExceptionPending()) self->ClearException();
    fprintf(stderr, "[RT]   Calling JNI_OnLoad_openjdk...\n"); fflush(stderr);
    jni_env->PushLocalFrame(128);
    JNI_OnLoad_openjdk(raw_vm, nullptr);
    jni_env->PopLocalFrame(nullptr);
    if (self->IsExceptionPending()) self->ClearException();
    fprintf(stderr, "[RT]   Calling JNI_OnLoad_framework...\n"); fflush(stderr);
    jni_env->PushLocalFrame(128);
    JNI_OnLoad_framework(raw_vm, nullptr);
    jni_env->PopLocalFrame(nullptr);
    if (self->IsExceptionPending()) self->ClearException();
    jni_env->DeleteGlobalRef(java_lang_Object);

    // WellKnownClasses::LateInit may also crash -- skip for standalone
    fprintf(stderr, "[RT]   Skipping WellKnownClasses::LateInit\n"); fflush(stderr);
  }
  fprintf(stderr, "[RT] InitNativeMethods done\n"); fflush(stderr);
  if (self->IsExceptionPending()) {
    fprintf(stderr, "[RT] Exception after InitNativeMethods, clearing\n"); fflush(stderr);
    self->ClearException();
  }

  // Skip - depends on InitNativeMethods.
  // art::hiddenapi::InitializeCorePlatformApiPrivateFields();

  // Initialize well known thread group values that may be accessed threads while attaching.
  // InitThreadGroups requires WellKnownClasses fields (ThreadGroup, Thread) to be valid.
  // In standalone builds these may be null. Skip if fields are null.
  fprintf(stderr, "[RT] InitThreadGroups entering\n"); fflush(stderr);
  {
    ScopedObjectAccess soa(self);
    ArtField* main_tg = WellKnownClasses::java_lang_ThreadGroup_mainThreadGroup;
    ArtField* sys_tg = WellKnownClasses::java_lang_ThreadGroup_systemThreadGroup;
    fprintf(stderr, "[RT]   TG fields: main_tg=%p sys_tg=%p\n", main_tg, sys_tg); fflush(stderr);
    if (main_tg != nullptr && sys_tg != nullptr &&
        main_tg->GetDeclaringClass() != nullptr) {
      StackHandleScope<2u> hs(self);
      Handle<mirror::Class> thread_group_class =
          hs.NewHandle(main_tg->GetDeclaringClass());
      fprintf(stderr, "[RT]   EnsureInitialized(ThreadGroup)\n"); fflush(stderr);
      bool initialized = GetClassLinker()->EnsureInitialized(
          self, thread_group_class, /*can_init_fields=*/ true, /*can_init_parents=*/ true);
      fprintf(stderr, "[RT]   ThreadGroup init=%d exception=%d\n", initialized, self->IsExceptionPending()); fflush(stderr);
      if (initialized && !self->IsExceptionPending()) {
        Handle<mirror::Class> thread_class = hs.NewHandle(WellKnownClasses::java_lang_Thread.Get());
        if (thread_class.Get() != nullptr) {
          fprintf(stderr, "[RT]   EnsureInitialized(Thread)\n"); fflush(stderr);
          initialized = GetClassLinker()->EnsureInitialized(
              self, thread_class, /*can_init_fields=*/ true, /*can_init_parents=*/ true);
          fprintf(stderr, "[RT]   Thread init=%d exception=%d\n", initialized, self->IsExceptionPending()); fflush(stderr);
        }
        if (initialized && !self->IsExceptionPending()) {
          main_thread_group_ =
              soa.Vm()->AddGlobalRef(self, main_tg->GetObject(thread_group_class.Get()));
          system_thread_group_ =
              soa.Vm()->AddGlobalRef(self, sys_tg->GetObject(thread_group_class.Get()));
          fprintf(stderr, "[RT]   main_thread_group_=%p system_thread_group_=%p\n",
                  main_thread_group_, system_thread_group_); fflush(stderr);
        }
      }
      if (self->IsExceptionPending()) self->ClearException();
    } else {
      fprintf(stderr, "[RT]   WellKnownClasses ThreadGroup fields null, skipping InitThreadGroups\n");
      fflush(stderr);
    }
  }
  fprintf(stderr, "[RT] InitThreadGroups done\n"); fflush(stderr);

  fprintf(stderr, "[RT] Thread::FinishStartup entering\n"); fflush(stderr);
  Thread::FinishStartup();
  fprintf(stderr, "[RT] Thread::FinishStartup done\n"); fflush(stderr);

  // Create JIT if requested
  if (jit_options_->UseJitCompilation() || jit_options_->GetSaveProfilingInfo()) {
    std::string error_msg;
    if (!IsZygote()) {
      fprintf(stderr, "[RT] Creating JIT...\n"); fflush(stderr);
      CreateJit();
      if (jit_ != nullptr) {
        fprintf(stderr, "[RT] JIT created successfully\n"); fflush(stderr);
      } else {
        fprintf(stderr, "[RT] JIT creation failed (non-fatal)\n"); fflush(stderr);
      }
    }
  } else {
    fprintf(stderr, "[RT] JIT not requested\n"); fflush(stderr);
  }

  // Send the start phase event. We have to wait till here as this is when the main thread peer
  // has just been generated, important root clinits have been run and JNI is completely functional.
  {
    ScopedObjectAccess soa(self);
    callbacks_->NextRuntimePhase(RuntimePhaseCallback::RuntimePhase::kStart);
  }
  fprintf(stderr, "[RT] kStart phase done\n"); fflush(stderr);

  if (!standalone_class_path.empty()) {
    fprintf(stderr, "[RT] Creating standalone app PathClassLoader for %zu dex files\n",
            standalone_class_path.size());
    fflush(stderr);
    jobject app_class_loader = class_linker_->CreatePathClassLoader(self, standalone_class_path);
    fprintf(stderr, "[RT] CreatePathClassLoader returned %p exception=%d\n",
            app_class_loader, self->IsExceptionPending());
    fflush(stderr);
    if (app_class_loader != nullptr) {
      {
        ScopedObjectAccess soa(self);
        ObjPtr<mirror::ClassLoader> loader = soa.Decode<mirror::ClassLoader>(app_class_loader);
        system_class_loader_ = soa.Vm()->AddGlobalRef(self, loader);
        fprintf(stderr, "[RT] Decoded standalone loader=%p peer=%p\n",
                loader.Ptr(), soa.Self()->GetPeer());
        fflush(stderr);
        ObjPtr<mirror::Class> thread_class = WellKnownClasses::java_lang_Thread.Get();
        ArtField* context_class_loader = thread_class->FindDeclaredInstanceField(
            "contextClassLoader",
            "Ljava/lang/ClassLoader;");
        CHECK(context_class_loader != nullptr);
        context_class_loader->SetObject<false>(soa.Self()->GetPeer(), loader);
        fprintf(stderr, "[RT] Installed standalone contextClassLoader\n"); fflush(stderr);
      }
      fprintf(stderr, "[RT] Installed standalone app PathClassLoader (%zu dex files)\n",
              standalone_class_path.size());
      fflush(stderr);
      // PF-noice (2026-05-04): empirical finding — disabling the bypass
      // entirely (gate never flipped) does NOT eliminate the boot-class
      // ArrayStoreException cascade (ICU/CharsetProvider/Crypto). The
      // cascade has a different root cause in the runtime/shim
      // infrastructure that survives bypass disable. Restoring the
      // boot-aware flip because it eliminates the SIGBUS at sentinel
      // 0xfffffffffffffb17 (PF-630) regardless. The cascade remains an
      // open issue tracked separately.
      PFCutMarkAppClassLoaderSeen();
      fprintf(stderr, "[RT] PFCut boot gate flipped: app loader seen\n"); fflush(stderr);
      // PF-noice-001: start tracing every Unsafe-array write from this point
      // until JNI hook nativePfcutTraceStop() fires (called from Java when
      // MainActivity.onResume completes). The trace will localize the
      // boot-class ArrayStoreException cascade root cause.
      PFCutTraceStart();
      fprintf(stderr, "[PFCUT-TRACE] active=1\n"); fflush(stderr);
    } else {
      fprintf(stderr, "[RT] Failed to install standalone app PathClassLoader\n");
      fflush(stderr);
    }
  } else {
    fprintf(stderr, "[RT] No standalone class path; leaving system class loader unset\n");
    fflush(stderr);
  }

  // Skip InitNonZygoteOrPostFork in standalone builds -- it starts SignalCatcher thread
  // which crashes when ThreadGroup is not initialized
  fprintf(stderr, "[RT] Skipping InitNonZygoteOrPostFork (standalone build)\n"); fflush(stderr);

  {
    ScopedObjectAccess soa(self);
    fprintf(stderr, "[RT] Skipping StartDaemonThreads (standalone build)\n"); fflush(stderr);
    // Clear any local refs leaked from lib loading / class init before assert
    {
      JNIEnv* env = self->GetJniEnv();
      env->PushLocalFrame(16);
      env->PopLocalFrame(nullptr);
    }

    callbacks_->NextRuntimePhase(RuntimePhaseCallback::RuntimePhase::kInit);
  }

  VLOG(startup) << "Runtime::Start exiting";
  finished_starting_ = true;

  if (trace_config_.get() != nullptr && trace_config_->trace_file != "") {
    ScopedThreadStateChange tsc(self, ThreadState::kWaitingForMethodTracingStart);
    int flags = 0;
    if (trace_config_->clock_source == TraceClockSource::kDual) {
      flags = Trace::TraceFlag::kTraceClockSourceWallClock |
              Trace::TraceFlag::kTraceClockSourceThreadCpu;
    } else if (trace_config_->clock_source == TraceClockSource::kWall) {
      flags = Trace::TraceFlag::kTraceClockSourceWallClock;
    } else if (TraceClockSource::kThreadCpu == trace_config_->clock_source) {
      flags = Trace::TraceFlag::kTraceClockSourceThreadCpu;
    } else {
      LOG(ERROR) << "Unexpected clock source";
    }
    Trace::Start(trace_config_->trace_file.c_str(),
                 static_cast<int>(trace_config_->trace_file_size),
                 flags,
                 trace_config_->trace_output_mode,
                 trace_config_->trace_mode,
                 0);
  }

  // In case we have a profile path passed as a command line argument,
  // register the current class path for profiling now. Note that we cannot do
  // this before we create the JIT and having it here is the most convenient way.
  // This is used when testing profiles with dalvikvm command as there is no
  // framework to register the dex files for profiling.
  if (jit_.get() != nullptr && jit_options_->GetSaveProfilingInfo() &&
      !jit_options_->GetProfileSaverOptions().GetProfilePath().empty()) {
    std::vector<std::string> dex_filenames;
    Split(class_path_string_, ':', &dex_filenames);

    // We pass "" as the package name because at this point we don't know it. It could be the
    // Zygote or it could be a dalvikvm cmd line execution. The package name will be re-set during
    // post-fork or during RegisterAppInfo.
    //
    // Also, it's ok to pass "" to the ref profile filename. It indicates we don't have
    // a reference profile.
    RegisterAppInfo(
        /*package_name=*/ "",
        dex_filenames,
        jit_options_->GetProfileSaverOptions().GetProfilePath(),
        /*ref_profile_filename=*/ "",
        kVMRuntimePrimaryApk);
  }

  return true;
}

void Runtime::EndThreadBirth() REQUIRES(Locks::runtime_shutdown_lock_) {
  DCHECK_GT(threads_being_born_, 0U);
  threads_being_born_--;
  if (shutting_down_started_ && threads_being_born_ == 0) {
    shutdown_cond_->Broadcast(Thread::Current());
  }
}

void Runtime::InitNonZygoteOrPostFork(
    JNIEnv* env,
    bool is_system_server,
    // This is true when we are initializing a child-zygote. It requires
    // native bridge initialization to be able to run guest native code in
    // doPreload().
    bool is_child_zygote,
    NativeBridgeAction action,
    const char* isa,
    bool profile_system_server) {
  if (is_native_bridge_loaded_) {
    switch (action) {
      case NativeBridgeAction::kUnload:
        UnloadNativeBridge();
        is_native_bridge_loaded_ = false;
        break;
      case NativeBridgeAction::kInitialize:
        InitializeNativeBridge(env, isa);
        break;
    }
  }

  if (is_child_zygote) {
    // If creating a child-zygote we only initialize native bridge. The rest of
    // runtime post-fork logic would spin up threads for Binder and JDWP.
    // Instead, the Java side of the child process will call a static main in a
    // class specified by the parent.
    return;
  }

  DCHECK(!IsZygote());

  if (is_system_server) {
    // Register the system server code paths.
    // TODO: Ideally this should be done by the VMRuntime#RegisterAppInfo. However, right now
    // the method is only called when we set up the profile. It should be called all the time
    // (simillar to the apps). Once that's done this manual registration can be removed.
    const char* system_server_classpath = getenv("SYSTEMSERVERCLASSPATH");
    if (system_server_classpath == nullptr || (strlen(system_server_classpath) == 0)) {
      LOG(WARNING) << "System server class path not set";
    } else {
      std::vector<std::string> jars = android::base::Split(system_server_classpath, ":");
      app_info_.RegisterAppInfo("android",
                                jars,
                                /*profile_output_filename=*/ "",
                                /*ref_profile_filename=*/ "",
                                AppInfo::CodeType::kPrimaryApk);
    }

    // Set the system server package name to "android".
    // This is used to tell the difference between samples provided by system server
    // and samples generated by other apps when processing boot image profiles.
    SetProcessPackageName("android");
    if (profile_system_server) {
      jit_options_->SetWaitForJitNotificationsToSaveProfile(false);
      VLOG(profiler) << "Enabling system server profiles";
    }
  }

  // Create the thread pool for loading app images.
  // Avoid creating the runtime thread pool for system server since it will not be used and would
  // waste memory.
  if (!is_system_server &&
      android::base::GetBoolProperty("dalvik.vm.parallel-image-loading", false)) {
    ScopedTrace timing("CreateThreadPool");
    constexpr size_t kStackSize = 64 * KB;
    constexpr size_t kMaxRuntimeWorkers = 4u;
    const size_t num_workers =
        std::min(static_cast<size_t>(std::thread::hardware_concurrency()), kMaxRuntimeWorkers);
    MutexLock mu(Thread::Current(), *Locks::runtime_thread_pool_lock_);
    CHECK(thread_pool_ == nullptr);
    thread_pool_.reset(
        ThreadPool::Create("Runtime", num_workers, /*create_peers=*/false, kStackSize));
    thread_pool_->StartWorkers(Thread::Current());
  }

  // Reset the gc performance data and metrics at zygote fork so that the events from
  // before fork aren't attributed to an app.
  heap_->ResetGcPerformanceInfo();
  GetMetrics()->Reset();

  if (AreMetricsInitialized()) {
    // Now that we know if we are an app or system server, reload the metrics reporter config
    // in case there are any difference.
    metrics::ReportingConfig metrics_config =
        metrics::ReportingConfig::FromFlags(is_system_server);

    metrics_reporter_->ReloadConfig(metrics_config);

    metrics::SessionData session_data{metrics::SessionData::CreateDefault()};
    // Start the session id from 1 to avoid clashes with the default value.
    // (better for debugability)
    session_data.session_id = GetRandomNumber<int64_t>(1, std::numeric_limits<int64_t>::max());
    // TODO: set session_data.compilation_reason and session_data.compiler_filter
    metrics_reporter_->MaybeStartBackgroundThread(session_data);
    // Also notify about any updates to the app info.
    metrics_reporter_->NotifyAppInfoUpdated(&app_info_);
  }

  StartSignalCatcher();

  ScopedObjectAccess soa(Thread::Current());
  if (IsPerfettoHprofEnabled() &&
      (Dbg::IsJdwpAllowed() || IsProfileable() || IsProfileableFromShell() || IsJavaDebuggable() ||
       Runtime::Current()->IsSystemServer())) {
    std::string err;
    ScopedTrace tr("perfetto_hprof init.");
    ScopedThreadSuspension sts(Thread::Current(), ThreadState::kNative);
    if (!EnsurePerfettoPlugin(&err)) {
      LOG(WARNING) << "Failed to load perfetto_hprof: " << err;
    }
  }
  if (IsPerfettoJavaHeapStackProfEnabled() &&
      (Dbg::IsJdwpAllowed() || IsProfileable() || IsProfileableFromShell() || IsJavaDebuggable() ||
       Runtime::Current()->IsSystemServer())) {
    // Marker used for dev tracing similar to above markers.
    ScopedTrace tr("perfetto_javaheapprof init.");
  }
  if (Runtime::Current()->IsSystemServer()) {
    std::string err;
    ScopedTrace tr("odrefresh and device stats logging");
    ScopedThreadSuspension sts(Thread::Current(), ThreadState::kNative);
    // Report stats if available. This should be moved into ART Services when they are ready.
    if (!odrefresh::UploadStatsIfAvailable(&err)) {
      LOG(WARNING) << "Failed to upload odrefresh metrics: " << err;
    }
    metrics::SetupCallbackForDeviceStatus();
  }

  if (LIKELY(automatically_set_jni_ids_indirection_) && CanSetJniIdType()) {
    if (IsJavaDebuggable()) {
      SetJniIdType(JniIdType::kIndices);
    } else {
      SetJniIdType(JniIdType::kPointer);
    }
  }
  ATraceIntegerValue(
      "profilebootclasspath",
      static_cast<int>(jit_options_->GetProfileSaverOptions().GetProfileBootClassPath()));
  // Start the JDWP thread. If the command-line debugger flags specified "suspend=y",
  // this will pause the runtime (in the internal debugger implementation), so we probably want
  // this to come last.
  GetRuntimeCallbacks()->StartDebugger();
}

void Runtime::StartSignalCatcher() {
  if (!is_zygote_) {
    signal_catcher_ = new SignalCatcher();
  }
}

bool Runtime::IsShuttingDown(Thread* self) {
  MutexLock mu(self, *Locks::runtime_shutdown_lock_);
  return IsShuttingDownLocked();
}

void Runtime::StartDaemonThreads() {
  ScopedTrace trace(__FUNCTION__);
  VLOG(startup) << "Runtime::StartDaemonThreads entering";

  Thread* self = Thread::Current();

  DCHECK_EQ(self->GetState(), ThreadState::kRunnable);

  WellKnownClasses::java_lang_Daemons_start->InvokeStatic<'V'>(self);
  if (UNLIKELY(self->IsExceptionPending())) {
    LOG(FATAL) << "Error starting java.lang.Daemons: " << self->GetException()->Dump();
  }

  VLOG(startup) << "Runtime::StartDaemonThreads exiting";
}

static size_t OpenBootDexFiles(ArrayRef<const std::string> dex_filenames,
                               ArrayRef<const std::string> dex_locations,
                               ArrayRef<File> dex_files,
                               std::vector<std::unique_ptr<const DexFile>>* out_dex_files) {
  DCHECK(out_dex_files != nullptr) << "OpenDexFiles: out-param is nullptr";
  size_t failure_count = 0;
  for (size_t i = 0; i < dex_filenames.size(); i++) {
    const char* dex_filename = dex_filenames[i].c_str();
    const char* dex_location = dex_locations[i].c_str();
    File noFile;
    File* file = i < dex_files.size() ? &dex_files[i] : &noFile;
    static constexpr bool kVerifyChecksum = true;
    std::string error_msg;
    if (!OS::FileExists(dex_filename) && file->IsValid()) {
      LOG(WARNING) << "Skipping non-existent dex file '" << dex_filename << "'";
      continue;
    }
    bool verify = Runtime::Current()->IsVerificationEnabled();
    ArtDexFileLoader dex_file_loader(dex_filename, file, dex_location);
    if (!dex_file_loader.Open(verify, kVerifyChecksum, &error_msg, out_dex_files)) {
      LOG(WARNING) << "Failed to open .dex from file '" << dex_filename << "' / fd " << file->Fd()
                   << ": " << error_msg;
      ++failure_count;
    }
    if (file->IsValid()) {
      bool close_ok = file->Close();
      DCHECK(close_ok) << dex_filename;
    }
  }
  return failure_count;
}

void Runtime::SetSentinel(ObjPtr<mirror::Object> sentinel) {
  CHECK(sentinel_.Read() == nullptr);
  CHECK(sentinel != nullptr);
  CHECK(!heap_->IsMovableObject(sentinel));
  sentinel_ = GcRoot<mirror::Object>(sentinel);
}

GcRoot<mirror::Object> Runtime::GetSentinel() {
  return sentinel_;
}

static inline void CreatePreAllocatedException(Thread* self,
                                               Runtime* runtime,
                                               GcRoot<mirror::Throwable>* exception,
                                               const char* exception_class_descriptor,
                                               const char* msg)
    REQUIRES_SHARED(Locks::mutator_lock_) {
  DCHECK_EQ(self, Thread::Current());
  ClassLinker* class_linker = runtime->GetClassLinker();
  // Allocate an object without initializing the class to allow non-trivial Throwable.<clinit>().
  ObjPtr<mirror::Class> klass = class_linker->FindSystemClass(self, exception_class_descriptor);
  CHECK(klass != nullptr);
  gc::AllocatorType allocator_type = runtime->GetHeap()->GetCurrentAllocator();
  ObjPtr<mirror::Throwable> exception_object = ObjPtr<mirror::Throwable>::DownCast(
      klass->Alloc(self, allocator_type));
  CHECK(exception_object != nullptr);
  *exception = GcRoot<mirror::Throwable>(exception_object);
  // Initialize the "detailMessage" field.
  ObjPtr<mirror::String> message = mirror::String::AllocFromModifiedUtf8(self, msg);
  CHECK(message != nullptr);
  ObjPtr<mirror::Class> throwable = GetClassRoot<mirror::Throwable>(class_linker);
  ArtField* detailMessageField =
      throwable->FindDeclaredInstanceField("detailMessage", "Ljava/lang/String;");
  CHECK(detailMessageField != nullptr);
  detailMessageField->SetObject</* kTransactionActive= */ false>(exception->Read(), message);
}

std::string Runtime::GetApexVersions(ArrayRef<const std::string> boot_class_path_locations) {
  std::vector<std::string_view> bcp_apexes;
  for (std::string_view jar : boot_class_path_locations) {
    std::string_view apex = ApexNameFromLocation(jar);
    if (!apex.empty()) {
      bcp_apexes.push_back(apex);
    }
  }
  static const char* kApexFileName = "/apex/apex-info-list.xml";
  // Start with empty markers.
  std::string empty_apex_versions(bcp_apexes.size(), '/');
  // When running on host or chroot, we just use empty markers.
  if (!kIsTargetBuild || !OS::FileExists(kApexFileName)) {
    return empty_apex_versions;
  }
#ifdef ART_TARGET_ANDROID
  if (access(kApexFileName, R_OK) != 0) {
    PLOG(WARNING) << "Failed to read " << kApexFileName;
    return empty_apex_versions;
  }
  auto info_list = apex::readApexInfoList(kApexFileName);
  if (!info_list.has_value()) {
    LOG(WARNING) << "Failed to parse " << kApexFileName;
    return empty_apex_versions;
  }

  std::string result;
  std::map<std::string_view, const apex::ApexInfo*> apex_infos;
  for (const apex::ApexInfo& info : info_list->getApexInfo()) {
    if (info.getIsActive()) {
      apex_infos.emplace(info.getModuleName(), &info);
    }
  }
  for (const std::string_view& str : bcp_apexes) {
    auto info = apex_infos.find(str);
    if (info == apex_infos.end() || info->second->getIsFactory()) {
      result += '/';
    } else {
      // In case lastUpdateMillis field is populated in apex-info-list.xml, we
      // prefer to use it as version scheme. If the field is missing we
      // fallback to the version code of the APEX.
      uint64_t version = info->second->hasLastUpdateMillis()
          ? info->second->getLastUpdateMillis()
          : info->second->getVersionCode();
      android::base::StringAppendF(&result, "/%" PRIu64, version);
    }
  }
  return result;
#else
  return empty_apex_versions;  // Not an Android build.
#endif
}

void Runtime::InitializeApexVersions() {
  apex_versions_ =
      GetApexVersions(ArrayRef<const std::string>(Runtime::Current()->GetBootClassPathLocations()));
}

void Runtime::ReloadAllFlags(const std::string& caller) {
  FlagBase::ReloadAllFlags(caller);
}

static std::vector<File> FileFdsToFileObjects(std::vector<int>&& fds) {
  std::vector<File> files;
  files.reserve(fds.size());
  for (int fd : fds) {
    files.push_back(File(fd, /*check_usage=*/false));
  }
  return files;
}

inline static uint64_t GetThreadSuspendTimeout(const RuntimeArgumentMap* runtime_options) {
  auto suspend_timeout_opt = runtime_options->GetOptional(RuntimeArgumentMap::ThreadSuspendTimeout);
  return suspend_timeout_opt.has_value() ?
             suspend_timeout_opt.value().GetNanoseconds() :
             ThreadList::kDefaultThreadSuspendTimeout *
                 android::base::GetIntProperty("ro.hw_timeout_multiplier", 1);
}

bool Runtime::Init(RuntimeArgumentMap&& runtime_options_in) {
  // (b/30160149): protect subprocesses from modifications to LD_LIBRARY_PATH, etc.
  // Take a snapshot of the environment at the time the runtime was created, for use by Exec, etc.
  env_snapshot_.TakeSnapshot();

#ifdef ART_PAGE_SIZE_AGNOSTIC
  gPageSize.AllowAccess();
#endif

  using Opt = RuntimeArgumentMap;
  Opt runtime_options(std::move(runtime_options_in));
  ScopedTrace trace(__FUNCTION__);
  CHECK_EQ(static_cast<size_t>(sysconf(_SC_PAGE_SIZE)), gPageSize);

  // Reload all the flags value (from system properties and device configs).
  ReloadAllFlags(__FUNCTION__);

  deny_art_apex_data_files_ = runtime_options.Exists(Opt::DenyArtApexDataFiles);
  if (deny_art_apex_data_files_) {
    // We will run slower without those files if the system has taken an ART APEX update.
    LOG(WARNING) << "ART APEX data files are untrusted.";
  }

  // Early override for logging output.
  if (runtime_options.Exists(Opt::UseStderrLogger)) {
    android::base::SetLogger(android::base::StderrLogger);
  }

  MemMap::Init();

  verifier_missing_kthrow_fatal_ = runtime_options.GetOrDefault(Opt::VerifierMissingKThrowFatal);
  force_java_zygote_fork_loop_ = runtime_options.GetOrDefault(Opt::ForceJavaZygoteForkLoop);
  perfetto_hprof_enabled_ = runtime_options.GetOrDefault(Opt::PerfettoHprof);
  perfetto_javaheapprof_enabled_ = runtime_options.GetOrDefault(Opt::PerfettoJavaHeapStackProf);

  // Try to reserve a dedicated fault page. This is allocated for clobbered registers and sentinels.
  // If we cannot reserve it, log a warning.
  // Note: We allocate this first to have a good chance of grabbing the page. The address (0xebad..)
  //       is out-of-the-way enough that it should not collide with boot image mapping.
  // Note: Don't request an error message. That will lead to a maps dump in the case of failure,
  //       leading to logspam.
  {
    const uintptr_t sentinel_addr =
        RoundDown(static_cast<uintptr_t>(Context::kBadGprBase), gPageSize);
    protected_fault_page_ = MemMap::MapAnonymous("Sentinel fault page",
                                                 reinterpret_cast<uint8_t*>(sentinel_addr),
                                                 gPageSize,
                                                 PROT_NONE,
                                                 /*low_4gb=*/ true,
                                                 /*reuse=*/ false,
                                                 /*reservation=*/ nullptr,
                                                 /*error_msg=*/ nullptr);
    if (!protected_fault_page_.IsValid()) {
      LOG(WARNING) << "Could not reserve sentinel fault page";
    } else if (reinterpret_cast<uintptr_t>(protected_fault_page_.Begin()) != sentinel_addr) {
      LOG(WARNING) << "Could not reserve sentinel fault page at the right address.";
      protected_fault_page_.Reset();
    }
  }

  VLOG(startup) << "Runtime::Init -verbose:startup enabled";

  QuasiAtomic::Startup();

  oat_file_manager_ = new OatFileManager();

  jni_id_manager_.reset(new jni::JniIdManager());

  Thread::SetSensitiveThreadHook(runtime_options.GetOrDefault(Opt::HookIsSensitiveThread));
  Monitor::Init(runtime_options.GetOrDefault(Opt::LockProfThreshold),
                runtime_options.GetOrDefault(Opt::StackDumpLockProfThreshold));

  image_locations_ = runtime_options.ReleaseOrDefault(Opt::Image);

  SetInstructionSet(runtime_options.GetOrDefault(Opt::ImageInstructionSet));
  boot_class_path_ = runtime_options.ReleaseOrDefault(Opt::BootClassPath);
  boot_class_path_locations_ = runtime_options.ReleaseOrDefault(Opt::BootClassPathLocations);
  DCHECK(boot_class_path_locations_.empty() ||
         boot_class_path_locations_.size() == boot_class_path_.size());
  if (boot_class_path_.empty()) {
    LOG(ERROR) << "Boot classpath is empty";
    return false;
  }

  boot_class_path_files_ =
      FileFdsToFileObjects(runtime_options.ReleaseOrDefault(Opt::BootClassPathFds));
  if (!boot_class_path_files_.empty() && boot_class_path_files_.size() != boot_class_path_.size()) {
    LOG(ERROR) << "Number of FDs specified in -Xbootclasspathfds must match the number of JARs in "
               << "-Xbootclasspath.";
    return false;
  }

  boot_class_path_image_files_ =
      FileFdsToFileObjects(runtime_options.ReleaseOrDefault(Opt::BootClassPathImageFds));
  boot_class_path_vdex_files_ =
      FileFdsToFileObjects(runtime_options.ReleaseOrDefault(Opt::BootClassPathVdexFds));
  boot_class_path_oat_files_ =
      FileFdsToFileObjects(runtime_options.ReleaseOrDefault(Opt::BootClassPathOatFds));
  CHECK(boot_class_path_image_files_.empty() ||
        boot_class_path_image_files_.size() == boot_class_path_.size());
  CHECK(boot_class_path_vdex_files_.empty() ||
        boot_class_path_vdex_files_.size() == boot_class_path_.size());
  CHECK(boot_class_path_oat_files_.empty() ||
        boot_class_path_oat_files_.size() == boot_class_path_.size());

  class_path_string_ = runtime_options.ReleaseOrDefault(Opt::ClassPath);

  // PATCHED: In standalone builds, the system classloader is not created (causes SEGV).
  // NOTE: classpath-to-BCP append moved to AFTER boot image loading
  // to prevent boot image validation failure.
  // See Runtime::Start() for the deferred append.

  properties_ = runtime_options.ReleaseOrDefault(Opt::PropertiesList);

  compiler_callbacks_ = runtime_options.GetOrDefault(Opt::CompilerCallbacksPtr);
  must_relocate_ = runtime_options.GetOrDefault(Opt::Relocate);
  is_zygote_ = runtime_options.Exists(Opt::Zygote);
  is_primary_zygote_ = runtime_options.Exists(Opt::PrimaryZygote);
  is_explicit_gc_disabled_ = runtime_options.Exists(Opt::DisableExplicitGC);
  is_eagerly_release_explicit_gc_disabled_ =
      runtime_options.Exists(Opt::DisableEagerlyReleaseExplicitGC);
  image_dex2oat_enabled_ = runtime_options.GetOrDefault(Opt::ImageDex2Oat);
  dump_native_stack_on_sig_quit_ = runtime_options.GetOrDefault(Opt::DumpNativeStackOnSigQuit);
  allow_in_memory_compilation_ = runtime_options.Exists(Opt::AllowInMemoryCompilation);

  if (is_zygote_ || runtime_options.Exists(Opt::OnlyUseTrustedOatFiles)) {
    oat_file_manager_->SetOnlyUseTrustedOatFiles();
  }

  vfprintf_ = runtime_options.GetOrDefault(Opt::HookVfprintf);
  exit_ = runtime_options.GetOrDefault(Opt::HookExit);
  abort_ = runtime_options.GetOrDefault(Opt::HookAbort);

  default_stack_size_ = runtime_options.GetOrDefault(Opt::StackSize);

  compiler_executable_ = runtime_options.ReleaseOrDefault(Opt::Compiler);
  compiler_options_ = runtime_options.ReleaseOrDefault(Opt::CompilerOptions);
  for (const std::string& option : Runtime::Current()->GetCompilerOptions()) {
    if (option == "--debuggable") {
      SetRuntimeDebugState(RuntimeDebugState::kJavaDebuggableAtInit);
      break;
    }
  }
  image_compiler_options_ = runtime_options.ReleaseOrDefault(Opt::ImageCompilerOptions);

  finalizer_timeout_ms_ = runtime_options.GetOrDefault(Opt::FinalizerTimeoutMs);
  max_spins_before_thin_lock_inflation_ =
      runtime_options.GetOrDefault(Opt::MaxSpinsBeforeThinLockInflation);

  monitor_list_ = new MonitorList;
  monitor_pool_ = MonitorPool::Create();
  thread_list_ = new ThreadList(GetThreadSuspendTimeout(&runtime_options));
  intern_table_ = new InternTable;

  monitor_timeout_enable_ = runtime_options.GetOrDefault(Opt::MonitorTimeoutEnable);
  int monitor_timeout_ms = runtime_options.GetOrDefault(Opt::MonitorTimeout);
  if (monitor_timeout_ms < Monitor::kMonitorTimeoutMinMs) {
    LOG(WARNING) << "Monitor timeout too short: Increasing";
    monitor_timeout_ms = Monitor::kMonitorTimeoutMinMs;
  }
  if (monitor_timeout_ms >= Monitor::kMonitorTimeoutMaxMs) {
    LOG(WARNING) << "Monitor timeout too long: Decreasing";
    monitor_timeout_ms = Monitor::kMonitorTimeoutMaxMs - 1;
  }
  monitor_timeout_ns_ = MsToNs(monitor_timeout_ms);

  verify_ = runtime_options.GetOrDefault(Opt::Verify);

  target_sdk_version_ = runtime_options.GetOrDefault(Opt::TargetSdkVersion);

  // Set hidden API enforcement policy. The checks are disabled by default and
  // we only enable them if:
  // (a) runtime was started with a command line flag that enables the checks, or
  // (b) Zygote forked a new process that is not exempt (see ZygoteHooks).
  hidden_api_policy_ = runtime_options.GetOrDefault(Opt::HiddenApiPolicy);
  DCHECK_IMPLIES(is_zygote_, hidden_api_policy_ == hiddenapi::EnforcementPolicy::kDisabled);

  // Set core platform API enforcement policy. The checks are disabled by default and
  // can be enabled with a command line flag. AndroidRuntime will pass the flag if
  // a system property is set.
  core_platform_api_policy_ = runtime_options.GetOrDefault(Opt::CorePlatformApiPolicy);
  if (core_platform_api_policy_ != hiddenapi::EnforcementPolicy::kDisabled) {
    LOG(INFO) << "Core platform API reporting enabled, enforcing="
        << (core_platform_api_policy_ == hiddenapi::EnforcementPolicy::kEnabled ? "true" : "false");
  }

  // Dex2Oat's Runtime does not need the signal chain or the fault handler
  // and it passes the `NoSigChain` option to `Runtime` to indicate this.
  no_sig_chain_ = runtime_options.Exists(Opt::NoSigChain);
  force_native_bridge_ = runtime_options.Exists(Opt::ForceNativeBridge);

  Split(runtime_options.GetOrDefault(Opt::CpuAbiList), ',', &cpu_abilist_);

  fingerprint_ = runtime_options.ReleaseOrDefault(Opt::Fingerprint);

  if (runtime_options.GetOrDefault(Opt::Interpret)) {
    GetInstrumentation()->ForceInterpretOnly();
  }

  zygote_max_failed_boots_ = runtime_options.GetOrDefault(Opt::ZygoteMaxFailedBoots);
  experimental_flags_ = runtime_options.GetOrDefault(Opt::Experimental);
  is_low_memory_mode_ = runtime_options.Exists(Opt::LowMemoryMode);
  madvise_willneed_total_dex_size_ = runtime_options.GetOrDefault(Opt::MadviseWillNeedVdexFileSize);
  madvise_willneed_odex_filesize_ = runtime_options.GetOrDefault(Opt::MadviseWillNeedOdexFileSize);
  madvise_willneed_art_filesize_ = runtime_options.GetOrDefault(Opt::MadviseWillNeedArtFileSize);

  jni_ids_indirection_ = runtime_options.GetOrDefault(Opt::OpaqueJniIds);
  automatically_set_jni_ids_indirection_ =
      runtime_options.GetOrDefault(Opt::AutoPromoteOpaqueJniIds);

  plugins_ = runtime_options.ReleaseOrDefault(Opt::Plugins);
  agent_specs_ = runtime_options.ReleaseOrDefault(Opt::AgentPath);
  // TODO Add back in -agentlib
  // for (auto lib : runtime_options.ReleaseOrDefault(Opt::AgentLib)) {
  //   agents_.push_back(lib);
  // }

  float foreground_heap_growth_multiplier;
  if (is_low_memory_mode_ && !runtime_options.Exists(Opt::ForegroundHeapGrowthMultiplier)) {
    // If low memory mode, use 1.0 as the multiplier by default.
    foreground_heap_growth_multiplier = 1.0f;
  } else {
    // Extra added to the default heap growth multiplier for concurrent GC
    // compaction algorithms. This is done for historical reasons.
    // TODO: remove when we revisit heap configurations.
    foreground_heap_growth_multiplier =
        runtime_options.GetOrDefault(Opt::ForegroundHeapGrowthMultiplier) + 1.0f;
  }
  XGcOption xgc_option = runtime_options.GetOrDefault(Opt::GcOption);

  // Generational CC collection is currently only compatible with Baker read barriers.
  bool use_generational_cc = kUseBakerReadBarrier && xgc_option.generational_cc;

  // Cache the apex versions.
  InitializeApexVersions();

  BackgroundGcOption background_gc =
      gUseReadBarrier ? BackgroundGcOption(gc::kCollectorTypeCCBackground) :
                        (gUseUserfaultfd ? BackgroundGcOption(gc::kCollectorTypeCMCBackground) :
                                           runtime_options.GetOrDefault(Opt::BackgroundGc));

  heap_ = new gc::Heap(runtime_options.GetOrDefault(Opt::MemoryInitialSize),
                       runtime_options.GetOrDefault(Opt::HeapGrowthLimit),
                       runtime_options.GetOrDefault(Opt::HeapMinFree),
                       runtime_options.GetOrDefault(Opt::HeapMaxFree),
                       runtime_options.GetOrDefault(Opt::HeapTargetUtilization),
                       foreground_heap_growth_multiplier,
                       runtime_options.GetOrDefault(Opt::StopForNativeAllocs),
                       runtime_options.GetOrDefault(Opt::MemoryMaximumSize),
                       runtime_options.GetOrDefault(Opt::NonMovingSpaceCapacity),
                       GetBootClassPath(),
                       GetBootClassPathLocations(),
                       GetBootClassPathFiles(),
                       GetBootClassPathImageFiles(),
                       GetBootClassPathVdexFiles(),
                       GetBootClassPathOatFiles(),
                       image_locations_,
                       instruction_set_,
                       // Override the collector type to CC if the read barrier config.
                       gUseReadBarrier ? gc::kCollectorTypeCC : xgc_option.collector_type_,
                       background_gc,
                       runtime_options.GetOrDefault(Opt::LargeObjectSpace),
                       runtime_options.GetOrDefault(Opt::LargeObjectThreshold),
                       runtime_options.GetOrDefault(Opt::ParallelGCThreads),
                       runtime_options.GetOrDefault(Opt::ConcGCThreads),
                       runtime_options.Exists(Opt::LowMemoryMode),
                       runtime_options.GetOrDefault(Opt::LongPauseLogThreshold),
                       runtime_options.GetOrDefault(Opt::LongGCLogThreshold),
                       runtime_options.Exists(Opt::IgnoreMaxFootprint),
                       runtime_options.GetOrDefault(Opt::AlwaysLogExplicitGcs),
                       runtime_options.GetOrDefault(Opt::UseTLAB),
                       xgc_option.verify_pre_gc_heap_,
                       xgc_option.verify_pre_sweeping_heap_,
                       xgc_option.verify_post_gc_heap_,
                       xgc_option.verify_pre_gc_rosalloc_,
                       xgc_option.verify_pre_sweeping_rosalloc_,
                       xgc_option.verify_post_gc_rosalloc_,
                       xgc_option.gcstress_,
                       xgc_option.measure_,
                       runtime_options.GetOrDefault(Opt::EnableHSpaceCompactForOOM),
                       use_generational_cc,
                       runtime_options.GetOrDefault(Opt::HSpaceCompactForOOMMinIntervalsMs),
                       runtime_options.Exists(Opt::DumpRegionInfoBeforeGC),
                       runtime_options.Exists(Opt::DumpRegionInfoAfterGC));

  dump_gc_performance_on_shutdown_ = runtime_options.Exists(Opt::DumpGCPerformanceOnShutdown);

  bool has_explicit_jdwp_options = runtime_options.Get(Opt::JdwpOptions) != nullptr;
  jdwp_options_ = runtime_options.GetOrDefault(Opt::JdwpOptions);
  jdwp_provider_ = CanonicalizeJdwpProvider(runtime_options.GetOrDefault(Opt::JdwpProvider),
                                            IsJavaDebuggable());
  switch (jdwp_provider_) {
    case JdwpProvider::kNone: {
      VLOG(jdwp) << "Disabling all JDWP support.";
      if (!jdwp_options_.empty()) {
        bool has_transport = jdwp_options_.find("transport") != std::string::npos;
        std::string adb_connection_args =
            std::string("  -XjdwpProvider:adbconnection -XjdwpOptions:") + jdwp_options_;
        if (has_explicit_jdwp_options) {
          LOG(WARNING) << "Jdwp options given when jdwp is disabled! You probably want to enable "
                      << "jdwp with one of:" << std::endl
                      << "  -Xplugin:libopenjdkjvmti" << (kIsDebugBuild ? "d" : "") << ".so "
                      << "-agentpath:libjdwp.so=" << jdwp_options_ << std::endl
                      << (has_transport ? "" : adb_connection_args);
        }
      }
      break;
    }
    case JdwpProvider::kAdbConnection: {
      constexpr const char* plugin_name = kIsDebugBuild ? "libadbconnectiond.so"
                                                        : "libadbconnection.so";
      plugins_.push_back(Plugin::Create(plugin_name));
      break;
    }
    case JdwpProvider::kUnset: {
      LOG(FATAL) << "Illegal jdwp provider " << jdwp_provider_ << " was not filtered out!";
    }
  }
  callbacks_->AddThreadLifecycleCallback(Dbg::GetThreadLifecycleCallback());

  jit_options_.reset(jit::JitOptions::CreateFromRuntimeArguments(runtime_options));
  if (IsAotCompiler()) {
    // If we are already the compiler at this point, we must be dex2oat. Don't create the jit in
    // this case.
    // If runtime_options doesn't have UseJIT set to true then CreateFromRuntimeArguments returns
    // null and we don't create the jit.
    jit_options_->SetUseJitCompilation(false);
    jit_options_->SetSaveProfilingInfo(false);
  } else {
    // Westlake's portable runtime target is interpreter-first and must not depend
    // on Android JIT code-cache behavior. Keep all app/framework Java dispatch on
    // interpreter/GenericJNI bridges while the standalone entrypoint model is being
    // made OHOS-safe.
    jit_options_->SetUseJitCompilation(false);
    jit_options_->SetSaveProfilingInfo(false);
    fprintf(stderr, "[PFCUT] Standalone runtime forcing JIT/profiling off\n");
    fflush(stderr);
  }

  // Use MemMap arena pool for jit, malloc otherwise. Malloc arenas are faster to allocate but
  // can't be trimmed as easily.
  const bool use_malloc = IsAotCompiler();
  if (use_malloc) {
    arena_pool_.reset(new MallocArenaPool());
    jit_arena_pool_.reset(new MallocArenaPool());
  } else {
    arena_pool_.reset(new MemMapArenaPool(/* low_4gb= */ false));
    jit_arena_pool_.reset(new MemMapArenaPool(/* low_4gb= */ false, "CompilerMetadata"));
  }

  // For 64 bit compilers, it needs to be in low 4GB in the case where we are cross compiling for a
  // 32 bit target. In this case, we have 32 bit pointers in the dex cache arrays which can't hold
  // when we have 64 bit ArtMethod pointers.
  const bool low_4gb = IsAotCompiler() && Is64BitInstructionSet(kRuntimeISA);
  if (gUseUserfaultfd) {
    linear_alloc_arena_pool_.reset(new GcVisitedArenaPool(low_4gb, IsZygote()));
  } else if (low_4gb) {
    linear_alloc_arena_pool_.reset(new MemMapArenaPool(low_4gb));
  }
  linear_alloc_.reset(CreateLinearAlloc());
  startup_linear_alloc_.store(CreateLinearAlloc(), std::memory_order_relaxed);

  small_lrt_allocator_ = new jni::SmallLrtAllocator();

  // PATCH: Skip signal handlers when running in-process (as .so in host app).
  // The host app's ART already owns the signal chain. Our interpreter doesn't need
  // signal-based implicit null/stack checks — we check explicitly.
  if (!is_zygote_ && getenv("WESTLAKE_INPROCESS") != nullptr) {
    fprintf(stderr, "[WestlakeART] Skipping signal handler init (in-process mode)\n");
  } else {
    BlockSignals();
    InitPlatformSignalHandlers();
  }

  // Change the implicit checks flags based on runtime architecture.
  switch (kRuntimeISA) {
    case InstructionSet::kArm64:
      implicit_suspend_checks_ = true;
      FALLTHROUGH_INTENDED;
    case InstructionSet::kArm:
    case InstructionSet::kThumb2:
    case InstructionSet::kRiscv64:
    case InstructionSet::kX86:
    case InstructionSet::kX86_64:
      implicit_null_checks_ = true;
      // Historical note: Installing stack protection was not playing well with Valgrind.
      implicit_so_checks_ = true;
      break;
    default:
      // Keep the defaults.
      break;
  }

  if (getenv("WESTLAKE_INPROCESS") != nullptr) {
    no_sig_chain_ = true;  // Disable all signal-based checks
    implicit_suspend_checks_ = false;
    implicit_so_checks_ = false;
    implicit_null_checks_ = false;
  }
  fault_manager.Init(!no_sig_chain_);
  if (!no_sig_chain_) {
    if (HandlesSignalsInCompiledCode()) {
      // These need to be in a specific order.  The null point check handler must be
      // after the suspend check and stack overflow check handlers.
      //
      // Note: the instances attach themselves to the fault manager and are handled by it. The
      //       manager will delete the instance on Shutdown().
      if (implicit_suspend_checks_) {
        new SuspensionHandler(&fault_manager);
      }

      if (implicit_so_checks_) {
        new StackOverflowHandler(&fault_manager);
      }

      if (implicit_null_checks_) {
        new NullPointerHandler(&fault_manager);
      }

      if (kEnableJavaStackTraceHandler) {
        new JavaStackTraceHandler(&fault_manager);
      }

      if (interpreter::CanRuntimeUseNterp()) {
        // Nterp code can use signal handling just like the compiled managed code.
        OatQuickMethodHeader* nterp_header = OatQuickMethodHeader::NterpMethodHeader;
        fault_manager.AddGeneratedCodeRange(nterp_header->GetCode(), nterp_header->GetCodeSize());
      }
    }
  }

  verifier_logging_threshold_ms_ = runtime_options.GetOrDefault(Opt::VerifierLoggingThreshold);

  std::string error_msg;
  java_vm_ = JavaVMExt::Create(this, runtime_options, &error_msg);
  if (java_vm_.get() == nullptr) {
    LOG(ERROR) << "Could not initialize JavaVMExt: " << error_msg;
    return false;
  }

  // Add the JniEnv handler.
  // TODO Refactor this stuff.
  java_vm_->AddEnvironmentHook(JNIEnvExt::GetEnvHandler);

  Thread::Startup();

  // ClassLinker needs an attached thread, but we can't fully attach a thread without creating
  // objects. We can't supply a thread group yet; it will be fixed later. Since we are the main
  // thread, we do not get a java peer.
  Thread* self = Thread::Attach("main", false, nullptr, false, /* should_run_callbacks= */ true);
  CHECK_EQ(self->GetThreadId(), ThreadList::kMainThreadId);
  CHECK(self != nullptr);

  self->SetIsRuntimeThread(IsAotCompiler());

  // Set us to runnable so tools using a runtime can allocate and GC by default
  self->TransitionFromSuspendedToRunnable();

  // Now we're attached, we can take the heap locks and validate the heap.
  GetHeap()->EnableObjectValidation();

  CHECK_GE(GetHeap()->GetContinuousSpaces().size(), 1U);

  if (UNLIKELY(IsAotCompiler())) {
    class_linker_ = compiler_callbacks_->CreateAotClassLinker(intern_table_);
  } else {
    class_linker_ = new ClassLinker(
        intern_table_,
        runtime_options.GetOrDefault(Opt::FastClassNotFoundException));
  }
  bool boot_image_usable = false;
  if (GetHeap()->HasBootImageSpace()) {
    bool result = class_linker_->InitFromBootImage(&error_msg);
    if (!result) {
      LOG(WARNING) << "Could not initialize from image: " << error_msg;
      LOG(WARNING) << "Falling back to imageless mode (boot image has stale references)";
      error_msg.clear();
      // Fall through to imageless init below.
    } else {
      boot_image_usable = true;
      // Entry points in boot image are stale (from dex2oat binary) but harmless:
      // art_method.cc forces ALL methods through EnterInterpreterFromInvoke.
      fprintf(stderr, "[RT] Boot image loaded successfully (entry points handled by interpreter)\n");
    }
  }
  if (boot_image_usable) {
    if (kIsDebugBuild) {
      for (auto image_space : GetHeap()->GetBootImageSpaces()) {
        image_space->VerifyImageAllocations();
      }
    }
    {
      ScopedTrace trace2("AddImageStringsToTable");
      for (gc::space::ImageSpace* image_space : heap_->GetBootImageSpaces()) {
        GetInternTable()->AddImageStringsToTable(image_space, VoidFunctor());
      }
    }

    const size_t total_components = gc::space::ImageSpace::GetNumberOfComponents(
        ArrayRef<gc::space::ImageSpace* const>(heap_->GetBootImageSpaces()));
    if (total_components != GetBootClassPath().size()) {
      // The boot image did not contain all boot class path components. Load the rest.
      CHECK_LT(total_components, GetBootClassPath().size());
      size_t start = total_components;
      DCHECK_LT(start, GetBootClassPath().size());
      std::vector<std::unique_ptr<const DexFile>> extra_boot_class_path;
      if (runtime_options.Exists(Opt::BootClassPathDexList)) {
        extra_boot_class_path.swap(*runtime_options.GetOrDefault(Opt::BootClassPathDexList));
      } else {
        ArrayRef<File> bcp_files = start < GetBootClassPathFiles().size() ?
                                       ArrayRef<File>(GetBootClassPathFiles()).SubArray(start) :
                                       ArrayRef<File>();
        OpenBootDexFiles(ArrayRef<const std::string>(GetBootClassPath()).SubArray(start),
                         ArrayRef<const std::string>(GetBootClassPathLocations()).SubArray(start),
                         bcp_files,
                         &extra_boot_class_path);
      }
      class_linker_->AddExtraBootDexFiles(self, std::move(extra_boot_class_path));
    }
    if (IsJavaDebuggable() || jit_options_->GetProfileSaverOptions().GetProfileBootClassPath()) {
      // Deoptimize the boot image if debuggable  as the code may have been compiled non-debuggable.
      // Also deoptimize if we are profiling the boot class path.
      ScopedThreadSuspension sts(self, ThreadState::kNative);
      ScopedSuspendAll ssa(__FUNCTION__);
      DeoptimizeBootImage();
    }
  } else {
    std::vector<std::unique_ptr<const DexFile>> boot_class_path;
    if (runtime_options.Exists(Opt::BootClassPathDexList)) {
      boot_class_path.swap(*runtime_options.GetOrDefault(Opt::BootClassPathDexList));
    } else {
      OpenBootDexFiles(ArrayRef<const std::string>(GetBootClassPath()),
                       ArrayRef<const std::string>(GetBootClassPathLocations()),
                       ArrayRef<File>(GetBootClassPathFiles()),
                       &boot_class_path);
    }
    if (!class_linker_->InitWithoutImage(std::move(boot_class_path), &error_msg)) {
      LOG(ERROR) << "Could not initialize without image: " << error_msg;
      return false;
    }

    // TODO: Should we move the following to InitWithoutImage?
    SetInstructionSet(instruction_set_);
    for (uint32_t i = 0; i < kCalleeSaveSize; i++) {
      CalleeSaveType type = CalleeSaveType(i);
      if (!HasCalleeSaveMethod(type)) {
        SetCalleeSaveMethod(CreateCalleeSaveMethod(), type);
      }
    }
  }

  // Now that the boot image space is set, cache the boot classpath checksums,
  // to be used when validating oat files.
  ArrayRef<gc::space::ImageSpace* const> image_spaces(GetHeap()->GetBootImageSpaces());
  ArrayRef<const DexFile* const> bcp_dex_files(GetClassLinker()->GetBootClassPath());
  boot_class_path_checksums_ = gc::space::ImageSpace::GetBootClassPathChecksums(image_spaces,
                                                                                bcp_dex_files);

  CHECK(class_linker_ != nullptr);

  if (runtime_options.Exists(Opt::MethodTrace)) {
    trace_config_.reset(new TraceConfig());
    trace_config_->trace_file = runtime_options.ReleaseOrDefault(Opt::MethodTraceFile);
    trace_config_->trace_file_size = runtime_options.ReleaseOrDefault(Opt::MethodTraceFileSize);
    trace_config_->trace_mode = Trace::TraceMode::kMethodTracing;
    trace_config_->trace_output_mode = runtime_options.Exists(Opt::MethodTraceStreaming) ?
                                           TraceOutputMode::kStreaming :
                                           TraceOutputMode::kFile;
    trace_config_->clock_source = runtime_options.GetOrDefault(Opt::MethodTraceClock);
  }

  // TODO: Remove this in a follow up CL. This isn't used anywhere.
  Trace::SetDefaultClockSource(runtime_options.GetOrDefault(Opt::ProfileClock));

  if (GetHeap()->HasBootImageSpace()) {
    const ImageHeader& image_header = GetHeap()->GetBootImageSpaces()[0]->GetImageHeader();
    ObjPtr<mirror::ObjectArray<mirror::Object>> boot_image_live_objects =
        ObjPtr<mirror::ObjectArray<mirror::Object>>::DownCast(
            image_header.GetImageRoot(ImageHeader::kBootImageLiveObjects));
    pre_allocated_OutOfMemoryError_when_throwing_exception_ = GcRoot<mirror::Throwable>(
        boot_image_live_objects->Get(ImageHeader::kOomeWhenThrowingException)->AsThrowable());
    DCHECK(pre_allocated_OutOfMemoryError_when_throwing_exception_.Read()->GetClass()
               ->DescriptorEquals("Ljava/lang/OutOfMemoryError;"));
    pre_allocated_OutOfMemoryError_when_throwing_oome_ = GcRoot<mirror::Throwable>(
        boot_image_live_objects->Get(ImageHeader::kOomeWhenThrowingOome)->AsThrowable());
    DCHECK(pre_allocated_OutOfMemoryError_when_throwing_oome_.Read()->GetClass()
               ->DescriptorEquals("Ljava/lang/OutOfMemoryError;"));
    pre_allocated_OutOfMemoryError_when_handling_stack_overflow_ = GcRoot<mirror::Throwable>(
        boot_image_live_objects->Get(ImageHeader::kOomeWhenHandlingStackOverflow)->AsThrowable());
    DCHECK(pre_allocated_OutOfMemoryError_when_handling_stack_overflow_.Read()->GetClass()
               ->DescriptorEquals("Ljava/lang/OutOfMemoryError;"));
    pre_allocated_NoClassDefFoundError_ = GcRoot<mirror::Throwable>(
        boot_image_live_objects->Get(ImageHeader::kNoClassDefFoundError)->AsThrowable());
    DCHECK(pre_allocated_NoClassDefFoundError_.Read()->GetClass()
               ->DescriptorEquals("Ljava/lang/NoClassDefFoundError;"));
  } else {
    // Pre-allocate an OutOfMemoryError for the case when we fail to
    // allocate the exception to be thrown.
    CreatePreAllocatedException(self,
                                this,
                                &pre_allocated_OutOfMemoryError_when_throwing_exception_,
                                "Ljava/lang/OutOfMemoryError;",
                                "OutOfMemoryError thrown while trying to throw an exception; "
                                    "no stack trace available");
    // Pre-allocate an OutOfMemoryError for the double-OOME case.
    CreatePreAllocatedException(self,
                                this,
                                &pre_allocated_OutOfMemoryError_when_throwing_oome_,
                                "Ljava/lang/OutOfMemoryError;",
                                "OutOfMemoryError thrown while trying to throw OutOfMemoryError; "
                                    "no stack trace available");
    // Pre-allocate an OutOfMemoryError for the case when we fail to
    // allocate while handling a stack overflow.
    CreatePreAllocatedException(self,
                                this,
                                &pre_allocated_OutOfMemoryError_when_handling_stack_overflow_,
                                "Ljava/lang/OutOfMemoryError;",
                                "OutOfMemoryError thrown while trying to handle a stack overflow; "
                                    "no stack trace available");

    // Pre-allocate a NoClassDefFoundError for the common case of failing to find a system class
    // ahead of checking the application's class loader.
    CreatePreAllocatedException(self,
                                this,
                                &pre_allocated_NoClassDefFoundError_,
                                "Ljava/lang/NoClassDefFoundError;",
                                "Class not found using the boot class loader; "
                                    "no stack trace available");
  }

  // Class-roots are setup, we can now finish initializing the JniIdManager.
  GetJniIdManager()->Init(self);

  // Initialize metrics only for the Zygote process or
  // if explicitly enabled via command line argument.
  if (IsZygote() || gFlags.MetricsForceEnable.GetValue()) {
    LOG(INFO) << "Initializing ART runtime metrics";
    InitMetrics();
  }

  // Runtime initialization is largely done now.
  // We load plugins first since that can modify the runtime state slightly.
  // Load all plugins
  {
    // The init method of plugins expect the state of the thread to be non runnable.
    ScopedThreadSuspension sts(self, ThreadState::kNative);
    for (auto& plugin : plugins_) {
      std::string err;
      if (!plugin.Load(&err)) {
        LOG(FATAL) << plugin << " failed to load: " << err;
      }
    }
  }

  // Look for a native bridge.
  //
  // The intended flow here is, in the case of a running system:
  //
  // Runtime::Init() (zygote):
  //   LoadNativeBridge -> dlopen from cmd line parameter.
  //  |
  //  V
  // Runtime::Start() (zygote):
  //   No-op wrt native bridge.
  //  |
  //  | start app
  //  V
  // DidForkFromZygote(action)
  //   action = kUnload -> dlclose native bridge.
  //   action = kInitialize -> initialize library
  //
  //
  // The intended flow here is, in the case of a simple dalvikvm call:
  //
  // Runtime::Init():
  //   LoadNativeBridge -> dlopen from cmd line parameter.
  //  |
  //  V
  // Runtime::Start():
  //   DidForkFromZygote(kInitialize) -> try to initialize any native bridge given.
  //   No-op wrt native bridge.
  {
    std::string native_bridge_file_name = runtime_options.ReleaseOrDefault(Opt::NativeBridge);
    is_native_bridge_loaded_ = LoadNativeBridge(native_bridge_file_name);
  }

  // Startup agents
  // TODO Maybe we should start a new thread to run these on. Investigate RI behavior more.
  for (auto& agent_spec : agent_specs_) {
    // TODO Check err
    int res = 0;
    std::string err = "";
    ti::LoadError error;
    std::unique_ptr<ti::Agent> agent = agent_spec.Load(&res, &error, &err);

    if (agent != nullptr) {
      agents_.push_back(std::move(agent));
      continue;
    }

    switch (error) {
      case ti::LoadError::kInitializationError:
        LOG(FATAL) << "Unable to initialize agent!";
        UNREACHABLE();

      case ti::LoadError::kLoadingError:
        LOG(ERROR) << "Unable to load an agent: " << err;
        continue;

      case ti::LoadError::kNoError:
        break;
    }
    LOG(FATAL) << "Unreachable";
    UNREACHABLE();
  }
  {
    ScopedObjectAccess soa(self);
    callbacks_->NextRuntimePhase(RuntimePhaseCallback::RuntimePhase::kInitialAgents);
  }

  if (IsZygote() && IsPerfettoHprofEnabled()) {
    constexpr const char* plugin_name = kIsDebugBuild ?
        "libperfetto_hprofd.so" : "libperfetto_hprof.so";
    // Load eagerly in Zygote to improve app startup times. This will make
    // subsequent dlopens for the library no-ops.
    dlopen(plugin_name, RTLD_NOW | RTLD_LOCAL);
  }

  VLOG(startup) << "Runtime::Init exiting";

  return true;
}

void Runtime::InitMetrics() {
  metrics::ReportingConfig metrics_config = metrics::ReportingConfig::FromFlags();
  metrics_reporter_ = metrics::MetricsReporter::Create(metrics_config, this);
}

void Runtime::RequestMetricsReport(bool synchronous) {
  if (AreMetricsInitialized()) {
    metrics_reporter_->RequestMetricsReport(synchronous);
  }
}

bool Runtime::EnsurePluginLoaded(const char* plugin_name, std::string* error_msg) {
  // Is the plugin already loaded?
  for (const Plugin& p : plugins_) {
    if (p.GetLibrary() == plugin_name) {
      return true;
    }
  }
  Plugin new_plugin = Plugin::Create(plugin_name);

  if (!new_plugin.Load(error_msg)) {
    return false;
  }
  plugins_.push_back(std::move(new_plugin));
  return true;
}

bool Runtime::EnsurePerfettoPlugin(std::string* error_msg) {
  constexpr const char* plugin_name = kIsDebugBuild ?
    "libperfetto_hprofd.so" : "libperfetto_hprof.so";
  return EnsurePluginLoaded(plugin_name, error_msg);
}

static bool EnsureJvmtiPlugin(Runtime* runtime,
                              std::string* error_msg) {
  // TODO Rename Dbg::IsJdwpAllowed is IsDebuggingAllowed.
  DCHECK(Dbg::IsJdwpAllowed() || !runtime->IsJavaDebuggable())
      << "Being debuggable requires that jdwp (i.e. debugging) is allowed.";
  // Is the process debuggable? Otherwise, do not attempt to load the plugin unless we are
  // specifically allowed.
  if (!Dbg::IsJdwpAllowed()) {
    *error_msg = "Process is not allowed to load openjdkjvmti plugin. Process must be debuggable";
    return false;
  }

  constexpr const char* plugin_name = kIsDebugBuild ? "libopenjdkjvmtid.so" : "libopenjdkjvmti.so";
  return runtime->EnsurePluginLoaded(plugin_name, error_msg);
}

// Attach a new agent and add it to the list of runtime agents
//
// TODO: once we decide on the threading model for agents,
//   revisit this and make sure we're doing this on the right thread
//   (and we synchronize access to any shared data structures like "agents_")
//
void Runtime::AttachAgent(JNIEnv* env, const std::string& agent_arg, jobject class_loader) {
  std::string error_msg;
  if (!EnsureJvmtiPlugin(this, &error_msg)) {
    LOG(WARNING) << "Could not load plugin: " << error_msg;
    ScopedObjectAccess soa(Thread::Current());
    ThrowIOException("%s", error_msg.c_str());
    return;
  }

  ti::AgentSpec agent_spec(agent_arg);

  int res = 0;
  ti::LoadError error;
  std::unique_ptr<ti::Agent> agent = agent_spec.Attach(env, class_loader, &res, &error, &error_msg);

  if (agent != nullptr) {
    agents_.push_back(std::move(agent));
  } else {
    LOG(WARNING) << "Agent attach failed (result=" << error << ") : " << error_msg;
    ScopedObjectAccess soa(Thread::Current());
    ThrowIOException("%s", error_msg.c_str());
  }
}

void Runtime::InitNativeMethods() {
  VLOG(startup) << "Runtime::InitNativeMethods entering";
  Thread* self = Thread::Current();
  JNIEnv* env = self->GetJniEnv();

  // Must be in the kNative state for calling native methods (JNI_OnLoad code).
  CHECK_EQ(self->GetState(), ThreadState::kNative);

  // Then set up libjavacore / libopenjdk / libicu_jni ,which are just
  // a regular JNI libraries with a regular JNI_OnLoad. Most JNI libraries can
  // just use System.loadLibrary, but libcore can't because it's the library
  // that implements System.loadLibrary!
  //
  // By setting calling class to java.lang.Object, the caller location for these
  // JNI libs is core-oj.jar in the ART APEX, and hence they are loaded from the
  // com_android_art linker namespace.
  jclass java_lang_Object;
  {
    // Use global JNI reference to keep the local references empty. If we allocated a
    // local reference here, the `PushLocalFrame(128)` that these internal libraries do
    // in their `JNI_OnLoad()` would reserve a lot of unnecessary space due to rounding.
    ScopedObjectAccess soa(self);
    java_lang_Object = reinterpret_cast<jclass>(
        GetJavaVM()->AddGlobalRef(self, GetClassRoot<mirror::Object>(GetClassLinker())));
  }

  // libicu_jni has to be initialized before libopenjdk{d} due to runtime dependency from
  // libopenjdk{d} to Icu4cMetadata native methods in libicu_jni. See http://b/143888405
  {
    std::string error_msg;
    if (!java_vm_->LoadNativeLibrary(
          env, "libicu_jni.so", nullptr, java_lang_Object, &error_msg)) {
      LOG(FATAL) << "LoadNativeLibrary failed for \"libicu_jni.so\": " << error_msg;
    }
  }
  {
    std::string error_msg;
    if (!java_vm_->LoadNativeLibrary(
          env, "libjavacore.so", nullptr, java_lang_Object, &error_msg)) {
      LOG(FATAL) << "LoadNativeLibrary failed for \"libjavacore.so\": " << error_msg;
    }
  }
  {
    constexpr const char* kOpenJdkLibrary = kIsDebugBuild
                                                ? "libopenjdkd.so"
                                                : "libopenjdk.so";
    std::string error_msg;
    if (!java_vm_->LoadNativeLibrary(
          env, kOpenJdkLibrary, nullptr, java_lang_Object, &error_msg)) {
      LOG(FATAL) << "LoadNativeLibrary failed for \"" << kOpenJdkLibrary << "\": " << error_msg;
    }
  }
  env->DeleteGlobalRef(java_lang_Object);

  // Initialize well known classes that may invoke runtime native methods.
  WellKnownClasses::LateInit(env);

  VLOG(startup) << "Runtime::InitNativeMethods exiting";
}

void Runtime::ReclaimArenaPoolMemory() {
  arena_pool_->LockReclaimMemory();
}

void Runtime::InitThreadGroups(Thread* self) {
  ScopedObjectAccess soa(self);
  ArtField* main_thread_group_field = WellKnownClasses::java_lang_ThreadGroup_mainThreadGroup;
  ArtField* system_thread_group_field = WellKnownClasses::java_lang_ThreadGroup_systemThreadGroup;
  // Note: This is running before `ClassLinker::RunRootClinits()`, so we cannot rely on
  // `ThreadGroup` and `Thread` being initialized.
  // TODO: Clean up initialization order after all well-known methods are converted to `ArtMethod*`
  // (and therefore the `WellKnownClasses::Init()` shall not initialize any classes).
  StackHandleScope<2u> hs(self);
  Handle<mirror::Class> thread_group_class =
      hs.NewHandle(main_thread_group_field->GetDeclaringClass());
  bool initialized = GetClassLinker()->EnsureInitialized(
      self, thread_group_class, /*can_init_fields=*/ true, /*can_init_parents=*/ true);
  CHECK(initialized);
  Handle<mirror::Class> thread_class = hs.NewHandle(WellKnownClasses::java_lang_Thread.Get());
  initialized = GetClassLinker()->EnsureInitialized(
      self, thread_class, /*can_init_fields=*/ true, /*can_init_parents=*/ true);
  CHECK(initialized);
  main_thread_group_ =
      soa.Vm()->AddGlobalRef(self, main_thread_group_field->GetObject(thread_group_class.Get()));
  CHECK_IMPLIES(main_thread_group_ == nullptr, IsAotCompiler());
  system_thread_group_ =
      soa.Vm()->AddGlobalRef(self, system_thread_group_field->GetObject(thread_group_class.Get()));
  CHECK_IMPLIES(system_thread_group_ == nullptr, IsAotCompiler());
}

jobject Runtime::GetMainThreadGroup() const {
  // Standalone builds may not have thread groups initialized
  return main_thread_group_;
}

jobject Runtime::GetSystemThreadGroup() const {
  // Standalone builds may not have thread groups initialized
  return system_thread_group_;
}

jobject Runtime::GetSystemClassLoader() const {
  // In standalone builds with boot images from partial class init, the system
  // class loader may not be set. Allow null to avoid crashing at startup.
  if (system_class_loader_ == nullptr && !IsAotCompiler()) {
    LOG(WARNING) << "system_class_loader_ is null in non-AOT mode (standalone build)";
  }
  return system_class_loader_;
}

// Helper macro: attempt JNI native registration, clear exception on failure.
// Core JARs may not have all methods expected by Android 15 ART runtime.
#define TRY_REGISTER(fn) do { \
    fprintf(stderr, "[RT]   TRY_REGISTER(" #fn ") ...\n"); fflush(stderr); \
    fn(env); \
    if (env->ExceptionCheck()) { \
      LOG(WARNING) << "RegisterRuntimeNativeMethods: " #fn " failed (clearing exception)"; \
      env->ExceptionClear(); \
    } \
    fprintf(stderr, "[RT]   TRY_REGISTER(" #fn ") done\n"); fflush(stderr); \
  } while (false)

void Runtime::RegisterRuntimeNativeMethods(JNIEnv* env) {
  // Register Throwable FIRST: other registrations may fail and create exceptions,
  // which call nativeFillInStackTrace. With speed-compiled boot images, this native
  // method must already be registered before any exception can be thrown.
  TRY_REGISTER(register_java_lang_Throwable);
  TRY_REGISTER(register_dalvik_system_DexFile);
  TRY_REGISTER(register_dalvik_system_BaseDexClassLoader);
  TRY_REGISTER(register_dalvik_system_VMDebug);
  TRY_REGISTER(real_register_dalvik_system_VMRuntime);
  TRY_REGISTER(register_dalvik_system_VMStack);
  TRY_REGISTER(register_dalvik_system_ZygoteHooks);
  TRY_REGISTER(register_java_lang_Class);
  fprintf(stderr, "[RT]   SKIP_REGISTER(register_java_lang_Character) (DAYU600 standalone)\n");
  fflush(stderr);
  TRY_REGISTER(register_java_lang_Object);
  TRY_REGISTER(register_java_lang_invoke_MethodHandle);
  TRY_REGISTER(register_java_lang_invoke_MethodHandleImpl);
  TRY_REGISTER(register_java_lang_ref_FinalizerReference);
  TRY_REGISTER(register_java_lang_reflect_Array);
  TRY_REGISTER(register_java_lang_reflect_Constructor);
  TRY_REGISTER(register_java_lang_reflect_Executable);
  TRY_REGISTER(register_java_lang_reflect_Field);
  TRY_REGISTER(register_java_lang_reflect_Method);
  TRY_REGISTER(register_java_lang_reflect_Parameter);
  TRY_REGISTER(register_java_lang_reflect_Proxy);
  TRY_REGISTER(register_java_lang_ref_Reference);
  TRY_REGISTER(register_java_lang_StackStreamFactory);
  TRY_REGISTER(register_java_lang_String);
  TRY_REGISTER(register_java_lang_StringFactory);
  TRY_REGISTER(register_java_lang_System);
  TRY_REGISTER(register_java_lang_Thread);
  // register_java_lang_Throwable already registered above
  TRY_REGISTER(register_java_lang_VMClassLoader);
  TRY_REGISTER(register_java_util_concurrent_atomic_AtomicLong);
  TRY_REGISTER(register_jdk_internal_misc_Unsafe);
  TRY_REGISTER(register_libcore_io_Memory);
  TRY_REGISTER(register_libcore_util_CharsetUtils);
  TRY_REGISTER(register_org_apache_harmony_dalvik_ddmc_DdmServer);
  TRY_REGISTER(register_org_apache_harmony_dalvik_ddmc_DdmVmInternal);
  TRY_REGISTER(register_sun_misc_Unsafe);
}
#undef TRY_REGISTER

std::ostream& operator<<(std::ostream& os, const DeoptimizationKind& kind) {
  os << GetDeoptimizationKindName(kind);
  return os;
}

void Runtime::DumpDeoptimizations(std::ostream& os) {
  for (size_t i = 0; i <= static_cast<size_t>(DeoptimizationKind::kLast); ++i) {
    if (deoptimization_counts_[i] != 0) {
      os << "Number of "
         << GetDeoptimizationKindName(static_cast<DeoptimizationKind>(i))
         << " deoptimizations: "
         << deoptimization_counts_[i]
         << "\n";
    }
  }
}

std::optional<uint64_t> Runtime::SiqQuitNanoTime() const {
  return signal_catcher_ != nullptr ? signal_catcher_->SiqQuitNanoTime() : std::nullopt;
}

void Runtime::DumpForSigQuit(std::ostream& os) {
  // Print backtraces first since they are important do diagnose ANRs,
  // and ANRs can often be trimmed to limit upload size.
  thread_list_->DumpForSigQuit(os);
  GetClassLinker()->DumpForSigQuit(os);
  GetInternTable()->DumpForSigQuit(os);
  GetJavaVM()->DumpForSigQuit(os);
  GetHeap()->DumpForSigQuit(os);
  oat_file_manager_->DumpForSigQuit(os);
  if (GetJit() != nullptr) {
    GetJit()->DumpForSigQuit(os);
  } else {
    os << "Running non JIT\n";
  }
  DumpDeoptimizations(os);
  TrackedAllocators::Dump(os);
  GetMetrics()->DumpForSigQuit(os);
  os << "\n";

  BaseMutex::DumpAll(os);

  // Inform anyone else who is interested in SigQuit.
  {
    ScopedObjectAccess soa(Thread::Current());
    callbacks_->SigQuit();
  }
}

void Runtime::DumpLockHolders(std::ostream& os) {
  pid_t mutator_lock_owner = Locks::mutator_lock_->GetExclusiveOwnerTid();
  pid_t thread_list_lock_owner = GetThreadList()->GetLockOwner();
  pid_t classes_lock_owner = GetClassLinker()->GetClassesLockOwner();
  pid_t dex_lock_owner = GetClassLinker()->GetDexLockOwner();
  if ((mutator_lock_owner | thread_list_lock_owner | classes_lock_owner | dex_lock_owner) != 0) {
    os << "Mutator lock exclusive owner tid: " << mutator_lock_owner << "\n"
       << "ThreadList lock owner tid: " << thread_list_lock_owner << "\n"
       << "ClassLinker classes lock owner tid: " << classes_lock_owner << "\n"
       << "ClassLinker dex lock owner tid: " << dex_lock_owner << "\n";
  }
}

void Runtime::SetStatsEnabled(bool new_state) {
  Thread* self = Thread::Current();
  MutexLock mu(self, *Locks::instrument_entrypoints_lock_);
  if (new_state == true) {
    GetStats()->Clear(~0);
    // TODO: wouldn't it make more sense to clear _all_ threads' stats?
    self->GetStats()->Clear(~0);
    if (stats_enabled_ != new_state) {
      GetInstrumentation()->InstrumentQuickAllocEntryPointsLocked();
    }
  } else if (stats_enabled_ != new_state) {
    GetInstrumentation()->UninstrumentQuickAllocEntryPointsLocked();
  }
  stats_enabled_ = new_state;
}

void Runtime::ResetStats(int kinds) {
  GetStats()->Clear(kinds & 0xffff);
  // TODO: wouldn't it make more sense to clear _all_ threads' stats?
  Thread::Current()->GetStats()->Clear(kinds >> 16);
}

uint64_t Runtime::GetStat(int kind) {
  RuntimeStats* stats;
  if (kind < (1<<16)) {
    stats = GetStats();
  } else {
    stats = Thread::Current()->GetStats();
    kind >>= 16;
  }
  switch (kind) {
  case KIND_ALLOCATED_OBJECTS:
    return stats->allocated_objects;
  case KIND_ALLOCATED_BYTES:
    return stats->allocated_bytes;
  case KIND_FREED_OBJECTS:
    return stats->freed_objects;
  case KIND_FREED_BYTES:
    return stats->freed_bytes;
  case KIND_GC_INVOCATIONS:
    return stats->gc_for_alloc_count;
  case KIND_CLASS_INIT_COUNT:
    return stats->class_init_count;
  case KIND_CLASS_INIT_TIME:
    return stats->class_init_time_ns;
  case KIND_EXT_ALLOCATED_OBJECTS:
  case KIND_EXT_ALLOCATED_BYTES:
  case KIND_EXT_FREED_OBJECTS:
  case KIND_EXT_FREED_BYTES:
    return 0;  // backward compatibility
  default:
    LOG(FATAL) << "Unknown statistic " << kind;
    UNREACHABLE();
  }
}

void Runtime::BlockSignals() {
  SignalSet signals;
  signals.Add(SIGPIPE);
  // SIGQUIT is used to dump the runtime's state (including stack traces).
  signals.Add(SIGQUIT);
  // SIGUSR1 is used to initiate a GC.
  signals.Add(SIGUSR1);
  signals.Block();
}

bool Runtime::AttachCurrentThread(const char* thread_name, bool as_daemon, jobject thread_group,
                                  bool create_peer, bool should_run_callbacks) {
  ScopedTrace trace(__FUNCTION__);
  Thread* self = Thread::Attach(thread_name,
                                as_daemon,
                                thread_group,
                                create_peer,
                                should_run_callbacks);
  // Run ThreadGroup.add to notify the group that this thread is now started.
  if (self != nullptr && create_peer && !IsAotCompiler()) {
    ScopedObjectAccess soa(self);
    self->NotifyThreadGroup(soa, thread_group);
  }
  return self != nullptr;
}

void Runtime::DetachCurrentThread(bool should_run_callbacks) {
  ScopedTrace trace(__FUNCTION__);
  Thread* self = Thread::Current();
  if (self == nullptr) {
    LOG(FATAL) << "attempting to detach thread that is not attached";
  }
  if (self->HasManagedStack()) {
    LOG(FATAL) << *Thread::Current() << " attempting to detach while still running code";
  }
  thread_list_->Unregister(self, should_run_callbacks);
}

mirror::Throwable* Runtime::GetPreAllocatedOutOfMemoryErrorWhenThrowingException() {
  mirror::Throwable* oome = pre_allocated_OutOfMemoryError_when_throwing_exception_.Read();
  if (oome == nullptr) {
    LOG(ERROR) << "Failed to return pre-allocated OOME-when-throwing-exception";
  }
  return oome;
}

mirror::Throwable* Runtime::GetPreAllocatedOutOfMemoryErrorWhenThrowingOOME() {
  mirror::Throwable* oome = pre_allocated_OutOfMemoryError_when_throwing_oome_.Read();
  if (oome == nullptr) {
    LOG(ERROR) << "Failed to return pre-allocated OOME-when-throwing-OOME";
  }
  return oome;
}

mirror::Throwable* Runtime::GetPreAllocatedOutOfMemoryErrorWhenHandlingStackOverflow() {
  mirror::Throwable* oome = pre_allocated_OutOfMemoryError_when_handling_stack_overflow_.Read();
  if (oome == nullptr) {
    LOG(ERROR) << "Failed to return pre-allocated OOME-when-handling-stack-overflow";
  }
  return oome;
}

mirror::Throwable* Runtime::GetPreAllocatedNoClassDefFoundError() {
  mirror::Throwable* ncdfe = pre_allocated_NoClassDefFoundError_.Read();
  if (ncdfe == nullptr) {
    LOG(ERROR) << "Failed to return pre-allocated NoClassDefFoundError";
  }
  return ncdfe;
}

void Runtime::VisitConstantRoots(RootVisitor* visitor) {
  // Visiting the roots of these ArtMethods is not currently required since all the GcRoots are
  // null.
  BufferedRootVisitor<16> buffered_visitor(visitor, RootInfo(kRootVMInternal));
  const PointerSize pointer_size = GetClassLinker()->GetImagePointerSize();
  if (HasResolutionMethod()) {
    resolution_method_->VisitRoots(buffered_visitor, pointer_size);
  }
  if (HasImtConflictMethod()) {
    imt_conflict_method_->VisitRoots(buffered_visitor, pointer_size);
  }
  if (imt_unimplemented_method_ != nullptr) {
    imt_unimplemented_method_->VisitRoots(buffered_visitor, pointer_size);
  }
  for (uint32_t i = 0; i < kCalleeSaveSize; ++i) {
    auto* m = reinterpret_cast<ArtMethod*>(callee_save_methods_[i]);
    if (m != nullptr) {
      m->VisitRoots(buffered_visitor, pointer_size);
    }
  }
}

void Runtime::VisitConcurrentRoots(RootVisitor* visitor, VisitRootFlags flags) {
  // Userfaultfd compaction updates intern-tables and class-tables page-by-page
  // via LinearAlloc. So don't visit them here.
  if (GetHeap()->IsPerformingUffdCompaction()) {
    class_linker_->VisitRoots(visitor, flags, /*visit_class_roots=*/false);
  } else {
    intern_table_->VisitRoots(visitor, flags);
    class_linker_->VisitRoots(visitor, flags, /*visit_class_roots=*/true);
  }
  jni_id_manager_->VisitRoots(visitor);
  heap_->VisitAllocationRecords(visitor);
  if (jit_ != nullptr) {
    jit_->VisitRoots(visitor);
  }
  if ((flags & kVisitRootFlagNewRoots) == 0) {
    // Guaranteed to have no new roots in the constant roots.
    VisitConstantRoots(visitor);
  }
}

void Runtime::VisitNonThreadRoots(RootVisitor* visitor) {
  java_vm_->VisitRoots(visitor);
  sentinel_.VisitRootIfNonNull(visitor, RootInfo(kRootVMInternal));
  pre_allocated_OutOfMemoryError_when_throwing_exception_
      .VisitRootIfNonNull(visitor, RootInfo(kRootVMInternal));
  pre_allocated_OutOfMemoryError_when_throwing_oome_
      .VisitRootIfNonNull(visitor, RootInfo(kRootVMInternal));
  pre_allocated_OutOfMemoryError_when_handling_stack_overflow_
      .VisitRootIfNonNull(visitor, RootInfo(kRootVMInternal));
  pre_allocated_NoClassDefFoundError_.VisitRootIfNonNull(visitor, RootInfo(kRootVMInternal));
  VisitImageRoots(visitor);
  class_linker_->VisitTransactionRoots(visitor);
}

void Runtime::VisitNonConcurrentRoots(RootVisitor* visitor, VisitRootFlags flags) {
  VisitThreadRoots(visitor, flags);
  VisitNonThreadRoots(visitor);
}

void Runtime::VisitThreadRoots(RootVisitor* visitor, VisitRootFlags flags) {
  thread_list_->VisitRoots(visitor, flags);
}

void Runtime::VisitRoots(RootVisitor* visitor, VisitRootFlags flags) {
  VisitNonConcurrentRoots(visitor, flags);
  VisitConcurrentRoots(visitor, flags);
}

void Runtime::VisitReflectiveTargets(ReflectiveValueVisitor *visitor) {
  thread_list_->VisitReflectiveTargets(visitor);
  heap_->VisitReflectiveTargets(visitor);
  jni_id_manager_->VisitReflectiveTargets(visitor);
  callbacks_->VisitReflectiveTargets(visitor);
}

void Runtime::VisitImageRoots(RootVisitor* visitor) {
  // We only confirm that image roots are unchanged.
  if (kIsDebugBuild) {
    for (auto* space : GetHeap()->GetContinuousSpaces()) {
      if (space->IsImageSpace()) {
        auto* image_space = space->AsImageSpace();
        const auto& image_header = image_space->GetImageHeader();
        for (int32_t i = 0, size = image_header.GetImageRoots()->GetLength(); i != size; ++i) {
          mirror::Object* obj =
              image_header.GetImageRoot(static_cast<ImageHeader::ImageRoot>(i)).Ptr();
          if (obj != nullptr) {
            mirror::Object* after_obj = obj;
            visitor->VisitRoot(&after_obj, RootInfo(kRootStickyClass));
            CHECK_EQ(after_obj, obj);
          }
        }
      }
    }
  }
}

static ArtMethod* CreateRuntimeMethod(ClassLinker* class_linker, LinearAlloc* linear_alloc)
    REQUIRES_SHARED(Locks::mutator_lock_) {
  const PointerSize image_pointer_size = class_linker->GetImagePointerSize();
  const size_t method_alignment = ArtMethod::Alignment(image_pointer_size);
  const size_t method_size = ArtMethod::Size(image_pointer_size);
  LengthPrefixedArray<ArtMethod>* method_array = class_linker->AllocArtMethodArray(
      Thread::Current(),
      linear_alloc,
      1);
  ArtMethod* method = &method_array->At(0, method_size, method_alignment);
  CHECK(method != nullptr);
  method->SetDexMethodIndex(dex::kDexNoIndex);
  CHECK(method->IsRuntimeMethod());
  return method;
}

ArtMethod* Runtime::CreateImtConflictMethod(LinearAlloc* linear_alloc) {
  ClassLinker* const class_linker = GetClassLinker();
  ArtMethod* method = CreateRuntimeMethod(class_linker, linear_alloc);
  // When compiling, the code pointer will get set later when the image is loaded.
  const PointerSize pointer_size = GetInstructionSetPointerSize(instruction_set_);
  if (IsAotCompiler()) {
    method->SetEntryPointFromQuickCompiledCodePtrSize(nullptr, pointer_size);
  } else {
    method->SetEntryPointFromQuickCompiledCode(GetQuickImtConflictStub());
  }
  // Create empty conflict table.
  method->SetImtConflictTable(class_linker->CreateImtConflictTable(/*count=*/0u, linear_alloc),
                              pointer_size);
  return method;
}

void Runtime::SetImtConflictMethod(ArtMethod* method) {
  CHECK(method != nullptr);
  CHECK(method->IsRuntimeMethod());
  imt_conflict_method_ = method;
}

ArtMethod* Runtime::CreateResolutionMethod() {
  auto* method = CreateRuntimeMethod(GetClassLinker(), GetLinearAlloc());
  // When compiling, the code pointer will get set later when the image is loaded.
  if (IsAotCompiler()) {
    PointerSize pointer_size = GetInstructionSetPointerSize(instruction_set_);
    method->SetEntryPointFromQuickCompiledCodePtrSize(nullptr, pointer_size);
    method->SetEntryPointFromJniPtrSize(nullptr, pointer_size);
  } else {
    method->SetEntryPointFromQuickCompiledCode(GetQuickResolutionStub());
    method->SetEntryPointFromJni(GetJniDlsymLookupCriticalStub());
  }
  return method;
}

ArtMethod* Runtime::CreateCalleeSaveMethod() {
  auto* method = CreateRuntimeMethod(GetClassLinker(), GetLinearAlloc());
  PointerSize pointer_size = GetInstructionSetPointerSize(instruction_set_);
  method->SetEntryPointFromQuickCompiledCodePtrSize(nullptr, pointer_size);
  DCHECK_NE(instruction_set_, InstructionSet::kNone);
  DCHECK(method->IsRuntimeMethod());
  return method;
}

void Runtime::DisallowNewSystemWeaks() {
  CHECK(!gUseReadBarrier);
  monitor_list_->DisallowNewMonitors();
  intern_table_->ChangeWeakRootState(gc::kWeakRootStateNoReadsOrWrites);
  java_vm_->DisallowNewWeakGlobals();
  heap_->DisallowNewAllocationRecords();
  if (GetJit() != nullptr) {
    GetJit()->GetCodeCache()->DisallowInlineCacheAccess();
  }

  // All other generic system-weak holders.
  for (gc::AbstractSystemWeakHolder* holder : system_weak_holders_) {
    holder->Disallow();
  }
}

void Runtime::AllowNewSystemWeaks() {
  CHECK(!gUseReadBarrier);
  monitor_list_->AllowNewMonitors();
  intern_table_->ChangeWeakRootState(gc::kWeakRootStateNormal);  // TODO: Do this in the sweeping.
  java_vm_->AllowNewWeakGlobals();
  heap_->AllowNewAllocationRecords();
  if (GetJit() != nullptr) {
    GetJit()->GetCodeCache()->AllowInlineCacheAccess();
  }

  // All other generic system-weak holders.
  for (gc::AbstractSystemWeakHolder* holder : system_weak_holders_) {
    holder->Allow();
  }
}

void Runtime::BroadcastForNewSystemWeaks(bool broadcast_for_checkpoint) {
  // This is used for the read barrier case that uses the thread-local
  // Thread::GetWeakRefAccessEnabled() flag and the checkpoint while weak ref access is disabled
  // (see ThreadList::RunCheckpoint).
  monitor_list_->BroadcastForNewMonitors();
  intern_table_->BroadcastForNewInterns();
  java_vm_->BroadcastForNewWeakGlobals();
  heap_->BroadcastForNewAllocationRecords();
  if (GetJit() != nullptr) {
    GetJit()->GetCodeCache()->BroadcastForInlineCacheAccess();
  }

  // All other generic system-weak holders.
  for (gc::AbstractSystemWeakHolder* holder : system_weak_holders_) {
    holder->Broadcast(broadcast_for_checkpoint);
  }
}

void Runtime::SetInstructionSet(InstructionSet instruction_set) {
  instruction_set_ = instruction_set;
  switch (instruction_set) {
    case InstructionSet::kThumb2:
      // kThumb2 is the same as kArm, use the canonical value.
      instruction_set_ = InstructionSet::kArm;
      break;
    case InstructionSet::kArm:
    case InstructionSet::kArm64:
    case InstructionSet::kRiscv64:
    case InstructionSet::kX86:
    case InstructionSet::kX86_64:
      break;
    default:
      UNIMPLEMENTED(FATAL) << instruction_set_;
      UNREACHABLE();
  }
}

void Runtime::ClearInstructionSet() {
  instruction_set_ = InstructionSet::kNone;
}

void Runtime::SetCalleeSaveMethod(ArtMethod* method, CalleeSaveType type) {
  DCHECK_LT(static_cast<uint32_t>(type), kCalleeSaveSize);
  CHECK(method != nullptr);
  callee_save_methods_[static_cast<size_t>(type)] = reinterpret_cast<uintptr_t>(method);
}

void Runtime::ClearCalleeSaveMethods() {
  for (size_t i = 0; i < kCalleeSaveSize; ++i) {
    callee_save_methods_[i] = reinterpret_cast<uintptr_t>(nullptr);
  }
}

void Runtime::RegisterAppInfo(const std::string& package_name,
                              const std::vector<std::string>& code_paths,
                              const std::string& profile_output_filename,
                              const std::string& ref_profile_filename,
                              int32_t code_type) {
  app_info_.RegisterAppInfo(
      package_name,
      code_paths,
      profile_output_filename,
      ref_profile_filename,
      AppInfo::FromVMRuntimeConstants(code_type));

  if (AreMetricsInitialized()) {
    metrics_reporter_->NotifyAppInfoUpdated(&app_info_);
  }

  if (jit_.get() == nullptr) {
    // We are not JITing. Nothing to do.
    return;
  }

  VLOG(profiler) << "Register app with " << profile_output_filename
      << " " << android::base::Join(code_paths, ':');
  VLOG(profiler) << "Reference profile is: " << ref_profile_filename;

  if (profile_output_filename.empty()) {
    LOG(WARNING) << "JIT profile information will not be recorded: profile filename is empty.";
    return;
  }
  if (code_paths.empty()) {
    LOG(WARNING) << "JIT profile information will not be recorded: code paths is empty.";
    return;
  }

  // Framework calls this method for all split APKs. Ignore the calls for the ones with no dex code
  // so that we don't unnecessarily create profiles for them or write bootclasspath profiling info
  // to those profiles.
  bool has_code = false;
  for (const std::string& path : code_paths) {
    std::string error_msg;
    std::optional<uint32_t> checksum;
    std::vector<std::string> dex_locations;
    DexFileLoader loader(path);
    if (!loader.GetMultiDexChecksum(&checksum, &error_msg)) {
      LOG(WARNING) << error_msg;
      continue;
    }
    if (checksum.has_value()) {
      has_code = true;
      break;
    }
  }
  if (!has_code) {
    VLOG(profiler) << ART_FORMAT(
        "JIT profile information will not be recorded: no dex code in '{}'.",
        android::base::Join(code_paths, ','));
    return;
  }

  jit_->StartProfileSaver(profile_output_filename, code_paths, ref_profile_filename);
}

void Runtime::SetFaultMessage(const std::string& message) {
  std::string* new_msg = new std::string(message);
  std::string* cur_msg = fault_message_.exchange(new_msg);
  delete cur_msg;
}

std::string Runtime::GetFaultMessage() {
  // Retrieve the message. Temporarily replace with null so that SetFaultMessage will not delete
  // the string in parallel.
  std::string* cur_msg = fault_message_.exchange(nullptr);

  // Make a copy of the string.
  std::string ret = cur_msg == nullptr ? "" : *cur_msg;

  // Put the message back if it hasn't been updated.
  std::string* null_str = nullptr;
  if (!fault_message_.compare_exchange_strong(null_str, cur_msg)) {
    // Already replaced.
    delete cur_msg;
  }

  return ret;
}

void Runtime::AddCurrentRuntimeFeaturesAsDex2OatArguments(std::vector<std::string>* argv)
    const {
  if (GetInstrumentation()->InterpretOnly()) {
    argv->push_back("--compiler-filter=verify");
  }

  // Make the dex2oat instruction set match that of the launching runtime. If we have multiple
  // architecture support, dex2oat may be compiled as a different instruction-set than that
  // currently being executed.
  std::string instruction_set("--instruction-set=");
  instruction_set += GetInstructionSetString(kRuntimeISA);
  argv->push_back(instruction_set);

  if (InstructionSetFeatures::IsRuntimeDetectionSupported()) {
    argv->push_back("--instruction-set-features=runtime");
  } else {
    std::unique_ptr<const InstructionSetFeatures> features(
        InstructionSetFeatures::FromCppDefines());
    std::string feature_string("--instruction-set-features=");
    feature_string += features->GetFeatureString();
    argv->push_back(feature_string);
  }
}

void Runtime::CreateJit() {
  DCHECK(jit_code_cache_ == nullptr);
  DCHECK(jit_ == nullptr);
  if (kIsDebugBuild && GetInstrumentation()->IsForcedInterpretOnly()) {
    DCHECK(!jit_options_->UseJitCompilation());
  }

  if (!jit_options_->UseJitCompilation() && !jit_options_->GetSaveProfilingInfo()) {
    return;
  }

  if (IsSafeMode()) {
    LOG(INFO) << "Not creating JIT because of SafeMode.";
    return;
  }

  std::string error_msg;
  bool profiling_only = !jit_options_->UseJitCompilation();
  jit_code_cache_.reset(jit::JitCodeCache::Create(profiling_only,
                                                  /*rwx_memory_allowed=*/ true,
                                                  IsZygote(),
                                                  &error_msg));
  if (jit_code_cache_.get() == nullptr) {
    LOG(WARNING) << "Failed to create JIT Code Cache: " << error_msg;
    return;
  }

  jit_ = jit::Jit::Create(jit_code_cache_.get(), jit_options_.get());
  jit_->CreateThreadPool();
}

bool Runtime::CanRelocate() const {
  return !IsAotCompiler();
}

bool Runtime::IsCompilingBootImage() const {
  return IsCompiler() && compiler_callbacks_->IsBootImage();
}

void Runtime::SetResolutionMethod(ArtMethod* method) {
  CHECK(method != nullptr);
  CHECK(method->IsRuntimeMethod()) << method;
  resolution_method_ = method;
}

void Runtime::SetImtUnimplementedMethod(ArtMethod* method) {
  CHECK(method != nullptr);
  CHECK(method->IsRuntimeMethod());
  imt_unimplemented_method_ = method;
}

void Runtime::FixupConflictTables() {
  // We can only do this after the class linker is created.
  const PointerSize pointer_size = GetClassLinker()->GetImagePointerSize();
  if (imt_unimplemented_method_->GetImtConflictTable(pointer_size) == nullptr) {
    imt_unimplemented_method_->SetImtConflictTable(
        ClassLinker::CreateImtConflictTable(/*count=*/0u, GetLinearAlloc(), pointer_size),
        pointer_size);
  }
  if (imt_conflict_method_->GetImtConflictTable(pointer_size) == nullptr) {
    imt_conflict_method_->SetImtConflictTable(
          ClassLinker::CreateImtConflictTable(/*count=*/0u, GetLinearAlloc(), pointer_size),
          pointer_size);
  }
}

void Runtime::DisableVerifier() {
  verify_ = verifier::VerifyMode::kNone;
}

bool Runtime::IsVerificationEnabled() const {
  return verify_ == verifier::VerifyMode::kEnable ||
      verify_ == verifier::VerifyMode::kSoftFail;
}

bool Runtime::IsVerificationSoftFail() const {
  return verify_ == verifier::VerifyMode::kSoftFail;
}

bool Runtime::IsAsyncDeoptimizeable(ArtMethod* method, uintptr_t code) const {
  if (OatQuickMethodHeader::NterpMethodHeader != nullptr) {
    if (OatQuickMethodHeader::NterpMethodHeader->Contains(code)) {
      return true;
    }
  }

  // We only support async deopt (ie the compiled code is not explicitly asking for
  // deopt, but something else like the debugger) in debuggable JIT code.
  // We could look at the oat file where `code` is being defined,
  // and check whether it's been compiled debuggable, but we decided to
  // only rely on the JIT for debuggable apps.
  // The JIT-zygote is not debuggable so we need to be sure to exclude code from the non-private
  // region as well.
  if (GetJit() != nullptr &&
      GetJit()->GetCodeCache()->PrivateRegionContainsPc(reinterpret_cast<const void*>(code))) {
    // If the code is JITed code then check if it was compiled as debuggable.
    const OatQuickMethodHeader* header = method->GetOatQuickMethodHeader(code);
    return CodeInfo::IsDebuggable(header->GetOptimizedCodeInfoPtr());
  }

  return false;
}


LinearAlloc* Runtime::CreateLinearAlloc() {
  ArenaPool* pool = linear_alloc_arena_pool_.get();
  return pool != nullptr
      ? new LinearAlloc(pool, gUseUserfaultfd)
      : new LinearAlloc(arena_pool_.get(), /*track_allocs=*/ false);
}

class Runtime::SetupLinearAllocForZygoteFork : public AllocatorVisitor {
 public:
  explicit SetupLinearAllocForZygoteFork(Thread* self) : self_(self) {}

  bool Visit(LinearAlloc* alloc) override {
    alloc->SetupForPostZygoteFork(self_);
    return true;
  }

 private:
  Thread* self_;
};

void Runtime::SetupLinearAllocForPostZygoteFork(Thread* self) {
  if (gUseUserfaultfd) {
    // Setup all the linear-allocs out there for post-zygote fork. This will
    // basically force the arena allocator to ask for a new arena for the next
    // allocation. All arenas allocated from now on will be in the userfaultfd
    // visited space.
    if (GetLinearAlloc() != nullptr) {
      GetLinearAlloc()->SetupForPostZygoteFork(self);
    }
    if (GetStartupLinearAlloc() != nullptr) {
      GetStartupLinearAlloc()->SetupForPostZygoteFork(self);
    }
    {
      Locks::mutator_lock_->AssertNotHeld(self);
      ReaderMutexLock mu2(self, *Locks::mutator_lock_);
      ReaderMutexLock mu3(self, *Locks::classlinker_classes_lock_);
      SetupLinearAllocForZygoteFork visitor(self);
      GetClassLinker()->VisitAllocators(&visitor);
    }
    static_cast<GcVisitedArenaPool*>(GetLinearAllocArenaPool())->SetupPostZygoteMode();
  }
}

double Runtime::GetHashTableMinLoadFactor() const {
  return is_low_memory_mode_ ? kLowMemoryMinLoadFactor : kNormalMinLoadFactor;
}

double Runtime::GetHashTableMaxLoadFactor() const {
  return is_low_memory_mode_ ? kLowMemoryMaxLoadFactor : kNormalMaxLoadFactor;
}

void Runtime::UpdateProcessState(ProcessState process_state) {
  ProcessState old_process_state = process_state_;
  process_state_ = process_state;
  GetHeap()->UpdateProcessState(old_process_state, process_state);
}

void Runtime::RegisterSensitiveThread() const {
  Thread::SetJitSensitiveThread();
}

// Returns true if JIT compilations are enabled. GetJit() will be not null in this case.
bool Runtime::UseJitCompilation() const {
  return (jit_ != nullptr) && jit_->UseJitCompilation();
}

void Runtime::EnvSnapshot::TakeSnapshot() {
  char** env = GetEnviron();
  for (size_t i = 0; env[i] != nullptr; ++i) {
    name_value_pairs_.emplace_back(new std::string(env[i]));
  }
  // The strings in name_value_pairs_ retain ownership of the c_str, but we assign pointers
  // for quick use by GetSnapshot.  This avoids allocation and copying cost at Exec.
  c_env_vector_.reset(new char*[name_value_pairs_.size() + 1]);
  for (size_t i = 0; env[i] != nullptr; ++i) {
    c_env_vector_[i] = const_cast<char*>(name_value_pairs_[i]->c_str());
  }
  c_env_vector_[name_value_pairs_.size()] = nullptr;
}

char** Runtime::EnvSnapshot::GetSnapshot() const {
  return c_env_vector_.get();
}

void Runtime::AddSystemWeakHolder(gc::AbstractSystemWeakHolder* holder) {
  gc::ScopedGCCriticalSection gcs(Thread::Current(),
                                  gc::kGcCauseAddRemoveSystemWeakHolder,
                                  gc::kCollectorTypeAddRemoveSystemWeakHolder);
  // Note: The ScopedGCCriticalSection also ensures that the rest of the function is in
  //       a critical section.
  system_weak_holders_.push_back(holder);
}

void Runtime::RemoveSystemWeakHolder(gc::AbstractSystemWeakHolder* holder) {
  gc::ScopedGCCriticalSection gcs(Thread::Current(),
                                  gc::kGcCauseAddRemoveSystemWeakHolder,
                                  gc::kCollectorTypeAddRemoveSystemWeakHolder);
  auto it = std::find(system_weak_holders_.begin(), system_weak_holders_.end(), holder);
  if (it != system_weak_holders_.end()) {
    system_weak_holders_.erase(it);
  }
}

RuntimeCallbacks* Runtime::GetRuntimeCallbacks() {
  return callbacks_.get();
}

// Used to update boot image to not use AOT code. This is used when transitioning the runtime to
// java debuggable. This visitor re-initializes the entry points without using AOT code. This also
// disables shared hotness counters so the necessary methods can be JITed more efficiently.
class DeoptimizeBootImageClassVisitor : public ClassVisitor {
 public:
  explicit DeoptimizeBootImageClassVisitor(instrumentation::Instrumentation* instrumentation)
      : instrumentation_(instrumentation) {}

  bool operator()(ObjPtr<mirror::Class> klass) override REQUIRES(Locks::mutator_lock_) {
    DCHECK(Locks::mutator_lock_->IsExclusiveHeld(Thread::Current()));
    auto pointer_size = Runtime::Current()->GetClassLinker()->GetImagePointerSize();
    for (auto& m : klass->GetMethods(pointer_size)) {
      const void* code = m.GetEntryPointFromQuickCompiledCode();
      if (!m.IsInvokable()) {
        continue;
      }
      // For java debuggable runtimes we also deoptimize native methods. For other cases (boot
      // image profiling) we don't need to deoptimize native methods. If this changes also
      // update Instrumentation::CanUseAotCode.
      bool deoptimize_native_methods = Runtime::Current()->IsJavaDebuggable();
      if (Runtime::Current()->GetHeap()->IsInBootImageOatFile(code) &&
          (!m.IsNative() || deoptimize_native_methods) &&
          !m.IsProxyMethod()) {
        instrumentation_->InitializeMethodsCode(&m, /*aot_code=*/ nullptr);
      }

      if (Runtime::Current()->GetJit() != nullptr &&
          Runtime::Current()->GetJit()->GetCodeCache()->IsInZygoteExecSpace(code) &&
          (!m.IsNative() || deoptimize_native_methods)) {
        DCHECK(!m.IsProxyMethod());
        instrumentation_->InitializeMethodsCode(&m, /*aot_code=*/ nullptr);
      }

      if (m.IsPreCompiled()) {
        // Precompilation is incompatible with debuggable, so clear the flag
        // and update the entrypoint in case it has been compiled.
        m.ClearPreCompiled();
        instrumentation_->InitializeMethodsCode(&m, /*aot_code=*/ nullptr);
      }

      // Clear MemorySharedAccessFlags so the boot class methods can be JITed better.
      m.ClearMemorySharedMethod();
    }
    return true;
  }

 private:
  instrumentation::Instrumentation* const instrumentation_;
};

void Runtime::SetRuntimeDebugState(RuntimeDebugState state) {
  if (state != RuntimeDebugState::kJavaDebuggableAtInit) {
    // We never change the state if we started as a debuggable runtime.
    DCHECK(runtime_debug_state_ != RuntimeDebugState::kJavaDebuggableAtInit);
  }
  runtime_debug_state_ = state;
}

void Runtime::DeoptimizeBootImage() {
  // If we've already started and we are setting this runtime to debuggable,
  // we patch entry points of methods in boot image to interpreter bridge, as
  // boot image code may be AOT compiled as not debuggable.
  DeoptimizeBootImageClassVisitor visitor(GetInstrumentation());
  GetClassLinker()->VisitClasses(&visitor);
  jit::Jit* jit = GetJit();
  if (jit != nullptr) {
    // Code previously compiled may not be compiled debuggable.
    jit->GetCodeCache()->TransitionToDebuggable();
  }
}

Runtime::ScopedThreadPoolUsage::ScopedThreadPoolUsage()
    : thread_pool_(Runtime::Current()->AcquireThreadPool()) {}

Runtime::ScopedThreadPoolUsage::~ScopedThreadPoolUsage() {
  Runtime::Current()->ReleaseThreadPool();
}

bool Runtime::DeleteThreadPool() {
  // Make sure workers are started to prevent thread shutdown errors.
  WaitForThreadPoolWorkersToStart();
  std::unique_ptr<ThreadPool> thread_pool;
  {
    MutexLock mu(Thread::Current(), *Locks::runtime_thread_pool_lock_);
    if (thread_pool_ref_count_ == 0) {
      thread_pool = std::move(thread_pool_);
    }
  }
  return thread_pool != nullptr;
}

ThreadPool* Runtime::AcquireThreadPool() {
  MutexLock mu(Thread::Current(), *Locks::runtime_thread_pool_lock_);
  ++thread_pool_ref_count_;
  return thread_pool_.get();
}

void Runtime::ReleaseThreadPool() {
  MutexLock mu(Thread::Current(), *Locks::runtime_thread_pool_lock_);
  CHECK_GT(thread_pool_ref_count_, 0u);
  --thread_pool_ref_count_;
}

void Runtime::WaitForThreadPoolWorkersToStart() {
  // Need to make sure workers are created before deleting the pool.
  ScopedThreadPoolUsage stpu;
  if (stpu.GetThreadPool() != nullptr) {
    stpu.GetThreadPool()->WaitForWorkersToBeCreated();
  }
}

void Runtime::ResetStartupCompleted() {
  startup_completed_.store(false, std::memory_order_seq_cst);
}

bool Runtime::NotifyStartupCompleted() {
  DCHECK(!IsZygote());
  bool expected = false;
  if (!startup_completed_.compare_exchange_strong(expected, true, std::memory_order_seq_cst)) {
    // Right now NotifyStartupCompleted will be called up to twice, once from profiler and up to
    // once externally. For this reason there are no asserts.
    return false;
  }

  VLOG(startup) << app_info_;

  ProfileSaver::NotifyStartupCompleted();

  if (AreMetricsInitialized()) {
    metrics_reporter_->NotifyStartupCompleted();
  }
  return true;
}

void Runtime::NotifyDexFileLoaded() {
  if (AreMetricsInitialized()) {
    metrics_reporter_->NotifyAppInfoUpdated(&app_info_);
  }
}

bool Runtime::GetStartupCompleted() const {
  return startup_completed_.load(std::memory_order_seq_cst);
}

void Runtime::SetSignalHookDebuggable(bool value) {
  SkipAddSignalHandler(value);
}

void Runtime::SetJniIdType(JniIdType t) {
  CHECK(CanSetJniIdType()) << "Not allowed to change id type!";
  if (t == GetJniIdType()) {
    return;
  }
  jni_ids_indirection_ = t;
  JNIEnvExt::ResetFunctionTable();
  WellKnownClasses::HandleJniIdTypeChange(Thread::Current()->GetJniEnv());
}

bool Runtime::IsSystemServerProfiled() const {
  return IsSystemServer() && jit_options_->GetSaveProfilingInfo();
}

bool Runtime::GetOatFilesExecutable() const {
  return !IsAotCompiler() && !IsSystemServerProfiled();
}

void Runtime::MadviseFileForRange(size_t madvise_size_limit_bytes,
                                  size_t map_size_bytes,
                                  const uint8_t* map_begin,
                                  const uint8_t* map_end,
                                  const std::string& file_name) {
  map_begin = AlignDown(map_begin, gPageSize);
  map_size_bytes = RoundUp(map_size_bytes, gPageSize);
#ifdef ART_TARGET_ANDROID
  // Short-circuit the madvise optimization for background processes. This
  // avoids IO and memory contention with foreground processes, particularly
  // those involving app startup.
  // Note: We can only safely short-circuit the madvise on T+, as it requires
  // the framework to always immediately notify ART of process states.
  static const int kApiLevel = android_get_device_api_level();
  const bool accurate_process_state_at_startup = kApiLevel >= __ANDROID_API_T__;
  if (accurate_process_state_at_startup) {
    const Runtime* runtime = Runtime::Current();
    if (runtime != nullptr && !runtime->InJankPerceptibleProcessState()) {
      return;
    }
  }
#endif  // ART_TARGET_ANDROID

  // Ideal blockTransferSize for madvising files (128KiB)
  static constexpr size_t kIdealIoTransferSizeBytes = 128*1024;

  size_t target_size_bytes = std::min<size_t>(map_size_bytes, madvise_size_limit_bytes);

  if (target_size_bytes > 0) {
    ScopedTrace madvising_trace("madvising "
                                + file_name
                                + " size="
                                + std::to_string(target_size_bytes));

    // Based on requested size (target_size_bytes)
    const uint8_t* target_pos = map_begin + target_size_bytes;

    // Clamp endOfFile if its past map_end
    if (target_pos > map_end) {
      target_pos = map_end;
    }

    // Madvise the whole file up to target_pos in chunks of
    // kIdealIoTransferSizeBytes (to MADV_WILLNEED)
    // Note:
    // madvise(MADV_WILLNEED) will prefetch max(fd readahead size, optimal
    // block size for device) per call, hence the need for chunks. (128KB is a
    // good default.)
    for (const uint8_t* madvise_start = map_begin;
         madvise_start < target_pos;
         madvise_start += kIdealIoTransferSizeBytes) {
      void* madvise_addr = const_cast<void*>(reinterpret_cast<const void*>(madvise_start));
      size_t madvise_length = std::min(kIdealIoTransferSizeBytes,
                                       static_cast<size_t>(target_pos - madvise_start));
      int status = madvise(madvise_addr, madvise_length, MADV_WILLNEED);
      // In case of error we stop madvising rest of the file
      if (status < 0) {
        LOG(ERROR) << "Failed to madvise file " << file_name
                   << " for size:" << map_size_bytes
                   << ": " << strerror(errno);
        break;
      }
    }
  }
}

// Return whether a boot image has a profile. This means we'll need to pre-JIT
// methods in that profile for performance.
bool Runtime::HasImageWithProfile() const {
  for (gc::space::ImageSpace* space : GetHeap()->GetBootImageSpaces()) {
    if (!space->GetProfileFiles().empty()) {
      return true;
    }
  }
  return false;
}

void Runtime::AppendToBootClassPath(const std::string& filename, const std::string& location) {
  DCHECK(!DexFileLoader::IsMultiDexLocation(filename));
  boot_class_path_.push_back(filename);
  if (!boot_class_path_locations_.empty()) {
    DCHECK(!DexFileLoader::IsMultiDexLocation(location));
    boot_class_path_locations_.push_back(location);
  }
}

void Runtime::AppendToBootClassPath(
    const std::string& filename,
    const std::string& location,
    const std::vector<std::unique_ptr<const art::DexFile>>& dex_files) {
  AppendToBootClassPath(filename, location);
  ScopedObjectAccess soa(Thread::Current());
  for (const std::unique_ptr<const art::DexFile>& dex_file : dex_files) {
    // The first element must not be at a multi-dex location, while other elements must be.
    DCHECK_NE(DexFileLoader::IsMultiDexLocation(dex_file->GetLocation()),
              dex_file.get() == dex_files.begin()->get());
    GetClassLinker()->AppendToBootClassPath(Thread::Current(), dex_file.get());
  }
}

void Runtime::AppendToBootClassPath(const std::string& filename,
                                    const std::string& location,
                                    const std::vector<const art::DexFile*>& dex_files) {
  AppendToBootClassPath(filename, location);
  ScopedObjectAccess soa(Thread::Current());
  for (const art::DexFile* dex_file : dex_files) {
    // The first element must not be at a multi-dex location, while other elements must be.
    DCHECK_NE(DexFileLoader::IsMultiDexLocation(dex_file->GetLocation()),
              dex_file == *dex_files.begin());
    GetClassLinker()->AppendToBootClassPath(Thread::Current(), dex_file);
  }
}

void Runtime::AppendToBootClassPath(
    const std::string& filename,
    const std::string& location,
    const std::vector<std::pair<const art::DexFile*, ObjPtr<mirror::DexCache>>>&
        dex_files_and_cache) {
  AppendToBootClassPath(filename, location);
  ScopedObjectAccess soa(Thread::Current());
  for (const auto& [dex_file, dex_cache] : dex_files_and_cache) {
    // The first element must not be at a multi-dex location, while other elements must be.
    DCHECK_NE(DexFileLoader::IsMultiDexLocation(dex_file->GetLocation()),
              dex_file == dex_files_and_cache.begin()->first);
    GetClassLinker()->AppendToBootClassPath(dex_file, dex_cache);
  }
}

void Runtime::AddExtraBootDexFiles(const std::string& filename,
                                   const std::string& location,
                                   std::vector<std::unique_ptr<const art::DexFile>>&& dex_files) {
  AppendToBootClassPath(filename, location);
  ScopedObjectAccess soa(Thread::Current());
  if (kIsDebugBuild) {
    for (const std::unique_ptr<const art::DexFile>& dex_file : dex_files) {
      // The first element must not be at a multi-dex location, while other elements must be.
      DCHECK_NE(DexFileLoader::IsMultiDexLocation(dex_file->GetLocation()),
                dex_file.get() == dex_files.begin()->get());
    }
  }
  GetClassLinker()->AddExtraBootDexFiles(Thread::Current(), std::move(dex_files));
}

void Runtime::DCheckNoTransactionCheckAllowed() {
  if (kIsDebugBuild) {
    Thread* self = Thread::Current();
    if (self != nullptr) {
      self->AssertNoTransactionCheckAllowed();
    }
  }
}

extern "C" jclass Westlake_FindClassInSystemLoader(JNIEnv* env, const char* class_name) {
  if (env == nullptr || class_name == nullptr || class_name[0] == '\0') {
    return nullptr;
  }

  std::string descriptor(class_name);
  if (descriptor[0] != '[') {
    descriptor.insert(descriptor.begin(), 'L');
    descriptor.push_back(';');
  }
  for (char& ch : descriptor) {
    if (ch == '.') {
      ch = '/';
    }
  }

  Thread* self = Thread::Current();
  if (self == nullptr || Runtime::Current() == nullptr || Runtime::Current()->GetClassLinker() == nullptr) {
    return nullptr;
  }

  fprintf(stderr, "[WESTLAKE-FIND] request=%s descriptor=%s dex_files=%zu\n",
          class_name, descriptor.c_str(), g_standalone_class_path_dex_files.size());
  fflush(stderr);

  ScopedObjectAccess soa(self);
  StackHandleScope<1> hs(self);
  for (const std::unique_ptr<const DexFile>& dex_file : g_standalone_class_path_dex_files) {
    if (dex_file == nullptr) {
      continue;
    }
    const dex::TypeId* type_id = dex_file->FindTypeId(descriptor);
    if (type_id != nullptr &&
        dex_file->FindClassDef(dex_file->GetIndexForTypeId(*type_id)) != nullptr) {
      fprintf(stderr, "[WESTLAKE-FIND] descriptor present in %s\n", dex_file->GetLocation().c_str());
      fflush(stderr);
      break;
    }
  }

  jobject system_loader = Runtime::Current()->GetSystemClassLoader();
  MutableHandle<mirror::ClassLoader> loader =
      hs.NewHandle(system_loader != nullptr
                       ? soa.Decode<mirror::ClassLoader>(system_loader)
                       : ObjPtr<mirror::ClassLoader>(nullptr));
  ObjPtr<mirror::Class> found =
      Runtime::Current()->GetClassLinker()->FindClass(self, descriptor.c_str(), loader);
  if (found == nullptr && self->IsExceptionPending()) {
    std::string dump = self->GetException()->Dump();
    fprintf(stderr, "[WESTLAKE-FIND] system loader exception: %s\n", dump.c_str());
    fflush(stderr);
    self->ClearException();
  }

  if (found == nullptr && !g_standalone_class_path_dex_files.empty()) {
    if (g_westlake_exported_class_loader == nullptr) {
      std::vector<const DexFile*> dex_files;
      for (const std::unique_ptr<const DexFile>& dex_file : g_standalone_class_path_dex_files) {
        if (dex_file != nullptr) {
          dex_files.push_back(dex_file.get());
        }
      }
      if (!dex_files.empty()) {
        jobject local_loader =
            Runtime::Current()->GetClassLinker()->CreatePathClassLoader(self, dex_files);
        if (local_loader != nullptr && !self->IsExceptionPending()) {
          ObjPtr<mirror::ClassLoader> decoded = soa.Decode<mirror::ClassLoader>(local_loader);
          g_westlake_exported_class_loader = soa.Vm()->AddGlobalRef(self, decoded);
          fprintf(stderr, "[WESTLAKE-FIND] cached exported PathClassLoader=%p\n",
                  g_westlake_exported_class_loader);
          fflush(stderr);
        } else if (self->IsExceptionPending()) {
          self->ClearException();
        }
      }
    }
    if (g_westlake_exported_class_loader != nullptr) {
      loader.Assign(soa.Decode<mirror::ClassLoader>(g_westlake_exported_class_loader));
      found = Runtime::Current()->GetClassLinker()->FindClass(self, descriptor.c_str(), loader);
      if (found == nullptr && self->IsExceptionPending()) {
        std::string dump = self->GetException()->Dump();
        fprintf(stderr, "[WESTLAKE-FIND] exported loader exception: %s\n", dump.c_str());
        fflush(stderr);
        self->ClearException();
      }
    }
  }
  if (found == nullptr) {
    if (self->IsExceptionPending()) {
      self->ClearException();
    }
    fprintf(stderr, "[WESTLAKE-FIND] miss %s\n", descriptor.c_str());
    fflush(stderr);
    return nullptr;
  }
  fprintf(stderr, "[WESTLAKE-FIND] hit %s\n", descriptor.c_str());
  fflush(stderr);
  return soa.AddLocalReference<jclass>(found);
}

}  // namespace art
