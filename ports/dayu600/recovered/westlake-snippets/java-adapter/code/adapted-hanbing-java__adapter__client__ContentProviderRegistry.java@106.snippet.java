    // ========================================================================
 
    /**
     * Get a ContentProviderHolder for the given authority.
     *
     * Resolution order:
     *   1. Check locally published Android providers (app-to-app)
     *   2. Create/return OH DataShare bridge (app-to-OH-system)
     *
     * @param authority The content provider authority
     * @return ContentProviderHolder with valid IContentProvider, or null
     */
    public ContentProviderHolder acquireProvider(String authority) {
        if (authority == null) return null;
 
        // 1. Check locally published Android providers first
        ContentProviderHolder local = mLocalProviders.get(authority);
        if (local != null && local.provider != null) {
            Log.d(TAG, "acquireProvider: found local provider for " + authority);
            return local;
        }
 
        // 2. Create or retrieve OH DataShare bridge
        ContentProviderBridge bridge = mOhBridges.get(authority);
        if (bridge == null) {
