import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Properties;

public class ProbeMain {
    static int failures = 0;

    class Inner {
        int value = 7;
    }

    static void log(String msg) {
        try {
            FileOutputStream ferr = new FileOutputStream(FileDescriptor.err);
            try {
                ferr = new FileOutputStream("/data/local/tmp/westlake-dayu600/probe-result.txt", true);
            } catch (Throwable ignored) {
            }
            byte[] b = new byte[msg.length() + 1];
            for (int i = 0; i < msg.length(); i++) {
                char ch = msg.charAt(i);
                b[i] = (byte) (ch < 128 ? ch : '?');
            }
            b[msg.length()] = (byte) '\n';
            ferr.write(b, 0, b.length);
        } catch (Throwable ignored) {
        }
    }

    static void ok(String name) {
        log("[P] OK " + name);
    }

    static void fail(int bit, String name) {
        failures |= bit;
        log("[P] FAIL " + name);
    }

    public static void main(String[] args) {
        log("[P] START");

        try {
            Properties p = new Properties();
            p.setProperty("westlake", "dayu600");
            if ("dayu600".equals(p.getProperty("westlake"))) {
                ok("properties");
            } else {
                fail(1, "properties-value");
            }
        } catch (Throwable ignored) {
            fail(1, "properties-throw");
        }

        try {
            Method[] methods = ProbeMain.class.getDeclaredMethods();
            if (methods.length > 0) {
                ok("reflection-methods");
            } else {
                fail(2, "reflection-methods-empty");
            }
        } catch (Throwable ignored) {
            fail(2, "reflection-methods-throw");
        }

        try {
            Field[] fields = Inner.class.getDeclaredFields();
            for (int i = 0; i < fields.length; i++) {
                fields[i].isSynthetic();
            }
            ok("field-isSynthetic");
        } catch (Throwable ignored) {
            fail(32, "field-isSynthetic-throw");
        }

        try {
            final int[] box = new int[] {0};
            Thread t = new Thread(new Worker(box));
            try {
                t.start();
            } catch (Throwable ignored) {
                fail(64, "thread-start-throw");
            }
            try {
                Thread.sleep(100);
            } catch (Throwable ignored) {
                fail(256, "thread-sleep-throw");
            }
            try {
                t.join(1);
            } catch (InterruptedException ignored) {
                fail(128, "thread-join-interrupted");
            } catch (IllegalMonitorStateException ignored) {
                fail(512, "thread-join-illegal-monitor");
            } catch (Throwable ignored) {
                fail(1024, "thread-join-throw");
            }
            if (box[0] == 42) {
                ok("thread-start-join");
            } else {
                fail(8, "thread-start-join-value");
            }
        } catch (Throwable ignored) {
            fail(64, "thread-start-join-outer-throw");
        }

        try {
            ClassLoader cl = ProbeMain.class.getClassLoader();
            Class<?> c = Class.forName("ProbeMain$Inner", false, cl);
            if (c != null) {
                ok("classloader-basic");
            } else {
                fail(16, "classloader-basic-null");
            }
        } catch (Throwable ignored) {
            fail(16, "classloader-basic-throw");
        }

        log("[P] RESULT " + failures);
        if (failures == 0) {
            log("[P] DONE");
        } else {
            log("[P] HAS-FAILURES");
            System.exit(failures);
        }
    }

    static class Worker implements Runnable {
        final int[] box;

        Worker(int[] box) {
            this.box = box;
        }

        public void run() {
            box[0] = 42;
        }
    }
}
