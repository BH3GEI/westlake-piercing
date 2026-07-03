        ContentProviderBridge bridge = mOhBridges.get(authority);
        if (bridge == null) {
            Log.d(TAG, "acquireProvider: creating OH bridge for " + authority);
            bridge = new ContentProviderBridge(authority);
            mOhBridges.put(authority, bridge);
        }
 
        // Wrap bridge in a ContentProviderHolder.
        // G2.7 (2026-04-30): MUST populate info.applicationInfo + processName +
        // packageName, else AOSP ActivityThread.installProviderAuthoritiesLocked
        // NPEs on `holder.info.applicationInfo.uid` when DeviceConfig.getProperty
        // / Settings ContentResolver.call traverses the holder.
        ProviderInfo info = new ProviderInfo();
        info.authority = authority;
        info.name = "adapter.contentprovider.ContentProviderBridge";
        info.exported = true;
        info.processName = "com.adapter.cp_synth";
        info.packageName = "com.adapter.cp_synth";
 
        // Synthesize ApplicationInfo for the in-process bridge provider.
        // Field set kept minimal ??installProviderAuthoritiesLocked reads
        // .uid; future paths may also read .packageName / .processName /
        // .targetSdkVersion / .flags.  Use current process identity so the
        // bridge looks like an in-process provider to AOSP framework code.
        ApplicationInfo appInfo = buildSynthAppInfo();
