// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__adapter__client__WindowSessionAdapter.java@61.html
// title: p1613 adapted-hanbing-java/adapter/client/WindowSessionAdapter.java:61

   49:  * ISession + ISceneSessionManager.
   50:  *
   51:  * Extends IWindowSession.Stub directly instead of using an InvocationHandler
   52:  * proxy, providing compile-time safety for all 42 AIDL methods.
   53:  */
   54: public class WindowSessionAdapter extends IWindowSession.Stub {
   55:  
   56:     private static final String TAG = "OH_WSAdapter";
   57:  
   58:     private final long mOhSession;
   59:  
   60:     // Track OH sessions created by this adapter, keyed by IWindow IBinder
   61:     private final Map<IBinder, int[]> mSessionMap = new HashMap<>();
   62:  
   63:     private static native long nativeGetOHSessionService();
   64:     private static native int[] nativeCreateSession(Object androidWindow, String windowName,
   65:             int windowType, int displayId, int requestedWidth, int requestedHeight);
   66:     private static native int nativeUpdateSessionRect(int sessionId,
   67:             int x, int y, int width, int height);
   68:     private static native int nativeNotifyDrawingCompleted(int sessionId);
   69:     private static native void nativeDestroySession(int sessionId);
   70:     private static native long nativeGetSurfaceNodeId(int sessionId);
   71:     private static native int nativeInjectTouchEvent(int sessionId, int action,
   72:             float x, float y, long downTime, long eventTime);
   73:  
