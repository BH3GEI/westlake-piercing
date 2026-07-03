// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__adapter__client__InputEventBridge.java@35.html
// title: p1613 adapted-hanbing-java/adapter/client/InputEventBridge.java:35

   23:  
   24: public class InputEventBridge {
   25:  
   26:     private static final String TAG = "OH_InputEventBridge";
   27:     private static volatile InputEventBridge sInstance;
   28:  
   29:     // Maps window token -> session ID for input routing
   30:     private final Map<IBinder, Integer> mWindowSessionMap = new ConcurrentHashMap<>();
   31:  
   32:     // Maps session ID -> server-side InputChannel
   33:     private final Map<Integer, InputChannel> mServerChannels = new ConcurrentHashMap<>();
   34:  
   35:     public static InputEventBridge getInstance() {
   36:         if (sInstance == null) {
   37:             synchronized (InputEventBridge.class) {
   38:                 if (sInstance == null) {
   39:                     sInstance = new InputEventBridge();
   40:                 }
   41:             }
   42:         }
   43:         return sInstance;
   44:     }
   45:  
   46:     private InputEventBridge() {
   47:     }
