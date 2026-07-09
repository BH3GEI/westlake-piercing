.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "Component.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Measurable;
.implements Lcom/android/internal/widget/remotecompose/core/SerializableToString;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false


# instance fields
.field public blacklist locationInWindow:[F

.field public blacklist mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

.field protected blacklist mAnimationId:I

.field public blacklist mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

.field protected blacklist mComponentId:I

.field protected blacklist mComponentValues:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mFirstLayout:Z

.field protected blacklist mHeight:F

.field public blacklist mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNeedsBoundsAnimation:Z

.field public blacklist mNeedsMeasure:Z

.field public blacklist mNeedsRepaint:Z

.field blacklist mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

.field protected blacklist mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

.field public blacklist mPreTranslate:Lcom/android/internal/widget/remotecompose/core/PaintOperation;

.field public blacklist mScheduledVisibility:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

.field public blacklist mVisibility:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

.field protected blacklist mWidth:F

.field protected blacklist mX:F

.field protected blacklist mY:F

.field protected blacklist mZIndex:F


# direct methods
.method public constructor blacklist <init>(IFFFFLcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V
    .locals 8
    .param p1, "componentId"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "parent"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 227
    const/4 v3, -0x1

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v1, p6

    .end local p1    # "componentId":I
    .end local p2    # "x":F
    .end local p3    # "y":F
    .end local p4    # "width":F
    .end local p5    # "height":F
    .end local p6    # "parent":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .local v1, "parent":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .local v2, "componentId":I
    .local v4, "x":F
    .local v5, "y":F
    .local v6, "width":F
    .local v7, "height":F
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V

    .line 228
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V
    .locals 8
    .param p1, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 231
    iget-object v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iget v2, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    iget v3, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationId:I

    iget v4, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    iget v5, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    iget v6, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    iget v7, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V

    .line 239
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 240
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->finalizeCreation()V

    .line 241
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V
    .locals 3
    .param p1, "parent"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p2, "componentId"    # I
    .param p3, "animationId"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F

    .line 210
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    .line 59
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationId:I

    .line 60
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->VISIBLE:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    .line 61
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->VISIBLE:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mScheduledVisibility:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsMeasure:Z

    .line 65
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsRepaint:Z

    .line 67
    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->DEFAULT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    .line 68
    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mFirstLayout:Z

    .line 69
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentValues:Ljava/util/HashSet;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mZIndex:F

    .line 74
    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsBoundsAnimation:Z

    .line 481
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->locationInWindow:[F

    .line 211
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    .line 212
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    .line 213
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    .line 214
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    .line 215
    iput p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    .line 216
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 217
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationId:I

    .line 218
    return-void
.end method

.method private blacklist updateComponentValues(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 4
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 176
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentValues:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;

    .line 177
    .local v1, "v":Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 185
    :pswitch_0
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->getValueId()I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    goto :goto_1

    .line 179
    :pswitch_1
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->getValueId()I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 183
    nop

    .line 192
    .end local v1    # "v":Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;
    :goto_1
    goto :goto_0

    .line 193
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist addComponentValue(Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;)V
    .locals 1
    .param p1, "v"    # Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;

    .line 287
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentValues:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 288
    return-void
.end method

.method public blacklist animatingBounds(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 467
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 469
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->updateComponentValues(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    goto :goto_0

    .line 471
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->clearNeedsBoundsAnimation()V

    .line 473
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 474
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Measurable;

    if-eqz v2, :cond_1

    .line 475
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Measurable;

    .line 476
    .local v2, "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Measurable;
    invoke-interface {v2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Measurable;->animatingBounds(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 478
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    .end local v2    # "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Measurable;
    :cond_1
    goto :goto_1

    .line 479
    :cond_2
    return-void
.end method

.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 154
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 155
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/Operation;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/Operation;->markNotDirty()V

    .line 157
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 159
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_0
    goto :goto_0

    .line 160
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 161
    return-void
.end method

.method public blacklist applyAnimationAsNeeded(Lcom/android/internal/widget/remotecompose/core/PaintContext;)Z
    .locals 1
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 932
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->isAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    if-eqz v0, :cond_1

    .line 933
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 934
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 935
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    .line 936
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->clearNeedsBoundsAnimation()V

    .line 937
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->needsRepaint()V

    goto :goto_0

    .line 939
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->markNeedsBoundsAnimation()V

    .line 941
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 943
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist clearNeedsBoundsAnimation()V
    .locals 1

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsBoundsAnimation:Z

    .line 87
    return-void
.end method

.method public blacklist contains(FF)Z
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 491
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->locationInWindow:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 492
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->locationInWindow:[F

    const/4 v3, 0x1

    aput v2, v0, v3

    .line 493
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->locationInWindow:[F

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getLocationInWindow([F)V

    .line 494
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->locationInWindow:[F

    aget v0, v0, v1

    .line 495
    .local v0, "lx1":F
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    add-float/2addr v2, v0

    .line 496
    .local v2, "lx2":F
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->locationInWindow:[F

    aget v4, v4, v3

    .line 497
    .local v4, "ly1":F
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    add-float/2addr v5, v4

    .line 498
    .local v5, "ly2":F
    cmpl-float v6, p1, v0

    if-ltz v6, :cond_0

    cmpg-float v6, p1, v2

    if-gez v6, :cond_0

    cmpl-float v6, p2, v4

    if-ltz v6, :cond_0

    cmpg-float v6, p2, v5

    if-gez v6, :cond_0

    move v1, v3

    :cond_0
    return v1
.end method

.method public blacklist content()Ljava/lang/String;
    .locals 4

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 807
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 808
    .local v2, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    const-string v3, "- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 810
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    .end local v2    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    goto :goto_0

    .line 812
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist debugBox(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 5
    .param p1, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p2, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 840
    iget v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    .line 841
    .local v0, "width":F
    iget v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    .line 843
    .local v1, "height":F
    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->savePaint()V

    .line 844
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->reset()V

    .line 845
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    const/4 v3, 0x0

    const/16 v4, 0xff

    invoke-virtual {v2, v3, v3, v4, v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(IIII)V

    .line 846
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {p2, v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    .line 847
    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    .line 848
    invoke-virtual {p2, v0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    .line 849
    invoke-virtual {p2, v0, v1, v2, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    .line 850
    invoke-virtual {p2, v2, v1, v2, v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    .line 854
    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restorePaint()V

    .line 855
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "indent"    # Ljava/lang/String;

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 765
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 769
    .local v2, "indent2":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 770
    .local v4, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    invoke-virtual {v4, v2}, Lcom/android/internal/widget/remotecompose/core/Operation;->deepToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    .end local v4    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    goto :goto_0

    .line 773
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist doesNeedsRepaint()Z
    .locals 1

    .line 1046
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsRepaint:Z

    return v0
.end method

.method public blacklist finalizeCreation()V
    .locals 3

    .line 245
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 246
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v2, :cond_0

    .line 247
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iput-object p0, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 249
    :cond_0
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    if-eqz v2, :cond_1

    .line 250
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    .line 251
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getAnimationId()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationId:I

    .line 253
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_1
    goto :goto_0

    .line 254
    :cond_2
    return-void
.end method

.method public blacklist getAnimationId()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationId:I

    return v0
.end method

.method protected blacklist getAnimationSpec()Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    return-object v0
.end method

.method public blacklist getCanvasOperations(Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;)Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;
    .locals 3
    .param p1, "layoutComponent"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 990
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 991
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;

    if-eqz v2, :cond_0

    .line 992
    move-object v0, v1

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;->setComponent(Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;)V

    .line 993
    move-object v0, v1

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;

    return-object v0

    .line 995
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_0
    goto :goto_0

    .line 996
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getComponent(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .locals 3
    .param p1, "cid"    # I

    .line 1057
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    if-eq v0, p1, :cond_3

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationId:I

    if-ne v0, p1, :cond_0

    goto :goto_1

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1061
    .local v1, "c":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v2, :cond_1

    .line 1062
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponent(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v2

    .line 1063
    .local v2, "search":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    if-eqz v2, :cond_1

    .line 1064
    return-object v2

    .line 1067
    .end local v1    # "c":Lcom/android/internal/widget/remotecompose/core/Operation;
    .end local v2    # "search":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    :cond_1
    goto :goto_0

    .line 1068
    :cond_2
    const/4 v0, 0x0

    return-object v0

    .line 1058
    :cond_3
    :goto_1
    return-object p0
.end method

.method public blacklist getComponentCount()I
    .locals 4

    .line 1018
    const/4 v0, 0x0

    .line 1019
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1020
    .local v2, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v3, :cond_0

    .line 1021
    move-object v3, v2

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 1023
    .end local v2    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_0
    goto :goto_0

    .line 1024
    :cond_1
    return v0
.end method

.method public blacklist getComponentId()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    return v0
.end method

.method public blacklist getComponents(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ">;)V"
        }
    .end annotation

    .line 981
    .local p1, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;>;"
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 982
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v2, :cond_0

    .line 983
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 985
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_0
    goto :goto_0

    .line 986
    :cond_1
    return-void
.end method

.method public blacklist getData(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/operations/TextData;",
            ">;)V"
        }
    .end annotation

    .line 1005
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/operations/TextData;>;"
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1006
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/TextData;

    if-eqz v2, :cond_0

    .line 1007
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/TextData;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1009
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_0
    goto :goto_0

    .line 1010
    :cond_1
    return-void
.end method

.method public blacklist getHeight()F
    .locals 1

    .line 120
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    return v0
.end method

.method public blacklist getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getLocationInWindow([F)V
    .locals 3
    .param p1, "value"    # [F

    .line 683
    const/4 v0, 0x0

    aget v1, p1, v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 684
    const/4 v0, 0x1

    aget v1, p1, v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 685
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getLocationInWindow([F)V

    .line 688
    :cond_0
    return-void
.end method

.method public blacklist getPaintId()I
    .locals 2

    .line 1034
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1035
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationId:I

    return v0

    .line 1037
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    return v0
.end method

.method public blacklist getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    return-object v0
.end method

.method public blacklist getRoot()Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 748
    instance-of v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz v0, :cond_0

    .line 749
    move-object v0, p0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    return-object v0

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 752
    .local v0, "p":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    :goto_0
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-nez v1, :cond_2

    .line 753
    if-eqz v0, :cond_1

    .line 756
    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    goto :goto_0

    .line 754
    :cond_1
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "No RootLayoutComponent found"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 758
    :cond_2
    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    return-object v1
.end method

.method public blacklist getScrollX()F
    .locals 1

    .line 507
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getScrollY()F
    .locals 1

    .line 516
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist getSerializedName()Ljava/lang/String;
    .locals 1

    .line 714
    const-string v0, "COMPONENT"

    return-object v0
.end method

.method public blacklist getTranslateX()F
    .locals 2

    .line 874
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v0, :cond_0

    .line 875
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iget v1, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    sub-float/2addr v0, v1

    return v0

    .line 877
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTranslateY()F
    .locals 2

    .line 886
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v0, :cond_0

    .line 887
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iget v1, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    sub-float/2addr v0, v1

    return v0

    .line 889
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getWidth()F
    .locals 1

    .line 116
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    return v0
.end method

.method public blacklist getX()F
    .locals 1

    .line 108
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    return v0
.end method

.method public blacklist getY()F
    .locals 1

    .line 112
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    return v0
.end method

.method public blacklist getZIndex()F
    .locals 1

    .line 99
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mZIndex:F

    return v0
.end method

.method public blacklist inflate()V
    .locals 3

    .line 315
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 316
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/TouchListener;

    if-eqz v2, :cond_0

    .line 318
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/TouchListener;

    .line 319
    .local v2, "touchListener":Lcom/android/internal/widget/remotecompose/core/TouchListener;
    invoke-interface {v2, p0}, Lcom/android/internal/widget/remotecompose/core/TouchListener;->setComponent(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V

    .line 321
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    .end local v2    # "touchListener":Lcom/android/internal/widget/remotecompose/core/TouchListener;
    :cond_0
    goto :goto_0

    .line 322
    :cond_1
    return-void
.end method

.method public blacklist intrinsicHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .locals 1
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 307
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v0

    return v0
.end method

.method public blacklist intrinsicWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .locals 1
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 297
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v0

    return v0
.end method

.method public blacklist invalidateMeasure()V
    .locals 2

    .line 781
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->needsRepaint()V

    .line 782
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsMeasure:Z

    .line 783
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 784
    .local v1, "p":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    :goto_0
    if-eqz v1, :cond_0

    .line 785
    iput-boolean v0, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsMeasure:Z

    .line 786
    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    goto :goto_0

    .line 788
    :cond_0
    return-void
.end method

.method public blacklist isVisible()Z
    .locals 3

    .line 353
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->VISIBLE:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-nez v0, :cond_0

    goto :goto_0

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->isVisible()Z

    move-result v0

    return v0

    .line 359
    :cond_1
    return v2

    .line 354
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->VISIBLE:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public blacklist layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .locals 15
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;

    .line 412
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-virtual {v13, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v14

    .line 413
    .local v14, "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mFirstLayout:Z

    if-nez v0, :cond_2

    .line 414
    invoke-virtual {v12}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->isAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    if-nez v0, :cond_2

    .line 416
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    if-nez v0, :cond_1

    .line 417
    new-instance v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    iget v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    iget-object v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;-><init>(IFFFFLcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;)V

    .line 419
    .local v4, "origin":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    new-instance v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    .line 422
    invoke-virtual {v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getX()F

    move-result v7

    .line 423
    invoke-virtual {v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getY()F

    move-result v8

    .line 424
    invoke-virtual {v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v9

    .line 425
    invoke-virtual {v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v10

    .line 426
    invoke-virtual {v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    move-result-object v11

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;-><init>(IFFFFLcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;)V

    .line 427
    .local v5, "target":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual {v5, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->same(Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    iget-wide v1, v12, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->currentTime:J

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    .line 434
    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getMotionDuration()F

    move-result v6

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    .line 435
    invoke-virtual {v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getVisibilityDuration()F

    move-result v7

    iget-object v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    .line 436
    invoke-virtual {v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getEnterAnimation()Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    .line 437
    invoke-virtual {v9}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getExitAnimation()Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    .line 438
    invoke-virtual {v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getMotionEasingType()I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    .line 439
    invoke-virtual {v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getVisibilityEasingType()I

    move-result v11

    move-object v3, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;-><init>(JLcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;FFLcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;II)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    .line 441
    .end local v4    # "origin":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    .end local v5    # "target":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    :cond_0
    goto :goto_0

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    iget-wide v1, v12, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->currentTime:J

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->updateTarget(Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;J)V

    goto :goto_0

    .line 445
    :cond_2
    invoke-virtual {v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    .line 447
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    if-nez v0, :cond_3

    .line 448
    invoke-virtual {v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->setWidth(F)V

    .line 449
    invoke-virtual {v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->setHeight(F)V

    .line 450
    invoke-virtual {v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getX()F

    move-result v0

    invoke-virtual {v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->setLayoutPosition(FF)V

    .line 451
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->updateComponentValues(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 452
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->clearNeedsBoundsAnimation()V

    goto :goto_1

    .line 454
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    invoke-virtual {v0, v12}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 455
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->updateComponentValues(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 456
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->markNeedsBoundsAnimation()V

    .line 458
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mFirstLayout:Z

    .line 459
    return-void
.end method

.method public blacklist markNeedsBoundsAnimation()V
    .locals 1

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsBoundsAnimation:Z

    .line 79
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iget-boolean v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsBoundsAnimation:Z

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->markNeedsBoundsAnimation()V

    .line 82
    :cond_0
    return-void
.end method

.method public blacklist measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .locals 2
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .param p2, "minWidth"    # F
    .param p3, "maxWidth"    # F
    .param p4, "minHeight"    # F
    .param p5, "maxHeight"    # F
    .param p6, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;

    .line 405
    invoke-virtual {p6, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v0

    .line 406
    .local v0, "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setW(F)V

    .line 407
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setH(F)V

    .line 408
    return-void
.end method

.method public blacklist needsBoundsAnimation()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsBoundsAnimation:Z

    return v0
.end method

.method public blacklist needsMeasure()Z
    .locals 1

    .line 258
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mNeedsMeasure:Z

    return v0
.end method

.method public blacklist needsRepaint()V
    .locals 2

    .line 793
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getRoot()Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mNeedsRepaint:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    goto :goto_0

    .line 794
    :catch_0
    move-exception v0

    .line 797
    :goto_0
    return-void
.end method

.method public blacklist onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FF)V
    .locals 9
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "document"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 529
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v1, p3, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    cmpl-float v4, p4, v0

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    and-int/2addr v1, v2

    .line 530
    .local v1, "isUnconditional":Z
    if-nez v1, :cond_2

    invoke-virtual {p0, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_2

    .line 531
    return-void

    .line 533
    :cond_2
    if-eqz v1, :cond_3

    move v2, v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollX()F

    move-result v2

    sub-float v2, p3, v2

    :goto_2
    move v7, v2

    .line 534
    .local v7, "cx":F
    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollY()F

    move-result v0

    sub-float v0, p4, v0

    :goto_3
    move v8, v0

    .line 535
    .local v8, "cy":F
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 536
    .local v2, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v3, :cond_5

    .line 537
    move-object v3, v2

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v3, p1, p2, v7, v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FF)V

    .line 539
    :cond_5
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickHandler;

    if-eqz v3, :cond_6

    .line 540
    move-object v3, v2

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickHandler;

    move-object v6, p0

    move-object v4, p1

    move-object v5, p2

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local p2    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .local v4, "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .local v5, "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    invoke-interface/range {v3 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickHandler;->onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    goto :goto_5

    .line 539
    .end local v4    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local v5    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .restart local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local p2    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    :cond_6
    move-object v4, p1

    move-object v5, p2

    .line 542
    .end local v2    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local p2    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .restart local v4    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local v5    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    :goto_5
    move-object p1, v4

    move-object p2, v5

    goto :goto_4

    .line 543
    .end local v4    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local v5    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .restart local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local p2    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    :cond_7
    return-void
.end method

.method public blacklist onTouchCancel(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FFZ)V
    .locals 8
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "document"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "force"    # Z

    .line 625
    if-nez p5, :cond_0

    invoke-virtual {p0, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 626
    return-void

    .line 628
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollX()F

    move-result v0

    sub-float v3, p3, v0

    .line 629
    .local v3, "cx":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollY()F

    move-result v0

    sub-float v4, p4, v0

    .line 630
    .local v4, "cy":F
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 631
    .local v7, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v1, v7, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v1, :cond_1

    .line 632
    move-object v1, v7

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-object v2, p1

    move v6, p5

    move v5, v4

    move v4, v3

    move-object v3, p2

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local p2    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .end local p5    # "force":Z
    .local v2, "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .local v3, "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .local v4, "cx":F
    .local v5, "cy":F
    .local v6, "force":Z
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->onTouchCancel(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FFZ)V

    move p1, v6

    .end local v6    # "force":Z
    .local p1, "force":Z
    goto :goto_1

    .line 631
    .end local v2    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local v5    # "cy":F
    .local v3, "cx":F
    .local v4, "cy":F
    .local p1, "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local p2    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .restart local p5    # "force":Z
    :cond_1
    move-object v2, p1

    move p1, p5

    move v5, v4

    move v4, v3

    move-object v3, p2

    .line 634
    .end local p2    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .end local p5    # "force":Z
    .restart local v2    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .local v3, "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .local v4, "cx":F
    .restart local v5    # "cy":F
    .local p1, "force":Z
    :goto_1
    instance-of p2, v7, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    if-eqz p2, :cond_2

    .line 635
    move-object v1, v7

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    move v6, v5

    move v5, v4

    move-object v4, p0

    .end local v4    # "cx":F
    .local v5, "cx":F
    .local v6, "cy":F
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;->onTouchCancel(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    move-object p2, v3

    move v4, v5

    move v5, v6

    .end local v3    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .end local v6    # "cy":F
    .restart local v4    # "cx":F
    .local v5, "cy":F
    .restart local p2    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    goto :goto_2

    .line 634
    .end local p2    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .restart local v3    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    :cond_2
    move-object p2, v3

    .line 637
    .end local v3    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .restart local p2    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    :goto_2
    instance-of p5, v7, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    if-eqz p5, :cond_3

    .line 638
    move-object v1, v7

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    .line 639
    .local v1, "touchExpression":Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 640
    move v6, v5

    .end local v5    # "cy":F
    .restart local v6    # "cy":F
    const/4 v5, 0x0

    move v3, v4

    move v4, v6

    .end local v6    # "cy":F
    .local v3, "cx":F
    .local v4, "cy":F
    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->touchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FFFF)V

    move v5, v4

    move v4, v3

    .line 642
    .end local v1    # "touchExpression":Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;
    .end local v3    # "cx":F
    .end local v7    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    .local v4, "cx":F
    .restart local v5    # "cy":F
    :cond_3
    move p5, p1

    move-object p1, v2

    move v3, v4

    move v4, v5

    goto :goto_0

    .line 643
    .end local v2    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local v5    # "cy":F
    .restart local v3    # "cx":F
    .local v4, "cy":F
    .local p1, "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local p5    # "force":Z
    :cond_4
    return-void
.end method

.method public blacklist onTouchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FF)V
    .locals 8
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "document"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 554
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    return-void

    .line 557
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollX()F

    move-result v0

    sub-float v5, p3, v0

    .line 558
    .local v5, "cx":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollY()F

    move-result v0

    sub-float v6, p4, v0

    .line 559
    .local v6, "cy":F
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 560
    .local v7, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v1, v7, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v1, :cond_1

    .line 561
    move-object v1, v7

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1, p1, p2, v5, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->onTouchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FF)V

    .line 563
    :cond_1
    instance-of v1, v7, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    if-eqz v1, :cond_2

    .line 564
    move-object v1, v7

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    move-object v4, p0

    move-object v2, p1

    move-object v3, p2

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local p2    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .local v2, "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .local v3, "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;->onTouchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    goto :goto_1

    .line 563
    .end local v2    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local v3    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .restart local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local p2    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    :cond_2
    move-object v4, p0

    move-object v2, p1

    move-object v3, p2

    .line 566
    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local p2    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .restart local v2    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local v3    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    :goto_1
    instance-of p1, v7, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    if-eqz p1, :cond_3

    .line 567
    move-object p1, v7

    check-cast p1, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    .line 568
    .local p1, "touchExpression":Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 569
    invoke-virtual {p1, v2, v5, v6}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->touchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V

    .line 570
    invoke-virtual {v3, p0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->appliedTouchOperation(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V

    .line 572
    .end local v7    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    .end local p1    # "touchExpression":Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;
    :cond_3
    move-object p1, v2

    move-object p2, v3

    goto :goto_0

    .line 573
    .end local v2    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local v3    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .local p1, "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local p2    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    :cond_4
    return-void
.end method

.method public blacklist onTouchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FFZ)V
    .locals 8
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "document"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "force"    # Z

    .line 656
    if-nez p5, :cond_0

    invoke-virtual {p0, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 657
    return-void

    .line 659
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollX()F

    move-result v0

    sub-float v4, p3, v0

    .line 660
    .local v4, "cx":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollY()F

    move-result v0

    sub-float v5, p4, v0

    .line 661
    .local v5, "cy":F
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 662
    .local v7, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v1, v7, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v1, :cond_1

    .line 663
    move-object v1, v7

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-object v2, p1

    move-object v3, p2

    move v6, p5

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local p2    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .end local p5    # "force":Z
    .local v2, "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .local v3, "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .local v6, "force":Z
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->onTouchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FFZ)V

    move p1, v6

    .end local v6    # "force":Z
    .local p1, "force":Z
    goto :goto_1

    .line 662
    .end local v2    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local v3    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .local p1, "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local p2    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .restart local p5    # "force":Z
    :cond_1
    move-object v2, p1

    move-object v3, p2

    move p1, p5

    .line 665
    .end local p2    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .end local p5    # "force":Z
    .restart local v2    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local v3    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .local p1, "force":Z
    :goto_1
    instance-of p2, v7, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    if-eqz p2, :cond_2

    .line 666
    move-object v1, v7

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    move v6, v5

    move v5, v4

    move-object v4, p0

    .end local v4    # "cx":F
    .local v5, "cx":F
    .local v6, "cy":F
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;->onTouchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    move v4, v5

    move v5, v6

    .line 668
    .end local v6    # "cy":F
    .restart local v4    # "cx":F
    .local v5, "cy":F
    :cond_2
    instance-of p2, v7, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    if-eqz p2, :cond_3

    .line 669
    move-object p2, v7

    check-cast p2, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    .line 670
    .local p2, "touchExpression":Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;
    invoke-virtual {p2, v2}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 671
    invoke-virtual {p2, v2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->touchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V

    .line 673
    .end local v7    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    .end local p2    # "touchExpression":Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;
    :cond_3
    move p5, p1

    move-object p1, v2

    move-object p2, v3

    goto :goto_0

    .line 674
    .end local v2    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local v3    # "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .local p1, "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .local p2, "document":Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .restart local p5    # "force":Z
    :cond_4
    return-void
.end method

.method public blacklist onTouchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FFFFZ)V
    .locals 19
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "document"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "dx"    # F
    .param p6, "dy"    # F
    .param p7, "force"    # Z

    .line 594
    move-object/from16 v3, p0

    move/from16 v8, p3

    move/from16 v9, p4

    if-nez p7, :cond_0

    invoke-virtual {v3, v8, v9}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 595
    return-void

    .line 597
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollX()F

    move-result v0

    sub-float v13, v8, v0

    .line 598
    .local v13, "cx":F
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getScrollY()F

    move-result v0

    sub-float v14, v9, v0

    .line 599
    .local v14, "cy":F
    iget-object v0, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 600
    .local v0, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v1, :cond_1

    .line 601
    move-object v10, v0

    check-cast v10, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p7

    invoke-virtual/range {v10 .. v17}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->onTouchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FFFFZ)V

    .line 603
    :cond_1
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    if-eqz v1, :cond_2

    .line 604
    move-object v1, v0

    .end local v0    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    move-object v0, v1

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    move-object/from16 v2, p2

    move/from16 v6, p5

    move/from16 v7, p6

    move-object v10, v1

    move v4, v13

    move v5, v14

    move-object/from16 v1, p1

    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    .end local v13    # "cx":F
    .end local v14    # "cy":F
    .local v4, "cx":F
    .local v5, "cy":F
    .local v10, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;->onTouchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FFFF)V

    .end local v4    # "cx":F
    .end local v5    # "cy":F
    .restart local v13    # "cx":F
    .restart local v14    # "cy":F
    goto :goto_1

    .line 603
    .end local v10    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    .restart local v0    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_2
    move-object v10, v0

    .line 606
    .end local v0    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    .restart local v10    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    :goto_1
    instance-of v0, v10, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    if-eqz v0, :cond_3

    .line 607
    move-object v1, v10

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    .line 608
    .local v1, "touchExpression":Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;
    move-object/from16 v11, p1

    invoke-virtual {v1, v11}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 609
    move/from16 v5, p5

    move/from16 v6, p6

    move-object v2, v11

    move v3, v13

    move v4, v14

    .end local v13    # "cx":F
    .end local v14    # "cy":F
    .local v3, "cx":F
    .local v4, "cy":F
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->touchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FFFF)V

    .line 611
    .end local v1    # "touchExpression":Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;
    .end local v3    # "cx":F
    .end local v4    # "cy":F
    .end local v10    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    .restart local v13    # "cx":F
    .restart local v14    # "cy":F
    :cond_3
    move-object/from16 v3, p0

    goto :goto_0

    .line 612
    :cond_4
    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 6
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 948
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->isVisualDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 949
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 950
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 951
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->savePaint()V

    .line 952
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->reset()V

    .line 953
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(IIII)V

    .line 954
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    .line 955
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v0, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    .line 956
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    invoke-virtual {p1, v0, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    .line 957
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    invoke-virtual {p1, v0, v4, v3, v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    .line 958
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    invoke-virtual {p1, v3, v0, v3, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    .line 959
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, v2, v1, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(IIII)V

    .line 960
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    .line 961
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    invoke-virtual {p1, v3, v3, v0, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    .line 962
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    invoke-virtual {p1, v3, v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    .line 963
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restorePaint()V

    .line 964
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 966
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->applyAnimationAsNeeded(Lcom/android/internal/widget/remotecompose/core/PaintContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 967
    return-void

    .line 969
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->GONE:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->INVISIBLE:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 972
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 973
    return-void

    .line 970
    :cond_3
    :goto_0
    return-void
.end method

.method public blacklist paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 5
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 898
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPreTranslate:Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mPreTranslate:Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 901
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 902
    .local v0, "prev":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    iput-object p0, v1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 903
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 904
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 905
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->isVisualDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 906
    invoke-virtual {p0, p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->debugBox(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 908
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 909
    .local v2, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/Operation;->isDirty()Z

    move-result v3

    if-eqz v3, :cond_2

    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v3, :cond_2

    .line 910
    move-object v3, v2

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 911
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/Operation;->markNotDirty()V

    .line 913
    :cond_2
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    if-eqz v3, :cond_3

    .line 914
    move-object v3, v2

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 915
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    goto :goto_1

    .line 917
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 918
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    .line 920
    .end local v2    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    :goto_1
    goto :goto_0

    .line 921
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 922
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    iput-object v0, v1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 923
    return-void
.end method

.method public blacklist registerVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 0
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 339
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

    .line 1092
    .local p1, "operationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1093
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1096
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1097
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1098
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1100
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_1
    goto :goto_0

    .line 1102
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 3
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 1073
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->COMPONENT:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 1074
    const-string/jumbo v0, "type"

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getSerializedName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 1075
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 1076
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 1077
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "y"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 1078
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "width"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 1079
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "height"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 1080
    const-string/jumbo v0, "visibility"

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    invoke-interface {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Enum;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 1081
    const-string v0, "list"

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-interface {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/List;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 1082
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .locals 3
    .param p1, "indent"    # I
    .param p2, "serializer"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 720
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getSerializedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 737
    .local v0, "content":Ljava/lang/String;
    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 738
    return-void
.end method

.method public blacklist setAnimationId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 200
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationId:I

    .line 201
    return-void
.end method

.method protected blacklist setAnimationSpec(Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;)V
    .locals 0
    .param p1, "animationSpec"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    .line 329
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    .line 330
    return-void
.end method

.method public blacklist setComponentId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 196
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    .line 197
    return-void
.end method

.method public blacklist setHeight(F)V
    .locals 0
    .param p1, "value"    # F

    .line 149
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    .line 150
    return-void
.end method

.method public blacklist setLayoutPosition(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 864
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    .line 865
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    .line 866
    return-void
.end method

.method public blacklist setParent(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V
    .locals 0
    .param p1, "parent"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 262
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 263
    return-void
.end method

.method public blacklist setVisibility(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;)V
    .locals 1
    .param p1, "visibility"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    .line 368
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mScheduledVisibility:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    if-eq p1, v0, :cond_1

    .line 369
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mScheduledVisibility:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    .line 370
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->invalidateMeasure()V

    .line 372
    :cond_1
    return-void
.end method

.method public blacklist setWidth(F)V
    .locals 0
    .param p1, "value"    # F

    .line 145
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    .line 146
    return-void
.end method

.method public blacklist setX(F)V
    .locals 0
    .param p1, "value"    # F

    .line 137
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    .line 138
    return-void
.end method

.method public blacklist setY(F)V
    .locals 0
    .param p1, "value"    # F

    .line 141
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    .line 142
    return-void
.end method

.method public blacklist suitableForTransition(Lcom/android/internal/widget/remotecompose/core/Operation;)Z
    .locals 5
    .param p1, "o"    # Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 376
    instance-of v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 377
    return v1

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move-object v2, p1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iget-object v2, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 380
    return v1

    .line 382
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 383
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 384
    .local v2, "o1":Lcom/android/internal/widget/remotecompose/core/Operation;
    move-object v3, p1

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iget-object v3, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 385
    .local v3, "o2":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v4, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v4, :cond_2

    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v4, :cond_2

    .line 386
    move-object v4, v2

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->suitableForTransition(Lcom/android/internal/widget/remotecompose/core/Operation;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 387
    return v1

    .line 390
    :cond_2
    instance-of v4, v2, Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    if-eqz v4, :cond_3

    move-object v4, v2

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;->suitableForTransition(Lcom/android/internal/widget/remotecompose/core/Operation;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 391
    return v1

    .line 382
    .end local v2    # "o1":Lcom/android/internal/widget/remotecompose/core/Operation;
    .end local v3    # "o2":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 394
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist textContent()Ljava/lang/String;
    .locals 4

    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 823
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 824
    .local v2, "ignored":Lcom/android/internal/widget/remotecompose/core/Operation;
    const-string v3, ""

    .line 828
    .local v3, "letter":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    .end local v2    # "ignored":Lcom/android/internal/widget/remotecompose/core/Operation;
    .end local v3    # "letter":Ljava/lang/String;
    goto :goto_0

    .line 830
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "COMPONENT(<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 696
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 706
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->textContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Visibility ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 693
    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 2
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 272
    iget-object v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 273
    .local v0, "prev":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    iput-object p0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 275
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentValues:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 276
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->updateComponentValues(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 278
    :cond_0
    iput-object v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 279
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 0
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 743
    return-void
.end method
