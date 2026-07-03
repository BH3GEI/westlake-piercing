 
import java.lang.reflect.Field;
 
public class ServiceInterceptor {
 
    private static final String TAG = "OH_ServiceInterceptor";
 
    /**
     * Install adapters for all 5 bridged system services.
     * Each adapter extends IXxx.Stub and is set directly into the
     * framework's singleton/field, replacing the original Binder proxy.
     */
    public static void installInterceptors() {
        Log.i(TAG, "Installing service adapters...");
 
        installActivityManagerAdapter();
        installActivityTaskManagerAdapter();
        installPackageManagerAdapter();
        installWindowManagerAdapter();
        installWindowSessionAdapter();
 
        Log.i(TAG, "All service adapters installed");
    }
 
    private static void installActivityManagerAdapter() {
