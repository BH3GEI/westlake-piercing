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
 
    /**
     * Check if a provider exists (either local or OH-backed).
     */
    public boolean hasProvider(String authority) {
        return mLocalProviders.containsKey(authority) || mOhBridges.containsKey(authority);
    }
 
    /**
