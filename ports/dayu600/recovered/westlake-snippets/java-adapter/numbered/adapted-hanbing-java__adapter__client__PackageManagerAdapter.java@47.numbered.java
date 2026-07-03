// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__adapter__client__PackageManagerAdapter.java@47.html
// title: p1613 adapted-hanbing-java/adapter/client/PackageManagerAdapter.java:47

   35: import android.util.Log;
   36:  
   37: import adapter.activity.IntentWantConverter;
   38: import adapter.packagemanager.PackageInfoBuilder;
   39: import adapter.packagemanager.PermissionMapper;
   40:  
   41: import java.util.ArrayList;
   42: import java.util.List;
   43:  
   44: public class PackageManagerAdapter extends IPackageManager.Stub {
   45:  
   46:     @Override
   47:     public boolean[] canPackageQuery(String callerPackage, String[] targetPackages, int userId) {
   48:         boolean[] r = new boolean[targetPackages != null ? targetPackages.length : 0];
   49:         java.util.Arrays.fill(r, true);
   50:         return r;
   51:     }
   52:  
   53:     @Override
   54:     public boolean waitForHandler(long timeoutMillis, boolean forBackgroundHandler) {
   55:         return true;
   56:     }
   57:  
   58:     @Override
   59:     public void setKeepUninstalledPackages(java.util.List<String> packageNames) {
