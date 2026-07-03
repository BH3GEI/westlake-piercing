package android.content;

public class Context {
    public static final String AUDIO_SERVICE = "audio";
    public static final String LAYOUT_INFLATER_SERVICE = "layout_inflater";

    public Context() {
    }

    public Context getApplicationContext() {
        return this;
    }

    public Object getSystemService(String name) {
        return null;
    }

    public String getString(int resId) {
        return String.valueOf(resId);
    }

    public android.content.res.Resources getResources() {
        return null;
    }
}
