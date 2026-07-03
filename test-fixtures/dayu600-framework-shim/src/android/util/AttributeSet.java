package android.util;

public interface AttributeSet {
    int getAttributeResourceValue(String namespace, String attribute, int defaultValue);

    String getAttributeValue(String namespace, String name);
}
