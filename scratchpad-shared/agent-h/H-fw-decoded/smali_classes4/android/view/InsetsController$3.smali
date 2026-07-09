.class Landroid/view/InsetsController$3;
.super Ljava/lang/Object;
.source "InsetsController.java"

# interfaces
.implements Landroid/view/InsetsState$OnTraverseCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist mFromState:Landroid/view/InsetsState;

.field private blacklist mToState:Landroid/view/InsetsState;

.field private blacklist mTypes:I

.field final synthetic blacklist this$0:Landroid/view/InsetsController;


# direct methods
.method constructor blacklist <init>(Landroid/view/InsetsController;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/InsetsController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 702
    iput-object p1, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onFinish(Landroid/view/InsetsState;Landroid/view/InsetsState;)V
    .locals 11
    .param p1, "state1"    # Landroid/view/InsetsState;
    .param p2, "state2"    # Landroid/view/InsetsState;

    .line 740
    iget v0, p0, Landroid/view/InsetsController$3;->mTypes:I

    if-nez v0, :cond_0

    .line 741
    return-void

    .line 743
    :cond_0
    iget-object v0, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    iget v1, p0, Landroid/view/InsetsController$3;->mTypes:I

    invoke-static {v0, v1}, Landroid/view/InsetsController;->-$$Nest$mcancelExistingControllers(Landroid/view/InsetsController;I)V

    .line 744
    new-instance v2, Landroid/view/InsetsResizeAnimationRunner;

    iget-object v0, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {v0}, Landroid/view/InsetsController;->-$$Nest$fgetmFrame(Landroid/view/InsetsController;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Landroid/view/InsetsController$3;->mFromState:Landroid/view/InsetsState;

    iget-object v5, p0, Landroid/view/InsetsController$3;->mToState:Landroid/view/InsetsState;

    sget-object v6, Landroid/view/InsetsController;->RESIZE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    iget v9, p0, Landroid/view/InsetsController$3;->mTypes:I

    iget-object v10, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    const-wide/16 v7, 0x12c

    invoke-direct/range {v2 .. v10}, Landroid/view/InsetsResizeAnimationRunner;-><init>(Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/InsetsState;Landroid/view/animation/Interpolator;JILandroid/view/InsetsAnimationControlCallbacks;)V

    .line 747
    .local v2, "runner":Landroid/view/InsetsAnimationControlRunner;
    iget-object v0, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {v0}, Landroid/view/InsetsController;->-$$Nest$fgetmRunningAnimations(Landroid/view/InsetsController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 748
    iget-object v0, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {v0}, Landroid/view/InsetsController;->-$$Nest$fgetmHost(Landroid/view/InsetsController;)Landroid/view/InsetsController$Host;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/InsetsController$Host;->notifyAnimationRunningStateChanged(Z)V

    .line 750
    :cond_1
    iget-object v0, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {v0}, Landroid/view/InsetsController;->-$$Nest$fgetmRunningAnimations(Landroid/view/InsetsController;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Landroid/view/InsetsController$RunningAnimation;

    invoke-interface {v2}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/InsetsController$RunningAnimation;-><init>(Landroid/view/InsetsAnimationControlRunner;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    return-void
.end method

.method public blacklist onIdMatch(Landroid/view/InsetsSource;Landroid/view/InsetsSource;)V
    .locals 4
    .param p1, "source1"    # Landroid/view/InsetsSource;
    .param p2, "source2"    # Landroid/view/InsetsSource;

    .line 717
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 718
    .local v0, "frame1":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 719
    .local v1, "frame2":Landroid/graphics/Rect;
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/InsetsSource;->hasFlags(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 720
    invoke-virtual {p2, v2}, Landroid/view/InsetsSource;->hasFlags(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 721
    invoke-virtual {p1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 722
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {v2}, Landroid/view/InsetsController;->-$$Nest$fgetmFrame(Landroid/view/InsetsController;)Landroid/graphics/Rect;

    move-result-object v2

    .line 723
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {v2}, Landroid/view/InsetsController;->-$$Nest$fgetmFrame(Landroid/view/InsetsController;)Landroid/graphics/Rect;

    move-result-object v2

    .line 724
    invoke-virtual {p2}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 727
    :cond_0
    iget v2, p0, Landroid/view/InsetsController$3;->mTypes:I

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, p0, Landroid/view/InsetsController$3;->mTypes:I

    .line 728
    iget-object v2, p0, Landroid/view/InsetsController$3;->mFromState:Landroid/view/InsetsState;

    if-nez v2, :cond_1

    .line 729
    new-instance v2, Landroid/view/InsetsState;

    invoke-direct {v2}, Landroid/view/InsetsState;-><init>()V

    iput-object v2, p0, Landroid/view/InsetsController$3;->mFromState:Landroid/view/InsetsState;

    .line 731
    :cond_1
    iget-object v2, p0, Landroid/view/InsetsController$3;->mToState:Landroid/view/InsetsState;

    if-nez v2, :cond_2

    .line 732
    new-instance v2, Landroid/view/InsetsState;

    invoke-direct {v2}, Landroid/view/InsetsState;-><init>()V

    iput-object v2, p0, Landroid/view/InsetsController$3;->mToState:Landroid/view/InsetsState;

    .line 734
    :cond_2
    iget-object v2, p0, Landroid/view/InsetsController$3;->mFromState:Landroid/view/InsetsState;

    new-instance v3, Landroid/view/InsetsSource;

    invoke-direct {v3, p1}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    invoke-virtual {v2, v3}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 735
    iget-object v2, p0, Landroid/view/InsetsController$3;->mToState:Landroid/view/InsetsState;

    new-instance v3, Landroid/view/InsetsSource;

    invoke-direct {v3, p2}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    invoke-virtual {v2, v3}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 736
    return-void

    .line 725
    :cond_3
    :goto_0
    return-void
.end method

.method public blacklist onStart(Landroid/view/InsetsState;Landroid/view/InsetsState;)V
    .locals 1
    .param p1, "state1"    # Landroid/view/InsetsState;
    .param p2, "state2"    # Landroid/view/InsetsState;

    .line 710
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsController$3;->mTypes:I

    .line 711
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/InsetsController$3;->mFromState:Landroid/view/InsetsState;

    .line 712
    iput-object v0, p0, Landroid/view/InsetsController$3;->mToState:Landroid/view/InsetsState;

    .line 713
    return-void
.end method
