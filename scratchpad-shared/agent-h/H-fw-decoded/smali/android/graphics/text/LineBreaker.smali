.class public Landroid/graphics/text/LineBreaker;
.super Ljava/lang/Object;
.source "LineBreaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/text/LineBreaker$NoImagePreloadHolder;,
        Landroid/graphics/text/LineBreaker$Result;,
        Landroid/graphics/text/LineBreaker$ParagraphConstraints;,
        Landroid/graphics/text/LineBreaker$Builder;,
        Landroid/graphics/text/LineBreaker$JustificationMode;,
        Landroid/graphics/text/LineBreaker$HyphenationFrequency;,
        Landroid/graphics/text/LineBreaker$BreakStrategy;
    }
.end annotation


# static fields
.field public static final BREAK_STRATEGY_BALANCED:I = 0x2

.field public static final BREAK_STRATEGY_HIGH_QUALITY:I = 0x1

.field public static final BREAK_STRATEGY_SIMPLE:I = 0x0

.field public static final HYPHENATION_FREQUENCY_FULL:I = 0x2

.field public static final HYPHENATION_FREQUENCY_NONE:I = 0x0

.field public static final HYPHENATION_FREQUENCY_NORMAL:I = 0x1

.field public static final JUSTIFICATION_MODE_INTER_CHARACTER:I = 0x2

.field public static final JUSTIFICATION_MODE_INTER_WORD:I = 0x1

.field public static final JUSTIFICATION_MODE_NONE:I


# instance fields
.field private final mBreakStrategy:I

.field private final mHyphenationFrequency:I

.field private final mIndents:[I

.field private final mJustificationMode:I

.field private final mNativePtr:J

.field private final mUseBoundsForWidth:Z


# direct methods
.method static bridge synthetic -$$Nest$smnGetLineAscent(JI)F
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/text/LineBreaker;->nGetLineAscent(JI)F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnGetLineBreakOffset(JI)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/text/LineBreaker;->nGetLineBreakOffset(JI)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnGetLineCount(J)I
    .locals 0

    invoke-static {p0, p1}, Landroid/graphics/text/LineBreaker;->nGetLineCount(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnGetLineDescent(JI)F
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/text/LineBreaker;->nGetLineDescent(JI)F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnGetLineFlag(JI)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/text/LineBreaker;->nGetLineFlag(JI)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnGetLineWidth(JI)F
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/text/LineBreaker;->nGetLineWidth(JI)F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnGetReleaseFunc()J
    .locals 2

    invoke-static {}, Landroid/graphics/text/LineBreaker;->nGetReleaseFunc()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$smnGetReleaseResultFunc()J
    .locals 2

    invoke-static {}, Landroid/graphics/text/LineBreaker;->nGetReleaseResultFunc()J

    move-result-wide v0

    return-wide v0
.end method

.method private constructor <init>(III[IZ)V
    .locals 3
    .param p1, "breakStrategy"    # I
    .param p2, "hyphenationFrequency"    # I
    .param p3, "justify"    # I
    .param p4, "indents"    # [I
    .param p5, "useBoundsForWidth"    # Z

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, p2, v0, p4, p5}, Landroid/graphics/text/LineBreaker;->nInit(IIZ[IZ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/text/LineBreaker;->mNativePtr:J

    .line 507
    invoke-static {}, Landroid/graphics/text/LineBreaker$NoImagePreloadHolder;->-$$Nest$sfgetsRegistry()Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    iget-wide v1, p0, Landroid/graphics/text/LineBreaker;->mNativePtr:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 509
    iput p1, p0, Landroid/graphics/text/LineBreaker;->mBreakStrategy:I

    .line 510
    iput p2, p0, Landroid/graphics/text/LineBreaker;->mHyphenationFrequency:I

    .line 511
    iput p3, p0, Landroid/graphics/text/LineBreaker;->mJustificationMode:I

    .line 512
    iput-object p4, p0, Landroid/graphics/text/LineBreaker;->mIndents:[I

    .line 513
    iput-boolean p5, p0, Landroid/graphics/text/LineBreaker;->mUseBoundsForWidth:Z

    .line 514
    return-void
.end method

.method synthetic constructor <init>(III[IZLandroid/graphics/text/LineBreaker-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/graphics/text/LineBreaker;-><init>(III[IZ)V

    return-void
.end method

.method private static native nComputeLineBreaks(J[CJIFIF[FFI)J
.end method

.method private static native nGetLineAscent(JI)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetLineBreakOffset(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetLineCount(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetLineDescent(JI)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetLineFlag(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetLineWidth(JI)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetReleaseFunc()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetReleaseResultFunc()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nInit(IIZ[IZ)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public computeLineBreaks(Landroid/graphics/text/MeasuredText;Landroid/graphics/text/LineBreaker$ParagraphConstraints;I)Landroid/graphics/text/LineBreaker$Result;
    .locals 13
    .param p1, "measuredPara"    # Landroid/graphics/text/MeasuredText;
    .param p2, "constraints"    # Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .param p3, "lineNumber"    # I

    .line 584
    new-instance v0, Landroid/graphics/text/LineBreaker$Result;

    iget-wide v1, p0, Landroid/graphics/text/LineBreaker;->mNativePtr:J

    .line 588
    invoke-virtual {p1}, Landroid/graphics/text/MeasuredText;->getChars()[C

    move-result-object v3

    .line 589
    invoke-virtual {p1}, Landroid/graphics/text/MeasuredText;->getNativePtr()J

    move-result-wide v4

    .line 590
    invoke-virtual {p1}, Landroid/graphics/text/MeasuredText;->getChars()[C

    move-result-object v6

    array-length v6, v6

    invoke-static {p2}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->-$$Nest$fgetmFirstWidth(Landroid/graphics/text/LineBreaker$ParagraphConstraints;)F

    move-result v7

    invoke-static {p2}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->-$$Nest$fgetmFirstWidthLineCount(Landroid/graphics/text/LineBreaker$ParagraphConstraints;)I

    move-result v8

    invoke-static {p2}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->-$$Nest$fgetmWidth(Landroid/graphics/text/LineBreaker$ParagraphConstraints;)F

    move-result v9

    invoke-static {p2}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->-$$Nest$fgetmVariableTabStops(Landroid/graphics/text/LineBreaker$ParagraphConstraints;)[F

    move-result-object v10

    invoke-static {p2}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->-$$Nest$fgetmDefaultTabStop(Landroid/graphics/text/LineBreaker$ParagraphConstraints;)F

    move-result v11

    .line 584
    move/from16 v12, p3

    invoke-static/range {v1 .. v12}, Landroid/graphics/text/LineBreaker;->nComputeLineBreaks(J[CJIFIF[FFI)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/text/LineBreaker$Result;-><init>(JLandroid/graphics/text/LineBreaker-IA;)V

    return-object v0
.end method

.method public getBreakStrategy()I
    .locals 1

    .line 524
    iget v0, p0, Landroid/graphics/text/LineBreaker;->mBreakStrategy:I

    return v0
.end method

.method public getHyphenationFrequency()I
    .locals 1

    .line 535
    iget v0, p0, Landroid/graphics/text/LineBreaker;->mHyphenationFrequency:I

    return v0
.end method

.method public getIndents()[I
    .locals 1

    .line 557
    iget-object v0, p0, Landroid/graphics/text/LineBreaker;->mIndents:[I

    return-object v0
.end method

.method public getJustificationMode()I
    .locals 1

    .line 546
    iget v0, p0, Landroid/graphics/text/LineBreaker;->mJustificationMode:I

    return v0
.end method

.method public getUseBoundsForWidth()Z
    .locals 1

    .line 568
    iget-boolean v0, p0, Landroid/graphics/text/LineBreaker;->mUseBoundsForWidth:Z

    return v0
.end method
