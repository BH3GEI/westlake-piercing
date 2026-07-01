package com.nettest;

import java.net.URL;

public class UrlCtorProbeMain {
    public static void main(String[] args) {
        int failures = 0;
        failures |= probe("file:///data/local/tmp/westlake-dayu600/art/probe.dex", 0);
        failures |= probe("http://example.com/", 1);
        failures |= probe("https://api.trynoice.com/v1/subscriptions/plans", 2);
        if (failures != 0) {
            System.exit(failures);
        }
    }

    private static int probe(String value, int bit) {
        try {
            URL url = new URL(value);
            if (url.getProtocol() == null) {
                return 1 << bit;
            }
            return 0;
        } catch (Throwable t) {
            return 1 << bit;
        }
    }
}
