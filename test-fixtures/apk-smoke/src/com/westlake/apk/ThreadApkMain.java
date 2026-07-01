package com.westlake.apk;

public final class ThreadApkMain {
    private static volatile int completed;

    private ThreadApkMain() {}

    public static void main(String[] args) throws Exception {
        SmokeLog.banner("thread-smoke");
        completed = 0;

        Thread worker = new Thread(new Runnable() {
            @Override
            public void run() {
                completed = 1;
            }
        }, "westlake-worker");

        worker.start();
        long deadline = System.currentTimeMillis() + 5000L;
        while (completed == 0 && System.currentTimeMillis() < deadline) {
            Thread.yield();
        }

        SmokeLog.line("completed", "done");
        if (completed != 1) {
            throw new AssertionError("thread smoke failed");
        }
        SmokeLog.line("result", "OK");
    }
}
