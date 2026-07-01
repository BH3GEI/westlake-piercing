package com.nettest;

import java.net.URL;

import javax.net.ssl.HttpsURLConnection;

public class NetProbeMain {
    private static final String PRIMARY = "https://api.trynoice.com/v1/subscriptions/plans";
    private static final String CDN = "https://cdn.trynoice.com/library/library.json";

    public static void main(String[] args) {
        int failures = probe(PRIMARY, 0);
        failures |= probe(CDN, 8);
        if (failures != 0) {
            System.exit(failures);
        }
    }

    private static int probe(String target, int shift) {
        URL url;
        try {
            url = new URL(target);
        } catch (Throwable t) {
            return 1 << shift;
        }

        HttpsURLConnection connection;
        try {
            connection = (HttpsURLConnection) url.openConnection();
        } catch (Throwable t) {
            return 2 << shift;
        }

        try {
            connection.setConnectTimeout(12000);
            connection.setReadTimeout(12000);
        } catch (Throwable t) {
            return 4 << shift;
        }

        try {
            connection.getResponseCode();
        } catch (Throwable t) {
            return 8 << shift;
        } finally {
            try {
                connection.disconnect();
            } catch (Throwable ignored) {
            }
        }

        return 0;
    }
}
