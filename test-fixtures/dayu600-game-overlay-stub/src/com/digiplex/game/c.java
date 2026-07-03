package com.digiplex.game;

public class c {
    public int a;
    private int[][] b;
    private int[][] c;
    private int[] d;
    protected int e;
    protected int f;
    public boolean g;
    public boolean h;
    public boolean i;
    private java.util.Random k;
    int l;

    public c(int target) {
        e = 0;
        f = 0;
        g = false;
        h = false;
        i = false;
        l = -1;
        a = target;
        b = new int[4][4];
        c = new int[4][4];
        d = new int[4];
        b();
        b();
    }

    public int[][] a() {
        return b;
    }

    public boolean b() {
        for (int row = 0; row < 4; row++) {
            for (int col = 0; col < 4; col++) {
                if (b[row][col] == 0) {
                    b[row][col] = 2;
                    l = row * 4 + col;
                    return true;
                }
            }
        }
        return false;
    }

    public int c(int index) {
        return b[index / 4][index % 4];
    }

    public void h(int row, int col) {
        b[row][col] = 0;
    }

    public boolean j() {
        return false;
    }

    public boolean k() {
        return false;
    }

    public int l() {
        return l;
    }

    public void m() {
    }

    public void n() {
    }

    public boolean o(int[][] grid, int direction) {
        return false;
    }

    public void p(String serialized, int[][] grid) {
    }

    public boolean q() {
        return true;
    }

    public void g(int direction) {
        i = false;
    }
}
