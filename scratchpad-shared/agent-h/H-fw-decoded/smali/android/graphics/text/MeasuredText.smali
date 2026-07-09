.class public Landroid/graphics/text/MeasuredText;
.super Ljava/lang/Object;
.source "MeasuredText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/text/MeasuredText$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MeasuredText"


# instance fields
.field private final mBottom:I

.field private final mChars:[C

.field private final mComputeBounds:Z

.field private final mComputeHyphenation:Z

.field private final mComputeLayout:Z

.field private final mNativePtr:J

.field private final mTop:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmChars(Landroid/graphics/text/MeasuredText;)[C
    .locals 0

    iget-object p0, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmComputeHyphenation(Landroid/graphics/text/MeasuredText;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/graphics/text/MeasuredText;->mComputeHyphenation:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmComputeLayout(Landroid/graphics/text/MeasuredText;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/graphics/text/MeasuredText;->mComputeLayout:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$smnGetReleaseFunc()J
    .locals 2

    invoke-static {}, Landroid/graphics/text/MeasuredText;->nGetReleaseFunc()J

    move-result-wide v0

    return-wide v0
.end method

.method private constructor <init>(J[CZZZII)V
    .locals 0
    .param p1, "ptr"    # J
    .param p3, "chars"    # [C
    .param p4, "computeHyphenation"    # Z
    .param p5, "computeLayout"    # Z
    .param p6, "computeBounds"    # Z
    .param p7, "top"    # I
    .param p8, "bottom"    # I

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-wide p1, p0, Landroid/graphics/text/MeasuredText;->mNativePtr:J

    .line 74
    iput-object p3, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    .line 75
    iput-boolean p4, p0, Landroid/graphics/text/MeasuredText;->mComputeHyphenation:Z

    .line 76
    iput-boolean p5, p0, Landroid/graphics/text/MeasuredText;->mComputeLayout:Z

    .line 77
    iput-boolean p6, p0, Landroid/graphics/text/MeasuredText;->mComputeBounds:Z

    .line 78
    iput p7, p0, Landroid/graphics/text/MeasuredText;->mTop:I

    .line 79
    iput p8, p0, Landroid/graphics/text/MeasuredText;->mBottom:I

    .line 80
    return-void
.end method

.method synthetic constructor <init>(J[CZZZIILandroid/graphics/text/MeasuredText-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroid/graphics/text/MeasuredText;-><init>(J[CZZZII)V

    return-void
.end method

.method private static native nGetBounds(J[CIILandroid/graphics/Rect;)V
.end method

.method private static native nGetCharWidthAt(JI)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetExtent(J[CII)J
.end method

.method private static native nGetMemoryUsage(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetReleaseFunc()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetWidth(JII)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private offsetCheck(I)V
    .locals 1
    .param p1, "offset"    # I

    .line 103
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 104
    :cond_0
    invoke-direct {p0, p1}, Landroid/graphics/text/MeasuredText;->throwOffsetError(I)V

    .line 106
    :cond_1
    return-void
.end method

.method private rangeCheck(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 91
    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    iget-object v0, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    array-length v0, v0

    if-le p2, v0, :cond_1

    .line 92
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/graphics/text/MeasuredText;->throwRangeError(II)V

    .line 94
    :cond_1
    return-void
.end method

.method private throwOffsetError(I)V
    .locals 4
    .param p1, "offset"    # I
    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 111
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 110
    const-string/jumbo v3, "offset (%d) length(%d) out of bounds"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwRangeError(II)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 99
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 98
    const-string/jumbo v3, "start(%d) end(%d) length(%d) out of bounds"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getBounds(IILandroid/graphics/Rect;)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "rect"    # Landroid/graphics/Rect;

    .line 144
    invoke-direct {p0, p1, p2}, Landroid/graphics/text/MeasuredText;->rangeCheck(II)V

    .line 145
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-wide v0, p0, Landroid/graphics/text/MeasuredText;->mNativePtr:J

    iget-object v2, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    move v3, p1

    move v4, p2

    move-object v5, p3

    .end local p1    # "start":I
    .end local p2    # "end":I
    .end local p3    # "rect":Landroid/graphics/Rect;
    .local v3, "start":I
    .local v4, "end":I
    .local v5, "rect":Landroid/graphics/Rect;
    invoke-static/range {v0 .. v5}, Landroid/graphics/text/MeasuredText;->nGetBounds(J[CIILandroid/graphics/Rect;)V

    .line 147
    return-void
.end method

.method public getCharWidthAt(I)F
    .locals 2
    .param p1, "offset"    # I

    .line 174
    invoke-direct {p0, p1}, Landroid/graphics/text/MeasuredText;->offsetCheck(I)V

    .line 175
    iget-wide v0, p0, Landroid/graphics/text/MeasuredText;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/text/MeasuredText;->nGetCharWidthAt(JI)F

    move-result v0

    return v0
.end method

.method public getChars()[C
    .locals 1

    .line 87
    iget-object v0, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    return-object v0
.end method

.method public getFontMetricsInt(IILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "outMetrics"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 158
    invoke-direct {p0, p1, p2}, Landroid/graphics/text/MeasuredText;->rangeCheck(II)V

    .line 159
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-wide v0, p0, Landroid/graphics/text/MeasuredText;->mNativePtr:J

    iget-object v2, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    invoke-static {v0, v1, v2, p1, p2}, Landroid/graphics/text/MeasuredText;->nGetExtent(J[CII)J

    move-result-wide v0

    .line 162
    .local v0, "packed":J
    const/16 v2, 0x20

    shr-long v2, v0, v2

    long-to-int v2, v2

    iput v2, p3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 163
    const-wide/16 v2, -0x1

    and-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 164
    iget v2, p3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v3, p0, Landroid/graphics/text/MeasuredText;->mTop:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 165
    iget v2, p3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v3, p0, Landroid/graphics/text/MeasuredText;->mBottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 166
    return-void
.end method

.method public getMemoryUsage()I
    .locals 2

    .line 132
    iget-wide v0, p0, Landroid/graphics/text/MeasuredText;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/text/MeasuredText;->nGetMemoryUsage(J)I

    move-result v0

    return v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 184
    iget-wide v0, p0, Landroid/graphics/text/MeasuredText;->mNativePtr:J

    return-wide v0
.end method

.method public getWidth(II)F
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 122
    invoke-direct {p0, p1, p2}, Landroid/graphics/text/MeasuredText;->rangeCheck(II)V

    .line 123
    iget-wide v0, p0, Landroid/graphics/text/MeasuredText;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/text/MeasuredText;->nGetWidth(JII)F

    move-result v0

    return v0
.end method
