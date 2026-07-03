package com.digiplex.game;

public final class DirectMainActivityBridge {
    private DirectMainActivityBridge() {
    }

    public static Object newActivity() {
        return new MainActivity();
    }

    public static void callOnCreate(Object activity) {
        android.app.Activity.westlakeFindViewStatus = 200;
        ((MainActivity) activity).onCreate(null);
        android.app.Activity.westlakeFindViewStatus = 201;
    }
}
