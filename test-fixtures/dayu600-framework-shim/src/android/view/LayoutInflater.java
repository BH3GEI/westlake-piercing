package android.view;

public class LayoutInflater {
    private final android.content.Context context;

    public LayoutInflater(android.content.Context context) {
        this.context = context;
    }

    public View inflate(int resource, ViewGroup root) {
        android.widget.FrameLayout view = new android.widget.FrameLayout(context);
        if (root != null) {
            root.addView(view);
        }
        return view;
    }
}
