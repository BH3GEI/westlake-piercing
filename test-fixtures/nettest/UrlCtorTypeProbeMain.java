package com.nettest;

import java.net.MalformedURLException;
import java.net.URL;

public class UrlCtorTypeProbeMain {
    public static void main(String[] args) {
        System.exit(classify("file:///data/local/tmp/westlake-dayu600/art/probe.dex"));
    }

    private static int classify(String value) {
        try {
            URL url = new URL(value);
            return url.getProtocol() == null ? 9 : 0;
        } catch (MalformedURLException e) {
            return 11;
        } catch (StackOverflowError e) {
            return 12;
        } catch (NullPointerException e) {
            return 13;
        } catch (NoClassDefFoundError e) {
            return 14;
        } catch (ExceptionInInitializerError e) {
            return 15;
        } catch (VerifyError e) {
            return 16;
        } catch (NoSuchMethodError e) {
            return 17;
        } catch (NoSuchFieldError e) {
            return 18;
        } catch (UnsatisfiedLinkError e) {
            return 19;
        } catch (IncompatibleClassChangeError e) {
            return 20;
        } catch (LinkageError e) {
            return 21;
        } catch (RuntimeException e) {
            return 22;
        } catch (Error e) {
            return 23;
        } catch (Exception e) {
            return 24;
        } catch (Throwable e) {
            return 25;
        }
    }

}
