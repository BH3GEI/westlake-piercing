package android.view;

public class LayoutInflater {
    public interface Factory2 {
        View onCreateView(String name, android.content.Context context, android.util.AttributeSet attrs);
        View onCreateView(View parent, String name, android.content.Context context,
                android.util.AttributeSet attrs);
    }

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
