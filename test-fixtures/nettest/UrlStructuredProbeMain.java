package com.nettest;

import java.net.URL;

public class UrlStructuredProbeMain {
    public static void main(String[] args) {
        int failures = 0;
        failures |= probe("file", "", -1, "/data/local/tmp/westlake-dayu600/art/probe.dex", 0);
        failures |= probe("http", "example.com", -1, "/", 1);
        failures |= probe("https", "api.trynoice.com", -1, "/v1/subscriptions/plans", 2);
        if (failures != 0) {
            System.exit(failures);
        }
    }

    private static int probe(String protocol, String host, int port, String file, int bit) {
        try {
            URL url = new URL(protocol, host, port, file);
            if (!protocol.equals(url.getProtocol())) {
                return 1 << bit;
            }
            return 0;
        } catch (Throwable t) {
            return 1 << bit;
        }
    }
}
