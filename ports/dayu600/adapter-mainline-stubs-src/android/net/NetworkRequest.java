package android.net;

public class NetworkRequest {
    public static class Builder {
        public Builder addCapability(int capability) {
            return this;
        }

        public NetworkRequest build() {
            return new NetworkRequest();
        }
    }
}

