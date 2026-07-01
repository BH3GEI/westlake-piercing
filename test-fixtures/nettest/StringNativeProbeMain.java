package com.nettest;

public class StringNativeProbeMain {
    public static void main(String[] args) {
        int failures = 0;
        String value = "https://api.trynoice.com/v1/subscriptions/plans";

        try {
            if (value.charAt(5) != ':') {
                failures |= 1;
            }
        } catch (Throwable t) {
            failures |= 2;
        }

        try {
            if (value.lastIndexOf('/', 7) != 7) {
                failures |= 4;
            }
        } catch (Throwable t) {
            failures |= 8;
        }

        try {
            if (value.substring(0, 5).length() != 5) {
                failures |= 16;
            }
        } catch (Throwable t) {
            failures |= 32;
        }

        try {
            if (value.indexOf("://") != 5) {
                failures |= 64;
            }
        } catch (Throwable t) {
            failures |= 128;
        }

        if (failures != 0) {
            System.exit(failures);
        }
    }
}
