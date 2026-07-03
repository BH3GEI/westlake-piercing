// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__core__java__OhTokenRegistry.java@121.html
// title: p1612 framework/core/java/OhTokenRegistry.java:121

  109:         // Bug 2 Fix 1: drop deferred lifecycle work + launch flag for the dead token.
  110:         sLaunchComplete.remove(ohTokenAddr);
  111:         sPendingByOhToken.remove(ohTokenAddr);
  112:     }
  113:  
  114:     /**
  115:      * 2026-05-25 Bug 2 Fix 1: run {@code action} once the launch for {@code ohTokenAddr}
  116:      * has completed (token registered + onCreate scheduled).  Runs immediately if the
  117:      * launch already completed; otherwise defers until {@link #markLaunchComplete}.
  118:      * Replaces the old "drop FOREGROUND transaction when token not yet registered"
  119:      * behavior, which lost the FOREGROUND ack and tripped OH AMS LIFECYCLE_TIMEOUT.
  120:      */
  121:     public static void runAfterLaunchComplete(long ohTokenAddr, Runnable action) {
  122:         if (action == null) {
  123:             return;
  124:         }
  125:         if (ohTokenAddr == 0L || sLaunchComplete.contains(ohTokenAddr)) {
  126:             action.run();
  127:             return;
  128:         }
  129:         sPendingByOhToken.computeIfAbsent(ohTokenAddr, k -> new ConcurrentLinkedQueue<>()).add(action);
  130:     }
  131:  
  132:     /**
  133:      * 2026-05-25 Bug 2 Fix 1: called from AppSchedulerBridge.nativeOnScheduleLaunchAbility
