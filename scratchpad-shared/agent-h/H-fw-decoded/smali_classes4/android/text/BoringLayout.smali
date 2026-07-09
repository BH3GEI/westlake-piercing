.class public Landroid/text/BoringLayout;
.super Landroid/text/Layout;
.source "BoringLayout.java"

# interfaces
.implements Landroid/text/TextUtils$EllipsizeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/BoringLayout$Metrics;
    }
.end annotation


# instance fields
.field greylist-max-o mBottom:I

.field private greylist-max-o mBottomPadding:I

.field greylist-max-o mDesc:I

.field private greylist-max-o mDirect:Ljava/lang/String;

.field private final blacklist mDrawingBounds:Landroid/graphics/RectF;

.field private greylist-max-o mEllipsizedCount:I

.field private greylist-max-o mEllipsizedStart:I

.field private greylist-max-o mEllipsizedWidth:I

.field private greylist-max-o mMax:F

.field private greylist-max-o mPaint:Landroid/graphics/Paint;

.field private greylist-max-o mTopPadding:I

.field private blacklist mUseFallbackLineSpacing:Z


# direct methods
.method public constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)V
    .locals 22
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "outerwidth"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingMult"    # F
    .param p6, "spacingAdd"    # F
    .param p7, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p8, "includePad"    # Z

    .line 273
    sget-object v5, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    sget-object v18, Landroid/graphics/text/LineBreakConfig;->NONE:Landroid/graphics/text/LineBreakConfig;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    move/from16 v10, p3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v21}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;ZZLandroid/graphics/Paint$FontMetrics;)V

    .line 758
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Landroid/text/BoringLayout;->mDrawingBounds:Landroid/graphics/RectF;

    .line 280
    move/from16 v8, p3

    iput v8, v0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 281
    const/4 v1, 0x0

    iput v1, v0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 282
    iput v1, v0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 283
    iput-boolean v1, v0, Landroid/text/BoringLayout;->mUseFallbackLineSpacing:Z

    .line 285
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p7

    move/from16 v5, p8

    invoke-virtual/range {v0 .. v7}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZZZ)V

    .line 286
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 12
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "outerWidth"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingMult"    # F
    .param p6, "spacingAdd"    # F
    .param p7, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p8, "includePad"    # Z
    .param p9, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p10, "ellipsizedWidth"    # I

    .line 309
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZ)V

    .line 311
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZ)V
    .locals 23
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "outerWidth"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingMult"    # F
    .param p6, "spacingAdd"    # F
    .param p7, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p8, "includePad"    # Z
    .param p9, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p10, "ellipsizedWidth"    # I
    .param p11, "useFallbackLineSpacing"    # Z

    .line 346
    sget-object v5, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    sget-object v18, Landroid/graphics/text/LineBreakConfig;->NONE:Landroid/graphics/text/LineBreakConfig;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v19, p7

    move/from16 v8, p8

    move-object/from16 v11, p9

    move/from16 v10, p10

    move/from16 v9, p11

    invoke-direct/range {v0 .. v22}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;Landroid/text/BoringLayout$Metrics;ZZLandroid/graphics/Paint$FontMetrics;)V

    .line 353
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZZILandroid/text/TextUtils$TruncateAt;Landroid/text/BoringLayout$Metrics;ZZLandroid/graphics/Paint$FontMetrics;)V
    .locals 23
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingMult"    # F
    .param p6, "spacingAdd"    # F
    .param p7, "includePad"    # Z
    .param p8, "fallbackLineSpacing"    # Z
    .param p9, "ellipsizedWidth"    # I
    .param p10, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p11, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p12, "useBoundsForWidth"    # Z
    .param p13, "shiftDrawingOffsetForStartOverhang"    # Z
    .param p14, "minimumFontMetrics"    # Landroid/graphics/Paint$FontMetrics;

    .line 371
    sget-object v5, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    const/16 v17, 0x0

    sget-object v18, Landroid/graphics/text/LineBreakConfig;->NONE:Landroid/graphics/text/LineBreakConfig;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v19, p11

    move/from16 v20, p12

    move/from16 v21, p13

    move-object/from16 v22, p14

    invoke-direct/range {v0 .. v22}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;Landroid/text/BoringLayout$Metrics;ZZLandroid/graphics/Paint$FontMetrics;)V

    .line 377
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;Landroid/text/BoringLayout$Metrics;ZZLandroid/graphics/Paint$FontMetrics;)V
    .locals 22
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p6, "spacingMult"    # F
    .param p7, "spacingAdd"    # F
    .param p8, "includePad"    # Z
    .param p9, "fallbackLineSpacing"    # Z
    .param p10, "ellipsizedWidth"    # I
    .param p11, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p12, "maxLines"    # I
    .param p13, "breakStrategy"    # I
    .param p14, "hyphenationFrequency"    # I
    .param p15, "leftIndents"    # [I
    .param p16, "rightIndents"    # [I
    .param p17, "justificationMode"    # I
    .param p18, "lineBreakConfig"    # Landroid/graphics/text/LineBreakConfig;
    .param p19, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p20, "useBoundsForWidth"    # Z
    .param p21, "shiftDrawingOffsetForStartOverhang"    # Z
    .param p22, "minimumFontMetrics"    # Landroid/graphics/Paint$FontMetrics;

    .line 403
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p18

    move/from16 v19, p20

    move/from16 v20, p21

    move-object/from16 v21, p22

    invoke-direct/range {v0 .. v21}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;ZZLandroid/graphics/Paint$FontMetrics;)V

    .line 758
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Landroid/text/BoringLayout;->mDrawingBounds:Landroid/graphics/RectF;

    .line 412
    if-eqz v11, :cond_1

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v11, v1, :cond_0

    goto :goto_0

    .line 418
    :cond_0
    int-to-float v2, v10

    const/4 v4, 0x1

    move-object/from16 v1, p2

    move-object v5, v0

    move-object v3, v11

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    move-object v2, v1

    move-object v1, v0

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p7

    move-object v0, v5

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 421
    iput v10, v0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 422
    const/4 v1, 0x0

    move/from16 v8, p3

    move v6, v1

    .local v1, "trust":Z
    goto :goto_1

    .line 413
    .end local v1    # "trust":Z
    :cond_1
    :goto_0
    move/from16 v8, p3

    iput v8, v0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 414
    const/4 v1, 0x0

    iput v1, v0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 415
    iput v1, v0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 416
    const/4 v1, 0x1

    move v6, v1

    .line 425
    .local v6, "trust":Z
    :goto_1
    move/from16 v9, p9

    iput-boolean v9, v0, Landroid/text/BoringLayout;->mUseFallbackLineSpacing:Z

    .line 426
    invoke-virtual {v0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v5, p8

    move-object/from16 v4, p19

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZZZ)V

    .line 427
    return-void
.end method

.method private static greylist-max-o hasAnyInterestingChars(Ljava/lang/CharSequence;I)Z
    .locals 8
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "textLength"    # I

    .line 509
    const/16 v0, 0x1f4

    .line 510
    .local v0, "MAX_BUF_LEN":I
    const/16 v1, 0x1f4

    invoke-static {v1}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 512
    .local v1, "buffer":[C
    const/4 v2, 0x0

    .local v2, "start":I
    :goto_0
    const/4 v3, 0x0

    if-ge v2, p1, :cond_3

    .line 513
    add-int/lit16 v4, v2, 0x1f4

    :try_start_0
    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 517
    .local v4, "end":I
    invoke-static {p0, v2, v4, v1, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 519
    sub-int v3, v4, v2

    .line 520
    .local v3, "len":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_2

    .line 521
    aget-char v6, v1, v5

    .line 522
    .local v6, "c":C
    const/16 v7, 0xa

    if-eq v6, v7, :cond_1

    const/16 v7, 0x9

    if-eq v6, v7, :cond_1

    invoke-static {v6}, Landroid/text/TextUtils;->couldAffectRtl(C)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    goto :goto_2

    .line 520
    .end local v6    # "c":C
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 523
    .restart local v6    # "c":C
    :cond_1
    :goto_2
    nop

    .line 529
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    .line 523
    const/4 v7, 0x1

    return v7

    .line 512
    .end local v3    # "len":I
    .end local v4    # "end":I
    .end local v5    # "i":I
    .end local v6    # "c":C
    :cond_2
    add-int/lit16 v2, v2, 0x1f4

    goto :goto_0

    .line 529
    .end local v2    # "start":I
    :catchall_0
    move-exception v2

    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    .line 530
    throw v2

    .line 527
    :cond_3
    nop

    .line 529
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    .line 527
    return v3
.end method

.method public static whitelist isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Landroid/text/BoringLayout$Metrics;
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;

    .line 486
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "metrics"    # Landroid/text/BoringLayout$Metrics;

    .line 501
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-static {p0, p1, v0, p2}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    return-object v0
.end method

.method public static greylist isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p3, "metrics"    # Landroid/text/BoringLayout$Metrics;

    .line 542
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;ZLandroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;ZLandroid/graphics/Paint$FontMetrics;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .locals 17
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p3, "useFallbackLineSpacing"    # Z
    .param p4, "minimumFontMetrics"    # Landroid/graphics/Paint$FontMetrics;
    .param p5, "metrics"    # Landroid/text/BoringLayout$Metrics;

    .line 572
    move-object/from16 v2, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p4

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 573
    .local v4, "textLength":I
    invoke-static {v2, v4}, Landroid/text/BoringLayout;->hasAnyInterestingChars(Ljava/lang/CharSequence;I)Z

    move-result v0

    const/4 v14, 0x0

    if-eqz v0, :cond_0

    .line 574
    return-object v14

    .line 576
    :cond_0
    const/4 v15, 0x0

    if-eqz v12, :cond_1

    invoke-interface {v12, v2, v15, v4}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 577
    return-object v14

    .line 579
    :cond_1
    instance-of v0, v2, Landroid/text/Spanned;

    if-eqz v0, :cond_2

    .line 580
    move-object v0, v2

    check-cast v0, Landroid/text/Spanned;

    .line 581
    .local v0, "sp":Landroid/text/Spanned;
    const-class v1, Landroid/text/style/ParagraphStyle;

    invoke-interface {v0, v15, v4, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 582
    .local v1, "styles":[Ljava/lang/Object;
    array-length v3, v1

    if-lez v3, :cond_2

    .line 583
    return-object v14

    .line 587
    .end local v0    # "sp":Landroid/text/Spanned;
    .end local v1    # "styles":[Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p5

    .line 588
    .local v0, "fm":Landroid/text/BoringLayout$Metrics;
    if-nez v0, :cond_3

    .line 589
    new-instance v1, Landroid/text/BoringLayout$Metrics;

    invoke-direct {v1}, Landroid/text/BoringLayout$Metrics;-><init>()V

    move-object v0, v1

    goto :goto_0

    .line 591
    :cond_3
    invoke-static {v0}, Landroid/text/BoringLayout$Metrics;->-$$Nest$mreset(Landroid/text/BoringLayout$Metrics;)V

    .line 594
    :goto_0
    invoke-static {}, Lcom/android/text/flags/Flags;->fixLineHeightForLocale()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 595
    if-eqz v13, :cond_4

    .line 596
    invoke-virtual {v0, v13}, Landroid/text/BoringLayout$Metrics;->set(Landroid/graphics/Paint$FontMetrics;)V

    .line 600
    iget v1, v0, Landroid/text/BoringLayout$Metrics;->top:I

    iget v3, v0, Landroid/text/BoringLayout$Metrics;->ascent:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/text/BoringLayout$Metrics;->top:I

    .line 601
    iget v1, v0, Landroid/text/BoringLayout$Metrics;->bottom:I

    iget v3, v0, Landroid/text/BoringLayout$Metrics;->descent:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/text/BoringLayout$Metrics;->bottom:I

    .line 605
    :cond_4
    move-object v1, v0

    .end local v0    # "fm":Landroid/text/BoringLayout$Metrics;
    .local v1, "fm":Landroid/text/BoringLayout$Metrics;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 606
    .local v0, "line":Landroid/text/TextLine;
    sget-object v6, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v11, p3

    move-object/from16 v16, v1

    move-object/from16 v1, p1

    .end local v1    # "fm":Landroid/text/BoringLayout$Metrics;
    .local v16, "fm":Landroid/text/BoringLayout$Metrics;
    invoke-virtual/range {v0 .. v11}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 611
    invoke-static/range {v16 .. v16}, Landroid/text/BoringLayout$Metrics;->-$$Nest$fgetmDrawingBounds(Landroid/text/BoringLayout$Metrics;)Landroid/graphics/RectF;

    move-result-object v1

    move-object/from16 v2, v16

    .end local v16    # "fm":Landroid/text/BoringLayout$Metrics;
    .local v2, "fm":Landroid/text/BoringLayout$Metrics;
    invoke-virtual {v0, v2, v1, v15, v14}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZLandroid/text/TextLine$LineInfo;)F

    move-result v1

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v1, v5

    iput v1, v2, Landroid/text/BoringLayout$Metrics;->width:I

    .line 612
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 614
    return-object v2
.end method

.method public static whitelist isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;ZLandroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .locals 6
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p3, "useFallbackLineSpacing"    # Z
    .param p4, "metrics"    # Landroid/text/BoringLayout$Metrics;

    .line 563
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .end local p0    # "text":Ljava/lang/CharSequence;
    .end local p1    # "paint":Landroid/text/TextPaint;
    .end local p2    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local p3    # "useFallbackLineSpacing":Z
    .end local p4    # "metrics":Landroid/text/BoringLayout$Metrics;
    .local v0, "text":Ljava/lang/CharSequence;
    .local v1, "paint":Landroid/text/TextPaint;
    .local v2, "textDir":Landroid/text/TextDirectionHeuristic;
    .local v3, "useFallbackLineSpacing":Z
    .local v5, "metrics":Landroid/text/BoringLayout$Metrics;
    invoke-static/range {v0 .. v5}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;ZLandroid/graphics/Paint$FontMetrics;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;
    .locals 9
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "outerWidth"    # I
    .param p3, "align"    # Landroid/text/Layout$Alignment;
    .param p4, "spacingMult"    # F
    .param p5, "spacingAdd"    # F
    .param p6, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p7, "includePad"    # Z

    .line 67
    new-instance v0, Landroid/text/BoringLayout;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)V

    return-object v0
.end method

.method public static whitelist make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;
    .locals 11
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "outerWidth"    # I
    .param p3, "align"    # Landroid/text/Layout$Alignment;
    .param p4, "spacingmult"    # F
    .param p5, "spacingadd"    # F
    .param p6, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p7, "includePad"    # Z
    .param p8, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p9, "ellipsizedWidth"    # I

    .line 93
    new-instance v0, Landroid/text/BoringLayout;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V

    return-object v0
.end method

.method public static whitelist make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZ)Landroid/text/BoringLayout;
    .locals 12
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "outerWidth"    # I
    .param p3, "align"    # Landroid/text/Layout$Alignment;
    .param p4, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p5, "includePad"    # Z
    .param p6, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p7, "ellipsizedWidth"    # I
    .param p8, "useFallbackLineSpacing"    # Z

    .line 128
    new-instance v0, Landroid/text/BoringLayout;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZ)V

    return-object v0
.end method


# virtual methods
.method public whitelist computeDrawingBoundingBox()Landroid/graphics/RectF;
    .locals 1

    .line 713
    iget-object v0, p0, Landroid/text/BoringLayout;->mDrawingBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public whitelist draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "highlight"    # Landroid/graphics/Path;
    .param p3, "highlightpaint"    # Landroid/graphics/Paint;
    .param p4, "cursorOffset"    # I

    .line 720
    iget-object v0, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 721
    const/4 v0, 0x0

    .line 722
    .local v0, "leftShift":F
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getUseBoundsForWidth()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/text/BoringLayout;->getShiftDrawingOffsetForStartOverhang()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 723
    invoke-virtual {p0}, Landroid/text/BoringLayout;->computeDrawingBoundingBox()Landroid/graphics/RectF;

    move-result-object v1

    .line 724
    .local v1, "drawingRect":Landroid/graphics/RectF;
    iget v3, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, v2

    if-gez v3, :cond_0

    .line 725
    iget v3, v1, Landroid/graphics/RectF;->left:F

    neg-float v0, v3

    .line 726
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 730
    .end local v1    # "drawingRect":Landroid/graphics/RectF;
    :cond_0
    iget-object v1, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    iget v3, p0, Landroid/text/BoringLayout;->mBottom:I

    iget v4, p0, Landroid/text/BoringLayout;->mDesc:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Landroid/text/BoringLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 732
    cmpl-float v1, v0, v2

    if-eqz v1, :cond_1

    .line 735
    neg-float v1, v0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 737
    .end local v0    # "leftShift":F
    :cond_1
    goto :goto_0

    .line 738
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 740
    :goto_0
    return-void
.end method

.method public whitelist ellipsized(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 746
    iput p1, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 747
    sub-int v0, p2, p1

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 748
    return-void
.end method

.method public whitelist getBottomPadding()I
    .locals 1

    .line 688
    iget v0, p0, Landroid/text/BoringLayout;->mBottomPadding:I

    return v0
.end method

.method public whitelist getEllipsisCount(I)I
    .locals 1
    .param p1, "line"    # I

    .line 693
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    return v0
.end method

.method public whitelist getEllipsisStart(I)I
    .locals 1
    .param p1, "line"    # I

    .line 698
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    return v0
.end method

.method public whitelist getEllipsizedWidth()I
    .locals 1

    .line 703
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public whitelist getHeight()I
    .locals 1

    .line 619
    iget v0, p0, Landroid/text/BoringLayout;->mBottom:I

    return v0
.end method

.method public whitelist getLineContainsTab(I)Z
    .locals 1
    .param p1, "line"    # I

    .line 655
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getLineCount()I
    .locals 1

    .line 624
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getLineDescent(I)I
    .locals 1
    .param p1, "line"    # I

    .line 637
    iget v0, p0, Landroid/text/BoringLayout;->mDesc:I

    return v0
.end method

.method public final whitelist getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .param p1, "line"    # I

    .line 678
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v0
.end method

.method public whitelist getLineMax(I)F
    .locals 1
    .param p1, "line"    # I

    .line 660
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getUseBoundsForWidth()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    invoke-super {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v0

    return v0

    .line 663
    :cond_0
    iget v0, p0, Landroid/text/BoringLayout;->mMax:F

    return v0
.end method

.method public whitelist getLineStart(I)I
    .locals 1
    .param p1, "line"    # I

    .line 642
    if-nez p1, :cond_0

    .line 643
    const/4 v0, 0x0

    return v0

    .line 645
    :cond_0
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public whitelist getLineTop(I)I
    .locals 1
    .param p1, "line"    # I

    .line 629
    if-nez p1, :cond_0

    .line 630
    const/4 v0, 0x0

    return v0

    .line 632
    :cond_0
    iget v0, p0, Landroid/text/BoringLayout;->mBottom:I

    return v0
.end method

.method public whitelist getLineWidth(I)F
    .locals 1
    .param p1, "line"    # I

    .line 669
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getUseBoundsForWidth()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    invoke-super {p0, p1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    return v0

    .line 672
    :cond_0
    if-nez p1, :cond_1

    iget v0, p0, Landroid/text/BoringLayout;->mMax:F

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getParagraphDirection(I)I
    .locals 1
    .param p1, "line"    # I

    .line 650
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getTopPadding()I
    .locals 1

    .line 683
    iget v0, p0, Landroid/text/BoringLayout;->mTopPadding:I

    return v0
.end method

.method blacklist init(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZZZ)V
    .locals 17
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "align"    # Landroid/text/Layout$Alignment;
    .param p4, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p5, "includePad"    # Z
    .param p6, "trustWidth"    # Z
    .param p7, "useFallbackLineSpacing"    # Z

    .line 434
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v4, p1

    instance-of v2, v4, Ljava/lang/String;

    const/4 v14, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v15, p3

    if-ne v15, v2, :cond_1

    .line 435
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    goto :goto_0

    .line 434
    :cond_0
    move-object/from16 v15, p3

    .line 437
    :cond_1
    iput-object v14, v0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    .line 440
    :goto_0
    move-object/from16 v3, p2

    iput-object v3, v0, Landroid/text/BoringLayout;->mPaint:Landroid/graphics/Paint;

    .line 442
    if-eqz p5, :cond_2

    .line 443
    iget v2, v1, Landroid/text/BoringLayout$Metrics;->bottom:I

    iget v5, v1, Landroid/text/BoringLayout$Metrics;->top:I

    sub-int/2addr v2, v5

    .line 444
    .local v2, "spacing":I
    iget v5, v1, Landroid/text/BoringLayout$Metrics;->bottom:I

    iput v5, v0, Landroid/text/BoringLayout;->mDesc:I

    goto :goto_1

    .line 446
    .end local v2    # "spacing":I
    :cond_2
    iget v2, v1, Landroid/text/BoringLayout$Metrics;->descent:I

    iget v5, v1, Landroid/text/BoringLayout$Metrics;->ascent:I

    sub-int/2addr v2, v5

    .line 447
    .restart local v2    # "spacing":I
    iget v5, v1, Landroid/text/BoringLayout$Metrics;->descent:I

    iput v5, v0, Landroid/text/BoringLayout;->mDesc:I

    .line 450
    :goto_1
    iput v2, v0, Landroid/text/BoringLayout;->mBottom:I

    .line 452
    if-eqz p6, :cond_3

    .line 453
    iget v5, v1, Landroid/text/BoringLayout$Metrics;->width:I

    int-to-float v5, v5

    iput v5, v0, Landroid/text/BoringLayout;->mMax:F

    move/from16 v16, v2

    goto :goto_2

    .line 460
    :cond_3
    move v5, v2

    .end local v2    # "spacing":I
    .local v5, "spacing":I
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v2

    .line 461
    .local v2, "line":Landroid/text/TextLine;
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    sget-object v8, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    iget v11, v0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    iget v7, v0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    iget v9, v0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    add-int v12, v7, v9

    move v7, v5

    .end local v5    # "spacing":I
    .local v7, "spacing":I
    const/4 v5, 0x0

    move v9, v7

    .end local v7    # "spacing":I
    .local v9, "spacing":I
    const/4 v7, 0x1

    move v10, v9

    .end local v9    # "spacing":I
    .local v10, "spacing":I
    const/4 v9, 0x0

    move v13, v10

    .end local v10    # "spacing":I
    .local v13, "spacing":I
    const/4 v10, 0x0

    move/from16 v16, v13

    move/from16 v13, p7

    .end local v13    # "spacing":I
    .local v16, "spacing":I
    invoke-virtual/range {v2 .. v13}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 464
    const/4 v3, 0x0

    invoke-virtual {v2, v14, v14, v3, v14}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZLandroid/text/TextLine$LineInfo;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-float v3, v3

    iput v3, v0, Landroid/text/BoringLayout;->mMax:F

    .line 465
    invoke-static {v2}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 468
    .end local v2    # "line":Landroid/text/TextLine;
    :goto_2
    if-eqz p5, :cond_4

    .line 469
    iget v2, v1, Landroid/text/BoringLayout$Metrics;->top:I

    iget v3, v1, Landroid/text/BoringLayout$Metrics;->ascent:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/text/BoringLayout;->mTopPadding:I

    .line 470
    iget v2, v1, Landroid/text/BoringLayout$Metrics;->bottom:I

    iget v3, v1, Landroid/text/BoringLayout$Metrics;->descent:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/text/BoringLayout;->mBottomPadding:I

    .line 473
    :cond_4
    iget-object v2, v0, Landroid/text/BoringLayout;->mDrawingBounds:Landroid/graphics/RectF;

    invoke-static {v1}, Landroid/text/BoringLayout$Metrics;->-$$Nest$fgetmDrawingBounds(Landroid/text/BoringLayout$Metrics;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 474
    iget-object v2, v0, Landroid/text/BoringLayout;->mDrawingBounds:Landroid/graphics/RectF;

    iget v3, v0, Landroid/text/BoringLayout;->mBottom:I

    iget v4, v0, Landroid/text/BoringLayout;->mDesc:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 475
    return-void
.end method

.method public whitelist isFallbackLineSpacingEnabled()Z
    .locals 1

    .line 708
    iget-boolean v0, p0, Landroid/text/BoringLayout;->mUseFallbackLineSpacing:Z

    return v0
.end method

.method public whitelist replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;
    .locals 3
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "outerwidth"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingMult"    # F
    .param p6, "spacingAdd"    # F
    .param p7, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p8, "includePad"    # Z

    .line 151
    invoke-virtual/range {p0 .. p6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 153
    move v0, p3

    move v1, p5

    move v2, p6

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "source":Ljava/lang/CharSequence;
    .end local p5    # "spacingMult":F
    .end local p6    # "spacingAdd":F
    .local v0, "outerwidth":I
    .local v1, "spacingMult":F
    .local v2, "spacingAdd":F
    .local p2, "source":Ljava/lang/CharSequence;
    .local p3, "paint":Landroid/text/TextPaint;
    iput v0, p1, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 154
    const/4 p5, 0x0

    iput p5, p1, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 155
    iput p5, p1, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 156
    iput-boolean p5, p1, Landroid/text/BoringLayout;->mUseFallbackLineSpacing:Z

    .line 158
    move-object p5, p7

    .end local p7    # "metrics":Landroid/text/BoringLayout$Metrics;
    .local p5, "metrics":Landroid/text/BoringLayout$Metrics;
    const/4 p7, 0x1

    move p6, p8

    .end local p8    # "includePad":Z
    .local p6, "includePad":Z
    const/4 p8, 0x0

    invoke-virtual/range {p1 .. p8}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZZZ)V

    .line 159
    return-object p1
.end method

.method public whitelist replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;
    .locals 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "outerWidth"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingMult"    # F
    .param p6, "spacingAdd"    # F
    .param p7, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p8, "includePad"    # Z
    .param p9, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p10, "ellipsizedWidth"    # I

    .line 255
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    move/from16 v8, p10

    invoke-virtual/range {v0 .. v9}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZ)Landroid/text/BoringLayout;

    move-result-object v9

    return-object v9
.end method

.method public blacklist replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZZLandroid/graphics/Paint$FontMetrics;)Landroid/text/BoringLayout;
    .locals 9
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "outerWidth"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingMultiplier"    # F
    .param p6, "spacingAmount"    # F
    .param p7, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p8, "includePad"    # Z
    .param p9, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p10, "ellipsizedWidth"    # I
    .param p11, "useFallbackLineSpacing"    # Z
    .param p12, "useBoundsForWidth"    # Z
    .param p13, "minimumFontMetrics"    # Landroid/graphics/Paint$FontMetrics;

    .line 209
    move-object/from16 v3, p9

    move/from16 v8, p10

    if-eqz v3, :cond_1

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v3, v0, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    int-to-float v2, v8

    const/4 v4, 0x1

    move-object v5, p0

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    move-object v2, v1

    move-object v1, v0

    move v3, p3

    move-object v4, p4

    move v6, p6

    move-object v0, v5

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 220
    iput v8, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 221
    const/4 v1, 0x0

    move v6, v1

    .local v1, "trust":Z
    goto :goto_1

    .line 210
    .end local v1    # "trust":Z
    :cond_1
    :goto_0
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 212
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 213
    const/4 v1, 0x0

    iput v1, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 214
    iput v1, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 215
    const/4 v1, 0x1

    move v6, v1

    .line 224
    .local v6, "trust":Z
    :goto_1
    move/from16 v7, p11

    iput-boolean v7, p0, Landroid/text/BoringLayout;->mUseFallbackLineSpacing:Z

    .line 226
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p4

    move-object/from16 v4, p7

    move/from16 v5, p8

    invoke-virtual/range {v0 .. v7}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZZZ)V

    .line 228
    return-object p0
.end method

.method public whitelist replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZ)Landroid/text/BoringLayout;
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "outerWidth"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p6, "includePad"    # Z
    .param p7, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p8, "ellipsizedWidth"    # I
    .param p9, "useFallbackLineSpacing"    # Z

    .line 194
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v0 .. v13}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZZLandroid/graphics/Paint$FontMetrics;)Landroid/text/BoringLayout;

    move-result-object v5

    return-object v5
.end method
