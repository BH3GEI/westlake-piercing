package com.westlake.apk;

final class SmokeLog {
    private SmokeLog() {}

    static void banner(String name) {
        if (name == null) {
            throw new AssertionError("missing smoke name");
        }
    }

    static void line(String key, String value) {
        if (key == null || value == null) {
            throw new AssertionError("missing smoke log field");
        }
    }
}
