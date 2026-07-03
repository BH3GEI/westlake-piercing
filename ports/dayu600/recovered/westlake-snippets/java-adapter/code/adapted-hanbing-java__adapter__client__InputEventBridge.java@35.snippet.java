 
public class InputEventBridge {
 
    private static final String TAG = "OH_InputEventBridge";
    private static volatile InputEventBridge sInstance;
 
    // Maps window token -> session ID for input routing
    private final Map<IBinder, Integer> mWindowSessionMap = new ConcurrentHashMap<>();
 
    // Maps session ID -> server-side InputChannel
    private final Map<Integer, InputChannel> mServerChannels = new ConcurrentHashMap<>();
 
    public static InputEventBridge getInstance() {
        if (sInstance == null) {
            synchronized (InputEventBridge.class) {
                if (sInstance == null) {
                    sInstance = new InputEventBridge();
                }
            }
        }
        return sInstance;
    }
 
    private InputEventBridge() {
    }
