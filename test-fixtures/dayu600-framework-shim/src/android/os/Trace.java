package android.os;

public final class Trace {
    public static final int MAX_SECTION_NAME_LEN = 127;
    private static final String TAG = "Trace";

    public static final long TRACE_TAG_NEVER = 0L;
    public static final long TRACE_TAG_ALWAYS = 1L;
    public static final long TRACE_TAG_GRAPHICS = 1L << 1;
    public static final long TRACE_TAG_INPUT = 1L << 2;
    public static final long TRACE_TAG_VIEW = 1L << 3;
    public static final long TRACE_TAG_WEBVIEW = 1L << 4;
    public static final long TRACE_TAG_WINDOW_MANAGER = 1L << 5;
    public static final long TRACE_TAG_ACTIVITY_MANAGER = 1L << 6;
    public static final long TRACE_TAG_SYNC_MANAGER = 1L << 7;
    public static final long TRACE_TAG_AUDIO = 1L << 8;
    public static final long TRACE_TAG_VIDEO = 1L << 9;
    public static final long TRACE_TAG_CAMERA = 1L << 10;
    public static final long TRACE_TAG_HAL = 1L << 11;
    public static final long TRACE_TAG_APP = 1L << 12;
    public static final long TRACE_TAG_RESOURCES = 1L << 13;
    public static final long TRACE_TAG_DALVIK = 1L << 14;
    public static final long TRACE_TAG_RS = 1L << 15;
    public static final long TRACE_TAG_BIONIC = 1L << 16;
    public static final long TRACE_TAG_POWER = 1L << 17;
    public static final long TRACE_TAG_PACKAGE_MANAGER = 1L << 18;
    public static final long TRACE_TAG_SYSTEM_SERVER = 1L << 19;
    public static final long TRACE_TAG_DATABASE = 1L << 20;
    public static final long TRACE_TAG_NETWORK = 1L << 21;
    public static final long TRACE_TAG_ADB = 1L << 22;
    public static final long TRACE_TAG_VIBRATOR = 1L << 23;
    public static final long TRACE_TAG_AIDL = 1L << 24;
    public static final long TRACE_TAG_NNAPI = 1L << 25;
    public static final long TRACE_TAG_RRO = 1L << 26;
    public static final long TRACE_TAG_THERMAL = 1L << 27;
    static final long TRACE_TAG_NOT_READY = 1L << 63;

    private static volatile long sEnabledTags = 0L;
    private static int sZygoteDebugFlags = 0;

    private Trace() {
    }

    public static boolean isEnabled() {
        return false;
    }

    public static boolean isTagEnabled(long traceTag) {
        return false;
    }

    public static void traceBegin(long traceTag, String methodName) {
    }

    public static void traceEnd(long traceTag) {
    }

    public static void traceCounter(long traceTag, String counterName, int counterValue) {
    }

    public static void asyncTraceBegin(long traceTag, String methodName, int cookie) {
    }

    public static void asyncTraceEnd(long traceTag, String methodName, int cookie) {
    }

    public static void asyncTraceForTrackBegin(
            long traceTag, String trackName, String methodName, int cookie) {
    }

    public static void asyncTraceForTrackEnd(long traceTag, String trackName, int cookie) {
    }

    public static void instant(long traceTag, String methodName) {
    }

    public static void instantForTrack(long traceTag, String trackName, String methodName) {
    }

    public static void beginSection(String sectionName) {
    }

    public static void endSection() {
    }

    public static void beginAsyncSection(String methodName, int cookie) {
    }

    public static void endAsyncSection(String methodName, int cookie) {
    }

    public static void setCounter(String counterName, long counterValue) {
    }

    public static void setCounter(long traceTag, String counterName, long counterValue) {
    }

    public static void setAppTracingAllowed(boolean allowed) {
    }

    public static void setTracingEnabled(boolean enabled, int zygoteDebugFlags) {
        sEnabledTags = 0L;
        sZygoteDebugFlags = zygoteDebugFlags;
    }

    public static void registerWithPerfetto() {
    }

    private static native boolean nativeIsTagEnabled(long traceTag);

    private static boolean nativeIsTagEnabled$ravenwood(long traceTag) {
        return false;
    }

    private static native void nativeTraceBegin(long traceTag, String methodName);

    private static native void nativeTraceEnd(long traceTag);

    private static native void nativeTraceCounter(long traceTag, String counterName, long counterValue);

    private static native void nativeAsyncTraceBegin(long traceTag, String methodName, int cookie);

    private static native void nativeAsyncTraceEnd(long traceTag, String methodName, int cookie);

    private static native void nativeAsyncTraceForTrackBegin(
            long traceTag, String trackName, String methodName, int cookie);

    private static native void nativeAsyncTraceForTrackEnd(long traceTag, String trackName, int cookie);

    private static native void nativeInstant(long traceTag, String methodName);

    private static native void nativeInstantForTrack(
            long traceTag, String trackName, String methodName);

    private static native void nativeSetAppTracingAllowed(boolean allowed);

    private static void nativeSetAppTracingAllowed$ravenwood(boolean allowed) {
    }

    private static native void nativeSetTracingEnabled(boolean enabled);

    private static void nativeSetTracingEnabled$ravenwood(boolean enabled) {
    }
}
