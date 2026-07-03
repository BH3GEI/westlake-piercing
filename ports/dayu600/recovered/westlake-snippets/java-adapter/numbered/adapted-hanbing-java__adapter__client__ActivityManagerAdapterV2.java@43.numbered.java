// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__adapter__client__ActivityManagerAdapterV2.java@43.html
// title: p1613 adapted-hanbing-java/adapter/client/ActivityManagerAdapterV2.java:43

   31: import android.util.Log;
   32:  
   33: import adapter.activity.IntentWantConverter;
   34:  
   35: /**
   36:  * Standalone (non-Stub) adapter for Android ActivityManager IPC.
   37:  *
   38:  * Android system services call this via Binder IPC when apps invoke
   39:  * ActivityManager APIs.  Each method either:
   40:  *   [BRIDGED]  ??calls native JNI ??OH IAbilityManager proxy
   41:  *   [STUB]     ??returns safe default (app still works)
   42:  */
   43: public class ActivityManagerAdapterV2 {
   44:  
   45:     private static final String TAG = "OH_AMAdapterV2";
   46:  
   47:     // Token ??OH IRemoteObject token mapping (needed for CloseAbility/MinimizeAbility)
   48:     // Android IBinder token ??OH sptr<IRemoteObject>
   49:     private final android.util.LongSparseArray<IBinder> mTokenToIBinder =
   50:             new android.util.LongSparseArray<>();
   51:  
   52:     // ==================== Native Methods ====================
   53:  
   54:     // OHAbilityManagerClient singleton handle (returned by nativeGetOHAbilityManagerService)
   55:     private static native long nativeGetOHAbilityManagerService();
