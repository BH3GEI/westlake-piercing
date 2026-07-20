package android.os;

public interface IServiceManager extends IInterface {
    IBinder getService(String name) throws RemoteException;
    /* A15 added this; a shim that omits it stays abstract and every lookup from
       ViewConfiguration.get() onward dies with AbstractMethodError. */
    Service getService2(String name) throws RemoteException;
    IBinder checkService(String name) throws RemoteException;
    void addService(String name, IBinder service, boolean allowIsolated, int dumpPriority)
            throws RemoteException;
    String[] listServices(int dumpPriority) throws RemoteException;
    void registerForNotifications(String name, IServiceCallback callback) throws RemoteException;
    void unregisterForNotifications(String name, IServiceCallback callback) throws RemoteException;
    boolean isDeclared(String name) throws RemoteException;
    String[] getDeclaredInstances(String iface) throws RemoteException;
    String updatableViaApex(String name) throws RemoteException;
    String[] getUpdatableNames(String apexName) throws RemoteException;
    ConnectionInfo getConnectionInfo(String name) throws RemoteException;
    void registerClientCallback(String name, IBinder service, IClientCallback callback)
            throws RemoteException;
    void tryUnregisterService(String name, IBinder service) throws RemoteException;
    ServiceDebugInfo[] getServiceDebugInfo() throws RemoteException;
}
