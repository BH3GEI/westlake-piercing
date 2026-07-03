            } catch (ClassNotFoundException e) {
                Log.d(TAG, "Adapter class not found (OK in dev): " + cls);
            }
        }
        Log.i(TAG, "Cached " + cached + " adapter classes");
    }
 
    /**
     * Force GC and finalization to clean up preload garbage
     * before entering the event loop (objects created during preload
     * that won't be needed are freed now, reducing COW page faults).
     */
    private static void gcAndFinalize() {
        VMRuntime runtime = VMRuntime.getRuntime();
        System.gc();
        runtime.runFinalizationSync();
        System.gc();
        Log.d(TAG, "Post-preload GC complete");
    }
 
    // ============================================================
    // Child Process: Initialization (called after fork + specialize)
    // ============================================================
 
    /**
