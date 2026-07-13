package com.android.internal.content.om;

/**
 * Compile-only shim so the W-001 probe can invoke the real framework
 * OverlayConfig.getZygoteInstance() directly (reflection's getMethod/
 * getDeclaredMethod NPE on this ART). Erased descriptor
 * ()Lcom/android/internal/content/om/OverlayConfig; matches the real method;
 * the board's framework.jar supplies the implementation at runtime.
 */
public class OverlayConfig {
    public static OverlayConfig getZygoteInstance() {
        return null;
    }
}
