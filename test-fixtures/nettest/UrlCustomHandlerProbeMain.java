package com.nettest;

import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandler;

public class UrlCustomHandlerProbeMain {
    public static void main(String[] args) {
        try {
            URL url = new URL(null, "westlake://host/path?query=1", new URLStreamHandler() {
                @Override
                protected URLConnection openConnection(URL u) throws IOException {
                    return null;
                }
            });
            if (!"westlake".equals(url.getProtocol())) {
                System.exit(1);
            }
            if (!"host".equals(url.getHost())) {
                System.exit(2);
            }
            if (!"/path".equals(url.getPath())) {
                System.exit(3);
            }
        } catch (Throwable t) {
            System.exit(10);
        }
    }
}
