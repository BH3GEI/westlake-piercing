.class public Landroid/text/DynamicLayout;
.super Landroid/text/Layout;
.source "DynamicLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/DynamicLayout$Builder;,
        Landroid/text/DynamicLayout$ChangeWatcher;
    }
.end annotation


# static fields
.field private static final greylist-max-o BLOCK_MINIMUM_CHARACTER_LENGTH:I = 0x190

.field private static final greylist-max-o COLUMNS_ELLIPSIZE:I = 0x7

.field private static final greylist-max-o COLUMNS_NORMAL:I = 0x5

.field private static final greylist-max-o DESCENT:I = 0x2

.field private static final greylist-max-o DIR:I = 0x0

.field private static final greylist-max-o DIR_SHIFT:I = 0x1e

.field private static final greylist-max-o ELLIPSIS_COUNT:I = 0x6

.field private static final greylist-max-o ELLIPSIS_START:I = 0x5

.field private static final greylist-max-o ELLIPSIS_UNDEFINED:I = -0x80000000

.field private static final greylist-max-o EXTRA:I = 0x3

.field private static final greylist-max-o HYPHEN:I = 0x4

.field private static final greylist-max-o HYPHEN_MASK:I = 0xff

.field public static final greylist-max-o INVALID_BLOCK_INDEX:I = -0x1

.field private static final greylist-max-o MAY_PROTRUDE_FROM_TOP_OR_BOTTOM:I = 0x4

.field private static final greylist-max-o MAY_PROTRUDE_FROM_TOP_OR_BOTTOM_MASK:I = 0x100

.field private static final greylist-max-o PRIORITY:I = 0x80

.field private static final greylist-max-o START:I = 0x0

.field private static final greylist-max-o START_MASK:I = 0x1fffffff

.field private static final greylist-max-o TAB:I = 0x0

.field private static final greylist-max-o TAB_MASK:I = 0x20000000

.field private static final greylist-max-o TOP:I = 0x1

.field private static greylist-max-o sBuilder:Landroid/text/StaticLayout$Builder;

.field private static final greylist-max-o sLock:[Ljava/lang/Object;

.field private static greylist sStaticLayout:Landroid/text/StaticLayout;


# instance fields
.field private greylist-max-o mBase:Ljava/lang/CharSequence;

.field private greylist-max-o mBlockEndLines:[I

.field private greylist-max-o mBlockIndices:[I

.field private greylist-max-o mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mBottomPadding:I

.field private greylist-max-o mBreakStrategy:I

.field private greylist-max-o mDisplay:Ljava/lang/CharSequence;

.field private greylist-max-o mEllipsize:Z

.field private greylist-max-o mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

.field private greylist-max-o mEllipsizedWidth:I

.field private greylist-max-o mFallbackLineSpacing:Z

.field private greylist-max-o mHyphenationFrequency:I

.field private greylist-max-o mIncludePad:Z

.field private greylist-max-o mIndexFirstChangedBlock:I

.field private greylist-max-o mInts:Landroid/text/PackedIntVector;

.field private greylist-max-o mJustificationMode:I

.field private blacklist mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

.field blacklist mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private greylist-max-o mNumberOfBlocks:I

.field private greylist-max-o mObjects:Landroid/text/PackedObjectVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/PackedObjectVector<",
            "Landroid/text/Layout$Directions;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mShiftDrawingOffsetForStartOverhang:Z

.field private greylist-max-o mTempRect:Landroid/graphics/Rect;

.field private greylist-max-o mTopPadding:I

.field private blacklist mUseBoundsForWidth:Z

.field private greylist-max-o mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDisplay(Landroid/text/DynamicLayout;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 1443
    const/4 v0, 0x0

    sput-object v0, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 1444
    sput-object v0, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;

    .line 1446
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/text/DynamicLayout$Builder;)V
    .locals 22
    .param p1, "b"    # Landroid/text/DynamicLayout$Builder;

    .line 519
    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmDisplay(Landroid/text/DynamicLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/DynamicLayout;->createEllipsizer(Landroid/text/TextUtils$TruncateAt;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmPaint(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmWidth(Landroid/text/DynamicLayout$Builder;)I

    move-result v3

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmAlignment(Landroid/text/DynamicLayout$Builder;)Landroid/text/Layout$Alignment;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmTextDir(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextDirectionHeuristic;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmSpacingMult(Landroid/text/DynamicLayout$Builder;)F

    move-result v6

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmSpacingAdd(Landroid/text/DynamicLayout$Builder;)F

    move-result v7

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmIncludePad(Landroid/text/DynamicLayout$Builder;)Z

    move-result v8

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmFallbackLineSpacing(Landroid/text/DynamicLayout$Builder;)Z

    move-result v9

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmEllipsizedWidth(Landroid/text/DynamicLayout$Builder;)I

    move-result v10

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmBreakStrategy(Landroid/text/DynamicLayout$Builder;)I

    move-result v13

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmHyphenationFrequency(Landroid/text/DynamicLayout$Builder;)I

    move-result v14

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmJustificationMode(Landroid/text/DynamicLayout$Builder;)I

    move-result v17

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmLineBreakConfig(Landroid/text/DynamicLayout$Builder;)Landroid/graphics/text/LineBreakConfig;

    move-result-object v18

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmUseBoundsForWidth(Landroid/text/DynamicLayout$Builder;)Z

    move-result v19

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmShiftDrawingOffsetForStartOverhang(Landroid/text/DynamicLayout$Builder;)Z

    move-result v20

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmMinimumFontMetrics(Landroid/text/DynamicLayout$Builder;)Landroid/graphics/Paint$FontMetrics;

    move-result-object v21

    const v12, 0x7fffffff

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v21}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;ZZLandroid/graphics/Paint$FontMetrics;)V

    .line 1436
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    .line 527
    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmDisplay(Landroid/text/DynamicLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 528
    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmIncludePad(Landroid/text/DynamicLayout$Builder;)Z

    move-result v1

    iput-boolean v1, v0, Landroid/text/DynamicLayout;->mIncludePad:Z

    .line 529
    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmBreakStrategy(Landroid/text/DynamicLayout$Builder;)I

    move-result v1

    iput v1, v0, Landroid/text/DynamicLayout;->mBreakStrategy:I

    .line 530
    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmJustificationMode(Landroid/text/DynamicLayout$Builder;)I

    move-result v1

    iput v1, v0, Landroid/text/DynamicLayout;->mJustificationMode:I

    .line 531
    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmHyphenationFrequency(Landroid/text/DynamicLayout$Builder;)I

    move-result v1

    iput v1, v0, Landroid/text/DynamicLayout;->mHyphenationFrequency:I

    .line 532
    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmLineBreakConfig(Landroid/text/DynamicLayout$Builder;)Landroid/graphics/text/LineBreakConfig;

    move-result-object v1

    iput-object v1, v0, Landroid/text/DynamicLayout;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    .line 534
    invoke-direct/range {p0 .. p1}, Landroid/text/DynamicLayout;->generate(Landroid/text/DynamicLayout$Builder;)V

    .line 535
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/text/DynamicLayout$Builder;Landroid/text/DynamicLayout-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/text/DynamicLayout;-><init>(Landroid/text/DynamicLayout$Builder;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 9
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "includepad"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 437
    move-object v2, p1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 439
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 11
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "display"    # Ljava/lang/CharSequence;
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I
    .param p5, "align"    # Landroid/text/Layout$Alignment;
    .param p6, "spacingmult"    # F
    .param p7, "spacingadd"    # F
    .param p8, "includepad"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 450
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 452
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 16
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "display"    # Ljava/lang/CharSequence;
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I
    .param p5, "align"    # Landroid/text/Layout$Alignment;
    .param p6, "spacingmult"    # F
    .param p7, "spacingadd"    # F
    .param p8, "includepad"    # Z
    .param p9, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p10, "ellipsizedWidth"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 465
    sget-object v6, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v12, 0x0

    sget-object v13, Landroid/graphics/text/LineBreakConfig;->NONE:Landroid/graphics/text/LineBreakConfig;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v14, p9

    move/from16 v15, p10

    invoke-direct/range {v0 .. v15}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZIIILandroid/graphics/text/LineBreakConfig;Landroid/text/TextUtils$TruncateAt;I)V

    .line 469
    return-void
.end method

.method public constructor greylist-max-p <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZIIILandroid/graphics/text/LineBreakConfig;Landroid/text/TextUtils$TruncateAt;I)V
    .locals 22
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "display"    # Ljava/lang/CharSequence;
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I
    .param p5, "align"    # Landroid/text/Layout$Alignment;
    .param p6, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "breakStrategy"    # I
    .param p11, "hyphenationFrequency"    # I
    .param p12, "justificationMode"    # I
    .param p13, "lineBreakConfig"    # Landroid/graphics/text/LineBreakConfig;
    .param p14, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p15, "ellipsizedWidth"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 492
    move-object/from16 v0, p2

    move-object/from16 v11, p14

    invoke-static {v11, v0}, Landroid/text/DynamicLayout;->createEllipsizer(Landroid/text/TextUtils$TruncateAt;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v9, 0x0

    const v12, 0x7fffffff

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v17, p12

    move-object/from16 v18, p13

    move/from16 v10, p15

    invoke-direct/range {v0 .. v21}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;ZZLandroid/graphics/Paint$FontMetrics;)V

    .line 1436
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    .line 500
    move-object/from16 v1, p1

    invoke-static {v1, v2, v3}, Landroid/text/DynamicLayout$Builder;->obtain(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/DynamicLayout$Builder;

    move-result-object v4

    .line 501
    move-object/from16 v5, p5

    invoke-virtual {v4, v5}, Landroid/text/DynamicLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/DynamicLayout$Builder;

    move-result-object v4

    .line 502
    move-object/from16 v6, p6

    invoke-virtual {v4, v6}, Landroid/text/DynamicLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/DynamicLayout$Builder;

    move-result-object v4

    .line 503
    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual {v4, v8, v7}, Landroid/text/DynamicLayout$Builder;->setLineSpacing(FF)Landroid/text/DynamicLayout$Builder;

    move-result-object v4

    .line 504
    invoke-virtual {v4, v10}, Landroid/text/DynamicLayout$Builder;->setEllipsizedWidth(I)Landroid/text/DynamicLayout$Builder;

    move-result-object v4

    .line 505
    invoke-virtual {v4, v11}, Landroid/text/DynamicLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/DynamicLayout$Builder;

    move-result-object v4

    .line 506
    .local v4, "b":Landroid/text/DynamicLayout$Builder;
    move-object/from16 v9, p2

    iput-object v9, v0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 507
    move/from16 v12, p9

    iput-boolean v12, v0, Landroid/text/DynamicLayout;->mIncludePad:Z

    .line 508
    iput v13, v0, Landroid/text/DynamicLayout;->mBreakStrategy:I

    .line 509
    move/from16 v14, p12

    iput v14, v0, Landroid/text/DynamicLayout;->mJustificationMode:I

    .line 510
    move/from16 v15, p11

    iput v15, v0, Landroid/text/DynamicLayout;->mHyphenationFrequency:I

    .line 511
    move-object/from16 v1, p13

    iput-object v1, v0, Landroid/text/DynamicLayout;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    .line 513
    invoke-direct {v0, v4}, Landroid/text/DynamicLayout;->generate(Landroid/text/DynamicLayout$Builder;)V

    .line 515
    invoke-static {v4}, Landroid/text/DynamicLayout$Builder;->-$$Nest$smrecycle(Landroid/text/DynamicLayout$Builder;)V

    .line 516
    return-void
.end method

.method private greylist-max-o addBlockAtOffset(I)V
    .locals 5
    .param p1, "offset"    # I

    .line 921
    invoke-virtual {p0, p1}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result v0

    .line 922
    .local v0, "line":I
    iget-object v1, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 924
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 925
    iget-object v1, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    aput v0, v1, v3

    .line 926
    iget v1, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    invoke-direct {p0, v1}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    .line 927
    iget v1, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 928
    return-void

    .line 931
    :cond_0
    iget-object v1, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    sub-int/2addr v3, v2

    aget v1, v1, v3

    .line 932
    .local v1, "previousBlockEndLine":I
    if-le v0, v1, :cond_1

    .line 933
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget v4, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    invoke-static {v3, v4, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v3

    iput-object v3, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 934
    iget v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    invoke-direct {p0, v3}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    .line 935
    iget v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int/2addr v3, v2

    iput v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 937
    :cond_1
    return-void
.end method

.method private greylist-max-o contentMayProtrudeFromLineTopOrBottom(Ljava/lang/CharSequence;II)Z
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 845
    instance-of v0, p1, Landroid/text/Spanned;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 846
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    .line 847
    .local v0, "spanned":Landroid/text/Spanned;
    const-class v2, Landroid/text/style/ReplacementSpan;

    invoke-interface {v0, p2, p3, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ReplacementSpan;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 848
    return v1

    .line 853
    .end local v0    # "spanned":Landroid/text/Spanned;
    :cond_0
    invoke-virtual {p0}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 854
    .local v0, "paint":Landroid/graphics/Paint;
    instance-of v2, p1, Landroid/text/PrecomputedText;

    if-eqz v2, :cond_1

    .line 855
    move-object v2, p1

    check-cast v2, Landroid/text/PrecomputedText;

    .line 856
    .local v2, "precomputed":Landroid/text/PrecomputedText;
    iget-object v3, p0, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2, p3, v3}, Landroid/text/PrecomputedText;->getBounds(IILandroid/graphics/Rect;)V

    .line 857
    .end local v2    # "precomputed":Landroid/text/PrecomputedText;
    goto :goto_0

    .line 858
    :cond_1
    iget-object v2, p0, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/CharSequence;IILandroid/graphics/Rect;)V

    .line 860
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    .line 861
    .local v2, "fm":Landroid/graphics/Paint$FontMetricsInt;
    iget-object v3, p0, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    if-lt v3, v4, :cond_3

    iget-object v3, p0, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    if-le v3, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    return v1
.end method

.method private greylist-max-o createBlocks()V
    .locals 5

    .line 869
    const/16 v0, 0x190

    .line 870
    .local v0, "offset":I
    const/4 v1, 0x0

    iput v1, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 871
    iget-object v1, p0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 874
    .local v1, "text":Ljava/lang/CharSequence;
    :goto_0
    const/16 v2, 0xa

    invoke-static {v1, v2, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    .line 875
    if-gez v0, :cond_1

    .line 876
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/text/DynamicLayout;->addBlockAtOffset(I)V

    .line 877
    nop

    .line 885
    iget-object v2, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .line 886
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 887
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    const/4 v4, -0x1

    aput v4, v3, v2

    .line 886
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 889
    .end local v2    # "i":I
    :cond_0
    return-void

    .line 879
    :cond_1
    invoke-direct {p0, v0}, Landroid/text/DynamicLayout;->addBlockAtOffset(I)V

    .line 880
    add-int/lit16 v0, v0, 0x190

    goto :goto_0
.end method

.method private static greylist-max-o createEllipsizer(Landroid/text/TextUtils$TruncateAt;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p1, "display"    # Ljava/lang/CharSequence;

    .line 540
    if-nez p0, :cond_0

    .line 541
    return-object p1

    .line 542
    :cond_0
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    .line 543
    new-instance v0, Landroid/text/Layout$SpannedEllipsizer;

    invoke-direct {v0, p1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    .line 545
    :cond_1
    new-instance v0, Landroid/text/Layout$Ellipsizer;

    invoke-direct {v0, p1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private greylist-max-o generate(Landroid/text/DynamicLayout$Builder;)V
    .locals 11
    .param p1, "b"    # Landroid/text/DynamicLayout$Builder;

    .line 550
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmBase(Landroid/text/DynamicLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    .line 551
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmFallbackLineSpacing(Landroid/text/DynamicLayout$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/text/DynamicLayout;->mFallbackLineSpacing:Z

    .line 552
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmUseBoundsForWidth(Landroid/text/DynamicLayout$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/text/DynamicLayout;->mUseBoundsForWidth:Z

    .line 553
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmShiftDrawingOffsetForStartOverhang(Landroid/text/DynamicLayout$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/text/DynamicLayout;->mShiftDrawingOffsetForStartOverhang:Z

    .line 554
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmMinimumFontMetrics(Landroid/text/DynamicLayout$Builder;)Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Landroid/text/DynamicLayout;->mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 555
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 556
    new-instance v0, Landroid/text/PackedIntVector;

    invoke-direct {v0, v1}, Landroid/text/PackedIntVector;-><init>(I)V

    iput-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    .line 557
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmEllipsizedWidth(Landroid/text/DynamicLayout$Builder;)I

    move-result v0

    iput v0, p0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    .line 558
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    iput-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    .line 574
    invoke-virtual {p0}, Landroid/text/DynamicLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Ellipsizer;

    .line 575
    .local v0, "e":Landroid/text/Layout$Ellipsizer;
    iput-object p0, v0, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 576
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmEllipsizedWidth(Landroid/text/DynamicLayout$Builder;)I

    move-result v4

    iput v4, v0, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 577
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v4

    iput-object v4, v0, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 578
    iput-boolean v3, p0, Landroid/text/DynamicLayout;->mEllipsize:Z

    .line 579
    .end local v0    # "e":Landroid/text/Layout$Ellipsizer;
    goto :goto_0

    .line 580
    :cond_0
    new-instance v0, Landroid/text/PackedIntVector;

    invoke-direct {v0, v2}, Landroid/text/PackedIntVector;-><init>(I)V

    iput-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    .line 581
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmWidth(Landroid/text/DynamicLayout$Builder;)I

    move-result v0

    iput v0, p0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    .line 582
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    .line 585
    :goto_0
    new-instance v0, Landroid/text/PackedObjectVector;

    invoke-direct {v0, v3}, Landroid/text/PackedObjectVector;-><init>(I)V

    iput-object v0, p0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    .line 592
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 593
    new-array v0, v1, [I

    .line 594
    .local v0, "start":[I
    const/high16 v1, -0x80000000

    aput v1, v0, v2

    goto :goto_1

    .line 596
    .end local v0    # "start":[I
    :cond_1
    new-array v0, v2, [I

    .line 599
    .restart local v0    # "start":[I
    :goto_1
    new-array v1, v3, [Landroid/text/Layout$Directions;

    sget-object v2, Landroid/text/DynamicLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 601
    .local v1, "dirs":[Landroid/text/Layout$Directions;
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmFontMetricsInt(Landroid/text/DynamicLayout$Builder;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    .line 602
    .local v2, "fm":Landroid/graphics/Paint$FontMetricsInt;
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmPaint(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 603
    iget v5, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 604
    .local v5, "asc":I
    iget v6, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 606
    .local v6, "desc":I
    const/high16 v7, 0x40000000    # 2.0f

    aput v7, v0, v4

    .line 607
    aput v4, v0, v3

    .line 608
    const/4 v7, 0x2

    aput v6, v0, v7

    .line 609
    iget-object v7, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v7, v4, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 611
    sub-int v7, v6, v5

    aput v7, v0, v3

    .line 612
    iget-object v7, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v7, v3, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 614
    iget-object v3, p0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    invoke-virtual {v3, v4, v1}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    .line 617
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    iget-object v7, p0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {p0, v3, v4, v4, v7}, Landroid/text/DynamicLayout;->reflow(Ljava/lang/CharSequence;III)V

    .line 619
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spannable;

    if-eqz v3, :cond_4

    .line 620
    iget-object v3, p0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    if-nez v3, :cond_2

    .line 621
    new-instance v3, Landroid/text/DynamicLayout$ChangeWatcher;

    invoke-direct {v3, p0}, Landroid/text/DynamicLayout$ChangeWatcher;-><init>(Landroid/text/DynamicLayout;)V

    iput-object v3, p0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    .line 624
    :cond_2
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    .line 625
    .local v3, "sp":Landroid/text/Spannable;
    iget-object v7, p0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 626
    .local v7, "baseLength":I
    const-class v8, Landroid/text/DynamicLayout$ChangeWatcher;

    invoke-interface {v3, v4, v7, v8}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/DynamicLayout$ChangeWatcher;

    .line 627
    .local v8, "spans":[Landroid/text/DynamicLayout$ChangeWatcher;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    array-length v10, v8

    if-ge v9, v10, :cond_3

    .line 628
    aget-object v10, v8, v9

    invoke-interface {v3, v10}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 627
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 631
    .end local v9    # "i":I
    :cond_3
    iget-object v9, p0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    const v10, 0x800012

    invoke-interface {v3, v9, v4, v7, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 635
    .end local v3    # "sp":Landroid/text/Spannable;
    .end local v7    # "baseLength":I
    .end local v8    # "spans":[Landroid/text/DynamicLayout$ChangeWatcher;
    :cond_4
    return-void
.end method

.method private greylist-max-o getContentMayProtrudeFromTopOrBottom(I)Z
    .locals 2
    .param p1, "line"    # I

    .line 1216
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o updateAlwaysNeedsToBeRedrawn(I)V
    .locals 5
    .param p1, "blockIndex"    # I

    .line 899
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 900
    .local v0, "startLine":I
    :goto_0
    iget-object v1, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v1, v1, p1

    .line 901
    .local v1, "endLine":I
    move v2, v0

    .local v2, "i":I
    :goto_1
    if-gt v2, v1, :cond_3

    .line 902
    invoke-direct {p0, v2}, Landroid/text/DynamicLayout;->getContentMayProtrudeFromTopOrBottom(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 903
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    if-nez v3, :cond_1

    .line 904
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    .line 906
    :cond_1
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 907
    return-void

    .line 901
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 910
    .end local v2    # "i":I
    :cond_3
    iget-object v2, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    if-eqz v2, :cond_4

    .line 911
    iget-object v2, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 913
    :cond_4
    return-void
.end method


# virtual methods
.method public greylist getBlockEndLines()[I
    .locals 1

    .line 1096
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    return-object v0
.end method

.method public greylist-max-o getBlockIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .line 1111
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    aget v0, v0, p1

    return v0
.end method

.method public greylist getBlockIndices()[I
    .locals 1

    .line 1104
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    return-object v0
.end method

.method public greylist-max-o getBlocksAlwaysNeedToBeRedrawn()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 895
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    return-object v0
.end method

.method public whitelist getBottomPadding()I
    .locals 1

    .line 1196
    iget v0, p0, Landroid/text/DynamicLayout;->mBottomPadding:I

    return v0
.end method

.method public whitelist getEllipsisCount(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1381
    iget-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    .line 1382
    const/4 v0, 0x0

    return v0

    .line 1385
    :cond_0
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x6

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public whitelist getEllipsisStart(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1372
    iget-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    .line 1373
    const/4 v0, 0x0

    return v0

    .line 1376
    :cond_0
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public whitelist getEllipsizedWidth()I
    .locals 1

    .line 1222
    iget v0, p0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public blacklist getEndHyphenEdit(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1212
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Landroid/text/StaticLayout;->unpackEndHyphenEdit(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-r getIndexFirstChangedBlock()I
    .locals 1

    .line 1135
    iget v0, p0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    return v0
.end method

.method public whitelist getLineBreakConfig()Landroid/graphics/text/LineBreakConfig;
    .locals 1

    .line 1397
    iget-object v0, p0, Landroid/text/DynamicLayout;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    return-object v0
.end method

.method public whitelist getLineContainsTab(I)Z
    .locals 3
    .param p1, "line"    # I

    .line 1176
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    const/high16 v2, 0x20000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public whitelist getLineCount()I
    .locals 1

    .line 1148
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public whitelist getLineDescent(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1158
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public final whitelist getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 2
    .param p1, "line"    # I

    .line 1186
    iget-object v0, p0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedObjectVector;->getValue(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Directions;

    return-object v0
.end method

.method public greylist-max-o getLineExtra(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1166
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public whitelist getLineStart(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1171
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public whitelist getLineTop(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1153
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public greylist getNumberOfBlocks()I
    .locals 1

    .line 1127
    iget v0, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    return v0
.end method

.method public whitelist getParagraphDirection(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1181
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public blacklist getStartHyphenEdit(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1204
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Landroid/text/StaticLayout;->unpackStartHyphenEdit(I)I

    move-result v0

    return v0
.end method

.method public whitelist getTopPadding()I
    .locals 1

    .line 1191
    iget v0, p0, Landroid/text/DynamicLayout;->mTopPadding:I

    return v0
.end method

.method public greylist-max-o reflow(Ljava/lang/CharSequence;III)V
    .locals 30
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "where"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .line 640
    move-object/from16 v1, p0

    iget-object v0, v1, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    move-object/from16 v2, p1

    if-eq v2, v0, :cond_0

    .line 641
    return-void

    .line 643
    :cond_0
    iget-object v3, v1, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 644
    .local v3, "text":Ljava/lang/CharSequence;
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 648
    .local v4, "len":I
    add-int/lit8 v0, p2, -0x1

    const/16 v5, 0xa

    invoke-static {v3, v5, v0}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    .line 649
    .local v0, "find":I
    const/4 v6, 0x1

    if-gez v0, :cond_1

    .line 650
    const/4 v0, 0x0

    move v7, v0

    goto :goto_0

    .line 652
    :cond_1
    add-int/2addr v0, v6

    move v7, v0

    .line 655
    .end local v0    # "find":I
    .local v7, "find":I
    :goto_0
    sub-int v0, p2, v7

    .line 656
    .local v0, "diff":I
    add-int v8, p3, v0

    .line 657
    .end local p3    # "before":I
    .local v8, "before":I
    add-int v9, p4, v0

    .line 658
    .end local p4    # "after":I
    .local v9, "after":I
    sub-int v0, p2, v0

    .line 663
    .end local p2    # "where":I
    .local v0, "where":I
    add-int v10, v0, v9

    invoke-static {v3, v5, v10}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v5

    .line 664
    .local v5, "look":I
    if-gez v5, :cond_2

    .line 665
    move v5, v4

    goto :goto_1

    .line 667
    :cond_2
    add-int/2addr v5, v6

    .line 669
    :goto_1
    add-int v10, v0, v9

    sub-int v10, v5, v10

    .line 670
    .local v10, "change":I
    add-int/2addr v8, v10

    .line 671
    add-int/2addr v9, v10

    .line 675
    instance-of v11, v3, Landroid/text/Spanned;

    if-eqz v11, :cond_7

    .line 676
    move-object v11, v3

    check-cast v11, Landroid/text/Spanned;

    .line 680
    .local v11, "sp":Landroid/text/Spanned;
    :goto_2
    const/4 v12, 0x0

    .line 682
    .local v12, "again":Z
    add-int v13, v0, v9

    const-class v14, Landroid/text/style/WrapTogetherSpan;

    invoke-interface {v11, v0, v13, v14}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    .line 685
    .local v13, "force":[Ljava/lang/Object;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    array-length v15, v13

    if-ge v14, v15, :cond_5

    .line 686
    aget-object v15, v13, v14

    invoke-interface {v11, v15}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    .line 687
    .local v15, "st":I
    aget-object v6, v13, v14

    invoke-interface {v11, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 689
    .local v6, "en":I
    if-ge v15, v0, :cond_3

    .line 690
    const/4 v12, 0x1

    .line 692
    sub-int v17, v0, v15

    .line 693
    .local v17, "diff":I
    add-int v8, v8, v17

    .line 694
    add-int v9, v9, v17

    .line 695
    sub-int v0, v0, v17

    .line 698
    .end local v17    # "diff":I
    :cond_3
    move/from16 p2, v0

    .end local v0    # "where":I
    .restart local p2    # "where":I
    add-int v0, p2, v9

    if-le v6, v0, :cond_4

    .line 699
    const/4 v0, 0x1

    .line 701
    .end local v12    # "again":Z
    .local v0, "again":Z
    add-int v12, p2, v9

    sub-int v12, v6, v12

    .line 702
    .local v12, "diff":I
    add-int/2addr v8, v12

    .line 703
    add-int/2addr v9, v12

    move v12, v0

    .line 685
    .end local v0    # "again":Z
    .end local v6    # "en":I
    .end local v15    # "st":I
    .local v12, "again":Z
    :cond_4
    add-int/lit8 v14, v14, 0x1

    move/from16 v0, p2

    const/4 v6, 0x1

    goto :goto_3

    .line 706
    .end local v13    # "force":[Ljava/lang/Object;
    .end local v14    # "i":I
    .end local p2    # "where":I
    .local v0, "where":I
    :cond_5
    if-nez v12, :cond_6

    move v6, v0

    goto :goto_4

    :cond_6
    const/4 v6, 0x1

    goto :goto_2

    .line 675
    .end local v11    # "sp":Landroid/text/Spanned;
    .end local v12    # "again":Z
    :cond_7
    move v6, v0

    .line 711
    .end local v0    # "where":I
    .local v6, "where":I
    :goto_4
    invoke-virtual {v1, v6}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result v11

    .line 712
    .local v11, "startline":I
    invoke-virtual {v1, v11}, Landroid/text/DynamicLayout;->getLineTop(I)I

    move-result v12

    .line 714
    .local v12, "startv":I
    add-int v0, v6, v8

    invoke-virtual {v1, v0}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result v0

    .line 715
    .local v0, "endline":I
    add-int v13, v6, v9

    if-ne v13, v4, :cond_8

    .line 716
    invoke-virtual {v1}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v0

    move v13, v0

    goto :goto_5

    .line 715
    :cond_8
    move v13, v0

    .line 717
    .end local v0    # "endline":I
    .local v13, "endline":I
    :goto_5
    invoke-virtual {v1, v13}, Landroid/text/DynamicLayout;->getLineTop(I)I

    move-result v14

    .line 718
    .local v14, "endv":I
    invoke-virtual {v1}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v0

    if-ne v13, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    :goto_6
    move/from16 v17, v0

    .line 725
    .local v17, "islast":Z
    sget-object v18, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    monitor-enter v18

    .line 726
    :try_start_0
    sget-object v0, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 727
    .local v0, "reflowed":Landroid/text/StaticLayout;
    sget-object v19, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;

    .line 728
    .local v19, "b":Landroid/text/StaticLayout$Builder;
    const/16 v20, 0x0

    sput-object v20, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 729
    sput-object v20, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;

    .line 730
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 732
    if-nez v19, :cond_a

    .line 733
    add-int v15, v6, v9

    invoke-virtual {v1}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    move/from16 p3, v5

    .end local v5    # "look":I
    .local p3, "look":I
    invoke-virtual {v1}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v5

    invoke-static {v3, v6, v15, v2, v5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v19

    move-object/from16 v2, v19

    goto :goto_7

    .line 732
    .end local p3    # "look":I
    .restart local v5    # "look":I
    :cond_a
    move/from16 p3, v5

    .end local v5    # "look":I
    .restart local p3    # "look":I
    move-object/from16 v2, v19

    .line 736
    .end local v19    # "b":Landroid/text/StaticLayout$Builder;
    .local v2, "b":Landroid/text/StaticLayout$Builder;
    :goto_7
    add-int v5, v6, v9

    invoke-virtual {v2, v3, v6, v5}, Landroid/text/StaticLayout$Builder;->setText(Ljava/lang/CharSequence;II)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    .line 737
    invoke-virtual {v1}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v15

    invoke-virtual {v5, v15}, Landroid/text/StaticLayout$Builder;->setPaint(Landroid/text/TextPaint;)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    .line 738
    invoke-virtual {v1}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v15

    invoke-virtual {v5, v15}, Landroid/text/StaticLayout$Builder;->setWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    .line 739
    invoke-virtual {v1}, Landroid/text/DynamicLayout;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v15

    invoke-virtual {v5, v15}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    .line 740
    invoke-virtual {v1}, Landroid/text/DynamicLayout;->getSpacingAdd()F

    move-result v15

    move/from16 v19, v6

    .end local v6    # "where":I
    .local v19, "where":I
    invoke-virtual {v1}, Landroid/text/DynamicLayout;->getSpacingMultiplier()F

    move-result v6

    invoke-virtual {v5, v15, v6}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    iget-boolean v6, v1, Landroid/text/DynamicLayout;->mFallbackLineSpacing:Z

    .line 741
    invoke-virtual {v5, v6}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    iget v6, v1, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    .line 742
    invoke-virtual {v5, v6}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    iget-object v6, v1, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    .line 743
    invoke-virtual {v5, v6}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    iget v6, v1, Landroid/text/DynamicLayout;->mBreakStrategy:I

    .line 744
    invoke-virtual {v5, v6}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    iget v6, v1, Landroid/text/DynamicLayout;->mHyphenationFrequency:I

    .line 745
    invoke-virtual {v5, v6}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    iget v6, v1, Landroid/text/DynamicLayout;->mJustificationMode:I

    .line 746
    invoke-virtual {v5, v6}, Landroid/text/StaticLayout$Builder;->setJustificationMode(I)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    iget-object v6, v1, Landroid/text/DynamicLayout;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    .line 747
    invoke-virtual {v5, v6}, Landroid/text/StaticLayout$Builder;->setLineBreakConfig(Landroid/graphics/text/LineBreakConfig;)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    if-nez v17, :cond_b

    const/4 v6, 0x1

    goto :goto_8

    :cond_b
    const/4 v6, 0x0

    .line 748
    :goto_8
    invoke-virtual {v5, v6}, Landroid/text/StaticLayout$Builder;->setAddLastLineLineSpacing(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    .line 749
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    iget-boolean v6, v1, Landroid/text/DynamicLayout;->mUseBoundsForWidth:Z

    .line 750
    invoke-virtual {v5, v6}, Landroid/text/StaticLayout$Builder;->setUseBoundsForWidth(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    iget-boolean v6, v1, Landroid/text/DynamicLayout;->mShiftDrawingOffsetForStartOverhang:Z

    .line 751
    invoke-virtual {v5, v6}, Landroid/text/StaticLayout$Builder;->setShiftDrawingOffsetForStartOverhang(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    iget-object v6, v1, Landroid/text/DynamicLayout;->mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 752
    invoke-virtual {v5, v6}, Landroid/text/StaticLayout$Builder;->setMinimumFontMetrics(Landroid/graphics/Paint$FontMetrics;)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    .line 753
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/text/StaticLayout$Builder;->setCalculateBounds(Z)Landroid/text/StaticLayout$Builder;

    .line 755
    invoke-virtual {v2, v6, v0}, Landroid/text/StaticLayout$Builder;->buildPartialStaticLayoutForDynamicLayout(ZLandroid/text/StaticLayout;)Landroid/text/StaticLayout;

    move-result-object v5

    .line 756
    .end local v0    # "reflowed":Landroid/text/StaticLayout;
    .local v5, "reflowed":Landroid/text/StaticLayout;
    invoke-virtual {v5}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    .line 761
    .local v0, "n":I
    add-int v6, v19, v9

    if-eq v6, v4, :cond_c

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v5, v6}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v6

    add-int v15, v19, v9

    if-ne v6, v15, :cond_c

    .line 762
    add-int/lit8 v0, v0, -0x1

    move v6, v0

    goto :goto_9

    .line 765
    :cond_c
    move v6, v0

    .end local v0    # "n":I
    .local v6, "n":I
    :goto_9
    iget-object v0, v1, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    sub-int v15, v13, v11

    invoke-virtual {v0, v11, v15}, Landroid/text/PackedIntVector;->deleteAt(II)V

    .line 766
    iget-object v0, v1, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    sub-int v15, v13, v11

    invoke-virtual {v0, v11, v15}, Landroid/text/PackedObjectVector;->deleteAt(II)V

    .line 770
    invoke-virtual {v5, v6}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v0

    .line 771
    .local v0, "ht":I
    const/4 v15, 0x0

    .local v15, "toppad":I
    const/16 v18, 0x0

    .line 773
    .local v18, "botpad":I
    move/from16 p4, v0

    .end local v0    # "ht":I
    .local p4, "ht":I
    iget-boolean v0, v1, Landroid/text/DynamicLayout;->mIncludePad:Z

    if-eqz v0, :cond_d

    if-nez v11, :cond_d

    .line 774
    invoke-virtual {v5}, Landroid/text/StaticLayout;->getTopPadding()I

    move-result v15

    .line 775
    iput v15, v1, Landroid/text/DynamicLayout;->mTopPadding:I

    .line 776
    sub-int v0, p4, v15

    .end local p4    # "ht":I
    .restart local v0    # "ht":I
    goto :goto_a

    .line 778
    .end local v0    # "ht":I
    .restart local p4    # "ht":I
    :cond_d
    move/from16 v0, p4

    .end local p4    # "ht":I
    .restart local v0    # "ht":I
    :goto_a
    move/from16 p4, v0

    .end local v0    # "ht":I
    .restart local p4    # "ht":I
    iget-boolean v0, v1, Landroid/text/DynamicLayout;->mIncludePad:Z

    if-eqz v0, :cond_e

    if-eqz v17, :cond_e

    .line 779
    invoke-virtual {v5}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v0

    .line 780
    .end local v18    # "botpad":I
    .local v0, "botpad":I
    iput v0, v1, Landroid/text/DynamicLayout;->mBottomPadding:I

    .line 781
    add-int v18, p4, v0

    move/from16 v21, v0

    move/from16 v20, v18

    .end local p4    # "ht":I
    .local v18, "ht":I
    goto :goto_b

    .line 784
    .end local v0    # "botpad":I
    .local v18, "botpad":I
    .restart local p4    # "ht":I
    :cond_e
    move/from16 v20, p4

    move/from16 v21, v18

    .end local v18    # "botpad":I
    .end local p4    # "ht":I
    .local v20, "ht":I
    .local v21, "botpad":I
    :goto_b
    iget-object v0, v1, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    move-object/from16 p4, v2

    .end local v2    # "b":Landroid/text/StaticLayout$Builder;
    .local p4, "b":Landroid/text/StaticLayout$Builder;
    sub-int v2, v9, v8

    move/from16 v22, v4

    const/4 v4, 0x0

    .end local v4    # "len":I
    .local v22, "len":I
    invoke-virtual {v0, v11, v4, v2}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    .line 785
    iget-object v0, v1, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    sub-int v2, v12, v14

    add-int v2, v2, v20

    const/4 v4, 0x1

    invoke-virtual {v0, v11, v4, v2}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    .line 791
    iget-boolean v0, v1, Landroid/text/DynamicLayout;->mEllipsize:Z

    const/4 v2, 0x5

    if-eqz v0, :cond_f

    .line 792
    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 793
    .local v0, "ints":[I
    const/high16 v4, -0x80000000

    aput v4, v0, v2

    move-object v4, v0

    goto :goto_c

    .line 795
    .end local v0    # "ints":[I
    :cond_f
    new-array v0, v2, [I

    move-object v4, v0

    .line 798
    .local v4, "ints":[I
    :goto_c
    move/from16 v18, v2

    const/4 v0, 0x1

    new-array v2, v0, [Landroid/text/Layout$Directions;

    .line 800
    .local v2, "objects":[Landroid/text/Layout$Directions;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, v6, :cond_16

    .line 801
    move/from16 v23, v7

    .end local v7    # "find":I
    .local v23, "find":I
    invoke-virtual {v5, v0}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v7

    .line 802
    .local v7, "start":I
    const/16 v24, 0x0

    aput v7, v4, v24

    .line 803
    aget v25, v4, v24

    invoke-virtual {v5, v0}, Landroid/text/StaticLayout;->getParagraphDirection(I)I

    move-result v26

    shl-int/lit8 v26, v26, 0x1e

    or-int v25, v25, v26

    aput v25, v4, v24

    .line 804
    aget v25, v4, v24

    invoke-virtual {v5, v0}, Landroid/text/StaticLayout;->getLineContainsTab(I)Z

    move-result v26

    if-eqz v26, :cond_10

    const/high16 v26, 0x20000000

    goto :goto_e

    :cond_10
    move/from16 v26, v24

    :goto_e
    or-int v25, v25, v26

    aput v25, v4, v24

    .line 806
    invoke-virtual {v5, v0}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v24

    add-int v24, v24, v12

    .line 807
    .local v24, "top":I
    if-lez v0, :cond_11

    .line 808
    sub-int v24, v24, v15

    .line 809
    :cond_11
    const/16 v16, 0x1

    aput v24, v4, v16

    .line 811
    invoke-virtual {v5, v0}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v25

    .line 812
    .local v25, "desc":I
    move/from16 v26, v8

    .end local v8    # "before":I
    .local v26, "before":I
    add-int/lit8 v8, v6, -0x1

    if-ne v0, v8, :cond_12

    .line 813
    add-int v25, v25, v21

    .line 815
    :cond_12
    const/4 v8, 0x2

    aput v25, v4, v8

    .line 816
    const/4 v8, 0x3

    invoke-virtual {v5, v0}, Landroid/text/StaticLayout;->getLineExtra(I)I

    move-result v27

    aput v27, v4, v8

    .line 817
    invoke-virtual {v5, v0}, Landroid/text/StaticLayout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v8

    const/16 v27, 0x0

    aput-object v8, v2, v27

    .line 819
    add-int/lit8 v8, v6, -0x1

    if-ne v0, v8, :cond_13

    add-int v8, v19, v9

    goto :goto_f

    :cond_13
    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v5, v8}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v8

    .line 820
    .local v8, "end":I
    :goto_f
    nop

    .line 821
    move/from16 p2, v9

    .end local v9    # "after":I
    .local p2, "after":I
    invoke-virtual {v5, v0}, Landroid/text/StaticLayout;->getStartHyphenEdit(I)I

    move-result v9

    move/from16 v28, v10

    .end local v10    # "change":I
    .local v28, "change":I
    invoke-virtual {v5, v0}, Landroid/text/StaticLayout;->getEndHyphenEdit(I)I

    move-result v10

    .line 820
    invoke-static {v9, v10}, Landroid/text/StaticLayout;->packHyphenEdit(II)I

    move-result v9

    const/4 v10, 0x4

    aput v9, v4, v10

    .line 822
    aget v9, v4, v10

    .line 823
    invoke-direct {v1, v3, v7, v8}, Landroid/text/DynamicLayout;->contentMayProtrudeFromLineTopOrBottom(Ljava/lang/CharSequence;II)Z

    move-result v29

    if-eqz v29, :cond_14

    .line 824
    const/16 v29, 0x100

    goto :goto_10

    :cond_14
    move/from16 v29, v27

    :goto_10
    or-int v9, v9, v29

    aput v9, v4, v10

    .line 826
    iget-boolean v9, v1, Landroid/text/DynamicLayout;->mEllipsize:Z

    if-eqz v9, :cond_15

    .line 827
    invoke-virtual {v5, v0}, Landroid/text/StaticLayout;->getEllipsisStart(I)I

    move-result v9

    aput v9, v4, v18

    .line 828
    const/4 v9, 0x6

    invoke-virtual {v5, v0}, Landroid/text/StaticLayout;->getEllipsisCount(I)I

    move-result v10

    aput v10, v4, v9

    .line 831
    :cond_15
    iget-object v9, v1, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    add-int v10, v11, v0

    invoke-virtual {v9, v10, v4}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 832
    iget-object v9, v1, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    add-int v10, v11, v0

    invoke-virtual {v9, v10, v2}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    .line 800
    .end local v7    # "start":I
    .end local v8    # "end":I
    .end local v24    # "top":I
    .end local v25    # "desc":I
    add-int/lit8 v0, v0, 0x1

    move/from16 v9, p2

    move/from16 v7, v23

    move/from16 v8, v26

    move/from16 v10, v28

    goto/16 :goto_d

    .end local v23    # "find":I
    .end local v26    # "before":I
    .end local v28    # "change":I
    .end local p2    # "after":I
    .local v7, "find":I
    .local v8, "before":I
    .restart local v9    # "after":I
    .restart local v10    # "change":I
    :cond_16
    move/from16 v23, v7

    move/from16 v26, v8

    move/from16 p2, v9

    move/from16 v28, v10

    .line 835
    .end local v0    # "i":I
    .end local v7    # "find":I
    .end local v8    # "before":I
    .end local v9    # "after":I
    .end local v10    # "change":I
    .restart local v23    # "find":I
    .restart local v26    # "before":I
    .restart local v28    # "change":I
    .restart local p2    # "after":I
    add-int/lit8 v0, v13, -0x1

    invoke-virtual {v1, v11, v0, v6}, Landroid/text/DynamicLayout;->updateBlocks(III)V

    .line 837
    invoke-virtual/range {p4 .. p4}, Landroid/text/StaticLayout$Builder;->finish()V

    .line 838
    sget-object v7, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    monitor-enter v7

    .line 839
    :try_start_1
    sput-object v5, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 840
    sput-object p4, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;

    .line 841
    monitor-exit v7

    .line 842
    return-void

    .line 841
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 730
    .end local v2    # "objects":[Landroid/text/Layout$Directions;
    .end local v15    # "toppad":I
    .end local v19    # "where":I
    .end local v20    # "ht":I
    .end local v21    # "botpad":I
    .end local v22    # "len":I
    .end local v23    # "find":I
    .end local v26    # "before":I
    .end local v28    # "change":I
    .end local p2    # "after":I
    .end local p3    # "look":I
    .end local p4    # "b":Landroid/text/StaticLayout$Builder;
    .local v4, "len":I
    .local v5, "look":I
    .local v6, "where":I
    .restart local v7    # "find":I
    .restart local v8    # "before":I
    .restart local v9    # "after":I
    .restart local v10    # "change":I
    :catchall_1
    move-exception v0

    move/from16 v22, v4

    move/from16 p3, v5

    move/from16 v19, v6

    move/from16 v23, v7

    move/from16 v26, v8

    move/from16 p2, v9

    move/from16 v28, v10

    .end local v4    # "len":I
    .end local v5    # "look":I
    .end local v6    # "where":I
    .end local v7    # "find":I
    .end local v8    # "before":I
    .end local v9    # "after":I
    .end local v10    # "change":I
    .restart local v19    # "where":I
    .restart local v22    # "len":I
    .restart local v23    # "find":I
    .restart local v26    # "before":I
    .restart local v28    # "change":I
    .restart local p2    # "after":I
    .restart local p3    # "look":I
    :goto_11
    :try_start_2
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_11
.end method

.method public greylist-max-o setBlockIndex(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "blockIndex"    # I

    .line 1119
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    aput p2, v0, p1

    .line 1120
    return-void
.end method

.method public greylist-max-o setBlocksDataForTest([I[III)V
    .locals 3
    .param p1, "blockEndLines"    # [I
    .param p2, "blockIndices"    # [I
    .param p3, "numberOfBlocks"    # I
    .param p4, "totalLines"    # I

    .line 1081
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 1082
    array-length v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .line 1083
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1084
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1085
    iput p3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 1086
    :goto_0
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    if-ge v0, p4, :cond_0

    .line 1087
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    iget-object v1, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v1}, Landroid/text/PackedIntVector;->size()I

    move-result v1

    const/4 v2, 0x5

    new-array v2, v2, [I

    invoke-virtual {v0, v1, v2}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    goto :goto_0

    .line 1089
    :cond_0
    return-void
.end method

.method public greylist-max-r setIndexFirstChangedBlock(I)V
    .locals 0
    .param p1, "i"    # I

    .line 1143
    iput p1, p0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    .line 1144
    return-void
.end method

.method public greylist-max-o updateBlocks(III)V
    .locals 18
    .param p1, "startLine"    # I
    .param p2, "endLine"    # I
    .param p3, "newLineCount"    # I

    .line 958
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    if-nez v3, :cond_0

    .line 959
    invoke-direct {v0}, Landroid/text/DynamicLayout;->createBlocks()V

    .line 960
    return-void

    .line 963
    :cond_0
    const/4 v3, -0x1

    .line 964
    .local v3, "firstBlock":I
    const/4 v4, -0x1

    .line 965
    .local v4, "lastBlock":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v6, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    if-ge v5, v6, :cond_2

    .line 966
    iget-object v6, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v6, v6, v5

    if-lt v6, v1, :cond_1

    .line 967
    move v3, v5

    .line 968
    goto :goto_1

    .line 965
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 971
    .end local v5    # "i":I
    :cond_2
    :goto_1
    move v5, v3

    .restart local v5    # "i":I
    :goto_2
    iget v6, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    if-ge v5, v6, :cond_4

    .line 972
    iget-object v6, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v6, v6, v5

    if-lt v6, v2, :cond_3

    .line 973
    move v4, v5

    .line 974
    goto :goto_3

    .line 971
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 977
    .end local v5    # "i":I
    :cond_4
    :goto_3
    iget-object v5, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v5, v5, v4

    .line 979
    .local v5, "lastBlockEndLine":I
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v3, :cond_5

    move v8, v6

    goto :goto_4

    .line 980
    :cond_5
    iget-object v8, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int/lit8 v9, v3, -0x1

    aget v8, v8, v9

    add-int/2addr v8, v7

    :goto_4
    if-le v1, v8, :cond_6

    move v8, v7

    goto :goto_5

    :cond_6
    move v8, v6

    .line 981
    .local v8, "createBlockBefore":Z
    :goto_5
    if-lez p3, :cond_7

    move v9, v7

    goto :goto_6

    :cond_7
    move v9, v6

    .line 982
    .local v9, "createBlock":Z
    :goto_6
    iget-object v10, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v10, v10, v4

    if-ge v2, v10, :cond_8

    move v10, v7

    goto :goto_7

    :cond_8
    move v10, v6

    .line 984
    .local v10, "createBlockAfter":Z
    :goto_7
    const/4 v11, 0x0

    .line 985
    .local v11, "numAddedBlocks":I
    if-eqz v8, :cond_9

    add-int/lit8 v11, v11, 0x1

    .line 986
    :cond_9
    if-eqz v9, :cond_a

    add-int/lit8 v11, v11, 0x1

    .line 987
    :cond_a
    if-eqz v10, :cond_b

    add-int/lit8 v11, v11, 0x1

    .line 989
    :cond_b
    sub-int v12, v4, v3

    add-int/2addr v12, v7

    .line 990
    .local v12, "numRemovedBlocks":I
    iget v13, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int/2addr v13, v11

    sub-int/2addr v13, v12

    .line 992
    .local v13, "newNumberOfBlocks":I
    const/4 v14, -0x1

    if-nez v13, :cond_c

    .line 994
    iget-object v15, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aput v6, v15, v6

    .line 995
    iget-object v15, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    aput v14, v15, v6

    .line 996
    iput v7, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 997
    return-void

    .line 1000
    :cond_c
    iget-object v15, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v15, v15

    if-le v13, v15, :cond_d

    .line 1001
    iget-object v15, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v15, v15

    mul-int/lit8 v15, v15, 0x2

    .line 1002
    invoke-static {v15, v13}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 1001
    invoke-static {v15}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v15

    .line 1003
    .local v15, "blockEndLines":[I
    move/from16 v16, v7

    array-length v7, v15

    new-array v7, v7, [I

    .line 1004
    .local v7, "blockIndices":[I
    move/from16 v17, v14

    iget-object v14, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    invoke-static {v14, v6, v15, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1005
    iget-object v14, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    invoke-static {v14, v6, v7, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1006
    iget-object v6, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int/lit8 v14, v4, 0x1

    add-int v1, v3, v11

    iget v2, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    invoke-static {v6, v14, v15, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1008
    iget-object v1, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    add-int/lit8 v2, v4, 0x1

    add-int v6, v3, v11

    iget v14, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    sub-int/2addr v14, v4

    add-int/lit8 v14, v14, -0x1

    invoke-static {v1, v2, v7, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1010
    iput-object v15, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 1011
    iput-object v7, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .end local v7    # "blockIndices":[I
    .end local v15    # "blockEndLines":[I
    goto :goto_8

    .line 1012
    :cond_d
    move/from16 v16, v7

    move/from16 v17, v14

    add-int v1, v11, v12

    if-eqz v1, :cond_e

    .line 1013
    iget-object v1, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int/lit8 v2, v4, 0x1

    iget-object v6, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int v7, v3, v11

    iget v14, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    sub-int/2addr v14, v4

    add-int/lit8 v14, v14, -0x1

    invoke-static {v1, v2, v6, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1015
    iget-object v1, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    add-int/lit8 v2, v4, 0x1

    iget-object v6, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    add-int v7, v3, v11

    iget v14, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    sub-int/2addr v14, v4

    add-int/lit8 v14, v14, -0x1

    invoke-static {v1, v2, v6, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_9

    .line 1012
    :cond_e
    :goto_8
    nop

    .line 1019
    :goto_9
    add-int v1, v11, v12

    if-eqz v1, :cond_12

    iget-object v1, v0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    if-eqz v1, :cond_12

    .line 1020
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1021
    .local v1, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    sub-int v2, v11, v12

    .line 1022
    .local v2, "changedBlockCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_a
    iget-object v7, v0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v6, v7, :cond_11

    .line 1023
    iget-object v7, v0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 1024
    .local v7, "block":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ge v14, v3, :cond_f

    .line 1026
    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1028
    :cond_f
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-le v14, v4, :cond_10

    .line 1030
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/2addr v14, v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1031
    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1022
    .end local v7    # "block":Ljava/lang/Integer;
    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 1034
    .end local v6    # "i":I
    :cond_11
    iput-object v1, v0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    .line 1037
    .end local v1    # "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v2    # "changedBlockCount":I
    :cond_12
    iput v13, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 1039
    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    sub-int v1, p3, v1

    .line 1040
    .local v1, "deltaLines":I
    if-eqz v1, :cond_14

    .line 1043
    add-int v2, v3, v11

    .line 1044
    .local v2, "newFirstChangedBlock":I
    move v6, v2

    .restart local v6    # "i":I
    :goto_b
    iget v7, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    if-ge v6, v7, :cond_13

    .line 1045
    iget-object v7, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v14, v7, v6

    add-int/2addr v14, v1

    aput v14, v7, v6

    .line 1044
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .end local v6    # "i":I
    :cond_13
    goto :goto_c

    .line 1048
    .end local v2    # "newFirstChangedBlock":I
    :cond_14
    iget v2, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 1050
    .restart local v2    # "newFirstChangedBlock":I
    :goto_c
    iget v6, v0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    .line 1052
    move v6, v3

    .line 1053
    .local v6, "blockIndex":I
    if-eqz v8, :cond_15

    .line 1054
    iget-object v7, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int/lit8 v14, p1, -0x1

    aput v14, v7, v6

    .line 1055
    invoke-direct {v0, v6}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    .line 1056
    iget-object v7, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    aput v17, v7, v6

    .line 1057
    add-int/lit8 v6, v6, 0x1

    .line 1060
    :cond_15
    if-eqz v9, :cond_16

    .line 1061
    iget-object v7, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int v14, p1, p3

    add-int/lit8 v14, v14, -0x1

    aput v14, v7, v6

    .line 1062
    invoke-direct {v0, v6}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    .line 1063
    iget-object v7, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    aput v17, v7, v6

    .line 1064
    add-int/lit8 v6, v6, 0x1

    .line 1067
    :cond_16
    if-eqz v10, :cond_17

    .line 1068
    iget-object v7, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int v14, v5, v1

    aput v14, v7, v6

    .line 1069
    invoke-direct {v0, v6}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    .line 1070
    iget-object v7, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    aput v17, v7, v6

    .line 1072
    :cond_17
    return-void
.end method
