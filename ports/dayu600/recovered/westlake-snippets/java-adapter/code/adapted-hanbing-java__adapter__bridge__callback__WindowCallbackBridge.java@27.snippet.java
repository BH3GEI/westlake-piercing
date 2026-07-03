 *   - OH separates rect/mode/focus/avoidArea into individual calls
 *   - Android batches most into resized() with frames/insets/config
 */
package adapter.bridge.callback;
 
import android.os.RemoteException;
import android.util.Log;
import android.view.IWindow;
 
public class WindowCallbackBridge {
 
    private static final String TAG = "OH_WindowCBBridge";
    private final Object mAndroidWindow; // Android IWindow proxy
    private IWindow mIWindow; // Typed reference (resolved lazily)
 
    public WindowCallbackBridge(Object androidWindow) {
        mAndroidWindow = androidWindow;
        if (androidWindow instanceof IWindow) {
            mIWindow = (IWindow) androidWindow;
        }
    }
 
    /**
     * Dispatch app visibility to the Android IWindow.
     */
