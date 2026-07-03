// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__adapter__bridge__callback__WindowCallbackBridge.java@27.html
// title: p1613 adapted-hanbing-java/adapter/bridge/callback/WindowCallbackBridge.java:27

   15:  *   - OH separates rect/mode/focus/avoidArea into individual calls
   16:  *   - Android batches most into resized() with frames/insets/config
   17:  */
   18: package adapter.bridge.callback;
   19:  
   20: import android.os.RemoteException;
   21: import android.util.Log;
   22: import android.view.IWindow;
   23:  
   24: public class WindowCallbackBridge {
   25:  
   26:     private static final String TAG = "OH_WindowCBBridge";
   27:     private final Object mAndroidWindow; // Android IWindow proxy
   28:     private IWindow mIWindow; // Typed reference (resolved lazily)
   29:  
   30:     public WindowCallbackBridge(Object androidWindow) {
   31:         mAndroidWindow = androidWindow;
   32:         if (androidWindow instanceof IWindow) {
   33:             mIWindow = (IWindow) androidWindow;
   34:         }
   35:     }
   36:  
   37:     /**
   38:      * Dispatch app visibility to the Android IWindow.
   39:      */
