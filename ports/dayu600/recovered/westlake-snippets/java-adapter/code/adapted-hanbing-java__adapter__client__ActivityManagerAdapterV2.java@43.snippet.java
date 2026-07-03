import android.util.Log;
 
import adapter.activity.IntentWantConverter;
 
/**
 * Standalone (non-Stub) adapter for Android ActivityManager IPC.
 *
 * Android system services call this via Binder IPC when apps invoke
 * ActivityManager APIs.  Each method either:
 *   [BRIDGED]  ??calls native JNI ??OH IAbilityManager proxy
 *   [STUB]     ??returns safe default (app still works)
 */
public class ActivityManagerAdapterV2 {
 
    private static final String TAG = "OH_AMAdapterV2";
 
    // Token ??OH IRemoteObject token mapping (needed for CloseAbility/MinimizeAbility)
    // Android IBinder token ??OH sptr<IRemoteObject>
    private final android.util.LongSparseArray<IBinder> mTokenToIBinder =
            new android.util.LongSparseArray<>();
 
    // ==================== Native Methods ====================
 
    // OHAbilityManagerClient singleton handle (returned by nativeGetOHAbilityManagerService)
    private static native long nativeGetOHAbilityManagerService();
