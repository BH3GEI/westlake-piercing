package r;

public abstract class a extends android.app.Activity {
    public a() {
        super();
    }

    public int getRequestedOrientation() {
        return -1;
    }

    public void setRequestedOrientation(int requestedOrientation) {
    }

    public Object getSystemService(String name) {
        try {
            if ("audio".equals(name)) {
                android.app.Activity.westlakeFindViewStatus = 35;
                return Class.forName("android.media.AudioManager")
                        .getConstructor().newInstance();
            }
            if ("layout_inflater".equals(name)) {
                android.app.Activity.westlakeFindViewStatus = 36;
                return Class.forName("android.view.LayoutInflater")
                        .getConstructor(android.content.Context.class).newInstance(this);
            }
        } catch (Throwable ignored) {
            return null;
        }
        return null;
    }

    public <T extends android.view.View> T findViewById(int id) {
        try {
            if (id == 2131296569) {
                android.app.Activity.westlakeFindViewStatus = 52;
                return (T) new android.view.ViewGroup(this);
            }
            if (id == 2131296601 || id == 2131296464) {
                android.app.Activity.westlakeFindViewStatus = 53;
                return (T) new android.widget.TextView(this);
            }
            android.app.Activity.westlakeFindViewStatus = 51;
            return (T) new com.digiplex.game.CustomButton(this, null);
        } catch (Throwable ignored) {
            return (T) new android.view.View(this);
        }
    }
}
