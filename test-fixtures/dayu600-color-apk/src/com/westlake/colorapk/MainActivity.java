package com.westlake.colorapk;

import android.app.Activity;
import android.os.Bundle;

/**
 * A real Android Activity so this is a structurally-genuine app: its content view IS
 * the app's ColorView. On the imageless substrate we drive rendering by instantiating
 * ColorView directly (full Activity lifecycle / ViewRootImpl is a separate wall), but
 * the render code being exercised is this app's own ColorView.onDraw -> Canvas.drawColor.
 */
public class MainActivity extends Activity {

    public ColorView view;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        view = new ColorView(this);
        setContentView(view);
    }
}
