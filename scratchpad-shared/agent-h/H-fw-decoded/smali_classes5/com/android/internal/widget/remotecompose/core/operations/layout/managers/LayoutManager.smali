.class public abstract Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;
.source "LayoutManager.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Measurable;


# instance fields
.field blacklist mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;


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

    .line 43
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V

    .line 33
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
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;-><init>(FF)V

    iput-object v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    .line 44
    return-void
.end method

.method private blacklist hasHorizontalScroll()Z
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->hasHorizontalScroll()Z

    move-result v0

    return v0
.end method

.method private blacklist hasVerticalScroll()Z
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->hasVerticalScroll()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist applyVisibility(FFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)Z
    .locals 1
    .param p1, "selfWidth"    # F
    .param p2, "selfHeight"    # F
    .param p3, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist childrenHaveHorizontalWeights()Z
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 106
    .local v1, "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    if-eqz v2, :cond_0

    .line 107
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    .line 108
    .local v2, "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getWidthModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getWidthModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->hasWeight()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    const/4 v0, 0x1

    return v0

    .line 112
    .end local v1    # "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v2    # "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
    :cond_0
    goto :goto_0

    .line 113
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist childrenHaveVerticalWeights()Z
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 118
    .local v1, "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    if-eqz v2, :cond_0

    .line 119
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    .line 120
    .local v2, "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getHeightModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getHeightModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->hasWeight()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    const/4 v0, 0x1

    return v0

    .line 124
    .end local v1    # "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v2    # "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
    :cond_0
    goto :goto_0

    .line 125
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .locals 0
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .param p2, "minWidth"    # F
    .param p3, "maxWidth"    # F
    .param p4, "minHeight"    # F
    .param p5, "maxHeight"    # F
    .param p6, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;

    .line 102
    return-void
.end method

.method public blacklist computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V
    .locals 0
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .param p2, "maxWidth"    # F
    .param p3, "maxHeight"    # F
    .param p4, "horizontalWrap"    # Z
    .param p5, "verticalWrap"    # Z
    .param p6, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
    .param p7, "size"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    .line 73
    return-void
.end method

.method protected blacklist hasHorizontalIntrinsicDimension()Z
    .locals 1

    .line 266
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->hasHorizontalScroll()Z

    move-result v0

    return v0
.end method

.method protected blacklist hasVerticalIntrinsicDimension()Z
    .locals 1

    .line 270
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->hasVerticalScroll()Z

    move-result v0

    return v0
.end method

.method public blacklist internalLayoutMeasure(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .locals 0
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .param p2, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;

    .line 61
    return-void
.end method

.method public blacklist intrinsicHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .locals 4
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeModifierDefinedHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v0

    .line 78
    .local v0, "height":F
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 79
    .local v2, "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->intrinsicHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 80
    .end local v2    # "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    goto :goto_0

    .line 81
    :cond_0
    return v0
.end method

.method public blacklist intrinsicWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .locals 4
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeModifierDefinedWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v0

    .line 87
    .local v0, "width":F
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 88
    .local v2, "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->intrinsicWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 89
    .end local v2    # "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    goto :goto_0

    .line 90
    :cond_0
    return v0
.end method

.method public blacklist isInHorizontalFill()Z
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->isFill()Z

    move-result v0

    return v0
.end method

.method public blacklist isInVerticalFill()Z
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->isFill()Z

    move-result v0

    return v0
.end method

.method public blacklist layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .locals 4
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;

    .line 280
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 281
    invoke-virtual {p2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v0

    .line 283
    .local v0, "self":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v2

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v3

    invoke-virtual {v1, p1, p0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    .line 284
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 285
    .local v2, "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 286
    .end local v2    # "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    goto :goto_0

    .line 287
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mNeedsMeasure:Z

    .line 288
    return-void
.end method

.method public blacklist measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .locals 20
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .param p2, "minWidth"    # F
    .param p3, "maxWidth"    # F
    .param p4, "minHeight"    # F
    .param p5, "maxHeight"    # F
    .param p6, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;

    .line 145
    move-object/from16 v0, p0

    move/from16 v8, p2

    move/from16 v9, p4

    const/4 v10, 0x1

    .line 147
    .local v10, "hasWrap":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeModifierDefinedWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v1

    move/from16 v2, p3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 148
    .local v11, "measuredWidth":F
    nop

    .line 149
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeModifierDefinedHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v1

    move/from16 v3, p5

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 151
    .local v12, "measuredHeight":F
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->isIntrinsicMin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->intrinsicWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v1

    iget v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingLeft:F

    add-float/2addr v1, v4

    iget v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingRight:F

    add-float/2addr v1, v4

    move v13, v1

    .end local p3    # "maxWidth":F
    .local v1, "maxWidth":F
    goto :goto_0

    .line 151
    .end local v1    # "maxWidth":F
    .restart local p3    # "maxWidth":F
    :cond_0
    move v13, v2

    .line 154
    .end local p3    # "maxWidth":F
    .local v13, "maxWidth":F
    :goto_0
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->isIntrinsicMin()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->intrinsicHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v1

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingTop:F

    add-float/2addr v1, v2

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingBottom:F

    add-float/2addr v1, v2

    move v14, v1

    .end local p5    # "maxHeight":F
    .local v1, "maxHeight":F
    goto :goto_1

    .line 154
    .end local v1    # "maxHeight":F
    .restart local p5    # "maxHeight":F
    :cond_1
    move v14, v3

    .line 158
    .end local p5    # "maxHeight":F
    .local v14, "maxHeight":F
    :goto_1
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingLeft:F

    sub-float v1, v13, v1

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingRight:F

    sub-float v2, v1, v2

    .line 159
    .local v2, "insetMaxWidth":F
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingTop:F

    sub-float v1, v14, v1

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingBottom:F

    sub-float v3, v1, v3

    .line 161
    .local v3, "insetMaxHeight":F
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->isWrap()Z

    move-result v15

    .line 162
    .local v15, "hasHorizontalWrap":Z
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->isWrap()Z

    move-result v16

    .line 163
    .local v16, "hasVerticalWrap":Z
    const/4 v1, 0x0

    if-nez v15, :cond_3

    if-eqz v16, :cond_2

    goto :goto_2

    .line 183
    :cond_2
    const/4 v10, 0x0

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v17, v10

    move v10, v1

    goto :goto_4

    .line 164
    :cond_3
    :goto_2
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v4, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setWidth(F)V

    .line 165
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v4, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    .line 166
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    .line 170
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->isWrap()Z

    move-result v4

    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    .line 171
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->isWrap()Z

    move-result v5

    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    .line 166
    move-object/from16 v6, p6

    move/from16 v17, v10

    move v10, v1

    move-object/from16 v1, p1

    .end local v10    # "hasWrap":Z
    .local v17, "hasWrap":Z
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V

    .line 174
    move/from16 v18, v2

    move/from16 v19, v3

    .end local v2    # "insetMaxWidth":F
    .end local v3    # "insetMaxHeight":F
    .local v18, "insetMaxWidth":F
    .local v19, "insetMaxHeight":F
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getWidth()F

    move-result v1

    .line 175
    .end local v11    # "measuredWidth":F
    .local v1, "measuredWidth":F
    if-eqz v15, :cond_4

    .line 176
    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingLeft:F

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingRight:F

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    move v11, v1

    goto :goto_3

    .line 175
    :cond_4
    move v11, v1

    .line 178
    .end local v1    # "measuredWidth":F
    .restart local v11    # "measuredWidth":F
    :goto_3
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getHeight()F

    move-result v12

    .line 179
    if-eqz v16, :cond_5

    .line 180
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingTop:F

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingBottom:F

    add-float/2addr v1, v2

    add-float/2addr v12, v1

    .line 186
    :cond_5
    :goto_4
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->isInHorizontalFill()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 187
    move v1, v13

    .end local v11    # "measuredWidth":F
    .restart local v1    # "measuredWidth":F
    goto :goto_5

    .line 188
    .end local v1    # "measuredWidth":F
    .restart local v11    # "measuredWidth":F
    :cond_6
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->hasWeight()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 189
    nop

    .line 190
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeModifierDefinedWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v1

    invoke-static {v11, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .end local v11    # "measuredWidth":F
    .restart local v1    # "measuredWidth":F
    goto :goto_5

    .line 192
    .end local v1    # "measuredWidth":F
    .restart local v11    # "measuredWidth":F
    :cond_7
    invoke-static {v11, v8}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 193
    .end local v11    # "measuredWidth":F
    .restart local v1    # "measuredWidth":F
    invoke-static {v1, v13}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 195
    :goto_5
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->isInVerticalFill()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 196
    move v2, v14

    .end local v12    # "measuredHeight":F
    .local v2, "measuredHeight":F
    goto :goto_6

    .line 197
    .end local v2    # "measuredHeight":F
    .restart local v12    # "measuredHeight":F
    :cond_8
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->hasWeight()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 198
    nop

    .line 199
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeModifierDefinedHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v2

    invoke-static {v12, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .end local v12    # "measuredHeight":F
    .restart local v2    # "measuredHeight":F
    goto :goto_6

    .line 201
    .end local v2    # "measuredHeight":F
    .restart local v12    # "measuredHeight":F
    :cond_9
    invoke-static {v12, v9}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 202
    .end local v12    # "measuredHeight":F
    .restart local v2    # "measuredHeight":F
    invoke-static {v2, v14}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 204
    :goto_6
    cmpl-float v3, v8, v13

    if-nez v3, :cond_a

    .line 205
    move v1, v13

    move v11, v1

    goto :goto_7

    .line 204
    :cond_a
    move v11, v1

    .line 207
    .end local v1    # "measuredWidth":F
    .restart local v11    # "measuredWidth":F
    :goto_7
    cmpl-float v1, v9, v14

    if-nez v1, :cond_b

    .line 208
    move v2, v14

    move v12, v2

    goto :goto_8

    .line 207
    :cond_b
    move v12, v2

    .line 211
    .end local v2    # "measuredHeight":F
    .restart local v12    # "measuredHeight":F
    :goto_8
    if-nez v17, :cond_10

    .line 212
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->hasHorizontalIntrinsicDimension()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 213
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1, v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setWidth(F)V

    .line 214
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1, v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    .line 215
    const/4 v5, 0x0

    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    move v3, v14

    .end local v14    # "maxHeight":F
    .local v3, "maxHeight":F
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V

    .line 223
    .end local v3    # "maxHeight":F
    .restart local v14    # "maxHeight":F
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getWidth()F

    move-result v3

    .line 224
    .local v3, "w":F
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move v5, v12

    .end local v12    # "measuredHeight":F
    .local v5, "measuredHeight":F
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 225
    .end local v5    # "measuredHeight":F
    .restart local v12    # "measuredHeight":F
    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->hasHorizontalScroll()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 226
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v1, v11, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->setHorizontalScrollDimension(FF)V

    .line 228
    .end local v3    # "w":F
    :cond_c
    move-object/from16 v6, p6

    move v7, v13

    goto :goto_9

    :cond_d
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->hasVerticalIntrinsicDimension()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 229
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1, v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setWidth(F)V

    .line 230
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1, v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    .line 231
    const/4 v5, 0x0

    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    move v2, v13

    .end local v13    # "maxWidth":F
    .local v2, "maxWidth":F
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V

    .line 233
    move v7, v2

    .end local v2    # "maxWidth":F
    .local v7, "maxWidth":F
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getHeight()F

    move-result v5

    .line 234
    .local v5, "h":F
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move v3, v11

    .end local v11    # "measuredWidth":F
    .local v3, "measuredWidth":F
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 235
    .end local v3    # "measuredWidth":F
    .restart local v11    # "measuredWidth":F
    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->hasVerticalScroll()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 236
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v1, v12, v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->setVerticalScrollDimension(FF)V

    .line 238
    .end local v5    # "h":F
    :cond_e
    move-object/from16 v6, p6

    goto :goto_9

    .line 239
    .end local v7    # "maxWidth":F
    .restart local v13    # "maxWidth":F
    :cond_f
    move v7, v13

    .end local v13    # "maxWidth":F
    .restart local v7    # "maxWidth":F
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingLeft:F

    sub-float v1, v11, v1

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingRight:F

    sub-float v3, v1, v2

    .line 240
    .local v3, "maxChildWidth":F
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingTop:F

    sub-float v1, v12, v1

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingBottom:F

    sub-float v5, v1, v2

    .line 241
    .local v5, "maxChildHeight":F
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    goto :goto_9

    .line 211
    .end local v3    # "maxChildWidth":F
    .end local v5    # "maxChildHeight":F
    .end local v7    # "maxWidth":F
    .restart local v13    # "maxWidth":F
    :cond_10
    move-object/from16 v6, p6

    move v7, v13

    .line 245
    .end local v13    # "maxWidth":F
    .restart local v7    # "maxWidth":F
    :goto_9
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mContent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    if-eqz v1, :cond_11

    .line 246
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mContent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    invoke-virtual {v6, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v1

    .line 247
    .local v1, "cm":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual {v1, v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setX(F)V

    .line 248
    invoke-virtual {v1, v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setY(F)V

    .line 249
    invoke-virtual {v1, v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setW(F)V

    .line 250
    invoke-virtual {v1, v12}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setH(F)V

    .line 253
    .end local v1    # "cm":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    :cond_11
    invoke-virtual {v6, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v1

    .line 254
    .local v1, "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual {v1, v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setW(F)V

    .line 255
    invoke-virtual {v1, v12}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setH(F)V

    .line 256
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mScheduledVisibility:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setVisibility(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;)V

    .line 258
    move-object/from16 v2, p1

    invoke-virtual {v0, v2, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->internalLayoutMeasure(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 259
    return-void
.end method

.method public blacklist selfLayout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .locals 4
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;

    .line 297
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 298
    invoke-virtual {p2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v0

    .line 300
    .local v0, "self":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v2

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v3

    invoke-virtual {v1, p1, p0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    .line 301
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mNeedsMeasure:Z

    .line 302
    return-void
.end method
