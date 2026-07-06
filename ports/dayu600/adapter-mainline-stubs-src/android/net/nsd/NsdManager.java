package android.net.nsd;

// Mainline-module stub: android.net.nsd lives in the connectivity apex, not core
// framework.jar. Provides the nested listener interfaces app classes implement
// (e.g. com.uptodown's m5.b implements RegistrationListener) plus no-op methods so
// they load/verify on the substrate boot classpath. Real NSD is never exercised.
public final class NsdManager {

    public static final int PROTOCOL_DNS_SD = 1;

    public interface RegistrationListener {
        void onRegistrationFailed(NsdServiceInfo serviceInfo, int errorCode);
        void onUnregistrationFailed(NsdServiceInfo serviceInfo, int errorCode);
        void onServiceRegistered(NsdServiceInfo serviceInfo);
        void onServiceUnregistered(NsdServiceInfo serviceInfo);
    }

    public interface DiscoveryListener {
        void onStartDiscoveryFailed(String serviceType, int errorCode);
        void onStopDiscoveryFailed(String serviceType, int errorCode);
        void onDiscoveryStarted(String serviceType);
        void onDiscoveryStopped(String serviceType);
        void onServiceFound(NsdServiceInfo serviceInfo);
        void onServiceLost(NsdServiceInfo serviceInfo);
    }

    public interface ResolveListener {
        void onResolveFailed(NsdServiceInfo serviceInfo, int errorCode);
        void onServiceResolved(NsdServiceInfo serviceInfo);
    }

    public interface ServiceInfoCallback {
        void onServiceInfoCallbackRegistrationFailed(int errorCode);
        void onServiceUpdated(NsdServiceInfo serviceInfo);
        void onServiceLost();
        void onServiceInfoCallbackUnregistered();
    }

    public void registerService(NsdServiceInfo serviceInfo, int protocolType, RegistrationListener listener) {
    }

    public void unregisterService(RegistrationListener listener) {
    }

    public void discoverServices(String serviceType, int protocolType, DiscoveryListener listener) {
    }

    public void stopServiceDiscovery(DiscoveryListener listener) {
    }

    public void resolveService(NsdServiceInfo serviceInfo, ResolveListener listener) {
    }

    public void registerServiceInfoCallback(NsdServiceInfo serviceInfo, java.util.concurrent.Executor executor, ServiceInfoCallback listener) {
    }

    public void unregisterServiceInfoCallback(ServiceInfoCallback listener) {
    }
}
