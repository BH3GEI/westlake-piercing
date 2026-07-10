package java.lang;

public final class StringFactory {
    public static native String newEmptyString();
    public static native String newStringFromBytes(byte[] data);
    public static native String newStringFromBytes(byte[] data, byte coder);
    public static native String newStringFromBytes(byte[] data, int high);
    public static native String newStringFromBytes(byte[] data, int offset, int byteCount);
    public static native String newStringFromBytes(byte[] data, int high, int offset, int byteCount);
    public static native String newStringFromBytes(byte[] data, int offset, int byteCount, String charsetName);
    public static native String newStringFromBytes(byte[] data, String charsetName);
    public static native String newStringFromBytes(byte[] data, int offset, int byteCount,
            java.nio.charset.Charset charset);
    public static native String newStringFromBytes(byte[] data, java.nio.charset.Charset charset);
    public static native String newStringFromChars(char[] data);
    public static native String newStringFromChars(char[] data, int offset, int charCount);
    public static native String newStringFromChars(int offset, int charCount, char[] data);
    public static native String newStringFromString(String toCopy);
    public static native String newStringFromStringBuffer(StringBuffer buffer);
    public static native String newStringFromCodePoints(int[] codePoints, int offset, int count);
    public static native String newStringFromStringBuilder(StringBuilder builder);
    public static native String newStringFromUtf8Bytes(byte[] data, int offset, int byteCount);
    public static native String newStringFromUtf16Bytes(byte[] data, int offset, int byteCount);
}
