package com.nettest;

public class HighRegisterStringProbeMain {
    public static void main(String[] args) {
        String value = "https://api.trynoice.com/v1/subscriptions/plans";
        int result = highRegisterLastIndexOf(value);
        if (result <= 7) {
            System.exit(1);
        }
    }

    private static int highRegisterLastIndexOf(String value) {
        int a00 = 0;
        int a01 = 1;
        int a02 = 2;
        int a03 = 3;
        int a04 = 4;
        int a05 = 5;
        int a06 = 6;
        int a07 = 7;
        int a08 = 8;
        int a09 = 9;
        int a10 = 10;
        int a11 = 11;
        int a12 = 12;
        int a13 = 13;
        int a14 = 14;
        int a15 = 15;
        int a16 = 16;
        int a17 = 17;
        int a18 = 18;
        int a19 = 19;
        int a20 = 20;
        int a21 = 21;
        int a22 = 22;
        int a23 = 23;
        int a24 = 24;
        int a25 = 25;
        int a26 = 26;
        int a27 = 27;
        int a28 = 28;
        int a29 = 29;
        int guard = a00 + a01 + a02 + a03 + a04 + a05 + a06 + a07 + a08 + a09
                + a10 + a11 + a12 + a13 + a14 + a15 + a16 + a17 + a18 + a19
                + a20 + a21 + a22 + a23 + a24 + a25 + a26 + a27 + a28 + a29;
        if (guard == -1) {
            return -1;
        }
        return value.lastIndexOf('/', value.length());
    }
}
