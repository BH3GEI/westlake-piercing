import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

public final class Dayu600ApkProbe {
    private static final String RESULT_PATH =
            "/data/local/tmp/westlake-dayu600/apks/2048-explicit-loader-probe.result";

    private static void log(String message) {
        byte[] bytes = new byte[message.length() + 1];
        for (int i = 0; i < message.length(); i++) {
            bytes[i] = (byte) (message.charAt(i) & 0x7f);
        }
        bytes[message.length()] = (byte) '\n';
        try {
            FileOutputStream file = new FileOutputStream(RESULT_PATH, true);
            file.write(bytes, 0, bytes.length);
            file.close();
        } catch (Throwable ignored) {
        }
        try {
            FileOutputStream err = new FileOutputStream(FileDescriptor.err);
            err.write(bytes, 0, bytes.length);
        } catch (Throwable ignored) {
        }
    }

    private static String nameOf(Class<?> cls) {
        return cls == null ? "(null)" : cls.getName();
    }

    private static String loaderName(ClassLoader loader) {
        if (loader == null) {
            return "(null)";
        }
        try {
            return loader.getClass().getName();
        } catch (Throwable ignored) {
            return "(loader-name-failed)";
        }
    }

    private static void logThrowable(String prefix, Throwable t) {
        log(prefix + ": " + t.getClass().getName());
        Throwable cause = t.getCause();
        if (cause != null && cause != t) {
            log(prefix + ".cause: " + cause.getClass().getName());
        }
    }

    public static void main(String[] args) {
        int failures = 0;
        String target = args.length > 0 ? args[0] : "com.digiplex.game.MainActivity";
        ClassLoader loader = Dayu600ApkProbe.class.getClassLoader();
        if (loader == null) {
            failures |= 1;
        }
        log("[DAYU600-APK] probe loader=" + loaderName(loader));
        log("[DAYU600-APK] target=" + target);

        Class<?> targetClass;
        try {
            targetClass = Class.forName(target, false, loader);
            log("[DAYU600-APK] load(false)=OK class=" + targetClass.getName());
            log("[DAYU600-APK] target loader=" + loaderName(targetClass.getClassLoader()));
            log("[DAYU600-APK] superclass=" + nameOf(targetClass.getSuperclass()));
            Method[] methods = targetClass.getDeclaredMethods();
            log("[DAYU600-APK] declaredMethods=" + methods.length);
        } catch (Throwable t) {
            failures |= 2;
            logThrowable("[DAYU600-APK] load(false)=FAIL", t);
            System.exit(failures);
            return;
        }

        try {
            Class.forName(target, true, loader);
            log("[DAYU600-APK] init(true)=OK");
        } catch (Throwable t) {
            failures |= 8;
            logThrowable("[DAYU600-APK] init(true)=FAIL", t);
        }

        try {
            Constructor<?> ctor = targetClass.getDeclaredConstructor();
            ctor.setAccessible(true);
            Object instance = ctor.newInstance();
            log("[DAYU600-APK] constructor=OK instance=" + instance.getClass().getName());
        } catch (Throwable t) {
            failures |= 16;
            logThrowable("[DAYU600-APK] constructor=FAIL", t);
        }
        log("[DAYU600-APK] failures=" + failures);
        System.exit(failures);
    }
}
