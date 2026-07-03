package android.net;

public class NetworkInfo {
    public boolean isConnected() {
        return true;
    }

    public boolean isConnectedOrConnecting() {
        return true;
    }

    public boolean isRoaming() {
        return false;
    }

    public int getType() {
        return 1;
    }

    public int getSubtype() {
        return 0;
    }
}

