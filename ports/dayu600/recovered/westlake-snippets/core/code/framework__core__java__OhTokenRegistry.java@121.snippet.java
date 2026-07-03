        // Bug 2 Fix 1: drop deferred lifecycle work + launch flag for the dead token.
        sLaunchComplete.remove(ohTokenAddr);
        sPendingByOhToken.remove(ohTokenAddr);
    }
 
    /**
     * 2026-05-25 Bug 2 Fix 1: run {@code action} once the launch for {@code ohTokenAddr}
     * has completed (token registered + onCreate scheduled).  Runs immediately if the
     * launch already completed; otherwise defers until {@link #markLaunchComplete}.
     * Replaces the old "drop FOREGROUND transaction when token not yet registered"
     * behavior, which lost the FOREGROUND ack and tripped OH AMS LIFECYCLE_TIMEOUT.
     */
    public static void runAfterLaunchComplete(long ohTokenAddr, Runnable action) {
        if (action == null) {
            return;
        }
        if (ohTokenAddr == 0L || sLaunchComplete.contains(ohTokenAddr)) {
            action.run();
            return;
        }
        sPendingByOhToken.computeIfAbsent(ohTokenAddr, k -> new ConcurrentLinkedQueue<>()).add(action);
    }
 
    /**
     * 2026-05-25 Bug 2 Fix 1: called from AppSchedulerBridge.nativeOnScheduleLaunchAbility
