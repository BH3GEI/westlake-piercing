        try {
            WindowSessionAdapter adapter = new WindowSessionAdapter();
            replaceStaticField(
                    "android.view.WindowManagerGlobal",
                    "sWindowSession",
                    adapter);
            Log.i(TAG, "IWindowSession adapter installed");
        } catch (Exception e) {
            Log.e(TAG, "Failed to install IWindowSession adapter", e);
        }
    }
 
    private static void replaceSingletonInstance(String managerClassName, String singletonFieldName,
                                                  Object adapterInstance) throws Exception {
        Class<?> mgr = Class.forName(managerClassName);
        Field singletonField = mgr.getDeclaredField(singletonFieldName);
        singletonField.setAccessible(true);
        Object singleton = singletonField.get(null);
 
        if (singleton == null) {
            Log.w(TAG, singletonFieldName + " is null, cannot install adapter");
            return;
        }
 
        Class<?> singletonClass = Class.forName("android.util.Singleton");
