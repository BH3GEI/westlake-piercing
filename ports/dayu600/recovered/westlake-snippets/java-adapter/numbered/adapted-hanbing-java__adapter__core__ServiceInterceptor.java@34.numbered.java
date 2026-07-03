// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__adapter__core__ServiceInterceptor.java@34.html
// title: p1613 adapted-hanbing-java/adapter/core/ServiceInterceptor.java:34

   22:  
   23: import java.lang.reflect.Field;
   24:  
   25: public class ServiceInterceptor {
   26:  
   27:     private static final String TAG = "OH_ServiceInterceptor";
   28:  
   29:     /**
   30:      * Install adapters for all 5 bridged system services.
   31:      * Each adapter extends IXxx.Stub and is set directly into the
   32:      * framework's singleton/field, replacing the original Binder proxy.
   33:      */
   34:     public static void installInterceptors() {
   35:         Log.i(TAG, "Installing service adapters...");
   36:  
   37:         installActivityManagerAdapter();
   38:         installActivityTaskManagerAdapter();
   39:         installPackageManagerAdapter();
   40:         installWindowManagerAdapter();
   41:         installWindowSessionAdapter();
   42:  
   43:         Log.i(TAG, "All service adapters installed");
   44:     }
   45:  
   46:     private static void installActivityManagerAdapter() {
