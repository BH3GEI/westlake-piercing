// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1613\adapted-hanbing-java__adapter__client__ContentProviderRegistry.java@46.html
// title: p1613 adapted-hanbing-java/adapter/client/ContentProviderRegistry.java:46
// summary: mOhBridges</span><br><span>??content provider authority ??? ContentProviderBridge??cquireProvider ???????????eleaseAll ???

   34:  
   35:     // Singleton
   36:     private static final ContentProviderRegistry sInstance = new ContentProviderRegistry();
   37:  
   38:     public static ContentProviderRegistry getInstance() {
   39:         return sInstance;
   40:     }
   41:  
   42:     // Map<authority, ContentProviderHolder> for locally published Android providers
   43:     private final Map<String, ContentProviderHolder> mLocalProviders = new ConcurrentHashMap<>();
   44:  
   45:     // Map<authority, ContentProviderBridge> for OH DataShare bridges (cached)
   46:     private final Map<String, ContentProviderBridge> mOhBridges = new ConcurrentHashMap<>();
   47:  
   48:     private ContentProviderRegistry() {}
   49:  
   50:     // ========================================================================
   51:     // Provider registration (called by ActivityManagerAdapter)
   52:     // ========================================================================
   53:  
   54:     /**
   55:      * Register locally published Android ContentProviders.
   56:      * Called when an Android App process publishes its providers.
   57:      *
   58:      * @param providers List of ContentProviderHolder from the app
