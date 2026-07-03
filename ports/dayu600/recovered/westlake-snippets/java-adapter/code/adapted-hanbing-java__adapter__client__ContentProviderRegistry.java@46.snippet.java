 
    // Singleton
    private static final ContentProviderRegistry sInstance = new ContentProviderRegistry();
 
    public static ContentProviderRegistry getInstance() {
        return sInstance;
    }
 
    // Map<authority, ContentProviderHolder> for locally published Android providers
    private final Map<String, ContentProviderHolder> mLocalProviders = new ConcurrentHashMap<>();
 
    // Map<authority, ContentProviderBridge> for OH DataShare bridges (cached)
    private final Map<String, ContentProviderBridge> mOhBridges = new ConcurrentHashMap<>();
 
    private ContentProviderRegistry() {}
 
    // ========================================================================
    // Provider registration (called by ActivityManagerAdapter)
    // ========================================================================
 
    /**
     * Register locally published Android ContentProviders.
     * Called when an Android App process publishes its providers.
     *
     * @param providers List of ContentProviderHolder from the app
