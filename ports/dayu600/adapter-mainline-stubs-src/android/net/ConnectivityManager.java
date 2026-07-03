package android.net;

public class ConnectivityManager {
    public static class NetworkCallback {
    }

    public NetworkCapabilities getNetworkCapabilities(Network network) {
        return new NetworkCapabilities();
    }

    public NetworkInfo getActiveNetworkInfo() {
        return new NetworkInfo();
    }

    public boolean isActiveNetworkMetered() {
        return false;
    }

    public void registerDefaultNetworkCallback(NetworkCallback callback) {
    }

    public void registerNetworkCallback(NetworkRequest request, NetworkCallback callback) {
    }

    public void unregisterNetworkCallback(NetworkCallback callback) {
    }

    public ProxyInfo getDefaultProxy() {
        return null;
    }
}

