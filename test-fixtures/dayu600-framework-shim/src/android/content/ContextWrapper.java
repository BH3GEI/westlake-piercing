package android.content;

public class ContextWrapper extends Context {
    protected Context base;

    public ContextWrapper(Context base) {
        super();
        this.base = base;
    }

    public Context getBaseContext() {
        return base;
    }

    public Context getApplicationContext() {
        return base == null ? this : base.getApplicationContext();
    }

    public Object getSystemService(String name) {
        return base == null ? null : base.getSystemService(name);
    }

    public String getString(int resId) {
        return base == null ? super.getString(resId) : base.getString(resId);
    }
}
