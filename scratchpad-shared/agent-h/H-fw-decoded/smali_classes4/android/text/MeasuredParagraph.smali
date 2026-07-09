.class public Landroid/text/MeasuredParagraph;
.super Ljava/lang/Object;
.source "MeasuredParagraph.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/MeasuredParagraph$StyleRunCallback;
    }
.end annotation


# static fields
.field private static final greylist-max-o OBJECT_REPLACEMENT_CHARACTER:C = '\ufffc'

.field private static final greylist-max-o sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/text/MeasuredParagraph;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBidi:Landroid/icu/text/Bidi;

.field private greylist-max-o mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

.field private final greylist-max-o mCachedPaint:Landroid/text/TextPaint;

.field private greylist-max-o mCopiedBuffer:[C

.field private greylist-max-o mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

.field private greylist-max-o mLevels:Landroid/text/AutoGrowArray$ByteArray;

.field private final blacklist mLineBreakConfigBuilder:Landroid/graphics/text/LineBreakConfig$Builder;

.field private greylist-max-o mLtrWithoutBidi:Z

.field private blacklist mMeasuredText:Landroid/graphics/text/MeasuredText;

.field private greylist-max-o mParaDir:I

.field private greylist-max-o mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

.field private greylist-max-o mSpanned:Landroid/text/Spanned;

.field private greylist-max-o mTextLength:I

.field private greylist-max-o mTextStart:I

.field private greylist-max-o mWholeWidth:F

.field private greylist-max-o mWidths:Landroid/text/AutoGrowArray$FloatArray;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 76
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/text/MeasuredParagraph;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Landroid/text/AutoGrowArray$ByteArray;

    invoke-direct {v0}, Landroid/text/AutoGrowArray$ByteArray;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    .line 129
    new-instance v0, Landroid/text/AutoGrowArray$FloatArray;

    invoke-direct {v0}, Landroid/text/AutoGrowArray$FloatArray;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    .line 133
    new-instance v0, Landroid/text/AutoGrowArray$IntArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/text/AutoGrowArray$IntArray;-><init>(I)V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    .line 137
    new-instance v0, Landroid/text/AutoGrowArray$IntArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/text/AutoGrowArray$IntArray;-><init>(I)V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    .line 143
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    .line 145
    new-instance v0, Landroid/graphics/text/LineBreakConfig$Builder;

    invoke-direct {v0}, Landroid/graphics/text/LineBreakConfig$Builder;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mLineBreakConfigBuilder:Landroid/graphics/text/LineBreakConfig$Builder;

    .line 74
    return-void
.end method

.method private blacklist applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;[Landroid/text/style/LineBreakConfigSpan;IILandroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V
    .locals 12
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "lineBreakConfig"    # Landroid/graphics/text/LineBreakConfig;
    .param p3, "spans"    # [Landroid/text/style/MetricAffectingSpan;
    .param p4, "lbcSpans"    # [Landroid/text/style/LineBreakConfigSpan;
    .param p5, "start"    # I
    .param p6, "end"    # I
    .param p7, "builder"    # Landroid/graphics/text/MeasuredText$Builder;
    .param p8, "testCallback"    # Landroid/text/MeasuredParagraph$StyleRunCallback;

    .line 821
    move-object v7, p3

    move-object/from16 v8, p4

    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 823
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    const/4 v2, 0x0

    iput v2, v1, Landroid/text/TextPaint;->baselineShift:I

    .line 825
    if-eqz p7, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v9, v1

    .line 827
    .local v9, "needFontMetrics":Z
    if-eqz v9, :cond_1

    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    if-nez v1, :cond_1

    .line 828
    new-instance v1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v1, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    .line 831
    :cond_1
    const/4 v1, 0x0

    .line 832
    .local v1, "replacement":Landroid/text/style/ReplacementSpan;
    if-eqz v7, :cond_3

    .line 833
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v7

    if-ge v3, v4, :cond_3

    .line 834
    aget-object v4, v7, v3

    .line 835
    .local v4, "span":Landroid/text/style/MetricAffectingSpan;
    instance-of v5, v4, Landroid/text/style/ReplacementSpan;

    if-eqz v5, :cond_2

    .line 837
    move-object v1, v4

    check-cast v1, Landroid/text/style/ReplacementSpan;

    goto :goto_2

    .line 840
    :cond_2
    iget-object v5, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v5}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    .line 833
    .end local v4    # "span":Landroid/text/style/MetricAffectingSpan;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 845
    .end local v3    # "i":I
    :cond_3
    if-eqz v8, :cond_5

    .line 846
    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mLineBreakConfigBuilder:Landroid/graphics/text/LineBreakConfig$Builder;

    invoke-virtual {v3, p2}, Landroid/graphics/text/LineBreakConfig$Builder;->reset(Landroid/graphics/text/LineBreakConfig;)Landroid/graphics/text/LineBreakConfig$Builder;

    .line 847
    array-length v3, v8

    :goto_3
    if-ge v2, v3, :cond_4

    aget-object v5, v8, v2

    .line 848
    .local v5, "lbcSpan":Landroid/text/style/LineBreakConfigSpan;
    iget-object v6, p0, Landroid/text/MeasuredParagraph;->mLineBreakConfigBuilder:Landroid/graphics/text/LineBreakConfig$Builder;

    invoke-virtual {v5}, Landroid/text/style/LineBreakConfigSpan;->getLineBreakConfig()Landroid/graphics/text/LineBreakConfig;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/graphics/text/LineBreakConfig$Builder;->merge(Landroid/graphics/text/LineBreakConfig;)Landroid/graphics/text/LineBreakConfig$Builder;

    .line 847
    .end local v5    # "lbcSpan":Landroid/text/style/LineBreakConfigSpan;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 850
    :cond_4
    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mLineBreakConfigBuilder:Landroid/graphics/text/LineBreakConfig$Builder;

    invoke-virtual {v2}, Landroid/graphics/text/LineBreakConfig$Builder;->build()Landroid/graphics/text/LineBreakConfig;

    move-result-object v2

    move-object v10, v2

    .end local p2    # "lineBreakConfig":Landroid/graphics/text/LineBreakConfig;
    .local v2, "lineBreakConfig":Landroid/graphics/text/LineBreakConfig;
    goto :goto_4

    .line 845
    .end local v2    # "lineBreakConfig":Landroid/graphics/text/LineBreakConfig;
    .restart local p2    # "lineBreakConfig":Landroid/graphics/text/LineBreakConfig;
    :cond_5
    move-object v10, p2

    .line 853
    .end local p2    # "lineBreakConfig":Landroid/graphics/text/LineBreakConfig;
    .local v10, "lineBreakConfig":Landroid/graphics/text/LineBreakConfig;
    :goto_4
    iget v2, p0, Landroid/text/MeasuredParagraph;->mTextStart:I

    sub-int v2, p5, v2

    .line 854
    .local v2, "startInCopiedBuffer":I
    iget v3, p0, Landroid/text/MeasuredParagraph;->mTextStart:I

    sub-int v3, p6, v3

    .line 856
    .local v3, "endInCopiedBuffer":I
    if-eqz p7, :cond_6

    .line 857
    iget-object v4, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 860
    :cond_6
    if-eqz v1, :cond_7

    .line 861
    iget-object v4, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    move-object v0, p0

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/text/MeasuredParagraph;->applyReplacementRun(Landroid/text/style/ReplacementSpan;IILandroid/text/TextPaint;Landroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V

    move-object v11, v1

    move v1, v2

    move v2, v3

    move-object v4, v10

    .end local v3    # "endInCopiedBuffer":I
    .local v1, "startInCopiedBuffer":I
    .local v2, "endInCopiedBuffer":I
    .local v11, "replacement":Landroid/text/style/ReplacementSpan;
    goto :goto_5

    .line 864
    .end local v11    # "replacement":Landroid/text/style/ReplacementSpan;
    .local v1, "replacement":Landroid/text/style/ReplacementSpan;
    .local v2, "startInCopiedBuffer":I
    .restart local v3    # "endInCopiedBuffer":I
    :cond_7
    move-object v11, v1

    move v1, v2

    move v2, v3

    .end local v3    # "endInCopiedBuffer":I
    .local v1, "startInCopiedBuffer":I
    .local v2, "endInCopiedBuffer":I
    .restart local v11    # "replacement":Landroid/text/style/ReplacementSpan;
    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    move-object v0, p0

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v4, v10

    .end local v10    # "lineBreakConfig":Landroid/graphics/text/LineBreakConfig;
    .local v4, "lineBreakConfig":Landroid/graphics/text/LineBreakConfig;
    invoke-direct/range {v0 .. v6}, Landroid/text/MeasuredParagraph;->applyStyleRun(IILandroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Landroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V

    .line 868
    :goto_5
    if-eqz v9, :cond_9

    .line 869
    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v3, v3, Landroid/text/TextPaint;->baselineShift:I

    if-gez v3, :cond_8

    .line 870
    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget-object v6, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v6, v6, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    iput v5, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 871
    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget-object v6, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v6, v6, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    iput v5, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto :goto_6

    .line 873
    :cond_8
    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v6, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v6, v6, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    iput v5, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 874
    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v6, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v6, v6, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    iput v5, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 877
    :goto_6
    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object v5, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-virtual {v3, v5}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    .line 878
    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object v5, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-virtual {v3, v5}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    .line 879
    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object v5, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-virtual {v3, v5}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    .line 880
    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object v5, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-virtual {v3, v5}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    .line 882
    :cond_9
    return-void
.end method

.method private blacklist applyReplacementRun(Landroid/text/style/ReplacementSpan;IILandroid/text/TextPaint;Landroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V
    .locals 6
    .param p1, "replacement"    # Landroid/text/style/ReplacementSpan;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "builder"    # Landroid/graphics/text/MeasuredText$Builder;
    .param p6, "testCallback"    # Landroid/text/MeasuredParagraph$StyleRunCallback;

    .line 731
    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    iget v0, p0, Landroid/text/MeasuredParagraph;->mTextStart:I

    add-int v3, p2, v0

    iget v0, p0, Landroid/text/MeasuredParagraph;->mTextStart:I

    add-int v4, p3, v0

    iget-object v5, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    move-object v0, p1

    move-object v1, p4

    .end local p1    # "replacement":Landroid/text/style/ReplacementSpan;
    .end local p4    # "paint":Landroid/text/TextPaint;
    .local v0, "replacement":Landroid/text/style/ReplacementSpan;
    .local v1, "paint":Landroid/text/TextPaint;
    invoke-virtual/range {v0 .. v5}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result p1

    int-to-float p1, p1

    .line 733
    .local p1, "width":F
    if-nez p5, :cond_1

    .line 735
    iget-object p4, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {p4, p2, p1}, Landroid/text/AutoGrowArray$FloatArray;->set(IF)V

    .line 736
    add-int/lit8 p4, p2, 0x1

    if-le p3, p4, :cond_0

    .line 737
    iget-object p4, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {p4}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object p4

    add-int/lit8 v2, p2, 0x1

    const/4 v3, 0x0

    invoke-static {p4, v2, p3, v3}, Ljava/util/Arrays;->fill([FIIF)V

    .line 739
    :cond_0
    iget p4, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    add-float/2addr p4, p1

    iput p4, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    goto :goto_0

    .line 741
    :cond_1
    sub-int p4, p3, p2

    invoke-virtual {p5, v1, p4, p1}, Landroid/graphics/text/MeasuredText$Builder;->appendReplacementRun(Landroid/graphics/Paint;IF)Landroid/graphics/text/MeasuredText$Builder;

    .line 743
    :goto_0
    if-eqz p6, :cond_2

    .line 744
    sub-int p4, p3, p2

    invoke-interface {p6, v1, p4, p1}, Landroid/text/MeasuredParagraph$StyleRunCallback;->onAppendReplacementRun(Landroid/graphics/Paint;IF)V

    .line 746
    :cond_2
    return-void
.end method

.method private blacklist applyStyleRun(IILandroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Landroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V
    .locals 19
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "config"    # Landroid/graphics/text/LineBreakConfig;
    .param p5, "builder"    # Landroid/graphics/text/MeasuredText$Builder;
    .param p6, "testCallback"    # Landroid/text/MeasuredParagraph$StyleRunCallback;

    .line 755
    move-object/from16 v1, p0

    move/from16 v11, p2

    move-object/from16 v2, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    iget-boolean v0, v1, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    if-eqz v0, :cond_2

    .line 757
    if-nez v13, :cond_0

    .line 760
    invoke-virtual {v2}, Landroid/text/TextPaint;->getFlags()I

    move-result v3

    .line 761
    .local v3, "oldFlag":I
    invoke-virtual {v2}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x6000

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 764
    :try_start_0
    iget v0, v1, Landroid/text/MeasuredParagraph;->mWholeWidth:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move v4, v3

    .end local v3    # "oldFlag":I
    .local v4, "oldFlag":I
    :try_start_1
    iget-object v3, v1, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    sub-int v5, v11, p1

    sub-int v7, v11, p1

    iget-object v6, v1, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    .line 766
    invoke-virtual {v6}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 764
    const/4 v8, 0x0

    move/from16 v6, p1

    move/from16 v10, p1

    move v15, v4

    move/from16 v4, p1

    .end local v4    # "oldFlag":I
    .local v15, "oldFlag":I
    :try_start_2
    invoke-virtual/range {v2 .. v10}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v18, v4

    move-object v4, v2

    move/from16 v2, v18

    add-float/2addr v0, v3

    :try_start_3
    iput v0, v1, Landroid/text/MeasuredParagraph;->mWholeWidth:F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 768
    invoke-virtual {v4, v15}, Landroid/text/TextPaint;->setFlags(I)V

    .line 769
    nop

    .line 770
    .end local v15    # "oldFlag":I
    const/4 v15, 0x0

    goto :goto_1

    .line 768
    .restart local v15    # "oldFlag":I
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move/from16 v18, v4

    move-object v4, v2

    move/from16 v2, v18

    goto :goto_0

    .end local v15    # "oldFlag":I
    .restart local v4    # "oldFlag":I
    :catchall_2
    move-exception v0

    move v15, v4

    move-object v4, v2

    move/from16 v2, p1

    .end local v4    # "oldFlag":I
    .restart local v15    # "oldFlag":I
    goto :goto_0

    .end local v15    # "oldFlag":I
    .restart local v3    # "oldFlag":I
    :catchall_3
    move-exception v0

    move-object v4, v2

    move v15, v3

    move/from16 v2, p1

    .end local v3    # "oldFlag":I
    .restart local v15    # "oldFlag":I
    :goto_0
    invoke-virtual {v4, v15}, Landroid/text/TextPaint;->setFlags(I)V

    .line 769
    throw v0

    .line 771
    .end local v15    # "oldFlag":I
    :cond_0
    move-object v4, v2

    move/from16 v2, p1

    sub-int v0, v11, v2

    const/4 v15, 0x0

    invoke-virtual {v13, v4, v12, v0, v15}, Landroid/graphics/text/MeasuredText$Builder;->appendStyleRun(Landroid/graphics/Paint;Landroid/graphics/text/LineBreakConfig;IZ)Landroid/graphics/text/MeasuredText$Builder;

    .line 773
    :goto_1
    if-eqz v14, :cond_1

    .line 774
    sub-int v0, v11, v2

    invoke-interface {v14, v4, v12, v0, v15}, Landroid/text/MeasuredParagraph$StyleRunCallback;->onAppendStyleRun(Landroid/graphics/Paint;Landroid/graphics/text/LineBreakConfig;IZ)V

    move-object v2, v4

    goto/16 :goto_7

    .line 773
    :cond_1
    move-object v2, v4

    goto/16 :goto_7

    .line 778
    :cond_2
    move-object v4, v2

    const/4 v15, 0x0

    move/from16 v2, p1

    iget-object v0, v1, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v0, v2}, Landroid/text/AutoGrowArray$ByteArray;->get(I)B

    move-result v0

    .line 781
    .local v0, "level":B
    move/from16 v3, p1

    .local v3, "levelStart":I
    add-int/lit8 v5, v2, 0x1

    move v6, v5

    move v5, v3

    move v3, v0

    .line 782
    .end local v0    # "level":B
    .local v3, "level":B
    .local v5, "levelStart":I
    .local v6, "levelEnd":I
    :goto_2
    if-eq v6, v11, :cond_4

    iget-object v0, v1, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v0, v6}, Landroid/text/AutoGrowArray$ByteArray;->get(I)B

    move-result v0

    if-eq v0, v3, :cond_3

    goto :goto_3

    :cond_3
    move-object v2, v4

    move v15, v6

    goto/16 :goto_8

    .line 783
    :cond_4
    :goto_3
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    move v8, v0

    goto :goto_4

    :cond_5
    move v8, v15

    .line 784
    .local v8, "isRtl":Z
    :goto_4
    if-nez v13, :cond_6

    .line 785
    move v7, v5

    .end local v5    # "levelStart":I
    .local v7, "levelStart":I
    sub-int v5, v6, v7

    .line 786
    .local v5, "levelLength":I
    invoke-virtual {v4}, Landroid/text/TextPaint;->getFlags()I

    move-result v9

    .line 787
    .local v9, "oldFlag":I
    invoke-virtual {v4}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x6000

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 790
    :try_start_4
    iget v0, v1, Landroid/text/MeasuredParagraph;->mWholeWidth:F
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    move v10, v3

    .end local v3    # "level":B
    .local v10, "level":B
    :try_start_5
    iget-object v3, v1, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget-object v15, v1, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    .line 792
    invoke-virtual {v15}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 790
    move/from16 v16, v6

    .end local v6    # "levelEnd":I
    .local v16, "levelEnd":I
    move v6, v7

    move v4, v7

    .end local v7    # "levelStart":I
    .local v4, "levelStart":I
    move v7, v5

    move/from16 v17, v10

    .end local v10    # "level":B
    .local v17, "level":B
    move v10, v4

    move-object/from16 v2, p3

    move v11, v9

    move-object v9, v15

    move/from16 v15, v16

    .end local v9    # "oldFlag":I
    .end local v16    # "levelEnd":I
    .local v11, "oldFlag":I
    .local v15, "levelEnd":I
    :try_start_6
    invoke-virtual/range {v2 .. v10}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v3

    add-float/2addr v0, v3

    iput v0, v1, Landroid/text/MeasuredParagraph;->mWholeWidth:F
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 794
    invoke-virtual {v2, v11}, Landroid/text/TextPaint;->setFlags(I)V

    .line 795
    nop

    .line 796
    .end local v5    # "levelLength":I
    .end local v11    # "oldFlag":I
    goto :goto_6

    .line 794
    .restart local v5    # "levelLength":I
    .restart local v11    # "oldFlag":I
    :catchall_4
    move-exception v0

    goto :goto_5

    .end local v4    # "levelStart":I
    .end local v11    # "oldFlag":I
    .end local v15    # "levelEnd":I
    .end local v17    # "level":B
    .restart local v6    # "levelEnd":I
    .restart local v7    # "levelStart":I
    .restart local v9    # "oldFlag":I
    .restart local v10    # "level":B
    :catchall_5
    move-exception v0

    move-object v2, v4

    move v15, v6

    move v4, v7

    move v11, v9

    move/from16 v17, v10

    .end local v6    # "levelEnd":I
    .end local v7    # "levelStart":I
    .end local v9    # "oldFlag":I
    .end local v10    # "level":B
    .restart local v4    # "levelStart":I
    .restart local v11    # "oldFlag":I
    .restart local v15    # "levelEnd":I
    .restart local v17    # "level":B
    goto :goto_5

    .end local v4    # "levelStart":I
    .end local v11    # "oldFlag":I
    .end local v15    # "levelEnd":I
    .end local v17    # "level":B
    .restart local v3    # "level":B
    .restart local v6    # "levelEnd":I
    .restart local v7    # "levelStart":I
    .restart local v9    # "oldFlag":I
    :catchall_6
    move-exception v0

    move/from16 v17, v3

    move-object v2, v4

    move v15, v6

    move v4, v7

    move v11, v9

    .end local v3    # "level":B
    .end local v6    # "levelEnd":I
    .end local v7    # "levelStart":I
    .end local v9    # "oldFlag":I
    .restart local v4    # "levelStart":I
    .restart local v11    # "oldFlag":I
    .restart local v15    # "levelEnd":I
    .restart local v17    # "level":B
    :goto_5
    invoke-virtual {v2, v11}, Landroid/text/TextPaint;->setFlags(I)V

    .line 795
    throw v0

    .line 797
    .end local v4    # "levelStart":I
    .end local v11    # "oldFlag":I
    .end local v15    # "levelEnd":I
    .end local v17    # "level":B
    .restart local v3    # "level":B
    .local v5, "levelStart":I
    .restart local v6    # "levelEnd":I
    :cond_6
    move/from16 v17, v3

    move-object v2, v4

    move v4, v5

    move v15, v6

    .end local v3    # "level":B
    .end local v5    # "levelStart":I
    .end local v6    # "levelEnd":I
    .restart local v4    # "levelStart":I
    .restart local v15    # "levelEnd":I
    .restart local v17    # "level":B
    sub-int v6, v15, v4

    invoke-virtual {v13, v2, v12, v6, v8}, Landroid/graphics/text/MeasuredText$Builder;->appendStyleRun(Landroid/graphics/Paint;Landroid/graphics/text/LineBreakConfig;IZ)Landroid/graphics/text/MeasuredText$Builder;

    .line 799
    :goto_6
    if-eqz v14, :cond_7

    .line 800
    sub-int v6, v15, v4

    invoke-interface {v14, v2, v12, v6, v8}, Landroid/text/MeasuredParagraph$StyleRunCallback;->onAppendStyleRun(Landroid/graphics/Paint;Landroid/graphics/text/LineBreakConfig;IZ)V

    .line 802
    :cond_7
    move/from16 v11, p2

    if-ne v15, v11, :cond_8

    .line 803
    nop

    .line 810
    .end local v4    # "levelStart":I
    .end local v8    # "isRtl":Z
    .end local v15    # "levelEnd":I
    .end local v17    # "level":B
    :goto_7
    return-void

    .line 805
    .restart local v4    # "levelStart":I
    .restart local v8    # "isRtl":Z
    .restart local v15    # "levelEnd":I
    .restart local v17    # "level":B
    :cond_8
    move v0, v15

    .line 806
    .end local v4    # "levelStart":I
    .local v0, "levelStart":I
    iget-object v3, v1, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v3, v15}, Landroid/text/AutoGrowArray$ByteArray;->get(I)B

    move-result v3

    move v5, v0

    .line 781
    .end local v0    # "levelStart":I
    .end local v8    # "isRtl":Z
    .end local v17    # "level":B
    .restart local v3    # "level":B
    .restart local v5    # "levelStart":I
    :goto_8
    add-int/lit8 v6, v15, 0x1

    move-object v4, v2

    const/4 v15, 0x0

    move/from16 v2, p1

    .end local v15    # "levelEnd":I
    .restart local v6    # "levelEnd":I
    goto/16 :goto_2
.end method

.method public static greylist-max-o buildForBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p4, "recycle"    # Landroid/text/MeasuredParagraph;

    .line 412
    if-nez p4, :cond_0

    invoke-static {}, Landroid/text/MeasuredParagraph;->obtain()Landroid/text/MeasuredParagraph;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p4

    .line 413
    .local v0, "mt":Landroid/text/MeasuredParagraph;
    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/text/MeasuredParagraph;->resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 414
    return-object v0
.end method

.method public static greylist-max-o buildForMeasurement(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;
    .locals 10
    .param p0, "paint"    # Landroid/text/TextPaint;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p5, "recycle"    # Landroid/text/MeasuredParagraph;

    .line 439
    if-nez p5, :cond_0

    invoke-static {}, Landroid/text/MeasuredParagraph;->obtain()Landroid/text/MeasuredParagraph;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p5

    :goto_0
    move-object v1, v0

    .line 440
    .local v1, "mt":Landroid/text/MeasuredParagraph;
    invoke-direct {v1, p1, p2, p3, p4}, Landroid/text/MeasuredParagraph;->resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 442
    iget-object v0, v1, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    iget v2, v1, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-virtual {v0, v2}, Landroid/text/AutoGrowArray$FloatArray;->resize(I)V

    .line 443
    iget v0, v1, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-nez v0, :cond_1

    .line 444
    return-object v1

    .line 447
    :cond_1
    iget-object v0, v1, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    if-nez v0, :cond_2

    .line 449
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move v6, p2

    move v7, p3

    .end local p0    # "paint":Landroid/text/TextPaint;
    .end local p2    # "start":I
    .end local p3    # "end":I
    .local v2, "paint":Landroid/text/TextPaint;
    .local v6, "start":I
    .local v7, "end":I
    invoke-direct/range {v1 .. v9}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;[Landroid/text/style/LineBreakConfigSpan;IILandroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V

    move p0, v6

    move p2, v7

    .end local v6    # "start":I
    .end local v7    # "end":I
    .local p0, "start":I
    .local p2, "end":I
    goto :goto_2

    .line 455
    .end local v2    # "paint":Landroid/text/TextPaint;
    .local p0, "paint":Landroid/text/TextPaint;
    .local p2, "start":I
    .restart local p3    # "end":I
    :cond_2
    move-object v2, p0

    move p0, p2

    move p2, p3

    .end local p3    # "end":I
    .restart local v2    # "paint":Landroid/text/TextPaint;
    .local p0, "start":I
    .local p2, "end":I
    move p3, p0

    move v6, p3

    .local v6, "spanStart":I
    :goto_1
    if-ge v6, p2, :cond_3

    .line 456
    iget-object p3, v1, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v0, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {p3, v6, p2, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result p3

    .line 458
    .local p3, "maSpanEnd":I
    iget-object v0, v1, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v3, Landroid/text/style/LineBreakConfigSpan;

    invoke-interface {v0, v6, p2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v0

    .line 460
    .local v0, "lbcSpanEnd":I
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 461
    .local v7, "spanEnd":I
    iget-object v3, v1, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v4, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v3, v6, v7, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/MetricAffectingSpan;

    .line 463
    .local v3, "spans":[Landroid/text/style/MetricAffectingSpan;
    iget-object v4, v1, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v5, Landroid/text/style/LineBreakConfigSpan;

    invoke-interface {v4, v6, v7, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/LineBreakConfigSpan;

    .line 465
    .local v4, "lbcSpans":[Landroid/text/style/LineBreakConfigSpan;
    iget-object v5, v1, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v8, Landroid/text/style/MetricAffectingSpan;

    invoke-static {v3, v5, v8}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, [Landroid/text/style/MetricAffectingSpan;

    .line 466
    iget-object v5, v1, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v8, Landroid/text/style/LineBreakConfigSpan;

    invoke-static {v4, v5, v8}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/LineBreakConfigSpan;

    .line 468
    .end local v4    # "lbcSpans":[Landroid/text/style/LineBreakConfigSpan;
    .local v5, "lbcSpans":[Landroid/text/style/LineBreakConfigSpan;
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    .end local v3    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .local v4, "spans":[Landroid/text/style/MetricAffectingSpan;
    const/4 v3, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;[Landroid/text/style/LineBreakConfigSpan;IILandroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V

    .line 455
    .end local v0    # "lbcSpanEnd":I
    .end local v4    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .end local v5    # "lbcSpans":[Landroid/text/style/LineBreakConfigSpan;
    .end local p3    # "maSpanEnd":I
    move v6, v7

    goto :goto_1

    .line 473
    .end local v6    # "spanStart":I
    .end local v7    # "spanEnd":I
    :cond_3
    :goto_2
    return-object v1
.end method

.method public static blacklist buildForStaticLayout(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;IZZLandroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;
    .locals 12
    .param p0, "paint"    # Landroid/text/TextPaint;
    .param p1, "lineBreakConfig"    # Landroid/graphics/text/LineBreakConfig;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p6, "hyphenationMode"    # I
    .param p7, "computeLayout"    # Z
    .param p8, "computeBounds"    # Z
    .param p9, "hint"    # Landroid/text/MeasuredParagraph;
    .param p10, "recycle"    # Landroid/text/MeasuredParagraph;

    .line 531
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-static/range {v0 .. v11}, Landroid/text/MeasuredParagraph;->buildForStaticLayoutInternal(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;IZZLandroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph$StyleRunCallback;)Landroid/text/MeasuredParagraph;

    move-result-object v11

    return-object v11
.end method

.method private static blacklist buildForStaticLayoutInternal(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;IZZLandroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph$StyleRunCallback;)Landroid/text/MeasuredParagraph;
    .locals 19
    .param p0, "paint"    # Landroid/text/TextPaint;
    .param p1, "lineBreakConfig"    # Landroid/graphics/text/LineBreakConfig;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p6, "hyphenationMode"    # I
    .param p7, "computeLayout"    # Z
    .param p8, "computeBounds"    # Z
    .param p9, "hint"    # Landroid/text/MeasuredParagraph;
    .param p10, "recycle"    # Landroid/text/MeasuredParagraph;
    .param p11, "testCallback"    # Landroid/text/MeasuredParagraph$StyleRunCallback;

    .line 584
    move/from16 v6, p4

    move-object/from16 v9, p9

    if-nez p10, :cond_0

    invoke-static {}, Landroid/text/MeasuredParagraph;->obtain()Landroid/text/MeasuredParagraph;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object/from16 v0, p10

    :goto_0
    move-object v10, v0

    .line 585
    .local v10, "mt":Landroid/text/MeasuredParagraph;
    move-object/from16 v11, p2

    move/from16 v5, p3

    move-object/from16 v12, p5

    invoke-direct {v10, v11, v5, v6, v12}, Landroid/text/MeasuredParagraph;->resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 587
    if-nez v9, :cond_1

    .line 588
    new-instance v0, Landroid/graphics/text/MeasuredText$Builder;

    iget-object v1, v10, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    invoke-direct {v0, v1}, Landroid/graphics/text/MeasuredText$Builder;-><init>([C)V

    .line 589
    move/from16 v13, p6

    invoke-virtual {v0, v13}, Landroid/graphics/text/MeasuredText$Builder;->setComputeHyphenation(I)Landroid/graphics/text/MeasuredText$Builder;

    move-result-object v0

    .line 590
    move/from16 v14, p7

    invoke-virtual {v0, v14}, Landroid/graphics/text/MeasuredText$Builder;->setComputeLayout(Z)Landroid/graphics/text/MeasuredText$Builder;

    move-result-object v0

    .line 591
    move/from16 v15, p8

    invoke-virtual {v0, v15}, Landroid/graphics/text/MeasuredText$Builder;->setComputeBounds(Z)Landroid/graphics/text/MeasuredText$Builder;

    move-result-object v0

    move-object v7, v0

    .local v0, "builder":Landroid/graphics/text/MeasuredText$Builder;
    goto :goto_1

    .line 593
    .end local v0    # "builder":Landroid/graphics/text/MeasuredText$Builder;
    :cond_1
    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    new-instance v0, Landroid/graphics/text/MeasuredText$Builder;

    iget-object v1, v9, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-direct {v0, v1}, Landroid/graphics/text/MeasuredText$Builder;-><init>(Landroid/graphics/text/MeasuredText;)V

    move-object v7, v0

    .line 595
    .local v7, "builder":Landroid/graphics/text/MeasuredText$Builder;
    :goto_1
    iget v0, v10, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-nez v0, :cond_2

    .line 598
    invoke-virtual {v7}, Landroid/graphics/text/MeasuredText$Builder;->build()Landroid/graphics/text/MeasuredText;

    move-result-object v0

    iput-object v0, v10, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    goto/16 :goto_4

    .line 600
    :cond_2
    iget-object v0, v10, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    if-nez v0, :cond_3

    .line 602
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p11

    move-object v0, v10

    .end local v10    # "mt":Landroid/text/MeasuredParagraph;
    .local v0, "mt":Landroid/text/MeasuredParagraph;
    invoke-direct/range {v0 .. v8}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;[Landroid/text/style/LineBreakConfigSpan;IILandroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V

    .line 604
    .end local v0    # "mt":Landroid/text/MeasuredParagraph;
    .restart local v10    # "mt":Landroid/text/MeasuredParagraph;
    iget-object v0, v10, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v0, v6}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    goto/16 :goto_3

    .line 609
    :cond_3
    move/from16 v0, p3

    .local v0, "spanStart":I
    :goto_2
    if-ge v0, v6, :cond_4

    .line 610
    iget-object v1, v10, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v2, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v1, v0, v6, v2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v1

    .line 612
    .local v1, "maSpanEnd":I
    iget-object v2, v10, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v3, Landroid/text/style/LineBreakConfigSpan;

    invoke-interface {v2, v0, v6, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    .line 614
    .local v2, "lbcSpanEnd":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 615
    .local v3, "spanEnd":I
    iget-object v4, v10, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v5, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v4, v0, v3, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/MetricAffectingSpan;

    .line 617
    .local v4, "spans":[Landroid/text/style/MetricAffectingSpan;
    iget-object v5, v10, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v8, Landroid/text/style/LineBreakConfigSpan;

    invoke-interface {v5, v0, v3, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/LineBreakConfigSpan;

    .line 619
    .local v5, "lbcSpans":[Landroid/text/style/LineBreakConfigSpan;
    iget-object v8, v10, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    move/from16 v16, v0

    .end local v0    # "spanStart":I
    .local v16, "spanStart":I
    const-class v0, Landroid/text/style/MetricAffectingSpan;

    invoke-static {v4, v8, v0}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/MetricAffectingSpan;

    .line 621
    .end local v4    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .local v0, "spans":[Landroid/text/style/MetricAffectingSpan;
    iget-object v4, v10, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v8, Landroid/text/style/LineBreakConfigSpan;

    invoke-static {v5, v4, v8}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/LineBreakConfigSpan;

    .line 623
    .end local v5    # "lbcSpans":[Landroid/text/style/LineBreakConfigSpan;
    .local v4, "lbcSpans":[Landroid/text/style/LineBreakConfigSpan;
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v18, p11

    move-object v13, v0

    move-object v14, v4

    move-object/from16 v17, v7

    move/from16 v15, v16

    move/from16 v16, v3

    .end local v0    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .end local v3    # "spanEnd":I
    .end local v4    # "lbcSpans":[Landroid/text/style/LineBreakConfigSpan;
    .end local v7    # "builder":Landroid/graphics/text/MeasuredText$Builder;
    .local v13, "spans":[Landroid/text/style/MetricAffectingSpan;
    .local v14, "lbcSpans":[Landroid/text/style/LineBreakConfigSpan;
    .local v15, "spanStart":I
    .local v16, "spanEnd":I
    .local v17, "builder":Landroid/graphics/text/MeasuredText$Builder;
    invoke-direct/range {v10 .. v18}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;[Landroid/text/style/LineBreakConfigSpan;IILandroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V

    .line 625
    move/from16 v0, v16

    .end local v16    # "spanEnd":I
    .end local v17    # "builder":Landroid/graphics/text/MeasuredText$Builder;
    .local v0, "spanEnd":I
    .restart local v7    # "builder":Landroid/graphics/text/MeasuredText$Builder;
    iget-object v3, v10, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v3, v0}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    .line 609
    .end local v1    # "maSpanEnd":I
    .end local v2    # "lbcSpanEnd":I
    .end local v13    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .end local v14    # "lbcSpans":[Landroid/text/style/LineBreakConfigSpan;
    move v1, v0

    move-object/from16 v11, p2

    move-object/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    .end local v15    # "spanStart":I
    .local v1, "spanStart":I
    goto :goto_2

    .end local v1    # "spanStart":I
    .local v0, "spanStart":I
    :cond_4
    move v15, v0

    .line 628
    .end local v0    # "spanStart":I
    :goto_3
    invoke-virtual {v7}, Landroid/graphics/text/MeasuredText$Builder;->build()Landroid/graphics/text/MeasuredText;

    move-result-object v0

    iput-object v0, v10, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    .line 631
    :goto_4
    return-object v10
.end method

.method public static blacklist buildForStaticLayoutTest(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;IZLandroid/text/MeasuredParagraph$StyleRunCallback;)Landroid/text/MeasuredParagraph;
    .locals 12
    .param p0, "paint"    # Landroid/text/TextPaint;
    .param p1, "lineBreakConfig"    # Landroid/graphics/text/LineBreakConfig;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p6, "hyphenationMode"    # I
    .param p7, "computeLayout"    # Z
    .param p8, "testCallback"    # Landroid/text/MeasuredParagraph$StyleRunCallback;

    .line 567
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v11, p8

    invoke-static/range {v0 .. v11}, Landroid/text/MeasuredParagraph;->buildForStaticLayoutInternal(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;IZZLandroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph$StyleRunCallback;)Landroid/text/MeasuredParagraph;

    move-result-object v8

    return-object v8
.end method

.method private static greylist-max-o obtain()Landroid/text/MeasuredParagraph;
    .locals 2

    .line 79
    sget-object v0, Landroid/text/MeasuredParagraph;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/MeasuredParagraph;

    .line 80
    .local v0, "mt":Landroid/text/MeasuredParagraph;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/text/MeasuredParagraph;

    invoke-direct {v1}, Landroid/text/MeasuredParagraph;-><init>()V

    :goto_0
    return-object v1
.end method

.method private greylist-max-o reset()V
    .locals 2

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    .line 165
    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    .line 166
    const/4 v1, 0x0

    iput v1, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    .line 167
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$ByteArray;->clear()V

    .line 168
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$FloatArray;->clear()V

    .line 169
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$IntArray;->clear()V

    .line 170
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$IntArray;->clear()V

    .line 171
    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    .line 172
    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    .line 173
    return-void
.end method

.method private greylist-max-o resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V
    .locals 17
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .line 646
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct {v0}, Landroid/text/MeasuredParagraph;->reset()V

    .line 647
    instance-of v5, v1, Landroid/text/Spanned;

    if-eqz v5, :cond_0

    move-object v5, v1

    check-cast v5, Landroid/text/Spanned;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iput-object v5, v0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    .line 648
    iput v2, v0, Landroid/text/MeasuredParagraph;->mTextStart:I

    .line 649
    sub-int v5, v3, v2

    iput v5, v0, Landroid/text/MeasuredParagraph;->mTextLength:I

    .line 651
    iget-object v5, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    if-eqz v5, :cond_1

    iget-object v5, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    array-length v5, v5

    iget v6, v0, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-eq v5, v6, :cond_2

    .line 652
    :cond_1
    iget v5, v0, Landroid/text/MeasuredParagraph;->mTextLength:I

    new-array v5, v5, [C

    iput-object v5, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    .line 654
    :cond_2
    iget-object v5, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    const/4 v6, 0x0

    invoke-static {v1, v2, v3, v5, v6}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 657
    iget-object v5, v0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const v7, 0xfffc

    if-eqz v5, :cond_5

    .line 658
    iget-object v5, v0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v8, Landroid/text/style/ReplacementSpan;

    invoke-interface {v5, v2, v3, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ReplacementSpan;

    .line 660
    .local v5, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v9, v5

    if-ge v8, v9, :cond_5

    .line 661
    iget-object v9, v0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    aget-object v10, v5, v8

    invoke-interface {v9, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    sub-int/2addr v9, v2

    .line 662
    .local v9, "startInPara":I
    iget-object v10, v0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    aget-object v11, v5, v8

    invoke-interface {v10, v11}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    sub-int/2addr v10, v2

    .line 664
    .local v10, "endInPara":I
    if-gez v9, :cond_3

    const/4 v9, 0x0

    .line 665
    :cond_3
    iget v11, v0, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-le v10, v11, :cond_4

    iget v10, v0, Landroid/text/MeasuredParagraph;->mTextLength:I

    .line 666
    :cond_4
    iget-object v11, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    invoke-static {v11, v9, v10, v7}, Ljava/util/Arrays;->fill([CIIC)V

    .line 660
    .end local v9    # "startInPara":I
    .end local v10    # "endInPara":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 670
    .end local v5    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v8    # "i":I
    :cond_5
    sget-object v5, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v8, 0x1

    if-eq v4, v5, :cond_6

    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-eq v4, v5, :cond_6

    sget-object v5, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne v4, v5, :cond_7

    :cond_6
    iget-object v5, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget v9, v0, Landroid/text/MeasuredParagraph;->mTextLength:I

    .line 673
    invoke-static {v5, v6, v9}, Landroid/text/TextUtils;->doesNotNeedBidi([CII)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 674
    iget-object v5, v0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v5}, Landroid/text/AutoGrowArray$ByteArray;->clear()V

    .line 675
    iput-boolean v8, v0, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    .line 676
    return-void

    .line 679
    :cond_7
    sget-object v5, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    if-ne v4, v5, :cond_8

    .line 680
    const/4 v5, 0x0

    move/from16 v16, v5

    .local v5, "bidiRequest":I
    goto :goto_2

    .line 681
    .end local v5    # "bidiRequest":I
    :cond_8
    sget-object v5, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    if-ne v4, v5, :cond_9

    .line 682
    const/4 v5, 0x1

    move/from16 v16, v5

    .restart local v5    # "bidiRequest":I
    goto :goto_2

    .line 683
    .end local v5    # "bidiRequest":I
    :cond_9
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne v4, v5, :cond_a

    .line 684
    const/16 v5, 0x7e

    move/from16 v16, v5

    .restart local v5    # "bidiRequest":I
    goto :goto_2

    .line 685
    .end local v5    # "bidiRequest":I
    :cond_a
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    if-ne v4, v5, :cond_b

    .line 686
    const/16 v5, 0x7f

    move/from16 v16, v5

    .restart local v5    # "bidiRequest":I
    goto :goto_2

    .line 688
    .end local v5    # "bidiRequest":I
    :cond_b
    iget-object v5, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget v9, v0, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-interface {v4, v5, v6, v9}, Landroid/text/TextDirectionHeuristic;->isRtl([CII)Z

    move-result v5

    .line 689
    .local v5, "isRtl":Z
    move v9, v5

    move/from16 v16, v9

    .line 691
    .end local v5    # "isRtl":Z
    .local v16, "bidiRequest":I
    :goto_2
    new-instance v10, Landroid/icu/text/Bidi;

    iget-object v11, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget-object v5, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    array-length v15, v5

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v10 .. v16}, Landroid/icu/text/Bidi;-><init>([CI[BIII)V

    iput-object v10, v0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    .line 693
    iget-object v5, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    array-length v5, v5

    if-lez v5, :cond_f

    iget-object v5, v0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    iget-object v9, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    array-length v9, v9

    sub-int/2addr v9, v8

    .line 694
    invoke-virtual {v5, v9}, Landroid/icu/text/Bidi;->getParagraphIndex(I)I

    move-result v5

    if-eqz v5, :cond_f

    .line 702
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    iget v8, v0, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-ge v5, v8, :cond_e

    .line 703
    iget-object v8, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    aget-char v8, v8, v5

    invoke-static {v8}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 705
    goto :goto_4

    .line 707
    :cond_c
    iget-object v8, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    aget-char v8, v8, v5

    invoke-static {v8}, Landroid/icu/lang/UCharacter;->getDirection(I)I

    move-result v8

    const/4 v9, 0x7

    if-ne v8, v9, :cond_d

    .line 709
    iget-object v8, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    aput-char v7, v8, v5

    .line 702
    :cond_d
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 712
    .end local v5    # "i":I
    :cond_e
    new-instance v10, Landroid/icu/text/Bidi;

    iget-object v11, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget-object v5, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    array-length v15, v5

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v10 .. v16}, Landroid/icu/text/Bidi;-><init>([CI[BIII)V

    iput-object v10, v0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    .line 714
    :cond_f
    iget-object v5, v0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    iget v7, v0, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-virtual {v5, v7}, Landroid/text/AutoGrowArray$ByteArray;->resize(I)V

    .line 715
    iget-object v5, v0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v5}, Landroid/text/AutoGrowArray$ByteArray;->getRawArray()[B

    move-result-object v5

    .line 716
    .local v5, "rawArray":[B
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5
    iget v8, v0, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-ge v7, v8, :cond_10

    .line 717
    iget-object v8, v0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    invoke-virtual {v8, v7}, Landroid/icu/text/Bidi;->getLevelAt(I)B

    move-result v8

    aput-byte v8, v5, v7

    .line 716
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 719
    .end local v7    # "i":I
    :cond_10
    iput-boolean v6, v0, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    .line 720
    return-void
.end method


# virtual methods
.method greylist-max-o breakText(IZF)I
    .locals 6
    .param p1, "limit"    # I
    .param p2, "forwards"    # Z
    .param p3, "width"    # F

    .line 893
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v0

    .line 894
    .local v0, "w":[F
    const/16 v1, 0x20

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 895
    const/4 v3, 0x0

    .line 896
    .local v3, "i":I
    :goto_0
    if-ge v3, p1, :cond_1

    .line 897
    aget v4, v0, v3

    sub-float/2addr p3, v4

    .line 898
    cmpg-float v4, p3, v2

    if-gez v4, :cond_0

    goto :goto_1

    .line 899
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 901
    :cond_1
    :goto_1
    if-lez v3, :cond_2

    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    add-int/lit8 v4, v3, -0x1

    aget-char v2, v2, v4

    if-ne v2, v1, :cond_2

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 902
    :cond_2
    return v3

    .line 904
    .end local v3    # "i":I
    :cond_3
    add-int/lit8 v3, p1, -0x1

    .line 905
    .restart local v3    # "i":I
    :goto_2
    if-ltz v3, :cond_5

    .line 906
    aget v4, v0, v3

    sub-float/2addr p3, v4

    .line 907
    cmpg-float v4, p3, v2

    if-gez v4, :cond_4

    goto :goto_3

    .line 908
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 910
    :cond_5
    :goto_3
    add-int/lit8 v4, p1, -0x1

    if-ge v3, v4, :cond_7

    iget-object v4, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    add-int/lit8 v5, v3, 0x1

    aget-char v4, v4, v5

    if-eq v4, v1, :cond_6

    add-int/lit8 v4, v3, 0x1

    aget v4, v0, v4

    cmpl-float v4, v4, v2

    if-nez v4, :cond_7

    .line 911
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 913
    :cond_7
    sub-int v1, p1, v3

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public greylist-max-o getBounds(IILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 368
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/text/MeasuredText;->getBounds(IILandroid/graphics/Rect;)V

    .line 369
    return-void
.end method

.method public blacklist getCharWidthAt(I)F
    .locals 1
    .param p1, "offset"    # I

    .line 389
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-virtual {v0, p1}, Landroid/graphics/text/MeasuredText;->getCharWidthAt(I)F

    move-result v0

    return v0
.end method

.method public greylist-max-o getChars()[C
    .locals 1

    .line 192
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    return-object v0
.end method

.method public greylist-max-o getDirections(II)Landroid/text/Layout$Directions;
    .locals 11
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 218
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    if-nez v0, :cond_0

    .line 219
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v0

    .line 224
    :cond_0
    const/4 v0, 0x1

    if-ne p1, p2, :cond_2

    .line 225
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getParaLevel()B

    move-result v1

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 226
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v0

    .line 228
    :cond_1
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-object v0

    .line 233
    :cond_2
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    invoke-virtual {v1, p1, p2}, Landroid/icu/text/Bidi;->createLineBidi(II)Landroid/icu/text/Bidi;

    move-result-object v1

    .line 237
    .local v1, "bidi":Landroid/icu/text/Bidi;
    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getRunCount()I

    move-result v2

    if-ne v2, v0, :cond_5

    .line 238
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/icu/text/Bidi;->getRunLevel(I)I

    move-result v3

    if-ne v3, v0, :cond_3

    .line 239
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-object v0

    .line 240
    :cond_3
    invoke-virtual {v1, v2}, Landroid/icu/text/Bidi;->getRunLevel(I)I

    move-result v0

    if-nez v0, :cond_4

    .line 241
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v0

    .line 243
    :cond_4
    new-instance v0, Landroid/text/Layout$Directions;

    .line 244
    invoke-virtual {v1, v2}, Landroid/icu/text/Bidi;->getRunLevel(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x1a

    sub-int v4, p2, p1

    or-int/2addr v3, v4

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/Layout$Directions;-><init>([I)V

    .line 243
    return-object v0

    .line 249
    :cond_5
    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getRunCount()I

    move-result v2

    new-array v2, v2, [B

    .line 250
    .local v2, "levels":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getRunCount()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 251
    invoke-virtual {v1, v3}, Landroid/icu/text/Bidi;->getRunLevel(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 250
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 253
    .end local v3    # "i":I
    :cond_6
    invoke-static {v2}, Landroid/icu/text/Bidi;->reorderVisual([B)[I

    move-result-object v3

    .line 255
    .local v3, "visualOrders":[I
    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getRunCount()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [I

    .line 256
    .local v4, "dirs":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getRunCount()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 258
    iget-object v6, p0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    invoke-virtual {v6}, Landroid/icu/text/Bidi;->getBaseLevel()I

    move-result v6

    and-int/2addr v6, v0

    if-ne v6, v0, :cond_7

    .line 261
    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getRunCount()I

    move-result v6

    sub-int/2addr v6, v5

    sub-int/2addr v6, v0

    aget v6, v3, v6

    .local v6, "vIndex":I
    goto :goto_2

    .line 263
    .end local v6    # "vIndex":I
    :cond_7
    aget v6, v3, v5

    .line 267
    .restart local v6    # "vIndex":I
    :goto_2
    mul-int/lit8 v7, v5, 0x2

    invoke-virtual {v1, v6}, Landroid/icu/text/Bidi;->getRunStart(I)I

    move-result v8

    aput v8, v4, v7

    .line 268
    mul-int/lit8 v7, v5, 0x2

    add-int/2addr v7, v0

    invoke-virtual {v1, v6}, Landroid/icu/text/Bidi;->getRunLevel(I)I

    move-result v8

    shl-int/lit8 v8, v8, 0x1a

    .line 269
    invoke-virtual {v1, v6}, Landroid/icu/text/Bidi;->getRunLimit(I)I

    move-result v9

    mul-int/lit8 v10, v5, 0x2

    aget v10, v4, v10

    sub-int/2addr v9, v10

    or-int/2addr v8, v9

    aput v8, v4, v7

    .line 256
    .end local v6    # "vIndex":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 272
    .end local v5    # "i":I
    :cond_8
    new-instance v0, Landroid/text/Layout$Directions;

    invoke-direct {v0, v4}, Landroid/text/Layout$Directions;-><init>([I)V

    return-object v0
.end method

.method public greylist-max-o getFontMetrics()Landroid/text/AutoGrowArray$IntArray;
    .locals 1

    .line 320
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    return-object v0
.end method

.method public blacklist getFontMetricsInt(IILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 379
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/text/MeasuredText;->getFontMetricsInt(IILandroid/graphics/Paint$FontMetricsInt;)V

    .line 380
    return-void
.end method

.method public blacklist getMeasuredText()Landroid/graphics/text/MeasuredText;
    .locals 1

    .line 331
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    return-object v0
.end method

.method public greylist-max-o getMemoryUsage()I
    .locals 1

    .line 937
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-virtual {v0}, Landroid/graphics/text/MeasuredText;->getMemoryUsage()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getParagraphDir()I
    .locals 2

    .line 202
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 203
    return v1

    .line 205
    :cond_0
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->getParaLevel()B

    move-result v0

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 206
    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 205
    :goto_0
    return v1
.end method

.method public greylist-max-o getSpanEndCache()Landroid/text/AutoGrowArray$IntArray;
    .locals 1

    .line 307
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    return-object v0
.end method

.method public greylist-max-o getTextLength()I
    .locals 1

    .line 182
    iget v0, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    return v0
.end method

.method public greylist-max-o getWholeWidth()F
    .locals 1

    .line 283
    iget v0, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    return v0
.end method

.method public greylist-max-o getWidth(II)F
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 345
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    if-nez v0, :cond_1

    .line 347
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v0

    .line 348
    .local v0, "widths":[F
    const/4 v1, 0x0

    .line 349
    .local v1, "r":F
    move v2, p1

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 350
    aget v3, v0, v2

    add-float/2addr v1, v3

    .line 349
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 352
    .end local v2    # "i":I
    :cond_0
    return v1

    .line 355
    .end local v0    # "widths":[F
    .end local v1    # "r":F
    :cond_1
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/text/MeasuredText;->getWidth(II)F

    move-result v0

    return v0
.end method

.method public greylist-max-o getWidths()Landroid/text/AutoGrowArray$FloatArray;
    .locals 1

    .line 294
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    return-object v0
.end method

.method greylist-max-o measure(II)F
    .locals 4
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .line 924
    const/4 v0, 0x0

    .line 925
    .local v0, "width":F
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v1

    .line 926
    .local v1, "w":[F
    move v2, p1

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 927
    aget v3, v1, v2

    add-float/2addr v0, v3

    .line 926
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 929
    .end local v2    # "i":I
    :cond_0
    return v0
.end method

.method public greylist-max-o recycle()V
    .locals 1

    .line 90
    invoke-virtual {p0}, Landroid/text/MeasuredParagraph;->release()V

    .line 91
    sget-object v0, Landroid/text/MeasuredParagraph;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public greylist-max-o release()V
    .locals 1

    .line 153
    invoke-direct {p0}, Landroid/text/MeasuredParagraph;->reset()V

    .line 154
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$ByteArray;->clearWithReleasingLargeArray()V

    .line 155
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$FloatArray;->clearWithReleasingLargeArray()V

    .line 156
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$IntArray;->clearWithReleasingLargeArray()V

    .line 157
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$IntArray;->clearWithReleasingLargeArray()V

    .line 158
    return-void
.end method
