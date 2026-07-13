package android.content.pm;

import java.util.ArrayList;
import java.util.function.Function;

/**
 * Compile-only shim so the W-001 probe can invoke the real framework
 * PackagePartitions.getOrderedPartitions() directly (reflection's getMethod/
 * getDeclaredMethod NPE on this ART). Erased descriptor
 * (Ljava/util/function/Function;)Ljava/util/ArrayList; matches the real method;
 * the board's framework.jar supplies the implementation at runtime.
 */
public class PackagePartitions {
    public static <T> ArrayList<T> getOrderedPartitions(Function<Object, T> producer) {
        return null;
    }
}
