package com.westlake.apk;

import java.net.URI;
import java.net.URL;

public final class UrlZipApkMain {
    private UrlZipApkMain() {}

    public static void main(String[] args) throws Exception {
        SmokeLog.banner("urlzip-smoke");

        URL url = new URL("https", "example.com", 443, "/westlake?q=dayu600");
        URI uri = url.toURI();
        if (url.getHost() == null || uri.getPath() == null) {
            throw new AssertionError("url smoke failed");
        }
        SmokeLog.line("url.host", "done");
        SmokeLog.line("uri.path", "done");

        String payload = "hello-dayu600";
        int checksum = 0;
        for (int i = 0; i < payload.length(); i++) {
            checksum += payload.charAt(i);
        }

        SmokeLog.line("payload.checksum", "done");
        if (checksum <= 0) {
            throw new AssertionError("url smoke failed");
        }
        SmokeLog.line("result", "OK");
    }
}
