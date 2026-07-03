// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__core__java__OHServiceManager.java@85.html
// title: p1612 framework/core/java/OHServiceManager.java:85

   73:      * adapter.activity.* / adapter.window.* / adapter.packagemanager.* (which
   74:      * live in oh-adapter-framework.jar, not in core / not always loaded
   75:      * depending on caller).  Adapter classes are loaded by the same
   76:      * PathClassLoader that loaded OHServiceManager so reflection lookup is
   77:      * cheap (one Class.forName + getMethod cache miss on first call).
   78:      *
   79:      * Per feedback.txt line 12, services with no OH analog (connectivity /
   80:      * network_management / content_capture / game) explicitly return null
   81:      * here.  Framework code that tries getService(CONNECTIVITY_SERVICE) on
   82:      * Hello World path is expected to handle null gracefully (boot-path
   83:      * skips for these are??? in shortcuts_inventory.html#chC).
   84:      */
   85:     private static IBinder lookupAdapter(String name) {
   86:         if (name == null) return null;
   87:         switch (name) {
   88:             case "activity":
   89:                 return getAdapterBinder("adapter.activity.ActivityManagerAdapter");
   90:             case "activity_task":
   91:                 return getAdapterBinder("adapter.activity.ActivityTaskManagerAdapter");
   92:             case "package":
   93:                 return getAdapterBinder("adapter.packagemanager.PackageManagerAdapter");
   94:             case "window":
   95:                 return getAdapterBinder("adapter.window.WindowManagerAdapter");
   96:             case "display":
   97:                 return adapter.window.DisplayManagerAdapter.getInstance().asBinder();
