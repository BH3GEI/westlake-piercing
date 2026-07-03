    // G2.14i (2026-05-01): mirror OH MainThread::HandleForegroundApplication.
    //
    // C++ AppSchedulerAdapter::ScheduleForegroundApplication ??? IAppScheduler IPC ??/td></tr><tr><td class=ln>51</td><td class=cd>    // ??????????????? post ????Runnable ??main Handler ????? IPC ????????/td></tr><tr><td class=ln>52</td><td class=cd>    // AppMS ??? foregroundingAbilityTokens_.insert(token)???????main looper iter
    // ?????Runnable??? native nativeNotifyApplicationForegrounded(recordId)??/td></tr><tr><td class=ln>54</td><td class=cd>    //
    // ?????? main looper ????????????????sleep / ???????????OH ????????/td></tr><tr><td class=ln>56</td><td class=cd>    // main_thread.cpp:2826 HandleForegroundApplication ??quot;PostTask ??main looper ??/td></tr><tr><td class=ln>57</td><td class=cd>    // ??? appMgr_->ApplicationForegrounded"?????/td></tr><tr><td class=ln>58</td><td class=cd>    private static native void nativeNotifyApplicationForegrounded(int recordId);
 
    public static void notifyForegroundDeferred(final int recordId) {
        Handler h = new Handler(Looper.getMainLooper());
        h.post(new Runnable() {
            @Override public void run() {
                Log.i(TAG, "[G2.14i] main-looper iter: ApplicationForegrounded(recordId=" + recordId + ")");
                nativeNotifyApplicationForegrounded(recordId);
            }
        });
    }
 
    // ============================================================
    // ??? 3 (B.39 ?????): OH IPC ScheduleLaunchApplication ???
    //
