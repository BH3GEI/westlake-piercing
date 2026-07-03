package adapter.client;

public final class InputEventBridge {
    private static volatile InputEventBridge sInstance;

    private InputEventBridge() {
    }

    public static InputEventBridge getInstance() {
        if (sInstance == null) {
            synchronized (InputEventBridge.class) {
                if (sInstance == null) {
                    sInstance = new InputEventBridge();
                }
            }
        }
        return sInstance;
    }

    public void destroyInputChannel(Object windowToken) {
    }
}

