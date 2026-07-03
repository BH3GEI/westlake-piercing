package android.graphics;

public class Typeface {
    public static final Typeface DEFAULT = new Typeface();
    public static final Typeface DEFAULT_BOLD = new Typeface();
    public static final Typeface MONOSPACE = new Typeface();
    public static final Typeface SANS_SERIF = new Typeface();
    public static final Typeface SERIF = new Typeface();

    public Typeface() {
    }

    public static Typeface create(Typeface family, int style) {
        return family != null ? family : DEFAULT;
    }

    public static Typeface create(Typeface family, int weight, boolean italic) {
        return family != null ? family : DEFAULT;
    }

    public static Typeface create(String familyName, int style) {
        return DEFAULT;
    }
}
