import android.util.Log;
 
import adapter.activity.IntentWantConverter;
import adapter.packagemanager.PackageInfoBuilder;
import adapter.packagemanager.PermissionMapper;
 
import java.util.ArrayList;
import java.util.List;
 
public class PackageManagerAdapter extends IPackageManager.Stub {
 
    @Override
    public boolean[] canPackageQuery(String callerPackage, String[] targetPackages, int userId) {
        boolean[] r = new boolean[targetPackages != null ? targetPackages.length : 0];
        java.util.Arrays.fill(r, true);
        return r;
    }
 
    @Override
    public boolean waitForHandler(long timeoutMillis, boolean forBackgroundHandler) {
        return true;
    }
 
    @Override
    public void setKeepUninstalledPackages(java.util.List<String> packageNames) {
