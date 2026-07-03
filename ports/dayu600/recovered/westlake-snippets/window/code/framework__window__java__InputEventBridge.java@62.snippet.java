            }
        }
        return sMainHandler;
    }
 
    // Cached reflection handle for InputEventReceiver.dispatchInputEvent(int, InputEvent),
    // which is declared private ??direct Java invocation would fail with
    // IllegalAccessException, so we use setAccessible(true) once at first use.
    // (Native JNI bypasses Java access control and could call it directly, but
    // we want to keep the post-to-main-looper logic on the Java side where
    // Handler/Looper/Runnable are first-class ??JNI roundtripping a Runnable
    // back into native is heavier than this one-time reflection setup.)
    private static volatile java.lang.reflect.Method sDispatchMethod;
 
    private static java.lang.reflect.Method resolveDispatchMethod() {
        java.lang.reflect.Method m = sDispatchMethod;
        if (m == null) {
            synchronized (InputEventBridge.class) {
                m = sDispatchMethod;
                if (m == null) {
                    try {
                        m = InputEventReceiver.class.getDeclaredMethod(
                                "dispatchInputEvent", int.class, InputEvent.class);
                        m.setAccessible(true);
                        sDispatchMethod = m;
