// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__adapter__core__OHEnvironment.java@70.html
// title: p1613 adapted-hanbing-java/adapter/core/OHEnvironment.java:70

   58:  
   59:     /** Connect to OH services. */
   60:     public static native boolean nativeConnectToOHServices();
   61:  
   62:     /**
   63:      * Attaches an application to the OH adapter layer so that
   64:      * subsequent calls can be routed correctly.
   65:      *
   66:      * @param pid         process id of the application
   67:      * @param uid         user id of the application
   68:      * @param packageName application package name
   69:      */
   70:     public static void attachApplication(int pid, int uid, String packageName) {
   71:         nativeAttachApplication(pid, uid, packageName);
   72:     }
   73:  
   74:     /** Native call to attach an application to the adapter layer. */
   75:     public static native boolean nativeAttachApplication(int pid, int uid, String packageName);
   76:  
   77:     /**
   78:      * Shuts down the OH adapter layer and releases associated resources.
   79:      */
   80:     public static void shutdown() {
   81:         nativeShutdown();
   82:     }
