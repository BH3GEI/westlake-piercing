// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__window__java__InputEventBridge.java@62.html
// title: p1612 framework/window/java/InputEventBridge.java:62
// summary: resolveDispatchMethod</span><br><span>??? dispatchInputEvent ??? Method ???????????getDeclaredMethod/setAccessible???????????????????? Metho

   50:             }
   51:         }
   52:         return sMainHandler;
   53:     }
   54:  
   55:     // Cached reflection handle for InputEventReceiver.dispatchInputEvent(int, InputEvent),
   56:     // which is declared private ??direct Java invocation would fail with
   57:     // IllegalAccessException, so we use setAccessible(true) once at first use.
   58:     // (Native JNI bypasses Java access control and could call it directly, but
   59:     // we want to keep the post-to-main-looper logic on the Java side where
   60:     // Handler/Looper/Runnable are first-class ??JNI roundtripping a Runnable
   61:     // back into native is heavier than this one-time reflection setup.)
   62:     private static volatile java.lang.reflect.Method sDispatchMethod;
   63:  
   64:     private static java.lang.reflect.Method resolveDispatchMethod() {
   65:         java.lang.reflect.Method m = sDispatchMethod;
   66:         if (m == null) {
   67:             synchronized (InputEventBridge.class) {
   68:                 m = sDispatchMethod;
   69:                 if (m == null) {
   70:                     try {
   71:                         m = InputEventReceiver.class.getDeclaredMethod(
   72:                                 "dispatchInputEvent", int.class, InputEvent.class);
   73:                         m.setAccessible(true);
   74:                         sDispatchMethod = m;
