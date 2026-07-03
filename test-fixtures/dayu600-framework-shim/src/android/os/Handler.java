package android.os;

public class Handler {
    public Handler() {
        android.app.Activity.westlakeFindViewStatus = 32;
    }

    public boolean post(Runnable r) {
        if (r != null) {
            r.run();
        }
        return true;
    }

    public boolean postDelayed(Runnable r, long delayMillis) {
        return true;
    }

    public void removeCallbacks(Runnable r) {
    }
}
