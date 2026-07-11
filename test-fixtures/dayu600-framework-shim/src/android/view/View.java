package android.view;

public class View {
    public interface OnClickListener {
        void onClick(View v);
    }

    public interface OnTouchListener {
        boolean onTouch(View v, android.view.MotionEvent event);
    }

    public interface OnSystemUiVisibilityChangeListener {
        void onSystemUiVisibilityChange(int visibility);
    }

    public View() {
    }

    public View(android.content.Context context) {
    }

    public View(android.content.Context context, android.util.AttributeSet attrs) {
    }

    public void setOnClickListener(OnClickListener listener) {
        android.app.Activity.westlakeFindViewStatus = 69;
    }

    public void setOnTouchListener(OnTouchListener listener) {
        android.app.Activity.westlakeFindViewStatus = 70;
    }

    public void setOnSystemUiVisibilityChangeListener(OnSystemUiVisibilityChangeListener listener) {
        android.app.Activity.westlakeFindViewStatus = 71;
    }

    public void setSystemUiVisibility(int visibility) {
        android.app.Activity.westlakeFindViewStatus = 72;
    }

    public void setVisibility(int visibility) {
    }

    public void measure(int widthMeasureSpec, int heightMeasureSpec) {
    }

    public void layout(int l, int t, int r, int b) {
    }

    public int getMeasuredWidth() {
        return 0;
    }

    public int getMeasuredHeight() {
        return 0;
    }

    public void setTag(Object tag) {
    }

    public void clearAnimation() {
    }

    public void startAnimation(android.view.animation.Animation animation) {
    }

    public View findViewById(int id) {
        return new View();
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
    }

    public android.graphics.drawable.Drawable getBackground() {
        return null;
    }

    public android.content.res.Resources getResources() {
        return null;
    }

    public static class MeasureSpec {
        public static final int EXACTLY = 0x40000000;

        public static int getSize(int measureSpec) {
            return measureSpec;
        }

        public static int makeMeasureSpec(int size, int mode) {
            return size;
        }
    }
}
