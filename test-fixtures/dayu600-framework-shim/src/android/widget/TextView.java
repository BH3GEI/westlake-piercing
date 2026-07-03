package android.widget;

public class TextView extends android.view.View {
    public TextView(android.content.Context context) {
        super(context);
    }

    public TextView(android.content.Context context, android.util.AttributeSet attrs) {
        super(context, attrs);
    }

    public TextView(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr) {
        super(context, attrs);
    }

    public void setText(CharSequence text) {
    }

    public android.graphics.Typeface getTypeface() {
        return android.graphics.Typeface.DEFAULT;
    }

    public void setTypeface(android.graphics.Typeface typeface) {
    }

    public void setTypeface(android.graphics.Typeface typeface, int style) {
    }

    protected void onTextChanged(CharSequence text, int start, int before, int count) {
    }
}
