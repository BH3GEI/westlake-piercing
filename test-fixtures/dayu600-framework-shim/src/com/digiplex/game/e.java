package com.digiplex.game;

public class e {
    public static int e = 32768;

    private static e d;
    private android.content.SharedPreferences prefs;
    private int scoreCache = -1;

    private e() {
    }

    public static e p() {
        if (d == null) {
            d = new e();
        }
        return d;
    }

    public void o(android.content.Context context) {
        prefs = android.preference.PreferenceManager.getDefaultSharedPreferences(context);
    }

    public int c() {
        return 50;
    }

    public int d() {
        return e;
    }

    public String e() {
        return getString("mansur", "");
    }

    public int f() {
        if (scoreCache >= 0) {
            return scoreCache;
        }
        scoreCache = getInt("rahul", 0);
        return scoreCache;
    }

    public int g() {
        return getInt("key_game_ending", -1);
    }

    public String h() {
        return getString("grid", "");
    }

    public int i() {
        return getInt("highScore", -1);
    }

    public int j() {
        return getInt("score", -1);
    }

    public int k() {
        return 1;
    }

    public int l() {
        return getInt("daya", 0);
    }

    public String m() {
        return getString("undoGrids", "");
    }

    public int n() {
        return getInt("undosLeft", 5);
    }

    public boolean q() {
        return getBoolean("key_animation", true);
    }

    public boolean r() {
        return getBoolean("isCueTipShown", true);
    }

    public boolean s() {
        return getBoolean("key_game_ending_updated", false);
    }

    public boolean t() {
        return getBoolean("gameOver", false);
    }

    public boolean u() {
        return getBoolean("key_sound", false);
    }

    public boolean v() {
        return getBoolean("won", false);
    }

    public void w() {
        putBoolean("isCueTipShown", true);
    }

    public void x(int value) {
        putString("key_new_game_ending", intToString(value));
    }

    public void y() {
        putBoolean("key_game_ending_updated", true);
    }

    public void z(boolean value) {
        putBoolean("gameOver", value);
    }

    public void A(String value) {
        putString("mansur", value);
    }

    public void B(int value) {
        scoreCache = value;
        putString("rahul", intToString(value));
    }

    public void C(int value) {
        putString("daya", intToString(value));
    }

    public void D(String value) {
        putString("undoGrids", value);
    }

    public void E(int value) {
        putString("undosLeft", intToString(value));
    }

    public void F(boolean value) {
        putBoolean("won", value);
    }

    private android.content.SharedPreferences prefs() {
        if (prefs == null) {
            prefs = android.preference.PreferenceManager.getDefaultSharedPreferences(
                    new android.content.Context());
        }
        return prefs;
    }

    private String getString(String key, String fallback) {
        android.content.SharedPreferences p = prefs();
        return p == null ? fallback : p.getString(key, fallback);
    }

    private int getInt(String key, int fallback) {
        android.content.SharedPreferences p = prefs();
        if (p == null) {
            return fallback;
        }
        Object value = null;
        try {
            value = p.getString(key, null);
        } catch (Throwable ignored) {
        }
        if (value instanceof String && ((String) value).length() > 0) {
            return parseInt((String) value, fallback);
        }
        return p.getInt(key, fallback);
    }

    private boolean getBoolean(String key, boolean fallback) {
        android.content.SharedPreferences p = prefs();
        return p == null ? fallback : p.getBoolean(key, fallback);
    }

    private void putString(String key, String value) {
        android.content.SharedPreferences p = prefs();
        if (p != null) {
            p.edit().putString(key, value).commit();
        }
    }

    private void putBoolean(String key, boolean value) {
        android.content.SharedPreferences p = prefs();
        if (p != null) {
            p.edit().putBoolean(key, value).commit();
        }
    }

    private static int parseInt(String value, int fallback) {
        if (value == null || value.length() == 0) {
            return fallback;
        }
        int index = 0;
        int sign = 1;
        if (value.charAt(0) == '-') {
            sign = -1;
            index = 1;
        }
        int result = 0;
        while (index < value.length()) {
            char ch = value.charAt(index);
            if (ch < '0' || ch > '9') {
                return fallback;
            }
            result = result * 10 + (ch - '0');
            index++;
        }
        return result * sign;
    }

    private static String intToString(int value) {
        if (value == 0) {
            return "0";
        }
        boolean negative = value < 0;
        int work = negative ? -value : value;
        char[] chars = new char[12];
        int index = chars.length;
        while (work > 0) {
            int digit = work % 10;
            chars[--index] = (char) ('0' + digit);
            work = work / 10;
        }
        if (negative) {
            chars[--index] = '-';
        }
        return new String(chars, index, chars.length - index);
    }
}
