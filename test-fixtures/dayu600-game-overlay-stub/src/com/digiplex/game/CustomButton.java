package com.digiplex.game;

public class CustomButton extends android.view.View {
    private int d = 1;
    private int e;

    public CustomButton(android.content.Context context, android.util.AttributeSet attrs) {
        super(context, attrs);
    }

    void setValue(int value) {
        e = value;
    }
}
