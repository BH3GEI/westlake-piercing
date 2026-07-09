.class public abstract Landroid/text/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Layout$Alignment;,
        Landroid/text/Layout$TabStops;,
        Landroid/text/Layout$Directions;,
        Landroid/text/Layout$CharacterBoundsListener;,
        Landroid/text/Layout$HorizontalMeasurementProvider;,
        Landroid/text/Layout$TextInclusionStrategy;,
        Landroid/text/Layout$SelectionRectangleConsumer;,
        Landroid/text/Layout$Builder;,
        Landroid/text/Layout$TextSelectionLayout;,
        Landroid/text/Layout$Direction;,
        Landroid/text/Layout$SpannedEllipsizer;,
        Landroid/text/Layout$Ellipsizer;,
        Landroid/text/Layout$JustificationMode;,
        Landroid/text/Layout$HyphenationFrequency;,
        Landroid/text/Layout$BreakStrategy;
    }
.end annotation


# static fields
.field public static final whitelist BREAK_STRATEGY_BALANCED:I = 0x2

.field public static final whitelist BREAK_STRATEGY_HIGH_QUALITY:I = 0x1

.field public static final whitelist BREAK_STRATEGY_SIMPLE:I = 0x0

.field public static final whitelist DEFAULT_LINESPACING_ADDITION:F = 0.0f

.field public static final whitelist DEFAULT_LINESPACING_MULTIPLIER:F = 1.0f

.field public static final greylist DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

.field public static final greylist DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

.field public static final whitelist DIR_LEFT_TO_RIGHT:I = 0x1

.field static final greylist DIR_REQUEST_DEFAULT_LTR:I = 0x2

.field static final greylist-max-o DIR_REQUEST_DEFAULT_RTL:I = -0x2

.field static final greylist-max-o DIR_REQUEST_LTR:I = 0x1

.field static final greylist-max-o DIR_REQUEST_RTL:I = -0x1

.field public static final whitelist DIR_RIGHT_TO_LEFT:I = -0x1

.field private static final blacklist HIGH_CONTRAST_TEXT_BACKGROUND_ALPHA_PERCENTAGE:F = 0.7f

.field private static final blacklist HIGH_CONTRAST_TEXT_BACKGROUND_CORNER_RADIUS_DP:F = 5.0f

.field private static final blacklist HIGH_CONTRAST_TEXT_BORDER_WIDTH_FACTOR:F = 0.0f

.field private static final blacklist HIGH_CONTRAST_TEXT_BORDER_WIDTH_MIN_PX:F = 0.0f

.field public static final whitelist HYPHENATION_FREQUENCY_FULL:I = 0x2

.field public static final whitelist HYPHENATION_FREQUENCY_FULL_FAST:I = 0x4

.field public static final whitelist HYPHENATION_FREQUENCY_NONE:I = 0x0

.field public static final whitelist HYPHENATION_FREQUENCY_NORMAL:I = 0x1

.field public static final whitelist HYPHENATION_FREQUENCY_NORMAL_FAST:I = 0x3

.field public static final whitelist INCLUSION_STRATEGY_ANY_OVERLAP:Landroid/text/Layout$TextInclusionStrategy;

.field public static final whitelist INCLUSION_STRATEGY_CONTAINS_ALL:Landroid/text/Layout$TextInclusionStrategy;

.field public static final whitelist INCLUSION_STRATEGY_CONTAINS_CENTER:Landroid/text/Layout$TextInclusionStrategy;

.field public static final whitelist JUSTIFICATION_MODE_INTER_CHARACTER:I = 0x2

.field public static final whitelist JUSTIFICATION_MODE_INTER_WORD:I = 0x1

.field public static final whitelist JUSTIFICATION_MODE_NONE:I = 0x0

.field private static final greylist-max-o NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

.field static final greylist-max-o RUN_LENGTH_MASK:I = 0x3ffffff

.field static final greylist-max-o RUN_LEVEL_MASK:I = 0x3f

.field static final greylist-max-o RUN_LEVEL_SHIFT:I = 0x1a

.field static final greylist-max-o RUN_RTL_FLAG:I = 0x4000000

.field private static final blacklist TAB_INCREMENT:F = 20.0f

.field public static final greylist-max-o TEXT_SELECTION_LAYOUT_LEFT_TO_RIGHT:I = 0x1

.field public static final greylist-max-o TEXT_SELECTION_LAYOUT_RIGHT_TO_LEFT:I

.field private static final greylist-max-o sTempRect:Landroid/graphics/Rect;


# instance fields
.field private greylist-max-o mAlignment:Landroid/text/Layout$Alignment;

.field private blacklist mBreakStrategy:I

.field private blacklist mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private blacklist mEllipsizedWidth:I

.field private blacklist mFallbackLineSpacing:Z

.field private blacklist mHyphenationFrequency:I

.field private blacklist mIncludePad:Z

.field private greylist-max-o mJustificationMode:I

.field private blacklist mLeftIndents:[I

.field private greylist-max-o mLineBackgroundSpans:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/LineBackgroundSpan;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

.field private blacklist mLineInfo:Landroid/text/TextLine$LineInfo;

.field private blacklist mMaxLines:I

.field private blacklist mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private greylist mPaint:Landroid/text/TextPaint;

.field private blacklist mRightIndents:[I

.field private blacklist mShiftDrawingOffsetForStartOverhang:Z

.field private greylist-max-o mSpacingAdd:F

.field private greylist-max-o mSpacingMult:F

.field private blacklist mSpanColors:Landroid/text/SpanColors;

.field private greylist-max-o mSpannedText:Z

.field private greylist-max-o mText:Ljava/lang/CharSequence;

.field private greylist-max-o mTextDir:Landroid/text/TextDirectionHeuristic;

.field private blacklist mUseBoundsForWidth:Z

.field private greylist-max-o mWidth:I

.field private final greylist-max-o mWorkPaint:Landroid/text/TextPaint;

.field private final blacklist mWorkPlainPaint:Landroid/graphics/Paint;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSpanColors(Landroid/text/Layout;)Landroid/text/SpanColors;
    .locals 0

    iget-object p0, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSpannedText(Landroid/text/Layout;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/text/Layout;->mSpannedText:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmText(Landroid/text/Layout;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mellipsize(Landroid/text/Layout;III[CILandroid/text/TextUtils$TruncateAt;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;->ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetHorizontal(Landroid/text/Layout;IZ)F
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/text/Layout;->getHorizontal(IZ)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetLineHorizontals(Landroid/text/Layout;IZZ)[F
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/text/Layout;->getLineHorizontals(IZZ)[F

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misHighContrastTextDark(Landroid/text/Layout;I)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/text/Layout;->isHighContrastTextDark(I)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 163
    const-class v0, Landroid/text/style/ParagraphStyle;

    .line 164
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ParagraphStyle;

    sput-object v0, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 208
    new-instance v0, Landroid/text/Layout$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/text/Layout$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroid/text/Layout;->INCLUSION_STRATEGY_ANY_OVERLAP:Landroid/text/Layout$TextInclusionStrategy;

    .line 216
    new-instance v0, Landroid/text/Layout$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/text/Layout$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Landroid/text/Layout;->INCLUSION_STRATEGY_CONTAINS_CENTER:Landroid/text/Layout$TextInclusionStrategy;

    .line 225
    new-instance v0, Landroid/text/Layout$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/text/Layout$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Landroid/text/Layout;->INCLUSION_STRATEGY_CONTAINS_ALL:Landroid/text/Layout$TextInclusionStrategy;

    .line 3689
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    .line 3750
    new-instance v0, Landroid/text/Layout$Directions;

    const v1, 0x3ffffff

    const/4 v2, 0x0

    filled-new-array {v2, v1}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 3756
    new-instance v0, Landroid/text/Layout$Directions;

    const v1, 0x7ffffff

    filled-new-array {v2, v1}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-void
.end method

.method protected constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 22
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingMult"    # F
    .param p6, "spacingAdd"    # F

    .line 313
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    sget-object v18, Landroid/graphics/text/LineBreakConfig;->NONE:Landroid/graphics/text/LineBreakConfig;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7fffffff

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v21}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;ZZLandroid/graphics/Paint$FontMetrics;)V

    .line 317
    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;ZZLandroid/graphics/Paint$FontMetrics;)V
    .locals 16
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
    .param p19, "useBoundsForWidth"    # Z
    .param p20, "shiftDrawingOffsetForStartOverhang"    # Z
    .param p21, "minimumFontMetrics"    # Landroid/graphics/Paint$FontMetrics;

    .line 368
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p11

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 3683
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V

    iput-object v5, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 3684
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v0, Landroid/text/Layout;->mWorkPlainPaint:Landroid/graphics/Paint;

    .line 3686
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v5, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 3709
    const/4 v5, 0x0

    iput-object v5, v0, Landroid/text/Layout;->mLineInfo:Landroid/text/TextLine$LineInfo;

    .line 370
    if-ltz v3, :cond_2

    .line 377
    if-eqz v2, :cond_0

    .line 378
    const/4 v5, 0x0

    iput v5, v2, Landroid/text/TextPaint;->bgColor:I

    .line 379
    iput v5, v2, Landroid/text/TextPaint;->baselineShift:I

    .line 382
    :cond_0
    iput-object v1, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 383
    iput-object v2, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 384
    iput v3, v0, Landroid/text/Layout;->mWidth:I

    .line 385
    move-object/from16 v5, p4

    iput-object v5, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 386
    move/from16 v6, p6

    iput v6, v0, Landroid/text/Layout;->mSpacingMult:F

    .line 387
    move/from16 v7, p7

    iput v7, v0, Landroid/text/Layout;->mSpacingAdd:F

    .line 388
    instance-of v8, v1, Landroid/text/Spanned;

    iput-boolean v8, v0, Landroid/text/Layout;->mSpannedText:Z

    .line 389
    move-object/from16 v8, p5

    iput-object v8, v0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 390
    move/from16 v9, p8

    iput-boolean v9, v0, Landroid/text/Layout;->mIncludePad:Z

    .line 391
    move/from16 v10, p9

    iput-boolean v10, v0, Landroid/text/Layout;->mFallbackLineSpacing:Z

    .line 392
    if-nez v4, :cond_1

    move v11, v3

    goto :goto_0

    :cond_1
    move/from16 v11, p10

    :goto_0
    iput v11, v0, Landroid/text/Layout;->mEllipsizedWidth:I

    .line 393
    iput-object v4, v0, Landroid/text/Layout;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 394
    move/from16 v11, p12

    iput v11, v0, Landroid/text/Layout;->mMaxLines:I

    .line 395
    move/from16 v12, p13

    iput v12, v0, Landroid/text/Layout;->mBreakStrategy:I

    .line 396
    move/from16 v13, p14

    iput v13, v0, Landroid/text/Layout;->mHyphenationFrequency:I

    .line 397
    move-object/from16 v14, p15

    iput-object v14, v0, Landroid/text/Layout;->mLeftIndents:[I

    .line 398
    move-object/from16 v15, p16

    iput-object v15, v0, Landroid/text/Layout;->mRightIndents:[I

    .line 399
    move/from16 v1, p17

    iput v1, v0, Landroid/text/Layout;->mJustificationMode:I

    .line 400
    move-object/from16 v1, p18

    iput-object v1, v0, Landroid/text/Layout;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    .line 401
    move/from16 v1, p19

    iput-boolean v1, v0, Landroid/text/Layout;->mUseBoundsForWidth:Z

    .line 402
    move/from16 v1, p20

    iput-boolean v1, v0, Landroid/text/Layout;->mShiftDrawingOffsetForStartOverhang:Z

    .line 403
    move-object/from16 v1, p21

    iput-object v1, v0, Landroid/text/Layout;->mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 405
    invoke-direct {v0}, Landroid/text/Layout;->initSpanColors()V

    .line 406
    return-void

    .line 371
    :cond_2
    move-object/from16 v5, p4

    move-object/from16 v8, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    move-object/from16 v14, p15

    move-object/from16 v15, p16

    move-object/from16 v1, p21

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V
    .locals 22
    .param p1, "line"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "top"    # I
    .param p5, "bottom"    # I
    .param p6, "consumer"    # Landroid/text/Layout$SelectionRectangleConsumer;

    .line 3060
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 3061
    .local v4, "linestart":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 3062
    .local v5, "lineend":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 3064
    .local v6, "dirs":Landroid/text/Layout$Directions;
    if-le v5, v4, :cond_0

    iget-object v7, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v8, v5, -0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_0

    .line 3065
    add-int/lit8 v5, v5, -0x1

    .line 3068
    :cond_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v8, v6, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v8, v8

    if-ge v7, v8, :cond_5

    .line 3069
    iget-object v8, v6, Landroid/text/Layout$Directions;->mDirections:[I

    aget v8, v8, v7

    add-int/2addr v8, v4

    .line 3070
    .local v8, "here":I
    iget-object v9, v6, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v10, v7, 0x1

    aget v9, v9, v10

    const v10, 0x3ffffff

    and-int/2addr v9, v10

    add-int/2addr v9, v8

    .line 3072
    .local v9, "there":I
    if-le v9, v5, :cond_1

    .line 3073
    move v9, v5

    .line 3076
    :cond_1
    if-gt v2, v9, :cond_4

    if-lt v3, v8, :cond_4

    .line 3077
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 3078
    .local v10, "st":I
    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 3080
    .local v11, "en":I
    if-eq v10, v11, :cond_3

    .line 3081
    const/4 v12, 0x0

    invoke-direct {v0, v10, v12, v1, v12}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v13

    .line 3082
    .local v13, "h1":F
    const/4 v14, 0x1

    invoke-direct {v0, v11, v14, v1, v12}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v15

    .line 3084
    .local v15, "h2":F
    invoke-static {v13, v15}, Ljava/lang/Math;->min(FF)F

    move-result v17

    .line 3085
    .local v17, "left":F
    invoke-static {v13, v15}, Ljava/lang/Math;->max(FF)F

    move-result v19

    .line 3088
    .local v19, "right":F
    iget-object v12, v6, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v18, v7, 0x1

    aget v12, v12, v18

    const/high16 v18, 0x4000000

    and-int v12, v12, v18

    if-eqz v12, :cond_2

    .line 3089
    const/16 v21, 0x0

    goto :goto_1

    .line 3090
    :cond_2
    move/from16 v21, v14

    :goto_1
    nop

    .line 3092
    .local v21, "layout":I
    move/from16 v12, p4

    int-to-float v14, v12

    move/from16 v0, p5

    int-to-float v1, v0

    move-object/from16 v16, p6

    move/from16 v20, v1

    move/from16 v18, v14

    invoke-interface/range {v16 .. v21}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    goto :goto_2

    .line 3080
    .end local v13    # "h1":F
    .end local v15    # "h2":F
    .end local v17    # "left":F
    .end local v19    # "right":F
    .end local v21    # "layout":I
    :cond_3
    move/from16 v12, p4

    move/from16 v0, p5

    goto :goto_2

    .line 3076
    .end local v10    # "st":I
    .end local v11    # "en":I
    :cond_4
    move/from16 v12, p4

    move/from16 v0, p5

    .line 3068
    .end local v8    # "here":I
    .end local v9    # "there":I
    :goto_2
    add-int/lit8 v7, v7, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    goto :goto_0

    :cond_5
    move/from16 v12, p4

    move/from16 v0, p5

    .line 3096
    .end local v7    # "i":I
    return-void
.end method

.method private blacklist determineHighContrastHighlightBlendMode(Landroid/graphics/Canvas;)Landroid/graphics/BlendMode;
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 660
    invoke-static {p1}, Landroid/text/Layout;->shouldDrawHighlightsOnTop(Landroid/graphics/Canvas;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    const/4 v0, 0x0

    return-object v0

    .line 664
    :cond_0
    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/text/Layout;->isHighContrastTextDark(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/graphics/BlendMode;->MULTIPLY:Landroid/graphics/BlendMode;

    goto :goto_0

    .line 665
    :cond_1
    sget-object v0, Landroid/graphics/BlendMode;->DIFFERENCE:Landroid/graphics/BlendMode;

    .line 664
    :goto_0
    return-object v0
.end method

.method private blacklist drawHighContrastBackground(Landroid/graphics/Canvas;II)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "firstLine"    # I
    .param p3, "lastLine"    # I

    .line 1020
    invoke-static {p1}, Landroid/text/Layout;->shouldDrawHighlightsOnTop(Landroid/graphics/Canvas;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1021
    return-void

    .line 1024
    :cond_0
    iget-boolean v1, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    if-nez v1, :cond_2

    .line 1025
    :cond_1
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getAlpha()I

    move-result v1

    if-nez v1, :cond_2

    .line 1026
    return-void

    .line 1030
    :cond_2
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 1031
    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    const/4 v2, 0x0

    mul-float/2addr v1, v2

    .line 1030
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1032
    .local v4, "padding":F
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget v1, v1, Landroid/text/TextPaint;->density:F

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float v6, v1, v3

    .line 1037
    .local v6, "cornerRadius":F
    const v1, 0x3f333333    # 0.7f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v7

    .line 1038
    .local v7, "white":I
    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v8

    .line 1040
    .local v8, "black":I
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getColor()I

    move-result v2

    .line 1041
    .local v2, "originalTextColor":I
    iget-object v3, p0, Landroid/text/Layout;->mWorkPlainPaint:Landroid/graphics/Paint;

    .line 1042
    .local v3, "bgPaint":Landroid/graphics/Paint;
    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    .line 1043
    invoke-direct {p0, v2}, Landroid/text/Layout;->isHighContrastTextDark(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v7

    goto :goto_0

    :cond_3
    move v1, v8

    :goto_0
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1044
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1046
    move/from16 v9, p2

    invoke-virtual {p0, v9}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    .line 1047
    .local v10, "start":I
    move/from16 v11, p3

    invoke-virtual {p0, v11}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v12

    .line 1052
    .local v12, "end":I
    iget-boolean v1, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    if-eqz v1, :cond_4

    .line 1053
    iget-object v1, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    iget-object v5, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v13, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v13, Landroid/text/Spanned;

    invoke-virtual {v1, v5, v13, v10, v12}, Landroid/text/SpanColors;->init(Landroid/text/TextPaint;Landroid/text/Spanned;II)V

    .line 1056
    :cond_4
    new-instance v5, Landroid/text/Layout$1;

    move-object v1, p0

    move-object v0, v5

    move-object v5, p1

    invoke-direct/range {v0 .. v8}, Landroid/text/Layout$1;-><init>(Landroid/text/Layout;ILandroid/graphics/Paint;FLandroid/graphics/Canvas;FII)V

    move v5, v11

    move-object v11, v3

    move v3, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v4

    move v4, v5

    move-object v5, v0

    move-object v0, v1

    move v1, v10

    move v10, v2

    move v2, v12

    .end local v3    # "bgPaint":Landroid/graphics/Paint;
    .end local v4    # "padding":F
    .end local v12    # "end":I
    .local v1, "start":I
    .local v2, "end":I
    .local v6, "padding":F
    .local v7, "cornerRadius":F
    .local v8, "white":I
    .local v9, "black":I
    .local v10, "originalTextColor":I
    .local v11, "bgPaint":Landroid/graphics/Paint;
    invoke-direct/range {v0 .. v5}, Landroid/text/Layout;->forEachCharacterBounds(IIIILandroid/text/Layout$CharacterBoundsListener;)V

    .line 1161
    iget-object v3, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    if-eqz v3, :cond_5

    .line 1162
    iget-object v3, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    invoke-virtual {v3}, Landroid/text/SpanColors;->recycle()V

    .line 1164
    :cond_5
    return-void
.end method

.method private greylist-max-o ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V
    .locals 13
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "line"    # I
    .param p4, "dest"    # [C
    .param p5, "destoff"    # I
    .param p6, "method"    # Landroid/text/TextUtils$TruncateAt;

    .line 3466
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v1

    .line 3467
    .local v1, "ellipsisCount":I
    if-nez v1, :cond_0

    .line 3468
    return-void

    .line 3470
    :cond_0
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v2

    .line 3471
    .local v2, "ellipsisStart":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 3473
    .local v3, "lineStart":I
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->getEllipsisString(Landroid/text/TextUtils$TruncateAt;)Ljava/lang/String;

    move-result-object v4

    .line 3474
    .local v4, "ellipsisString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 3476
    .local v5, "ellipsisStringLen":I
    const/4 v6, 0x0

    if-lt v1, v5, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    move v7, v6

    .line 3477
    .local v7, "useEllipsisString":Z
    :goto_0
    sub-int v8, p1, v2

    sub-int/2addr v8, v3

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 3478
    .local v6, "min":I
    sub-int v8, p2, v2

    sub-int/2addr v8, v3

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 3480
    .local v8, "max":I
    move v9, v6

    .local v9, "i":I
    :goto_1
    if-ge v9, v8, :cond_3

    .line 3482
    if-eqz v7, :cond_2

    if-ge v9, v5, :cond_2

    .line 3483
    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .local v10, "c":C
    goto :goto_2

    .line 3485
    .end local v10    # "c":C
    :cond_2
    const v10, 0xfeff

    .line 3488
    .restart local v10    # "c":C
    :goto_2
    add-int v11, v9, v2

    add-int/2addr v11, v3

    .line 3489
    .local v11, "a":I
    add-int v12, p5, v11

    sub-int/2addr v12, p1

    aput-char v10, p4, v12

    .line 3480
    .end local v10    # "c":C
    .end local v11    # "a":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 3491
    .end local v9    # "i":I
    :cond_3
    return-void
.end method

.method private blacklist fillHorizontalBoundsForLine(I[F)V
    .locals 13
    .param p1, "line"    # I
    .param p2, "horizontalBounds"    # [F

    .line 1805
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 1806
    .local v3, "lineStart":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 1807
    .local v4, "lineEnd":I
    sub-int v12, v4, v3

    .line 1809
    .local v12, "lineLength":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 1810
    .local v5, "dir":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 1812
    .local v6, "directions":Landroid/text/Layout$Directions;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    .line 1813
    .local v7, "hasTab":Z
    const/4 v0, 0x0

    .line 1814
    .local v0, "tabStops":Landroid/text/Layout$TabStops;
    if-eqz v7, :cond_0

    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    .line 1817
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    const-class v2, Landroid/text/style/TabStopSpan;

    .line 1818
    invoke-static {v1, v3, v4, v2}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/TabStopSpan;

    .line 1819
    .local v1, "tabs":[Landroid/text/style/TabStopSpan;
    array-length v2, v1

    if-lez v2, :cond_0

    .line 1820
    new-instance v2, Landroid/text/Layout$TabStops;

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-direct {v2, v8, v1}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v0, v2

    move-object v8, v0

    goto :goto_0

    .line 1824
    .end local v1    # "tabs":[Landroid/text/style/TabStopSpan;
    :cond_0
    move-object v8, v0

    .end local v0    # "tabStops":Landroid/text/Layout$TabStops;
    .local v8, "tabStops":Landroid/text/Layout$TabStops;
    :goto_0
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 1825
    .local v0, "tl":Landroid/text/TextLine;
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1826
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v9

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v10

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v11

    add-int/2addr v10, v11

    .line 1827
    invoke-virtual {p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v11

    .line 1825
    invoke-virtual/range {v0 .. v11}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 1828
    if-eqz p2, :cond_1

    array-length v1, p2

    mul-int/lit8 v2, v12, 0x2

    if-ge v1, v2, :cond_2

    .line 1829
    :cond_1
    mul-int/lit8 v1, v12, 0x2

    new-array p2, v1, [F

    .line 1832
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/text/TextLine;->measureAllBounds([F[F)V

    .line 1833
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1834
    return-void
.end method

.method private blacklist forEachCharacterBounds(IIIILandroid/text/Layout$CharacterBoundsListener;)V
    .locals 20
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "startLine"    # I
    .param p4, "endLine"    # I
    .param p5, "listener"    # Landroid/text/Layout$CharacterBoundsListener;

    .line 1905
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1906
    .local v1, "horizontalBounds":[F
    move/from16 v2, p3

    move v4, v2

    .local v4, "line":I
    :goto_0
    move/from16 v9, p4

    if-gt v4, v9, :cond_3

    .line 1907
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    .line 1908
    .local v10, "lineStart":I
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v11

    .line 1909
    .local v11, "lineEnd":I
    sub-int v12, v11, v10

    .line 1910
    .local v12, "lineLength":I
    if-eqz v1, :cond_0

    array-length v2, v1

    mul-int/lit8 v3, v12, 0x2

    if-ge v2, v3, :cond_1

    .line 1911
    :cond_0
    mul-int/lit8 v2, v12, 0x2

    new-array v1, v2, [F

    .line 1913
    :cond_1
    invoke-direct {v0, v4, v1}, Landroid/text/Layout;->fillHorizontalBoundsForLine(I[F)V

    .line 1915
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v13

    .line 1916
    .local v13, "lineLeft":I
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v14

    .line 1917
    .local v14, "lineRight":I
    invoke-direct {v0, v4, v13, v14}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v15

    .line 1919
    .local v15, "lineStartPos":I
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 1920
    .local v2, "lineTop":I
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    .line 1922
    .local v3, "lineBottom":I
    move/from16 v5, p1

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 1923
    .local v16, "startIndex":I
    move/from16 v6, p2

    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1924
    .local v7, "endIndex":I
    move/from16 v8, v16

    .local v8, "index":I
    :goto_1
    if-ge v8, v7, :cond_2

    .line 1925
    sub-int v17, v8, v10

    .line 1926
    .local v17, "offset":I
    mul-int/lit8 v18, v17, 0x2

    aget v18, v1, v18

    int-to-float v0, v15

    add-float v18, v18, v0

    .line 1927
    .local v18, "left":F
    mul-int/lit8 v0, v17, 0x2

    add-int/lit8 v0, v0, 0x1

    aget v0, v1, v0

    move/from16 v19, v0

    int-to-float v0, v15

    add-float v0, v19, v0

    .line 1929
    .local v0, "right":F
    int-to-float v6, v2

    move/from16 v19, v8

    .end local v8    # "index":I
    .local v19, "index":I
    int-to-float v8, v3

    move/from16 v5, v18

    move/from16 v18, v3

    move/from16 v3, v19

    move/from16 v19, v7

    move v7, v0

    move v0, v2

    move-object/from16 v2, p5

    .end local v2    # "lineTop":I
    .local v0, "lineTop":I
    .local v3, "index":I
    .local v5, "left":F
    .local v7, "right":F
    .local v18, "lineBottom":I
    .local v19, "endIndex":I
    invoke-interface/range {v2 .. v8}, Landroid/text/Layout$CharacterBoundsListener;->onCharacterBounds(IIFFFF)V

    .line 1924
    .end local v5    # "left":F
    .end local v7    # "right":F
    .end local v17    # "offset":I
    add-int/lit8 v8, v3, 0x1

    move/from16 v5, p1

    move/from16 v6, p2

    move v2, v0

    move/from16 v3, v18

    move/from16 v7, v19

    move-object/from16 v0, p0

    .end local v3    # "index":I
    .restart local v8    # "index":I
    goto :goto_1

    .end local v0    # "lineTop":I
    .end local v18    # "lineBottom":I
    .end local v19    # "endIndex":I
    .restart local v2    # "lineTop":I
    .local v3, "lineBottom":I
    .local v7, "endIndex":I
    :cond_2
    move v0, v2

    move/from16 v18, v3

    move/from16 v19, v7

    move v3, v8

    .line 1906
    .end local v2    # "lineTop":I
    .end local v3    # "lineBottom":I
    .end local v7    # "endIndex":I
    .end local v8    # "index":I
    .end local v10    # "lineStart":I
    .end local v11    # "lineEnd":I
    .end local v12    # "lineLength":I
    .end local v13    # "lineLeft":I
    .end local v14    # "lineRight":I
    .end local v15    # "lineStartPos":I
    .end local v16    # "startIndex":I
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    .line 1932
    .end local v4    # "line":I
    :cond_3
    invoke-interface/range {p5 .. p5}, Landroid/text/Layout$CharacterBoundsListener;->onEnd()V

    .line 1933
    return-void
.end method

.method public static whitelist getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F
    .locals 1
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "paint"    # Landroid/text/TextPaint;

    .line 250
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-static {p0, p1, p2, p3, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)F

    move-result v0

    return v0
.end method

.method public static greylist-max-o getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)F
    .locals 7
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .line 261
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p0    # "source":Ljava/lang/CharSequence;
    .end local p1    # "start":I
    .end local p2    # "end":I
    .end local p3    # "paint":Landroid/text/TextPaint;
    .end local p4    # "textDir":Landroid/text/TextDirectionHeuristic;
    .local v0, "source":Ljava/lang/CharSequence;
    .local v1, "start":I
    .local v2, "end":I
    .local v3, "paint":Landroid/text/TextPaint;
    .local v4, "textDir":Landroid/text/TextDirectionHeuristic;
    invoke-static/range {v0 .. v6}, Landroid/text/Layout;->getDesiredWidthWithLimit(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;FZ)F

    move-result p0

    return p0
.end method

.method public static whitelist getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .locals 2
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;

    .line 238
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v0

    return v0
.end method

.method public static blacklist getDesiredWidthWithLimit(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;FZ)F
    .locals 7
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p5, "upperLimit"    # F
    .param p6, "useBoundsForWidth"    # Z

    .line 273
    const/4 v0, 0x0

    .line 276
    .local v0, "need":F
    move v1, p1

    move v3, v1

    .local v3, "i":I
    :goto_0
    if-gt v3, p2, :cond_3

    .line 277
    const/16 v1, 0xa

    invoke-static {p0, v1, v3, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    .line 279
    .local v1, "next":I
    if-gez v1, :cond_0

    .line 280
    move v1, p2

    move v4, v1

    goto :goto_1

    .line 279
    :cond_0
    move v4, v1

    .line 283
    .end local v1    # "next":I
    .local v4, "next":I
    :goto_1
    move-object v2, p0

    move-object v1, p3

    move-object v5, p4

    move v6, p6

    .end local p0    # "source":Ljava/lang/CharSequence;
    .end local p3    # "paint":Landroid/text/TextPaint;
    .end local p4    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local p6    # "useBoundsForWidth":Z
    .local v1, "paint":Landroid/text/TextPaint;
    .local v2, "source":Ljava/lang/CharSequence;
    .local v5, "textDir":Landroid/text/TextDirectionHeuristic;
    .local v6, "useBoundsForWidth":Z
    invoke-static/range {v1 .. v6}, Landroid/text/Layout;->measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Z)F

    move-result p0

    .line 284
    .local p0, "w":F
    cmpl-float p3, p0, p5

    if-lez p3, :cond_1

    .line 285
    return p5

    .line 288
    :cond_1
    cmpl-float p3, p0, v0

    if-lez p3, :cond_2

    .line 289
    move p3, p0

    move v0, p3

    .line 291
    :cond_2
    nop

    .end local p0    # "w":F
    add-int/lit8 v4, v4, 0x1

    .line 276
    move v3, v4

    move-object p3, v1

    move-object p0, v2

    move-object p4, v5

    move p6, v6

    goto :goto_0

    .line 294
    .end local v1    # "paint":Landroid/text/TextPaint;
    .end local v2    # "source":Ljava/lang/CharSequence;
    .end local v3    # "i":I
    .end local v4    # "next":I
    .end local v5    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v6    # "useBoundsForWidth":Z
    .local p0, "source":Ljava/lang/CharSequence;
    .restart local p3    # "paint":Landroid/text/TextPaint;
    .restart local p4    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local p6    # "useBoundsForWidth":Z
    :cond_3
    return v0
.end method

.method private static blacklist getEndOffsetForAreaWithinRun(Landroid/graphics/RectF;IIII[FIIFFZLandroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I
    .locals 12
    .param p0, "area"    # Landroid/graphics/RectF;
    .param p1, "lineTop"    # I
    .param p2, "lineBottom"    # I
    .param p3, "lineStartOffset"    # I
    .param p4, "lineStartPos"    # I
    .param p5, "horizontalBounds"    # [F
    .param p6, "runStartOffset"    # I
    .param p7, "runEndOffset"    # I
    .param p8, "runLeft"    # F
    .param p9, "runRight"    # F
    .param p10, "isRtl"    # Z
    .param p11, "segmentFinder"    # Landroid/text/SegmentFinder;
    .param p12, "inclusionStrategy"    # Landroid/text/Layout$TextInclusionStrategy;

    .line 2698
    move/from16 v0, p4

    move-object/from16 v1, p11

    iget v2, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v2, p9, v2

    const/4 v3, -0x1

    if-ltz v2, :cond_13

    iget v2, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v2, p8, v2

    if-lez v2, :cond_0

    move-object/from16 v10, p12

    goto/16 :goto_8

    .line 2706
    :cond_0
    const/4 v2, 0x1

    if-nez p10, :cond_1

    iget v4, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, p9

    if-gez v4, :cond_2

    :cond_1
    if-eqz p10, :cond_3

    iget v4, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, p8

    if-gtz v4, :cond_3

    .line 2707
    :cond_2
    add-int/lit8 v4, p7, -0x1

    .local v4, "lastCharOffset":I
    goto :goto_3

    .line 2709
    .end local v4    # "lastCharOffset":I
    :cond_3
    move/from16 v4, p6

    .line 2710
    .local v4, "low":I
    move/from16 v5, p7

    .line 2712
    .local v5, "high":I
    :goto_0
    sub-int v6, v5, v4

    if-le v6, v2, :cond_7

    .line 2713
    add-int v6, v5, v4

    div-int/lit8 v6, v6, 0x2

    .line 2715
    .local v6, "guess":I
    int-to-float v7, v0

    mul-int/lit8 v8, v6, 0x2

    aget v8, p5, v8

    add-float/2addr v7, v8

    .line 2716
    .local v7, "pos":F
    if-nez p10, :cond_4

    iget v8, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v8, v7, v8

    if-gtz v8, :cond_5

    :cond_4
    if-eqz p10, :cond_6

    iget v8, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v8, v7, v8

    if-gez v8, :cond_6

    .line 2717
    :cond_5
    move v5, v6

    goto :goto_1

    .line 2719
    :cond_6
    move v4, v6

    .line 2721
    .end local v7    # "pos":F
    :goto_1
    goto :goto_0

    .line 2725
    .end local v6    # "guess":I
    :cond_7
    if-eqz p10, :cond_8

    move v6, v5

    goto :goto_2

    :cond_8
    move v6, v4

    :goto_2
    move v4, v6

    .line 2732
    .end local v5    # "high":I
    .local v4, "lastCharOffset":I
    :goto_3
    add-int v5, p3, v4

    add-int/2addr v5, v2

    .line 2733
    invoke-virtual {v1, v5}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v5

    .line 2734
    .local v5, "segmentStartOffset":I
    if-ne v5, v3, :cond_9

    .line 2737
    return v3

    .line 2739
    :cond_9
    invoke-virtual {v1, v5}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v6

    .line 2740
    .local v6, "segmentEndOffset":I
    add-int v7, p3, p6

    if-gt v6, v7, :cond_a

    .line 2743
    return v3

    .line 2747
    :cond_a
    add-int v7, p3, p6

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2748
    add-int v7, p3, p7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 2750
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, p1

    int-to-float v9, p2

    const/4 v10, 0x0

    invoke-direct {v7, v10, v8, v10, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2753
    .local v7, "segmentBounds":Landroid/graphics/RectF;
    :goto_4
    int-to-float v8, v0

    sub-int v9, v6, p3

    sub-int/2addr v9, v2

    mul-int/lit8 v9, v9, 0x2

    .line 2754
    xor-int/lit8 v10, p10, 0x1

    add-int/2addr v9, v10

    aget v9, p5, v9

    add-float/2addr v8, v9

    .line 2755
    .local v8, "segmentEnd":F
    if-nez p10, :cond_b

    iget v9, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v9, v8, v9

    if-ltz v9, :cond_c

    :cond_b
    if-eqz p10, :cond_d

    iget v9, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v9, v8, v9

    if-lez v9, :cond_d

    .line 2758
    :cond_c
    return v3

    .line 2761
    :cond_d
    int-to-float v9, v0

    sub-int v10, v5, p3

    mul-int/lit8 v10, v10, 0x2

    .line 2762
    add-int v10, v10, p10

    aget v10, p5, v10

    add-float/2addr v9, v10

    .line 2763
    .local v9, "segmentStart":F
    if-eqz p10, :cond_e

    move v10, v8

    goto :goto_5

    :cond_e
    move v10, v9

    :goto_5
    iput v10, v7, Landroid/graphics/RectF;->left:F

    .line 2764
    if-eqz p10, :cond_f

    move v10, v9

    goto :goto_6

    :cond_f
    move v10, v8

    :goto_6
    iput v10, v7, Landroid/graphics/RectF;->right:F

    .line 2765
    move-object/from16 v10, p12

    invoke-interface {v10, v7, p0}, Landroid/text/Layout$TextInclusionStrategy;->isSegmentInside(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 2766
    return v6

    .line 2769
    :cond_10
    invoke-virtual {v1, v6}, Landroid/text/SegmentFinder;->previousEndBoundary(I)I

    move-result v6

    .line 2770
    if-eq v6, v3, :cond_12

    add-int v11, p3, p6

    if-gt v6, v11, :cond_11

    goto :goto_7

    .line 2775
    :cond_11
    invoke-virtual {v1, v6}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v5

    .line 2778
    add-int v11, p3, p6

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2779
    .end local v8    # "segmentEnd":F
    .end local v9    # "segmentStart":F
    goto :goto_4

    .line 2773
    .restart local v8    # "segmentEnd":F
    .restart local v9    # "segmentStart":F
    :cond_12
    :goto_7
    return v3

    .line 2698
    .end local v4    # "lastCharOffset":I
    .end local v5    # "segmentStartOffset":I
    .end local v6    # "segmentEndOffset":I
    .end local v7    # "segmentBounds":Landroid/graphics/RectF;
    .end local v8    # "segmentEnd":F
    .end local v9    # "segmentStart":F
    :cond_13
    move-object/from16 v10, p12

    .line 2700
    :goto_8
    return v3
.end method

.method private greylist-max-o getHorizontal(IZ)F
    .locals 1
    .param p1, "offset"    # I
    .param p2, "primary"    # Z

    .line 1706
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v0

    :goto_0
    return v0
.end method

.method private greylist-max-o getHorizontal(IZIZ)F
    .locals 17
    .param p1, "offset"    # I
    .param p2, "trailing"    # Z
    .param p3, "line"    # I
    .param p4, "clamped"    # Z

    .line 1716
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 1717
    .local v5, "start":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    .line 1718
    .local v6, "end":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    .line 1719
    .local v7, "dir":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v9

    .line 1720
    .local v9, "hasTab":Z
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v8

    .line 1722
    .local v8, "directions":Landroid/text/Layout$Directions;
    const/4 v2, 0x0

    .line 1723
    .local v2, "tabStops":Landroid/text/Layout$TabStops;
    if-eqz v9, :cond_0

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spanned;

    if-eqz v3, :cond_0

    .line 1726
    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spanned;

    const-class v4, Landroid/text/style/TabStopSpan;

    invoke-static {v3, v5, v6, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/TabStopSpan;

    .line 1727
    .local v3, "tabs":[Landroid/text/style/TabStopSpan;
    array-length v4, v3

    if-lez v4, :cond_0

    .line 1728
    new-instance v4, Landroid/text/Layout$TabStops;

    const/high16 v10, 0x41a00000    # 20.0f

    invoke-direct {v4, v10, v3}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v2, v4

    move-object v10, v2

    goto :goto_0

    .line 1732
    .end local v3    # "tabs":[Landroid/text/style/TabStopSpan;
    :cond_0
    move-object v10, v2

    .end local v2    # "tabStops":Landroid/text/Layout$TabStops;
    .local v10, "tabStops":Landroid/text/Layout$TabStops;
    :goto_0
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v11

    .line 1733
    .local v11, "tl":Landroid/text/TextLine;
    iget-object v3, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v4, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1734
    move-object v2, v11

    .end local v11    # "tl":Landroid/text/TextLine;
    .local v2, "tl":Landroid/text/TextLine;
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v11

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v12

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v13

    add-int/2addr v12, v13

    .line 1735
    invoke-virtual {v0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v13

    .line 1733
    invoke-virtual/range {v2 .. v13}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 1736
    sub-int v12, p1, v5

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x0

    move/from16 v13, p2

    move-object v11, v2

    .end local v2    # "tl":Landroid/text/TextLine;
    .restart local v11    # "tl":Landroid/text/TextLine;
    invoke-virtual/range {v11 .. v16}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F

    move-result v2

    .line 1737
    .local v2, "wid":F
    invoke-static {v11}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1739
    if-eqz p4, :cond_1

    iget v3, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 1740
    iget v3, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v2, v3

    .line 1742
    :cond_1
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v3

    .line 1743
    .local v3, "left":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 1745
    .local v4, "right":I
    invoke-direct {v0, v1, v3, v4}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v12, v2

    return v12
.end method

.method private greylist-max-o getHorizontal(IZZ)F
    .locals 2
    .param p1, "offset"    # I
    .param p2, "trailing"    # Z
    .param p3, "clamped"    # Z

    .line 1710
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 1712
    .local v0, "line":I
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v1

    return v1
.end method

.method private greylist-max-o getJustifyWidth(I)F
    .locals 16
    .param p1, "lineNum"    # I

    .line 686
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 688
    .local v2, "paraAlign":Landroid/text/Layout$Alignment;
    const/4 v3, 0x0

    .line 689
    .local v3, "left":I
    iget v4, v0, Landroid/text/Layout;->mWidth:I

    .line 691
    .local v4, "right":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 693
    .local v5, "dir":I
    sget-object v6, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 694
    .local v6, "spans":[Landroid/text/style/ParagraphStyle;
    iget-boolean v7, v0, Landroid/text/Layout;->mSpannedText:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_8

    .line 695
    iget-object v7, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v7, Landroid/text/Spanned;

    .line 696
    .local v7, "sp":Landroid/text/Spanned;
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v9

    .line 698
    .local v9, "start":I
    if-eqz v9, :cond_1

    iget-object v10, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v11, v9, -0x1

    invoke-interface {v10, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/16 v11, 0xa

    if-ne v10, v11, :cond_0

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v10, v8

    .line 700
    .local v10, "isFirstParaLine":Z
    :goto_1
    if-eqz v10, :cond_3

    .line 701
    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    const-class v12, Landroid/text/style/ParagraphStyle;

    invoke-interface {v7, v9, v11, v12}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v11

    .line 703
    .local v11, "spanEnd":I
    const-class v12, Landroid/text/style/ParagraphStyle;

    invoke-static {v7, v9, v11, v12}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    move-object v6, v12

    check-cast v6, [Landroid/text/style/ParagraphStyle;

    .line 705
    array-length v12, v6

    sub-int/2addr v12, v8

    .local v12, "n":I
    :goto_2
    if-ltz v12, :cond_3

    .line 706
    aget-object v13, v6, v12

    instance-of v13, v13, Landroid/text/style/AlignmentSpan;

    if-eqz v13, :cond_2

    .line 707
    aget-object v13, v6, v12

    check-cast v13, Landroid/text/style/AlignmentSpan;

    invoke-interface {v13}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v2

    .line 708
    goto :goto_3

    .line 705
    :cond_2
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    .line 713
    .end local v11    # "spanEnd":I
    .end local v12    # "n":I
    :cond_3
    :goto_3
    array-length v11, v6

    .line 714
    .local v11, "length":I
    move v12, v10

    .line 715
    .local v12, "useFirstLineMargin":Z
    const/4 v13, 0x0

    .local v13, "n":I
    :goto_4
    if-ge v13, v11, :cond_5

    .line 716
    aget-object v14, v6, v13

    instance-of v14, v14, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v14, :cond_4

    .line 717
    aget-object v14, v6, v13

    check-cast v14, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v14}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v14

    .line 718
    .local v14, "count":I
    aget-object v15, v6, v13

    invoke-interface {v7, v15}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v15

    .line 719
    .local v15, "startLine":I
    add-int v8, v15, v14

    if-ge v1, v8, :cond_4

    .line 720
    const/4 v12, 0x1

    .line 721
    goto :goto_5

    .line 715
    .end local v14    # "count":I
    .end local v15    # "startLine":I
    :cond_4
    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x1

    goto :goto_4

    .line 725
    .end local v13    # "n":I
    :cond_5
    :goto_5
    const/4 v8, 0x0

    .local v8, "n":I
    :goto_6
    if-ge v8, v11, :cond_8

    .line 726
    aget-object v13, v6, v8

    instance-of v13, v13, Landroid/text/style/LeadingMarginSpan;

    if-eqz v13, :cond_7

    .line 727
    aget-object v13, v6, v8

    check-cast v13, Landroid/text/style/LeadingMarginSpan;

    .line 728
    .local v13, "margin":Landroid/text/style/LeadingMarginSpan;
    const/4 v14, -0x1

    if-ne v5, v14, :cond_6

    .line 729
    invoke-interface {v13, v12}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v14

    sub-int/2addr v4, v14

    goto :goto_7

    .line 731
    :cond_6
    invoke-interface {v13, v12}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v14

    add-int/2addr v3, v14

    .line 725
    .end local v13    # "margin":Landroid/text/style/LeadingMarginSpan;
    :cond_7
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 738
    .end local v7    # "sp":Landroid/text/Spanned;
    .end local v8    # "n":I
    .end local v9    # "start":I
    .end local v10    # "isFirstParaLine":Z
    .end local v11    # "length":I
    .end local v12    # "useFirstLineMargin":Z
    :cond_8
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v2, v7, :cond_a

    .line 739
    const/4 v7, 0x1

    if-ne v5, v7, :cond_9

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_8

    :cond_9
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .local v7, "align":Landroid/text/Layout$Alignment;
    :goto_8
    goto :goto_a

    .line 740
    .end local v7    # "align":Landroid/text/Layout$Alignment;
    :cond_a
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v2, v7, :cond_c

    .line 741
    const/4 v7, 0x1

    if-ne v5, v7, :cond_b

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_9

    :cond_b
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .restart local v7    # "align":Landroid/text/Layout$Alignment;
    :goto_9
    goto :goto_a

    .line 743
    .end local v7    # "align":Landroid/text/Layout$Alignment;
    :cond_c
    move-object v7, v2

    .line 747
    .restart local v7    # "align":Landroid/text/Layout$Alignment;
    :goto_a
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v7, v8, :cond_e

    .line 748
    const/4 v8, 0x1

    if-ne v5, v8, :cond_d

    .line 749
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    .local v8, "indentWidth":I
    goto :goto_b

    .line 751
    .end local v8    # "indentWidth":I
    :cond_d
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    neg-int v8, v8

    .restart local v8    # "indentWidth":I
    goto :goto_b

    .line 753
    .end local v8    # "indentWidth":I
    :cond_e
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v7, v8, :cond_10

    .line 754
    const/4 v8, 0x1

    if-ne v5, v8, :cond_f

    .line 755
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    neg-int v8, v8

    .restart local v8    # "indentWidth":I
    goto :goto_b

    .line 757
    .end local v8    # "indentWidth":I
    :cond_f
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    .restart local v8    # "indentWidth":I
    goto :goto_b

    .line 760
    .end local v8    # "indentWidth":I
    :cond_10
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    .line 763
    .restart local v8    # "indentWidth":I
    :goto_b
    sub-int v9, v4, v3

    sub-int/2addr v9, v8

    int-to-float v9, v9

    return v9
.end method

.method private greylist-max-o getLineExtent(ILandroid/text/Layout$TabStops;Z)F
    .locals 12
    .param p1, "line"    # I
    .param p2, "tabStops"    # Landroid/text/Layout$TabStops;
    .param p3, "full"    # Z

    .line 2168
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 2169
    .local v3, "start":I
    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v0

    :goto_0
    move v4, v0

    .line 2170
    .local v4, "end":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    .line 2171
    .local v7, "hasTabs":Z
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 2172
    .local v6, "directions":Landroid/text/Layout$Directions;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 2174
    .local v5, "dir":I
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 2175
    .local v0, "tl":Landroid/text/TextLine;
    iget-object v1, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 2176
    .local v1, "paint":Landroid/text/TextPaint;
    iget-object v2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 2177
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getStartHyphenEdit(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    .line 2178
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEndHyphenEdit(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    .line 2179
    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 2180
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v9

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v8

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v10

    add-int/2addr v10, v8

    .line 2181
    invoke-virtual {p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v11

    .line 2179
    move-object v8, p2

    .end local p2    # "tabStops":Landroid/text/Layout$TabStops;
    .local v8, "tabStops":Landroid/text/Layout$TabStops;
    invoke-virtual/range {v0 .. v11}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 2182
    invoke-direct {p0, p1}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2183
    iget p2, p0, Landroid/text/Layout;->mJustificationMode:I

    invoke-direct {p0, p1}, Landroid/text/Layout;->getJustifyWidth(I)F

    move-result v2

    invoke-virtual {v0, p2, v2}, Landroid/text/TextLine;->justify(IF)V

    .line 2185
    :cond_1
    iget-boolean p2, p0, Landroid/text/Layout;->mUseBoundsForWidth:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, p2, v2}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZLandroid/text/TextLine$LineInfo;)F

    move-result p2

    .line 2186
    .local p2, "width":F
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 2187
    return p2
.end method

.method private greylist-max-o getLineExtent(IZ)F
    .locals 12
    .param p1, "line"    # I
    .param p2, "full"    # Z

    .line 2066
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 2067
    .local v3, "start":I
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v0

    :goto_0
    move v4, v0

    .line 2069
    .local v4, "end":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    .line 2070
    .local v7, "hasTabs":Z
    const/4 v0, 0x0

    .line 2071
    .local v0, "tabStops":Landroid/text/Layout$TabStops;
    if-eqz v7, :cond_1

    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spanned;

    if-eqz v1, :cond_1

    .line 2074
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    const-class v2, Landroid/text/style/TabStopSpan;

    invoke-static {v1, v3, v4, v2}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/TabStopSpan;

    .line 2075
    .local v1, "tabs":[Landroid/text/style/TabStopSpan;
    array-length v2, v1

    if-lez v2, :cond_1

    .line 2076
    new-instance v2, Landroid/text/Layout$TabStops;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-direct {v2, v5, v1}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v0, v2

    move-object v8, v0

    goto :goto_1

    .line 2079
    .end local v1    # "tabs":[Landroid/text/style/TabStopSpan;
    :cond_1
    move-object v8, v0

    .end local v0    # "tabStops":Landroid/text/Layout$TabStops;
    .local v8, "tabStops":Landroid/text/Layout$TabStops;
    :goto_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 2081
    .local v6, "directions":Landroid/text/Layout$Directions;
    if-nez v6, :cond_2

    .line 2082
    const/4 v0, 0x0

    return v0

    .line 2084
    :cond_2
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 2086
    .local v5, "dir":I
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 2087
    .local v0, "tl":Landroid/text/TextLine;
    iget-object v1, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 2088
    .local v1, "paint":Landroid/text/TextPaint;
    iget-object v2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 2089
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getStartHyphenEdit(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    .line 2090
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEndHyphenEdit(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    .line 2091
    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 2092
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v9

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v10

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v11

    add-int/2addr v10, v11

    .line 2093
    invoke-virtual {p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v11

    .line 2091
    invoke-virtual/range {v0 .. v11}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 2094
    invoke-direct {p0, p1}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2095
    iget v2, p0, Landroid/text/Layout;->mJustificationMode:I

    invoke-direct {p0, p1}, Landroid/text/Layout;->getJustifyWidth(I)F

    move-result v9

    invoke-virtual {v0, v2, v9}, Landroid/text/TextLine;->justify(IF)V

    .line 2097
    :cond_3
    iget-boolean v2, p0, Landroid/text/Layout;->mUseBoundsForWidth:Z

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v9, v2, v9}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZLandroid/text/TextLine$LineInfo;)F

    move-result v2

    .line 2098
    .local v2, "width":F
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 2099
    return v2
.end method

.method private greylist-max-o getLineHorizontals(IZZ)[F
    .locals 17
    .param p1, "line"    # I
    .param p2, "clamped"    # Z
    .param p3, "primary"    # Z

    .line 1757
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1758
    .local v4, "start":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 1759
    .local v5, "end":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .line 1760
    .local v6, "dir":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v8

    .line 1761
    .local v8, "hasTab":Z
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 1763
    .local v7, "directions":Landroid/text/Layout$Directions;
    const/4 v1, 0x0

    .line 1764
    .local v1, "tabStops":Landroid/text/Layout$TabStops;
    if-eqz v8, :cond_0

    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spanned;

    if-eqz v2, :cond_0

    .line 1767
    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, v4, v5, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/TabStopSpan;

    .line 1768
    .local v2, "tabs":[Landroid/text/style/TabStopSpan;
    array-length v3, v2

    if-lez v3, :cond_0

    .line 1769
    new-instance v3, Landroid/text/Layout$TabStops;

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-direct {v3, v9, v2}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v1, v3

    move-object v9, v1

    goto :goto_0

    .line 1773
    .end local v2    # "tabs":[Landroid/text/style/TabStopSpan;
    :cond_0
    move-object v9, v1

    .end local v1    # "tabStops":Landroid/text/Layout$TabStops;
    .local v9, "tabStops":Landroid/text/Layout$TabStops;
    :goto_0
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v1

    .line 1774
    .local v1, "tl":Landroid/text/TextLine;
    iget-object v2, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1775
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v10

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v11

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v12

    add-int/2addr v11, v12

    .line 1776
    invoke-virtual {v0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v12

    .line 1774
    invoke-virtual/range {v1 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 1777
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->primaryIsTrailingPreviousAllLineOffsets(I)[Z

    move-result-object v2

    .line 1778
    .local v2, "trailings":[Z
    if-nez p3, :cond_1

    .line 1779
    const/4 v3, 0x0

    .local v3, "offset":I
    :goto_1
    array-length v10, v2

    if-ge v3, v10, :cond_1

    .line 1780
    aget-boolean v10, v2, v3

    xor-int/lit8 v10, v10, 0x1

    aput-boolean v10, v2, v3

    .line 1779
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1783
    .end local v3    # "offset":I
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/text/TextLine;->measureAllOffsets([ZLandroid/graphics/Paint$FontMetricsInt;)[F

    move-result-object v3

    .line 1784
    .local v3, "wid":[F
    invoke-static {v1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1786
    if-eqz p2, :cond_3

    .line 1787
    const/4 v10, 0x0

    .local v10, "offset":I
    :goto_2
    array-length v11, v3

    if-ge v10, v11, :cond_3

    .line 1788
    aget v11, v3, v10

    iget v12, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_2

    .line 1789
    iget v11, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v11, v11

    aput v11, v3, v10

    .line 1787
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1793
    .end local v10    # "offset":I
    :cond_3
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v10

    .line 1794
    .local v10, "left":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v11

    .line 1796
    .local v11, "right":I
    move/from16 v12, p1

    invoke-direct {v0, v12, v10, v11}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v13

    .line 1797
    .local v13, "lineStartPos":I
    sub-int v14, v5, v4

    add-int/lit8 v14, v14, 0x1

    new-array v14, v14, [F

    .line 1798
    .local v14, "horizontal":[F
    const/4 v15, 0x0

    .local v15, "offset":I
    :goto_3
    array-length v0, v14

    if-ge v15, v0, :cond_4

    .line 1799
    int-to-float v0, v13

    aget v16, v3, v15

    add-float v0, v0, v16

    aput v0, v14, v15

    .line 1798
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    goto :goto_3

    .line 1801
    .end local v15    # "offset":I
    :cond_4
    return-object v14
.end method

.method private greylist-max-o getLineStartPos(III)I
    .locals 10
    .param p1, "line"    # I
    .param p2, "left"    # I
    .param p3, "right"    # I

    .line 1203
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 1204
    .local v0, "align":Landroid/text/Layout$Alignment;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 1206
    .local v1, "dir":I
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    .line 1207
    if-ne v1, v3, :cond_0

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_0
    move-object v0, v2

    goto :goto_2

    .line 1208
    :cond_1
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v2, :cond_3

    .line 1209
    if-ne v1, v3, :cond_2

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_1

    :cond_2
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_1
    move-object v0, v2

    .line 1213
    :cond_3
    :goto_2
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v2, :cond_5

    .line 1214
    if-ne v1, v3, :cond_4

    .line 1215
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v2

    add-int/2addr v2, p2

    .local v2, "x":I
    goto :goto_3

    .line 1217
    .end local v2    # "x":I
    :cond_4
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v2

    add-int/2addr v2, p3

    .restart local v2    # "x":I
    goto :goto_3

    .line 1220
    .end local v2    # "x":I
    :cond_5
    const/4 v2, 0x0

    .line 1221
    .local v2, "tabStops":Landroid/text/Layout$TabStops;
    iget-boolean v4, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v4, :cond_6

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1222
    iget-object v4, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spanned;

    .line 1223
    .local v4, "spanned":Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 1224
    .local v5, "start":I
    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v6

    const-class v7, Landroid/text/style/TabStopSpan;

    invoke-interface {v4, v5, v6, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    .line 1226
    .local v6, "spanEnd":I
    const-class v7, Landroid/text/style/TabStopSpan;

    invoke-static {v4, v5, v6, v7}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/TabStopSpan;

    .line 1228
    .local v7, "tabSpans":[Landroid/text/style/TabStopSpan;
    array-length v8, v7

    if-lez v8, :cond_6

    .line 1229
    new-instance v8, Landroid/text/Layout$TabStops;

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-direct {v8, v9, v7}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v2, v8

    .line 1232
    .end local v4    # "spanned":Landroid/text/Spanned;
    .end local v5    # "start":I
    .end local v6    # "spanEnd":I
    .end local v7    # "tabSpans":[Landroid/text/style/TabStopSpan;
    :cond_6
    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v4}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v4

    float-to-int v4, v4

    .line 1233
    .local v4, "max":I
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_8

    .line 1234
    if-ne v1, v3, :cond_7

    .line 1235
    sub-int v3, p3, v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v5}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v5

    add-int/2addr v3, v5

    move v2, v3

    .local v3, "x":I
    goto :goto_3

    .line 1238
    .end local v3    # "x":I
    :cond_7
    sub-int v3, p2, v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v5}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v5

    add-int/2addr v3, v5

    move v2, v3

    .restart local v3    # "x":I
    goto :goto_3

    .line 1241
    .end local v3    # "x":I
    :cond_8
    and-int/lit8 v4, v4, -0x2

    .line 1242
    add-int v5, p2, p3

    sub-int/2addr v5, v4

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v6}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v6

    add-int/2addr v6, v3

    shr-int v3, v5, v6

    move v2, v3

    .line 1245
    .end local v4    # "max":I
    .local v2, "x":I
    :goto_3
    return v2
.end method

.method private blacklist getLineVisibleEnd(IIIZ)I
    .locals 3
    .param p1, "line"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "trailingSpaceAtLastLineIsVisible"    # Z

    .line 2800
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 2805
    .local v0, "text":Ljava/lang/CharSequence;
    if-eqz p4, :cond_0

    .line 2806
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    .line 2807
    return p3

    .line 2811
    :cond_0
    :goto_0
    if-le p3, p2, :cond_3

    .line 2812
    add-int/lit8 v1, p3, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 2814
    .local v1, "ch":C
    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 2815
    add-int/lit8 v2, p3, -0x1

    return v2

    .line 2818
    :cond_1
    invoke-static {v1}, Landroid/text/TextLine;->isLineEndSpace(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2819
    goto :goto_1

    .line 2811
    :cond_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 2824
    .end local v1    # "ch":C
    :cond_3
    :goto_1
    return p3
.end method

.method private greylist-max-o getOffsetAtStartOf(I)I
    .locals 7
    .param p1, "offset"    # I

    .line 2941
    if-nez p1, :cond_0

    .line 2942
    const/4 v0, 0x0

    return v0

    .line 2944
    :cond_0
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 2945
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 2947
    .local v1, "c":C
    const v2, 0xdc00

    if-lt v1, v2, :cond_1

    const v2, 0xdfff

    if-gt v1, v2, :cond_1

    .line 2948
    add-int/lit8 v2, p1, -0x1

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 2950
    .local v2, "c1":C
    const v3, 0xd800

    if-lt v2, v3, :cond_1

    const v3, 0xdbff

    if-gt v2, v3, :cond_1

    .line 2951
    add-int/lit8 p1, p1, -0x1

    .line 2954
    .end local v2    # "c1":C
    :cond_1
    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v2, :cond_3

    .line 2955
    move-object v2, v0

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/ReplacementSpan;

    invoke-interface {v2, p1, p1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ReplacementSpan;

    .line 2958
    .local v2, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 2959
    move-object v4, v0

    check-cast v4, Landroid/text/Spanned;

    aget-object v5, v2, v3

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 2960
    .local v4, "start":I
    move-object v5, v0

    check-cast v5, Landroid/text/Spanned;

    aget-object v6, v2, v3

    invoke-interface {v5, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 2962
    .local v5, "end":I
    if-ge v4, p1, :cond_2

    if-le v5, p1, :cond_2

    .line 2963
    move p1, v4

    .line 2958
    .end local v4    # "start":I
    .end local v5    # "end":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2967
    .end local v2    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v3    # "i":I
    :cond_3
    return p1
.end method

.method private greylist-max-o getOffsetToLeftRightOf(IZ)I
    .locals 22
    .param p1, "caret"    # I
    .param p2, "toLeft"    # Z

    .line 2885
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 2886
    .local v3, "line":I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 2887
    .local v4, "lineStart":I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 2888
    .local v5, "lineEnd":I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .line 2890
    .local v6, "lineDir":I
    const/4 v7, 0x0

    .line 2891
    .local v7, "lineChanged":Z
    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v6, v8, :cond_0

    move v8, v10

    goto :goto_0

    :cond_0
    move v8, v9

    :goto_0
    if-ne v2, v8, :cond_1

    move v9, v10

    .line 2893
    .local v9, "advance":Z
    :cond_1
    if-eqz v9, :cond_3

    .line 2894
    if-ne v1, v5, :cond_5

    .line 2895
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v8

    sub-int/2addr v8, v10

    if-ge v3, v8, :cond_2

    .line 2896
    const/4 v7, 0x1

    .line 2897
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2899
    :cond_2
    return v1

    .line 2903
    :cond_3
    if-ne v1, v4, :cond_5

    .line 2904
    if-lez v3, :cond_4

    .line 2905
    const/4 v7, 0x1

    .line 2906
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2908
    :cond_4
    return v1

    .line 2913
    :cond_5
    :goto_1
    if-eqz v7, :cond_7

    .line 2914
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 2915
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 2916
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v8

    .line 2917
    .local v8, "newDir":I
    if-eq v8, v6, :cond_6

    .line 2921
    xor-int/lit8 v10, v2, 0x1

    .line 2922
    .end local p2    # "toLeft":Z
    .local v10, "toLeft":Z
    move v6, v8

    move v13, v4

    move v14, v5

    move v15, v6

    move v2, v10

    goto :goto_2

    .line 2917
    .end local v10    # "toLeft":Z
    .restart local p2    # "toLeft":Z
    :cond_6
    move v13, v4

    move v14, v5

    move v15, v6

    goto :goto_2

    .line 2913
    .end local v8    # "newDir":I
    :cond_7
    move v13, v4

    move v14, v5

    move v15, v6

    .line 2926
    .end local v4    # "lineStart":I
    .end local v5    # "lineEnd":I
    .end local v6    # "lineDir":I
    .end local p2    # "toLeft":Z
    .local v2, "toLeft":Z
    .local v13, "lineStart":I
    .local v14, "lineEnd":I
    .local v15, "lineDir":I
    :goto_2
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v16

    .line 2928
    .local v16, "directions":Landroid/text/Layout$Directions;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v10

    .line 2930
    .local v10, "tl":Landroid/text/TextLine;
    iget-object v11, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v12, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 2931
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v19

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v4

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v5

    add-int v20, v4, v5

    .line 2932
    invoke-virtual {v0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v21

    .line 2930
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v10 .. v21}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 2933
    sub-int v4, v1, v13

    invoke-virtual {v10, v4, v2}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v4

    add-int v1, v13, v4

    .line 2934
    .end local p1    # "caret":I
    .local v1, "caret":I
    invoke-static {v10}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 2935
    return v1
.end method

.method private greylist-max-o getParagraphLeadingMargin(I)I
    .locals 14
    .param p1, "line"    # I

    .line 3232
    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3233
    return v1

    .line 3235
    :cond_0
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    .line 3237
    .local v0, "spanned":Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 3238
    .local v2, "lineStart":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    .line 3239
    .local v3, "lineEnd":I
    const-class v4, Landroid/text/style/LeadingMarginSpan;

    invoke-interface {v0, v2, v3, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v4

    .line 3241
    .local v4, "spanEnd":I
    const-class v5, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v0, v2, v4, v5}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/LeadingMarginSpan;

    .line 3243
    .local v5, "spans":[Landroid/text/style/LeadingMarginSpan;
    array-length v6, v5

    if-nez v6, :cond_1

    .line 3244
    return v1

    .line 3247
    :cond_1
    const/4 v6, 0x0

    .line 3249
    .local v6, "margin":I
    const/4 v7, 0x1

    if-eqz v2, :cond_3

    add-int/lit8 v8, v2, -0x1

    invoke-interface {v0, v8}, Landroid/text/Spanned;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_2

    goto :goto_0

    :cond_2
    move v8, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v8, v7

    .line 3250
    .local v8, "useFirstLineMargin":Z
    :goto_1
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    array-length v10, v5

    if-ge v9, v10, :cond_6

    .line 3251
    aget-object v10, v5, v9

    instance-of v10, v10, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v10, :cond_5

    .line 3252
    aget-object v10, v5, v9

    invoke-interface {v0, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    .line 3253
    .local v10, "spStart":I
    invoke-virtual {p0, v10}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v11

    .line 3254
    .local v11, "spanLine":I
    aget-object v12, v5, v9

    check-cast v12, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v12}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v12

    .line 3256
    .local v12, "count":I
    add-int v13, v11, v12

    if-ge p1, v13, :cond_4

    move v13, v7

    goto :goto_3

    :cond_4
    move v13, v1

    :goto_3
    or-int/2addr v8, v13

    .line 3250
    .end local v10    # "spStart":I
    .end local v11    # "spanLine":I
    .end local v12    # "count":I
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 3259
    .end local v9    # "i":I
    :cond_6
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v7, v5

    if-ge v1, v7, :cond_7

    .line 3260
    aget-object v7, v5, v1

    .line 3261
    .local v7, "span":Landroid/text/style/LeadingMarginSpan;
    invoke-interface {v7, v8}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v9

    add-int/2addr v6, v9

    .line 3259
    .end local v7    # "span":Landroid/text/style/LeadingMarginSpan;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3264
    .end local v1    # "i":I
    :cond_7
    return v6
.end method

.method static greylist-max-o getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 2
    .param p0, "text"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Spanned;",
            "II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 3453
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-ne p1, p2, :cond_0

    if-lez p1, :cond_0

    .line 3454
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3457
    :cond_0
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_1

    .line 3458
    move-object v0, p0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3460
    :cond_1
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getStartOffsetForAreaWithinRun(Landroid/graphics/RectF;IIII[FIIFFZLandroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I
    .locals 12
    .param p0, "area"    # Landroid/graphics/RectF;
    .param p1, "lineTop"    # I
    .param p2, "lineBottom"    # I
    .param p3, "lineStartOffset"    # I
    .param p4, "lineStartPos"    # I
    .param p5, "horizontalBounds"    # [F
    .param p6, "runStartOffset"    # I
    .param p7, "runEndOffset"    # I
    .param p8, "runLeft"    # F
    .param p9, "runRight"    # F
    .param p10, "isRtl"    # Z
    .param p11, "segmentFinder"    # Landroid/text/SegmentFinder;
    .param p12, "inclusionStrategy"    # Landroid/text/Layout$TextInclusionStrategy;

    .line 2581
    move/from16 v0, p4

    move-object/from16 v1, p11

    iget v2, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v2, p9, v2

    const/4 v3, -0x1

    if-ltz v2, :cond_13

    iget v2, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v2, p8, v2

    if-lez v2, :cond_0

    move-object/from16 v10, p12

    goto/16 :goto_8

    .line 2589
    :cond_0
    const/4 v2, 0x1

    if-nez p10, :cond_1

    iget v4, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, p8

    if-lez v4, :cond_2

    :cond_1
    if-eqz p10, :cond_3

    iget v4, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, p9

    if-ltz v4, :cond_3

    .line 2590
    :cond_2
    move/from16 v4, p6

    .local v4, "firstCharOffset":I
    goto :goto_3

    .line 2592
    .end local v4    # "firstCharOffset":I
    :cond_3
    move/from16 v4, p6

    .line 2593
    .local v4, "low":I
    move/from16 v5, p7

    .line 2595
    .local v5, "high":I
    :goto_0
    sub-int v6, v5, v4

    if-le v6, v2, :cond_7

    .line 2596
    add-int v6, v5, v4

    div-int/lit8 v6, v6, 0x2

    .line 2598
    .local v6, "guess":I
    int-to-float v7, v0

    mul-int/lit8 v8, v6, 0x2

    aget v8, p5, v8

    add-float/2addr v7, v8

    .line 2599
    .local v7, "pos":F
    if-nez p10, :cond_4

    iget v8, p0, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v7, v8

    if-gtz v8, :cond_5

    :cond_4
    if-eqz p10, :cond_6

    iget v8, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v8, v7, v8

    if-gez v8, :cond_6

    .line 2600
    :cond_5
    move v5, v6

    goto :goto_1

    .line 2602
    :cond_6
    move v4, v6

    .line 2604
    .end local v7    # "pos":F
    :goto_1
    goto :goto_0

    .line 2608
    .end local v6    # "guess":I
    :cond_7
    if-eqz p10, :cond_8

    move v6, v5

    goto :goto_2

    :cond_8
    move v6, v4

    :goto_2
    move v4, v6

    .line 2614
    .end local v5    # "high":I
    .local v4, "firstCharOffset":I
    :goto_3
    add-int v5, p3, v4

    .line 2615
    invoke-virtual {v1, v5}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v5

    .line 2616
    .local v5, "segmentEndOffset":I
    if-ne v5, v3, :cond_9

    .line 2619
    return v3

    .line 2621
    :cond_9
    invoke-virtual {v1, v5}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v6

    .line 2622
    .local v6, "segmentStartOffset":I
    add-int v7, p3, p7

    if-lt v6, v7, :cond_a

    .line 2625
    return v3

    .line 2629
    :cond_a
    add-int v7, p3, p6

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2630
    add-int v7, p3, p7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2632
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, p1

    int-to-float v9, p2

    const/4 v10, 0x0

    invoke-direct {v7, v10, v8, v10, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2635
    .local v7, "segmentBounds":Landroid/graphics/RectF;
    :goto_4
    int-to-float v8, v0

    sub-int v9, v6, p3

    mul-int/lit8 v9, v9, 0x2

    .line 2636
    add-int v9, v9, p10

    aget v9, p5, v9

    add-float/2addr v8, v9

    .line 2637
    .local v8, "segmentStart":F
    if-nez p10, :cond_b

    iget v9, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v9, v8, v9

    if-gtz v9, :cond_c

    :cond_b
    if-eqz p10, :cond_d

    iget v9, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v9, v8, v9

    if-gez v9, :cond_d

    .line 2640
    :cond_c
    return v3

    .line 2643
    :cond_d
    int-to-float v9, v0

    sub-int v10, v5, p3

    sub-int/2addr v10, v2

    mul-int/lit8 v10, v10, 0x2

    .line 2644
    xor-int/lit8 v11, p10, 0x1

    add-int/2addr v10, v11

    aget v10, p5, v10

    add-float/2addr v9, v10

    .line 2645
    .local v9, "segmentEnd":F
    if-eqz p10, :cond_e

    move v10, v9

    goto :goto_5

    :cond_e
    move v10, v8

    :goto_5
    iput v10, v7, Landroid/graphics/RectF;->left:F

    .line 2646
    if-eqz p10, :cond_f

    move v10, v8

    goto :goto_6

    :cond_f
    move v10, v9

    :goto_6
    iput v10, v7, Landroid/graphics/RectF;->right:F

    .line 2647
    move-object/from16 v10, p12

    invoke-interface {v10, v7, p0}, Landroid/text/Layout$TextInclusionStrategy;->isSegmentInside(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 2648
    return v6

    .line 2651
    :cond_10
    invoke-virtual {v1, v6}, Landroid/text/SegmentFinder;->nextStartBoundary(I)I

    move-result v6

    .line 2652
    if-eq v6, v3, :cond_12

    add-int v11, p3, p7

    if-lt v6, v11, :cond_11

    goto :goto_7

    .line 2657
    :cond_11
    invoke-virtual {v1, v6}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v5

    .line 2660
    add-int v11, p3, p7

    invoke-static {v5, v11}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2661
    .end local v8    # "segmentStart":F
    .end local v9    # "segmentEnd":F
    goto :goto_4

    .line 2655
    .restart local v8    # "segmentStart":F
    .restart local v9    # "segmentEnd":F
    :cond_12
    :goto_7
    return v3

    .line 2581
    .end local v4    # "firstCharOffset":I
    .end local v5    # "segmentEndOffset":I
    .end local v6    # "segmentStartOffset":I
    .end local v7    # "segmentBounds":Landroid/graphics/RectF;
    .end local v8    # "segmentStart":F
    .end local v9    # "segmentEnd":F
    :cond_13
    move-object/from16 v10, p12

    .line 2583
    :goto_8
    return v3
.end method

.method private blacklist getStartOrEndOffsetForAreaWithinLine(ILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;Z)I
    .locals 21
    .param p1, "line"    # I
    .param p2, "area"    # Landroid/graphics/RectF;
    .param p3, "segmentFinder"    # Landroid/text/SegmentFinder;
    .param p4, "inclusionStrategy"    # Landroid/text/Layout$TextInclusionStrategy;
    .param p5, "getStart"    # Z

    .line 2493
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    .line 2494
    .local v3, "lineTop":I
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v4

    .line 2496
    .local v4, "lineBottom":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 2497
    .local v5, "lineStartOffset":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v15

    .line 2498
    .local v15, "lineEndOffset":I
    const/16 v16, -0x1

    if-ne v5, v15, :cond_0

    .line 2499
    return v16

    .line 2502
    :cond_0
    sub-int v6, v15, v5

    mul-int/lit8 v6, v6, 0x2

    new-array v7, v6, [F

    .line 2503
    .local v7, "horizontalBounds":[F
    invoke-direct {v0, v1, v7}, Landroid/text/Layout;->fillHorizontalBoundsForLine(I[F)V

    .line 2505
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v6

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v8

    invoke-direct {v0, v1, v6, v8}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v6

    .line 2508
    .local v6, "lineStartPos":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v8

    .line 2509
    .local v8, "directions":Landroid/text/Layout$Directions;
    const/16 v17, 0x1

    if-eqz p5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v8}, Landroid/text/Layout$Directions;->getRunCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 2510
    .local v2, "runIndex":I
    :goto_0
    if-eqz p5, :cond_2

    invoke-virtual {v8}, Landroid/text/Layout$Directions;->getRunCount()I

    move-result v9

    if-lt v2, v9, :cond_3

    :cond_2
    if-nez p5, :cond_9

    if-ltz v2, :cond_9

    .line 2512
    :cond_3
    invoke-virtual {v8, v2}, Landroid/text/Layout$Directions;->getRunStart(I)I

    move-result v9

    .line 2513
    .local v9, "runStartOffset":I
    nop

    .line 2514
    invoke-virtual {v8, v2}, Landroid/text/Layout$Directions;->getRunLength(I)I

    move-result v10

    add-int/2addr v10, v9

    sub-int v11, v15, v5

    .line 2513
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 2516
    .local v10, "runEndOffset":I
    invoke-virtual {v8, v2}, Landroid/text/Layout$Directions;->isRunRtl(I)Z

    move-result v12

    .line 2517
    .local v12, "isRtl":Z
    int-to-float v11, v6

    .line 2518
    if-eqz v12, :cond_4

    .line 2519
    add-int/lit8 v13, v10, -0x1

    mul-int/lit8 v13, v13, 0x2

    aget v13, v7, v13

    goto :goto_1

    .line 2520
    :cond_4
    mul-int/lit8 v13, v9, 0x2

    aget v13, v7, v13

    :goto_1
    add-float/2addr v11, v13

    .line 2521
    .local v11, "runLeft":F
    int-to-float v13, v6

    .line 2522
    if-eqz v12, :cond_5

    .line 2523
    mul-int/lit8 v14, v9, 0x2

    add-int/lit8 v14, v14, 0x1

    aget v14, v7, v14

    goto :goto_2

    .line 2524
    :cond_5
    add-int/lit8 v14, v10, -0x1

    mul-int/lit8 v14, v14, 0x2

    add-int/lit8 v14, v14, 0x1

    aget v14, v7, v14

    :goto_2
    add-float/2addr v13, v14

    .line 2527
    .local v13, "runRight":F
    if-eqz p5, :cond_6

    .line 2528
    move-object/from16 v14, p4

    move/from16 v19, v2

    move-object/from16 v18, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v13

    move-object/from16 v2, p2

    move-object/from16 v13, p3

    .end local v2    # "runIndex":I
    .end local v13    # "runRight":F
    .local v8, "runStartOffset":I
    .local v9, "runEndOffset":I
    .local v10, "runLeft":F
    .local v11, "runRight":F
    .local v18, "directions":Landroid/text/Layout$Directions;
    .local v19, "runIndex":I
    invoke-static/range {v2 .. v14}, Landroid/text/Layout;->getStartOffsetForAreaWithinRun(Landroid/graphics/RectF;IIII[FIIFFZLandroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I

    move-result v20

    goto :goto_3

    .line 2533
    .end local v18    # "directions":Landroid/text/Layout$Directions;
    .end local v19    # "runIndex":I
    .restart local v2    # "runIndex":I
    .local v8, "directions":Landroid/text/Layout$Directions;
    .local v9, "runStartOffset":I
    .local v10, "runEndOffset":I
    .local v11, "runLeft":F
    .restart local v13    # "runRight":F
    :cond_6
    move/from16 v19, v2

    move-object/from16 v18, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v13

    .end local v2    # "runIndex":I
    .end local v13    # "runRight":F
    .local v8, "runStartOffset":I
    .local v9, "runEndOffset":I
    .local v10, "runLeft":F
    .local v11, "runRight":F
    .restart local v18    # "directions":Landroid/text/Layout$Directions;
    .restart local v19    # "runIndex":I
    move-object/from16 v2, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-static/range {v2 .. v14}, Landroid/text/Layout;->getEndOffsetForAreaWithinRun(Landroid/graphics/RectF;IIII[FIIFFZLandroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I

    move-result v20

    :goto_3
    nop

    .line 2538
    .local v20, "result":I
    if-ltz v20, :cond_7

    .line 2539
    return v20

    .line 2542
    :cond_7
    if-eqz p5, :cond_8

    move/from16 v2, v17

    goto :goto_4

    :cond_8
    move/from16 v2, v16

    :goto_4
    add-int v2, v19, v2

    .line 2543
    .end local v8    # "runStartOffset":I
    .end local v9    # "runEndOffset":I
    .end local v10    # "runLeft":F
    .end local v11    # "runRight":F
    .end local v12    # "isRtl":Z
    .end local v19    # "runIndex":I
    .end local v20    # "result":I
    .restart local v2    # "runIndex":I
    move-object/from16 v8, v18

    goto :goto_0

    .line 2510
    .end local v18    # "directions":Landroid/text/Layout$Directions;
    .local v8, "directions":Landroid/text/Layout$Directions;
    :cond_9
    move/from16 v19, v2

    move-object/from16 v18, v8

    .line 2544
    .end local v2    # "runIndex":I
    .end local v8    # "directions":Landroid/text/Layout$Directions;
    .restart local v18    # "directions":Landroid/text/Layout$Directions;
    .restart local v19    # "runIndex":I
    return v16
.end method

.method private blacklist initSpanColors()V
    .locals 1

    .line 409
    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/graphics/hwui/flags/Flags;->highContrastTextSmallTextRect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    if-nez v0, :cond_0

    .line 411
    new-instance v0, Landroid/text/SpanColors;

    invoke-direct {v0}, Landroid/text/SpanColors;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    goto :goto_0

    .line 413
    :cond_0
    iget-object v0, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    invoke-virtual {v0}, Landroid/text/SpanColors;->recycle()V

    goto :goto_0

    .line 416
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    .line 418
    :goto_0
    return-void
.end method

.method private blacklist isHighContrastTextDark(I)Z
    .locals 6
    .param p1, "color"    # I

    .line 673
    const/4 v0, 0x3

    new-array v0, v0, [D

    .line 674
    .local v0, "lab":[D
    invoke-static {p1, v0}, Lcom/android/internal/graphics/ColorUtils;->colorToLAB(I[D)V

    .line 675
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private greylist-max-o isJustificationRequired(I)Z
    .locals 4
    .param p1, "lineNum"    # I

    .line 680
    iget v0, p0, Landroid/text/Layout;->mJustificationMode:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 681
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 682
    .local v0, "lineEnd":I
    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method static synthetic blacklist lambda$fillCharacterBounds$2(II[FIIFFFF)V
    .locals 2
    .param p0, "boundsStart"    # I
    .param p1, "start"    # I
    .param p2, "bounds"    # [F
    .param p3, "index"    # I
    .param p4, "lineNum"    # I
    .param p5, "left"    # F
    .param p6, "lineTop"    # F
    .param p7, "right"    # F
    .param p8, "lineBottom"    # F

    .line 1880
    sub-int v0, p3, p1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p0

    .line 1881
    .local v0, "boundsIndex":I
    aput p5, p2, v0

    .line 1882
    add-int/lit8 v1, v0, 0x1

    aput p6, p2, v1

    .line 1883
    add-int/lit8 v1, v0, 0x2

    aput p7, p2, v1

    .line 1884
    add-int/lit8 v1, v0, 0x3

    aput p8, p2, v1

    .line 1885
    return-void
.end method

.method static synthetic blacklist lambda$getSelectionPath$3(Landroid/graphics/Path;FFFFI)V
    .locals 6
    .param p0, "dest"    # Landroid/graphics/Path;
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "textSelectionLayout"    # I

    .line 3107
    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p0    # "dest":Landroid/graphics/Path;
    .end local p1    # "left":F
    .end local p2    # "top":F
    .end local p3    # "right":F
    .end local p4    # "bottom":F
    .local v0, "dest":Landroid/graphics/Path;
    .local v1, "left":F
    .local v2, "top":F
    .local v3, "right":F
    .local v4, "bottom":F
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method static synthetic blacklist lambda$static$0(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 2
    .param p0, "segmentBounds"    # Landroid/graphics/RectF;
    .param p1, "area"    # Landroid/graphics/RectF;

    .line 218
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$static$1(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 1
    .param p0, "segmentBounds"    # Landroid/graphics/RectF;
    .param p1, "area"    # Landroid/graphics/RectF;

    .line 226
    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method private static blacklist measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Z)F
    .locals 20
    .param p0, "paint"    # Landroid/text/TextPaint;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p5, "useBoundsForWidth"    # Z

    .line 3269
    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    const/4 v1, 0x0

    .line 3270
    .local v1, "mt":Landroid/text/MeasuredParagraph;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v2

    .line 3272
    .local v2, "tl":Landroid/text/TextLine;
    move-object/from16 v13, p4

    :try_start_0
    invoke-static {v3, v4, v5, v13, v1}, Landroid/text/MeasuredParagraph;->buildForBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-object v14, v0

    .line 3273
    .end local v1    # "mt":Landroid/text/MeasuredParagraph;
    .local v14, "mt":Landroid/text/MeasuredParagraph;
    :try_start_1
    invoke-virtual {v14}, Landroid/text/MeasuredParagraph;->getChars()[C

    move-result-object v0

    .line 3274
    .local v0, "chars":[C
    array-length v1, v0

    move v15, v1

    .line 3275
    .local v15, "len":I
    const/4 v1, 0x0

    invoke-virtual {v14, v1, v15}, Landroid/text/MeasuredParagraph;->getDirections(II)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 3276
    .local v7, "directions":Landroid/text/Layout$Directions;
    invoke-virtual {v14}, Landroid/text/MeasuredParagraph;->getParagraphDir()I

    move-result v6

    .line 3277
    .local v6, "dir":I
    const/4 v8, 0x0

    .line 3278
    .local v8, "hasTabs":Z
    const/4 v9, 0x0

    .line 3280
    .local v9, "tabStops":Landroid/text/Layout$TabStops;
    const/4 v10, 0x0

    .line 3281
    .local v10, "margin":I
    instance-of v11, v3, Landroid/text/Spanned;

    if-eqz v11, :cond_1

    .line 3282
    move-object v11, v3

    check-cast v11, Landroid/text/Spanned;

    .line 3283
    .local v11, "spanned":Landroid/text/Spanned;
    const-class v12, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v11, v4, v5, v12}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/LeadingMarginSpan;

    .line 3285
    .local v12, "spans":[Landroid/text/style/LeadingMarginSpan;
    array-length v1, v12

    move/from16 v16, v10

    const/4 v10, 0x0

    .end local v10    # "margin":I
    .local v16, "margin":I
    :goto_0
    if-ge v10, v1, :cond_0

    aget-object v17, v12, v10

    move-object/from16 v18, v17

    .line 3286
    .local v18, "lms":Landroid/text/style/LeadingMarginSpan;
    move-object/from16 v17, v0

    .end local v0    # "chars":[C
    .local v17, "chars":[C
    const/4 v0, 0x1

    move/from16 v19, v1

    move-object/from16 v1, v18

    .end local v18    # "lms":Landroid/text/style/LeadingMarginSpan;
    .local v1, "lms":Landroid/text/style/LeadingMarginSpan;
    invoke-interface {v1, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    add-int v16, v16, v0

    .line 3285
    .end local v1    # "lms":Landroid/text/style/LeadingMarginSpan;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    goto :goto_0

    .end local v17    # "chars":[C
    .restart local v0    # "chars":[C
    :cond_0
    move-object/from16 v17, v0

    .end local v0    # "chars":[C
    .restart local v17    # "chars":[C
    move/from16 v0, v16

    goto :goto_1

    .line 3281
    .end local v11    # "spanned":Landroid/text/Spanned;
    .end local v12    # "spans":[Landroid/text/style/LeadingMarginSpan;
    .end local v16    # "margin":I
    .end local v17    # "chars":[C
    .restart local v0    # "chars":[C
    .restart local v10    # "margin":I
    :cond_1
    move-object/from16 v17, v0

    .end local v0    # "chars":[C
    .restart local v17    # "chars":[C
    move v0, v10

    .line 3289
    .end local v10    # "margin":I
    .local v0, "margin":I
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v15, :cond_5

    .line 3290
    :try_start_2
    aget-char v10, v17, v1

    const/16 v11, 0x9

    if-ne v10, v11, :cond_4

    .line 3291
    const/4 v8, 0x1

    .line 3292
    instance-of v10, v3, Landroid/text/Spanned;

    if-eqz v10, :cond_3

    .line 3293
    move-object v10, v3

    check-cast v10, Landroid/text/Spanned;

    .line 3294
    .local v10, "spanned":Landroid/text/Spanned;
    const-class v11, Landroid/text/style/TabStopSpan;

    invoke-interface {v10, v4, v5, v11}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v11

    .line 3296
    .local v11, "spanEnd":I
    const-class v12, Landroid/text/style/TabStopSpan;

    invoke-static {v10, v4, v11, v12}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/TabStopSpan;

    .line 3298
    .local v12, "spans":[Landroid/text/style/TabStopSpan;
    move/from16 v16, v1

    .end local v1    # "i":I
    .local v16, "i":I
    array-length v1, v12

    if-lez v1, :cond_2

    .line 3299
    new-instance v1, Landroid/text/Layout$TabStops;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v18, v2

    .end local v2    # "tl":Landroid/text/TextLine;
    .local v18, "tl":Landroid/text/TextLine;
    const/high16 v2, 0x41a00000    # 20.0f

    :try_start_3
    invoke-direct {v1, v2, v12}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v9, v1

    .end local v9    # "tabStops":Landroid/text/Layout$TabStops;
    .local v1, "tabStops":Landroid/text/Layout$TabStops;
    goto :goto_3

    .line 3310
    .end local v0    # "margin":I
    .end local v1    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v6    # "dir":I
    .end local v7    # "directions":Landroid/text/Layout$Directions;
    .end local v8    # "hasTabs":Z
    .end local v10    # "spanned":Landroid/text/Spanned;
    .end local v11    # "spanEnd":I
    .end local v12    # "spans":[Landroid/text/style/TabStopSpan;
    .end local v15    # "len":I
    .end local v16    # "i":I
    .end local v17    # "chars":[C
    :catchall_0
    move-exception v0

    move/from16 v4, p5

    move-object v1, v14

    move-object/from16 v2, v18

    goto :goto_6

    .line 3298
    .end local v18    # "tl":Landroid/text/TextLine;
    .restart local v0    # "margin":I
    .restart local v2    # "tl":Landroid/text/TextLine;
    .restart local v6    # "dir":I
    .restart local v7    # "directions":Landroid/text/Layout$Directions;
    .restart local v8    # "hasTabs":Z
    .restart local v9    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v10    # "spanned":Landroid/text/Spanned;
    .restart local v11    # "spanEnd":I
    .restart local v12    # "spans":[Landroid/text/style/TabStopSpan;
    .restart local v15    # "len":I
    .restart local v16    # "i":I
    .restart local v17    # "chars":[C
    :cond_2
    move-object/from16 v18, v2

    .line 3301
    .end local v2    # "tl":Landroid/text/TextLine;
    .end local v10    # "spanned":Landroid/text/Spanned;
    .end local v11    # "spanEnd":I
    .end local v12    # "spans":[Landroid/text/style/TabStopSpan;
    .restart local v18    # "tl":Landroid/text/TextLine;
    :goto_3
    goto :goto_4

    .line 3292
    .end local v16    # "i":I
    .end local v18    # "tl":Landroid/text/TextLine;
    .local v1, "i":I
    .restart local v2    # "tl":Landroid/text/TextLine;
    :cond_3
    move/from16 v16, v1

    move-object/from16 v18, v2

    .end local v1    # "i":I
    .end local v2    # "tl":Landroid/text/TextLine;
    .restart local v16    # "i":I
    .restart local v18    # "tl":Landroid/text/TextLine;
    goto :goto_4

    .line 3289
    .end local v16    # "i":I
    .end local v18    # "tl":Landroid/text/TextLine;
    .restart local v1    # "i":I
    .restart local v2    # "tl":Landroid/text/TextLine;
    :cond_4
    move/from16 v16, v1

    move-object/from16 v18, v2

    .end local v1    # "i":I
    .end local v2    # "tl":Landroid/text/TextLine;
    .restart local v16    # "i":I
    .restart local v18    # "tl":Landroid/text/TextLine;
    add-int/lit8 v1, v16, 0x1

    .end local v16    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 3310
    .end local v0    # "margin":I
    .end local v1    # "i":I
    .end local v6    # "dir":I
    .end local v7    # "directions":Landroid/text/Layout$Directions;
    .end local v8    # "hasTabs":Z
    .end local v9    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v15    # "len":I
    .end local v17    # "chars":[C
    .end local v18    # "tl":Landroid/text/TextLine;
    .restart local v2    # "tl":Landroid/text/TextLine;
    :catchall_1
    move-exception v0

    move-object/from16 v18, v2

    move/from16 v4, p5

    move-object v1, v14

    .end local v2    # "tl":Landroid/text/TextLine;
    .restart local v18    # "tl":Landroid/text/TextLine;
    goto :goto_6

    .line 3289
    .end local v18    # "tl":Landroid/text/TextLine;
    .restart local v0    # "margin":I
    .restart local v1    # "i":I
    .restart local v2    # "tl":Landroid/text/TextLine;
    .restart local v6    # "dir":I
    .restart local v7    # "directions":Landroid/text/Layout$Directions;
    .restart local v8    # "hasTabs":Z
    .restart local v9    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v15    # "len":I
    .restart local v17    # "chars":[C
    :cond_5
    move/from16 v16, v1

    move-object/from16 v18, v2

    .line 3305
    .end local v1    # "i":I
    .end local v2    # "tl":Landroid/text/TextLine;
    .restart local v18    # "tl":Landroid/text/TextLine;
    :goto_4
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v1, v18

    .end local v18    # "tl":Landroid/text/TextLine;
    .local v1, "tl":Landroid/text/TextLine;
    :try_start_4
    invoke-virtual/range {v1 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v2, v1

    .line 3308
    .end local v1    # "tl":Landroid/text/TextLine;
    .restart local v2    # "tl":Landroid/text/TextLine;
    int-to-float v1, v0

    const/4 v3, 0x0

    move/from16 v4, p5

    :try_start_5
    invoke-virtual {v2, v3, v3, v4, v3}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZLandroid/text/TextLine$LineInfo;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    add-float/2addr v1, v3

    .line 3310
    invoke-static {v2}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 3311
    if-eqz v14, :cond_6

    .line 3312
    invoke-virtual {v14}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 3308
    :cond_6
    return v1

    .line 3310
    .end local v0    # "margin":I
    .end local v6    # "dir":I
    .end local v7    # "directions":Landroid/text/Layout$Directions;
    .end local v8    # "hasTabs":Z
    .end local v9    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v15    # "len":I
    .end local v17    # "chars":[C
    :catchall_2
    move-exception v0

    goto :goto_5

    .end local v2    # "tl":Landroid/text/TextLine;
    .restart local v1    # "tl":Landroid/text/TextLine;
    :catchall_3
    move-exception v0

    move/from16 v4, p5

    move-object v2, v1

    move-object v1, v14

    .end local v1    # "tl":Landroid/text/TextLine;
    .restart local v2    # "tl":Landroid/text/TextLine;
    goto :goto_6

    :catchall_4
    move-exception v0

    move/from16 v4, p5

    :goto_5
    move-object v1, v14

    goto :goto_6

    .end local v14    # "mt":Landroid/text/MeasuredParagraph;
    .local v1, "mt":Landroid/text/MeasuredParagraph;
    :catchall_5
    move-exception v0

    move/from16 v4, p5

    :goto_6
    invoke-static {v2}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 3311
    if-eqz v1, :cond_7

    .line 3312
    invoke-virtual {v1}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 3314
    :cond_7
    throw v0
.end method

.method static greylist-max-o nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F
    .locals 5
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "h"    # F
    .param p4, "tabs"    # [Ljava/lang/Object;

    .line 3396
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 3397
    .local v0, "nh":F
    const/4 v1, 0x0

    .line 3399
    .local v1, "alltabs":Z
    instance-of v2, p0, Landroid/text/Spanned;

    if-eqz v2, :cond_4

    .line 3400
    if-nez p4, :cond_0

    .line 3401
    move-object v2, p0

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, p1, p2, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    .line 3402
    const/4 v1, 0x1

    .line 3405
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p4

    if-ge v2, v3, :cond_3

    .line 3406
    if-nez v1, :cond_1

    .line 3407
    aget-object v3, p4, v2

    instance-of v3, v3, Landroid/text/style/TabStopSpan;

    if-nez v3, :cond_1

    .line 3408
    goto :goto_1

    .line 3411
    :cond_1
    aget-object v3, p4, v2

    check-cast v3, Landroid/text/style/TabStopSpan;

    invoke-interface {v3}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v3

    .line 3413
    .local v3, "where":I
    int-to-float v4, v3

    cmpg-float v4, v4, v0

    if-gez v4, :cond_2

    int-to-float v4, v3

    cmpl-float v4, v4, p3

    if-lez v4, :cond_2

    .line 3414
    int-to-float v0, v3

    .line 3405
    .end local v3    # "where":I
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3417
    .end local v2    # "i":I
    :cond_3
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_4

    .line 3418
    return v0

    .line 3421
    :cond_4
    const/high16 v2, 0x41a00000    # 20.0f

    add-float v3, p3, v2

    div-float/2addr v3, v2

    float-to-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    return v3
.end method

.method private static blacklist setToHighlightPaint(Landroid/graphics/Paint;Landroid/graphics/BlendMode;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "p"    # Landroid/graphics/Paint;
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;
    .param p2, "outPaint"    # Landroid/graphics/Paint;

    .line 540
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 541
    :cond_0
    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 542
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 544
    const/16 v0, -0x100

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 545
    return-object p2
.end method

.method private static blacklist shouldDrawHighlightsOnTop(Landroid/graphics/Canvas;)Z
    .locals 1
    .param p0, "canvas"    # Landroid/graphics/Canvas;

    .line 536
    invoke-static {}, Lcom/android/graphics/hwui/flags/Flags;->highContrastTextSmallTextRect()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHighContrastTextEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public whitelist computeDrawingBoundingBox()Landroid/graphics/RectF;
    .locals 21

    .line 1298
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1299
    .local v1, "left":F
    const/4 v2, 0x0

    .line 1300
    .local v2, "right":F
    const/4 v3, 0x0

    .line 1301
    .local v3, "top":F
    const/4 v4, 0x0

    .line 1302
    .local v4, "bottom":F
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v5

    .line 1303
    .local v5, "tl":Landroid/text/TextLine;
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 1304
    .local v6, "rectF":Landroid/graphics/RectF;
    const/4 v7, 0x0

    .local v7, "line":I
    :goto_0
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 1305
    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineStart(I)I

    move-result v8

    .line 1306
    .local v8, "start":I
    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v9

    .line 1308
    .local v9, "end":I
    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v12

    .line 1309
    .local v12, "hasTabs":Z
    const/4 v10, 0x0

    .line 1310
    .local v10, "tabStops":Landroid/text/Layout$TabStops;
    if-eqz v12, :cond_0

    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v11, v11, Landroid/text/Spanned;

    if-eqz v11, :cond_0

    .line 1313
    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v11, Landroid/text/Spanned;

    const-class v13, Landroid/text/style/TabStopSpan;

    invoke-static {v11, v8, v9, v13}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/text/style/TabStopSpan;

    .line 1315
    .local v11, "tabs":[Landroid/text/style/TabStopSpan;
    array-length v13, v11

    if-lez v13, :cond_0

    .line 1316
    new-instance v13, Landroid/text/Layout$TabStops;

    const/high16 v14, 0x41a00000    # 20.0f

    invoke-direct {v13, v14, v11}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v10, v13

    goto :goto_1

    .line 1319
    .end local v11    # "tabs":[Landroid/text/style/TabStopSpan;
    :cond_0
    move-object v13, v10

    .end local v10    # "tabStops":Landroid/text/Layout$TabStops;
    .local v13, "tabStops":Landroid/text/Layout$TabStops;
    :goto_1
    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v11

    .line 1321
    .local v11, "directions":Landroid/text/Layout$Directions;
    if-nez v11, :cond_1

    .line 1322
    move v0, v3

    move-object/from16 v16, v5

    move-object/from16 v18, v6

    move v3, v7

    goto/16 :goto_2

    .line 1324
    :cond_1
    invoke-virtual {v0, v7}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v10

    .line 1326
    .local v10, "dir":I
    move-object v14, v6

    .end local v6    # "rectF":Landroid/graphics/RectF;
    .local v14, "rectF":Landroid/graphics/RectF;
    iget-object v6, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 1327
    .local v6, "paint":Landroid/text/TextPaint;
    iget-object v15, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v15}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1328
    invoke-virtual {v0, v7}, Landroid/text/Layout;->getStartHyphenEdit(I)I

    move-result v15

    invoke-virtual {v6, v15}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    .line 1329
    invoke-virtual {v0, v7}, Landroid/text/Layout;->getEndHyphenEdit(I)I

    move-result v15

    invoke-virtual {v6, v15}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    .line 1330
    iget-object v15, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1331
    move-object/from16 v16, v14

    .end local v14    # "rectF":Landroid/graphics/RectF;
    .local v16, "rectF":Landroid/graphics/RectF;
    invoke-virtual {v0, v7}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v14

    invoke-virtual {v0, v7}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v17

    invoke-virtual {v0, v7}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v18

    add-int v17, v17, v18

    .line 1332
    move-object/from16 v18, v16

    .end local v16    # "rectF":Landroid/graphics/RectF;
    .local v18, "rectF":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v16

    .line 1330
    move/from16 v19, v17

    move/from16 v17, v3

    move v3, v7

    move-object v7, v15

    move/from16 v15, v19

    move/from16 v19, v4

    move-object/from16 v4, v18

    .end local v7    # "line":I
    .end local v18    # "rectF":Landroid/graphics/RectF;
    .local v3, "line":I
    .local v4, "rectF":Landroid/graphics/RectF;
    .local v17, "top":F
    .local v19, "bottom":F
    invoke-virtual/range {v5 .. v16}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 1333
    invoke-direct {v0, v3}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1334
    iget v7, v0, Landroid/text/Layout;->mJustificationMode:I

    invoke-direct {v0, v3}, Landroid/text/Layout;->getJustifyWidth(I)F

    move-result v14

    invoke-virtual {v5, v7, v14}, Landroid/text/TextLine;->justify(IF)V

    .line 1336
    :cond_2
    const/4 v7, 0x0

    const/4 v14, 0x0

    invoke-virtual {v5, v14, v4, v7, v14}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZLandroid/text/TextLine$LineInfo;)F

    .line 1338
    iget v7, v4, Landroid/graphics/RectF;->left:F

    .line 1339
    .local v7, "lineLeft":F
    iget v14, v4, Landroid/graphics/RectF;->right:F

    .line 1340
    .local v14, "lineRight":F
    iget v15, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v16, v5

    .end local v5    # "tl":Landroid/text/TextLine;
    .local v16, "tl":Landroid/text/TextLine;
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v15, v5

    .line 1341
    .local v15, "lineTop":F
    iget v5, v4, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v18, v4

    .end local v4    # "rectF":Landroid/graphics/RectF;
    .restart local v18    # "rectF":Landroid/graphics/RectF;
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v5, v4

    .line 1342
    .local v5, "lineBottom":F
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    const/4 v0, -0x1

    if-ne v4, v0, :cond_3

    .line 1343
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v7, v0

    .line 1344
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v14, v0

    .line 1347
    :cond_3
    if-nez v3, :cond_4

    .line 1348
    move v0, v7

    .line 1349
    .end local v1    # "left":F
    .local v0, "left":F
    move v1, v14

    .line 1350
    .end local v2    # "right":F
    .local v1, "right":F
    move v2, v15

    .line 1351
    .end local v17    # "top":F
    .local v2, "top":F
    move v4, v5

    move/from16 v20, v1

    move v1, v0

    move v0, v2

    move/from16 v2, v20

    .end local v19    # "bottom":F
    .local v4, "bottom":F
    goto :goto_2

    .line 1353
    .end local v0    # "left":F
    .end local v4    # "bottom":F
    .local v1, "left":F
    .local v2, "right":F
    .restart local v17    # "top":F
    .restart local v19    # "bottom":F
    :cond_4
    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1354
    .end local v1    # "left":F
    .restart local v0    # "left":F
    invoke-static {v2, v14}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1355
    .end local v2    # "right":F
    .local v1, "right":F
    move/from16 v4, v17

    .end local v17    # "top":F
    .local v4, "top":F
    invoke-static {v4, v15}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1356
    .end local v4    # "top":F
    .local v2, "top":F
    move/from16 v4, v19

    .end local v19    # "bottom":F
    .local v4, "bottom":F
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    move/from16 v20, v1

    move v1, v0

    move v0, v2

    move/from16 v2, v20

    .line 1304
    .end local v5    # "lineBottom":F
    .end local v6    # "paint":Landroid/text/TextPaint;
    .end local v7    # "lineLeft":F
    .end local v8    # "start":I
    .end local v9    # "end":I
    .end local v10    # "dir":I
    .end local v11    # "directions":Landroid/text/Layout$Directions;
    .end local v12    # "hasTabs":Z
    .end local v13    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v14    # "lineRight":F
    .end local v15    # "lineTop":F
    .local v0, "top":F
    .local v1, "left":F
    .local v2, "right":F
    :goto_2
    add-int/lit8 v7, v3, 0x1

    move v3, v0

    move-object/from16 v5, v16

    move-object/from16 v6, v18

    move-object/from16 v0, p0

    .end local v3    # "line":I
    .local v7, "line":I
    goto/16 :goto_0

    .end local v0    # "top":F
    .end local v16    # "tl":Landroid/text/TextLine;
    .end local v18    # "rectF":Landroid/graphics/RectF;
    .local v3, "top":F
    .local v5, "tl":Landroid/text/TextLine;
    .local v6, "rectF":Landroid/graphics/RectF;
    :cond_5
    move v0, v4

    move-object/from16 v16, v5

    move v4, v3

    .line 1359
    .end local v3    # "top":F
    .end local v5    # "tl":Landroid/text/TextLine;
    .end local v7    # "line":I
    .local v0, "bottom":F
    .local v4, "top":F
    .restart local v16    # "tl":Landroid/text/TextLine;
    invoke-static/range {v16 .. v16}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1360
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v1, v4, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v3
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 448
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/graphics/Path;

    move-object v1, v0

    check-cast v1, Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 449
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "selectionHighlight"    # Landroid/graphics/Path;
    .param p3, "selectionHighlightPaint"    # Landroid/graphics/Paint;
    .param p4, "cursorOffsetVertical"    # I

    .line 466
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .end local p2    # "selectionHighlight":Landroid/graphics/Path;
    .end local p3    # "selectionHighlightPaint":Landroid/graphics/Paint;
    .end local p4    # "cursorOffsetVertical":I
    .local v1, "canvas":Landroid/graphics/Canvas;
    .local v4, "selectionHighlight":Landroid/graphics/Path;
    .local v5, "selectionHighlightPaint":Landroid/graphics/Paint;
    .local v6, "cursorOffsetVertical":I
    invoke-virtual/range {v0 .. v6}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 467
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "selectionPath"    # Landroid/graphics/Path;
    .param p5, "selectionPaint"    # Landroid/graphics/Paint;
    .param p6, "cursorOffsetVertical"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Paint;",
            ">;",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Paint;",
            "I)V"
        }
    .end annotation

    .line 498
    .local p2, "highlightPaths":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Path;>;"
    .local p3, "highlightPaints":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Paint;>;"
    const/4 v2, 0x0

    .line 499
    .local v2, "leftShift":F
    iget-boolean v3, p0, Landroid/text/Layout;->mUseBoundsForWidth:Z

    const/4 v9, 0x0

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/text/Layout;->mShiftDrawingOffsetForStartOverhang:Z

    if-eqz v3, :cond_0

    .line 500
    invoke-virtual {p0}, Landroid/text/Layout;->computeDrawingBoundingBox()Landroid/graphics/RectF;

    move-result-object v3

    .line 501
    .local v3, "drawingRect":Landroid/graphics/RectF;
    iget v4, v3, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, v9

    if-gez v4, :cond_0

    .line 502
    iget v4, v3, Landroid/graphics/RectF;->left:F

    neg-float v2, v4

    .line 503
    invoke-virtual {p1, v2, v9}, Landroid/graphics/Canvas;->translate(FF)V

    move v10, v2

    goto :goto_0

    .line 506
    .end local v3    # "drawingRect":Landroid/graphics/RectF;
    :cond_0
    move v10, v2

    .end local v2    # "leftShift":F
    .local v10, "leftShift":F
    :goto_0
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v11

    .line 507
    .local v11, "lineRange":J
    invoke-static {v11, v12}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v7

    .line 508
    .local v7, "firstLine":I
    invoke-static {v11, v12}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v8

    .line 509
    .local v8, "lastLine":I
    if-gez v8, :cond_1

    return-void

    .line 511
    :cond_1
    invoke-static {p1}, Landroid/text/Layout;->shouldDrawHighlightsOnTop(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 512
    invoke-virtual {p0, p1, v7, v8}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;II)V

    goto :goto_1

    .line 514
    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v8}, Landroid/text/Layout;->drawWithoutText(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    .line 518
    :goto_1
    invoke-virtual {p0, p1, v7, v8}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    .line 523
    invoke-static {p1}, Landroid/text/Layout;->shouldDrawHighlightsOnTop(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 524
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v8}, Landroid/text/Layout;->drawHighlights(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    .line 528
    :cond_3
    cmpl-float v0, v10, v9

    if-eqz v0, :cond_4

    .line 531
    neg-float v0, v10

    invoke-virtual {p1, v0, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 533
    :cond_4
    return-void
.end method

.method public whitelist drawBackground(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 580
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v0

    .line 581
    .local v0, "lineRange":J
    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v2

    .line 582
    .local v2, "firstLine":I
    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v3

    .line 583
    .local v3, "lastLine":I
    if-gez v3, :cond_0

    return-void

    .line 584
    :cond_0
    invoke-virtual {p0, p1, v2, v3}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;II)V

    .line 585
    return-void
.end method

.method public greylist-max-r drawBackground(Landroid/graphics/Canvas;II)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "firstLine"    # I
    .param p3, "lastLine"    # I

    .line 945
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct/range {p0 .. p3}, Landroid/text/Layout;->drawHighContrastBackground(Landroid/graphics/Canvas;II)V

    .line 951
    iget-boolean v2, v0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v2, :cond_a

    .line 952
    iget-object v2, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    if-nez v2, :cond_0

    .line 953
    new-instance v2, Landroid/text/SpanSet;

    const-class v3, Landroid/text/style/LineBackgroundSpan;

    invoke-direct {v2, v3}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v2, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    .line 956
    :cond_0
    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v11, v2

    check-cast v11, Landroid/text/Spanned;

    .line 957
    .local v11, "buffer":Landroid/text/Spanned;
    invoke-interface {v11}, Landroid/text/Spanned;->length()I

    move-result v2

    .line 958
    .local v2, "textLength":I
    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    const/4 v4, 0x0

    invoke-virtual {v3, v11, v4, v2}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 960
    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v3, v3, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v3, :cond_9

    .line 961
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    .line 962
    .local v3, "previousLineBottom":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 963
    .local v4, "previousLineEnd":I
    sget-object v5, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 964
    .local v5, "spans":[Landroid/text/style/ParagraphStyle;
    const/4 v6, 0x0

    .line 965
    .local v6, "spansLength":I
    move-object v7, v5

    .end local v5    # "spans":[Landroid/text/style/ParagraphStyle;
    .local v7, "spans":[Landroid/text/style/ParagraphStyle;
    iget-object v5, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 966
    .local v5, "paint":Landroid/text/TextPaint;
    const/4 v8, 0x0

    .line 967
    .local v8, "spanEnd":I
    move-object v9, v7

    .end local v7    # "spans":[Landroid/text/style/ParagraphStyle;
    .local v9, "spans":[Landroid/text/style/ParagraphStyle;
    iget v7, v0, Landroid/text/Layout;->mWidth:I

    .line 968
    .local v7, "width":I
    move/from16 v10, p2

    move v12, v8

    move v8, v3

    move v3, v12

    move v12, v4

    move v14, v10

    .end local v4    # "previousLineEnd":I
    .local v3, "spanEnd":I
    .local v8, "previousLineBottom":I
    .local v12, "previousLineEnd":I
    .local v14, "i":I
    :goto_0
    move/from16 v15, p3

    if-gt v14, v15, :cond_8

    .line 969
    move v4, v12

    .line 970
    .restart local v4    # "previousLineEnd":I
    .local v12, "start":I
    add-int/lit8 v10, v14, 0x1

    invoke-virtual {v0, v10}, Landroid/text/Layout;->getLineStart(I)I

    move-result v13

    .line 971
    .local v13, "end":I
    move/from16 v16, v13

    .line 973
    .end local v4    # "previousLineEnd":I
    .local v16, "previousLineEnd":I
    move v10, v8

    .line 974
    .local v8, "ltop":I
    .local v10, "previousLineBottom":I
    add-int/lit8 v4, v14, 0x1

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    .line 975
    .local v4, "lbottom":I
    move/from16 v17, v4

    .line 976
    .end local v10    # "previousLineBottom":I
    .local v17, "previousLineBottom":I
    invoke-virtual {v0, v14}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v10

    sub-int v10, v4, v10

    .line 978
    .local v10, "lbaseline":I
    if-lt v13, v3, :cond_6

    .line 981
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    invoke-virtual {v1, v12, v2}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v1

    .line 983
    .end local v3    # "spanEnd":I
    .local v1, "spanEnd":I
    const/4 v3, 0x0

    .line 985
    .end local v6    # "spansLength":I
    .local v3, "spansLength":I
    if-ne v12, v13, :cond_2

    if-nez v12, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v18, v9

    goto :goto_4

    .line 988
    :cond_2
    :goto_1
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    move/from16 v18, v1

    .end local v1    # "spanEnd":I
    .local v18, "spanEnd":I
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v1, v1, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v6, v1, :cond_5

    .line 991
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v1, v1, Landroid/text/SpanSet;->spanStarts:[I

    aget v1, v1, v6

    if-ge v1, v13, :cond_4

    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v1, v1, Landroid/text/SpanSet;->spanEnds:[I

    aget v1, v1, v6

    if-gt v1, v12, :cond_3

    .line 992
    goto :goto_3

    .line 993
    :cond_3
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v1, v1, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v1, [Landroid/text/style/LineBackgroundSpan;

    aget-object v1, v1, v6

    invoke-static {v9, v3, v1}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ParagraphStyle;

    .line 995
    .end local v9    # "spans":[Landroid/text/style/ParagraphStyle;
    .local v1, "spans":[Landroid/text/style/ParagraphStyle;
    add-int/lit8 v3, v3, 0x1

    move-object v9, v1

    .line 988
    .end local v1    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v9    # "spans":[Landroid/text/style/ParagraphStyle;
    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    move/from16 v1, v18

    goto :goto_2

    :cond_5
    move/from16 v1, v18

    move-object/from16 v18, v9

    goto :goto_4

    .line 978
    .end local v18    # "spanEnd":I
    .local v3, "spanEnd":I
    .local v6, "spansLength":I
    :cond_6
    move v1, v3

    move v3, v6

    move-object/from16 v18, v9

    .line 1000
    .end local v6    # "spansLength":I
    .end local v9    # "spans":[Landroid/text/style/ParagraphStyle;
    .local v1, "spanEnd":I
    .local v3, "spansLength":I
    .local v18, "spans":[Landroid/text/style/ParagraphStyle;
    :goto_4
    const/4 v6, 0x0

    .local v6, "n":I
    :goto_5
    if-ge v6, v3, :cond_7

    .line 1001
    aget-object v9, v18, v6

    check-cast v9, Landroid/text/style/LineBackgroundSpan;

    .line 1002
    .local v9, "lineBackgroundSpan":Landroid/text/style/LineBackgroundSpan;
    move/from16 v19, v6

    .end local v6    # "n":I
    .local v19, "n":I
    const/4 v6, 0x0

    move/from16 v20, v3

    move-object v3, v9

    move v9, v10

    move v10, v4

    move-object/from16 v4, p1

    .end local v4    # "lbottom":I
    .local v3, "lineBackgroundSpan":Landroid/text/style/LineBackgroundSpan;
    .local v9, "lbaseline":I
    .local v10, "lbottom":I
    .local v20, "spansLength":I
    invoke-interface/range {v3 .. v14}, Landroid/text/style/LineBackgroundSpan;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V

    .line 1000
    .end local v3    # "lineBackgroundSpan":Landroid/text/style/LineBackgroundSpan;
    add-int/lit8 v6, v19, 0x1

    move v4, v10

    move/from16 v3, v20

    move v10, v9

    .end local v19    # "n":I
    .restart local v6    # "n":I
    goto :goto_5

    .end local v9    # "lbaseline":I
    .end local v20    # "spansLength":I
    .local v3, "spansLength":I
    .restart local v4    # "lbottom":I
    .local v10, "lbaseline":I
    :cond_7
    move/from16 v20, v3

    move/from16 v19, v6

    move v9, v10

    move v10, v4

    .line 968
    .end local v3    # "spansLength":I
    .end local v4    # "lbottom":I
    .end local v6    # "n":I
    .end local v8    # "ltop":I
    .end local v10    # "lbaseline":I
    .end local v12    # "start":I
    .end local v13    # "end":I
    .restart local v20    # "spansLength":I
    add-int/lit8 v14, v14, 0x1

    move v3, v1

    move/from16 v12, v16

    move/from16 v8, v17

    move-object/from16 v9, v18

    move/from16 v6, v20

    move/from16 v1, p2

    goto/16 :goto_0

    .end local v1    # "spanEnd":I
    .end local v16    # "previousLineEnd":I
    .end local v17    # "previousLineBottom":I
    .end local v18    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v20    # "spansLength":I
    .local v3, "spanEnd":I
    .local v6, "spansLength":I
    .local v8, "previousLineBottom":I
    .local v9, "spans":[Landroid/text/style/ParagraphStyle;
    .local v12, "previousLineEnd":I
    :cond_8
    move v10, v8

    move v4, v12

    .end local v8    # "previousLineBottom":I
    .end local v12    # "previousLineEnd":I
    .local v4, "previousLineEnd":I
    .local v10, "previousLineBottom":I
    goto :goto_6

    .line 960
    .end local v3    # "spanEnd":I
    .end local v4    # "previousLineEnd":I
    .end local v5    # "paint":Landroid/text/TextPaint;
    .end local v6    # "spansLength":I
    .end local v7    # "width":I
    .end local v9    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v10    # "previousLineBottom":I
    .end local v14    # "i":I
    :cond_9
    move/from16 v15, p3

    .line 1008
    :goto_6
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    goto :goto_7

    .line 951
    .end local v2    # "textLength":I
    .end local v11    # "buffer":Landroid/text/Spanned;
    :cond_a
    move/from16 v15, p3

    .line 1010
    :goto_7
    return-void
.end method

.method public blacklist drawHighlights(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;III)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "selectionPath"    # Landroid/graphics/Path;
    .param p5, "selectionPaint"    # Landroid/graphics/Paint;
    .param p6, "cursorOffsetVertical"    # I
    .param p7, "firstLine"    # I
    .param p8, "lastLine"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Paint;",
            ">;",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Paint;",
            "III)V"
        }
    .end annotation

    .line 616
    .local p2, "highlightPaths":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Path;>;"
    .local p3, "highlightPaints":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Paint;>;"
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 617
    return-void

    .line 619
    :cond_0
    const/4 v0, 0x0

    if-eqz p6, :cond_1

    int-to-float v1, p6

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 621
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Landroid/text/Layout;->determineHighContrastHighlightBlendMode(Landroid/graphics/Canvas;)Landroid/graphics/BlendMode;

    move-result-object v1

    .line 622
    .local v1, "blendMode":Landroid/graphics/BlendMode;
    if-eqz p2, :cond_6

    .line 623
    if-eqz p3, :cond_5

    .line 627
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 632
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 633
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Path;

    .line 634
    .local v3, "highlight":Landroid/graphics/Path;
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Paint;

    .line 635
    .local v4, "highlightPaint":Landroid/graphics/Paint;
    invoke-static {p1}, Landroid/text/Layout;->shouldDrawHighlightsOnTop(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 636
    iget-object v5, p0, Landroid/text/Layout;->mWorkPlainPaint:Landroid/graphics/Paint;

    invoke-static {v4, v1, v5}, Landroid/text/Layout;->setToHighlightPaint(Landroid/graphics/Paint;Landroid/graphics/BlendMode;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v4, v5

    .line 640
    :cond_2
    if-eqz v3, :cond_3

    .line 641
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 632
    .end local v3    # "highlight":Landroid/graphics/Path;
    .end local v4    # "highlightPaint":Landroid/graphics/Paint;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 628
    .end local v2    # "i":I
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The highlight path size is different from the size of highlight paints"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/text/Layout;
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .end local p2    # "highlightPaths":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Path;>;"
    .end local p3    # "highlightPaints":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Paint;>;"
    .end local p4    # "selectionPath":Landroid/graphics/Path;
    .end local p5    # "selectionPaint":Landroid/graphics/Paint;
    .end local p6    # "cursorOffsetVertical":I
    .end local p7    # "firstLine":I
    .end local p8    # "lastLine":I
    throw v2

    .line 624
    .restart local p0    # "this":Landroid/text/Layout;
    .restart local p1    # "canvas":Landroid/graphics/Canvas;
    .restart local p2    # "highlightPaths":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Path;>;"
    .restart local p3    # "highlightPaints":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Paint;>;"
    .restart local p4    # "selectionPath":Landroid/graphics/Path;
    .restart local p5    # "selectionPaint":Landroid/graphics/Paint;
    .restart local p6    # "cursorOffsetVertical":I
    .restart local p7    # "firstLine":I
    .restart local p8    # "lastLine":I
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "if highlight is specified, highlightPaint must be specified."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/text/Layout;
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .end local p2    # "highlightPaths":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Path;>;"
    .end local p3    # "highlightPaints":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Paint;>;"
    .end local p4    # "selectionPath":Landroid/graphics/Path;
    .end local p5    # "selectionPaint":Landroid/graphics/Paint;
    .end local p6    # "cursorOffsetVertical":I
    .end local p7    # "firstLine":I
    .end local p8    # "lastLine":I
    throw v2

    .line 646
    .restart local p0    # "this":Landroid/text/Layout;
    .restart local p1    # "canvas":Landroid/graphics/Canvas;
    .restart local p2    # "highlightPaths":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Path;>;"
    .restart local p3    # "highlightPaints":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Paint;>;"
    .restart local p4    # "selectionPath":Landroid/graphics/Path;
    .restart local p5    # "selectionPaint":Landroid/graphics/Paint;
    .restart local p6    # "cursorOffsetVertical":I
    .restart local p7    # "firstLine":I
    .restart local p8    # "lastLine":I
    :cond_6
    if-eqz p4, :cond_8

    .line 647
    invoke-static {p1}, Landroid/text/Layout;->shouldDrawHighlightsOnTop(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 648
    iget-object v2, p0, Landroid/text/Layout;->mWorkPlainPaint:Landroid/graphics/Paint;

    invoke-static {p5, v1, v2}, Landroid/text/Layout;->setToHighlightPaint(Landroid/graphics/Paint;Landroid/graphics/BlendMode;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v2

    move-object p5, v2

    .line 651
    :cond_7
    invoke-virtual {p1, p4, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    .end local v1    # "blendMode":Landroid/graphics/BlendMode;
    :cond_8
    if-eqz p6, :cond_9

    neg-int v1, p6

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 656
    :cond_9
    return-void

    .line 654
    :catchall_0
    move-exception v1

    if-eqz p6, :cond_a

    neg-int v2, p6

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 655
    :cond_a
    throw v1
.end method

.method public whitelist drawText(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 560
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v0

    .line 561
    .local v0, "lineRange":J
    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v2

    .line 562
    .local v2, "firstLine":I
    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v3

    .line 563
    .local v3, "lastLine":I
    if-gez v3, :cond_0

    return-void

    .line 564
    :cond_0
    invoke-virtual {p0, p1, v2, v3}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    .line 565
    return-void
.end method

.method public greylist-max-r drawText(Landroid/graphics/Canvas;II)V
    .locals 35
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "firstLine"    # I
    .param p3, "lastLine"    # I

    .line 771
    move-object/from16 v12, p0

    move/from16 v13, p2

    invoke-virtual {v12, v13}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 772
    .local v0, "previousLineBottom":I
    invoke-virtual {v12, v13}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    .line 773
    .local v1, "previousLineEnd":I
    sget-object v2, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 774
    .local v2, "spans":[Landroid/text/style/ParagraphStyle;
    const/4 v3, 0x0

    .line 775
    .local v3, "spanEnd":I
    iget-object v15, v12, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 776
    .local v15, "paint":Landroid/text/TextPaint;
    iget-object v4, v12, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v15, v4}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 777
    iget-object v8, v12, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 779
    .local v8, "buf":Ljava/lang/CharSequence;
    iget-object v4, v12, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 780
    .local v4, "paraAlign":Landroid/text/Layout$Alignment;
    const/4 v5, 0x0

    .line 781
    .local v5, "tabStops":Landroid/text/Layout$TabStops;
    const/4 v6, 0x0

    .line 783
    .local v6, "tabStopsIsInitialized":Z
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v14

    .line 787
    .local v14, "tl":Landroid/text/TextLine;
    move/from16 v7, p2

    move-object v9, v5

    move v5, v0

    move-object v0, v9

    move v9, v1

    move v1, v7

    .local v0, "tabStops":Landroid/text/Layout$TabStops;
    .local v1, "lineNum":I
    .local v5, "previousLineBottom":I
    .local v9, "previousLineEnd":I
    :goto_0
    move/from16 v7, p3

    if-gt v1, v7, :cond_1a

    .line 788
    move/from16 v17, v9

    .line 789
    .local v9, "start":I
    .local v17, "previousLineEnd":I
    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v12, v10}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    .line 790
    .end local v17    # "previousLineEnd":I
    .local v10, "previousLineEnd":I
    invoke-direct {v12, v1}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v26

    .line 791
    .local v26, "justify":Z
    const/4 v11, 0x1

    invoke-direct {v12, v1, v9, v10, v11}, Landroid/text/Layout;->getLineVisibleEnd(IIIZ)I

    move-result v18

    .line 793
    .local v18, "end":I
    move/from16 v16, v11

    invoke-virtual {v12, v1}, Landroid/text/Layout;->getStartHyphenEdit(I)I

    move-result v11

    invoke-virtual {v15, v11}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    .line 794
    invoke-virtual {v12, v1}, Landroid/text/Layout;->getEndHyphenEdit(I)I

    move-result v11

    invoke-virtual {v15, v11}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    .line 796
    move/from16 v19, v5

    .line 797
    .local v19, "ltop":I
    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v12, v11}, Landroid/text/Layout;->getLineTop(I)I

    move-result v21

    .line 798
    .local v21, "lbottom":I
    move/from16 v27, v21

    .line 799
    .end local v5    # "previousLineBottom":I
    .local v27, "previousLineBottom":I
    invoke-virtual {v12, v1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v5

    sub-int v20, v21, v5

    .line 801
    .local v20, "lbaseline":I
    move-object v11, v4

    .end local v4    # "paraAlign":Landroid/text/Layout$Alignment;
    .local v11, "paraAlign":Landroid/text/Layout$Alignment;
    invoke-virtual {v12, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    .line 802
    .local v4, "dir":I
    const/4 v5, 0x0

    .line 803
    .local v5, "left":I
    move-object/from16 v22, v0

    .end local v0    # "tabStops":Landroid/text/Layout$TabStops;
    .local v22, "tabStops":Landroid/text/Layout$TabStops;
    iget v0, v12, Landroid/text/Layout;->mWidth:I

    .line 805
    .local v0, "right":I
    move/from16 v17, v0

    .end local v0    # "right":I
    .local v17, "right":I
    iget-boolean v0, v12, Landroid/text/Layout;->mSpannedText:Z

    move-object/from16 v23, v14

    .end local v14    # "tl":Landroid/text/TextLine;
    .local v23, "tl":Landroid/text/TextLine;
    if-eqz v0, :cond_d

    .line 806
    move-object v0, v8

    check-cast v0, Landroid/text/Spanned;

    .line 807
    .local v0, "sp":Landroid/text/Spanned;
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v14

    .line 808
    .local v14, "textLength":I
    if-eqz v9, :cond_1

    move-object/from16 v25, v2

    .end local v2    # "spans":[Landroid/text/style/ParagraphStyle;
    .local v25, "spans":[Landroid/text/style/ParagraphStyle;
    add-int/lit8 v2, v9, -0x1

    invoke-interface {v8, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    move/from16 v28, v5

    .end local v5    # "left":I
    .local v28, "left":I
    const/16 v5, 0xa

    if-ne v2, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_2

    .end local v25    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v28    # "left":I
    .restart local v2    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v5    # "left":I
    :cond_1
    move-object/from16 v25, v2

    move/from16 v28, v5

    .end local v2    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v5    # "left":I
    .restart local v25    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v28    # "left":I
    :goto_1
    move/from16 v2, v16

    .line 820
    .local v2, "isFirstParaLine":Z
    :goto_2
    if-lt v9, v3, :cond_6

    if-eq v1, v13, :cond_3

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    move/from16 v29, v2

    goto :goto_6

    .line 821
    :cond_3
    :goto_3
    const-class v5, Landroid/text/style/ParagraphStyle;

    invoke-interface {v0, v9, v14, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    .line 823
    const-class v5, Landroid/text/style/ParagraphStyle;

    invoke-static {v0, v9, v3, v5}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ParagraphStyle;

    .line 825
    .end local v25    # "spans":[Landroid/text/style/ParagraphStyle;
    .local v5, "spans":[Landroid/text/style/ParagraphStyle;
    iget-object v11, v12, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 826
    move/from16 v29, v2

    .end local v2    # "isFirstParaLine":Z
    .local v29, "isFirstParaLine":Z
    array-length v2, v5

    add-int/lit8 v2, v2, -0x1

    .local v2, "n":I
    :goto_4
    if-ltz v2, :cond_5

    .line 827
    move/from16 v25, v2

    .end local v2    # "n":I
    .local v25, "n":I
    aget-object v2, v5, v25

    instance-of v2, v2, Landroid/text/style/AlignmentSpan;

    if-eqz v2, :cond_4

    .line 828
    aget-object v2, v5, v25

    check-cast v2, Landroid/text/style/AlignmentSpan;

    invoke-interface {v2}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v2

    .line 829
    .end local v11    # "paraAlign":Landroid/text/Layout$Alignment;
    .local v2, "paraAlign":Landroid/text/Layout$Alignment;
    goto :goto_5

    .line 826
    .end local v2    # "paraAlign":Landroid/text/Layout$Alignment;
    .restart local v11    # "paraAlign":Landroid/text/Layout$Alignment;
    :cond_4
    add-int/lit8 v2, v25, -0x1

    .end local v25    # "n":I
    .local v2, "n":I
    goto :goto_4

    :cond_5
    move/from16 v25, v2

    .end local v2    # "n":I
    .restart local v25    # "n":I
    move-object v2, v11

    .line 833
    .end local v11    # "paraAlign":Landroid/text/Layout$Alignment;
    .end local v25    # "n":I
    .local v2, "paraAlign":Landroid/text/Layout$Alignment;
    :goto_5
    const/4 v6, 0x0

    move-object/from16 v30, v2

    move-object v2, v5

    move/from16 v25, v3

    move/from16 v31, v6

    goto :goto_7

    .line 820
    .end local v5    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v29    # "isFirstParaLine":Z
    .local v2, "isFirstParaLine":Z
    .restart local v11    # "paraAlign":Landroid/text/Layout$Alignment;
    .local v25, "spans":[Landroid/text/style/ParagraphStyle;
    :cond_6
    move/from16 v29, v2

    .line 838
    .end local v2    # "isFirstParaLine":Z
    .restart local v29    # "isFirstParaLine":Z
    :goto_6
    move-object/from16 v30, v11

    move-object/from16 v2, v25

    move/from16 v31, v6

    move/from16 v25, v3

    .end local v3    # "spanEnd":I
    .end local v6    # "tabStopsIsInitialized":Z
    .end local v11    # "paraAlign":Landroid/text/Layout$Alignment;
    .local v2, "spans":[Landroid/text/style/ParagraphStyle;
    .local v25, "spanEnd":I
    .local v30, "paraAlign":Landroid/text/Layout$Alignment;
    .local v31, "tabStopsIsInitialized":Z
    :goto_7
    array-length v3, v2

    .line 839
    .local v3, "length":I
    move/from16 v5, v29

    .line 840
    .local v5, "useFirstLineMargin":Z
    const/4 v6, 0x0

    .local v6, "n":I
    :goto_8
    if-ge v6, v3, :cond_9

    .line 841
    aget-object v11, v2, v6

    instance-of v11, v11, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v11, :cond_7

    .line 842
    aget-object v11, v2, v6

    check-cast v11, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v11}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v11

    .line 843
    .local v11, "count":I
    move-object/from16 v32, v2

    .end local v2    # "spans":[Landroid/text/style/ParagraphStyle;
    .local v32, "spans":[Landroid/text/style/ParagraphStyle;
    aget-object v2, v32, v6

    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v12, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 846
    .local v2, "startLine":I
    move-object/from16 v33, v0

    .end local v0    # "sp":Landroid/text/Spanned;
    .local v33, "sp":Landroid/text/Spanned;
    add-int v0, v2, v11

    if-ge v1, v0, :cond_8

    .line 847
    const/4 v5, 0x1

    .line 848
    goto :goto_9

    .line 841
    .end local v11    # "count":I
    .end local v32    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v33    # "sp":Landroid/text/Spanned;
    .restart local v0    # "sp":Landroid/text/Spanned;
    .local v2, "spans":[Landroid/text/style/ParagraphStyle;
    :cond_7
    move-object/from16 v33, v0

    move-object/from16 v32, v2

    .line 840
    .end local v0    # "sp":Landroid/text/Spanned;
    .end local v2    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v32    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v33    # "sp":Landroid/text/Spanned;
    :cond_8
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v32

    move-object/from16 v0, v33

    goto :goto_8

    .end local v32    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v33    # "sp":Landroid/text/Spanned;
    .restart local v0    # "sp":Landroid/text/Spanned;
    .restart local v2    # "spans":[Landroid/text/style/ParagraphStyle;
    :cond_9
    move-object/from16 v33, v0

    move-object/from16 v32, v2

    .line 852
    .end local v0    # "sp":Landroid/text/Spanned;
    .end local v2    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v6    # "n":I
    .restart local v32    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v33    # "sp":Landroid/text/Spanned;
    :goto_9
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_a
    if-ge v0, v3, :cond_c

    .line 853
    aget-object v2, v32, v0

    instance-of v2, v2, Landroid/text/style/LeadingMarginSpan;

    if-eqz v2, :cond_b

    .line 854
    aget-object v2, v32, v0

    check-cast v2, Landroid/text/style/LeadingMarginSpan;

    .line 855
    .local v2, "margin":Landroid/text/style/LeadingMarginSpan;
    const/4 v6, -0x1

    if-ne v4, v6, :cond_a

    .line 856
    move v13, v1

    move/from16 v16, v3

    move/from16 v3, v17

    move/from16 v6, v20

    move/from16 v7, v21

    move/from16 v11, v29

    move-object/from16 v1, p1

    move/from16 v17, v0

    move-object v0, v2

    move/from16 v29, v10

    move-object v2, v15

    move/from16 v10, v18

    move-object/from16 v15, v22

    move/from16 v18, v14

    move v14, v5

    move/from16 v5, v19

    .end local v1    # "lineNum":I
    .end local v19    # "ltop":I
    .end local v20    # "lbaseline":I
    .end local v21    # "lbottom":I
    .end local v22    # "tabStops":Landroid/text/Layout$TabStops;
    .local v0, "margin":Landroid/text/style/LeadingMarginSpan;
    .local v2, "paint":Landroid/text/TextPaint;
    .local v3, "right":I
    .local v5, "ltop":I
    .local v6, "lbaseline":I
    .local v7, "lbottom":I
    .local v10, "end":I
    .local v11, "isFirstParaLine":Z
    .local v13, "lineNum":I
    .local v14, "useFirstLineMargin":Z
    .local v15, "tabStops":Landroid/text/Layout$TabStops;
    .local v16, "length":I
    .local v17, "n":I
    .local v18, "textLength":I
    .local v29, "previousLineEnd":I
    invoke-interface/range {v0 .. v12}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 859
    move/from16 v19, v3

    .end local v3    # "right":I
    .local v19, "right":I
    invoke-interface {v0, v14}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v1

    sub-int v1, v19, v1

    move-object/from16 v12, p0

    move/from16 v19, v1

    move v0, v5

    move v1, v7

    move v5, v4

    move v4, v6

    .end local v19    # "right":I
    .local v1, "right":I
    goto/16 :goto_b

    .line 861
    .end local v6    # "lbaseline":I
    .end local v7    # "lbottom":I
    .end local v11    # "isFirstParaLine":Z
    .end local v13    # "lineNum":I
    .end local v16    # "length":I
    .local v0, "n":I
    .local v1, "lineNum":I
    .local v2, "margin":Landroid/text/style/LeadingMarginSpan;
    .local v3, "length":I
    .local v5, "useFirstLineMargin":Z
    .local v10, "previousLineEnd":I
    .local v14, "textLength":I
    .local v15, "paint":Landroid/text/TextPaint;
    .local v17, "right":I
    .local v18, "end":I
    .local v19, "ltop":I
    .restart local v20    # "lbaseline":I
    .restart local v21    # "lbottom":I
    .restart local v22    # "tabStops":Landroid/text/Layout$TabStops;
    .local v29, "isFirstParaLine":Z
    :cond_a
    move v13, v1

    move/from16 v16, v3

    move/from16 v6, v20

    move/from16 v7, v21

    move/from16 v11, v29

    move/from16 v29, v10

    move/from16 v10, v18

    move/from16 v18, v14

    move v14, v5

    move/from16 v5, v19

    move/from16 v19, v17

    move/from16 v17, v0

    move-object v0, v2

    move-object v2, v15

    move-object/from16 v15, v22

    .end local v1    # "lineNum":I
    .end local v3    # "length":I
    .end local v20    # "lbaseline":I
    .end local v21    # "lbottom":I
    .end local v22    # "tabStops":Landroid/text/Layout$TabStops;
    .local v0, "margin":Landroid/text/style/LeadingMarginSpan;
    .local v2, "paint":Landroid/text/TextPaint;
    .local v5, "ltop":I
    .restart local v6    # "lbaseline":I
    .restart local v7    # "lbottom":I
    .local v10, "end":I
    .restart local v11    # "isFirstParaLine":Z
    .restart local v13    # "lineNum":I
    .local v14, "useFirstLineMargin":Z
    .local v15, "tabStops":Landroid/text/Layout$TabStops;
    .restart local v16    # "length":I
    .local v17, "n":I
    .local v18, "textLength":I
    .local v19, "right":I
    .local v29, "previousLineEnd":I
    move-object/from16 v12, p0

    move-object/from16 v1, p1

    move/from16 v3, v28

    .end local v28    # "left":I
    .local v3, "left":I
    invoke-interface/range {v0 .. v12}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 864
    move v1, v6

    move-object v6, v0

    move v0, v5

    move v5, v4

    move v4, v1

    move v1, v7

    .end local v7    # "lbottom":I
    .local v0, "ltop":I
    .local v1, "lbottom":I
    .local v4, "lbaseline":I
    .local v5, "dir":I
    .local v6, "margin":Landroid/text/style/LeadingMarginSpan;
    invoke-interface {v6, v14}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v7

    add-int v28, v3, v7

    .end local v3    # "left":I
    .restart local v28    # "left":I
    goto :goto_b

    .line 853
    .end local v2    # "paint":Landroid/text/TextPaint;
    .end local v6    # "margin":Landroid/text/style/LeadingMarginSpan;
    .end local v11    # "isFirstParaLine":Z
    .end local v13    # "lineNum":I
    .end local v16    # "length":I
    .local v0, "n":I
    .local v1, "lineNum":I
    .local v3, "length":I
    .local v4, "dir":I
    .local v5, "useFirstLineMargin":Z
    .local v10, "previousLineEnd":I
    .local v14, "textLength":I
    .local v15, "paint":Landroid/text/TextPaint;
    .local v17, "right":I
    .local v18, "end":I
    .local v19, "ltop":I
    .restart local v20    # "lbaseline":I
    .restart local v21    # "lbottom":I
    .restart local v22    # "tabStops":Landroid/text/Layout$TabStops;
    .local v29, "isFirstParaLine":Z
    :cond_b
    move/from16 v2, v17

    move/from16 v17, v0

    move/from16 v0, v19

    move/from16 v19, v2

    move v13, v1

    move/from16 v16, v3

    move-object v2, v15

    move/from16 v1, v21

    move-object/from16 v15, v22

    move/from16 v3, v28

    move/from16 v11, v29

    move/from16 v29, v10

    move/from16 v10, v18

    move/from16 v18, v14

    move v14, v5

    move v5, v4

    move/from16 v4, v20

    .line 852
    .end local v3    # "length":I
    .end local v20    # "lbaseline":I
    .end local v21    # "lbottom":I
    .end local v22    # "tabStops":Landroid/text/Layout$TabStops;
    .local v0, "ltop":I
    .local v1, "lbottom":I
    .restart local v2    # "paint":Landroid/text/TextPaint;
    .local v4, "lbaseline":I
    .local v5, "dir":I
    .local v10, "end":I
    .restart local v11    # "isFirstParaLine":Z
    .restart local v13    # "lineNum":I
    .local v14, "useFirstLineMargin":Z
    .local v15, "tabStops":Landroid/text/Layout$TabStops;
    .restart local v16    # "length":I
    .local v17, "n":I
    .local v18, "textLength":I
    .local v19, "right":I
    .local v29, "previousLineEnd":I
    :goto_b
    add-int/lit8 v3, v17, 0x1

    move/from16 v7, p3

    move/from16 v21, v1

    move/from16 v20, v4

    move v4, v5

    move v1, v13

    move v5, v14

    move-object/from16 v22, v15

    move/from16 v14, v18

    move/from16 v17, v19

    move/from16 v13, p2

    move/from16 v19, v0

    move-object v15, v2

    move v0, v3

    move/from16 v18, v10

    move/from16 v3, v16

    move/from16 v10, v29

    const/16 v16, 0x1

    move/from16 v29, v11

    .end local v17    # "n":I
    .local v3, "n":I
    goto/16 :goto_a

    .end local v2    # "paint":Landroid/text/TextPaint;
    .end local v11    # "isFirstParaLine":Z
    .end local v13    # "lineNum":I
    .end local v16    # "length":I
    .local v0, "n":I
    .local v1, "lineNum":I
    .local v3, "length":I
    .local v4, "dir":I
    .local v5, "useFirstLineMargin":Z
    .local v10, "previousLineEnd":I
    .local v14, "textLength":I
    .local v15, "paint":Landroid/text/TextPaint;
    .local v17, "right":I
    .local v18, "end":I
    .local v19, "ltop":I
    .restart local v20    # "lbaseline":I
    .restart local v21    # "lbottom":I
    .restart local v22    # "tabStops":Landroid/text/Layout$TabStops;
    .local v29, "isFirstParaLine":Z
    :cond_c
    move/from16 v2, v17

    move/from16 v17, v0

    move/from16 v0, v19

    move/from16 v19, v2

    move v13, v1

    move/from16 v16, v3

    move-object v2, v15

    move/from16 v1, v21

    move-object/from16 v15, v22

    move/from16 v3, v28

    move/from16 v11, v29

    move/from16 v29, v10

    move/from16 v10, v18

    move/from16 v18, v14

    move v14, v5

    move v5, v4

    move/from16 v4, v20

    .end local v20    # "lbaseline":I
    .end local v21    # "lbottom":I
    .end local v22    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v28    # "left":I
    .local v0, "ltop":I
    .local v1, "lbottom":I
    .restart local v2    # "paint":Landroid/text/TextPaint;
    .local v3, "left":I
    .local v4, "lbaseline":I
    .local v5, "dir":I
    .local v10, "end":I
    .restart local v11    # "isFirstParaLine":Z
    .restart local v13    # "lineNum":I
    .local v14, "useFirstLineMargin":Z
    .local v15, "tabStops":Landroid/text/Layout$TabStops;
    .restart local v16    # "length":I
    .local v17, "n":I
    .local v18, "textLength":I
    .local v19, "right":I
    .local v29, "previousLineEnd":I
    move/from16 v28, v25

    move/from16 v6, v31

    move-object/from16 v11, v32

    move/from16 v31, v3

    move/from16 v3, v19

    goto :goto_c

    .line 805
    .end local v0    # "ltop":I
    .end local v13    # "lineNum":I
    .end local v14    # "useFirstLineMargin":Z
    .end local v16    # "length":I
    .end local v25    # "spanEnd":I
    .end local v29    # "previousLineEnd":I
    .end local v30    # "paraAlign":Landroid/text/Layout$Alignment;
    .end local v31    # "tabStopsIsInitialized":Z
    .end local v32    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v33    # "sp":Landroid/text/Spanned;
    .local v1, "lineNum":I
    .local v2, "spans":[Landroid/text/style/ParagraphStyle;
    .local v3, "spanEnd":I
    .local v4, "dir":I
    .local v5, "left":I
    .local v6, "tabStopsIsInitialized":Z
    .local v10, "previousLineEnd":I
    .local v11, "paraAlign":Landroid/text/Layout$Alignment;
    .local v15, "paint":Landroid/text/TextPaint;
    .local v17, "right":I
    .local v18, "end":I
    .local v19, "ltop":I
    .restart local v20    # "lbaseline":I
    .restart local v21    # "lbottom":I
    .restart local v22    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_d
    move v13, v1

    move-object/from16 v25, v2

    move/from16 v28, v5

    move/from16 v29, v10

    move-object v2, v15

    move/from16 v10, v18

    move/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v15, v22

    move v5, v4

    move/from16 v4, v20

    .end local v18    # "end":I
    .end local v19    # "ltop":I
    .end local v20    # "lbaseline":I
    .end local v21    # "lbottom":I
    .end local v22    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v0    # "ltop":I
    .local v1, "lbottom":I
    .local v2, "paint":Landroid/text/TextPaint;
    .local v4, "lbaseline":I
    .local v5, "dir":I
    .local v10, "end":I
    .restart local v13    # "lineNum":I
    .local v15, "tabStops":Landroid/text/Layout$TabStops;
    .local v25, "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v28    # "left":I
    .restart local v29    # "previousLineEnd":I
    move-object/from16 v30, v11

    move-object/from16 v11, v25

    move/from16 v31, v28

    move/from16 v28, v3

    move/from16 v3, v17

    .line 870
    .end local v17    # "right":I
    .end local v25    # "spans":[Landroid/text/style/ParagraphStyle;
    .local v3, "right":I
    .local v11, "spans":[Landroid/text/style/ParagraphStyle;
    .local v28, "spanEnd":I
    .restart local v30    # "paraAlign":Landroid/text/Layout$Alignment;
    .local v31, "left":I
    :goto_c
    invoke-virtual {v12, v13}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v21

    .line 872
    .local v21, "hasTab":Z
    if-eqz v21, :cond_f

    if-nez v6, :cond_f

    .line 873
    const/high16 v7, 0x41a00000    # 20.0f

    if-nez v15, :cond_e

    .line 874
    new-instance v14, Landroid/text/Layout$TabStops;

    invoke-direct {v14, v7, v11}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    .end local v15    # "tabStops":Landroid/text/Layout$TabStops;
    .local v14, "tabStops":Landroid/text/Layout$TabStops;
    goto :goto_d

    .line 876
    .end local v14    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v15    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_e
    invoke-virtual {v15, v7, v11}, Landroid/text/Layout$TabStops;->reset(F[Ljava/lang/Object;)V

    move-object v14, v15

    .line 878
    .end local v15    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v14    # "tabStops":Landroid/text/Layout$TabStops;
    :goto_d
    const/4 v6, 0x1

    move/from16 v32, v6

    goto :goto_e

    .line 882
    .end local v14    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v15    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_f
    move-object v14, v15

    move/from16 v32, v6

    .end local v6    # "tabStopsIsInitialized":Z
    .end local v15    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v14    # "tabStops":Landroid/text/Layout$TabStops;
    .local v32, "tabStopsIsInitialized":Z
    :goto_e
    move-object/from16 v6, v30

    .line 883
    .local v6, "align":Landroid/text/Layout$Alignment;
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v6, v7, :cond_11

    .line 884
    const/4 v7, 0x1

    if-ne v5, v7, :cond_10

    .line 885
    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_f

    :cond_10
    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_f
    move-object v6, v15

    goto :goto_11

    .line 886
    :cond_11
    const/4 v7, 0x1

    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v6, v15, :cond_13

    .line 887
    if-ne v5, v7, :cond_12

    .line 888
    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_10

    :cond_12
    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_10
    move-object v6, v15

    goto :goto_11

    .line 886
    :cond_13
    move-object v15, v6

    .line 893
    .end local v6    # "align":Landroid/text/Layout$Alignment;
    .local v15, "align":Landroid/text/Layout$Alignment;
    :goto_11
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v15, v6, :cond_15

    .line 894
    if-ne v5, v7, :cond_14

    .line 895
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v12, v13, v6}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v6

    .line 896
    .local v6, "indentWidth":I
    add-int v7, v31, v6

    move/from16 v33, v6

    move v6, v7

    .local v7, "x":I
    goto :goto_12

    .line 898
    .end local v6    # "indentWidth":I
    .end local v7    # "x":I
    :cond_14
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v12, v13, v6}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v6

    neg-int v6, v6

    .line 899
    .restart local v6    # "indentWidth":I
    sub-int v7, v3, v6

    move/from16 v33, v6

    move v6, v7

    .restart local v7    # "x":I
    goto :goto_12

    .line 902
    .end local v6    # "indentWidth":I
    .end local v7    # "x":I
    :cond_15
    const/4 v6, 0x0

    invoke-direct {v12, v13, v14, v6}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v6

    float-to-int v6, v6

    .line 903
    .local v6, "max":I
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v15, v7, :cond_17

    .line 904
    const/4 v7, 0x1

    if-ne v5, v7, :cond_16

    .line 905
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v12, v13, v7}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v7

    neg-int v7, v7

    .line 906
    .local v7, "indentWidth":I
    sub-int v16, v3, v6

    sub-int v16, v16, v7

    move/from16 v33, v7

    move/from16 v6, v16

    .local v16, "x":I
    goto :goto_12

    .line 908
    .end local v7    # "indentWidth":I
    .end local v16    # "x":I
    :cond_16
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v12, v13, v7}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v7

    .line 909
    .restart local v7    # "indentWidth":I
    sub-int v16, v31, v6

    add-int v16, v16, v7

    move/from16 v33, v7

    move/from16 v6, v16

    .restart local v16    # "x":I
    goto :goto_12

    .line 912
    .end local v7    # "indentWidth":I
    .end local v16    # "x":I
    :cond_17
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v12, v13, v7}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v7

    .line 913
    .restart local v7    # "indentWidth":I
    and-int/lit8 v6, v6, -0x2

    .line 914
    add-int v17, v3, v31

    sub-int v17, v17, v6

    const/16 v16, 0x1

    shr-int/lit8 v16, v17, 0x1

    add-int v16, v16, v7

    move/from16 v33, v7

    move/from16 v6, v16

    .line 918
    .end local v7    # "indentWidth":I
    .local v6, "x":I
    .local v33, "indentWidth":I
    :goto_12
    invoke-virtual {v12, v13}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 919
    .local v7, "directions":Landroid/text/Layout$Directions;
    move/from16 v34, v0

    .end local v0    # "ltop":I
    .local v34, "ltop":I
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v7, v0, :cond_18

    iget-boolean v0, v12, Landroid/text/Layout;->mSpannedText:Z

    if-nez v0, :cond_18

    if-nez v21, :cond_18

    if-nez v26, :cond_18

    .line 921
    move-object/from16 v16, v8

    .end local v8    # "buf":Ljava/lang/CharSequence;
    .local v16, "buf":Ljava/lang/CharSequence;
    int-to-float v8, v6

    move/from16 v17, v9

    .end local v9    # "start":I
    .local v17, "start":I
    int-to-float v9, v4

    move v0, v4

    move/from16 v19, v5

    move-object/from16 v20, v7

    move v7, v10

    move-object/from16 v5, v16

    move-object/from16 v4, p1

    move-object v10, v2

    move v2, v6

    move/from16 v6, v17

    .end local v4    # "lbaseline":I
    .end local v16    # "buf":Ljava/lang/CharSequence;
    .end local v17    # "start":I
    .local v0, "lbaseline":I
    .local v2, "x":I
    .local v5, "buf":Ljava/lang/CharSequence;
    .local v6, "start":I
    .local v7, "end":I
    .local v10, "paint":Landroid/text/TextPaint;
    .local v19, "dir":I
    .local v20, "directions":Landroid/text/Layout$Directions;
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    move v9, v6

    move/from16 v18, v7

    move-object v8, v5

    move-object/from16 v22, v14

    move-object/from16 v14, v23

    .end local v5    # "buf":Ljava/lang/CharSequence;
    .end local v6    # "start":I
    .end local v7    # "end":I
    .restart local v8    # "buf":Ljava/lang/CharSequence;
    .restart local v9    # "start":I
    .restart local v18    # "end":I
    goto :goto_14

    .line 919
    .end local v0    # "lbaseline":I
    .end local v18    # "end":I
    .end local v19    # "dir":I
    .end local v20    # "directions":Landroid/text/Layout$Directions;
    .local v2, "paint":Landroid/text/TextPaint;
    .restart local v4    # "lbaseline":I
    .local v5, "dir":I
    .local v6, "x":I
    .local v7, "directions":Landroid/text/Layout$Directions;
    .local v10, "end":I
    :cond_18
    move v0, v4

    move/from16 v19, v5

    move-object/from16 v20, v7

    move/from16 v18, v10

    move-object v10, v2

    move v2, v6

    .line 923
    .end local v4    # "lbaseline":I
    .end local v5    # "dir":I
    .end local v6    # "x":I
    .end local v7    # "directions":Landroid/text/Layout$Directions;
    .restart local v0    # "lbaseline":I
    .local v2, "x":I
    .local v10, "paint":Landroid/text/TextPaint;
    .restart local v18    # "end":I
    .restart local v19    # "dir":I
    .restart local v20    # "directions":Landroid/text/Layout$Directions;
    nop

    .line 924
    move-object/from16 v16, v23

    .end local v23    # "tl":Landroid/text/TextLine;
    .local v16, "tl":Landroid/text/TextLine;
    invoke-virtual {v12, v13}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v23

    .line 925
    invoke-virtual {v12, v13}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v4

    invoke-virtual {v12, v13}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v5

    add-int v24, v4, v5

    .line 926
    invoke-virtual {v12}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v25

    .line 923
    move/from16 v17, v9

    move-object/from16 v22, v14

    move-object v6, v15

    move-object/from16 v14, v16

    move-object/from16 v16, v8

    move-object v15, v10

    .end local v8    # "buf":Ljava/lang/CharSequence;
    .end local v9    # "start":I
    .end local v10    # "paint":Landroid/text/TextPaint;
    .local v6, "align":Landroid/text/Layout$Alignment;
    .local v14, "tl":Landroid/text/TextLine;
    .local v15, "paint":Landroid/text/TextPaint;
    .local v16, "buf":Ljava/lang/CharSequence;
    .restart local v17    # "start":I
    .restart local v22    # "tabStops":Landroid/text/Layout$TabStops;
    invoke-virtual/range {v14 .. v25}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 927
    move/from16 v7, v18

    move/from16 v4, v19

    move-object/from16 v15, v20

    move/from16 v5, v21

    .end local v16    # "buf":Ljava/lang/CharSequence;
    .end local v17    # "start":I
    .end local v18    # "end":I
    .end local v19    # "dir":I
    .end local v20    # "directions":Landroid/text/Layout$Directions;
    .end local v21    # "hasTab":Z
    .local v4, "dir":I
    .local v5, "hasTab":Z
    .local v7, "end":I
    .restart local v8    # "buf":Ljava/lang/CharSequence;
    .restart local v9    # "start":I
    .restart local v10    # "paint":Landroid/text/TextPaint;
    .local v15, "directions":Landroid/text/Layout$Directions;
    if-eqz v26, :cond_19

    .line 928
    move/from16 v20, v0

    .end local v0    # "lbaseline":I
    .local v20, "lbaseline":I
    iget v0, v12, Landroid/text/Layout;->mJustificationMode:I

    sub-int v16, v3, v31

    move/from16 v21, v1

    .end local v1    # "lbottom":I
    .local v21, "lbottom":I
    sub-int v1, v16, v33

    int-to-float v1, v1

    invoke-virtual {v14, v0, v1}, Landroid/text/TextLine;->justify(IF)V

    goto :goto_13

    .line 927
    .end local v20    # "lbaseline":I
    .end local v21    # "lbottom":I
    .restart local v0    # "lbaseline":I
    .restart local v1    # "lbottom":I
    :cond_19
    move/from16 v20, v0

    move/from16 v21, v1

    .line 930
    .end local v0    # "lbaseline":I
    .end local v1    # "lbottom":I
    .restart local v20    # "lbaseline":I
    .restart local v21    # "lbottom":I
    :goto_13
    int-to-float v0, v2

    move-object/from16 v17, p1

    move/from16 v18, v0

    move-object/from16 v16, v14

    move/from16 v19, v34

    .end local v14    # "tl":Landroid/text/TextLine;
    .end local v34    # "ltop":I
    .local v16, "tl":Landroid/text/TextLine;
    .local v19, "ltop":I
    invoke-virtual/range {v16 .. v21}, Landroid/text/TextLine;->draw(Landroid/graphics/Canvas;FIII)V

    move/from16 v0, v19

    .line 787
    .end local v2    # "x":I
    .end local v3    # "right":I
    .end local v4    # "dir":I
    .end local v5    # "hasTab":Z
    .end local v6    # "align":Landroid/text/Layout$Alignment;
    .end local v7    # "end":I
    .end local v9    # "start":I
    .end local v15    # "directions":Landroid/text/Layout$Directions;
    .end local v16    # "tl":Landroid/text/TextLine;
    .end local v19    # "ltop":I
    .end local v20    # "lbaseline":I
    .end local v21    # "lbottom":I
    .end local v26    # "justify":Z
    .end local v31    # "left":I
    .end local v33    # "indentWidth":I
    .restart local v14    # "tl":Landroid/text/TextLine;
    :goto_14
    add-int/lit8 v1, v13, 0x1

    move/from16 v13, p2

    move-object v15, v10

    move-object v2, v11

    move-object/from16 v0, v22

    move/from16 v5, v27

    move/from16 v3, v28

    move/from16 v9, v29

    move-object/from16 v4, v30

    move/from16 v6, v32

    .end local v13    # "lineNum":I
    .local v1, "lineNum":I
    goto/16 :goto_0

    .line 934
    .end local v1    # "lineNum":I
    .end local v10    # "paint":Landroid/text/TextPaint;
    .end local v11    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v22    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v27    # "previousLineBottom":I
    .end local v28    # "spanEnd":I
    .end local v29    # "previousLineEnd":I
    .end local v30    # "paraAlign":Landroid/text/Layout$Alignment;
    .end local v32    # "tabStopsIsInitialized":Z
    .local v0, "tabStops":Landroid/text/Layout$TabStops;
    .local v2, "spans":[Landroid/text/style/ParagraphStyle;
    .local v3, "spanEnd":I
    .local v4, "paraAlign":Landroid/text/Layout$Alignment;
    .local v5, "previousLineBottom":I
    .local v6, "tabStopsIsInitialized":Z
    .local v9, "previousLineEnd":I
    .local v15, "paint":Landroid/text/TextPaint;
    :cond_1a
    invoke-static {v14}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 935
    return-void
.end method

.method public blacklist drawWithoutText(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;III)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "selectionPath"    # Landroid/graphics/Path;
    .param p5, "selectionPaint"    # Landroid/graphics/Paint;
    .param p6, "cursorOffsetVertical"    # I
    .param p7, "firstLine"    # I
    .param p8, "lastLine"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Paint;",
            ">;",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Paint;",
            "III)V"
        }
    .end annotation

    .line 599
    .local p2, "highlightPaths":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Path;>;"
    .local p3, "highlightPaints":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Paint;>;"
    invoke-virtual {p0, p1, p7, p8}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;II)V

    .line 600
    invoke-virtual/range {p0 .. p8}, Landroid/text/Layout;->drawHighlights(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    .line 602
    return-void
.end method

.method public whitelist fillCharacterBounds(II[FI)V
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "bounds"    # [F
    .param p4, "boundsStart"    # I

    .line 1855
    if-ltz p1, :cond_3

    if-lt p2, p1, :cond_3

    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_3

    .line 1860
    if-eqz p3, :cond_2

    .line 1864
    sub-int v0, p2, p1

    mul-int/lit8 v0, v0, 0x4

    .line 1865
    .local v0, "neededLength":I
    array-length v1, p3

    sub-int/2addr v1, p4

    if-gt v0, v1, :cond_1

    .line 1871
    if-ne p1, p2, :cond_0

    .line 1872
    return-void

    .line 1875
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    .line 1876
    .local v5, "startLine":I
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .line 1878
    .local v6, "endLine":I
    new-instance v7, Landroid/text/Layout$$ExternalSyntheticLambda4;

    invoke-direct {v7, p4, p1, p3}, Landroid/text/Layout$$ExternalSyntheticLambda4;-><init>(II[F)V

    move-object v2, p0

    move v3, p1

    move v4, p2

    .end local p1    # "start":I
    .end local p2    # "end":I
    .local v3, "start":I
    .local v4, "end":I
    invoke-direct/range {v2 .. v7}, Landroid/text/Layout;->forEachCharacterBounds(IIIILandroid/text/Layout$CharacterBoundsListener;)V

    .line 1886
    return-void

    .line 1866
    .end local v3    # "start":I
    .end local v4    # "end":I
    .end local v5    # "startLine":I
    .end local v6    # "endLine":I
    .restart local p1    # "start":I
    .restart local p2    # "end":I
    :cond_1
    move v3, p1

    move v4, p2

    .end local p1    # "start":I
    .end local p2    # "end":I
    .restart local v3    # "start":I
    .restart local v4    # "end":I
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bounds doesn\'t have enough space to store the result, needed: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " had: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length v1, p3

    sub-int/2addr v1, p4

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1861
    .end local v0    # "neededLength":I
    .end local v3    # "start":I
    .end local v4    # "end":I
    .restart local p1    # "start":I
    .restart local p2    # "end":I
    :cond_2
    move v3, p1

    move v4, p2

    .end local p1    # "start":I
    .end local p2    # "end":I
    .restart local v3    # "start":I
    .restart local v4    # "end":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bounds can\'t be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1855
    .end local v3    # "start":I
    .end local v4    # "end":I
    .restart local p1    # "start":I
    .restart local p2    # "end":I
    :cond_3
    move-object v2, p0

    move v3, p1

    move v4, p2

    .line 1856
    .end local p1    # "start":I
    .end local p2    # "end":I
    .restart local v3    # "start":I
    .restart local v4    # "end":I
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "given range: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " is out of the text range: 0, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, v2, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1857
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final whitelist getAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    .line 4360
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public abstract whitelist getBottomPadding()I
.end method

.method public final whitelist getBreakStrategy()I
    .locals 1

    .line 4518
    iget v0, p0, Landroid/text/Layout;->mBreakStrategy:I

    return v0
.end method

.method public whitelist getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V
    .locals 17
    .param p1, "point"    # I
    .param p2, "dest"    # Landroid/graphics/Path;
    .param p3, "editingBuffer"    # Ljava/lang/CharSequence;

    .line 2996
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 2998
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 2999
    .local v3, "line":I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    .line 3000
    .local v4, "top":I
    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v5

    .line 3002
    .local v5, "bottom":I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->shouldClampCursor(I)Z

    move-result v6

    .line 3003
    .local v6, "clamped":Z
    move/from16 v7, p1

    invoke-virtual {v0, v7, v6}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v8

    const/high16 v9, 0x3f000000    # 0.5f

    sub-float/2addr v8, v9

    .line 3005
    .local v8, "h1":F
    const/4 v10, 0x1

    invoke-static {v2, v10}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v11

    .line 3006
    const/16 v12, 0x800

    invoke-static {v2, v12}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v12

    or-int/2addr v11, v12

    .line 3007
    .local v11, "caps":I
    const/4 v12, 0x2

    invoke-static {v2, v12}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v13

    .line 3008
    .local v13, "fn":I
    const/4 v14, 0x0

    .line 3010
    .local v14, "dist":I
    if-nez v11, :cond_0

    if-eqz v13, :cond_2

    .line 3011
    :cond_0
    sub-int v15, v5, v4

    shr-int/lit8 v14, v15, 0x2

    .line 3013
    if-eqz v13, :cond_1

    .line 3014
    add-int/2addr v4, v14

    .line 3015
    :cond_1
    if-eqz v11, :cond_2

    .line 3016
    sub-int/2addr v5, v14

    .line 3019
    :cond_2
    cmpg-float v15, v8, v9

    if-gez v15, :cond_3

    .line 3020
    const/high16 v8, 0x3f000000    # 0.5f

    .line 3022
    :cond_3
    int-to-float v15, v4

    invoke-virtual {v1, v8, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3023
    int-to-float v15, v5

    invoke-virtual {v1, v8, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3025
    if-ne v11, v12, :cond_4

    .line 3026
    int-to-float v15, v5

    invoke-virtual {v1, v8, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3027
    int-to-float v15, v14

    sub-float v15, v8, v15

    move/from16 v16, v9

    add-int v9, v5, v14

    int-to-float v9, v9

    invoke-virtual {v1, v15, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3028
    int-to-float v9, v5

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3029
    int-to-float v9, v14

    add-float/2addr v9, v8

    add-int v15, v5, v14

    int-to-float v15, v15

    invoke-virtual {v1, v9, v15}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 3030
    :cond_4
    move/from16 v16, v9

    if-ne v11, v10, :cond_5

    .line 3031
    int-to-float v9, v5

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3032
    int-to-float v9, v14

    sub-float v9, v8, v9

    add-int v15, v5, v14

    int-to-float v15, v15

    invoke-virtual {v1, v9, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3034
    int-to-float v9, v14

    sub-float v9, v8, v9

    add-int v15, v5, v14

    int-to-float v15, v15

    sub-float v15, v15, v16

    invoke-virtual {v1, v9, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3035
    int-to-float v9, v14

    add-float/2addr v9, v8

    add-int v15, v5, v14

    int-to-float v15, v15

    sub-float v15, v15, v16

    invoke-virtual {v1, v9, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3037
    int-to-float v9, v14

    add-float/2addr v9, v8

    add-int v15, v5, v14

    int-to-float v15, v15

    invoke-virtual {v1, v9, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3038
    int-to-float v9, v5

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3041
    :cond_5
    :goto_0
    if-ne v13, v12, :cond_6

    .line 3042
    int-to-float v9, v4

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3043
    int-to-float v9, v14

    sub-float v9, v8, v9

    sub-int v10, v4, v14

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3044
    int-to-float v9, v4

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3045
    int-to-float v9, v14

    add-float/2addr v9, v8

    sub-int v10, v4, v14

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 3046
    :cond_6
    if-ne v13, v10, :cond_7

    .line 3047
    int-to-float v9, v4

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3048
    int-to-float v9, v14

    sub-float v9, v8, v9

    sub-int v10, v4, v14

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3050
    int-to-float v9, v14

    sub-float v9, v8, v9

    sub-int v10, v4, v14

    int-to-float v10, v10

    add-float v10, v10, v16

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3051
    int-to-float v9, v14

    add-float/2addr v9, v8

    sub-int v10, v4, v14

    int-to-float v10, v10

    add-float v10, v10, v16

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3053
    int-to-float v9, v14

    add-float/2addr v9, v8

    sub-int v10, v4, v14

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3054
    int-to-float v9, v4

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3056
    :cond_7
    :goto_1
    return-void
.end method

.method public abstract whitelist getEllipsisCount(I)I
.end method

.method public abstract whitelist getEllipsisStart(I)I
.end method

.method public final whitelist getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .line 4489
    iget-object v0, p0, Landroid/text/Layout;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public whitelist getEllipsizedWidth()I
    .locals 1

    .line 4470
    iget v0, p0, Landroid/text/Layout;->mEllipsizedWidth:I

    return v0
.end method

.method public blacklist getEndHyphenEdit(I)I
    .locals 1
    .param p1, "line"    # I

    .line 1450
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getHeight()I
    .locals 1

    .line 1265
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getHeight(Z)I
    .locals 1
    .param p1, "cap"    # Z

    .line 1276
    invoke-virtual {p0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    return v0
.end method

.method public final whitelist getHyphenationFrequency()I
    .locals 1

    .line 4531
    iget v0, p0, Landroid/text/Layout;->mHyphenationFrequency:I

    return v0
.end method

.method public greylist-max-o getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .locals 1
    .param p1, "line"    # I
    .param p2, "alignment"    # Landroid/text/Layout$Alignment;

    .line 1459
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist getJustificationMode()I
    .locals 1

    .line 4586
    iget v0, p0, Landroid/text/Layout;->mJustificationMode:I

    return v0
.end method

.method public final whitelist getLeftIndents()[I
    .locals 4

    .line 4547
    iget-object v0, p0, Landroid/text/Layout;->mLeftIndents:[I

    if-nez v0, :cond_0

    .line 4548
    const/4 v0, 0x0

    return-object v0

    .line 4550
    :cond_0
    iget-object v0, p0, Landroid/text/Layout;->mLeftIndents:[I

    array-length v0, v0

    new-array v0, v0, [I

    .line 4551
    .local v0, "newArray":[I
    iget-object v1, p0, Landroid/text/Layout;->mLeftIndents:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4552
    return-object v0
.end method

.method public final whitelist getLineAscent(I)I
    .locals 3
    .param p1, "line"    # I

    .line 2862
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public final whitelist getLineBaseline(I)I
    .locals 2
    .param p1, "line"    # I

    .line 2853
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final whitelist getLineBottom(I)I
    .locals 1
    .param p1, "line"    # I

    .line 2831
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v0

    return v0
.end method

.method public whitelist getLineBottom(IZ)I
    .locals 2
    .param p1, "line"    # I
    .param p2, "includeLineSpacing"    # Z

    .line 2841
    if-eqz p2, :cond_0

    .line 2842
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0

    .line 2844
    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineExtra(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public whitelist getLineBounds(ILandroid/graphics/Rect;)I
    .locals 1
    .param p1, "line"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 1372
    if-eqz p2, :cond_0

    .line 1373
    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 1374
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 1375
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 1376
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 1378
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v0

    return v0
.end method

.method public whitelist getLineBreakConfig()Landroid/graphics/text/LineBreakConfig;
    .locals 1

    .line 4600
    iget-object v0, p0, Landroid/text/Layout;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    return-object v0
.end method

.method public abstract whitelist getLineContainsTab(I)Z
.end method

.method public abstract whitelist getLineCount()I
.end method

.method public abstract whitelist getLineDescent(I)I
.end method

.method public abstract whitelist getLineDirections(I)Landroid/text/Layout$Directions;
.end method

.method public final whitelist getLineEnd(I)I
    .locals 1
    .param p1, "line"    # I

    .line 2786
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getLineExtra(I)I
    .locals 1
    .param p1, "line"    # I

    .line 2873
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getLineForOffset(I)I
    .locals 4
    .param p1, "offset"    # I

    .line 2220
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    .local v0, "high":I
    const/4 v1, -0x1

    .line 2222
    .local v1, "low":I
    :goto_0
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 2223
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 2225
    .local v2, "guess":I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-le v3, p1, :cond_0

    .line 2226
    move v0, v2

    goto :goto_0

    .line 2228
    :cond_0
    move v1, v2

    goto :goto_0

    .line 2231
    .end local v2    # "guess":I
    :cond_1
    if-gez v1, :cond_2

    .line 2232
    const/4 v2, 0x0

    return v2

    .line 2234
    :cond_2
    return v1
.end method

.method public whitelist getLineForVertical(I)I
    .locals 4
    .param p1, "vertical"    # I

    .line 2197
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    .local v0, "high":I
    const/4 v1, -0x1

    .line 2199
    .local v1, "low":I
    :goto_0
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 2200
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 2202
    .local v2, "guess":I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-le v3, p1, :cond_0

    .line 2203
    move v0, v2

    goto :goto_0

    .line 2205
    :cond_0
    move v1, v2

    goto :goto_0

    .line 2208
    .end local v2    # "guess":I
    :cond_1
    if-gez v1, :cond_2

    .line 2209
    const/4 v2, 0x0

    return v2

    .line 2211
    :cond_2
    return v1
.end method

.method public whitelist getLineLeft(I)F
    .locals 8
    .param p1, "line"    # I

    .line 1940
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1941
    .local v0, "dir":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v1

    .line 1945
    .local v1, "align":Landroid/text/Layout$Alignment;
    if-nez v1, :cond_0

    .line 1946
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 1953
    :cond_0
    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v2

    const/4 v3, -0x1

    packed-switch v2, :pswitch_data_0

    .line 1969
    :pswitch_0
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .local v2, "resultAlign":Landroid/text/Layout$Alignment;
    goto :goto_2

    .line 1966
    .end local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :pswitch_1
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 1967
    .restart local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    goto :goto_2

    .line 1963
    .end local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :pswitch_2
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 1964
    .restart local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    goto :goto_2

    .line 1960
    .end local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :pswitch_3
    if-ne v0, v3, :cond_1

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 1961
    .restart local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :goto_0
    goto :goto_2

    .line 1956
    .end local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :pswitch_4
    if-ne v0, v3, :cond_2

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_1

    :cond_2
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 1957
    .restart local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :goto_1
    nop

    .line 1975
    :goto_2
    invoke-virtual {v2}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 1986
    :pswitch_5
    const/4 v3, 0x0

    return v3

    .line 1984
    :pswitch_6
    iget v3, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v3, v3

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v4

    sub-float/2addr v3, v4

    return v3

    .line 1977
    :pswitch_7
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v3

    .line 1978
    .local v3, "left":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v4

    .line 1982
    .local v4, "max":F
    int-to-float v5, v3

    iget v6, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v6, v6

    sub-float/2addr v6, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-float v5, v5

    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public whitelist getLineLetterSpacingUnitCount(IZ)I
    .locals 13
    .param p1, "line"    # I
    .param p2, "includeTrailingWhitespace"    # Z

    .line 2127
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 2128
    .local v3, "start":I
    const/4 v12, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    move v4, v0

    goto :goto_0

    .line 2129
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1, v12}, Landroid/text/Layout;->getLineVisibleEnd(IIIZ)I

    move-result v0

    move v4, v0

    :goto_0
    nop

    .line 2134
    .local v4, "end":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 2136
    .local v6, "directions":Landroid/text/Layout$Directions;
    if-nez v6, :cond_1

    .line 2137
    return v12

    .line 2139
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 2141
    .local v5, "dir":I
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 2142
    .local v0, "tl":Landroid/text/TextLine;
    iget-object v1, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 2143
    .local v1, "paint":Landroid/text/TextPaint;
    iget-object v2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 2144
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getStartHyphenEdit(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    .line 2145
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEndHyphenEdit(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    .line 2146
    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 2148
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v9

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v7

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v8

    add-int v10, v7, v8

    .line 2149
    invoke-virtual {p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v11

    .line 2146
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v11}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 2150
    iget-object v2, p0, Landroid/text/Layout;->mLineInfo:Landroid/text/TextLine$LineInfo;

    if-nez v2, :cond_2

    .line 2151
    new-instance v2, Landroid/text/TextLine$LineInfo;

    invoke-direct {v2}, Landroid/text/TextLine$LineInfo;-><init>()V

    iput-object v2, p0, Landroid/text/Layout;->mLineInfo:Landroid/text/TextLine$LineInfo;

    .line 2153
    :cond_2
    iget-object v2, p0, Landroid/text/Layout;->mLineInfo:Landroid/text/TextLine$LineInfo;

    invoke-virtual {v2, v12}, Landroid/text/TextLine$LineInfo;->setClusterCount(I)V

    .line 2154
    iget-boolean v2, p0, Landroid/text/Layout;->mUseBoundsForWidth:Z

    iget-object v7, p0, Landroid/text/Layout;->mLineInfo:Landroid/text/TextLine$LineInfo;

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v8, v2, v7}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZLandroid/text/TextLine$LineInfo;)F

    .line 2155
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 2156
    iget-object v2, p0, Landroid/text/Layout;->mLineInfo:Landroid/text/TextLine$LineInfo;

    invoke-virtual {v2}, Landroid/text/TextLine$LineInfo;->getClusterCount()I

    move-result v2

    return v2
.end method

.method public whitelist getLineMax(I)F
    .locals 3
    .param p1, "line"    # I

    .line 2043
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v0

    int-to-float v0, v0

    .line 2044
    .local v0, "margin":F
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    .line 2045
    .local v1, "signedExtent":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    neg-float v2, v1

    :goto_0
    add-float/2addr v2, v0

    return v2
.end method

.method public greylist-max-r getLineRangeForDraw(Landroid/graphics/Canvas;)J
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1175
    sget-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    monitor-enter v0

    .line 1176
    :try_start_0
    sget-object v1, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 1178
    invoke-static {v3, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 1181
    :cond_0
    sget-object v1, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 1182
    .local v1, "dtop":I
    sget-object v4, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 1183
    .local v4, "dbottom":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1185
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1186
    .local v0, "top":I
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1188
    .local v5, "bottom":I
    if-lt v0, v5, :cond_1

    invoke-static {v3, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v2

    return-wide v2

    .line 1189
    :cond_1
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    invoke-virtual {p0, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v2

    return-wide v2

    .line 1183
    .end local v0    # "top":I
    .end local v1    # "dtop":I
    .end local v4    # "dbottom":I
    .end local v5    # "bottom":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist getLineRight(I)F
    .locals 8
    .param p1, "line"    # I

    .line 1995
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1996
    .local v0, "dir":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v1

    .line 2000
    .local v1, "align":Landroid/text/Layout$Alignment;
    if-nez v1, :cond_0

    .line 2001
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 2005
    :cond_0
    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v2

    const/4 v3, -0x1

    packed-switch v2, :pswitch_data_0

    .line 2021
    :pswitch_0
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .local v2, "resultAlign":Landroid/text/Layout$Alignment;
    goto :goto_2

    .line 2018
    .end local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :pswitch_1
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 2019
    .restart local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    goto :goto_2

    .line 2015
    .end local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :pswitch_2
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 2016
    .restart local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    goto :goto_2

    .line 2012
    .end local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :pswitch_3
    if-ne v0, v3, :cond_1

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 2013
    .restart local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :goto_0
    goto :goto_2

    .line 2008
    .end local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :pswitch_4
    if-ne v0, v3, :cond_2

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_1

    :cond_2
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 2009
    .restart local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :goto_1
    nop

    .line 2024
    :goto_2
    invoke-virtual {v2}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 2034
    :pswitch_5
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v3

    return v3

    .line 2032
    :pswitch_6
    iget v3, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v3, v3

    return v3

    .line 2026
    :pswitch_7
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v3

    .line 2027
    .local v3, "right":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v4

    .line 2030
    .local v4, "max":F
    int-to-float v5, v3

    iget v6, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v6, v6

    sub-float/2addr v6, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v5, v5

    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final whitelist getLineSpacingAmount()F
    .locals 1

    .line 4427
    iget v0, p0, Landroid/text/Layout;->mSpacingAdd:F

    return v0
.end method

.method public final whitelist getLineSpacingMultiplier()F
    .locals 1

    .line 4400
    iget v0, p0, Landroid/text/Layout;->mSpacingMult:F

    return v0
.end method

.method public abstract whitelist getLineStart(I)I
.end method

.method public abstract whitelist getLineTop(I)I
.end method

.method public whitelist getLineVisibleEnd(I)I
    .locals 3
    .param p1, "line"    # I

    .line 2794
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/text/Layout;->getLineVisibleEnd(IIIZ)I

    move-result v0

    return v0
.end method

.method public whitelist getLineWidth(I)F
    .locals 3
    .param p1, "line"    # I

    .line 2053
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v0

    int-to-float v0, v0

    .line 2054
    .local v0, "margin":F
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    .line 2055
    .local v1, "signedExtent":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    neg-float v2, v1

    :goto_0
    add-float/2addr v2, v0

    return v2
.end method

.method public final whitelist getMaxLines()I
    .locals 1

    .line 4505
    iget v0, p0, Landroid/text/Layout;->mMaxLines:I

    return v0
.end method

.method public whitelist getMinimumFontMetrics()Landroid/graphics/Paint$FontMetrics;
    .locals 1

    .line 4646
    iget-object v0, p0, Landroid/text/Layout;->mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

    return-object v0
.end method

.method public whitelist getOffsetForHorizontal(IF)I
    .locals 1
    .param p1, "line"    # I
    .param p2, "horiz"    # F

    .line 2243
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getOffsetForHorizontal(IFZ)I
    .locals 21
    .param p1, "line"    # I
    .param p2, "horiz"    # F
    .param p3, "primary"    # Z

    .line 2258
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    .line 2259
    .local v6, "lineEndOffset":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 2261
    .local v5, "lineStartOffset":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v8

    .line 2263
    .local v8, "dirs":Landroid/text/Layout$Directions;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v2

    .line 2265
    .local v2, "tl":Landroid/text/TextLine;
    iget-object v3, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v4, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    .line 2267
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v11

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v9

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v10

    add-int v12, v9, v10

    .line 2268
    invoke-virtual {v0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v13

    .line 2265
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v13}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 2269
    new-instance v3, Landroid/text/Layout$HorizontalMeasurementProvider;

    move/from16 v4, p3

    invoke-direct {v3, v0, v1, v4}, Landroid/text/Layout$HorizontalMeasurementProvider;-><init>(Landroid/text/Layout;IZ)V

    .line 2273
    .local v3, "horizontal":Landroid/text/Layout$HorizontalMeasurementProvider;
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v7

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    if-ne v1, v7, :cond_0

    .line 2274
    move v7, v6

    .local v7, "max":I
    goto :goto_0

    .line 2276
    .end local v7    # "max":I
    :cond_0
    sub-int v7, v6, v5

    add-int/lit8 v10, v6, -0x1

    .line 2277
    invoke-virtual {v0, v10}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v10

    .line 2276
    xor-int/2addr v10, v9

    invoke-virtual {v2, v7, v10}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v7

    add-int/2addr v7, v5

    .line 2279
    .restart local v7    # "max":I
    :goto_0
    move v10, v5

    .line 2280
    .local v10, "best":I
    invoke-virtual {v3, v5}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v11

    sub-float v11, v11, p2

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 2282
    .local v11, "bestdist":F
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    iget-object v13, v8, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v13, v13

    if-ge v12, v13, :cond_c

    .line 2283
    iget-object v13, v8, Landroid/text/Layout$Directions;->mDirections:[I

    aget v13, v13, v12

    add-int/2addr v13, v5

    .line 2284
    .local v13, "here":I
    iget-object v14, v8, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v15, v12, 0x1

    aget v14, v14, v15

    const v15, 0x3ffffff

    and-int/2addr v14, v15

    add-int/2addr v14, v13

    .line 2285
    .local v14, "there":I
    iget-object v15, v8, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v16, v12, 0x1

    aget v15, v15, v16

    const/high16 v16, 0x4000000

    and-int v15, v15, v16

    const/16 v16, 0x0

    if-eqz v15, :cond_1

    move v15, v9

    goto :goto_2

    :cond_1
    move/from16 v15, v16

    .line 2286
    .local v15, "isRtl":Z
    :goto_2
    if-eqz v15, :cond_2

    const/16 v17, -0x1

    goto :goto_3

    :cond_2
    move/from16 v17, v9

    :goto_3
    move/from16 v18, v17

    .line 2288
    .local v18, "swap":I
    if-le v14, v7, :cond_3

    .line 2289
    move v14, v7

    .line 2290
    :cond_3
    add-int/lit8 v17, v14, -0x1

    add-int/lit8 v17, v17, 0x1

    .local v17, "high":I
    add-int/lit8 v19, v13, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v9, v19

    .line 2292
    .local v9, "low":I
    :goto_4
    sub-int v1, v17, v9

    const/4 v4, 0x1

    if-le v1, v4, :cond_5

    .line 2293
    add-int v1, v17, v9

    div-int/lit8 v1, v1, 0x2

    .line 2294
    .local v1, "guess":I
    invoke-direct {v0, v1}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v4

    .line 2296
    .local v4, "adguess":I
    invoke-virtual {v3, v4}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v20

    move/from16 v0, v18

    move/from16 v18, v1

    .end local v1    # "guess":I
    .local v0, "swap":I
    .local v18, "guess":I
    int-to-float v1, v0

    mul-float v20, v20, v1

    int-to-float v1, v0

    mul-float v1, v1, p2

    cmpl-float v1, v20, v1

    if-ltz v1, :cond_4

    .line 2297
    move/from16 v1, v18

    move/from16 v17, v1

    .end local v17    # "high":I
    .local v1, "high":I
    goto :goto_5

    .line 2299
    .end local v1    # "high":I
    .restart local v17    # "high":I
    :cond_4
    move/from16 v1, v18

    move v9, v1

    .line 2301
    .end local v4    # "adguess":I
    :goto_5
    move/from16 v1, p1

    move/from16 v4, p3

    move/from16 v18, v0

    move-object/from16 v0, p0

    goto :goto_4

    .line 2303
    .end local v0    # "swap":I
    .local v18, "swap":I
    :cond_5
    move/from16 v0, v18

    .end local v18    # "swap":I
    .restart local v0    # "swap":I
    add-int/lit8 v1, v13, 0x1

    if-ge v9, v1, :cond_6

    .line 2304
    add-int/lit8 v9, v13, 0x1

    .line 2306
    :cond_6
    if-ge v9, v14, :cond_9

    .line 2307
    sub-int v1, v9, v5

    invoke-virtual {v2, v1, v15}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v1

    add-int/2addr v1, v5

    .line 2308
    .local v1, "aft":I
    sub-int v4, v1, v5

    move/from16 v18, v0

    if-nez v15, :cond_7

    const/4 v0, 0x1

    goto :goto_6

    :cond_7
    move/from16 v0, v16

    .end local v0    # "swap":I
    .restart local v18    # "swap":I
    :goto_6
    invoke-virtual {v2, v4, v0}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    add-int v9, v0, v5

    .line 2309
    if-lt v9, v13, :cond_a

    if-ge v9, v14, :cond_a

    .line 2310
    invoke-virtual {v3, v9}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v0

    sub-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 2311
    .local v0, "dist":F
    if-ge v1, v14, :cond_8

    .line 2312
    invoke-virtual {v3, v1}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v4

    sub-float v4, v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 2314
    .local v4, "other":F
    cmpg-float v16, v4, v0

    if-gez v16, :cond_8

    .line 2315
    move v0, v4

    .line 2316
    move v9, v1

    .line 2320
    .end local v4    # "other":F
    :cond_8
    cmpg-float v4, v0, v11

    if-gez v4, :cond_a

    .line 2321
    move v11, v0

    .line 2322
    move v10, v9

    goto :goto_7

    .line 2306
    .end local v1    # "aft":I
    .end local v18    # "swap":I
    .local v0, "swap":I
    :cond_9
    move/from16 v18, v0

    .line 2327
    .end local v0    # "swap":I
    .restart local v18    # "swap":I
    :cond_a
    :goto_7
    invoke-virtual {v3, v13}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v0

    sub-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 2329
    .local v0, "dist":F
    cmpg-float v1, v0, v11

    if-gez v1, :cond_b

    .line 2330
    move v1, v0

    .line 2331
    .end local v11    # "bestdist":F
    .local v1, "bestdist":F
    move v4, v13

    move v11, v1

    move v10, v4

    .line 2282
    .end local v0    # "dist":F
    .end local v1    # "bestdist":F
    .end local v9    # "low":I
    .end local v13    # "here":I
    .end local v14    # "there":I
    .end local v15    # "isRtl":Z
    .end local v17    # "high":I
    .end local v18    # "swap":I
    .restart local v11    # "bestdist":F
    :cond_b
    add-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v4, p3

    const/4 v9, 0x1

    goto/16 :goto_1

    .line 2335
    .end local v12    # "i":I
    :cond_c
    invoke-virtual {v3, v7}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v0

    sub-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 2337
    .restart local v0    # "dist":F
    cmpg-float v1, v0, v11

    if-gtz v1, :cond_d

    .line 2338
    move v10, v7

    .line 2341
    :cond_d
    invoke-static {v2}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 2342
    return v10
.end method

.method public whitelist getOffsetToLeftOf(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 2877
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public whitelist getOffsetToRightOf(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 2881
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public final whitelist getPaint()Landroid/text/TextPaint;
    .locals 1

    .line 4335
    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final whitelist getParagraphAlignment(I)Landroid/text/Layout$Alignment;
    .locals 5
    .param p1, "line"    # I

    .line 3184
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 3186
    .local v0, "align":Landroid/text/Layout$Alignment;
    iget-boolean v1, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v1, :cond_0

    .line 3187
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    .line 3188
    .local v1, "sp":Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 3189
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    const-class v4, Landroid/text/style/AlignmentSpan;

    .line 3188
    invoke-static {v1, v2, v3, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/AlignmentSpan;

    .line 3192
    .local v2, "spans":[Landroid/text/style/AlignmentSpan;
    array-length v3, v2

    .line 3193
    .local v3, "spanLength":I
    if-lez v3, :cond_0

    .line 3194
    add-int/lit8 v4, v3, -0x1

    aget-object v4, v2, v4

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 3198
    .end local v1    # "sp":Landroid/text/Spanned;
    .end local v2    # "spans":[Landroid/text/style/AlignmentSpan;
    .end local v3    # "spanLength":I
    :cond_0
    return-object v0
.end method

.method public abstract whitelist getParagraphDirection(I)I
.end method

.method public final whitelist getParagraphLeft(I)I
    .locals 3
    .param p1, "line"    # I

    .line 3205
    const/4 v0, 0x0

    .line 3206
    .local v0, "left":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 3207
    .local v1, "dir":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 3210
    :cond_0
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    return v2

    .line 3208
    :cond_1
    :goto_0
    return v0
.end method

.method public final whitelist getParagraphRight(I)I
    .locals 3
    .param p1, "line"    # I

    .line 3217
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    .line 3218
    .local v0, "right":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 3219
    .local v1, "dir":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 3222
    :cond_0
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    sub-int v2, v0, v2

    return v2

    .line 3220
    :cond_1
    :goto_0
    return v0
.end method

.method public whitelist getPrimaryHorizontal(I)F
    .locals 1
    .param p1, "offset"    # I

    .line 1671
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public greylist-max-r getPrimaryHorizontal(IZ)F
    .locals 2
    .param p1, "offset"    # I
    .param p2, "clamped"    # Z

    .line 1681
    invoke-virtual {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    .line 1682
    .local v0, "trailing":Z
    invoke-direct {p0, p1, v0, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v1

    return v1
.end method

.method public whitelist getRangeForRect(Landroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)[I
    .locals 12
    .param p1, "area"    # Landroid/graphics/RectF;
    .param p2, "segmentFinder"    # Landroid/text/SegmentFinder;
    .param p3, "inclusionStrategy"    # Landroid/text/Layout$TextInclusionStrategy;

    .line 2414
    iget v0, p1, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    .line 2415
    .local v0, "startLine":I
    iget v1, p1, Landroid/graphics/RectF;->top:F

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    const/4 v3, 0x0

    if-lez v1, :cond_1

    .line 2416
    add-int/lit8 v0, v0, 0x1

    .line 2417
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 2419
    return-object v3

    .line 2417
    :cond_0
    move v5, v0

    goto :goto_0

    .line 2415
    :cond_1
    move v5, v0

    .line 2424
    .end local v0    # "startLine":I
    .local v5, "startLine":I
    :goto_0
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    .line 2425
    .local v0, "endLine":I
    if-nez v0, :cond_2

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 2427
    return-object v3

    .line 2429
    :cond_2
    if-ge v0, v5, :cond_3

    .line 2431
    return-object v3

    .line 2434
    :cond_3
    const/4 v9, 0x1

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    .end local p1    # "area":Landroid/graphics/RectF;
    .end local p2    # "segmentFinder":Landroid/text/SegmentFinder;
    .end local p3    # "inclusionStrategy":Landroid/text/Layout$TextInclusionStrategy;
    .local v6, "area":Landroid/graphics/RectF;
    .local v7, "segmentFinder":Landroid/text/SegmentFinder;
    .local v8, "inclusionStrategy":Landroid/text/Layout$TextInclusionStrategy;
    invoke-direct/range {v4 .. v9}, Landroid/text/Layout;->getStartOrEndOffsetForAreaWithinLine(ILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;Z)I

    move-result p1

    move-object v9, v7

    move-object v10, v8

    move-object v8, v6

    .line 2438
    .end local v6    # "area":Landroid/graphics/RectF;
    .end local v7    # "segmentFinder":Landroid/text/SegmentFinder;
    .local v8, "area":Landroid/graphics/RectF;
    .local v9, "segmentFinder":Landroid/text/SegmentFinder;
    .local v10, "inclusionStrategy":Landroid/text/Layout$TextInclusionStrategy;
    .local p1, "start":I
    :goto_1
    const/4 p2, -0x1

    if-ne p1, p2, :cond_4

    if-ge v5, v0, :cond_4

    .line 2439
    add-int/lit8 v7, v5, 0x1

    .line 2440
    .end local v5    # "startLine":I
    .local v7, "startLine":I
    const/4 v11, 0x1

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Landroid/text/Layout;->getStartOrEndOffsetForAreaWithinLine(ILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;Z)I

    move-result p1

    move v5, v7

    goto :goto_1

    .line 2443
    .end local v7    # "startLine":I
    .restart local v5    # "startLine":I
    :cond_4
    if-ne p1, p2, :cond_5

    .line 2445
    return-object v3

    .line 2448
    :cond_5
    const/4 v11, 0x0

    move-object v6, p0

    move v7, v0

    .end local v0    # "endLine":I
    .local v7, "endLine":I
    invoke-direct/range {v6 .. v11}, Landroid/text/Layout;->getStartOrEndOffsetForAreaWithinLine(ILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;Z)I

    move-result p3

    .line 2452
    .end local v7    # "endLine":I
    .restart local v0    # "endLine":I
    .local p3, "end":I
    :goto_2
    if-ne p3, p2, :cond_6

    if-ge v5, v0, :cond_6

    .line 2453
    add-int/lit8 v7, v0, -0x1

    .line 2454
    .end local v0    # "endLine":I
    .restart local v7    # "endLine":I
    const/4 v11, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Landroid/text/Layout;->getStartOrEndOffsetForAreaWithinLine(ILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;Z)I

    move-result p3

    move v0, v7

    goto :goto_2

    .line 2457
    .end local v7    # "endLine":I
    .restart local v0    # "endLine":I
    :cond_6
    if-ne p3, p2, :cond_7

    .line 2459
    return-object v3

    .line 2466
    :cond_7
    add-int/lit8 p2, p1, 0x1

    invoke-virtual {v9, p2}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result p1

    .line 2467
    add-int/lit8 p2, p3, -0x1

    invoke-virtual {v9, p2}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result p2

    .line 2469
    .end local p3    # "end":I
    .local p2, "end":I
    filled-new-array {p1, p2}, [I

    move-result-object p3

    return-object p3
.end method

.method public final whitelist getRightIndents()[I
    .locals 4

    .line 4568
    iget-object v0, p0, Landroid/text/Layout;->mRightIndents:[I

    if-nez v0, :cond_0

    .line 4569
    const/4 v0, 0x0

    return-object v0

    .line 4571
    :cond_0
    iget-object v0, p0, Landroid/text/Layout;->mRightIndents:[I

    array-length v0, v0

    new-array v0, v0, [I

    .line 4572
    .local v0, "newArray":[I
    iget-object v1, p0, Landroid/text/Layout;->mRightIndents:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4573
    return-object v0
.end method

.method public greylist-max-o getRunRange(I)J
    .locals 10
    .param p1, "offset"    # I

    .line 1530
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 1531
    .local v0, "line":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v1

    .line 1532
    .local v1, "dirs":Landroid/text/Layout$Directions;
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 1535
    :cond_0
    iget-object v2, v1, Landroid/text/Layout$Directions;->mDirections:[I

    .line 1536
    .local v2, "runs":[I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1537
    .local v4, "lineStart":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_2

    .line 1538
    aget v6, v2, v5

    add-int/2addr v6, v4

    .line 1539
    .local v6, "start":I
    add-int/lit8 v7, v5, 0x1

    aget v7, v2, v7

    const v8, 0x3ffffff

    and-int/2addr v7, v8

    add-int/2addr v7, v6

    .line 1540
    .local v7, "limit":I
    if-lt p1, v6, :cond_1

    if-ge p1, v7, :cond_1

    .line 1541
    invoke-static {v6, v7}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v8

    return-wide v8

    .line 1537
    .end local v6    # "start":I
    .end local v7    # "limit":I
    :cond_1
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 1545
    .end local v5    # "i":I
    :cond_2
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v5

    return-wide v5

    .line 1533
    .end local v2    # "runs":[I
    .end local v4    # "lineStart":I
    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    invoke-static {v3, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v2

    return-wide v2
.end method

.method public whitelist getSecondaryHorizontal(I)F
    .locals 1
    .param p1, "offset"    # I

    .line 1691
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public greylist-max-r getSecondaryHorizontal(IZ)F
    .locals 2
    .param p1, "offset"    # I
    .param p2, "clamped"    # Z

    .line 1701
    invoke-virtual {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    .line 1702
    .local v0, "trailing":Z
    xor-int/lit8 v1, v0, 0x1

    invoke-direct {p0, p1, v1, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v1

    return v1
.end method

.method public final greylist-max-o getSelection(IILandroid/text/Layout$SelectionRectangleConsumer;)V
    .locals 18
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "consumer"    # Landroid/text/Layout$SelectionRectangleConsumer;

    .line 3122
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-ne v1, v2, :cond_0

    .line 3123
    return-void

    .line 3126
    :cond_0
    if-ge v2, v1, :cond_1

    .line 3127
    move/from16 v3, p2

    .line 3128
    .local v3, "temp":I
    move/from16 v2, p1

    .line 3129
    .end local p2    # "end":I
    .local v2, "end":I
    move v1, v3

    move v3, v2

    move v2, v1

    .end local p1    # "start":I
    .local v1, "start":I
    goto :goto_0

    .line 3126
    .end local v1    # "start":I
    .end local v2    # "end":I
    .end local v3    # "temp":I
    .restart local p1    # "start":I
    .restart local p2    # "end":I
    :cond_1
    move v3, v2

    move v2, v1

    .line 3132
    .end local p1    # "start":I
    .end local p2    # "end":I
    .local v2, "start":I
    .local v3, "end":I
    :goto_0
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 3133
    .local v1, "startline":I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .line 3135
    .local v7, "endline":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    .line 3136
    .local v4, "top":I
    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v5

    .line 3138
    .local v5, "bottom":I
    if-ne v1, v7, :cond_2

    .line 3139
    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;->addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V

    move v9, v5

    move v5, v7

    move v7, v1

    move v1, v5

    move/from16 v17, v2

    move v5, v9

    .end local v3    # "end":I
    .end local v5    # "bottom":I
    .local v9, "bottom":I
    .local v16, "end":I
    goto/16 :goto_4

    .line 3141
    .end local v9    # "bottom":I
    .end local v16    # "end":I
    .restart local v3    # "end":I
    .restart local v5    # "bottom":I
    :cond_2
    move/from16 v16, v3

    move v9, v5

    .end local v3    # "end":I
    .end local v5    # "bottom":I
    .restart local v9    # "bottom":I
    .restart local v16    # "end":I
    iget v3, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v10, v3

    .line 3143
    .local v10, "width":F
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    .line 3144
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    .line 3143
    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;->addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V

    .line 3146
    move/from16 v17, v2

    .end local v2    # "start":I
    .local v17, "start":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 3147
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    int-to-float v12, v4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v14, v2

    const/4 v15, 0x0

    const/4 v13, 0x0

    move v2, v10

    move-object/from16 v10, p3

    .end local v10    # "width":F
    .local v2, "width":F
    invoke-interface/range {v10 .. v15}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    move v13, v2

    goto :goto_1

    .line 3150
    .end local v2    # "width":F
    .restart local v10    # "width":F
    :cond_3
    move v2, v10

    .end local v10    # "width":F
    .restart local v2    # "width":F
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    int-to-float v12, v4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    int-to-float v14, v5

    const/4 v15, 0x1

    move-object/from16 v10, p3

    move v13, v2

    .end local v2    # "width":F
    .local v13, "width":F
    invoke-interface/range {v10 .. v15}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    .line 3154
    :goto_1
    add-int/lit8 v2, v1, 0x1

    move v5, v9

    .end local v9    # "bottom":I
    .local v2, "i":I
    .restart local v5    # "bottom":I
    :goto_2
    if-ge v2, v7, :cond_5

    .line 3155
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    .line 3156
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    .line 3157
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    if-ne v6, v3, :cond_4

    .line 3158
    int-to-float v12, v4

    int-to-float v14, v5

    const/4 v15, 0x0

    const/4 v11, 0x0

    move-object/from16 v10, p3

    invoke-interface/range {v10 .. v15}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    goto :goto_3

    .line 3160
    :cond_4
    int-to-float v12, v4

    int-to-float v14, v5

    const/4 v15, 0x1

    const/4 v11, 0x0

    move-object/from16 v10, p3

    invoke-interface/range {v10 .. v15}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    .line 3154
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3164
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    .line 3165
    invoke-virtual {v0, v7, v8}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v5

    .line 3167
    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    move v6, v7

    move v7, v1

    move v1, v6

    move-object/from16 v6, p3

    move v8, v3

    move/from16 v3, v16

    .end local v16    # "end":I
    .local v1, "endline":I
    .restart local v3    # "end":I
    .local v7, "startline":I
    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;->addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V

    .line 3169
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    if-ne v2, v8, :cond_6

    .line 3170
    int-to-float v12, v4

    move v2, v13

    .end local v13    # "width":F
    .local v2, "width":F
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v13

    int-to-float v14, v5

    const/4 v15, 0x0

    move-object/from16 v10, p3

    move v11, v2

    .end local v2    # "width":F
    .local v11, "width":F
    invoke-interface/range {v10 .. v15}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    .end local v11    # "width":F
    .restart local v2    # "width":F
    goto :goto_4

    .line 3173
    .end local v2    # "width":F
    .restart local v13    # "width":F
    :cond_6
    move v2, v13

    .end local v13    # "width":F
    .restart local v2    # "width":F
    int-to-float v12, v4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v13

    int-to-float v14, v5

    const/4 v15, 0x1

    const/4 v11, 0x0

    move-object/from16 v10, p3

    invoke-interface/range {v10 .. v15}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    .line 3177
    .end local v2    # "width":F
    :goto_4
    return-void
.end method

.method public whitelist getSelectionPath(IILandroid/graphics/Path;)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # Landroid/graphics/Path;

    .line 3105
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 3106
    new-instance v0, Landroid/text/Layout$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3}, Landroid/text/Layout$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/Path;)V

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/Layout;->getSelection(IILandroid/text/Layout$SelectionRectangleConsumer;)V

    .line 3108
    return-void
.end method

.method public whitelist getShiftDrawingOffsetForStartOverhang()Z
    .locals 1

    .line 4628
    iget-boolean v0, p0, Landroid/text/Layout;->mShiftDrawingOffsetForStartOverhang:Z

    return v0
.end method

.method public final whitelist getSpacingAdd()F
    .locals 1

    .line 4414
    invoke-virtual {p0}, Landroid/text/Layout;->getLineSpacingAmount()F

    move-result v0

    return v0
.end method

.method public final whitelist getSpacingMultiplier()F
    .locals 1

    .line 4387
    invoke-virtual {p0}, Landroid/text/Layout;->getLineSpacingMultiplier()F

    move-result v0

    return v0
.end method

.method public blacklist getStartHyphenEdit(I)I
    .locals 1
    .param p1, "line"    # I

    .line 1441
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist getText()Ljava/lang/CharSequence;
    .locals 1

    .line 4320
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final whitelist getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .locals 1

    .line 4373
    iget-object v0, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method public abstract whitelist getTopPadding()I
.end method

.method public whitelist getUseBoundsForWidth()Z
    .locals 1

    .line 4614
    iget-boolean v0, p0, Landroid/text/Layout;->mUseBoundsForWidth:Z

    return v0
.end method

.method public final whitelist getWidth()I
    .locals 1

    .line 4347
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public final whitelist increaseWidthTo(I)V
    .locals 2
    .param p1, "wid"    # I

    .line 1254
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    if-lt p1, v0, :cond_0

    .line 1258
    iput p1, p0, Landroid/text/Layout;->mWidth:I

    .line 1259
    return-void

    .line 1255
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "attempted to reduce Layout width"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isFallbackLineSpacingEnabled()Z
    .locals 1

    .line 4452
    iget-boolean v0, p0, Landroid/text/Layout;->mFallbackLineSpacing:Z

    return v0
.end method

.method public final whitelist isFontPaddingIncluded()Z
    .locals 1

    .line 4439
    iget-boolean v0, p0, Landroid/text/Layout;->mIncludePad:Z

    return v0
.end method

.method public greylist isLevelBoundary(I)Z
    .locals 10
    .param p1, "offset"    # I

    .line 1471
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 1472
    .local v0, "line":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v1

    .line 1473
    .local v1, "dirs":Landroid/text/Layout$Directions;
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_8

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v2, :cond_0

    goto :goto_4

    .line 1477
    :cond_0
    iget-object v2, v1, Landroid/text/Layout$Directions;->mDirections:[I

    .line 1478
    .local v2, "runs":[I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1479
    .local v4, "lineStart":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 1480
    .local v5, "lineEnd":I
    const/4 v6, 0x1

    if-eq p1, v4, :cond_4

    if-ne p1, v5, :cond_1

    goto :goto_1

    .line 1486
    :cond_1
    sub-int/2addr p1, v4

    .line 1487
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v8, v2

    if-ge v7, v8, :cond_3

    .line 1488
    aget v8, v2, v7

    if-ne p1, v8, :cond_2

    .line 1489
    return v6

    .line 1487
    :cond_2
    add-int/lit8 v7, v7, 0x2

    goto :goto_0

    .line 1492
    .end local v7    # "i":I
    :cond_3
    return v3

    .line 1481
    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    if-ne v7, v6, :cond_5

    move v7, v3

    goto :goto_2

    :cond_5
    move v7, v6

    .line 1482
    .local v7, "paraLevel":I
    :goto_2
    if-ne p1, v4, :cond_6

    move v8, v3

    goto :goto_3

    :cond_6
    array-length v8, v2

    add-int/lit8 v8, v8, -0x2

    .line 1483
    .local v8, "runIndex":I
    :goto_3
    add-int/lit8 v9, v8, 0x1

    aget v9, v2, v9

    ushr-int/lit8 v9, v9, 0x1a

    and-int/lit8 v9, v9, 0x3f

    if-eq v9, v7, :cond_7

    move v3, v6

    :cond_7
    return v3

    .line 1474
    .end local v2    # "runs":[I
    .end local v4    # "lineStart":I
    .end local v5    # "lineEnd":I
    .end local v7    # "paraLevel":I
    .end local v8    # "runIndex":I
    :cond_8
    :goto_4
    return v3
.end method

.method public whitelist isRtlCharAt(I)Z
    .locals 11
    .param p1, "offset"    # I

    .line 1501
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 1502
    .local v0, "line":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v1

    .line 1503
    .local v1, "dirs":Landroid/text/Layout$Directions;
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 1504
    return v3

    .line 1506
    :cond_0
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    .line 1507
    return v4

    .line 1509
    :cond_1
    iget-object v2, v1, Landroid/text/Layout$Directions;->mDirections:[I

    .line 1510
    .local v2, "runs":[I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 1511
    .local v5, "lineStart":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v2

    if-ge v6, v7, :cond_4

    .line 1512
    aget v7, v2, v6

    add-int/2addr v7, v5

    .line 1513
    .local v7, "start":I
    add-int/lit8 v8, v6, 0x1

    aget v8, v2, v8

    const v9, 0x3ffffff

    and-int/2addr v8, v9

    add-int/2addr v8, v7

    .line 1514
    .local v8, "limit":I
    if-lt p1, v7, :cond_3

    if-ge p1, v8, :cond_3

    .line 1515
    add-int/lit8 v9, v6, 0x1

    aget v9, v2, v9

    ushr-int/lit8 v9, v9, 0x1a

    and-int/lit8 v9, v9, 0x3f

    .line 1516
    .local v9, "level":I
    and-int/lit8 v10, v9, 0x1

    if-eqz v10, :cond_2

    move v3, v4

    :cond_2
    return v3

    .line 1511
    .end local v7    # "start":I
    .end local v8    # "limit":I
    .end local v9    # "level":I
    :cond_3
    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    .line 1520
    .end local v6    # "i":I
    :cond_4
    return v3
.end method

.method protected final whitelist isSpanned()Z
    .locals 1

    .line 3425
    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    return v0
.end method

.method public greylist-max-o primaryIsTrailingPrevious(I)Z
    .locals 12
    .param p1, "offset"    # I

    .line 1577
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 1578
    .local v0, "line":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    .line 1579
    .local v1, "lineStart":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    .line 1580
    .local v2, "lineEnd":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v3

    iget-object v3, v3, Landroid/text/Layout$Directions;->mDirections:[I

    .line 1582
    .local v3, "runs":[I
    const/4 v4, -0x1

    .line 1583
    .local v4, "levelAt":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v3

    const v7, 0x3ffffff

    const/4 v8, 0x0

    if-ge v5, v6, :cond_3

    .line 1584
    aget v6, v3, v5

    add-int/2addr v6, v1

    .line 1585
    .local v6, "start":I
    add-int/lit8 v9, v5, 0x1

    aget v9, v3, v9

    and-int/2addr v9, v7

    add-int/2addr v9, v6

    .line 1586
    .local v9, "limit":I
    if-le v9, v2, :cond_0

    .line 1587
    move v9, v2

    .line 1589
    :cond_0
    if-lt p1, v6, :cond_2

    if-ge p1, v9, :cond_2

    .line 1590
    if-le p1, v6, :cond_1

    .line 1592
    return v8

    .line 1594
    :cond_1
    add-int/lit8 v10, v5, 0x1

    aget v10, v3, v10

    ushr-int/lit8 v10, v10, 0x1a

    and-int/lit8 v4, v10, 0x3f

    .line 1595
    goto :goto_1

    .line 1583
    .end local v6    # "start":I
    .end local v9    # "limit":I
    :cond_2
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 1598
    .end local v5    # "i":I
    :cond_3
    :goto_1
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne v4, v5, :cond_5

    .line 1600
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    if-ne v5, v6, :cond_4

    move v5, v8

    goto :goto_2

    :cond_4
    move v5, v6

    :goto_2
    move v4, v5

    .line 1604
    :cond_5
    const/4 v5, -0x1

    .line 1605
    .local v5, "levelBefore":I
    if-ne p1, v1, :cond_7

    .line 1606
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    if-ne v7, v6, :cond_6

    move v7, v8

    goto :goto_3

    :cond_6
    move v7, v6

    :goto_3
    move v5, v7

    goto :goto_5

    .line 1608
    :cond_7
    add-int/lit8 p1, p1, -0x1

    .line 1609
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    array-length v10, v3

    if-ge v9, v10, :cond_a

    .line 1610
    aget v10, v3, v9

    add-int/2addr v10, v1

    .line 1611
    .local v10, "start":I
    add-int/lit8 v11, v9, 0x1

    aget v11, v3, v11

    and-int/2addr v11, v7

    add-int/2addr v11, v10

    .line 1612
    .local v11, "limit":I
    if-le v11, v2, :cond_8

    .line 1613
    move v11, v2

    .line 1615
    :cond_8
    if-lt p1, v10, :cond_9

    if-ge p1, v11, :cond_9

    .line 1616
    add-int/lit8 v7, v9, 0x1

    aget v7, v3, v7

    ushr-int/lit8 v7, v7, 0x1a

    and-int/lit8 v5, v7, 0x3f

    .line 1617
    goto :goto_5

    .line 1609
    .end local v10    # "start":I
    .end local v11    # "limit":I
    :cond_9
    add-int/lit8 v9, v9, 0x2

    goto :goto_4

    .line 1622
    .end local v9    # "i":I
    :cond_a
    :goto_5
    if-ge v5, v4, :cond_b

    move v8, v6

    :cond_b
    return v8
.end method

.method public greylist-max-o primaryIsTrailingPreviousAllLineOffsets(I)[Z
    .locals 12
    .param p1, "line"    # I

    .line 1634
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    .line 1635
    .local v0, "lineStart":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    .line 1636
    .local v1, "lineEnd":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v2

    iget-object v2, v2, Landroid/text/Layout$Directions;->mDirections:[I

    .line 1638
    .local v2, "runs":[I
    sub-int v3, v1, v0

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [Z

    .line 1640
    .local v3, "trailing":[Z
    sub-int v5, v1, v0

    add-int/2addr v5, v4

    new-array v5, v5, [B

    .line 1641
    .local v5, "level":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v2

    if-ge v6, v7, :cond_2

    .line 1642
    aget v7, v2, v6

    add-int/2addr v7, v0

    .line 1643
    .local v7, "start":I
    add-int/lit8 v8, v6, 0x1

    aget v8, v2, v8

    const v9, 0x3ffffff

    and-int/2addr v8, v9

    add-int/2addr v8, v7

    .line 1644
    .local v8, "limit":I
    if-le v8, v1, :cond_0

    .line 1645
    move v8, v1

    .line 1647
    :cond_0
    if-ne v8, v7, :cond_1

    .line 1648
    goto :goto_1

    .line 1650
    :cond_1
    sub-int v9, v8, v0

    sub-int/2addr v9, v4

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    ushr-int/lit8 v10, v10, 0x1a

    and-int/lit8 v10, v10, 0x3f

    int-to-byte v10, v10

    aput-byte v10, v5, v9

    .line 1641
    .end local v7    # "start":I
    .end local v8    # "limit":I
    :goto_1
    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    .line 1654
    .end local v6    # "i":I
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    array-length v7, v2

    if-ge v6, v7, :cond_6

    .line 1655
    aget v7, v2, v6

    add-int/2addr v7, v0

    .line 1656
    .restart local v7    # "start":I
    add-int/lit8 v8, v6, 0x1

    aget v8, v2, v8

    ushr-int/lit8 v8, v8, 0x1a

    and-int/lit8 v8, v8, 0x3f

    int-to-byte v8, v8

    .line 1657
    .local v8, "currentLevel":B
    sub-int v9, v7, v0

    const/4 v10, 0x0

    if-ne v7, v0, :cond_4

    .line 1658
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    if-ne v11, v4, :cond_3

    move v11, v10

    goto :goto_3

    :cond_3
    move v11, v4

    goto :goto_3

    .line 1659
    :cond_4
    sub-int v11, v7, v0

    sub-int/2addr v11, v4

    aget-byte v11, v5, v11

    :goto_3
    if-le v8, v11, :cond_5

    move v10, v4

    :cond_5
    aput-boolean v10, v3, v9

    .line 1654
    .end local v7    # "start":I
    .end local v8    # "currentLevel":B
    add-int/lit8 v6, v6, 0x2

    goto :goto_2

    .line 1662
    .end local v6    # "i":I
    :cond_6
    return-object v3
.end method

.method greylist-max-o replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F

    .line 426
    if-ltz p3, :cond_0

    .line 430
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 431
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 432
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 433
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 434
    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 435
    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 436
    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 437
    invoke-direct {p0}, Landroid/text/Layout;->initSpanColors()V

    .line 438
    return-void

    .line 427
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-r shouldClampCursor(I)Z
    .locals 3
    .param p1, "line"    # I

    .line 2978
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 2984
    return v1

    .line 2980
    :sswitch_0
    return v2

    .line 2982
    :sswitch_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    if-lez v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x3 -> :sswitch_0
    .end sparse-switch
.end method
