package android.view;

public class ViewGroup extends View {
    public ViewGroup() {
        super();
    }

    public ViewGroup(android.content.Context context) {
        super(context);
    }

    public ViewGroup(android.content.Context context, android.util.AttributeSet attrs) {
        super(context, attrs);
    }

    public void addView(View child) {
    }

    public int getChildCount() {
        return 0;
    }

    public boolean onInterceptTouchEvent(android.view.MotionEvent event) {
        return false;
    }
}
