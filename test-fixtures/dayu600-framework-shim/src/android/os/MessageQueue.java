package android.os;

public class MessageQueue {
    private static native long nativeInit();
    private static native void nativeDestroy(long ptr);
    private native void nativePollOnce(long ptr, int timeoutMillis);
    private static native void nativeWake(long ptr);
    private static native boolean nativeIsPolling(long ptr);
    private static native void nativeSetFileDescriptorEvents(long ptr, int fd, int events);

    public boolean isIdle() {
        return true;
    }
}
