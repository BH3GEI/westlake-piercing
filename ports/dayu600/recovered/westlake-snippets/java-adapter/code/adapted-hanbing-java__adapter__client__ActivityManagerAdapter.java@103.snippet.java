import com.android.internal.policy.IKeyguardDismissCallback;
 
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
 
/**
 * Class-inheritance based adapter that extends IActivityManager.Stub.
 * Every AIDL method is overridden with either a bridged implementation
 * (forwarding to OH native services) or a stub returning a safe default.
 */
public class ActivityManagerAdapter extends IActivityManager.Stub {
 
    private static final String TAG = "OH_AMAdapter";
 
    private final long mOhAbilityManager;
 
    private static native long nativeGetOHAbilityManagerService();
    static native int nativeStartAbility(String bundleName, String abilityName, String action, String uri, String extraJson);
    static native int nativeConnectAbility(String bundleName, String abilityName, int connectionId);
    static native int nativeDisconnectAbility(int connectionId);
    static native int nativeStopServiceAbility(String bundleName, String abilityName);
 
    // Broadcast / CommonEvent native methods
