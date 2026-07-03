package android.app;

public class Activity extends android.view.ContextThemeWrapper {
    public static int westlakeFindViewStatus;

    public Activity() {
        super();
    }

    protected void onCreate(android.os.Bundle savedInstanceState) {
    }

    public void setContentView(int layoutResId) {
        westlakeFindViewStatus = 29;
    }

    public void setVolumeControlStream(int streamType) {
        westlakeFindViewStatus = 34;
    }

    public int getRequestedOrientation() {
        return -1;
    }

    public void setRequestedOrientation(int requestedOrientation) {
    }

    public <T extends android.view.View> T findViewById(int id) {
        try {
            if (id == 2131296569) {
                westlakeFindViewStatus = 10;
                return (T) new android.view.ViewGroup(this);
            }
            if (id == 2131296601 || id == 2131296464) {
                westlakeFindViewStatus = 11;
                return (T) new android.widget.TextView(this);
            }
            westlakeFindViewStatus = 20;
            return (T) new com.digiplex.game.CustomButton(this, null);
        } catch (Throwable failure) {
            if (failure instanceof NoClassDefFoundError) {
                westlakeFindViewStatus = 91;
            } else if (failure instanceof NoSuchMethodError) {
                westlakeFindViewStatus = 92;
            } else if (failure instanceof VerifyError) {
                westlakeFindViewStatus = 93;
            } else if (failure instanceof LinkageError) {
                westlakeFindViewStatus = 94;
            } else if (failure instanceof RuntimeException) {
                westlakeFindViewStatus = 95;
            } else {
                westlakeFindViewStatus = 96;
            }
            return (T) new android.view.View(this);
        }
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

    public android.view.Window getWindow() {
        return new android.view.Window();
    }
}
