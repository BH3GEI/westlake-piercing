            invokeApplicationThread("scheduleLowMemory", null, null);
        } catch (Exception e) {
            Log.e(TAG, "Failed to schedule low memory", e);
        }
    }
 
    /**
     * [BRIDGED] ScheduleShrinkMemory -> IApplicationThread.scheduleTrimMemory
     *
     * OH memory shrink level maps to Android TRIM_MEMORY levels:
     *   OH level mapping -> Android ComponentCallbacks2.TRIM_MEMORY_*
     */
    public void onScheduleShrinkMemory(int level) {
        int androidLevel = mapMemoryLevel(level);
        logBridged("ScheduleShrinkMemory", "-> IApplicationThread.scheduleTrimMemory(" + androidLevel + ")");
        try {
            invokeApplicationThread("scheduleTrimMemory", new Class[]{int.class},
                    new Object[]{androidLevel});
        } catch (Exception e) {
            Log.e(TAG, "Failed to schedule trim memory", e);
        }
    }
 
    /**
     * [BRIDGED] ScheduleMemoryLevel -> IApplicationThread.scheduleTrimMemory
