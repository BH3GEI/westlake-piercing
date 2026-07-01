package com.westlake.apk;

public final class HelloApkMain {
    private HelloApkMain() {}

    public static void main(String[] args) {
        SmokeLog.banner("hello-smoke");
        if (args == null) {
            throw new AssertionError("args is null");
        }
        if (System.getProperty("java.vm.name", "unknown").length() == 0) {
            throw new AssertionError("empty vm name");
        }
        if (System.getProperty("os.arch", "unknown").length() == 0) {
            throw new AssertionError("empty os arch");
        }
        SmokeLog.line("result", "OK");
    }
}
