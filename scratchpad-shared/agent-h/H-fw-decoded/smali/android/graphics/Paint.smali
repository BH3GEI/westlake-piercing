.class public Landroid/graphics/Paint;
.super Ljava/lang/Object;
.source "Paint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Paint$NoImagePreloadHolder;,
        Landroid/graphics/Paint$Style;,
        Landroid/graphics/Paint$Cap;,
        Landroid/graphics/Paint$Join;,
        Landroid/graphics/Paint$Align;,
        Landroid/graphics/Paint$FontMetrics;,
        Landroid/graphics/Paint$FontMetricsInt;,
        Landroid/graphics/Paint$RunInfo;,
        Landroid/graphics/Paint$EndHyphenEdit;,
        Landroid/graphics/Paint$StartHyphenEdit;,
        Landroid/graphics/Paint$CursorOption;,
        Landroid/graphics/Paint$PaintFlag;
    }
.end annotation


# static fields
.field public static final ANTI_ALIAS_FLAG:I = 0x1

.field public static final AUTO_HINTING_TEXT_FLAG:I = 0x800

.field public static final BIDI_DEFAULT_LTR:I = 0x2

.field public static final BIDI_DEFAULT_RTL:I = 0x3

.field private static final BIDI_FLAG_MASK:I = 0x7

.field public static final BIDI_FORCE_LTR:I = 0x4

.field public static final BIDI_FORCE_RTL:I = 0x5

.field public static final BIDI_LTR:I = 0x0

.field private static final BIDI_MAX_FLAG_VALUE:I = 0x5

.field public static final BIDI_RTL:I = 0x1

.field public static final CURSOR_AFTER:I = 0x0

.field public static final CURSOR_AT:I = 0x4

.field public static final CURSOR_AT_OR_AFTER:I = 0x1

.field public static final CURSOR_AT_OR_BEFORE:I = 0x3

.field public static final CURSOR_BEFORE:I = 0x2

.field private static final CURSOR_OPT_MAX_VALUE:I = 0x4

.field public static final DEPRECATE_UI_FONT:J = 0x10ab11ddL

.field public static final DEPRECATE_UI_FONT_ENFORCE:J = 0x14d53e73L

.field public static final DEV_KERN_TEXT_FLAG:I = 0x100

.field public static final DIRECTION_LTR:I = 0x0

.field public static final DIRECTION_RTL:I = 0x1

.field public static final DITHER_FLAG:I = 0x4

.field private static final ELEGANT_TEXT_HEIGHT_DISABLED:I = 0x1

.field private static final ELEGANT_TEXT_HEIGHT_ENABLED:I = 0x0

.field private static final ELEGANT_TEXT_HEIGHT_UNSET:I = -0x1

.field public static final EMBEDDED_BITMAP_TEXT_FLAG:I = 0x400

.field public static final END_HYPHEN_EDIT_INSERT_ARMENIAN_HYPHEN:I = 0x3

.field public static final END_HYPHEN_EDIT_INSERT_HYPHEN:I = 0x2

.field public static final END_HYPHEN_EDIT_INSERT_MAQAF:I = 0x4

.field public static final END_HYPHEN_EDIT_INSERT_UCAS_HYPHEN:I = 0x5

.field public static final END_HYPHEN_EDIT_INSERT_ZWJ_AND_HYPHEN:I = 0x6

.field public static final END_HYPHEN_EDIT_NO_EDIT:I = 0x0

.field public static final END_HYPHEN_EDIT_REPLACE_WITH_HYPHEN:I = 0x1

.field public static final FAKE_BOLD_TEXT_FLAG:I = 0x20

.field public static final FILTER_BITMAP_FLAG:I = 0x2

.field static final HIDDEN_DEFAULT_PAINT_FLAGS:I = 0x502

.field public static final HINTING_OFF:I = 0x0

.field public static final HINTING_ON:I = 0x1

.field public static final LCD_RENDER_TEXT_FLAG:I = 0x200

.field public static final LINEAR_TEXT_FLAG:I = 0x40

.field public static final START_HYPHEN_EDIT_INSERT_HYPHEN:I = 0x1

.field public static final START_HYPHEN_EDIT_INSERT_ZWJ:I = 0x2

.field public static final START_HYPHEN_EDIT_NO_EDIT:I = 0x0

.field public static final STRIKE_THRU_TEXT_FLAG:I = 0x10

.field public static final SUBPIXEL_TEXT_FLAG:I = 0x80

.field private static final TAG:Ljava/lang/String; = "Paint"

.field public static final TEXT_RUN_FLAG_LEFT_EDGE:I = 0x2000

.field public static final TEXT_RUN_FLAG_RIGHT_EDGE:I = 0x4000

.field public static final UNDERLINE_TEXT_FLAG:I = 0x8

.field public static final VERTICAL_TEXT_FLAG:I = 0x1000

.field static final sAlignArray:[Landroid/graphics/Paint$Align;

.field private static final sCacheLock:Ljava/lang/Object;

.field static final sCapArray:[Landroid/graphics/Paint$Cap;

.field static final sJoinArray:[Landroid/graphics/Paint$Join;

.field private static final sMinikinLocaleListIdCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final sStyleArray:[Landroid/graphics/Paint$Style;


# instance fields
.field public mBidiFlags:I

.field private mColor:J

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mCompatScaling:F

.field private mFontFeatureSettings:Ljava/lang/String;

.field private mFontVariationOverride:Ljava/lang/String;

.field private mFontVariationSettings:Ljava/lang/String;

.field private mHasCompatScaling:Z

.field private mInvCompatScaling:F

.field private mLocales:Landroid/os/LocaleList;

.field private mMaskFilter:Landroid/graphics/MaskFilter;

.field private mNativeColorFilter:J

.field private mNativePaint:J

.field private mNativeShader:J

.field private mNativeXfermode:J

.field private mPathEffect:Landroid/graphics/PathEffect;

.field private mShader:Landroid/graphics/Shader;

.field private mShadowLayerColor:J

.field private mShadowLayerDx:F

.field private mShadowLayerDy:F

.field private mShadowLayerRadius:F

.field private mTypeface:Landroid/graphics/Typeface;

.field private mXfermode:Landroid/graphics/Xfermode;


# direct methods
.method static bridge synthetic -$$Nest$smnGetNativeFinalizer()J
    .locals 2

    invoke-static {}, Landroid/graphics/Paint;->nGetNativeFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/Paint;->sCacheLock:Ljava/lang/Object;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/graphics/Paint;->sMinikinLocaleListIdCache:Ljava/util/HashMap;

    .line 123
    const/4 v0, 0x3

    new-array v1, v0, [Landroid/graphics/Paint$Style;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Landroid/graphics/Paint;->sStyleArray:[Landroid/graphics/Paint$Style;

    .line 126
    new-array v1, v0, [Landroid/graphics/Paint$Cap;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    aput-object v2, v1, v3

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    aput-object v2, v1, v4

    sget-object v2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    aput-object v2, v1, v5

    sput-object v1, Landroid/graphics/Paint;->sCapArray:[Landroid/graphics/Paint$Cap;

    .line 129
    new-array v1, v0, [Landroid/graphics/Paint$Join;

    sget-object v2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    aput-object v2, v1, v3

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    aput-object v2, v1, v4

    sget-object v2, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    aput-object v2, v1, v5

    sput-object v1, Landroid/graphics/Paint;->sJoinArray:[Landroid/graphics/Paint$Join;

    .line 132
    new-array v0, v0, [Landroid/graphics/Paint$Align;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v4

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v5

    sput-object v0, Landroid/graphics/Paint;->sAlignArray:[Landroid/graphics/Paint$Align;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 683
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 684
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "flags"    # I

    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 700
    invoke-static {}, Landroid/graphics/Paint;->nInit()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 701
    sget-object v0, Landroid/graphics/Paint$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 702
    or-int/lit16 v0, p1, 0x502

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 707
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 708
    invoke-static {}, Landroid/os/LocaleList;->getAdjustedDefault()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextLocales(Landroid/os/LocaleList;)V

    .line 709
    const/high16 v0, -0x1000000

    invoke-static {v0}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    .line 710
    invoke-direct {p0}, Landroid/graphics/Paint;->resetElegantTextHeight()V

    .line 711
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 3
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 721
    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nInitWithPaint(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 722
    sget-object v0, Landroid/graphics/Paint$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 723
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->setClassVariablesFrom(Landroid/graphics/Paint;)V

    .line 724
    return-void
.end method

.method private installXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    .locals 4
    .param p1, "xfermode"    # Landroid/graphics/Xfermode;

    .line 1478
    invoke-static {}, Lcom/android/graphics/hwui/flags/Flags;->runtimeColorFiltersBlenders()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1479
    instance-of v0, p1, Landroid/graphics/RuntimeXfermode;

    if-eqz v0, :cond_0

    .line 1480
    iput-object p1, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 1481
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    move-object v2, p1

    check-cast v2, Landroid/graphics/RuntimeXfermode;

    invoke-virtual {v2}, Landroid/graphics/RuntimeXfermode;->createNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nSetXfermode(JJ)V

    .line 1482
    return-object p1

    .line 1485
    :cond_0
    instance-of v0, p1, Landroid/graphics/PorterDuffXfermode;

    if-eqz v0, :cond_1

    .line 1486
    move-object v0, p1

    check-cast v0, Landroid/graphics/PorterDuffXfermode;

    iget v0, v0, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    goto :goto_0

    :cond_1
    sget v0, Landroid/graphics/PorterDuffXfermode;->DEFAULT:I

    .line 1487
    .local v0, "newMode":I
    :goto_0
    iget-object v1, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    instance-of v1, v1, Landroid/graphics/PorterDuffXfermode;

    if-eqz v1, :cond_2

    .line 1488
    iget-object v1, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    check-cast v1, Landroid/graphics/PorterDuffXfermode;

    iget v1, v1, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    goto :goto_1

    :cond_2
    sget v1, Landroid/graphics/PorterDuffXfermode;->DEFAULT:I

    .line 1489
    .local v1, "curMode":I
    :goto_1
    if-eq v0, v1, :cond_3

    .line 1490
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0}, Landroid/graphics/Paint;->nSetXfermode(JI)V

    .line 1492
    :cond_3
    iput-object p1, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 1493
    return-object p1
.end method

.method private static native nAddFontVariationToBuilder(JIF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nAscent(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nBreakText(JLjava/lang/String;ZFI[F)I
.end method

.method private static native nBreakText(J[CIIFI[F)I
.end method

.method private static native nCreateFontVariationBuilder(I)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nDescent(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nEqualsForTextMeasurement(JJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetCharArrayBounds(J[CIIILandroid/graphics/Rect;)V
.end method

.method private static native nGetElegantTextHeight(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetEndHyphenEdit(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetFillPath(JJJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetFlags(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetFontMetrics(JLandroid/graphics/Paint$FontMetrics;Z)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetFontMetricsInt(JLandroid/graphics/Paint$FontMetricsInt;Z)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetFontMetricsIntForText(JLjava/lang/String;IIIIZLandroid/graphics/Paint$FontMetricsInt;)V
.end method

.method private static native nGetFontMetricsIntForText(J[CIIIIZLandroid/graphics/Paint$FontMetricsInt;)V
.end method

.method private static native nGetHinting(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetLetterSpacing(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetNativeFinalizer()J
.end method

.method private static native nGetOffsetForAdvance(J[CIIIIZF)I
.end method

.method private static native nGetRunAdvance(J[CIIIIZI)F
.end method

.method private static native nGetRunCharacterAdvance(J[CIIIIZI[FILandroid/graphics/RectF;)F
.end method

.method private static native nGetRunCharacterAdvance(J[CIIIIZI[FILandroid/graphics/RectF;Landroid/graphics/Paint$RunInfo;)F
.end method

.method private static native nGetStartHyphenEdit(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetStrikeThruPosition(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetStrikeThruThickness(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetStringBounds(JLjava/lang/String;IIILandroid/graphics/Rect;)V
.end method

.method private static native nGetStrokeCap(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetStrokeJoin(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetStrokeMiter(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetStrokeWidth(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetStyle(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetTextAdvances(JLjava/lang/String;IIIII[FI)F
.end method

.method private static native nGetTextAdvances(J[CIIIII[FI)F
.end method

.method private static native nGetTextAlign(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetTextPath(JILjava/lang/String;IIFFJ)V
.end method

.method private static native nGetTextPath(JI[CIIFFJ)V
.end method

.method private native nGetTextRunCursor(JLjava/lang/String;IIIII)I
.end method

.method private native nGetTextRunCursor(J[CIIIII)I
.end method

.method private static native nGetTextScaleX(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetTextSize(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetTextSkewX(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetUnderlinePosition(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetUnderlineThickness(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetWordSpacing(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nHasGlyph(JILjava/lang/String;)Z
.end method

.method private static native nHasShadowLayer(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nInit()J
.end method

.method private static native nInitWithPaint(J)J
.end method

.method private static native nReset(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSet(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetAlpha(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetAntiAlias(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetColor(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetColor(JJJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetColorFilter(JJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetDither(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetElegantTextHeight(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetEndHyphenEdit(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetFakeBoldText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetFilterBitmap(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetFlags(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetFontFeatureSettings(JLjava/lang/String;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetFontVariationOverride(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetHinting(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetLetterSpacing(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetLinearText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetMaskFilter(JJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetPathEffect(JJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetShader(JJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetShadowLayer(JFFFJJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetStartHyphenEdit(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetStrikeThruText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetStrokeCap(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetStrokeJoin(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetStrokeMiter(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetStrokeWidth(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetStyle(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetSubpixelText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetTextAlign(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetTextLocales(JLjava/lang/String;)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetTextLocalesByMinikinLocaleListId(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetTextScaleX(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetTextSize(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetTextSkewX(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetTypeface(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetUnderlineText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetWordSpacing(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetXfermode(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetXfermode(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private resetElegantTextHeight()V
    .locals 3

    .line 1944
    const-wide/32 v0, 0x10ab11dd

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1945
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetElegantTextHeight(JI)V

    goto :goto_0

    .line 1947
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetElegantTextHeight(JI)V

    .line 1949
    :goto_0
    return-void
.end method

.method private setClassVariablesFrom(Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 780
    iget-wide v0, p1, Landroid/graphics/Paint;->mColor:J

    iput-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    .line 781
    iget-object v0, p1, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    iput-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 782
    iget-object v0, p1, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    iput-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 783
    iget-object v0, p1, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    iput-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 784
    iget-object v0, p1, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    iput-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 785
    iget-wide v0, p1, Landroid/graphics/Paint;->mNativeShader:J

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 786
    iget-object v0, p1, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 787
    iget-object v0, p1, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    iput-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 788
    iget-wide v0, p1, Landroid/graphics/Paint;->mNativeXfermode:J

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeXfermode:J

    .line 790
    iget-boolean v0, p1, Landroid/graphics/Paint;->mHasCompatScaling:Z

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 791
    iget v0, p1, Landroid/graphics/Paint;->mCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 792
    iget v0, p1, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    .line 794
    iget v0, p1, Landroid/graphics/Paint;->mBidiFlags:I

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 795
    iget-object v0, p1, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    .line 796
    iget-object v0, p1, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    .line 797
    iget-object v0, p1, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    .line 799
    iget v0, p1, Landroid/graphics/Paint;->mShadowLayerRadius:F

    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerRadius:F

    .line 800
    iget v0, p1, Landroid/graphics/Paint;->mShadowLayerDx:F

    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerDx:F

    .line 801
    iget v0, p1, Landroid/graphics/Paint;->mShadowLayerDy:F

    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerDy:F

    .line 802
    iget-wide v0, p1, Landroid/graphics/Paint;->mShadowLayerColor:J

    iput-wide v0, p0, Landroid/graphics/Paint;->mShadowLayerColor:J

    .line 803
    return-void
.end method

.method private setTypefaceWithoutWarning(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 4
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 1603
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Landroid/graphics/Typeface;->native_instance:J

    .line 1604
    .local v0, "typefaceNative":J
    :goto_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->nSetTypeface(JJ)V

    .line 1605
    iput-object p1, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 1606
    return-object p1
.end method

.method private syncTextLocalesWithMinikin()V
    .locals 6

    .line 1849
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    .line 1851
    .local v0, "languageTags":Ljava/lang/String;
    sget-object v1, Landroid/graphics/Paint;->sCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1852
    :try_start_0
    sget-object v2, Landroid/graphics/Paint;->sMinikinLocaleListIdCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1853
    .local v2, "minikinLocaleListId":Ljava/lang/Integer;
    if-nez v2, :cond_0

    .line 1854
    iget-wide v3, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v3, v4, v0}, Landroid/graphics/Paint;->nSetTextLocales(JLjava/lang/String;)I

    move-result v3

    .line 1855
    .local v3, "newID":I
    sget-object v4, Landroid/graphics/Paint;->sMinikinLocaleListIdCache:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1856
    monitor-exit v1

    return-void

    .line 1858
    .end local v3    # "newID":I
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1859
    iget-wide v3, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v3, v4, v1}, Landroid/graphics/Paint;->nSetTextLocalesByMinikinLocaleListId(JI)V

    .line 1860
    return-void

    .line 1858
    .end local v2    # "minikinLocaleListId":Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public ascent()F
    .locals 2

    .line 2337
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nAscent(J)F

    move-result v0

    return v0
.end method

.method public breakText(Ljava/lang/CharSequence;IIZF[F)I
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "measureForwards"    # Z
    .param p5, "maxWidth"    # F
    .param p6, "measuredWidth"    # [F

    .line 2917
    if-eqz p1, :cond_5

    .line 2920
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_4

    .line 2924
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-ne p2, p3, :cond_0

    move v6, p5

    move-object v7, p6

    goto :goto_1

    .line 2927
    :cond_0
    if-nez p2, :cond_1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p3, v0, :cond_1

    .line 2928
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p4, p5, p6}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v0

    return v0

    .line 2932
    :cond_1
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v3

    .line 2935
    .local v3, "buf":[C
    invoke-static {p1, p2, p3, v3, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2937
    if-eqz p4, :cond_2

    .line 2938
    const/4 v4, 0x0

    sub-int v5, p3, p2

    move-object v2, p0

    move v6, p5

    move-object v7, p6

    .end local p5    # "maxWidth":F
    .end local p6    # "measuredWidth":[F
    .local v6, "maxWidth":F
    .local v7, "measuredWidth":[F
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Paint;->breakText([CIIF[F)I

    move-result p5

    .local p5, "result":I
    goto :goto_0

    .line 2940
    .end local v6    # "maxWidth":F
    .end local v7    # "measuredWidth":[F
    .local p5, "maxWidth":F
    .restart local p6    # "measuredWidth":[F
    :cond_2
    move v6, p5

    move-object v7, p6

    .end local p5    # "maxWidth":F
    .end local p6    # "measuredWidth":[F
    .restart local v6    # "maxWidth":F
    .restart local v7    # "measuredWidth":[F
    sub-int p5, p3, p2

    neg-int v5, p5

    const/4 v4, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Paint;->breakText([CIIF[F)I

    move-result p5

    .line 2943
    .local p5, "result":I
    :goto_0
    invoke-static {v3}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 2944
    return p5

    .line 2924
    .end local v3    # "buf":[C
    .end local v6    # "maxWidth":F
    .end local v7    # "measuredWidth":[F
    .local p5, "maxWidth":F
    .restart local p6    # "measuredWidth":[F
    :cond_3
    move v6, p5

    move-object v7, p6

    .line 2925
    .end local p5    # "maxWidth":F
    .end local p6    # "measuredWidth":[F
    .restart local v6    # "maxWidth":F
    .restart local v7    # "measuredWidth":[F
    :goto_1
    return v1

    .line 2921
    .end local v6    # "maxWidth":F
    .end local v7    # "measuredWidth":[F
    .restart local p5    # "maxWidth":F
    .restart local p6    # "measuredWidth":[F
    :cond_4
    move v6, p5

    .end local p5    # "maxWidth":F
    .restart local v6    # "maxWidth":F
    new-instance p5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p5

    .line 2918
    .end local v6    # "maxWidth":F
    .restart local p5    # "maxWidth":F
    :cond_5
    move v6, p5

    move-object v7, p6

    .end local p5    # "maxWidth":F
    .end local p6    # "measuredWidth":[F
    .restart local v6    # "maxWidth":F
    .restart local v7    # "measuredWidth":[F
    new-instance p5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p6, "text cannot be null"

    invoke-direct {p5, p6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p5
.end method

.method public breakText(Ljava/lang/String;ZF[F)I
    .locals 9
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "measureForwards"    # Z
    .param p3, "maxWidth"    # F
    .param p4, "measuredWidth"    # [F

    .line 2965
    if-eqz p1, :cond_3

    .line 2969
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2970
    return v1

    .line 2972
    :cond_0
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_1

    .line 2973
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    .end local p1    # "text":Ljava/lang/String;
    .end local p2    # "measureForwards":Z
    .end local p3    # "maxWidth":F
    .end local p4    # "measuredWidth":[F
    .local v4, "text":Ljava/lang/String;
    .local v5, "measureForwards":Z
    .local v6, "maxWidth":F
    .local v8, "measuredWidth":[F
    invoke-static/range {v2 .. v8}, Landroid/graphics/Paint;->nBreakText(JLjava/lang/String;ZFI[F)I

    move-result p1

    move p2, v6

    .end local v6    # "maxWidth":F
    .local p2, "maxWidth":F
    return p1

    .line 2977
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "measureForwards":Z
    .end local v8    # "measuredWidth":[F
    .restart local p1    # "text":Ljava/lang/String;
    .local p2, "measureForwards":Z
    .restart local p3    # "maxWidth":F
    .restart local p4    # "measuredWidth":[F
    :cond_1
    move-object v4, p1

    move v5, p2

    move p2, p3

    move-object v8, p4

    .end local p1    # "text":Ljava/lang/String;
    .end local p3    # "maxWidth":F
    .end local p4    # "measuredWidth":[F
    .restart local v4    # "text":Ljava/lang/String;
    .restart local v5    # "measureForwards":Z
    .restart local v8    # "measuredWidth":[F
    .local p2, "maxWidth":F
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result p1

    .line 2978
    .local p1, "oldSize":F
    iget p3, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr p3, p1

    invoke-virtual {p0, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2979
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget p3, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float v6, p2, p3

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-static/range {v2 .. v8}, Landroid/graphics/Paint;->nBreakText(JLjava/lang/String;ZFI[F)I

    move-result p3

    .line 2981
    .local p3, "res":I
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2982
    if-eqz v8, :cond_2

    aget p4, v8, v1

    iget v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr p4, v0

    aput p4, v8, v1

    .line 2983
    :cond_2
    return p3

    .line 2966
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "measureForwards":Z
    .end local v8    # "measuredWidth":[F
    .local p1, "text":Ljava/lang/String;
    .local p2, "measureForwards":Z
    .local p3, "maxWidth":F
    .restart local p4    # "measuredWidth":[F
    :cond_3
    move-object v4, p1

    move v5, p2

    move p2, p3

    .end local p1    # "text":Ljava/lang/String;
    .end local p3    # "maxWidth":F
    .restart local v4    # "text":Ljava/lang/String;
    .restart local v5    # "measureForwards":Z
    .local p2, "maxWidth":F
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p3, "text cannot be null"

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public breakText([CIIF[F)I
    .locals 10
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "maxWidth"    # F
    .param p5, "measuredWidth"    # [F

    .line 2874
    if-eqz p1, :cond_5

    .line 2877
    if-ltz p2, :cond_4

    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 2881
    array-length v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p3, :cond_0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move p2, p4

    move-object v9, p5

    goto :goto_0

    .line 2884
    :cond_0
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_1

    .line 2885
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v8, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v9, p5

    .end local p1    # "text":[C
    .end local p2    # "index":I
    .end local p3    # "count":I
    .end local p4    # "maxWidth":F
    .end local p5    # "measuredWidth":[F
    .local v4, "text":[C
    .local v5, "index":I
    .local v6, "count":I
    .local v7, "maxWidth":F
    .local v9, "measuredWidth":[F
    invoke-static/range {v2 .. v9}, Landroid/graphics/Paint;->nBreakText(J[CIIFI[F)I

    move-result p1

    move p2, v7

    .end local v7    # "maxWidth":F
    .local p2, "maxWidth":F
    return p1

    .line 2889
    .end local v4    # "text":[C
    .end local v5    # "index":I
    .end local v6    # "count":I
    .end local v9    # "measuredWidth":[F
    .restart local p1    # "text":[C
    .local p2, "index":I
    .restart local p3    # "count":I
    .restart local p4    # "maxWidth":F
    .restart local p5    # "measuredWidth":[F
    :cond_1
    move-object v4, p1

    move v5, p2

    move v6, p3

    move p2, p4

    move-object v9, p5

    .end local p1    # "text":[C
    .end local p3    # "count":I
    .end local p4    # "maxWidth":F
    .end local p5    # "measuredWidth":[F
    .restart local v4    # "text":[C
    .restart local v5    # "index":I
    .restart local v6    # "count":I
    .restart local v9    # "measuredWidth":[F
    .local p2, "maxWidth":F
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result p1

    .line 2890
    .local p1, "oldSize":F
    iget p3, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr p3, p1

    invoke-virtual {p0, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2891
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget p3, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float v7, p2, p3

    iget v8, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-static/range {v2 .. v9}, Landroid/graphics/Paint;->nBreakText(J[CIIFI[F)I

    move-result p3

    .line 2893
    .local p3, "res":I
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2894
    if-eqz v9, :cond_2

    aget p4, v9, v1

    iget p5, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr p4, p5

    aput p4, v9, v1

    .line 2895
    :cond_2
    return p3

    .line 2881
    .end local v4    # "text":[C
    .end local v5    # "index":I
    .end local v6    # "count":I
    .end local v9    # "measuredWidth":[F
    .local p1, "text":[C
    .local p2, "index":I
    .local p3, "count":I
    .restart local p4    # "maxWidth":F
    .restart local p5    # "measuredWidth":[F
    :cond_3
    move-object v4, p1

    move v5, p2

    move v6, p3

    move p2, p4

    move-object v9, p5

    .line 2882
    .end local p1    # "text":[C
    .end local p3    # "count":I
    .end local p4    # "maxWidth":F
    .end local p5    # "measuredWidth":[F
    .restart local v4    # "text":[C
    .restart local v5    # "index":I
    .restart local v6    # "count":I
    .restart local v9    # "measuredWidth":[F
    .local p2, "maxWidth":F
    :goto_0
    return v1

    .line 2877
    .end local v4    # "text":[C
    .end local v5    # "index":I
    .end local v6    # "count":I
    .end local v9    # "measuredWidth":[F
    .restart local p1    # "text":[C
    .local p2, "index":I
    .restart local p3    # "count":I
    .restart local p4    # "maxWidth":F
    .restart local p5    # "measuredWidth":[F
    :cond_4
    move-object v4, p1

    move v5, p2

    move v6, p3

    move p2, p4

    move-object v9, p5

    .line 2878
    .end local p1    # "text":[C
    .end local p3    # "count":I
    .end local p4    # "maxWidth":F
    .end local p5    # "measuredWidth":[F
    .restart local v4    # "text":[C
    .restart local v5    # "index":I
    .restart local v6    # "count":I
    .restart local v9    # "measuredWidth":[F
    .local p2, "maxWidth":F
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    .line 2875
    .end local v4    # "text":[C
    .end local v5    # "index":I
    .end local v6    # "count":I
    .end local v9    # "measuredWidth":[F
    .restart local p1    # "text":[C
    .local p2, "index":I
    .restart local p3    # "count":I
    .restart local p4    # "maxWidth":F
    .restart local p5    # "measuredWidth":[F
    :cond_5
    move-object v4, p1

    move v6, p3

    .end local p1    # "text":[C
    .end local p3    # "count":I
    .restart local v4    # "text":[C
    .restart local v6    # "count":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p3, "text cannot be null"

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clearShadowLayer()V
    .locals 2

    .line 1687
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v0, v0, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1688
    return-void
.end method

.method public descent()F
    .locals 2

    .line 2351
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nDescent(J)F

    move-result v0

    return v0
.end method

.method public equalsForTextMeasurement(Landroid/graphics/Paint;)Z
    .locals 4
    .param p1, "other"    # Landroid/graphics/Paint;

    .line 3818
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p1, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nEqualsForTextMeasurement(JJ)Z

    move-result v0

    return v0
.end method

.method public getAlpha()I
    .locals 2

    .line 1242
    iget-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    invoke-static {v0, v1}, Landroid/graphics/Color;->alpha(J)F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getBidiFlags()I
    .locals 1

    .line 861
    iget v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    return v0
.end method

.method public getBlendMode()Landroid/graphics/BlendMode;
    .locals 1

    .line 1452
    iget-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    instance-of v0, v0, Landroid/graphics/PorterDuffXfermode;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1455
    :cond_0
    iget-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    check-cast v0, Landroid/graphics/PorterDuffXfermode;

    iget v0, v0, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    invoke-static {v0}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    return-object v0

    .line 1453
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColor()I
    .locals 2

    .line 1185
    iget-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    invoke-static {v0, v1}, Landroid/graphics/Color;->toArgb(J)I

    move-result v0

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 1414
    iget-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getColorLong()J
    .locals 2

    .line 1199
    iget-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    return-wide v0
.end method

.method public getEndHyphenEdit()I
    .locals 2

    .line 2270
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetEndHyphenEdit(J)I

    move-result v0

    return v0
.end method

.method public getFillPath(Landroid/graphics/Path;Landroid/graphics/Path;)Z
    .locals 6
    .param p1, "src"    # Landroid/graphics/Path;
    .param p2, "dst"    # Landroid/graphics/Path;

    .line 1374
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Paint;->nGetFillPath(JJJ)Z

    move-result v0

    return v0
.end method

.method public getFlags()I
    .locals 2

    .line 883
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetFlags(J)I

    move-result v0

    return v0
.end method

.method public getFontFeatureSettings()Ljava/lang/String;
    .locals 1

    .line 2067
    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    return-object v0
.end method

.method public getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F
    .locals 3
    .param p1, "metrics"    # Landroid/graphics/Paint$FontMetrics;

    .line 2423
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Paint;->nGetFontMetrics(JLandroid/graphics/Paint$FontMetrics;Z)F

    move-result v0

    return v0
.end method

.method public getFontMetrics()Landroid/graphics/Paint$FontMetrics;
    .locals 1

    .line 2431
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    .line 2432
    .local v0, "fm":Landroid/graphics/Paint$FontMetrics;
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 2433
    return-object v0
.end method

.method public getFontMetricsForLocale(Landroid/graphics/Paint$FontMetrics;)V
    .locals 3
    .param p1, "metrics"    # Landroid/graphics/Paint$FontMetrics;

    .line 2459
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Paint;->nGetFontMetrics(JLandroid/graphics/Paint$FontMetrics;Z)F

    .line 2460
    return-void
.end method

.method public getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I
    .locals 3
    .param p1, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 2669
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Paint;->nGetFontMetricsInt(JLandroid/graphics/Paint$FontMetricsInt;Z)I

    move-result v0

    return v0
.end method

.method public getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    .locals 1

    .line 2673
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    .line 2674
    .local v0, "fm":Landroid/graphics/Paint$FontMetricsInt;
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 2675
    return-object v0
.end method

.method public getFontMetricsInt(Ljava/lang/CharSequence;IIIIZLandroid/graphics/Paint$FontMetricsInt;)V
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextCount"    # I
    .param p6, "isRtl"    # Z
    .param p7, "outMetrics"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 2486
    move-object/from16 v8, p7

    if-eqz p1, :cond_7

    .line 2489
    if-ltz p2, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p2, v0, :cond_6

    .line 2492
    if-ltz p3, :cond_5

    add-int v0, p2, p3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v0, v1, :cond_5

    .line 2495
    if-ltz p4, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p4, v0, :cond_4

    .line 2498
    if-ltz p5, :cond_3

    add-int v0, p4, p5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 2501
    if-eqz v8, :cond_2

    .line 2505
    if-nez p3, :cond_0

    .line 2506
    invoke-virtual {p0, v8}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 2507
    return-void

    .line 2510
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2511
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nGetFontMetricsIntForText(JLjava/lang/String;IIIIZLandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_0

    .line 2514
    :cond_1
    invoke-static {p5}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v2

    .line 2516
    .local v2, "buf":[C
    add-int v0, p4, p5

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, p4, v0, v2, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2517
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    sub-int v3, p2, p4

    const/4 v5, 0x0

    move v4, p3

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nGetFontMetricsIntForText(J[CIIIIZLandroid/graphics/Paint$FontMetricsInt;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2520
    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 2521
    nop

    .line 2524
    .end local v2    # "buf":[C
    :goto_0
    return-void

    .line 2520
    .restart local v2    # "buf":[C
    :catchall_0
    move-exception v0

    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 2521
    throw v0

    .line 2502
    .end local v2    # "buf":[C
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "outMetrics must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2499
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ctxCount argument is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2496
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ctxStart argument is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2493
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count argument is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2490
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "start argument is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2487
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFontMetricsInt([CIIIIZLandroid/graphics/Paint$FontMetricsInt;)V
    .locals 9
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextCount"    # I
    .param p6, "isRtl"    # Z
    .param p7, "outMetrics"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 2548
    move-object/from16 v8, p7

    if-eqz p1, :cond_6

    .line 2551
    if-ltz p2, :cond_5

    array-length v0, p1

    if-ge p2, v0, :cond_5

    .line 2554
    if-ltz p3, :cond_4

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_4

    .line 2557
    if-ltz p4, :cond_3

    array-length v0, p1

    if-ge p4, v0, :cond_3

    .line 2560
    if-ltz p5, :cond_2

    add-int v0, p4, p5

    array-length v1, p1

    if-gt v0, v1, :cond_2

    .line 2563
    if-eqz v8, :cond_1

    .line 2567
    if-nez p3, :cond_0

    .line 2568
    invoke-virtual {p0, v8}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 2569
    return-void

    .line 2572
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nGetFontMetricsIntForText(J[CIIIIZLandroid/graphics/Paint$FontMetricsInt;)V

    .line 2574
    return-void

    .line 2564
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "outMetrics must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2561
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ctxCount argument is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2558
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ctxStart argument is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2555
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count argument is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2552
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "start argument is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2549
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFontMetricsIntForLocale(Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 3
    .param p1, "metrics"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 2701
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Paint;->nGetFontMetricsInt(JLandroid/graphics/Paint$FontMetricsInt;Z)I

    .line 2702
    return-void
.end method

.method public getFontSpacing()F
    .locals 1

    .line 2728
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    return v0
.end method

.method public getFontVariationOverride()Ljava/lang/String;
    .locals 1

    .line 2246
    iget-object v0, p0, Landroid/graphics/Paint;->mFontVariationOverride:Ljava/lang/String;

    return-object v0
.end method

.method public getFontVariationSettings()Ljava/lang/String;
    .locals 1

    .line 2101
    iget-object v0, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    return-object v0
.end method

.method public getHinting()I
    .locals 2

    .line 900
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetHinting(J)I

    move-result v0

    return v0
.end method

.method public getLetterSpacing()F
    .locals 2

    .line 2017
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetLetterSpacing(J)F

    move-result v0

    return v0
.end method

.method public getMaskFilter()Landroid/graphics/MaskFilter;
    .locals 1

    .line 1546
    iget-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    return-object v0
.end method

.method public declared-synchronized getNativeInstance()J
    .locals 12

    monitor-enter p0

    .line 831
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Paint;->isFilterBitmap()Z

    move-result v0

    .line 832
    .local v0, "filter":Z
    iget-object v1, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    invoke-virtual {v1, v0}, Landroid/graphics/Shader;->getNativeInstance(Z)J

    move-result-wide v4

    .line 833
    .local v4, "newNativeShader":J
    :goto_0
    iget-wide v6, p0, Landroid/graphics/Paint;->mNativeShader:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    .line 834
    iput-wide v4, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 835
    iget-wide v6, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v8, p0, Landroid/graphics/Paint;->mNativeShader:J

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Paint;->nSetShader(JJ)J

    .line 837
    .end local p0    # "this":Landroid/graphics/Paint;
    :cond_1
    iget-object v1, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    if-nez v1, :cond_2

    :goto_1
    goto :goto_2

    :cond_2
    iget-object v1, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v1}, Landroid/graphics/ColorFilter;->getNativeInstance()J

    move-result-wide v2

    goto :goto_1

    .line 838
    .local v2, "newNativeColorFilter":J
    :goto_2
    iget-wide v6, p0, Landroid/graphics/Paint;->mNativeColorFilter:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_3

    .line 839
    iput-wide v2, p0, Landroid/graphics/Paint;->mNativeColorFilter:J

    .line 840
    iget-wide v6, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v8, p0, Landroid/graphics/Paint;->mNativeColorFilter:J

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Paint;->nSetColorFilter(JJ)J

    .line 842
    :cond_3
    invoke-static {}, Lcom/android/graphics/hwui/flags/Flags;->runtimeColorFiltersBlenders()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 843
    iget-object v1, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    instance-of v1, v1, Landroid/graphics/RuntimeXfermode;

    if-eqz v1, :cond_4

    .line 844
    iget-object v1, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    check-cast v1, Landroid/graphics/RuntimeXfermode;

    invoke-virtual {v1}, Landroid/graphics/RuntimeXfermode;->createNativeInstance()J

    move-result-wide v6

    .line 845
    .local v6, "newNativeXfermode":J
    iget-wide v8, p0, Landroid/graphics/Paint;->mNativeXfermode:J

    cmp-long v1, v6, v8

    if-eqz v1, :cond_4

    .line 846
    iput-wide v6, p0, Landroid/graphics/Paint;->mNativeXfermode:J

    .line 847
    iget-wide v8, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v10, p0, Landroid/graphics/Paint;->mNativeXfermode:J

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Paint;->nSetXfermode(JJ)V

    .line 851
    .end local v6    # "newNativeXfermode":J
    :cond_4
    iget-wide v6, p0, Landroid/graphics/Paint;->mNativePaint:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v6

    .line 830
    .end local v0    # "filter":Z
    .end local v2    # "newNativeColorFilter":J
    .end local v4    # "newNativeShader":J
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getOffsetForAdvance(Ljava/lang/CharSequence;IIIIZF)I
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "advance"    # F

    .line 3794
    if-eqz p1, :cond_1

    .line 3797
    or-int v0, p4, p2

    or-int/2addr v0, p3

    or-int/2addr v0, p5

    sub-int v1, p2, p4

    or-int/2addr v0, v1

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    sub-int v1, p5, p3

    or-int/2addr v0, v1

    .line 3799
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p5

    or-int/2addr v0, v1

    if-ltz v0, :cond_0

    .line 3803
    sub-int v0, p5, p4

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v2

    .line 3804
    .local v2, "buf":[C
    const/4 v0, 0x0

    invoke-static {p1, p4, p5, v2, v0}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 3805
    sub-int v3, p2, p4

    sub-int v4, p3, p4

    const/4 v5, 0x0

    sub-int v6, p5, p4

    move-object v1, p0

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Paint;->getOffsetForAdvance([CIIIIZF)I

    move-result v0

    add-int/2addr v0, p4

    .line 3807
    .local v0, "result":I
    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 3808
    return v0

    .line 3800
    .end local v0    # "result":I
    .end local v2    # "buf":[C
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 3795
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOffsetForAdvance([CIIIIZF)I
    .locals 9
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "advance"    # F

    .line 3767
    if-eqz p1, :cond_1

    .line 3770
    or-int v0, p4, p2

    or-int/2addr v0, p3

    or-int/2addr v0, p5

    sub-int v1, p2, p4

    or-int/2addr v0, v1

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    sub-int v1, p5, p3

    or-int/2addr v0, v1

    array-length v1, p1

    sub-int/2addr v1, p5

    or-int/2addr v0, v1

    if-ltz v0, :cond_0

    .line 3776
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nGetOffsetForAdvance(J[CIIIIZF)I

    move-result v0

    return v0

    .line 3773
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 3768
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPathEffect()Landroid/graphics/PathEffect;
    .locals 1

    .line 1518
    iget-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    return-object v0
.end method

.method public getRasterizer()Landroid/graphics/Rasterizer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1621
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRunAdvance(Ljava/lang/CharSequence;IIIIZI)F
    .locals 11
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "offset"    # I

    .line 3539
    move v0, p4

    move/from16 v1, p5

    if-eqz p1, :cond_2

    .line 3542
    or-int v2, v0, p2

    or-int v2, v2, p7

    or-int/2addr v2, p3

    or-int/2addr v2, v1

    sub-int v3, p2, v0

    or-int/2addr v2, v3

    sub-int v3, p7, p2

    or-int/2addr v2, v3

    sub-int v3, p3, p7

    or-int/2addr v2, v3

    sub-int v3, v1, p3

    or-int/2addr v2, v3

    .line 3544
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, v1

    or-int/2addr v2, v3

    if-ltz v2, :cond_1

    .line 3547
    if-ne p3, p2, :cond_0

    .line 3548
    const/4 v2, 0x0

    return v2

    .line 3551
    :cond_0
    sub-int v2, v1, v0

    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v4

    .line 3552
    .local v4, "buf":[C
    const/4 v2, 0x0

    invoke-static {p1, p4, v1, v4, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 3553
    sub-int v5, p2, v0

    sub-int v6, p3, v0

    sub-int v8, v1, v0

    sub-int v10, p7, v0

    const/4 v7, 0x0

    move-object v3, p0

    move/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Paint;->getRunAdvance([CIIIIZI)F

    move-result v2

    .line 3555
    .local v2, "result":F
    invoke-static {v4}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 3556
    return v2

    .line 3545
    .end local v2    # "result":F
    .end local v4    # "buf":[C
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 3540
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getRunAdvance([CIIIIZI)F
    .locals 9
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "offset"    # I

    .line 3509
    if-eqz p1, :cond_2

    .line 3512
    or-int v0, p4, p2

    or-int v0, v0, p7

    or-int/2addr v0, p3

    or-int/2addr v0, p5

    sub-int v1, p2, p4

    or-int/2addr v0, v1

    sub-int v1, p7, p2

    or-int/2addr v0, v1

    sub-int v1, p3, p7

    or-int/2addr v0, v1

    sub-int v1, p5, p3

    or-int/2addr v0, v1

    array-length v1, p1

    sub-int/2addr v1, p5

    or-int/2addr v0, v1

    if-ltz v0, :cond_1

    .line 3517
    if-ne p3, p2, :cond_0

    .line 3518
    const/4 v0, 0x0

    return v0

    .line 3521
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nGetRunAdvance(J[CIIIIZI)F

    move-result v0

    return v0

    .line 3515
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 3510
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRunCharacterAdvance(Ljava/lang/CharSequence;IIIIZI[FI)F
    .locals 12
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "offset"    # I
    .param p8, "advances"    # [F
    .param p9, "advancesIndex"    # I

    .line 3675
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v11}, Landroid/graphics/Paint;->getRunCharacterAdvance(Ljava/lang/CharSequence;IIIIZI[FILandroid/graphics/RectF;Landroid/graphics/Paint$RunInfo;)F

    move-result v10

    return v10
.end method

.method public getRunCharacterAdvance(Ljava/lang/CharSequence;IIIIZI[FILandroid/graphics/RectF;Landroid/graphics/Paint$RunInfo;)F
    .locals 18
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "offset"    # I
    .param p8, "advances"    # [F
    .param p9, "advancesIndex"    # I
    .param p10, "drawBounds"    # Landroid/graphics/RectF;
    .param p11, "runInfo"    # Landroid/graphics/Paint$RunInfo;

    .line 3700
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p7

    move-object/from16 v14, p8

    move/from16 v15, p9

    if-eqz v0, :cond_6

    .line 3703
    const-string v6, ", "

    if-ltz v3, :cond_5

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-gt v4, v7, :cond_5

    .line 3708
    const-string v7, " must be in "

    if-lt v1, v3, :cond_4

    if-lt v4, v2, :cond_4

    .line 3713
    if-lt v5, v1, :cond_3

    if-lt v2, v5, :cond_3

    .line 3718
    if-eqz v14, :cond_1

    array-length v6, v14

    sub-int v7, v15, v1

    add-int/2addr v7, v2

    if-lt v6, v7, :cond_0

    goto :goto_0

    .line 3719
    :cond_0
    new-instance v6, Ljava/lang/IndexOutOfBoundsException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Given array doesn\'t have enough space to receive the result, advances.length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v14

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " advanceIndex: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " needed space: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-int v8, v5, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3724
    :cond_1
    :goto_0
    if-ne v2, v1, :cond_2

    .line 3725
    const/4 v6, 0x0

    return v6

    .line 3728
    :cond_2
    sub-int v6, v4, v3

    invoke-static {v6}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v7

    .line 3729
    .local v7, "buf":[C
    const/4 v6, 0x0

    invoke-static {v0, v3, v4, v7, v6}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 3730
    sub-int v8, v1, v3

    sub-int v9, v2, v3

    sub-int v11, v4, v3

    sub-int v13, v5, v3

    const/4 v10, 0x0

    move-object/from16 v6, p0

    move/from16 v12, p6

    move-object/from16 v16, p10

    move-object/from16 v17, p11

    invoke-virtual/range {v6 .. v17}, Landroid/graphics/Paint;->getRunCharacterAdvance([CIIIIZI[FILandroid/graphics/RectF;Landroid/graphics/Paint$RunInfo;)F

    move-result v8

    .line 3733
    .local v8, "result":F
    invoke-static {v7}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 3734
    return v8

    .line 3714
    .end local v7    # "buf":[C
    .end local v8    # "result":F
    :cond_3
    new-instance v8, Ljava/lang/IndexOutOfBoundsException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid offset position: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3709
    :cond_4
    new-instance v8, Ljava/lang/IndexOutOfBoundsException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid start/end range: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3704
    :cond_5
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid Context Range: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " must be in 0, "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3705
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3701
    :cond_6
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "text cannot be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getRunCharacterAdvance([CIIIIZI[FI)F
    .locals 12
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "offset"    # I
    .param p8, "advances"    # [F
    .param p9, "advancesIndex"    # I

    .line 3588
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v11}, Landroid/graphics/Paint;->getRunCharacterAdvance([CIIIIZI[FILandroid/graphics/RectF;Landroid/graphics/Paint$RunInfo;)F

    move-result v10

    return v10
.end method

.method public getRunCharacterAdvance([CIIIIZI[FILandroid/graphics/RectF;Landroid/graphics/Paint$RunInfo;)F
    .locals 13
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "offset"    # I
    .param p8, "advances"    # [F
    .param p9, "advancesIndex"    # I
    .param p10, "drawBounds"    # Landroid/graphics/RectF;
    .param p11, "runInfo"    # Landroid/graphics/Paint$RunInfo;

    .line 3616
    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v12, p11

    if-eqz p1, :cond_7

    .line 3619
    const-string v0, ", "

    if-ltz v5, :cond_6

    array-length v1, p1

    if-gt v6, v1, :cond_6

    .line 3624
    const-string v1, " must be in "

    if-lt p2, v5, :cond_5

    if-lt v6, v4, :cond_5

    .line 3629
    if-lt v8, p2, :cond_4

    if-lt v4, v8, :cond_4

    .line 3634
    if-eqz v9, :cond_1

    array-length v0, v9

    sub-int v1, v10, p2

    add-int/2addr v1, v4

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 3635
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given array doesn\'t have enough space to receive the result, advances.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " advanceIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " needed space: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-int v2, v8, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3640
    :cond_1
    :goto_0
    if-ne v4, p2, :cond_3

    .line 3641
    if-eqz v12, :cond_2

    .line 3642
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Landroid/graphics/Paint$RunInfo;->setClusterCount(I)V

    .line 3644
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 3647
    :cond_3
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    move-object v2, p1

    move v3, p2

    move/from16 v7, p6

    move-object/from16 v11, p10

    invoke-static/range {v0 .. v12}, Landroid/graphics/Paint;->nGetRunCharacterAdvance(J[CIIIIZI[FILandroid/graphics/RectF;Landroid/graphics/Paint$RunInfo;)F

    move-result v0

    return v0

    .line 3630
    :cond_4
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid offset position: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3625
    :cond_5
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid start/end range: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3620
    :cond_6
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid Context Range: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " must be in 0, "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v7, p1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3617
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getShader()Landroid/graphics/Shader;
    .locals 1

    .line 1383
    iget-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    return-object v0
.end method

.method public getShadowLayerColor()I
    .locals 2

    .line 1733
    iget-wide v0, p0, Landroid/graphics/Paint;->mShadowLayerColor:J

    invoke-static {v0, v1}, Landroid/graphics/Color;->toArgb(J)I

    move-result v0

    return v0
.end method

.method public getShadowLayerColorLong()J
    .locals 2

    .line 1745
    iget-wide v0, p0, Landroid/graphics/Paint;->mShadowLayerColor:J

    return-wide v0
.end method

.method public getShadowLayerDx()F
    .locals 1

    .line 1715
    iget v0, p0, Landroid/graphics/Paint;->mShadowLayerDx:F

    return v0
.end method

.method public getShadowLayerDy()F
    .locals 1

    .line 1724
    iget v0, p0, Landroid/graphics/Paint;->mShadowLayerDy:F

    return v0
.end method

.method public getShadowLayerRadius()F
    .locals 1

    .line 1706
    iget v0, p0, Landroid/graphics/Paint;->mShadowLayerRadius:F

    return v0
.end method

.method public getStartHyphenEdit()I
    .locals 2

    .line 2258
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetStartHyphenEdit(J)I

    move-result v0

    return v0
.end method

.method public getStrikeThruPosition()F
    .locals 2

    .line 1079
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetStrikeThruPosition(J)F

    move-result v0

    return v0
.end method

.method public getStrikeThruThickness()F
    .locals 2

    .line 1091
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetStrikeThruThickness(J)F

    move-result v0

    return v0
.end method

.method public getStrokeCap()Landroid/graphics/Paint$Cap;
    .locals 3

    .line 1330
    sget-object v0, Landroid/graphics/Paint;->sCapArray:[Landroid/graphics/Paint$Cap;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v1, v2}, Landroid/graphics/Paint;->nGetStrokeCap(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getStrokeJoin()Landroid/graphics/Paint$Join;
    .locals 3

    .line 1349
    sget-object v0, Landroid/graphics/Paint;->sJoinArray:[Landroid/graphics/Paint$Join;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v1, v2}, Landroid/graphics/Paint;->nGetStrokeJoin(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getStrokeMiter()F
    .locals 2

    .line 1308
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetStrokeMiter(J)F

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 2

    .line 1285
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetStrokeWidth(J)F

    move-result v0

    return v0
.end method

.method public getStyle()Landroid/graphics/Paint$Style;
    .locals 3

    .line 1161
    sget-object v0, Landroid/graphics/Paint;->sStyleArray:[Landroid/graphics/Paint$Style;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v1, v2}, Landroid/graphics/Paint;->nGetStyle(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTextAlign()Landroid/graphics/Paint$Align;
    .locals 3

    .line 1757
    sget-object v0, Landroid/graphics/Paint;->sAlignArray:[Landroid/graphics/Paint$Align;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v1, v2}, Landroid/graphics/Paint;->nGetTextAlign(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTextBounds(Ljava/lang/CharSequence;IILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "bounds"    # Landroid/graphics/Rect;

    .line 3419
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_1

    .line 3422
    if-eqz p4, :cond_0

    .line 3425
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 3426
    .local v0, "buf":[C
    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 3427
    sub-int v2, p3, p2

    invoke-virtual {p0, v0, v1, v2, p4}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    .line 3428
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 3429
    return-void

    .line 3423
    .end local v0    # "buf":[C
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need bounds Rect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3420
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "bounds"    # Landroid/graphics/Rect;

    .line 3394
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_1

    .line 3397
    if-eqz p4, :cond_0

    .line 3400
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v6, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v7, p4

    .end local p1    # "text":Ljava/lang/String;
    .end local p2    # "start":I
    .end local p3    # "end":I
    .end local p4    # "bounds":Landroid/graphics/Rect;
    .local v3, "text":Ljava/lang/String;
    .local v4, "start":I
    .local v5, "end":I
    .local v7, "bounds":Landroid/graphics/Rect;
    invoke-static/range {v1 .. v7}, Landroid/graphics/Paint;->nGetStringBounds(JLjava/lang/String;IIILandroid/graphics/Rect;)V

    .line 3401
    return-void

    .line 3398
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "start":I
    .end local v5    # "end":I
    .end local v7    # "bounds":Landroid/graphics/Rect;
    .restart local p1    # "text":Ljava/lang/String;
    .restart local p2    # "start":I
    .restart local p3    # "end":I
    .restart local p4    # "bounds":Landroid/graphics/Rect;
    :cond_0
    move-object v3, p1

    move v4, p2

    .end local p1    # "text":Ljava/lang/String;
    .end local p2    # "start":I
    .restart local v3    # "text":Ljava/lang/String;
    .restart local v4    # "start":I
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "need bounds Rect"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3395
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "start":I
    .restart local p1    # "text":Ljava/lang/String;
    .restart local p2    # "start":I
    :cond_1
    move-object v3, p1

    .end local p1    # "text":Ljava/lang/String;
    .restart local v3    # "text":Ljava/lang/String;
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getTextBounds([CIILandroid/graphics/Rect;)V
    .locals 9
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "bounds"    # Landroid/graphics/Rect;

    .line 3441
    or-int v0, p2, p3

    if-ltz v0, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    .line 3444
    if-eqz p4, :cond_0

    .line 3447
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    .end local p1    # "text":[C
    .end local p2    # "index":I
    .end local p3    # "count":I
    .end local p4    # "bounds":Landroid/graphics/Rect;
    .local v4, "text":[C
    .local v5, "index":I
    .local v6, "count":I
    .local v8, "bounds":Landroid/graphics/Rect;
    invoke-static/range {v2 .. v8}, Landroid/graphics/Paint;->nGetCharArrayBounds(J[CIIILandroid/graphics/Rect;)V

    .line 3449
    return-void

    .line 3445
    .end local v4    # "text":[C
    .end local v5    # "index":I
    .end local v6    # "count":I
    .end local v8    # "bounds":Landroid/graphics/Rect;
    .restart local p1    # "text":[C
    .restart local p2    # "index":I
    .restart local p3    # "count":I
    .restart local p4    # "bounds":Landroid/graphics/Rect;
    :cond_0
    move-object v4, p1

    move v5, p2

    .end local p1    # "text":[C
    .end local p2    # "index":I
    .restart local v4    # "text":[C
    .restart local v5    # "index":I
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "need bounds Rect"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3441
    .end local v4    # "text":[C
    .end local v5    # "index":I
    .restart local p1    # "text":[C
    .restart local p2    # "index":I
    :cond_1
    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    .line 3442
    .end local p1    # "text":[C
    .end local p2    # "index":I
    .end local p3    # "count":I
    .end local p4    # "bounds":Landroid/graphics/Rect;
    .restart local v4    # "text":[C
    .restart local v5    # "index":I
    .restart local v6    # "count":I
    .restart local v8    # "bounds":Landroid/graphics/Rect;
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getTextLocale()Ljava/util/Locale;
    .locals 2

    .line 1780
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getTextLocales()Landroid/os/LocaleList;
    .locals 1

    .line 1790
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V
    .locals 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "path"    # Landroid/graphics/Path;

    .line 3376
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_0

    .line 3379
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v3, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v9

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->nGetTextPath(JILjava/lang/String;IIFFJ)V

    .line 3380
    return-void

    .line 3377
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getTextPath([CIIFFLandroid/graphics/Path;)V
    .locals 11
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "path"    # Landroid/graphics/Path;

    .line 3356
    or-int v0, p2, p3

    if-ltz v0, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_0

    .line 3359
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v3, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v9

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->nGetTextPath(JI[CIIFFJ)V

    .line 3360
    return-void

    .line 3357
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getTextRunAdvances([CIIIIZ[FI)F
    .locals 11
    .param p1, "chars"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "contextIndex"    # I
    .param p5, "contextCount"    # I
    .param p6, "isRtl"    # Z
    .param p7, "advances"    # [F
    .param p8, "advancesIndex"    # I

    .line 3180
    move-object/from16 v8, p7

    if-eqz p1, :cond_8

    .line 3183
    or-int v0, p2, p3

    or-int/2addr v0, p4

    or-int v0, v0, p5

    or-int v0, v0, p8

    sub-int v1, p2, p4

    or-int/2addr v0, v1

    sub-int v1, p5, p3

    or-int/2addr v0, v1

    add-int v1, p4, p5

    add-int v2, p2, p3

    sub-int/2addr v1, v2

    or-int/2addr v0, v1

    array-length v1, p1

    add-int v2, p4, p5

    sub-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 3187
    if-nez v8, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 3188
    :cond_0
    array-length v1, v8

    add-int v2, p8, p3

    sub-int/2addr v1, v2

    :goto_0
    or-int/2addr v0, v1

    if-ltz v0, :cond_7

    .line 3192
    array-length v0, p1

    if-eqz v0, :cond_6

    if-nez p3, :cond_1

    goto/16 :goto_4

    .line 3195
    :cond_1
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    const/4 v1, 0x5

    const/4 v2, 0x4

    if-nez v0, :cond_3

    .line 3196
    move v3, v1

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 3197
    if-eqz p6, :cond_2

    move v7, v3

    goto :goto_1

    :cond_2
    move v7, v2

    .line 3196
    :goto_1
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v9, p8

    invoke-static/range {v0 .. v9}, Landroid/graphics/Paint;->nGetTextAdvances(J[CIIIII[FI)F

    move-result v0

    return v0

    .line 3201
    :cond_3
    move v3, v1

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v10

    .line 3202
    .local v10, "oldSize":F
    iget v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v0, v10

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3203
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 3204
    if-eqz p6, :cond_4

    move v7, v3

    goto :goto_2

    :cond_4
    move v7, v2

    .line 3203
    :goto_2
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v0 .. v9}, Landroid/graphics/Paint;->nGetTextAdvances(J[CIIIII[FI)F

    move-result v0

    .line 3205
    .local v0, "res":F
    invoke-virtual {p0, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3207
    if-eqz p7, :cond_5

    .line 3208
    move/from16 v1, p8

    .local v1, "i":I
    add-int v2, v1, p3

    .local v2, "e":I
    :goto_3
    if-ge v1, v2, :cond_5

    .line 3209
    aget v3, p7, v1

    iget v4, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v3, v4

    aput v3, p7, v1

    .line 3208
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3212
    .end local v1    # "i":I
    .end local v2    # "e":I
    :cond_5
    iget v1, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v1, v0

    return v1

    .line 3193
    .end local v0    # "res":F
    .end local v10    # "oldSize":F
    :cond_6
    :goto_4
    const/4 v0, 0x0

    return v0

    .line 3189
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 3181
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTextRunCursor(Ljava/lang/CharSequence;IIZII)I
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "contextStart"    # I
    .param p3, "contextEnd"    # I
    .param p4, "isRtl"    # Z
    .param p5, "offset"    # I
    .param p6, "cursorOpt"    # I

    .line 3283
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_3

    instance-of v0, p1, Landroid/text/SpannedString;

    if-nez v0, :cond_3

    instance-of v0, p1, Landroid/text/SpannableString;

    if-eqz v0, :cond_0

    move v4, p4

    move v6, p6

    move p4, p3

    move p3, p2

    goto :goto_1

    .line 3288
    :cond_0
    instance-of v0, p1, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_1

    .line 3289
    move-object v1, p1

    check-cast v1, Landroid/text/GraphicsOperations;

    move-object v7, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p2    # "contextStart":I
    .end local p3    # "contextEnd":I
    .end local p4    # "isRtl":Z
    .end local p5    # "offset":I
    .end local p6    # "cursorOpt":I
    .local v2, "contextStart":I
    .local v3, "contextEnd":I
    .local v4, "isRtl":Z
    .local v5, "offset":I
    .local v6, "cursorOpt":I
    invoke-interface/range {v1 .. v7}, Landroid/text/GraphicsOperations;->getTextRunCursor(IIZIILandroid/graphics/Paint;)I

    move-result p2

    move p3, v2

    move p4, v3

    .end local v2    # "contextStart":I
    .end local v3    # "contextEnd":I
    .end local v5    # "offset":I
    .local p3, "contextStart":I
    .local p4, "contextEnd":I
    .restart local p5    # "offset":I
    return p2

    .line 3293
    .end local v4    # "isRtl":Z
    .end local v6    # "cursorOpt":I
    .restart local p2    # "contextStart":I
    .local p3, "contextEnd":I
    .local p4, "isRtl":Z
    .restart local p6    # "cursorOpt":I
    :cond_1
    move v4, p4

    move v6, p6

    move p4, p3

    move p3, p2

    .end local p2    # "contextStart":I
    .end local p6    # "cursorOpt":I
    .restart local v4    # "isRtl":Z
    .restart local v6    # "cursorOpt":I
    .local p3, "contextStart":I
    .local p4, "contextEnd":I
    sub-int v3, p4, p3

    .line 3294
    .local v3, "contextLen":I
    invoke-static {v3}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v1

    .line 3295
    .local v1, "buf":[C
    const/4 p2, 0x0

    invoke-static {p1, p3, p4, v1, p2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 3296
    const/4 v2, 0x0

    sub-int v5, p5, p3

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIZII)I

    move-result p2

    .line 3297
    .local p2, "relPos":I
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 3298
    const/4 p6, -0x1

    if-ne p2, p6, :cond_2

    goto :goto_0

    :cond_2
    add-int p6, p2, p3

    :goto_0
    return p6

    .line 3283
    .end local v1    # "buf":[C
    .end local v3    # "contextLen":I
    .end local v4    # "isRtl":Z
    .end local v6    # "cursorOpt":I
    .local p2, "contextStart":I
    .local p3, "contextEnd":I
    .local p4, "isRtl":Z
    .restart local p6    # "cursorOpt":I
    :cond_3
    move v4, p4

    move v6, p6

    move p4, p3

    move p3, p2

    .line 3285
    .end local p2    # "contextStart":I
    .end local p6    # "cursorOpt":I
    .restart local v4    # "isRtl":Z
    .restart local v6    # "cursorOpt":I
    .local p3, "contextStart":I
    .local p4, "contextEnd":I
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v2, p3

    move v3, p4

    move v5, p5

    .end local p3    # "contextStart":I
    .end local p4    # "contextEnd":I
    .end local p5    # "offset":I
    .restart local v2    # "contextStart":I
    .local v3, "contextEnd":I
    .restart local v5    # "offset":I
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor(Ljava/lang/String;IIZII)I

    move-result p2

    return p2
.end method

.method public getTextRunCursor(Ljava/lang/String;IIZII)I
    .locals 9
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "contextStart"    # I
    .param p3, "contextEnd"    # I
    .param p4, "isRtl"    # Z
    .param p5, "offset"    # I
    .param p6, "cursorOpt"    # I

    .line 3331
    or-int v0, p2, p3

    or-int/2addr v0, p5

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    sub-int v1, p5, p2

    or-int/2addr v0, v1

    sub-int v1, p3, p5

    or-int/2addr v0, v1

    .line 3333
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    or-int/2addr v0, p6

    if-ltz v0, :cond_0

    const/4 v0, 0x4

    if-gt p6, v0, :cond_0

    .line 3338
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 3339
    nop

    .line 3338
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/graphics/Paint;->nGetTextRunCursor(JLjava/lang/String;IIIII)I

    move-result v1

    return v1

    .line 3335
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getTextRunCursor([CIIZII)I
    .locals 10
    .param p1, "text"    # [C
    .param p2, "contextStart"    # I
    .param p3, "contextLength"    # I
    .param p4, "isRtl"    # Z
    .param p5, "offset"    # I
    .param p6, "cursorOpt"    # I

    .line 3242
    move/from16 v8, p6

    add-int v9, p2, p3

    .line 3243
    .local v9, "contextEnd":I
    or-int v0, p2, v9

    or-int/2addr v0, p5

    sub-int v1, v9, p2

    or-int/2addr v0, v1

    sub-int v1, p5, p2

    or-int/2addr v0, v1

    sub-int v1, v9, p5

    or-int/2addr v0, v1

    array-length v1, p1

    sub-int/2addr v1, v9

    or-int/2addr v0, v1

    or-int/2addr v0, v8

    if-ltz v0, :cond_0

    const/4 v0, 0x4

    if-gt v8, v0, :cond_0

    .line 3250
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 3251
    nop

    .line 3250
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Landroid/graphics/Paint;->nGetTextRunCursor(J[CIIIII)I

    move-result v1

    return v1

    .line 3247
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getTextScaleX()F
    .locals 2

    .line 1976
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetTextScaleX(J)F

    move-result v0

    return v0
.end method

.method public getTextSize()F
    .locals 2

    .line 1957
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetTextSize(J)F

    move-result v0

    return v0
.end method

.method public getTextSkewX()F
    .locals 2

    .line 1997
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetTextSkewX(J)F

    move-result v0

    return v0
.end method

.method public getTextWidths(Ljava/lang/CharSequence;II[F)I
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "widths"    # [F

    .line 3043
    if-eqz p1, :cond_8

    .line 3046
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_7

    .line 3049
    sub-int v0, p3, p2

    array-length v1, p4

    if-gt v0, v1, :cond_6

    .line 3053
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-ne p2, p3, :cond_0

    goto :goto_1

    .line 3056
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3057
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v0

    return v0

    .line 3059
    :cond_1
    instance-of v0, p1, Landroid/text/SpannedString;

    if-nez v0, :cond_4

    instance-of v0, p1, Landroid/text/SpannableString;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 3063
    :cond_2
    instance-of v0, p1, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_3

    .line 3064
    move-object v0, p1

    check-cast v0, Landroid/text/GraphicsOperations;

    invoke-interface {v0, p2, p3, p4, p0}, Landroid/text/GraphicsOperations;->getTextWidths(II[FLandroid/graphics/Paint;)I

    move-result v0

    return v0

    .line 3068
    :cond_3
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 3069
    .local v0, "buf":[C
    invoke-static {p1, p2, p3, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 3070
    sub-int v2, p3, p2

    invoke-virtual {p0, v0, v1, v2, p4}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    .line 3071
    .local v1, "result":I
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 3072
    return v1

    .line 3061
    .end local v0    # "buf":[C
    .end local v1    # "result":I
    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v0

    return v0

    .line 3054
    :cond_5
    :goto_1
    return v1

    .line 3050
    :cond_6
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 3047
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 3044
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTextWidths(Ljava/lang/String;II[F)I
    .locals 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "widths"    # [F

    .line 3086
    move-object/from16 v8, p4

    if-eqz p1, :cond_6

    .line 3089
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_5

    .line 3092
    sub-int v0, p3, p2

    array-length v1, v8

    if-gt v0, v1, :cond_4

    .line 3096
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    if-ne p2, p3, :cond_0

    goto :goto_1

    .line 3099
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v10

    .line 3100
    .local v10, "oldFlag":I
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x6000

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 3102
    :try_start_0
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_1

    .line 3103
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v9, 0x0

    move v5, p2

    move v6, p3

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v9}, Landroid/graphics/Paint;->nGetTextAdvances(JLjava/lang/String;IIIII[FI)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3104
    sub-int v0, p3, p2

    .line 3116
    invoke-virtual {p0, v10}, Landroid/graphics/Paint;->setFlags(I)V

    .line 3104
    return v0

    .line 3107
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    move v11, v0

    .line 3108
    .local v11, "oldSize":F
    iget v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v0, v11

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3109
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v9, 0x0

    move v5, p2

    move v6, p3

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v8, p4

    invoke-static/range {v0 .. v9}, Landroid/graphics/Paint;->nGetTextAdvances(JLjava/lang/String;IIIII[FI)F

    .line 3110
    invoke-virtual {p0, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3111
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sub-int v1, p3, p2

    if-ge v0, v1, :cond_2

    .line 3112
    aget v1, p4, v0

    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v1, v2

    aput v1, p4, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3114
    .end local v0    # "i":I
    :cond_2
    sub-int v0, p3, p2

    .line 3116
    invoke-virtual {p0, v10}, Landroid/graphics/Paint;->setFlags(I)V

    .line 3114
    return v0

    .line 3116
    .end local v11    # "oldSize":F
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v10}, Landroid/graphics/Paint;->setFlags(I)V

    .line 3117
    throw v0

    .line 3097
    .end local v10    # "oldFlag":I
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return v0

    .line 3093
    :cond_4
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 3090
    :cond_5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 3087
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTextWidths(Ljava/lang/String;[F)I
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "widths"    # [F

    .line 3129
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v0

    return v0
.end method

.method public getTextWidths([CII[F)I
    .locals 12
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "widths"    # [F

    .line 2998
    move-object/from16 v8, p4

    if-eqz p1, :cond_5

    .line 3001
    or-int v0, p2, p3

    if-ltz v0, :cond_4

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_4

    array-length v0, v8

    if-gt p3, v0, :cond_4

    .line 3006
    array-length v0, p1

    if-eqz v0, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    .line 3009
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v10

    .line 3010
    .local v10, "oldFlag":I
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x6000

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 3012
    :try_start_0
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_1

    .line 3013
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v9, 0x0

    move v5, p2

    move v6, p3

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v9}, Landroid/graphics/Paint;->nGetTextAdvances(J[CIIIII[FI)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3015
    nop

    .line 3027
    invoke-virtual {p0, v10}, Landroid/graphics/Paint;->setFlags(I)V

    .line 3015
    return p3

    .line 3018
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    move v11, v0

    .line 3019
    .local v11, "oldSize":F
    iget v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v0, v11

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3020
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v9, 0x0

    move v5, p2

    move v6, p3

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v8, p4

    invoke-static/range {v0 .. v9}, Landroid/graphics/Paint;->nGetTextAdvances(J[CIIIII[FI)F

    .line 3021
    invoke-virtual {p0, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3022
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 3023
    aget v1, p4, v0

    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v1, v2

    aput v1, p4, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3022
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3025
    .end local v0    # "i":I
    :cond_2
    nop

    .line 3027
    invoke-virtual {p0, v10}, Landroid/graphics/Paint;->setFlags(I)V

    .line 3025
    return p3

    .line 3027
    .end local v11    # "oldSize":F
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v10}, Landroid/graphics/Paint;->setFlags(I)V

    .line 3028
    throw v0

    .line 3007
    .end local v10    # "oldFlag":I
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return v0

    .line 3003
    :cond_4
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2999
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 1578
    iget-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getUnderlinePosition()F
    .locals 2

    .line 1026
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetUnderlinePosition(J)F

    move-result v0

    return v0
.end method

.method public getUnderlineThickness()F
    .locals 2

    .line 1038
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetUnderlineThickness(J)F

    move-result v0

    return v0
.end method

.method public getWordSpacing()F
    .locals 2

    .line 2040
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetWordSpacing(J)F

    move-result v0

    return v0
.end method

.method public getXfermode()Landroid/graphics/Xfermode;
    .locals 1

    .line 1441
    iget-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    return-object v0
.end method

.method public hasGlyph(Ljava/lang/String;)Z
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .line 3468
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Paint;->nHasGlyph(JILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasShadowLayer()Z
    .locals 2

    .line 1697
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nHasShadowLayer(J)Z

    move-result v0

    return v0
.end method

.method public final isAntiAlias()Z
    .locals 2

    .line 920
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isDither()Z
    .locals 1

    .line 946
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isElegantTextHeight()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1878
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetElegantTextHeight(J)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isFakeBoldText()Z
    .locals 1

    .line 1113
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isFilterBitmap()Z
    .locals 1

    .line 1136
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isLinearText()Z
    .locals 1

    .line 969
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isStrikeThruText()Z
    .locals 1

    .line 1063
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSubpixelText()Z
    .locals 1

    .line 988
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isUnderlineText()Z
    .locals 1

    .line 1010
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public measureText(Ljava/lang/CharSequence;II)F
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 2829
    if-eqz p1, :cond_7

    .line 2832
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_6

    .line 2836
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_5

    if-ne p2, p3, :cond_0

    goto :goto_1

    .line 2839
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2840
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    return v0

    .line 2842
    :cond_1
    instance-of v0, p1, Landroid/text/SpannedString;

    if-nez v0, :cond_4

    instance-of v0, p1, Landroid/text/SpannableString;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 2846
    :cond_2
    instance-of v0, p1, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_3

    .line 2847
    move-object v0, p1

    check-cast v0, Landroid/text/GraphicsOperations;

    invoke-interface {v0, p2, p3, p0}, Landroid/text/GraphicsOperations;->measureText(IILandroid/graphics/Paint;)F

    move-result v0

    return v0

    .line 2850
    :cond_3
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 2851
    .local v0, "buf":[C
    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2852
    sub-int v2, p3, p2

    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .line 2853
    .local v1, "result":F
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 2854
    return v1

    .line 2844
    .end local v0    # "buf":[C
    .end local v1    # "result":F
    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    return v0

    .line 2837
    :cond_5
    :goto_1
    const/4 v0, 0x0

    return v0

    .line 2833
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2830
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public measureText(Ljava/lang/String;)F
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 2814
    if-eqz p1, :cond_0

    .line 2817
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    return v0

    .line 2815
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public measureText(Ljava/lang/String;II)F
    .locals 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 2779
    if-eqz p1, :cond_4

    .line 2782
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_3

    .line 2786
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    if-ne p2, p3, :cond_0

    move-object v4, p1

    move v5, p2

    move v6, p3

    goto/16 :goto_1

    .line 2789
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    .line 2790
    .local v1, "oldFlag":I
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x6000

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 2792
    :try_start_0
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_1

    .line 2793
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v9, p0, Landroid/graphics/Paint;->mBidiFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v7, p2

    move v8, p3

    move-object v4, p1

    move v5, p2

    move v6, p3

    .end local p1    # "text":Ljava/lang/String;
    .end local p2    # "start":I
    .end local p3    # "end":I
    .local v4, "text":Ljava/lang/String;
    .local v5, "start":I
    .local v6, "end":I
    :try_start_1
    invoke-static/range {v2 .. v11}, Landroid/graphics/Paint;->nGetTextAdvances(JLjava/lang/String;IIIII[FI)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    double-to-float p1, p1

    .line 2803
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 2793
    return p1

    .line 2796
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "start":I
    .end local v6    # "end":I
    .restart local p1    # "text":Ljava/lang/String;
    .restart local p2    # "start":I
    .restart local p3    # "end":I
    :cond_1
    move-object v4, p1

    move v5, p2

    move v6, p3

    .end local p1    # "text":Ljava/lang/String;
    .end local p2    # "start":I
    .end local p3    # "end":I
    .restart local v4    # "text":Ljava/lang/String;
    .restart local v5    # "start":I
    .restart local v6    # "end":I
    :try_start_2
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result p1

    .line 2797
    .local p1, "oldSize":F
    iget p2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2798
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v9, p0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v7, v5

    move v8, v6

    invoke-static/range {v2 .. v11}, Landroid/graphics/Paint;->nGetTextAdvances(JLjava/lang/String;IIIII[FI)F

    move-result p2

    .line 2800
    .local p2, "w":F
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2801
    iget p3, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr p3, p2

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    double-to-float p3, v2

    .line 2803
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 2801
    return p3

    .line 2803
    .end local p1    # "oldSize":F
    .end local p2    # "w":F
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "start":I
    .end local v6    # "end":I
    .local p1, "text":Ljava/lang/String;
    .local p2, "start":I
    .restart local p3    # "end":I
    :catchall_1
    move-exception v0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object p1, v0

    .end local p1    # "text":Ljava/lang/String;
    .end local p2    # "start":I
    .end local p3    # "end":I
    .restart local v4    # "text":Ljava/lang/String;
    .restart local v5    # "start":I
    .restart local v6    # "end":I
    :goto_0
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 2804
    throw p1

    .line 2786
    .end local v1    # "oldFlag":I
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "start":I
    .end local v6    # "end":I
    .restart local p1    # "text":Ljava/lang/String;
    .restart local p2    # "start":I
    .restart local p3    # "end":I
    :cond_2
    move-object v4, p1

    move v5, p2

    move v6, p3

    .line 2787
    .end local p1    # "text":Ljava/lang/String;
    .end local p2    # "start":I
    .end local p3    # "end":I
    .restart local v4    # "text":Ljava/lang/String;
    .restart local v5    # "start":I
    .restart local v6    # "end":I
    :goto_1
    const/4 p1, 0x0

    return p1

    .line 2783
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "start":I
    .end local v6    # "end":I
    .restart local p1    # "text":Ljava/lang/String;
    .restart local p2    # "start":I
    .restart local p3    # "end":I
    :cond_3
    move-object v4, p1

    .end local p1    # "text":Ljava/lang/String;
    .restart local v4    # "text":Ljava/lang/String;
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 2780
    .end local v4    # "text":Ljava/lang/String;
    .restart local p1    # "text":Ljava/lang/String;
    :cond_4
    move-object v4, p1

    move v5, p2

    .end local p1    # "text":Ljava/lang/String;
    .end local p2    # "start":I
    .restart local v4    # "text":Ljava/lang/String;
    .restart local v5    # "start":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "text cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public measureText([CII)F
    .locals 12
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I

    .line 2740
    if-eqz p1, :cond_4

    .line 2743
    or-int v0, p2, p3

    if-ltz v0, :cond_3

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    .line 2747
    array-length v0, p1

    if-eqz v0, :cond_2

    if-nez p3, :cond_0

    move-object v4, p1

    move v5, p2

    move v6, p3

    goto/16 :goto_1

    .line 2750
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    .line 2751
    .local v1, "oldFlag":I
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x6000

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 2754
    :try_start_0
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_1

    .line 2755
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v9, p0, Landroid/graphics/Paint;->mBidiFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v7, p2

    move v8, p3

    move-object v4, p1

    move v5, p2

    move v6, p3

    .end local p1    # "text":[C
    .end local p2    # "index":I
    .end local p3    # "count":I
    .local v4, "text":[C
    .local v5, "index":I
    .local v6, "count":I
    :try_start_1
    invoke-static/range {v2 .. v11}, Landroid/graphics/Paint;->nGetTextAdvances(J[CIIIII[FI)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    double-to-float p1, p1

    .line 2766
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 2755
    return p1

    .line 2759
    .end local v4    # "text":[C
    .end local v5    # "index":I
    .end local v6    # "count":I
    .restart local p1    # "text":[C
    .restart local p2    # "index":I
    .restart local p3    # "count":I
    :cond_1
    move-object v4, p1

    move v5, p2

    move v6, p3

    .end local p1    # "text":[C
    .end local p2    # "index":I
    .end local p3    # "count":I
    .restart local v4    # "text":[C
    .restart local v5    # "index":I
    .restart local v6    # "count":I
    :try_start_2
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result p1

    .line 2760
    .local p1, "oldSize":F
    iget p2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2761
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v9, p0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v7, v5

    move v8, v6

    invoke-static/range {v2 .. v11}, Landroid/graphics/Paint;->nGetTextAdvances(J[CIIIII[FI)F

    move-result p2

    .line 2763
    .local p2, "w":F
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2764
    iget p3, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr p3, p2

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    double-to-float p3, v2

    .line 2766
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 2764
    return p3

    .line 2766
    .end local p1    # "oldSize":F
    .end local p2    # "w":F
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v4    # "text":[C
    .end local v5    # "index":I
    .end local v6    # "count":I
    .local p1, "text":[C
    .local p2, "index":I
    .restart local p3    # "count":I
    :catchall_1
    move-exception v0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object p1, v0

    .end local p1    # "text":[C
    .end local p2    # "index":I
    .end local p3    # "count":I
    .restart local v4    # "text":[C
    .restart local v5    # "index":I
    .restart local v6    # "count":I
    :goto_0
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 2767
    throw p1

    .line 2747
    .end local v1    # "oldFlag":I
    .end local v4    # "text":[C
    .end local v5    # "index":I
    .end local v6    # "count":I
    .restart local p1    # "text":[C
    .restart local p2    # "index":I
    .restart local p3    # "count":I
    :cond_2
    move-object v4, p1

    move v5, p2

    move v6, p3

    .line 2748
    .end local p1    # "text":[C
    .end local p2    # "index":I
    .end local p3    # "count":I
    .restart local v4    # "text":[C
    .restart local v5    # "index":I
    .restart local v6    # "count":I
    :goto_1
    const/4 p1, 0x0

    return p1

    .line 2743
    .end local v4    # "text":[C
    .end local v5    # "index":I
    .end local v6    # "count":I
    .restart local p1    # "text":[C
    .restart local p2    # "index":I
    .restart local p3    # "count":I
    :cond_3
    move-object v4, p1

    move v5, p2

    move v6, p3

    .line 2744
    .end local p1    # "text":[C
    .end local p2    # "index":I
    .end local p3    # "count":I
    .restart local v4    # "text":[C
    .restart local v5    # "index":I
    .restart local v6    # "count":I
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    .line 2741
    .end local v4    # "text":[C
    .end local v5    # "index":I
    .end local v6    # "count":I
    .restart local p1    # "text":[C
    .restart local p2    # "index":I
    .restart local p3    # "count":I
    :cond_4
    move-object v4, p1

    move v5, p2

    .end local p1    # "text":[C
    .end local p2    # "index":I
    .restart local v4    # "text":[C
    .restart local v5    # "index":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "text cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 3

    .line 728
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nReset(J)V

    .line 729
    const/16 v0, 0x503

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 736
    const/high16 v0, -0x1000000

    invoke-static {v0}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    .line 737
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 738
    iput-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 739
    iput-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 740
    iput-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 741
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 742
    iput-wide v1, p0, Landroid/graphics/Paint;->mNativeXfermode:J

    .line 743
    iput-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 744
    iput-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 746
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 747
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 748
    iput v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    .line 750
    const/4 v2, 0x2

    iput v2, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 751
    invoke-static {}, Landroid/os/LocaleList;->getAdjustedDefault()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextLocales(Landroid/os/LocaleList;)V

    .line 752
    invoke-direct {p0}, Landroid/graphics/Paint;->resetElegantTextHeight()V

    .line 753
    iput-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    .line 754
    iput-object v0, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    .line 756
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerRadius:F

    .line 757
    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerDx:F

    .line 758
    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerDy:F

    .line 759
    invoke-static {v1}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mShadowLayerColor:J

    .line 760
    return-void
.end method

.method public set(Landroid/graphics/Paint;)V
    .locals 4
    .param p1, "src"    # Landroid/graphics/Paint;

    .line 768
    if-eq p0, p1, :cond_0

    .line 770
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p1, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nSet(JJ)V

    .line 771
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->setClassVariablesFrom(Landroid/graphics/Paint;)V

    .line 773
    :cond_0
    return-void
.end method

.method public setARGB(IIII)V
    .locals 2
    .param p1, "a"    # I
    .param p2, "r"    # I
    .param p3, "g"    # I
    .param p4, "b"    # I

    .line 1272
    shl-int/lit8 v0, p1, 0x18

    shl-int/lit8 v1, p2, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p3, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p4

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1273
    return-void
.end method

.method public setAlpha(I)V
    .locals 6
    .param p1, "a"    # I

    .line 1255
    iget-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 1256
    .local v0, "cs":Landroid/graphics/ColorSpace;
    iget-wide v1, p0, Landroid/graphics/Paint;->mColor:J

    invoke-static {v1, v2}, Landroid/graphics/Color;->red(J)F

    move-result v1

    .line 1257
    .local v1, "r":F
    iget-wide v2, p0, Landroid/graphics/Paint;->mColor:J

    invoke-static {v2, v3}, Landroid/graphics/Color;->green(J)F

    move-result v2

    .line 1258
    .local v2, "g":F
    iget-wide v3, p0, Landroid/graphics/Paint;->mColor:J

    invoke-static {v3, v4}, Landroid/graphics/Color;->blue(J)F

    move-result v3

    .line 1259
    .local v3, "b":F
    int-to-float v4, p1

    const v5, 0x3b808081

    mul-float/2addr v4, v5

    invoke-static {v1, v2, v3, v4, v0}, Landroid/graphics/Color;->pack(FFFFLandroid/graphics/ColorSpace;)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/graphics/Paint;->mColor:J

    .line 1260
    iget-wide v4, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v4, v5, p1}, Landroid/graphics/Paint;->nSetAlpha(JI)V

    .line 1261
    return-void
.end method

.method public setAntiAlias(Z)V
    .locals 2
    .param p1, "aa"    # Z

    .line 932
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetAntiAlias(JZ)V

    .line 933
    return-void
.end method

.method public setBidiFlags(I)V
    .locals 3
    .param p1, "flags"    # I

    .line 870
    and-int/lit8 p1, p1, 0x7

    .line 871
    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    .line 874
    iput p1, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 875
    return-void

    .line 872
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown bidi flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBlendMode(Landroid/graphics/BlendMode;)V
    .locals 1
    .param p1, "blendmode"    # Landroid/graphics/BlendMode;

    .line 1509
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/PorterDuffXfermode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Landroid/graphics/Paint;->installXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1510
    return-void
.end method

.method public setColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 1211
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetColor(JI)V

    .line 1212
    invoke-static {p1}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    .line 1213
    return-void
.end method

.method public setColor(J)V
    .locals 7
    .param p1, "color"    # J

    .line 1228
    invoke-static {p1, p2}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 1230
    .local v0, "cs":Landroid/graphics/ColorSpace;
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v3

    move-wide v5, p1

    .end local p1    # "color":J
    .local v5, "color":J
    invoke-static/range {v1 .. v6}, Landroid/graphics/Paint;->nSetColor(JJJ)V

    .line 1231
    iput-wide v5, p0, Landroid/graphics/Paint;->mColor:J

    .line 1232
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
    .locals 2
    .param p1, "filter"    # Landroid/graphics/ColorFilter;

    .line 1426
    iget-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 1427
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeColorFilter:J

    .line 1431
    :cond_0
    iput-object p1, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 1432
    return-object p1
.end method

.method public setCompatibilityScaling(F)V
    .locals 4
    .param p1, "factor"    # F

    .line 808
    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    .line 809
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 810
    iput v1, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    goto :goto_0

    .line 812
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 813
    iput p1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 814
    div-float/2addr v1, p1

    iput v1, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    .line 816
    :goto_0
    return-void
.end method

.method public setDither(Z)V
    .locals 2
    .param p1, "dither"    # Z

    .line 960
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetDither(JZ)V

    .line 961
    return-void
.end method

.method public setElegantTextHeight(Z)V
    .locals 3
    .param p1, "elegant"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1906
    invoke-static {}, Lcom/android/text/flags/Flags;->deprecateElegantTextHeightApi()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 1907
    const-wide/32 v0, 0x14d53e73

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1908
    if-nez p1, :cond_0

    .line 1909
    const-string v0, "Paint"

    const-string v1, "The elegant text height cannot be turned off."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    :cond_0
    return-void

    .line 1913
    :cond_1
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 1914
    nop

    .line 1913
    xor-int/lit8 v2, p1, 0x1

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetElegantTextHeight(JI)V

    .line 1915
    return-void
.end method

.method public setEndHyphenEdit(I)V
    .locals 2
    .param p1, "endHyphen"    # I

    .line 2323
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetEndHyphenEdit(JI)V

    .line 2324
    return-void
.end method

.method public setFakeBoldText(Z)V
    .locals 2
    .param p1, "fakeBoldText"    # Z

    .line 1123
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetFakeBoldText(JZ)V

    .line 1124
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 2
    .param p1, "filter"    # Z

    .line 1150
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetFilterBitmap(JZ)V

    .line 1151
    return-void
.end method

.method public setFlags(I)V
    .locals 2
    .param p1, "flags"    # I

    .line 892
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetFlags(JI)V

    .line 893
    return-void
.end method

.method public setFontFeatureSettings(Ljava/lang/String;)V
    .locals 2
    .param p1, "settings"    # Ljava/lang/String;

    .line 2082
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2083
    const/4 p1, 0x0

    .line 2085
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    .line 2086
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2087
    :cond_2
    return-void

    .line 2089
    :cond_3
    iput-object p1, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    .line 2090
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetFontFeatureSettings(JLjava/lang/String;)V

    .line 2091
    return-void
.end method

.method public setFontVariationOverride(Ljava/lang/String;)Z
    .locals 8
    .param p1, "fontVariationOverride"    # Ljava/lang/String;

    .line 2217
    iget-object v0, p0, Landroid/graphics/Paint;->mFontVariationOverride:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2218
    return v1

    .line 2223
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettingsForList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2227
    .local v0, "axes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontVariationAxis;>;"
    nop

    .line 2228
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Paint;->nCreateFontVariationBuilder(I)J

    move-result-wide v2

    .line 2229
    .local v2, "builderPtr":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 2230
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/fonts/FontVariationAxis;

    .line 2231
    .local v5, "axis":Landroid/graphics/fonts/FontVariationAxis;
    nop

    .line 2232
    invoke-virtual {v5}, Landroid/graphics/fonts/FontVariationAxis;->getOpenTypeTagValue()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v7

    .line 2231
    invoke-static {v2, v3, v6, v7}, Landroid/graphics/Paint;->nAddFontVariationToBuilder(JIF)V

    .line 2229
    .end local v5    # "axis":Landroid/graphics/fonts/FontVariationAxis;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2234
    .end local v4    # "i":I
    :cond_1
    iget-wide v4, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v4, v5, v2, v3}, Landroid/graphics/Paint;->nSetFontVariationOverride(JJ)V

    .line 2235
    iput-object p1, p0, Landroid/graphics/Paint;->mFontVariationOverride:Ljava/lang/String;

    .line 2236
    return v1

    .line 2224
    .end local v0    # "axes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontVariationAxis;>;"
    .end local v2    # "builderPtr":J
    :catch_0
    move-exception v0

    .line 2225
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "Paint"

    const-string v2, "failed to parse font variation settings."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2226
    const/4 v1, 0x0

    return v1
.end method

.method public setFontVariationSettings(Ljava/lang/String;)Z
    .locals 10
    .param p1, "fontVariationSettings"    # Ljava/lang/String;

    .line 2153
    invoke-static {p1}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2154
    .local v0, "settings":Ljava/lang/String;
    iget-object v1, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_7

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    .line 2155
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 2159
    :cond_0
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 2168
    :cond_1
    iget-object v1, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    if-nez v1, :cond_2

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 2169
    .local v1, "targetTypeface":Landroid/graphics/Typeface;
    :goto_0
    invoke-static {v0}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v3

    .line 2170
    .local v3, "axes":[Landroid/graphics/fonts/FontVariationAxis;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2171
    .local v4, "filteredAxes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/fonts/FontVariationAxis;>;"
    array-length v5, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_4

    aget-object v8, v3, v7

    .line 2172
    .local v8, "axis":Landroid/graphics/fonts/FontVariationAxis;
    invoke-virtual {v8}, Landroid/graphics/fonts/FontVariationAxis;->getOpenTypeTagValue()I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/graphics/Typeface;->isSupportedAxes(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2173
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2171
    .end local v8    # "axis":Landroid/graphics/fonts/FontVariationAxis;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2176
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2177
    return v6

    .line 2179
    :cond_5
    iput-object v0, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    .line 2180
    nop

    .line 2181
    invoke-static {v1, v4}, Landroid/graphics/Typeface;->createFromTypefaceWithVariation(Landroid/graphics/Typeface;Ljava/util/List;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 2180
    invoke-direct {p0, v5}, Landroid/graphics/Paint;->setTypefaceWithoutWarning(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2182
    return v2

    .line 2160
    .end local v1    # "targetTypeface":Landroid/graphics/Typeface;
    .end local v3    # "axes":[Landroid/graphics/fonts/FontVariationAxis;
    .end local v4    # "filteredAxes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/fonts/FontVariationAxis;>;"
    :cond_6
    :goto_2
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    .line 2161
    iget-object v1, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 2162
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 2161
    invoke-static {v1, v3}, Landroid/graphics/Typeface;->createFromTypefaceWithVariation(Landroid/graphics/Typeface;Ljava/util/List;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/graphics/Paint;->setTypefaceWithoutWarning(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2163
    return v2

    .line 2156
    :cond_7
    :goto_3
    return v2
.end method

.method public setHinting(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 908
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetHinting(JI)V

    .line 909
    return-void
.end method

.method public setLetterSpacing(F)V
    .locals 2
    .param p1, "letterSpacing"    # F

    .line 2028
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetLetterSpacing(JF)V

    .line 2029
    return-void
.end method

.method public setLinearText(Z)V
    .locals 2
    .param p1, "linearText"    # Z

    .line 979
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetLinearText(JZ)V

    .line 980
    return-void
.end method

.method public setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;
    .locals 4
    .param p1, "maskfilter"    # Landroid/graphics/MaskFilter;

    .line 1560
    const-wide/16 v0, 0x0

    .line 1561
    .local v0, "maskfilterNative":J
    if-eqz p1, :cond_0

    .line 1562
    iget-wide v0, p1, Landroid/graphics/MaskFilter;->native_instance:J

    .line 1564
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->nSetMaskFilter(JJ)J

    .line 1565
    iput-object p1, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 1566
    return-object p1
.end method

.method public setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;
    .locals 4
    .param p1, "effect"    # Landroid/graphics/PathEffect;

    .line 1531
    const-wide/16 v0, 0x0

    .line 1532
    .local v0, "effectNative":J
    if-eqz p1, :cond_0

    .line 1533
    iget-wide v0, p1, Landroid/graphics/PathEffect;->native_instance:J

    .line 1535
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->nSetPathEffect(JJ)J

    .line 1536
    iput-object p1, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 1537
    return-object p1
.end method

.method public setRasterizer(Landroid/graphics/Rasterizer;)Landroid/graphics/Rasterizer;
    .locals 0
    .param p1, "rasterizer"    # Landroid/graphics/Rasterizer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1639
    return-object p1
.end method

.method public setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
    .locals 4
    .param p1, "shader"    # Landroid/graphics/Shader;

    .line 1398
    iget-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    if-eq v0, p1, :cond_0

    .line 1399
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 1401
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nSetShader(JJ)J

    .line 1404
    :cond_0
    iput-object p1, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 1405
    return-object p1
.end method

.method public setShadowLayer(FFFI)V
    .locals 6
    .param p1, "radius"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "shadowColor"    # I

    .line 1655
    invoke-static {p4}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .end local p1    # "radius":F
    .end local p2    # "dx":F
    .end local p3    # "dy":F
    .local v1, "radius":F
    .local v2, "dx":F
    .local v3, "dy":F
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Paint;->setShadowLayer(FFFJ)V

    .line 1656
    return-void
.end method

.method public setShadowLayer(FFFJ)V
    .locals 10
    .param p1, "radius"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "shadowColor"    # J

    .line 1674
    invoke-static {p4, p5}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 1675
    .local v0, "cs":Landroid/graphics/ColorSpace;
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v6

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v8, p4

    .end local p1    # "radius":F
    .end local p2    # "dx":F
    .end local p3    # "dy":F
    .end local p4    # "shadowColor":J
    .local v3, "radius":F
    .local v4, "dx":F
    .local v5, "dy":F
    .local v8, "shadowColor":J
    invoke-static/range {v1 .. v9}, Landroid/graphics/Paint;->nSetShadowLayer(JFFFJJ)V

    .line 1677
    iput v3, p0, Landroid/graphics/Paint;->mShadowLayerRadius:F

    .line 1678
    iput v4, p0, Landroid/graphics/Paint;->mShadowLayerDx:F

    .line 1679
    iput v5, p0, Landroid/graphics/Paint;->mShadowLayerDy:F

    .line 1680
    iput-wide v8, p0, Landroid/graphics/Paint;->mShadowLayerColor:J

    .line 1681
    return-void
.end method

.method public setStartHyphenEdit(I)V
    .locals 2
    .param p1, "startHyphen"    # I

    .line 2297
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetStartHyphenEdit(JI)V

    .line 2298
    return-void
.end method

.method public setStrikeThruText(Z)V
    .locals 2
    .param p1, "strikeThruText"    # Z

    .line 1104
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetStrikeThruText(JZ)V

    .line 1105
    return-void
.end method

.method public setStrokeCap(Landroid/graphics/Paint$Cap;)V
    .locals 3
    .param p1, "cap"    # Landroid/graphics/Paint$Cap;

    .line 1340
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p1, Landroid/graphics/Paint$Cap;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetStrokeCap(JI)V

    .line 1341
    return-void
.end method

.method public setStrokeJoin(Landroid/graphics/Paint$Join;)V
    .locals 3
    .param p1, "join"    # Landroid/graphics/Paint$Join;

    .line 1359
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p1, Landroid/graphics/Paint$Join;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetStrokeJoin(JI)V

    .line 1360
    return-void
.end method

.method public setStrokeMiter(F)V
    .locals 2
    .param p1, "miter"    # F

    .line 1319
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetStrokeMiter(JF)V

    .line 1320
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 2
    .param p1, "width"    # F

    .line 1297
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetStrokeWidth(JF)V

    .line 1298
    return-void
.end method

.method public setStyle(Landroid/graphics/Paint$Style;)V
    .locals 3
    .param p1, "style"    # Landroid/graphics/Paint$Style;

    .line 1172
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p1, Landroid/graphics/Paint$Style;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetStyle(JI)V

    .line 1173
    return-void
.end method

.method public setSubpixelText(Z)V
    .locals 2
    .param p1, "subpixelText"    # Z

    .line 998
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetSubpixelText(JZ)V

    .line 999
    return-void
.end method

.method public setTextAlign(Landroid/graphics/Paint$Align;)V
    .locals 3
    .param p1, "align"    # Landroid/graphics/Paint$Align;

    .line 1769
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p1, Landroid/graphics/Paint$Align;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetTextAlign(JI)V

    .line 1770
    return-void
.end method

.method public setTextLocale(Ljava/util/Locale;)V
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 1802
    if-eqz p1, :cond_1

    .line 1805
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1806
    return-void

    .line 1808
    :cond_0
    new-instance v0, Landroid/os/LocaleList;

    new-array v2, v2, [Ljava/util/Locale;

    aput-object p1, v2, v1

    invoke-direct {v0, v2}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    .line 1809
    invoke-direct {p0}, Landroid/graphics/Paint;->syncTextLocalesWithMinikin()V

    .line 1810
    return-void

    .line 1803
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "locale cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTextLocales(Landroid/os/LocaleList;)V
    .locals 2
    .param p1, "locales"    # Landroid/os/LocaleList;

    .line 1840
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1843
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1844
    :cond_0
    iput-object p1, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    .line 1845
    invoke-direct {p0}, Landroid/graphics/Paint;->syncTextLocalesWithMinikin()V

    .line 1846
    return-void

    .line 1841
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "locales cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTextScaleX(F)V
    .locals 2
    .param p1, "scaleX"    # F

    .line 1987
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetTextScaleX(JF)V

    .line 1988
    return-void
.end method

.method public setTextSize(F)V
    .locals 2
    .param p1, "textSize"    # F

    .line 1966
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetTextSize(JF)V

    .line 1967
    return-void
.end method

.method public setTextSkewX(F)V
    .locals 2
    .param p1, "skewX"    # F

    .line 2007
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetTextSkewX(JF)V

    .line 2008
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 2
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 1591
    invoke-static {}, Lcom/android/text/flags/Flags;->typefaceRedesignReadonly()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1592
    invoke-virtual {p1}, Landroid/graphics/Typeface;->isVariationInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1593
    const-string v0, "Paint"

    const-string v1, "Attempting to set a Typeface on a Paint object that was previously configured with setFontVariationSettings(). This is no longer supported as of Target SDK 36. To apply font variations, call setFontVariationSettings() directly on the Paint object instead."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    :cond_0
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->setTypefaceWithoutWarning(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public setUnderlineText(Z)V
    .locals 2
    .param p1, "underlineText"    # Z

    .line 1051
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetUnderlineText(JZ)V

    .line 1052
    return-void
.end method

.method public setWordSpacing(F)V
    .locals 2
    .param p1, "wordSpacing"    # F

    .line 2053
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetWordSpacing(JF)V

    .line 2054
    return-void
.end method

.method public setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    .locals 1
    .param p1, "xfermode"    # Landroid/graphics/Xfermode;

    .line 1473
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->installXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-result-object v0

    return-object v0
.end method
