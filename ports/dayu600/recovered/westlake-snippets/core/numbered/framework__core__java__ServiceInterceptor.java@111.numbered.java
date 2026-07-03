// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__core__java__ServiceInterceptor.java@111.html
// title: p1612 framework/core/java/ServiceInterceptor.java:111

   99:         try {
  100:             WindowSessionAdapter adapter = new WindowSessionAdapter();
  101:             replaceStaticField(
  102:                     "android.view.WindowManagerGlobal",
  103:                     "sWindowSession",
  104:                     adapter);
  105:             Log.i(TAG, "IWindowSession adapter installed");
  106:         } catch (Exception e) {
  107:             Log.e(TAG, "Failed to install IWindowSession adapter", e);
  108:         }
  109:     }
  110:  
  111:     private static void replaceSingletonInstance(String managerClassName, String singletonFieldName,
  112:                                                   Object adapterInstance) throws Exception {
  113:         Class<?> mgr = Class.forName(managerClassName);
  114:         Field singletonField = mgr.getDeclaredField(singletonFieldName);
  115:         singletonField.setAccessible(true);
  116:         Object singleton = singletonField.get(null);
  117:  
  118:         if (singleton == null) {
  119:             Log.w(TAG, singletonFieldName + " is null, cannot install adapter");
  120:             return;
  121:         }
  122:  
  123:         Class<?> singletonClass = Class.forName("android.util.Singleton");
