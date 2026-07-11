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
#include <setjmp.h>
#include <signal.h>
#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ucontext.h>
#include <unistd.h>
#include <unwind.h>

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

// ---- fatal-signal native backtrace -------------------------------------
// The embedded-ART child is not a normal OHOS process, so the DFX signal
// handler prints registers but an empty backtrace. We install our own handler
// that walks frames via _Unwind_Backtrace and resolves each pc with dladdr, so
// a crash inside a graphics registrar names the exact library+symbol.
void bt_resolve(int idx, uintptr_t pc) {
    Dl_info info;
    memset(&info, 0, sizeof(info));
    const char* lib = "?";
    const char* sym = "?";
    uintptr_t off = 0;
    if (dladdr(reinterpret_cast<void*>(pc), &info)) {
        if (info.dli_fname) lib = info.dli_fname;
        if (info.dli_sname) {
            sym = info.dli_sname;
            off = pc - reinterpret_cast<uintptr_t>(info.dli_saddr);
        } else if (info.dli_fbase) {
            off = pc - reinterpret_cast<uintptr_t>(info.dli_fbase);
        }
    }
    logf("F", "  bt[%02d] pc=%016lx %s (%s+0x%lx)",
         idx, (unsigned long)pc, lib, sym, (unsigned long)off);
}

volatile sig_atomic_t g_in_fatal = 0;

// Unwind from the FAULTING context (not the handler's own stack) by seeding
// from ucontext pc/lr and walking the aarch64 x29 frame-pointer chain.
void fatal_signal_handler(int signo, siginfo_t* si, void* uctx) {
    if (g_in_fatal) _exit(134);
    g_in_fatal = 1;
    logf("F", "=== FATAL signal %d code %d addr %p — native backtrace ===",
         signo, si ? si->si_code : 0, si ? si->si_addr : nullptr);

    ucontext_t* uc = static_cast<ucontext_t*>(uctx);
    int idx = 0;
    if (uc) {
        uintptr_t pc = (uintptr_t)uc->uc_mcontext.pc;
        uintptr_t lr = (uintptr_t)uc->uc_mcontext.regs[30];
        uintptr_t fp = (uintptr_t)uc->uc_mcontext.regs[29];
        bt_resolve(idx++, pc);      // the faulting instruction itself
        if (lr && lr != pc) bt_resolve(idx++, lr);  // its caller (via LR)
        // frame-pointer chain: [fp]=caller_fp, [fp+8]=caller_lr
        for (int i = 0; i < 48 && fp; ++i) {
            uintptr_t next_fp = *reinterpret_cast<uintptr_t*>(fp);
            uintptr_t ret     = *reinterpret_cast<uintptr_t*>(fp + 8);
            if (!ret) break;
            bt_resolve(idx++, ret);
            if (next_fp <= fp) break;   // chain must ascend
            fp = next_fp;
        }
    }
    logf("F", "=== end backtrace (%d frames) ===", idx);
    signal(signo, SIG_DFL);
    raise(signo);
}

void install_fatal_backtrace() {
    struct sigaction sa;
    memset(&sa, 0, sizeof(sa));
    sa.sa_sigaction = fatal_signal_handler;
    sa.sa_flags = SA_SIGINFO;
    sigemptyset(&sa.sa_mask);
    // The app runs in the ART interpreter (implicit null checks are explicit
    // there, not SIGSEGV-based), so it is safe to also catch SIGSEGV/SIGBUS to
    // get a real native backtrace of app-child bootstrap crashes. Gated by
    // WESTLAKE_FATAL_SEGV so we can disable if it ever interferes with JITed code.
    int sigs[] = {SIGTRAP, SIGILL, SIGABRT, SIGFPE};
    for (int s : sigs) sigaction(s, &sa, nullptr);
    if (getenv("WESTLAKE_FATAL_SEGV")) {
        sigaction(SIGSEGV, &sa, nullptr);
        sigaction(SIGBUS, &sa, nullptr);
    }
    log_line("I", "fatal-signal native backtrace handler installed");
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

static const HwuiReg g_hwui_reg_all[] = {
    {"graphics_Canvas", "_ZN7android32register_android_graphics_CanvasEP7_JNIEnv"},
    {"graphics_Color", "_ZN7android31register_android_graphics_ColorEP7_JNIEnv"},
    {"graphics_ColorSpace", "_ZN7android36register_android_graphics_ColorSpaceEP7_JNIEnv"},
    {"graphics_Graphics", "_Z34register_android_graphics_GraphicsP7_JNIEnv"},
    {"graphics_Bitmap", "_Z32register_android_graphics_BitmapP7_JNIEnv"},
    {"graphics_BitmapFactory", "_Z39register_android_graphics_BitmapFactoryP7_JNIEnv"},
    {"graphics_BitmapRegionDecoder", "_Z45register_android_graphics_BitmapRegionDecoderP7_JNIEnv"},
    {"graphics_ByteBufferStreamAdaptor", "_Z49register_android_graphics_ByteBufferStreamAdaptorP7_JNIEnv"},
    {"graphics_Camera", "_Z32register_android_graphics_CameraP7_JNIEnv"},
    {"graphics_CreateJavaOutputStreamAdaptor", "_Z55register_android_graphics_CreateJavaOutputStreamAdaptorP7_JNIEnv"},
    {"graphics_CanvasProperty", "_ZN7android40register_android_graphics_CanvasPropertyEP7_JNIEnv"},
    {"graphics_ColorFilter", "_ZN7android37register_android_graphics_ColorFilterEP7_JNIEnv"},
    {"graphics_DrawFilter", "_ZN7android36register_android_graphics_DrawFilterEP7_JNIEnv"},
    {"graphics_FontFamily", "_ZN7android36register_android_graphics_FontFamilyEP7_JNIEnv"},
    {"graphics_Gainmap", "_ZN7android33register_android_graphics_GainmapEP7_JNIEnv"},
    {"graphics_HardwareRendererObserver", "_ZN7android50register_android_graphics_HardwareRendererObserverEP7_JNIEnv"},
    {"graphics_ImageDecoder", "_Z38register_android_graphics_ImageDecoderP7_JNIEnv"},
    {"graphics_drawable_AnimatedImageDrawable", "_Z56register_android_graphics_drawable_AnimatedImageDrawableP7_JNIEnv"},
    {"graphics_Interpolator", "_Z38register_android_graphics_InterpolatorP7_JNIEnv"},
    {"graphics_MaskFilter", "_Z36register_android_graphics_MaskFilterP7_JNIEnv"},
    {"graphics_Matrix", "_ZN7android32register_android_graphics_MatrixEP7_JNIEnv"},
    {"graphics_Movie", "_Z31register_android_graphics_MovieP7_JNIEnv"},
    {"graphics_NinePatch", "_Z35register_android_graphics_NinePatchP7_JNIEnv"},
    {"graphics_Paint", "_ZN7android31register_android_graphics_PaintEP7_JNIEnv"},
    {"graphics_Path", "_ZN7android30register_android_graphics_PathEP7_JNIEnv"},
    {"graphics_PathIterator", "_ZN7android38register_android_graphics_PathIteratorEP7_JNIEnv"},
    {"graphics_PathMeasure", "_ZN7android37register_android_graphics_PathMeasureEP7_JNIEnv"},
    {"graphics_PathEffect", "_Z36register_android_graphics_PathEffectP7_JNIEnv"},
    {"graphics_Picture", "_ZN7android33register_android_graphics_PictureEP7_JNIEnv"},
    {"graphics_Region", "_ZN7android32register_android_graphics_RegionEP7_JNIEnv"},
    {"graphics_Shader", "_Z32register_android_graphics_ShaderP7_JNIEnv"},
    {"graphics_RenderEffect", "_Z38register_android_graphics_RenderEffectP7_JNIEnv"},
    {"graphics_TextureLayer", "_ZN7android38register_android_graphics_TextureLayerEP7_JNIEnv"},
    {"graphics_Typeface", "_Z34register_android_graphics_TypefaceP7_JNIEnv"},
    {"graphics_YuvImage", "_Z34register_android_graphics_YuvImageP7_JNIEnv"},
    {"graphics_animation_NativeInterpolatorFactory", "_ZN7android61register_android_graphics_animation_NativeInterpolatorFactoryEP7_JNIEnv"},
    {"graphics_animation_RenderNodeAnimator", "_ZN7android54register_android_graphics_animation_RenderNodeAnimatorEP7_JNIEnv"},
    {"graphics_drawable_AnimatedVectorDrawable", "_ZN7android57register_android_graphics_drawable_AnimatedVectorDrawableEP7_JNIEnv"},
    {"graphics_drawable_VectorDrawable", "_ZN7android49register_android_graphics_drawable_VectorDrawableEP7_JNIEnv"},
    {"graphics_fonts_Font", "_ZN7android36register_android_graphics_fonts_FontEP7_JNIEnv"},
    {"graphics_fonts_FontFamily", "_ZN7android42register_android_graphics_fonts_FontFamilyEP7_JNIEnv"},
    {"graphics_pdf_PdfDocument", "_ZN7android41register_android_graphics_pdf_PdfDocumentEP7_JNIEnv"},
    {"graphics_pdf_PdfEditor", "_ZN7android39register_android_graphics_pdf_PdfEditorEP7_JNIEnv"},
    {"graphics_text_MeasuredText", "_ZN7android43register_android_graphics_text_MeasuredTextEP7_JNIEnv"},
    {"graphics_text_LineBreaker", "_ZN7android42register_android_graphics_text_LineBreakerEP7_JNIEnv"},
    {"graphics_text_TextShaper", "_ZN7android41register_android_graphics_text_TextShaperEP7_JNIEnv"},
    {"graphics_text_GraphemeBreak", "_ZN7android44register_android_graphics_text_GraphemeBreakEP7_JNIEnv"},
    {"graphics_MeshSpecification", "_ZN7android43register_android_graphics_MeshSpecificationEP7_JNIEnv"},
    {"graphics_Mesh", "_ZN7android30register_android_graphics_MeshEP7_JNIEnv"},
    {"util_PathParser", "_ZN7android32register_android_util_PathParserEP7_JNIEnv"},
    {"view_RenderNode", "_ZN7android32register_android_view_RenderNodeEP7_JNIEnv"},
    {"view_DisplayListCanvas", "_ZN7android39register_android_view_DisplayListCanvasEP7_JNIEnv"},
    {"graphics_HardwareBufferRenderer", "_ZN7android48register_android_graphics_HardwareBufferRendererEP7_JNIEnv"},
    {"view_ThreadedRenderer", "_ZN7android38register_android_view_ThreadedRendererEP7_JNIEnv"},
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

// Per-registrar crash fence: one SIGTRAP/SEGV in a graphics registrar must not
// abort the whole startReg (sidecar catches the first fatal and skips the rest).
static sigjmp_buf g_hwui_reg_jmp;
static volatile sig_atomic_t g_hwui_reg_armed = 0;
static void hwui_reg_crash_handler(int signo) {
    if (g_hwui_reg_armed) siglongjmp(g_hwui_reg_jmp, signo ? signo : SIGTRAP);
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

    // Diagnostic mode: call the 54 registrars ONE BY ONE in gRegJNI order with a
    // log line BEFORE and AFTER each, so a hang/crash pins the exact registrar.
    // Env WESTLAKE_HWUI_STOP_AT=<n> stops after n registrars (skip a known bad
    // one). Env WESTLAKE_HWUI_AGG=1 uses the aggregate instead.
    const char* agg = getenv("WESTLAKE_HWUI_AGG");
    if (agg && agg[0] == '1') {
        HwuiRegFn all = reinterpret_cast<HwuiRegFn>(dlsym(hwui, "register_android_graphics_classes"));
        if (all) { int rc = all(env); clear_exception(env, "aggregate");
            logf("I", "hwui aggregate registration rc=%d", rc); return; }
    }
    const char* stopEnv = getenv("WESTLAKE_HWUI_STOP_AT");
    int stopAt = stopEnv ? atoi(stopEnv) : 1000;
    // WESTLAKE_HWUI_SKIP=",50,51," — skip specific registrar indices (survey mode:
    // step over a fatal registrar to enumerate ALL remaining walls in one run).
    const char* skipEnv = getenv("WESTLAKE_HWUI_SKIP");
    int n = (int)(sizeof(g_hwui_reg_all) / sizeof(g_hwui_reg_all[0]));

    struct sigaction sa_old[5];
    struct sigaction sa_new = {};
    sa_new.sa_handler = hwui_reg_crash_handler;
    int sigs[] = { SIGTRAP, SIGSEGV, SIGBUS, SIGABRT, SIGFPE };
    for (int s = 0; s < 5; ++s) sigaction(sigs[s], &sa_new, &sa_old[s]);

    int ok = 0;
    int crashed = 0;
    // OHOS has no libandroid AHardwareBuffer JNI; these registrars LOG_ALWAYS_FATAL
    // inside HardwareBufferHelpers::init(). Skipping them avoids a SIGTRAP that
    // our fence can catch but leaves the process half-poisoned for RenderThread.
    const char* hardSkip = ",4,52,";
    for (int i = 0; i < n && i < stopAt; ++i) {
        char needle[16];
        snprintf(needle, sizeof(needle), ",%d,", i);
        if (strstr(hardSkip, needle) ||
            (skipEnv && strstr(skipEnv, needle))) {
            logf("W", "hwui reg[%d/%d] SKIP %s (hard/env skip)", i, n, g_hwui_reg_all[i].name);
            continue;
        }
        logf("I", "hwui reg[%d/%d] BEGIN %s", i, n, g_hwui_reg_all[i].name);
        HwuiRegFn fn = reinterpret_cast<HwuiRegFn>(dlsym(hwui, g_hwui_reg_all[i].sym));
        if (!fn) { logf("W", "hwui reg[%d] symbol missing %s", i, g_hwui_reg_all[i].name); continue; }
        g_hwui_reg_armed = 1;
        int crashed_sig = sigsetjmp(g_hwui_reg_jmp, 1);
        if (crashed_sig == 0) {
            int rc = fn(env);
            g_hwui_reg_armed = 0;
            clear_exception(env, g_hwui_reg_all[i].name);
            logf("I", "hwui reg[%d/%d] END %s rc=%d", i, n, g_hwui_reg_all[i].name, rc);
            if (rc == 0) ++ok;
        } else {
            g_hwui_reg_armed = 0;
            ++crashed;
            clear_exception(env, g_hwui_reg_all[i].name);
            logf("W", "hwui reg[%d/%d] CRASH signal=%d %s — skipped",
                 i, n, crashed_sig, g_hwui_reg_all[i].name);
        }
    }
    for (int s = 0; s < 5; ++s) sigaction(sigs[s], &sa_old[s], nullptr);
    logf("I", "hwui per-registrar registration loop done ok=%d crashed=%d", ok, crashed);
}

}  // namespace

namespace android {

class AndroidRuntime {
public:
    WL_VIS static int startReg(JNIEnv* env);
};

int AndroidRuntime::startReg(JNIEnv* env) {
    log_line("I", "AndroidRuntime::startReg enter");
    if (getenv("WESTLAKE_FATAL_BT")) install_fatal_backtrace();
    if (!env) {
        log_line("E", "startReg called with null JNIEnv");
        return -1;
    }

    // Graphics first: #53 needs RenderNode/Canvas before anything else. Per-registrar
    // crash fence lives inside register_hwui_if_present so one bad registrar cannot
    // abort the rest (sidecar's outer setjmp would otherwise skip the whole table).
    register_hwui_if_present(env);

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

// AndroidRuntime::startReg itself is WL_VIS: the AOSP-mangled symbol
// _ZN7android14AndroidRuntime8startRegEP7_JNIEnv is already exported.
