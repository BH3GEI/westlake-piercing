package android.net.nsd;

// Mainline-module stub: android.net.nsd ships in the connectivity apex, not core
// framework.jar, so the substrate boot classpath lacks it. This no-op stub lets
// app classes that reference NSD load/verify (all NSD calls sit in try/catch).
public final class NsdServiceInfo {
    private String serviceName;
    private String serviceType;
    private int port;

    public NsdServiceInfo() {
    }

    public String getServiceName() {
        return serviceName;
    }

    public void setServiceName(String name) {
        this.serviceName = name;
    }

    public String getServiceType() {
        return serviceType;
    }

    public void setServiceType(String type) {
        this.serviceType = type;
    }

    public int getPort() {
        return port;
    }

    public void setPort(int port) {
        this.port = port;
    }

    public java.net.InetAddress getHost() {
        return null;
    }

    public java.util.List<java.net.InetAddress> getHostAddresses() {
        return new java.util.ArrayList<java.net.InetAddress>();
    }

    public void setHost(java.net.InetAddress host) {
    }

    public java.util.Map<String, byte[]> getAttributes() {
        return new java.util.HashMap<String, byte[]>();
    }

    public void setAttribute(String key, String value) {
    }
}
