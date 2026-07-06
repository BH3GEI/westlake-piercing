package android.app;

public class Application extends android.content.ContextWrapper {
    public interface ActivityLifecycleCallbacks {
        void onActivityCreated(android.app.Activity activity, android.os.Bundle savedInstanceState);
        void onActivityStarted(android.app.Activity activity);
        void onActivityResumed(android.app.Activity activity);
        void onActivityPaused(android.app.Activity activity);
        void onActivityStopped(android.app.Activity activity);
        void onActivitySaveInstanceState(android.app.Activity activity, android.os.Bundle outState);
        void onActivityDestroyed(android.app.Activity activity);
    }

    public Application() {
        super(null);
    }

    public void onCreate() {
    }

    // No-op: nothing in the headless runtime dispatches activity lifecycle events yet,
    // so registration only needs to exist and accept the callback. Storage/dispatch can
    // be added alongside real Activity lifecycle wiring.
    public void registerActivityLifecycleCallbacks(ActivityLifecycleCallbacks callback) {
    }

    public void unregisterActivityLifecycleCallbacks(ActivityLifecycleCallbacks callback) {
    }

    public android.content.Context getApplicationContext() {
        return this;
    }

    public Object getSystemService(String name) {
        if ("audio".equals(name)) {
            return new android.media.AudioManager();
        }
        if ("layout_inflater".equals(name)) {
            return new android.view.LayoutInflater(this);
        }
        return null;
    }
}
