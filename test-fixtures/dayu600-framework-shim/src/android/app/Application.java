package android.app;

public class Application extends android.content.ContextWrapper {
    public Application() {
        super(null);
    }

    public void onCreate() {
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
