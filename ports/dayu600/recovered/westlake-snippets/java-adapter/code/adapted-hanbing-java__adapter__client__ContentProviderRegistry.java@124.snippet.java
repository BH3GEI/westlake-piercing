            Log.d(TAG, "acquireProvider: found local provider for " + authority);
            return local;
        }
 
        // 2. Create or retrieve OH DataShare bridge
        ContentProviderBridge bridge = mOhBridges.get(authority);
        if (bridge == null) {
            Log.d(TAG, "acquireProvider: creating OH bridge for " + authority);
            bridge = new ContentProviderBridge(authority);
            mOhBridges.put(authority, bridge);
        }
 
        // Wrap bridge in a ContentProviderHolder
        ProviderInfo info = new ProviderInfo();
        info.authority = authority;
        info.name = "adapter.contentprovider.ContentProviderBridge";
        info.exported = true;
 
        ContentProviderHolder holder = new ContentProviderHolder(info);
        holder.provider = bridge;
        holder.noReleaseNeeded = true;
 
        return holder;
    }
 
