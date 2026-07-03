import com.digiplex.game.c;

public final class GameModelBridge {
    static int lastStep;

    private GameModelBridge() {
    }

    public static String stateJson(String stage, int direction, boolean move) {
        lastStep = 1;
        mark("bridge-enter\n");
        String safeStage = stage == null ? "unknown" : stage;
        lastStep = 2;
        mark("before-new-game\n");
        c game = new c(32768);
        lastStep = 3;
        mark("after-new-game\n");
        if (move) {
            lastStep = 4;
            mark("before-move\n");
            game.g(direction);
            lastStep = 5;
            mark("after-move\n");
        }
        lastStep = 6;
        mark("before-game-a\n");
        int[][] values = game.a();
        lastStep = 7;
        mark("after-game-a\n");
        String grid = gridJson(values);
        lastStep = 8;
        mark("after-grid\n");
        lastStep = 9;
        return resultJson(safeStage, direction, grid);
    }

    private static String gridJson(int[][] grid) {
        if (grid == null) {
            return "null";
        }
        byte[] out = new byte[160];
        int pos = 0;
        out[pos++] = '[';
        for (int row = 0; row < 4; row++) {
            if (row > 0) {
                out[pos++] = ',';
            }
            out[pos++] = '[';
            for (int col = 0; col < 4; col++) {
                if (col > 0) {
                    out[pos++] = ',';
                }
                pos = writeInt(out, pos, grid[row][col]);
            }
            out[pos++] = ']';
        }
        out[pos++] = ']';
        return new String(out, 0, pos);
    }

    private static int writeInt(byte[] out, int pos, int value) {
        if (value == 0) {
            out[pos++] = '0';
            return pos;
        }
        if (value < 0) {
            out[pos++] = '-';
            value = -value;
        }
        int div = 1;
        while (value / div >= 10) {
            div *= 10;
        }
        while (div > 0) {
            out[pos++] = (byte) ('0' + ((value / div) % 10));
            div /= 10;
        }
        return pos;
    }

    private static String resultJson(String stage, int direction, String grid) {
        byte[] out = new byte[320];
        int pos = 0;
        pos = writeAscii(out, pos, "{\"source\":\"2048-2-9.apk\",\"gameClass\":\"com.digiplex.game.c\",\"stage\":\"");
        pos = writeAscii(out, pos, stage);
        pos = writeAscii(out, pos, "\",\"direction\":");
        pos = writeInt(out, pos, direction);
        pos = writeAscii(out, pos, ",\"grid\":");
        pos = writeAscii(out, pos, grid);
        out[pos++] = '}';
        out[pos++] = '\n';
        return new String(out, 0, pos);
    }

    private static int writeAscii(byte[] out, int pos, String value) {
        if (value == null) {
            value = "null";
        }
        for (int i = 0; i < value.length(); i++) {
            char ch = value.charAt(i);
            out[pos++] = (byte) (ch <= 0x7f ? ch : '?');
        }
        return pos;
    }

    private static void mark(String text) {
        Dayu600ApkStageProbe.bridgeMark(text);
    }
}
