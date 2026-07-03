/*
 * Minimal DAYU600 liboh_android_runtime.so.
 *
 * This is the first reconstructable piece of the real WestLake runtime
 * adapter.  AppSpawnX expects the exported C++ symbol:
 *
 *   android::AndroidRuntime::startReg(JNIEnv*)
 *
 * The full historical adapter registered a large Android native surface.
 * This file keeps the entrypoint real and loadable, then registers the early
 * Java natives that unblock framework bootstrap far enough to expose the next
 * concrete missing method.
 */

#include <jni.h>

#include <dlfcn.h>
#include <errno.h>
#include <fcntl.h>
#include <poll.h>
#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#define WL_VIS __attribute__((visibility("default")))

namespace {

void log_line(const char* level, const char* msg) {
    fprintf(stderr, "[liboh_android_runtime][%s] %s\n",
            level ? level : "I", msg ? msg : "");
    fflush(stderr);
}

void logf(const char* level, const char* fmt, ...) {
    char buf[1024] = {0};
    va_list ap;
    va_start(ap, fmt);
    vsnprintf(buf, sizeof(buf), fmt, ap);
    va_end(ap);
    log_line(level, buf);
}

bool clear_exception(JNIEnv* env, const char* where) {
    if (!env || !env->ExceptionCheck()) {
        return false;
    }
    logf("W", "clearing Java exception at %s", where ? where : "?");
    env->ExceptionDescribe();
    env->ExceptionClear();
    return true;
}

int register_natives_if_present(JNIEnv* env,
                                const char* class_name,
                                const JNINativeMethod* methods,
                                int method_count) {
    if (!env || !class_name || !methods || method_count <= 0) {
        return 0;
    }

    jclass cls = env->FindClass(class_name);
    if (!cls) {
        clear_exception(env, class_name);
        logf("I", "class not present, skipped native registration: %s", class_name);
        return 0;
    }

    int failures = 0;
    for (int i = 0; i < method_count; ++i) {
        int rc = env->RegisterNatives(cls, &methods[i], 1);
        if (rc != 0) {
            ++failures;
            clear_exception(env, methods[i].name);
            logf("W", "RegisterNatives failed for %s.%s%s rc=%d",
                 class_name, methods[i].name, methods[i].signature, rc);
        } else {
            logf("I", "registered native %s.%s%s",
                 class_name, methods[i].name, methods[i].signature);
        }
    }
    env->DeleteLocalRef(cls);
    return failures;
}

const char* get_utf(JNIEnv* env, jstring s) {
    if (!env || !s) {
        return nullptr;
    }
    return env->GetStringUTFChars(s, nullptr);
}

void release_utf(JNIEnv* env, jstring s, const char* p) {
    if (env && s && p) {
        env->ReleaseStringUTFChars(s, p);
    }
}

// -------------------------------------------------------------------------
// android.util.Log
// -------------------------------------------------------------------------

jboolean log_is_loggable(JNIEnv*, jclass, jstring, jint) {
    return JNI_TRUE;
}

jint log_println_native(JNIEnv* env, jclass, jint buf_id, jint priority,
                        jstring tag_obj, jstring msg_obj) {
    const char* tag = get_utf(env, tag_obj);
    const char* msg = get_utf(env, msg_obj);
    fprintf(stderr, "[android.util.Log][buf=%d prio=%d][%s] %s\n",
            static_cast<int>(buf_id),
            static_cast<int>(priority),
            tag ? tag : "",
            msg ? msg : "");
    fflush(stderr);
    int len = msg ? static_cast<int>(strlen(msg)) : 0;
    release_utf(env, msg_obj, msg);
    release_utf(env, tag_obj, tag);
    return len;
}

jint log_logger_entry_max_payload_native(JNIEnv*, jclass) {
    return 4068;
}

JNINativeMethod g_log_methods[] = {
    {"isLoggable", "(Ljava/lang/String;I)Z", reinterpret_cast<void*>(log_is_loggable)},
    {"println_native", "(IILjava/lang/String;Ljava/lang/String;)I",
     reinterpret_cast<void*>(log_println_native)},
    {"logger_entry_max_payload_native", "()I",
     reinterpret_cast<void*>(log_logger_entry_max_payload_native)},
};

// -------------------------------------------------------------------------
// android.os.MessageQueue
// -------------------------------------------------------------------------

struct NativeMessageQueue {
    int read_fd = -1;
    int write_fd = -1;
    bool polling = false;
};

void set_nonblock(int fd) {
    int flags = fcntl(fd, F_GETFL, 0);
    if (flags >= 0) {
        (void)fcntl(fd, F_SETFL, flags | O_NONBLOCK);
    }
}

jlong mq_native_init(JNIEnv*, jclass) {
    int fds[2] = {-1, -1};
    if (pipe(fds) != 0) {
        logf("E", "MessageQueue pipe failed errno=%d", errno);
        return 0;
    }
    set_nonblock(fds[0]);
    set_nonblock(fds[1]);
    NativeMessageQueue* q = new NativeMessageQueue();
    q->read_fd = fds[0];
    q->write_fd = fds[1];
    return reinterpret_cast<jlong>(q);
}

void mq_native_destroy(JNIEnv*, jclass, jlong ptr) {
    NativeMessageQueue* q = reinterpret_cast<NativeMessageQueue*>(ptr);
    if (!q) {
        return;
    }
    if (q->read_fd >= 0) {
        close(q->read_fd);
    }
    if (q->write_fd >= 0) {
        close(q->write_fd);
    }
    delete q;
}

void mq_native_poll_once(JNIEnv*, jobject, jlong ptr, jint timeout_ms) {
    NativeMessageQueue* q = reinterpret_cast<NativeMessageQueue*>(ptr);
    if (!q || q->read_fd < 0) {
        return;
    }

    struct pollfd pfd;
    memset(&pfd, 0, sizeof(pfd));
    pfd.fd = q->read_fd;
    pfd.events = POLLIN;

    q->polling = true;
    int timeout = timeout_ms < -1 ? -1 : static_cast<int>(timeout_ms);
    (void)poll(&pfd, 1, timeout);
    q->polling = false;

    if (pfd.revents & POLLIN) {
        char buf[64];
        while (read(q->read_fd, buf, sizeof(buf)) > 0) {
        }
    }
}

void mq_native_wake(JNIEnv*, jclass, jlong ptr) {
    NativeMessageQueue* q = reinterpret_cast<NativeMessageQueue*>(ptr);
    if (!q || q->write_fd < 0) {
        return;
    }
    char byte = 1;
    (void)write(q->write_fd, &byte, 1);
}

jboolean mq_native_is_polling(JNIEnv*, jclass, jlong ptr) {
    NativeMessageQueue* q = reinterpret_cast<NativeMessageQueue*>(ptr);
    return (q && q->polling) ? JNI_TRUE : JNI_FALSE;
}

void mq_native_set_fd_events(JNIEnv*, jclass, jlong, jint, jint) {
    // Real fd listeners are not wired in this minimal adapter yet.
}

JNINativeMethod g_message_queue_methods[] = {
    {"nativeInit", "()J", reinterpret_cast<void*>(mq_native_init)},
    {"nativeDestroy", "(J)V", reinterpret_cast<void*>(mq_native_destroy)},
    {"nativePollOnce", "(JI)V", reinterpret_cast<void*>(mq_native_poll_once)},
    {"nativeWake", "(J)V", reinterpret_cast<void*>(mq_native_wake)},
    {"nativeIsPolling", "(J)Z", reinterpret_cast<void*>(mq_native_is_polling)},
    {"nativeSetFileDescriptorEvents", "(JII)V",
     reinterpret_cast<void*>(mq_native_set_fd_events)},
};

// -------------------------------------------------------------------------
// android.os.Process
// -------------------------------------------------------------------------

void process_set_arg_v0_native(JNIEnv*, jclass, jstring) {
}

JNINativeMethod g_process_methods[] = {
    {"setArgV0Native", "(Ljava/lang/String;)V",
     reinterpret_cast<void*>(process_set_arg_v0_native)},
};

// -------------------------------------------------------------------------
// Small system natives frequently reached during framework bootstrap.
// -------------------------------------------------------------------------

extern "C" void binder_holder_free(void* ptr) {
    free(ptr);
}

jlong binder_get_native_b_binder_holder(JNIEnv*, jclass) {
    void* holder = calloc(1, 8);
    return reinterpret_cast<jlong>(holder);
}

jlong binder_clear_calling_identity(JNIEnv*, jclass) {
    return 0;
}

jlong binder_clear_calling_work_source(JNIEnv*, jclass) {
    return 0;
}

void binder_restore_calling_identity(JNIEnv*, jclass, jlong) {
}

void binder_restore_calling_work_source(JNIEnv*, jclass, jlong) {
}

jint binder_get_calling_pid(JNIEnv*, jclass) {
    return 0;
}

jint binder_get_calling_uid(JNIEnv*, jclass) {
    return 2000;
}

jint binder_get_calling_work_source_uid(JNIEnv*, jclass) {
    return -1;
}

jlong binder_set_calling_work_source_uid(JNIEnv*, jclass, jint) {
    return 0;
}

jint binder_get_thread_strict_mode_policy(JNIEnv*, jclass) {
    return 0;
}

void binder_set_thread_strict_mode_policy(JNIEnv*, jclass, jint) {
}

void binder_block_until_thread_available(JNIEnv*, jclass) {
}

void binder_flush_pending_commands(JNIEnv*, jclass) {
}

jboolean binder_has_explicit_identity(JNIEnv*, jclass) {
    return JNI_FALSE;
}

jboolean binder_is_directly_handling_transaction(JNIEnv*, jclass) {
    return JNI_FALSE;
}

jlong binder_get_native_finalizer(JNIEnv*, jclass) {
    return reinterpret_cast<jlong>(&binder_holder_free);
}

JNINativeMethod g_binder_methods[] = {
    {"blockUntilThreadAvailable", "()V",
     reinterpret_cast<void*>(binder_block_until_thread_available)},
    {"clearCallingIdentity", "()J",
     reinterpret_cast<void*>(binder_clear_calling_identity)},
    {"clearCallingWorkSource", "()J",
     reinterpret_cast<void*>(binder_clear_calling_work_source)},
    {"flushPendingCommands", "()V",
     reinterpret_cast<void*>(binder_flush_pending_commands)},
    {"getCallingPid", "()I", reinterpret_cast<void*>(binder_get_calling_pid)},
    {"getCallingUid", "()I", reinterpret_cast<void*>(binder_get_calling_uid)},
    {"getCallingWorkSourceUid", "()I",
     reinterpret_cast<void*>(binder_get_calling_work_source_uid)},
    {"getNativeBBinderHolder", "()J",
     reinterpret_cast<void*>(binder_get_native_b_binder_holder)},
    {"getNativeFinalizer", "()J",
     reinterpret_cast<void*>(binder_get_native_finalizer)},
    {"getThreadStrictModePolicy", "()I",
     reinterpret_cast<void*>(binder_get_thread_strict_mode_policy)},
    {"hasExplicitIdentity", "()Z", reinterpret_cast<void*>(binder_has_explicit_identity)},
    {"isDirectlyHandlingTransactionNative", "()Z",
     reinterpret_cast<void*>(binder_is_directly_handling_transaction)},
    {"restoreCallingIdentity", "(J)V",
     reinterpret_cast<void*>(binder_restore_calling_identity)},
    {"restoreCallingWorkSource", "(J)V",
     reinterpret_cast<void*>(binder_restore_calling_work_source)},
    {"setCallingWorkSourceUid", "(I)J",
     reinterpret_cast<void*>(binder_set_calling_work_source_uid)},
    {"setThreadStrictModePolicy", "(I)V",
     reinterpret_cast<void*>(binder_set_thread_strict_mode_policy)},
};

jobject binder_internal_get_context_object(JNIEnv*, jclass) {
    return nullptr;
}

JNINativeMethod g_binder_internal_methods[] = {
    {"getContextObject", "()Landroid/os/IBinder;",
     reinterpret_cast<void*>(binder_internal_get_context_object)},
};

void nar_apply_free_function(JNIEnv*, jclass, jlong free_function, jlong ptr) {
    if (!free_function || !ptr) {
        return;
    }
    using FreeFunction = void (*)(void*);
    FreeFunction fn = reinterpret_cast<FreeFunction>(
        static_cast<uintptr_t>(free_function));
    fn(reinterpret_cast<void*>(static_cast<uintptr_t>(ptr)));
}

JNINativeMethod g_native_allocation_registry_methods[] = {
    {"applyFreeFunction", "(JJ)V",
     reinterpret_cast<void*>(nar_apply_free_function)},
};

void trace_native_async_trace_begin(JNIEnv*, jclass, jlong, jstring, jint) {
}

void trace_native_async_trace_end(JNIEnv*, jclass, jlong, jstring, jint) {
}

void trace_native_async_trace_for_track_begin(
    JNIEnv*, jclass, jlong, jstring, jstring, jint) {
}

void trace_native_async_trace_for_track_end(JNIEnv*, jclass, jlong, jstring, jint) {
}

void trace_native_instant(JNIEnv*, jclass, jlong, jstring) {
}

void trace_native_instant_for_track(JNIEnv*, jclass, jlong, jstring, jstring) {
}

jboolean trace_native_is_tag_enabled(JNIEnv*, jclass, jlong) {
    return JNI_FALSE;
}

void trace_native_set_app_tracing_allowed(JNIEnv*, jclass, jboolean) {
}

void trace_native_set_tracing_enabled(JNIEnv*, jclass, jboolean) {
}

void trace_native_trace_begin(JNIEnv*, jclass, jlong, jstring) {
}

void trace_native_trace_counter(JNIEnv*, jclass, jlong, jstring, jlong) {
}

void trace_native_trace_end(JNIEnv*, jclass, jlong) {
}

JNINativeMethod g_trace_methods[] = {
    {"nativeAsyncTraceBegin", "(JLjava/lang/String;I)V",
     reinterpret_cast<void*>(trace_native_async_trace_begin)},
    {"nativeAsyncTraceEnd", "(JLjava/lang/String;I)V",
     reinterpret_cast<void*>(trace_native_async_trace_end)},
    {"nativeAsyncTraceForTrackBegin", "(JLjava/lang/String;Ljava/lang/String;I)V",
     reinterpret_cast<void*>(trace_native_async_trace_for_track_begin)},
    {"nativeAsyncTraceForTrackEnd", "(JLjava/lang/String;I)V",
     reinterpret_cast<void*>(trace_native_async_trace_for_track_end)},
    {"nativeInstant", "(JLjava/lang/String;)V",
     reinterpret_cast<void*>(trace_native_instant)},
    {"nativeInstantForTrack", "(JLjava/lang/String;Ljava/lang/String;)V",
     reinterpret_cast<void*>(trace_native_instant_for_track)},
    {"nativeIsTagEnabled", "(J)Z", reinterpret_cast<void*>(trace_native_is_tag_enabled)},
    {"nativeSetAppTracingAllowed", "(Z)V",
     reinterpret_cast<void*>(trace_native_set_app_tracing_allowed)},
    {"nativeSetTracingEnabled", "(Z)V",
     reinterpret_cast<void*>(trace_native_set_tracing_enabled)},
    {"nativeTraceBegin", "(JLjava/lang/String;)V",
     reinterpret_cast<void*>(trace_native_trace_begin)},
    {"nativeTraceCounter", "(JLjava/lang/String;J)V",
     reinterpret_cast<void*>(trace_native_trace_counter)},
    {"nativeTraceEnd", "(J)V", reinterpret_cast<void*>(trace_native_trace_end)},
};

jstring sysprop_native_get(JNIEnv* env, jclass, jstring key_obj, jstring def_obj) {
    const char* def = get_utf(env, def_obj);
    jstring out = env->NewStringUTF(def ? def : "");
    release_utf(env, def_obj, def);
    (void)key_obj;
    return out;
}

jint sysprop_native_get_int(JNIEnv*, jclass, jstring, jint def) {
    return def;
}

jlong sysprop_native_get_long(JNIEnv*, jclass, jstring, jlong def) {
    return def;
}

jboolean sysprop_native_get_boolean(JNIEnv*, jclass, jstring, jboolean def) {
    return def;
}

jlong sysprop_native_find(JNIEnv*, jclass, jstring) {
    return 0;
}

jstring sysprop_native_get_by_handle(JNIEnv* env, jclass, jlong) {
    return env->NewStringUTF("");
}

void sysprop_native_set(JNIEnv*, jclass, jstring, jstring) {
}

void sysprop_native_noop(JNIEnv*, jclass) {
}

JNINativeMethod g_system_properties_methods[] = {
    {"native_get", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;",
     reinterpret_cast<void*>(sysprop_native_get)},
    {"native_get_int", "(Ljava/lang/String;I)I",
     reinterpret_cast<void*>(sysprop_native_get_int)},
    {"native_get_long", "(Ljava/lang/String;J)J",
     reinterpret_cast<void*>(sysprop_native_get_long)},
    {"native_get_boolean", "(Ljava/lang/String;Z)Z",
     reinterpret_cast<void*>(sysprop_native_get_boolean)},
    {"native_find", "(Ljava/lang/String;)J",
     reinterpret_cast<void*>(sysprop_native_find)},
    {"native_get", "(J)Ljava/lang/String;",
     reinterpret_cast<void*>(sysprop_native_get_by_handle)},
    {"native_set", "(Ljava/lang/String;Ljava/lang/String;)V",
     reinterpret_cast<void*>(sysprop_native_set)},
    {"native_add_change_callback", "()V",
     reinterpret_cast<void*>(sysprop_native_noop)},
    {"native_report_sysprop_change", "()V",
     reinterpret_cast<void*>(sysprop_native_noop)},
};

using HwuiRegFn = int (*)(JNIEnv*);

struct HwuiReg {
    const char* name;
    const char* sym;
};

const HwuiReg g_hwui_reg_fns[] = {
    {"BitmapFactory", "_Z39register_android_graphics_BitmapFactoryP7_JNIEnv"},
    {"Matrix", "_ZN7android32register_android_graphics_MatrixEP7_JNIEnv"},
    {"BitmapRegionDecoder", "_Z45register_android_graphics_BitmapRegionDecoderP7_JNIEnv"},
    {"Interpolator", "_Z38register_android_graphics_InterpolatorP7_JNIEnv"},
    {"CreateJavaOutputStreamAdaptor", "_Z55register_android_graphics_CreateJavaOutputStreamAdaptorP7_JNIEnv"},
    {"PathMeasure", "_ZN7android37register_android_graphics_PathMeasureEP7_JNIEnv"},
    {"GraphicsStatsService", "_Z46register_android_graphics_GraphicsStatsServiceP7_JNIEnv"},
};

void* dlopen_first_existing(const char* const* paths, size_t count) {
    for (size_t i = 0; i < count; ++i) {
        void* h = dlopen(paths[i], RTLD_NOW | RTLD_GLOBAL);
        if (h) {
            logf("I", "dlopen OK: %s", paths[i]);
            return h;
        }
        const char* err = dlerror();
        logf("I", "dlopen skipped %s: %s", paths[i], err ? err : "unknown");
    }
    return nullptr;
}

void register_hwui_if_present(JNIEnv* env) {
    const char* paths[] = {
        "libhwui.so",
        "/data/local/tmp/westlake-dayu600-substrate/android/lib64/libhwui.so",
        "/system/android/lib64/libhwui.so",
        "/system/android/lib/libhwui.so",
    };
    void* hwui = dlopen_first_existing(paths, sizeof(paths) / sizeof(paths[0]));
    if (!hwui) {
        log_line("I", "libhwui.so not present yet; graphics native registration deferred");
        return;
    }

    int ok = 0;
    for (const HwuiReg& item : g_hwui_reg_fns) {
        HwuiRegFn fn = reinterpret_cast<HwuiRegFn>(dlsym(hwui, item.sym));
        if (!fn) {
            logf("I", "hwui registration symbol missing: %s", item.name);
            continue;
        }
        int rc = fn(env);
        clear_exception(env, item.name);
        logf(rc == 0 ? "I" : "W", "hwui registration %s rc=%d", item.name, rc);
        if (rc == 0) {
            ++ok;
        }
    }
    logf("I", "hwui registration attempted, ok=%d", ok);
}

}  // namespace

namespace android {

class AndroidRuntime {
public:
    WL_VIS static int startReg(JNIEnv* env);
};

int AndroidRuntime::startReg(JNIEnv* env) {
    log_line("I", "AndroidRuntime::startReg enter");
    if (!env) {
        log_line("E", "startReg called with null JNIEnv");
        return -1;
    }

    int hard_failures = 0;
    hard_failures += register_natives_if_present(
        env, "android/util/Log", g_log_methods,
        sizeof(g_log_methods) / sizeof(g_log_methods[0])) != 0;
    hard_failures += register_natives_if_present(
        env, "android/os/MessageQueue", g_message_queue_methods,
        sizeof(g_message_queue_methods) / sizeof(g_message_queue_methods[0])) != 0;
    hard_failures += register_natives_if_present(
        env, "android/os/Process", g_process_methods,
        sizeof(g_process_methods) / sizeof(g_process_methods[0])) != 0;
    hard_failures += register_natives_if_present(
        env, "android/os/Binder", g_binder_methods,
        sizeof(g_binder_methods) / sizeof(g_binder_methods[0])) != 0;
    hard_failures += register_natives_if_present(
        env, "com/android/internal/os/BinderInternal", g_binder_internal_methods,
        sizeof(g_binder_internal_methods) / sizeof(g_binder_internal_methods[0])) != 0;
    hard_failures += register_natives_if_present(
        env, "libcore/util/NativeAllocationRegistry",
        g_native_allocation_registry_methods,
        sizeof(g_native_allocation_registry_methods) /
            sizeof(g_native_allocation_registry_methods[0])) != 0;
    hard_failures += register_natives_if_present(
        env, "android/os/Trace", g_trace_methods,
        sizeof(g_trace_methods) / sizeof(g_trace_methods[0])) != 0;
    hard_failures += register_natives_if_present(
        env, "android/os/SystemProperties", g_system_properties_methods,
        sizeof(g_system_properties_methods) / sizeof(g_system_properties_methods[0])) != 0;

    register_hwui_if_present(env);

    logf(hard_failures == 0 ? "I" : "W",
         "AndroidRuntime::startReg leave hardFailures=%d", hard_failures);
    return hard_failures == 0 ? 0 : -1;
}

}  // namespace android

extern "C" WL_VIS jint JNI_OnLoad(JavaVM*, void*) {
    log_line("I", "JNI_OnLoad");
    return JNI_VERSION_1_6;
}

extern "C" WL_VIS int westlake_android_runtime_startReg(JNIEnv* env) {
    return android::AndroidRuntime::startReg(env);
}

extern "C" WL_VIS int westlake_android_runtime_startReg_aosp(JNIEnv* env)
    __asm__("_ZN7android14AndroidRuntime8startRegEP7_JNIEnv");

extern "C" WL_VIS int westlake_android_runtime_startReg_aosp(JNIEnv* env) {
    return android::AndroidRuntime::startReg(env);
}
