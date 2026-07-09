.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
.source "LayoutComponent.java"


# static fields
.field private static final blacklist USE_IMAGE_TEMP_FIX:Z = true


# instance fields
.field protected blacklist mChildrenComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mChildrenHaveZIndex:Z

.field protected blacklist mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

.field protected blacklist mContent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

.field private blacklist mDrawContentOperations:Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;

.field protected blacklist mGraphicsLayerModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

.field protected blacklist mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

.field protected blacklist mHorizontalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

.field protected blacklist mPaddingBottom:F

.field protected blacklist mPaddingLeft:F

.field protected blacklist mPaddingRight:F

.field protected blacklist mPaddingTop:F

.field blacklist mScrollX:F

.field blacklist mScrollY:F

.field protected blacklist mVerticalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

.field protected blacklist mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

.field protected blacklist mZIndexModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ZIndexModifierOperation;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V
    .locals 3
    .param p1, "parent"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p2, "componentId"    # I
    .param p3, "animationId"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F

    .line 88
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V

    .line 56
    move v0, p7

    move p7, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "parent":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .local v0, "height":F
    .local p2, "parent":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .local p3, "componentId":I
    .local p4, "animationId":I
    .local p5, "x":F
    .local p6, "y":F
    .local p7, "width":F
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    .line 57
    iput-object v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    .line 58
    iput-object v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mZIndexModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ZIndexModifierOperation;

    .line 59
    iput-object v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mGraphicsLayerModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

    .line 61
    const/4 v2, 0x0

    iput v2, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingLeft:F

    .line 62
    iput v2, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingRight:F

    .line 63
    iput v2, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingTop:F

    .line 64
    iput v2, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingBottom:F

    .line 66
    iput v2, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mScrollX:F

    .line 67
    iput v2, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mScrollY:F

    .line 69
    iput-object v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mHorizontalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    .line 70
    iput-object v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mVerticalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    .line 72
    new-instance v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-direct {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;-><init>()V

    iput-object v2, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    .line 74
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenComponents:Ljava/util/ArrayList;

    .line 77
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenHaveZIndex:Z

    .line 125
    iput-object v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mContent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    .line 89
    return-void
.end method

.method static synthetic blacklist lambda$paintingComponent$0(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)I
    .locals 2
    .param p0, "a"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p1, "b"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 386
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getZIndex()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getZIndex()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public blacklist computeModifierDefinedHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .locals 7
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 463
    const/4 v0, 0x0

    .line 464
    .local v0, "t":F
    const/4 v1, 0x0

    .line 465
    .local v1, "b":F
    const/4 v2, 0x0

    .line 466
    .local v2, "h":F
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/OperationInterface;

    .line 467
    .local v4, "c":Lcom/android/internal/widget/remotecompose/core/OperationInterface;
    if-eqz p1, :cond_0

    invoke-interface {v4}, Lcom/android/internal/widget/remotecompose/core/OperationInterface;->isDirty()Z

    move-result v5

    if-eqz v5, :cond_0

    instance-of v5, v4, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v5, :cond_0

    .line 468
    move-object v5, v4

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-interface {v5, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 469
    invoke-interface {v4}, Lcom/android/internal/widget/remotecompose/core/OperationInterface;->markNotDirty()V

    .line 471
    :cond_0
    instance-of v5, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    if-eqz v5, :cond_2

    .line 472
    move-object v3, v4

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    .line 473
    .local v3, "o":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->getType()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    move-result-object v5

    sget-object v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->EXACT:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    if-eq v5, v6, :cond_1

    .line 474
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->getType()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    move-result-object v5

    sget-object v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->EXACT_DP:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    if-ne v5, v6, :cond_4

    .line 475
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->getValue()F

    move-result v2

    goto :goto_1

    .line 479
    .end local v3    # "o":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;
    :cond_2
    instance-of v5, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    if-eqz v5, :cond_3

    .line 480
    move-object v5, v4

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    .line 481
    .local v5, "pop":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getTop()F

    move-result v6

    add-float/2addr v0, v6

    .line 482
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getBottom()F

    move-result v6

    add-float/2addr v1, v6

    .line 484
    .end local v4    # "c":Lcom/android/internal/widget/remotecompose/core/OperationInterface;
    .end local v5    # "pop":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;
    :cond_3
    goto :goto_0

    .line 485
    :cond_4
    :goto_1
    add-float v3, v0, v2

    add-float/2addr v3, v1

    return v3
.end method

.method public blacklist computeModifierDefinedPaddingHeight([F)F
    .locals 6
    .param p1, "padding"    # [F

    .line 495
    const/4 v0, 0x0

    .line 496
    .local v0, "t":F
    const/4 v1, 0x0

    .line 497
    .local v1, "b":F
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/OperationInterface;

    .line 498
    .local v3, "c":Lcom/android/internal/widget/remotecompose/core/OperationInterface;
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    if-eqz v4, :cond_0

    .line 499
    move-object v4, v3

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    .line 500
    .local v4, "pop":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getTop()F

    move-result v5

    add-float/2addr v0, v5

    .line 501
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getBottom()F

    move-result v5

    add-float/2addr v1, v5

    .line 503
    .end local v3    # "c":Lcom/android/internal/widget/remotecompose/core/OperationInterface;
    .end local v4    # "pop":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;
    :cond_0
    goto :goto_0

    .line 504
    :cond_1
    const/4 v2, 0x0

    aput v0, p1, v2

    .line 505
    const/4 v2, 0x1

    aput v1, p1, v2

    .line 506
    add-float v2, v0, v1

    return v2
.end method

.method public blacklist computeModifierDefinedPaddingWidth([F)F
    .locals 6
    .param p1, "padding"    # [F

    .line 447
    const/4 v0, 0x0

    .line 448
    .local v0, "s":F
    const/4 v1, 0x0

    .line 449
    .local v1, "e":F
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/OperationInterface;

    .line 450
    .local v3, "c":Lcom/android/internal/widget/remotecompose/core/OperationInterface;
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    if-eqz v4, :cond_0

    .line 451
    move-object v4, v3

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    .line 452
    .local v4, "pop":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getLeft()F

    move-result v5

    add-float/2addr v0, v5

    .line 453
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getRight()F

    move-result v5

    add-float/2addr v1, v5

    .line 455
    .end local v3    # "c":Lcom/android/internal/widget/remotecompose/core/OperationInterface;
    .end local v4    # "pop":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;
    :cond_0
    goto :goto_0

    .line 456
    :cond_1
    const/4 v2, 0x0

    aput v0, p1, v2

    .line 457
    const/4 v2, 0x1

    aput v1, p1, v2

    .line 458
    add-float v2, v0, v1

    return v2
.end method

.method public blacklist computeModifierDefinedWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .locals 7
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 415
    const/4 v0, 0x0

    .line 416
    .local v0, "s":F
    const/4 v1, 0x0

    .line 417
    .local v1, "e":F
    const/4 v2, 0x0

    .line 418
    .local v2, "w":F
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/OperationInterface;

    .line 419
    .local v4, "c":Lcom/android/internal/widget/remotecompose/core/OperationInterface;
    if-eqz p1, :cond_0

    invoke-interface {v4}, Lcom/android/internal/widget/remotecompose/core/OperationInterface;->isDirty()Z

    move-result v5

    if-eqz v5, :cond_0

    instance-of v5, v4, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v5, :cond_0

    .line 420
    move-object v5, v4

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-interface {v5, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 421
    invoke-interface {v4}, Lcom/android/internal/widget/remotecompose/core/OperationInterface;->markNotDirty()V

    .line 423
    :cond_0
    instance-of v5, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    if-eqz v5, :cond_2

    .line 424
    move-object v3, v4

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    .line 425
    .local v3, "o":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->getType()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    move-result-object v5

    sget-object v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->EXACT:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    if-eq v5, v6, :cond_1

    .line 426
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->getType()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    move-result-object v5

    sget-object v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->EXACT_DP:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    if-ne v5, v6, :cond_4

    .line 427
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->getValue()F

    move-result v2

    goto :goto_1

    .line 431
    .end local v3    # "o":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;
    :cond_2
    instance-of v5, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    if-eqz v5, :cond_3

    .line 432
    move-object v5, v4

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    .line 433
    .local v5, "pop":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getLeft()F

    move-result v6

    add-float/2addr v0, v6

    .line 434
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getRight()F

    move-result v6

    add-float/2addr v1, v6

    .line 436
    .end local v4    # "c":Lcom/android/internal/widget/remotecompose/core/OperationInterface;
    .end local v5    # "pop":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;
    :cond_3
    goto :goto_0

    .line 437
    :cond_4
    :goto_1
    add-float v3, v0, v2

    add-float/2addr v3, v1

    return v3
.end method

.method public blacklist drawContent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 2
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 338
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 339
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mX:F

    neg-float v0, v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mY:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 340
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 341
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 342
    return-void
.end method

.method public blacklist getChildrenComponents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ">;"
        }
    .end annotation

    .line 516
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenComponents:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getComponentModifiers()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    return-object v0
.end method

.method public blacklist getHeightModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    return-object v0
.end method

.method public blacklist getLocationInWindow([F)V
    .locals 4
    .param p1, "value"    # [F

    .line 288
    const/4 v0, 0x0

    aget v1, p1, v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mX:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingLeft:F

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 289
    const/4 v0, 0x1

    aget v1, p1, v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mY:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingTop:F

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 290
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getLocationInWindow([F)V

    .line 293
    :cond_0
    return-void
.end method

.method public blacklist getPaddingBottom()F
    .locals 1

    .line 104
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingBottom:F

    return v0
.end method

.method public blacklist getPaddingLeft()F
    .locals 1

    .line 92
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingLeft:F

    return v0
.end method

.method public blacklist getPaddingRight()F
    .locals 1

    .line 100
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingRight:F

    return v0
.end method

.method public blacklist getPaddingTop()F
    .locals 1

    .line 96
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingTop:F

    return v0
.end method

.method public blacklist getScrollX()F
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mHorizontalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mHorizontalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mScrollX:F

    invoke-interface {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;->getScrollX(F)F

    move-result v0

    return v0

    .line 300
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mScrollX:F

    return v0
.end method

.method public blacklist getScrollY()F
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mVerticalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mVerticalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mScrollY:F

    invoke-interface {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;->getScrollY(F)F

    move-result v0

    return v0

    .line 312
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mScrollY:F

    return v0
.end method

.method public blacklist getWidthModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    return-object v0
.end method

.method public blacklist getZIndex()F
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mZIndexModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ZIndexModifierOperation;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mZIndexModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ZIndexModifierOperation;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ZIndexModifierOperation;->getValue()F

    move-result v0

    return v0

    .line 122
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mZIndex:F

    return v0
.end method

.method public blacklist inflate()V
    .locals 14

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/operations/TextData;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v1, "supportedOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 136
    .local v3, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    if-eqz v4, :cond_5

    .line 137
    move-object v4, v3

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    iput-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mContent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    .line 138
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mContent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    iput-object p0, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 139
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 140
    move-object v4, v3

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    .line 141
    .local v4, "content":Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;->getComponents(Ljava/util/ArrayList;)V

    .line 142
    invoke-virtual {v4, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;->getCanvasOperations(Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;)Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mDrawContentOperations:Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;

    .line 144
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mContent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    iget-object v5, v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 145
    new-instance v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasContent;

    const/4 v11, 0x0

    const/4 v13, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v12, p0

    invoke-direct/range {v6 .. v13}, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasContent;-><init>(IFFFFLcom/android/internal/widget/remotecompose/core/operations/layout/Component;I)V

    .line 147
    .local v6, "canvasContent":Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasContent;
    iget-object v5, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mContent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    iget-object v5, v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 148
    .local v7, "opc":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v8, v7, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    if-eqz v8, :cond_0

    .line 149
    iget-object v8, v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasContent;->mList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    move-object v8, v7

    check-cast v8, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    invoke-virtual {v8}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->getWidth()I

    move-result v8

    .line 151
    .local v8, "w":I
    move-object v9, v7

    check-cast v9, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    invoke-virtual {v9}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->getHeight()I

    move-result v9

    .line 152
    .local v9, "h":I
    int-to-float v10, v8

    invoke-virtual {v6, v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasContent;->setWidth(F)V

    .line 153
    int-to-float v10, v9

    invoke-virtual {v6, v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasContent;->setHeight(F)V

    .line 154
    .end local v8    # "w":I
    .end local v9    # "h":I
    goto :goto_2

    .line 155
    :cond_0
    instance-of v8, v7, Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate;

    if-nez v8, :cond_1

    instance-of v8, v7, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSave;

    if-nez v8, :cond_1

    instance-of v8, v7, Lcom/android/internal/widget/remotecompose/core/operations/MatrixRestore;

    if-nez v8, :cond_1

    .line 158
    iget-object v8, v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasContent;->mList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .end local v7    # "opc":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_1
    :goto_2
    goto :goto_1

    .line 162
    :cond_2
    iget-object v5, v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasContent;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 163
    iget-object v5, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mContent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    iget-object v5, v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 164
    iget-object v5, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasContent;->inflate()V

    .line 167
    .end local v6    # "canvasContent":Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasContent;
    :cond_3
    goto :goto_3

    .line 144
    :cond_4
    move-object v12, p0

    .line 168
    invoke-virtual {v4, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;->getData(Ljava/util/ArrayList;)V

    .line 173
    .end local v4    # "content":Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;
    :goto_3
    goto :goto_4

    :cond_5
    move-object v12, p0

    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    if-eqz v4, :cond_8

    .line 174
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;

    if-eqz v4, :cond_6

    .line 175
    move-object v4, v3

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;

    invoke-virtual {v4, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->setParent(Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;)V

    .line 177
    :cond_6
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    if-eqz v4, :cond_7

    .line 178
    move-object v4, v3

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    invoke-virtual {v4, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->inflate(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V

    .line 180
    :cond_7
    iget-object v4, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    move-object v5, v3

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->add(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;)V

    goto :goto_4

    .line 181
    :cond_8
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/TextData;

    if-eqz v4, :cond_9

    .line 182
    move-object v4, v3

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/TextData;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 183
    :cond_9
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    if-nez v4, :cond_a

    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/PaintData;

    if-nez v4, :cond_a

    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;

    if-eqz v4, :cond_b

    .line 186
    :cond_a
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/TouchListener;

    if-eqz v4, :cond_b

    .line 188
    move-object v4, v3

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/TouchListener;

    invoke-interface {v4, p0}, Lcom/android/internal/widget/remotecompose/core/TouchListener;->setComponent(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V

    .line 193
    .end local v3    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_b
    :goto_4
    goto/16 :goto_0

    .line 195
    :cond_c
    move-object v12, p0

    iget-object v2, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 196
    iget-object v2, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 197
    iget-object v2, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 198
    iget-object v2, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mList:Ljava/util/ArrayList;

    iget-object v3, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v2, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 200
    .local v3, "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    iput-object v12, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 201
    iget-object v4, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v4, :cond_d

    move-object v4, v3

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    iget-object v4, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mZIndexModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ZIndexModifierOperation;

    if-eqz v4, :cond_d

    .line 203
    const/4 v4, 0x1

    iput-boolean v4, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenHaveZIndex:Z

    .line 205
    .end local v3    # "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    :cond_d
    goto :goto_5

    .line 207
    :cond_e
    const/4 v2, 0x0

    iput v2, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mX:F

    .line 208
    iput v2, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mY:F

    .line 209
    iput v2, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingLeft:F

    .line 210
    iput v2, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingTop:F

    .line 211
    iput v2, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingRight:F

    .line 212
    iput v2, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingBottom:F

    .line 214
    const/4 v2, 0x0

    .line 215
    .local v2, "widthInConstraints":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;
    const/4 v3, 0x0

    .line 217
    .local v3, "heightInConstraints":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;
    iget-object v4, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/OperationInterface;

    .line 218
    .local v5, "op":Lcom/android/internal/widget/remotecompose/core/OperationInterface;
    instance-of v6, v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    if-eqz v6, :cond_f

    .line 222
    move-object v6, v5

    check-cast v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getLeft()F

    move-result v6

    .line 223
    .local v6, "left":F
    move-object v7, v5

    check-cast v7, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    invoke-virtual {v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getRight()F

    move-result v7

    .line 224
    .local v7, "right":F
    move-object v8, v5

    check-cast v8, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    invoke-virtual {v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getTop()F

    move-result v8

    .line 225
    .local v8, "top":F
    move-object v9, v5

    check-cast v9, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    invoke-virtual {v9}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getBottom()F

    move-result v9

    .line 226
    .local v9, "bottom":F
    iget v10, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingLeft:F

    add-float/2addr v10, v6

    iput v10, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingLeft:F

    .line 227
    iget v10, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingTop:F

    add-float/2addr v10, v8

    iput v10, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingTop:F

    .line 228
    iget v10, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingRight:F

    add-float/2addr v10, v7

    iput v10, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingRight:F

    .line 229
    iget v10, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingBottom:F

    add-float/2addr v10, v9

    iput v10, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingBottom:F

    .line 230
    .end local v6    # "left":F
    .end local v7    # "right":F
    .end local v8    # "top":F
    .end local v9    # "bottom":F
    goto :goto_7

    :cond_f
    instance-of v6, v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    if-eqz v6, :cond_10

    iget-object v6, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    if-nez v6, :cond_10

    .line 231
    move-object v6, v5

    check-cast v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    iput-object v6, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    goto :goto_7

    .line 232
    :cond_10
    instance-of v6, v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    if-eqz v6, :cond_11

    iget-object v6, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    if-nez v6, :cond_11

    .line 233
    move-object v6, v5

    check-cast v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    iput-object v6, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    goto :goto_7

    .line 234
    :cond_11
    instance-of v6, v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;

    if-eqz v6, :cond_12

    .line 235
    move-object v2, v5

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;

    goto :goto_7

    .line 236
    :cond_12
    instance-of v6, v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;

    if-eqz v6, :cond_13

    .line 237
    move-object v3, v5

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;

    goto :goto_7

    .line 238
    :cond_13
    instance-of v6, v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ZIndexModifierOperation;

    if-eqz v6, :cond_14

    .line 239
    move-object v6, v5

    check-cast v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ZIndexModifierOperation;

    iput-object v6, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mZIndexModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ZIndexModifierOperation;

    goto :goto_7

    .line 240
    :cond_14
    instance-of v6, v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

    if-eqz v6, :cond_15

    .line 241
    move-object v6, v5

    check-cast v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

    iput-object v6, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mGraphicsLayerModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

    goto :goto_7

    .line 242
    :cond_15
    instance-of v6, v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    if-eqz v6, :cond_16

    .line 243
    move-object v6, v5

    check-cast v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    iput-object v6, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    goto :goto_7

    .line 244
    :cond_16
    instance-of v6, v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    if-eqz v6, :cond_18

    .line 245
    move-object v6, v5

    check-cast v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    .line 246
    .local v6, "scrollDelegate":Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;
    invoke-interface {v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;->handlesHorizontalScroll()Z

    move-result v7

    if-eqz v7, :cond_17

    .line 247
    iput-object v6, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mHorizontalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    .line 249
    :cond_17
    invoke-interface {v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;->handlesVerticalScroll()Z

    move-result v7

    if-eqz v7, :cond_18

    .line 250
    iput-object v6, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mVerticalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    .line 253
    .end local v5    # "op":Lcom/android/internal/widget/remotecompose/core/OperationInterface;
    .end local v6    # "scrollDelegate":Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;
    :cond_18
    :goto_7
    goto/16 :goto_6

    .line 254
    :cond_19
    iget-object v4, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    if-nez v4, :cond_1a

    .line 255
    new-instance v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    sget-object v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->WRAP:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;)V

    iput-object v4, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    .line 257
    :cond_1a
    iget-object v4, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    if-nez v4, :cond_1b

    .line 258
    new-instance v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    sget-object v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->WRAP:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;)V

    iput-object v4, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    .line 260
    :cond_1b
    if-eqz v2, :cond_1c

    .line 261
    iget-object v4, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    invoke-virtual {v4, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->setWidthIn(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;)V

    .line 263
    :cond_1c
    if-eqz v3, :cond_1d

    .line 264
    iget-object v4, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->setHeightIn(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;)V

    .line 267
    :cond_1d
    iget-object v4, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    sget-object v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->DEFAULT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    if-eq v4, v5, :cond_1f

    .line 268
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8
    iget-object v5, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1f

    .line 269
    iget-object v5, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 270
    .local v5, "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    if-eqz v5, :cond_1e

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationSpec()Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    move-result-object v6

    sget-object v7, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->DEFAULT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    if-ne v6, v7, :cond_1e

    .line 271
    iget-object v6, v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->setAnimationSpec(Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;)V

    .line 268
    .end local v5    # "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 276
    .end local v4    # "i":I
    :cond_1f
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->computeModifierDefinedWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->setWidth(F)V

    .line 277
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->computeModifierDefinedHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->setHeight(F)V

    .line 278
    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 2
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 321
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mDrawContentOperations:Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 323
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mX:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mY:F

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 324
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mDrawContentOperations:Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 325
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 326
    return-void

    .line 328
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 329
    return-void
.end method

.method public blacklist paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 14
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 346
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 347
    .local v0, "prev":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    .line 349
    .local v1, "remoteContext":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    iput-object p0, v1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 350
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 351
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mX:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mY:F

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 352
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->isVisualDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    invoke-virtual {p0, p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->debugBox(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 355
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mGraphicsLayerModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

    if-eqz v2, :cond_1

    .line 356
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getWidth()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getHeight()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->startGraphicsLayer(II)V

    .line 357
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mGraphicsLayerModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->getScaleX()F

    move-result v4

    .line 358
    .local v4, "scaleX":F
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mGraphicsLayerModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->getScaleY()F

    move-result v5

    .line 359
    .local v5, "scaleY":F
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mGraphicsLayerModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->getRotationX()F

    move-result v6

    .line 360
    .local v6, "rotationX":F
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mGraphicsLayerModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->getRotationY()F

    move-result v7

    .line 361
    .local v7, "rotationY":F
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mGraphicsLayerModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->getRotationZ()F

    move-result v8

    .line 362
    .local v8, "rotationZ":F
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mGraphicsLayerModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->getShadowElevation()F

    move-result v9

    .line 363
    .local v9, "shadowElevation":F
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mGraphicsLayerModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->getTransformOriginX()F

    move-result v10

    .line 364
    .local v10, "transformOriginX":F
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mGraphicsLayerModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->getTransformOriginY()F

    move-result v11

    .line 365
    .local v11, "transformOriginY":F
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mGraphicsLayerModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->getAlpha()F

    move-result v12

    .line 366
    .local v12, "alpha":F
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mGraphicsLayerModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->getRenderEffectId()I

    move-result v13

    .line 367
    .local v13, "renderEffectId":I
    move-object v3, p1

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .local v3, "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    invoke-virtual/range {v3 .. v13}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->setGraphicsLayer(FFFFFFFFFI)V

    goto :goto_0

    .line 355
    .end local v3    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .end local v4    # "scaleX":F
    .end local v5    # "scaleY":F
    .end local v6    # "rotationX":F
    .end local v7    # "rotationY":F
    .end local v8    # "rotationZ":F
    .end local v9    # "shadowElevation":F
    .end local v10    # "transformOriginX":F
    .end local v11    # "transformOriginY":F
    .end local v12    # "alpha":F
    .end local v13    # "renderEffectId":I
    .restart local p1    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    :cond_1
    move-object v3, p1

    .line 379
    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .restart local v3    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    :goto_0
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {p1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 380
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingLeft:F

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getScrollX()F

    move-result v2

    add-float/2addr p1, v2

    .line 381
    .local p1, "tx":F
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingTop:F

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getScrollY()F

    move-result v4

    add-float/2addr v2, v4

    .line 382
    .local v2, "ty":F
    invoke-virtual {v3, p1, v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 383
    iget-boolean v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenHaveZIndex:Z

    if-eqz v4, :cond_4

    .line 385
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 386
    .local v4, "sorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;>;"
    new-instance v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 387
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 388
    .local v6, "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->isDirty()Z

    move-result v7

    if-eqz v7, :cond_2

    instance-of v7, v6, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v7, :cond_2

    .line 389
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 390
    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->markNotDirty()V

    .line 392
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    .line 393
    invoke-virtual {v6, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 394
    .end local v6    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    goto :goto_1

    .line 395
    .end local v4    # "sorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;>;"
    :cond_3
    goto :goto_3

    .line 396
    :cond_4
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 397
    .local v5, "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->isDirty()Z

    move-result v6

    if-eqz v6, :cond_5

    instance-of v6, v5, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v6, :cond_5

    .line 398
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 399
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->markNotDirty()V

    .line 401
    :cond_5
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    .line 402
    invoke-virtual {v5, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 403
    .end local v5    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    goto :goto_2

    .line 405
    :cond_6
    :goto_3
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mGraphicsLayerModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

    if-eqz v4, :cond_7

    .line 406
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->endGraphicsLayer()V

    .line 408
    :cond_7
    neg-float v4, p1

    neg-float v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 409
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 410
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v4

    iput-object v0, v4, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 411
    return-void
.end method

.method public blacklist registerVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 1
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 547
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mDrawContentOperations:Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mDrawContentOperations:Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;->registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 550
    :cond_0
    return-void
.end method

.method public blacklist selfOrModifier(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 532
    .local p1, "operationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 537
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 538
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 540
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
    :cond_1
    goto :goto_0

    .line 542
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 3
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 521
    invoke-super {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V

    .line 522
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->LAYOUT_COMPONENT:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    .line 523
    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingLeft:F

    .line 524
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "paddingLeft"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingRight:F

    .line 525
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "paddingRight"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingTop:F

    .line 526
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "paddingTop"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingBottom:F

    .line 527
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "paddingBottom"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 528
    return-void
.end method

.method public blacklist setScrollX(F)V
    .locals 0
    .param p1, "value"    # F

    .line 304
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mScrollX:F

    .line 305
    return-void
.end method

.method public blacklist setScrollY(F)V
    .locals 0
    .param p1, "value"    # F

    .line 316
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mScrollY:F

    .line 317
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 283
    const-string v0, "UNKNOWN LAYOUT_COMPONENT"

    return-object v0
.end method
