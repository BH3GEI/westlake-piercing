package android.app.servertransaction;

import android.app.ActivityThread;
import android.os.Bundle;
import android.os.PersistableBundle;

public class PendingTransactionActions {
    private boolean mCallOnPostCreate;
    private Bundle mOldState;
    private boolean mRestoreInstanceState;
    private StopInfo mStopInfo;

    public void clear() {
        mCallOnPostCreate = false;
        mOldState = null;
        mRestoreInstanceState = false;
        mStopInfo = null;
    }

    public Bundle getOldState() {
        return mOldState;
    }

    public StopInfo getStopInfo() {
        return mStopInfo;
    }

    public void setCallOnPostCreate(boolean callOnPostCreate) {
        mCallOnPostCreate = callOnPostCreate;
    }

    public void setOldState(Bundle oldState) {
        mOldState = oldState;
    }

    public void setRestoreInstanceState(boolean restoreInstanceState) {
        mRestoreInstanceState = restoreInstanceState;
    }

    public void setStopInfo(StopInfo stopInfo) {
        mStopInfo = stopInfo;
    }

    public boolean shouldCallOnPostCreate() {
        return mCallOnPostCreate;
    }

    public boolean shouldRestoreInstanceState() {
        return mRestoreInstanceState;
    }

    public static class StopInfo implements Runnable {
        public void setActivity(ActivityThread.ActivityClientRecord record) {
        }

        public void setDescription(CharSequence description) {
        }

        public void setPersistentState(PersistableBundle state) {
        }

        public void setState(Bundle state) {
        }

        public void run() {
        }
    }
}
