// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__adapter__client__ActivityManagerAdapter.java@103.html
// title: p1613 adapted-hanbing-java/adapter/client/ActivityManagerAdapter.java:103

   91: import com.android.internal.policy.IKeyguardDismissCallback;
   92:  
   93: import java.util.Collections;
   94: import java.util.List;
   95: import java.util.concurrent.ConcurrentHashMap;
   96: import java.util.concurrent.atomic.AtomicInteger;
   97:  
   98: /**
   99:  * Class-inheritance based adapter that extends IActivityManager.Stub.
  100:  * Every AIDL method is overridden with either a bridged implementation
  101:  * (forwarding to OH native services) or a stub returning a safe default.
  102:  */
  103: public class ActivityManagerAdapter extends IActivityManager.Stub {
  104:  
  105:     private static final String TAG = "OH_AMAdapter";
  106:  
  107:     private final long mOhAbilityManager;
  108:  
  109:     private static native long nativeGetOHAbilityManagerService();
  110:     static native int nativeStartAbility(String bundleName, String abilityName, String action, String uri, String extraJson);
  111:     static native int nativeConnectAbility(String bundleName, String abilityName, int connectionId);
  112:     static native int nativeDisconnectAbility(int connectionId);
  113:     static native int nativeStopServiceAbility(String bundleName, String abilityName);
  114:  
  115:     // Broadcast / CommonEvent native methods
