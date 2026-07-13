// artboot.c — OH HAP native glue: boot the embedded Android ART IN-PROCESS inside
// an installed OpenHarmony HAP (per-app SELinux sandbox, uid = app) and RENDER a
// real Android APK (triangle.apk: com.gltri.demo.TriangleView) via its OWN Canvas
// FILL ops -> RenderNode -> our libhwui (skia) -> an OHOS RSSurfaceNode on display 0.
//
// This is the probe-DRIVEN render variant. Instead of re-implementing the VM +
// startReg + heavy-bridge + stage plumbing in C, we replicate the PROVEN shell lane
// (oracle/device/run-triangle-5ce.sh) exactly: set the same ~20 WESTLAKE_*/ANDROID_*
// env, then dlopen the embedded-art probe (libwestlake_embedded_art_dlopen_probe.so)
// RTLD_GLOBAL. Its constructor (WESTLAKE_CREATE_VM=1) then does the whole pipeline:
//   ensure_art_loaded()  -> dlopen $WESTLAKE_ROOT/art/libwestlake_art.so
//   run_stage_probe()    -> JNI_CreateJavaVM (imageless, -Xint => no execmem)
//                        -> android_runtime startReg (liboh_android_runtime.so)
//                        -> load heavy bridge beforeStage = libwestlake_upscreen_renderer.so
//                        -> Dayu600ApkStageProbe.embeddedMainNoExit(stage=uptodownProbe,
//                           substage=triangleApk) -> loads triangle.apk's dex, builds the
//                           RenderNode, drives WestlakeUpscreen natives -> renderer's
//                           westlake_ohos_make_display_window() makes an RSSurfaceNode on
//                           display 0 and paints the dashboard.
//
// SANDBOX LAYOUT (the make-or-break for an app-uid process):
//   * Every .so that must be exec-mmap'd (libart, the probe, the renderer, libhwui,
//     liboh_android_runtime, libandroidfw, compat stubs) rides in the HAP's OWN
//     libs/arm64-v8a — the bundle native-lib dir, the one PROT_EXEC-blessed location.
//     filesDir is app_data_file (PROT_EXEC denied), so nothing exec loads from there.
//   * The probe hard-codes two exec loads by ABSOLUTE $WESTLAKE_ROOT path
//     ($ROOT/art/libwestlake_art.so and $ROOT/android/lib64/liboh_android_runtime.so).
//     We satisfy those by SYMLINKing them, under filesDir, to the bundle lib dir — the
//     loader resolves the symlink's realpath (bundle dir, exec-ok) so the exec mmap is
//     of a blessed file. The heavy bridge is passed as an absolute bundle-dir path via
//     WESTLAKE_HEAVY_BRIDGE_PATH (no symlink needed).
//   * The boot DATA (all -Xbootclasspath jars incl. framework.jar, the probe/overlay
//     dexes, icu-data.jar, upscreen-render.dex.jar, triangle.apk) rides as rawfile and
//     is extracted to filesDir/substrate (PROT_READ mmap — allowed) on first launch.
//
// NOTE on the XComponent interpose (coordinator option a): the renderer's
// westlake_ohos_make_display_window is a HIDDEN/local symbol (absent from the .so's
// .dynsym, no dynamic reloc), so it is NOT preemptible via RTLD_GLOBAL — a glue-side
// override cannot route rendering into an XComponent surface without rebuilding the
// renderer with the symbol exported (a forbidden gfx-smoke edit). This variant instead
// uses the renderer's own RSSurfaceNode display-0 overlay (the shell-lane-proven path),
// which renders on-screen from the app process with zero edits to W-004/gfx-smoke.
//
// Everything runs on a detached 16MB-stack worker so ArkUI is not blocked; crash
// handlers leave a verdict=FAIL breadcrumb before the process dies.

#include <napi/native_api.h>
#include <hilog/log.h>

// The OHOS rawfile NDK headers (rawfile/raw_file.h) use C++ reference syntax and do
// not compile in C. We only need these five C-ABI entry points, so declare them
// directly (opaque handles) instead of including the C++-only headers.
typedef struct RawFile RawFile;
typedef struct NativeResourceManager NativeResourceManager;
extern NativeResourceManager *OH_ResourceManager_InitNativeResourceManager(napi_env env, napi_value jsResMgr);
extern RawFile *OH_ResourceManager_OpenRawFile(const NativeResourceManager *mgr, const char *fileName);
extern long OH_ResourceManager_GetRawFileSize(RawFile *rawFile);
extern int  OH_ResourceManager_ReadRawFile(const RawFile *rawFile, void *buf, size_t length);
extern void OH_ResourceManager_CloseRawFile(RawFile *rawFile);

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <errno.h>
#include <sys/stat.h>
#include <signal.h>
#include <pthread.h>

#undef LOG_TAG
#define LOG_TAG "ARTBOOT"
#define LOGI(...) OH_LOG_Print(LOG_APP, LOG_INFO,  0xA100, LOG_TAG, __VA_ARGS__)
#define LOGE(...) OH_LOG_Print(LOG_APP, LOG_ERROR, 0xA100, LOG_TAG, __VA_ARGS__)

// ---- dlfcn (declare extern; resolved from OHOS libc at runtime) ----
extern void* dlopen(const char*, int);
extern void* dlsym(void*, const char*);
extern char* dlerror(void);
typedef struct { const char* dli_fname; void* dli_fbase; const char* dli_sname; void* dli_saddr; } Dl_info;
extern int dladdr(const void*, Dl_info*);
#ifndef RTLD_NOW
#define RTLD_NOW    2
#endif
#ifndef RTLD_LAZY
#define RTLD_LAZY   1
#endif
#ifndef RTLD_GLOBAL
#define RTLD_GLOBAL 0x100
#endif

// ---------------------------------------------------------------------------
// globals for crash breadcrumb + result path
static char g_files_dir[1024];
static char g_sub_root[1200];        // <filesDir>/substrate  (writable sandbox base "WRIT" + extraction target)
static char g_verdict_path[1200];    // <filesDir>/artboot-verdict.txt
static char g_lib_dir[1024];         // bundle native-lib dir = WESTLAKE_ROOT ("LIBDIR", self-located via dladdr)
static volatile const char* g_phase = "init";
static NativeResourceManager* g_mgr = NULL;

static void write_all(int fd, const char* s, unsigned long n) {
    while (n) { long w = write(fd, s, n); if (w <= 0) break; s += w; n -= (unsigned long)w; }
}

// PASS/FAIL verdict → filesDir file + hilog (the one line the parent greps for).
static void write_verdict(const char* verdict, const char* reason) {
    char line[2048];
    int n = snprintf(line, sizeof(line), "[ARTBOOT] verdict=%s reason=%s\n", verdict, reason);
    if (n < 0) return;
    int fd = open(g_verdict_path, O_WRONLY | O_CREAT | O_TRUNC, 0644);
    if (fd >= 0) { write_all(fd, line, (unsigned long)n); close(fd); }
    if (strcmp(verdict, "PASS") == 0) LOGI("%{public}s", line);
    else                              LOGE("%{public}s", line);
}

// async-signal-safe-ish breadcrumb: a crash still leaves verdict=FAIL reason=crash.
static void crash_handler(int sig) {
    char buf[600]; int p = 0;
    const char* pre = "[ARTBOOT] verdict=FAIL reason=crash sig=";
    for (const char* c = pre; *c; c++) buf[p++] = *c;
    char d[16]; int di = 0; int s = sig; do { d[di++] = (char)('0' + (s % 10)); s /= 10; } while (s && di < 15);
    while (di) buf[p++] = d[--di];
    const char* mid = " phase="; for (const char* c = mid; *c; c++) buf[p++] = *c;
    const char* ph = (const char*)g_phase; if (ph) for (const char* c = ph; *c && p < 560; c++) buf[p++] = *c;
    buf[p++] = '\n';
    int fd = open(g_verdict_path, O_WRONLY | O_CREAT | O_TRUNC, 0644);
    if (fd >= 0) { write_all(fd, buf, (unsigned long)p); close(fd); }
    write_all(2, buf, (unsigned long)p);
    signal(sig, SIG_DFL);
    raise(sig);
}

static void install_crash_handlers(void) {
    int sigs[] = { SIGSEGV, SIGBUS, SIGABRT, SIGILL, SIGFPE };
    struct sigaction sa; memset(&sa, 0, sizeof(sa));
    sa.sa_handler = crash_handler; sigemptyset(&sa.sa_mask); sa.sa_flags = 0;
    for (int i = 0; i < 5; i++) sigaction(sigs[i], &sa, NULL);
}

// mkdir -p for a directory path.
static void mkdirs(const char* dir) {
    char tmp[1400]; unsigned long len = strlen(dir);
    if (len == 0 || len >= sizeof(tmp)) return;
    strcpy(tmp, dir);
    for (char* p = tmp + 1; *p; p++) {
        if (*p == '/') { *p = 0; mkdir(tmp, 0755); *p = '/'; }
    }
    mkdir(tmp, 0755);
}

static int file_exists(const char* path) {
    struct stat st; return (stat(path, &st) == 0 && st.st_size > 0);
}

// ---------------------------------------------------------------------------
// The boot DATA files bundled as rawfile under rawfile/substrate/… . Each is
// extracted to <filesDir>/<rel> on first launch (idempotent). This is the FULL
// -Xbootclasspath the probe assembles (substrate layout, framework-shim OMITTED) +
// the triangleApk stage inputs (triangle.apk, upscreen-render.dex.jar). The only
// bcp entry the probe references that is NOT bundled is upscreen-render-ivs.dex.jar
// (not available locally); this substrate provably tolerates a missing bcp entry.
static const char* kBootData[] = {
    "substrate/android/framework/core-jars/stringfactory.jar",
    "substrate/android/framework/core-jars/core-oj-fieldfix.jar",
    "substrate/android/framework/core-jars/core-libart.jar",
    "substrate/android/framework/core-jars/core-icu4j.jar",
    "substrate/android/framework/core-jars/conscrypt.jar",
    "substrate/android/framework/core-jars/bouncycastle.jar",
    "substrate/android/framework/core-jars/apache-xml.jar",
    "substrate/android/framework/adapter-mainline-stubs.jar",
    "substrate/android/framework/framework.jar",
    "substrate/android/framework/adapter-runtime-bcp.jar",
    "substrate/android/framework/oh-adapter-framework.jar",
    "substrate/apks/dayu600-androidx-overlay-stub.dex",
    "substrate/apks/dayu600-apk-probe.dex",
    "substrate/apks/upscreen-render.dex.jar",
    "substrate/apks/icu-data.jar",
    "substrate/apks/triangle.apk",
};
static const int kBootDataN = (int)(sizeof(kBootData) / sizeof(kBootData[0]));

static int extract_one(const char* rel) {
    char dst[1400];
    snprintf(dst, sizeof(dst), "%s/%s", g_files_dir, rel);
    if (file_exists(dst)) return 0;                      // idempotent
    char parent[1400]; strncpy(parent, dst, sizeof(parent) - 1); parent[sizeof(parent) - 1] = 0;
    char* slash = strrchr(parent, '/'); if (slash) { *slash = 0; mkdirs(parent); }

    RawFile* rf = OH_ResourceManager_OpenRawFile(g_mgr, rel);
    if (!rf) { LOGE("extract: OpenRawFile FAILED %{public}s", rel); return -1; }
    long size = OH_ResourceManager_GetRawFileSize(rf);
    int fd = open(dst, O_WRONLY | O_CREAT | O_TRUNC, 0644);
    if (fd < 0) { LOGE("extract: open dst FAILED %{public}s errno=%d", dst, errno); OH_ResourceManager_CloseRawFile(rf); return -1; }
    const int CH = 1 << 20; char* buf = (char*)malloc(CH);
    long done = 0; int rc = 0;
    while (done < size) {
        int want = (size - done > CH) ? CH : (int)(size - done);
        int got = OH_ResourceManager_ReadRawFile(rf, buf, (size_t)want);
        if (got <= 0) { rc = -1; break; }
        write_all(fd, buf, (unsigned long)got); done += got;
    }
    free(buf); close(fd); OH_ResourceManager_CloseRawFile(rf);
    if (rc != 0) { LOGE("extract: short read %{public}s (%ld/%ld)", rel, done, size); return -1; }
    LOGI("extract: %{public}s (%ld bytes)", rel, size);
    return 0;
}

// Self-locate the HAP's bundle native-lib dir (the PROT_EXEC-blessed dir this very
// libentry.so was mapped from) via dladdr on one of our own functions. -> g_lib_dir.
static int locate_lib_dir(void) {
    Dl_info info; memset(&info, 0, sizeof(info));
    if (dladdr((void*)&locate_lib_dir, &info) == 0 || info.dli_fname == NULL) {
        LOGE("locate_lib_dir: dladdr failed");
        return -1;
    }
    strncpy(g_lib_dir, info.dli_fname, sizeof(g_lib_dir) - 1);
    g_lib_dir[sizeof(g_lib_dir) - 1] = 0;
    char* slash = strrchr(g_lib_dir, '/');
    if (!slash) { LOGE("locate_lib_dir: no dir in %{public}s", info.dli_fname); return -1; }
    *slash = 0;                                   // dir of libentry.so
    LOGI("bundle lib dir = %{public}s", g_lib_dir);
    return 0;
}

// Create <filesDir>/substrate/<rel> as a symlink to <bundleLibDir>/<soname>, so the
// probe's absolute-$ROOT-path exec dlopen resolves (via symlink realpath) to a
// PROT_EXEC-blessed bundle file. Idempotent.
static void symlink_exec(const char* rel, const char* soname) {
    // OBSOLETE (artboot-v3 bundle-libs single-root fix): WESTLAKE_ROOT now points AT the
    // bundle native-lib dir, so the probe's absolute-$ROOT exec loads
    // ($ROOT/art/libwestlake_art.so, $ROOT/android/lib64/liboh_android_runtime.so) resolve
    // directly inside the (exec-blessed) bundle libs dir — no filesDir->bundle symlink is
    // needed. Neutralized to a no-op so it can never error; kept (not deleted) to keep the diff small.
    (void)rel; (void)soname;
    return;
}

static void set_env_layout(void) {
    char p[1400], hbp[1400];
    // artboot-v3 "bundle-libs single root": WESTLAKE_ROOT now points AT the bundle native-lib
    // dir (LIBDIR). Both engine .so ($ROOT/art/…, $ROOT/android/lib64/…) AND the boot jars/dex
    // ($ROOT/android/framework/…, $ROOT/apks/…) are injected there, so one root serves both.
    // Only WRITABLE dirs stay on the filesDir sandbox (WRIT) — bundle libs is read-only.
    const char* LIBDIR = g_lib_dir;    // bundle native-lib dir: $ROOT (read-only, exec-blessed)
    const char* WRIT   = g_sub_root;   // <filesDir>/substrate: writable app sandbox
    // --- substrate root / layout (probe builds its own bcp off $ROOT == bundle libs) ---
    setenv("WESTLAKE_ROOT", LIBDIR, 1);
    setenv("WESTLAKE_LAYOUT", "substrate", 1);
    setenv("WESTLAKE_OMIT_FRAMEWORK_SHIM", "1", 1);
    setenv("WESTLAKE_LOAD_COMPAT_STUBS", "1", 1);
    // --- dynamic-loader search path: the make-or-break for the render chain -----------------
    // The heavy-bridge renderer (libwestlake_upscreen_renderer.so) has RUNPATH=/system/lib64
    // only, so at beforeStage it cannot find its NEEDED libhwui.so, which lives ONLY in this
    // HAP's bundle libs dir ($ROOT == LIBDIR). Without this the renderer dlopen returns NULL,
    // no RSSurfaceNode is made, and the dashboard is blank (the white screen). libhwui in turn
    // NEEDs libskia_canvaskit.z.so / libEGL / libGLESv3 / libvulkan — OH system libs under
    // /system/lib64{,/platformsdk,/chipset-sdk-sp}. Mirror the proven shell lane's LD_LIBRARY_PATH
    // (oracle/device/run-triangle-5ce.sh): bundle-libs FIRST, then the three system graphics dirs.
    {
        char ldp[2048];
        snprintf(ldp, sizeof(ldp),
                 "%s:/system/lib64:/system/lib64/platformsdk:/system/lib64/chipset-sdk-sp",
                 LIBDIR);
        setenv("LD_LIBRARY_PATH", ldp, 1);
    }
    // --- Android read-only root: under the (read-only) bundle libs $ROOT/android ---
    snprintf(p, sizeof(p), "%s/android", LIBDIR);                            setenv("ANDROID_ROOT", p, 1);
    // --- Android WRITABLE dirs: under the filesDir sandbox (NOT $ROOT; bundle libs is RO) ---
    snprintf(p, sizeof(p), "%s/android-data", WRIT); mkdirs(p);              setenv("ANDROID_DATA", p, 1);
    snprintf(p, sizeof(p), "%s/expand", WRIT); mkdirs(p);                    setenv("ANDROID_EXPAND", p, 1);
    snprintf(p, sizeof(p), "%s/storage", WRIT); mkdirs(p);                   setenv("ANDROID_STORAGE", p, 1);
    snprintf(p, sizeof(p), "%s/storage/emulated/0", WRIT); mkdirs(p);        setenv("EXTERNAL_STORAGE", p, 1);
    // --- APEX roots: under the (read-only) bundle libs $ROOT/android/apex ---
    snprintf(p, sizeof(p), "%s/android/apex/com.android.art", LIBDIR);       setenv("ANDROID_ART_ROOT", p, 1);
    snprintf(p, sizeof(p), "%s/android/apex/com.android.i18n", LIBDIR);      setenv("ANDROID_I18N_ROOT", p, 1);
    snprintf(p, sizeof(p), "%s/android/apex/com.android.tzdata", LIBDIR);    setenv("ANDROID_TZDATA_ROOT", p, 1);
    snprintf(p, sizeof(p), "%s/android/apex", LIBDIR);                       setenv("APEX_ROOT", p, 1);
    // also seed a dalvik-cache dir under ANDROID_DATA (writable, filesDir sandbox)
    snprintf(p, sizeof(p), "%s/android-data/dalvik-cache", WRIT); mkdirs(p);
    // --- drive the probe constructor: create VM + full triangleApk stage ---
    setenv("WESTLAKE_DLOPEN_ON_LOAD", "1", 1);
    setenv("WESTLAKE_CREATE_VM", "1", 1);
    setenv("WESTLAKE_STAGE", "uptodownProbe", 1);
    setenv("WESTLAKE_SUBSTAGE", "triangleApk", 1);
    setenv("WESTLAKE_NO_EXIT", "1", 1);
    // --- Wall-B abort diagnostics: describe pending java exception + dump java stack ---
    setenv("WESTLAKE_EXCEPTION_DESCRIBE", "1", 1);
    setenv("WESTLAKE_JAVA_STACK", "1", 1);
    // --- heavy bridge = the hwui/skia renderer, loaded RTLD_GLOBAL before the stage ---
    setenv("WESTLAKE_LOAD_HEAVY_BRIDGE", "1", 1);
    setenv("WESTLAKE_HEAVY_BRIDGE_TIMING", "beforeStage", 1);
    snprintf(hbp, sizeof(hbp), "%s/libwestlake_upscreen_renderer.so", LIBDIR);
    setenv("WESTLAKE_HEAVY_BRIDGE_PATH", hbp, 1);
}

// ---------------------------------------------------------------------------
static void* probe_thread(void* arg) {
    (void)arg;
    install_crash_handlers();
    write_verdict("FAIL", "incomplete-pipeline-did-not-finish");   // pre-seed breadcrumb

    // 1) extract boot data → filesDir/substrate
    g_phase = "extract";
    int missing = 0;
    for (int i = 0; i < kBootDataN; i++) if (extract_one(kBootData[i]) != 0) missing++;
    if (missing) LOGE("extract: %d/%d boot-data files failed", missing, kBootDataN);

    // 2) self-locate the bundle native-lib dir (exec-blessed) via dladdr
    g_phase = "locate-libdir";
    if (locate_lib_dir() != 0) { write_verdict("FAIL", "cannot-locate-bundle-lib-dir"); return NULL; }

    // 3) symlink the probe's two absolute-$ROOT-path exec loads into the bundle dir
    g_phase = "symlink-exec";
    symlink_exec("art/libwestlake_art.so",                  "libwestlake_art.so");
    symlink_exec("android/lib64/liboh_android_runtime.so",  "liboh_android_runtime.so");

    // 4) env BEFORE any dlopen of the probe / ART
    g_phase = "setenv";
    set_env_layout();

    // 5) preload the ART compat stubs RTLD_GLOBAL (bionic/vixl stub suppliers for
    //    libart's UND). The probe .so itself also carries stubs; this is belt-and-
    //    suspenders and its failure is non-fatal.
    g_phase = "dlopen-compat-stubs";
    void* stubs = dlopen("libwestlake_art_compat_stubs.so", RTLD_LAZY | RTLD_GLOBAL);
    if (stubs) LOGI("art_compat_stubs loaded (global)"); else LOGI("art_compat_stubs not loaded (ok)");

    // 5.5) Render-chain resolution is handled by LD_LIBRARY_PATH (set in set_env_layout above),
    //      NOT by pre-loading libhwui here. Root cause of the blank dashboard: the heavy-bridge
    //      renderer's RUNPATH is /system/lib64[:/platformsdk] only, so at beforeStage it cannot
    //      find its NEEDED libhwui.so, which lives ONLY in this HAP's bundle libs dir -> renderer
    //      dlopen returns NULL -> no RSSurfaceNode -> white screen. The FIX (see set_env_layout)
    //      is to export the same LD_LIBRARY_PATH the proven shell lane uses so the renderer pulls
    //      libhwui itself at beforeStage = AFTER JNI_CreateJavaVM + startReg, i.e. with the Android
    //      runtime already up. A bare EARLY preload of libhwui here (before the runtime) instead
    //      SIGBUSes in one of its 57 constructors (sig=7 phase=preload-render-chain) — the
    //      regression this replaces. Nothing to do at this phase now.

    // 6) dlopen the embedded-art probe RTLD_GLOBAL. Its constructor (CREATE_VM=1) runs
    //    the WHOLE pipeline in-place: load ART -> JNI_CreateJavaVM -> startReg -> load
    //    renderer beforeStage -> Dayu600ApkStageProbe triangleApk (renders). This may
    //    block for the duration of the stage (fine — we are the detached worker).
    g_phase = "dlopen-probe-drive-pipeline";
    LOGI("dlopen probe -> drive VM + triangleApk render pipeline");
    void* probe = dlopen("libwestlake_embedded_art_dlopen_probe.so", RTLD_NOW | RTLD_GLOBAL);
    if (!probe) {
        char* e = dlerror();
        char reason[1024]; snprintf(reason, sizeof(reason), "dlopen-probe-failed:%s", e ? e : "?");
        write_verdict("FAIL", reason); return NULL;
    }
    LOGI("probe dlopen returned (constructor pipeline complete)");

    // 6.5) POST-VM render-chain diagnostic. The probe's constructor has now created the VM +
    //      started the android runtime, so libhwui's 57 constructors are safe to run here (the
    //      earlier phase-5.5 preload SIGBUSed ONLY because the runtime was not yet up). Load the
    //      renderer FIRST (tests its OWN NEEDED-libhwui resolution) then libhwui directly (tests
    //      raw resolvability), and record the EXACT dlerror to a file — hilog rotates under load
    //      so the file is the reliable record. This tells us whether the blank dashboard is a
    //      resolvability problem (libhwui not found by the renderer) or a stage/timing one.
    {
        char rp[1300]; snprintf(rp, sizeof(rp), "%s/libwestlake_upscreen_renderer.so", g_lib_dir);
        char diagp[1300]; snprintf(diagp, sizeof(diagp), "%s/render-diag.txt", g_files_dir);
        g_phase = "post-vm-load-renderer";
        void* rnd = dlopen(rp, RTLD_NOW | RTLD_GLOBAL);
        char* rnde = rnd ? NULL : dlerror();
        g_phase = "post-vm-load-libhwui";
        void* hw = dlopen("libhwui.so", RTLD_NOW | RTLD_GLOBAL);
        char* hwe = hw ? NULL : dlerror();
        g_phase = "post-vm-diag-write";
        const char* ldp = getenv("LD_LIBRARY_PATH");
        char line[1800];
        int n = snprintf(line, sizeof(line),
            "renderer=%s : %s\nlibhwui=%s : %s\nLD_LIBRARY_PATH=%s\n",
            rnd ? "OK" : "FAIL", rnd ? "(loaded)" : (rnde ? rnde : "?"),
            hw  ? "OK" : "FAIL", hw  ? "(loaded)" : (hwe  ? hwe  : "?"),
            ldp ? ldp : "(unset)");
        int dfd = open(diagp, O_WRONLY | O_CREAT | O_TRUNC, 0644);
        if (dfd >= 0 && n > 0) { write_all(dfd, line, (unsigned long)n); close(dfd); }
        LOGI("post-vm render-diag: renderer=%{public}s libhwui=%{public}s",
             rnd ? "OK" : "FAIL", hw ? "OK" : "FAIL");
        if (rnde) LOGE("post-vm renderer dlerror: %{public}s", rnde);
        if (hwe)  LOGE("post-vm libhwui  dlerror: %{public}s", hwe);
    }

    // The probe wrote its own on-screen frames + hilog. We cannot read its
    // /data/local/tmp result files from the app sandbox, so our verdict attests the
    // pipeline ran to completion without crashing; the render proof is on-screen +
    // the probe's ARTBOOT/embedded-art hilog + the parent's on-board pixel check.
    g_phase = "verdict";
    write_verdict("PASS", "probe-pipeline-ran-to-completion-no-crash (render=on-screen+hilog)");

    // DO NOT return. This worker called (through the probe's constructor) JNI_CreateJavaVM,
    // so ART attached it as the VM's "main" thread. Returning here exits the pthread ->
    // __pthread_tsd_run_dtors -> art::Thread::ThreadExitCallback -> art::Runtime::Abort ->
    // SIGABRT (~11s after launch: the white-screen crash; faultlog fault Tid "main" with
    // start -> pthread_exit -> ThreadExitCallback -> Abort). We have no JavaVM* here to
    // DetachCurrentThread cleanly, and the render pipeline's surface/render-loop depends on
    // this VM attachment staying live, so park this thread forever. The VM + on-screen frames
    // persist; ArkUI keeps running on the real main thread, unaffected.
    g_phase = "parked-vm-alive";
    LOGI("pipeline done; parking VM-attached worker forever (no thread-exit abort)");
    for (;;) pause();
    return NULL;   // unreachable
}

// ---------------------------------------------------------------------------
// napi: runProbe(filesDir: string, resMgr: resourceManager) : string
static napi_value RunProbe(napi_env env, napi_callback_info info) {
    size_t argc = 2; napi_value argv[2] = { NULL, NULL };
    napi_get_cb_info(env, info, &argc, argv, NULL, NULL);

    size_t len = 0;
    if (argc >= 1 && argv[0])
        napi_get_value_string_utf8(env, argv[0], g_files_dir, sizeof(g_files_dir), &len);
    if (len == 0) strcpy(g_files_dir, "/data/storage/el2/base/files"); // fallback

    snprintf(g_sub_root,     sizeof(g_sub_root),     "%s/substrate", g_files_dir);
    snprintf(g_verdict_path, sizeof(g_verdict_path), "%s/artboot-verdict.txt", g_files_dir);

    if (argc >= 2 && argv[1])
        g_mgr = OH_ResourceManager_InitNativeResourceManager(env, argv[1]);

    napi_value ret;
    if (!g_mgr) {
        write_verdict("FAIL", "no-native-resource-manager");
        napi_create_string_utf8(env, "artboot: FAIL (no resourceManager)", NAPI_AUTO_LENGTH, &ret);
        return ret;
    }

    pthread_attr_t attr; pthread_attr_init(&attr);
    pthread_attr_setstacksize(&attr, 16 * 1024 * 1024);
    pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_DETACHED);
    pthread_t th;
    int prc = pthread_create(&th, &attr, probe_thread, NULL);
    pthread_attr_destroy(&attr);
    if (prc != 0) {
        write_verdict("FAIL", "pthread_create-failed");
        napi_create_string_utf8(env, "artboot: FAIL (pthread_create)", NAPI_AUTO_LENGTH, &ret);
        return ret;
    }

    char msg[1400];
    snprintf(msg, sizeof(msg), "artboot: render pipeline launched → %s (also hilog tag ARTBOOT)", g_verdict_path);
    napi_create_string_utf8(env, msg, NAPI_AUTO_LENGTH, &ret);
    return ret;
}

static napi_value Init(napi_env env, napi_value exports) {
    napi_property_descriptor desc[] = {
        { "runProbe", NULL, RunProbe, NULL, NULL, NULL, napi_default, NULL },
    };
    napi_define_properties(env, exports, sizeof(desc) / sizeof(desc[0]), desc);
    return exports;
}

static napi_module g_module = {
    .nm_version = 1,
    .nm_flags = 0,
    .nm_filename = NULL,
    .nm_register_func = Init,
    .nm_modname = "entry",
    .nm_priv = NULL,
    .reserved = { 0 },
};

__attribute__((constructor)) void RegisterEntryModule(void) { napi_module_register(&g_module); }
