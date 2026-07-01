package com.nettest;

import java.io.ObjectStreamField;
import java.util.Collections;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Set;

public class UrlClinitDepsProbeMain {
    public static void main(String[] args) {
        int failures = 0;

        try {
            Set<String> names = new HashSet<String>();
            names.add("sun.net.www.protocol.file.Handler");
            names.add("com.android.okhttp.HttpHandler");
            Collections.unmodifiableSet(names);
        } catch (Throwable t) {
            failures |= 1;
        }

        try {
            Hashtable<String, Object> handlers = new Hashtable<String, Object>();
            handlers.get("file");
        } catch (Throwable t) {
            failures |= 2;
        }

        try {
            Object lock = new Object();
            if (lock == null) {
                failures |= 4;
            }
        } catch (Throwable t) {
            failures |= 8;
        }

        try {
            ObjectStreamField[] fields = new ObjectStreamField[] {
                new ObjectStreamField("protocol", String.class),
                new ObjectStreamField("port", Integer.TYPE)
            };
            if (fields.length != 2) {
                failures |= 16;
            }
        } catch (Throwable t) {
            failures |= 32;
        }

        if (failures != 0) {
            System.exit(failures);
        }
    }
}
