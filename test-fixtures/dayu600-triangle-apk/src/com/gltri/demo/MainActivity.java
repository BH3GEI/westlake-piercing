package com.gltri.demo;

import android.app.Activity;
import android.os.Bundle;

/**
 * A real Android Activity so this is a structurally-genuine app: its content view IS the
 * app's TriangleView. On the imageless substrate we drive rendering by instantiating
 * TriangleView directly (full Activity lifecycle / ViewRootImpl is a separate wall), but
 * the render code being exercised is this app's own TriangleView.onDraw -> Canvas ops.
 */
public class MainActivity extends Activity {

    public TriangleView view;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        view = new TriangleView(this);
        setContentView(view);
    }
}
