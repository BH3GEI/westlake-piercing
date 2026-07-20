package android.os;

/**
 * Compile-time stub for the A15 android.os.Service union returned by
 * IServiceManager.getService2(). Only the shape matters here -- at runtime the real
 * class comes from framework.jar; this exists so the probe's WestlakeServiceManager
 * can declare the A15 signature and stop being abstract.
 */
public final class Service {
    public IBinder binder;
    public Service() {}
}
