 * ISession + ISceneSessionManager.
 *
 * Extends IWindowSession.Stub directly instead of using an InvocationHandler
 * proxy, providing compile-time safety for all 42 AIDL methods.
 */
public class WindowSessionAdapter extends IWindowSession.Stub {
 
    private static final String TAG = "OH_WSAdapter";
 
    private final long mOhSession;
 
    // Track OH sessions created by this adapter, keyed by IWindow IBinder
    private final Map<IBinder, int[]> mSessionMap = new HashMap<>();
 
    private static native long nativeGetOHSessionService();
    private static native int[] nativeCreateSession(Object androidWindow, String windowName,
            int windowType, int displayId, int requestedWidth, int requestedHeight);
    private static native int nativeUpdateSessionRect(int sessionId,
            int x, int y, int width, int height);
    private static native int nativeNotifyDrawingCompleted(int sessionId);
    private static native void nativeDestroySession(int sessionId);
    private static native long nativeGetSurfaceNodeId(int sessionId);
    private static native int nativeInjectTouchEvent(int sessionId, int action,
            float x, float y, long downTime, long eventTime);
 
