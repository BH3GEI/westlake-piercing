package android.os;

public class Looper {
    private static final Looper MAIN = new Looper();
    private static final MessageQueue QUEUE = new MessageQueue();

    public static void prepare() {
    }

    public static void prepareMainLooper() {
    }

    public static Looper myLooper() {
        return MAIN;
    }

    public static Looper getMainLooper() {
        return MAIN;
    }

    public static void loop() {
    }

    public MessageQueue getQueue() {
        return QUEUE;
    }

    public Thread getThread() {
        return Thread.currentThread();
    }

    public void quit() {
    }

    public void quitSafely() {
    }
}
