.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
.source "TextLayout.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final blacklist OVERFLOW_CLIP:I = 0x1

.field public static final blacklist OVERFLOW_ELLIPSIS:I = 0x3

.field public static final blacklist OVERFLOW_MIDDLE_ELLIPSIS:I = 0x5

.field public static final blacklist OVERFLOW_START_ELLIPSIS:I = 0x4

.field public static final blacklist OVERFLOW_VISIBLE:I = 0x2

.field public static final blacklist TEXT_ALIGN_CENTER:I = 0x3

.field public static final blacklist TEXT_ALIGN_END:I = 0x6

.field public static final blacklist TEXT_ALIGN_JUSTIFY:I = 0x4

.field public static final blacklist TEXT_ALIGN_LEFT:I = 0x1

.field public static final blacklist TEXT_ALIGN_RIGHT:I = 0x2

.field public static final blacklist TEXT_ALIGN_START:I = 0x5


# instance fields
.field private blacklist mCachedString:Ljava/lang/String;

.field private blacklist mColor:I

.field blacklist mComputedTextLayout:Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;

.field private blacklist mFontFamilyId:I

.field private blacklist mFontSize:F

.field private blacklist mFontStyle:I

.field private blacklist mFontWeight:F

.field private blacklist mMaxLines:I

.field private blacklist mOverflow:I

.field public blacklist mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

.field private blacklist mTextAlign:I

.field private blacklist mTextH:F

.field private blacklist mTextId:I

.field private blacklist mTextW:F

.field private blacklist mTextX:F

.field private blacklist mTextY:F

.field private blacklist mType:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFFIIFIFIIII)V
    .locals 9
    .param p1, "parent"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p2, "componentId"    # I
    .param p3, "animationId"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F
    .param p8, "textId"    # I
    .param p9, "color"    # I
    .param p10, "fontSize"    # F
    .param p11, "fontStyle"    # I
    .param p12, "fontWeight"    # F
    .param p13, "fontFamilyId"    # I
    .param p14, "textAlign"    # I
    .param p15, "overflow"    # I
    .param p16, "maxLines"    # I

    .line 148
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextId:I

    .line 61
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mColor:I

    .line 62
    const/high16 v2, 0x41800000    # 16.0f

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontSize:F

    .line 63
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontStyle:I

    .line 64
    const/high16 v1, 0x43c80000    # 400.0f

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontWeight:F

    .line 65
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontFamilyId:I

    .line 66
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextAlign:I

    .line 67
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mOverflow:I

    .line 68
    const v1, 0x7fffffff

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mMaxLines:I

    .line 70
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mType:I

    .line 73
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextW:F

    .line 74
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextH:F

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedString:Ljava/lang/String;

    .line 192
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    .line 149
    move/from16 v0, p8

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextId:I

    .line 150
    move/from16 v1, p9

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mColor:I

    .line 151
    move/from16 v2, p10

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontSize:F

    .line 152
    move/from16 v3, p11

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontStyle:I

    .line 153
    move/from16 v4, p12

    iput v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontWeight:F

    .line 154
    move/from16 v5, p13

    iput v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontFamilyId:I

    .line 155
    move/from16 v6, p14

    iput v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextAlign:I

    .line 156
    move/from16 v7, p15

    iput v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mOverflow:I

    .line 157
    move/from16 v8, p16

    iput v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mMaxLines:I

    .line 158
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIIIFIFIIII)V
    .locals 17
    .param p1, "parent"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p2, "componentId"    # I
    .param p3, "animationId"    # I
    .param p4, "textId"    # I
    .param p5, "color"    # I
    .param p6, "fontSize"    # F
    .param p7, "fontStyle"    # I
    .param p8, "fontWeight"    # F
    .param p9, "fontFamilyId"    # I
    .param p10, "textAlign"    # I
    .param p11, "overflow"    # I
    .param p12, "maxLines"    # I

    .line 173
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move/from16 v16, p12

    invoke-direct/range {v0 .. v16}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFFIIFIFIIII)V

    .line 190
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIFIFIIII)V
    .locals 1
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "componentId"    # I
    .param p2, "animationId"    # I
    .param p3, "textId"    # I
    .param p4, "color"    # I
    .param p5, "fontSize"    # F
    .param p6, "fontStyle"    # I
    .param p7, "fontWeight"    # F
    .param p8, "fontFamilyId"    # I
    .param p9, "textAlign"    # I
    .param p10, "overflow"    # I
    .param p11, "maxLines"    # I

    .line 435
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->id()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 436
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 437
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 438
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 439
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 440
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 441
    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 442
    invoke-virtual {p0, p7}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 443
    invoke-virtual {p0, p8}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 444
    invoke-virtual {p0, p9}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 445
    invoke-virtual {p0, p10}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 446
    invoke-virtual {p0, p11}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 447
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .locals 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 489
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->id()I

    move-result v0

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Layout Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 490
    const-string v1, "Text layout implementation.\n\n"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 491
    const/4 v1, 0x0

    const-string v2, "COMPONENT_ID"

    const-string/jumbo v3, "unique id for this component"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 492
    const-string v2, "ANIMATION_ID"

    const-string v3, "id used to match components, for animation purposes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 496
    const-string v2, "COLOR"

    const-string/jumbo v3, "text color"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 497
    const/4 v2, 0x1

    const-string v3, "FONT_SIZE"

    const-string v4, "font size"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 498
    const-string v3, "FONT_STYLE"

    const-string v4, "font style (0 = normal, 1 = italic)"

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 499
    const-string v3, "FONT_WEIGHT"

    const-string v4, "font weight (1-1000, normal = 400)"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 500
    const-string v2, "FONT_FAMILY_ID"

    const-string v3, "font family id"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 501
    return-void
.end method

.method public static blacklist id()I
    .locals 1

    .line 403
    const/16 v0, 0xd0

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .locals 1

    .line 394
    const-string v0, "TextLayout"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 13
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 456
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 457
    .local v2, "componentId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    .line 458
    .local v3, "animationId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v4

    .line 459
    .local v4, "textId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v5

    .line 460
    .local v5, "color":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v6

    .line 461
    .local v6, "fontSize":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v7

    .line 462
    .local v7, "fontStyle":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v8

    .line 463
    .local v8, "fontWeight":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v9

    .line 464
    .local v9, "fontFamilyId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v10

    .line 465
    .local v10, "textAlign":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v11

    .line 466
    .local v11, "overflow":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v12

    .line 467
    .local v12, "maxLines":I
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v12}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIIIFIFIIII)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    return-void
.end method


# virtual methods
.method public blacklist computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V
    .locals 16
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .param p2, "maxWidth"    # F
    .param p3, "maxHeight"    # F
    .param p4, "horizontalWrap"    # Z
    .param p5, "verticalWrap"    # Z
    .param p6, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
    .param p7, "size"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    .line 328
    move-object/from16 v0, p0

    move-object/from16 v10, p7

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->savePaint()V

    .line 329
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->reset()V

    .line 330
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontSize:F

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setTextSize(F)V

    .line 331
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mType:I

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontWeight:F

    float-to-int v3, v3

    iget v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontStyle:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ne v4, v12, :cond_0

    move v4, v12

    goto :goto_0

    :cond_0
    move v4, v11

    :goto_0
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setTextStyle(IIZ)V

    .line 332
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mColor:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(I)V

    .line 333
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->replacePaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    .line 334
    const/4 v1, 0x4

    new-array v7, v1, [F

    .line 335
    .local v7, "bounds":[F
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedString:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 336
    return-void

    .line 338
    :cond_1
    const/4 v3, 0x6

    .line 339
    .local v3, "flags":I
    iget v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mMaxLines:I

    const/4 v13, 0x3

    if-ne v4, v12, :cond_3

    iget v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mOverflow:I

    if-eq v4, v1, :cond_2

    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mOverflow:I

    const/4 v4, 0x5

    if-eq v1, v4, :cond_2

    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mOverflow:I

    if-ne v1, v13, :cond_3

    .line 343
    :cond_2
    or-int/lit8 v3, v3, 0x8

    move v9, v3

    goto :goto_1

    .line 345
    :cond_3
    move v9, v3

    .end local v3    # "flags":I
    .local v9, "flags":I
    :goto_1
    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextId:I

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v4, 0x0

    move v6, v9

    .end local v9    # "flags":I
    .local v6, "flags":I
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getTextBounds(IIII[F)V

    .line 346
    move-object v14, v7

    .end local v6    # "flags":I
    .end local v7    # "bounds":[F
    .restart local v9    # "flags":I
    .local v14, "bounds":[F
    const/4 v15, 0x2

    aget v1, v14, v15

    aget v2, v14, v12

    sub-float/2addr v1, v2

    cmpl-float v1, v1, p2

    if-lez v1, :cond_4

    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mMaxLines:I

    if-le v1, v12, :cond_4

    .line 347
    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextId:I

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedString:Ljava/lang/String;

    .line 351
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextAlign:I

    iget v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mOverflow:I

    iget v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mMaxLines:I

    .line 348
    const/4 v3, 0x0

    move-object/from16 v1, p1

    move/from16 v8, p2

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->layoutComplexText(IIIIIIFI)Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mComputedTextLayout:Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;

    .line 357
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mComputedTextLayout:Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;

    if-eqz v1, :cond_5

    .line 358
    const/4 v1, 0x0

    aput v1, v14, v11

    .line 359
    aput v1, v14, v12

    .line 360
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mComputedTextLayout:Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;

    invoke-interface {v1}, Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;->getWidth()F

    move-result v1

    aput v1, v14, v15

    .line 361
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mComputedTextLayout:Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;

    invoke-interface {v1}, Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;->getHeight()F

    move-result v1

    aput v1, v14, v13

    goto :goto_2

    .line 346
    :cond_4
    move/from16 v8, p2

    .line 364
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mComputedTextLayout:Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;

    .line 366
    :cond_5
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restorePaint()V

    .line 367
    aget v1, v14, v15

    aget v2, v14, v11

    sub-float/2addr v1, v2

    .line 368
    .local v1, "w":F
    aget v2, v14, v13

    aget v3, v14, v12

    sub-float/2addr v2, v3

    .line 369
    .local v2, "h":F
    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v10, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setWidth(F)V

    .line 370
    aget v3, v14, v11

    neg-float v3, v3

    iput v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextX:F

    .line 371
    move/from16 v3, p3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {v10, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    .line 372
    aget v4, v14, v12

    neg-float v4, v4

    iput v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextY:F

    .line 373
    iput v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextW:F

    .line 374
    iput v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextH:F

    .line 375
    return-void
.end method

.method protected blacklist getSerializedName()Ljava/lang/String;
    .locals 1

    .line 289
    const-string v0, "TEXT_LAYOUT"

    return-object v0
.end method

.method public blacklist getTextId()Ljava/lang/Integer;
    .locals 1

    .line 83
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist intrinsicHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .locals 1
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 379
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextH:F

    return v0
.end method

.method public blacklist intrinsicWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .locals 1
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 384
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextW:F

    return v0
.end method

.method public blacklist paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 12
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 196
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 197
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mX:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mY:F

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 198
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 199
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaddingLeft:F

    .line 200
    .local v0, "tx":F
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaddingTop:F

    .line 201
    .local v1, "ty":F
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 206
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->savePaint()V

    .line 207
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->reset()V

    .line 208
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setStyle(I)V

    .line 209
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mColor:I

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(I)V

    .line 210
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontSize:F

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setTextSize(F)V

    .line 211
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mType:I

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontWeight:F

    float-to-int v5, v5

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontStyle:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    move v3, v7

    :cond_0
    invoke-virtual {v2, v4, v5, v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setTextStyle(IIZ)V

    .line 212
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {p1, v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->replacePaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    .line 213
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedString:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 214
    return-void

    .line 216
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    .line 217
    .local v6, "length":I
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mComputedTextLayout:Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;

    if-eqz v2, :cond_2

    .line 218
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mComputedTextLayout:Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;

    invoke-virtual {p1, v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawComplexText(Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;)V

    move-object v3, p1

    goto/16 :goto_1

    .line 220
    :cond_2
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextX:F

    .line 221
    .local v2, "px":F
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextAlign:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move v9, v2

    goto :goto_0

    .line 223
    :pswitch_1
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mWidth:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaddingLeft:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaddingRight:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextW:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v2, v3, v4

    .line 224
    move v9, v2

    goto :goto_0

    .line 227
    :pswitch_2
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mWidth:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaddingRight:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextW:F

    sub-float v2, v3, v4

    .line 228
    move v9, v2

    .line 233
    .end local v2    # "px":F
    .local v9, "px":F
    :goto_0
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextW:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mWidth:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaddingLeft:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaddingRight:F

    sub-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 234
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 235
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mWidth:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaddingLeft:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaddingRight:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mHeight:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaddingTop:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaddingBottom:F

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->clipRect(FFFF)V

    .line 240
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->getScrollX()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->getScrollY()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 241
    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextId:I

    iget v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextY:F

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .local v3, "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawTextRun(IIIIIFFZ)V

    .line 242
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    goto :goto_1

    .line 244
    .end local v3    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .restart local p1    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    :cond_3
    move-object v3, p1

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .restart local v3    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextId:I

    iget v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextY:F

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawTextRun(IIIIIFFZ)V

    .line 260
    .end local v9    # "px":F
    :goto_1
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restorePaint()V

    .line 263
    neg-float p1, v0

    neg-float v2, v1

    invoke-virtual {v3, p1, v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 264
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 265
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 2
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 88
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 89
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextId:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 91
    :cond_0
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 2
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 522
    invoke-super {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V

    .line 523
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "textId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 524
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mColor:I

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->colorInt(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "color"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 525
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontSize:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "fontSize"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 526
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontStyle:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "fontStyle"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 527
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontWeight:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "fontWeight"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 528
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontFamilyId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "fontFamilyId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 529
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextAlign:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "textAlign"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 530
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .locals 3
    .param p1, "indent"    # I
    .param p2, "serializer"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->getSerializedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mAnimationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mWidth:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mVisibility:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 317
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TEXT_LAYOUT ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mAnimationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mVisibility:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 4
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 95
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "cachedString":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    return-void

    .line 99
    :cond_0
    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedString:Ljava/lang/String;

    .line 100
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    .line 101
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontFamilyId:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_5

    .line 102
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontFamilyId:I

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "fontFamily":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 104
    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mType:I

    .line 105
    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mType:I

    goto :goto_0

    .line 107
    :cond_1
    const-string/jumbo v2, "sans-serif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mType:I

    goto :goto_0

    .line 109
    :cond_2
    const-string/jumbo v2, "serif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 110
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mType:I

    goto :goto_0

    .line 111
    :cond_3
    const-string v2, "monospace"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 112
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mType:I

    .line 115
    .end local v1    # "fontFamily":Ljava/lang/String;
    :cond_4
    :goto_0
    goto :goto_1

    .line 116
    :cond_5
    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mType:I

    .line 119
    :cond_6
    :goto_1
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextW:F

    .line 120
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextH:F

    .line 122
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mHorizontalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    if-eqz v1, :cond_7

    .line 123
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mHorizontalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    invoke-interface {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;->reset()V

    .line 125
    :cond_7
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mVerticalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    if-eqz v1, :cond_8

    .line 126
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mVerticalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    invoke-interface {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;->reset()V

    .line 128
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->invalidateMeasure()V

    .line 129
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 12
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 505
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mComponentId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mAnimationId:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextId:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mColor:I

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontSize:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontStyle:I

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontWeight:F

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontFamilyId:I

    iget v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextAlign:I

    iget v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mOverflow:I

    iget v11, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mMaxLines:I

    move-object v0, p1

    .end local p1    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .local v0, "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    invoke-static/range {v0 .. v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIFIFIIII)V

    .line 518
    return-void
.end method
