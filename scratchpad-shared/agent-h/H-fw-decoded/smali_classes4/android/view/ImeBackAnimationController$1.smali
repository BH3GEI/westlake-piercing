.class Landroid/view/ImeBackAnimationController$1;
.super Ljava/lang/Object;
.source "ImeBackAnimationController.java"

# interfaces
.implements Landroid/view/WindowInsetsAnimationControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ImeBackAnimationController;->onBackStarted(Landroid/window/BackEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ImeBackAnimationController;


# direct methods
.method constructor blacklist <init>(Landroid/view/ImeBackAnimationController;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ImeBackAnimationController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 100
    iput-object p1, p0, Landroid/view/ImeBackAnimationController$1;->this$0:Landroid/view/ImeBackAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCancelled(Landroid/view/WindowInsetsAnimationController;)V
    .locals 1
    .param p1, "controller"    # Landroid/view/WindowInsetsAnimationController;

    .line 121
    iget-object v0, p0, Landroid/view/ImeBackAnimationController$1;->this$0:Landroid/view/ImeBackAnimationController;

    invoke-static {v0}, Landroid/view/ImeBackAnimationController;->-$$Nest$mreset(Landroid/view/ImeBackAnimationController;)V

    .line 122
    return-void
.end method

.method public whitelist onFinished(Landroid/view/WindowInsetsAnimationController;)V
    .locals 1
    .param p1, "controller"    # Landroid/view/WindowInsetsAnimationController;

    .line 116
    iget-object v0, p0, Landroid/view/ImeBackAnimationController$1;->this$0:Landroid/view/ImeBackAnimationController;

    invoke-static {v0}, Landroid/view/ImeBackAnimationController;->-$$Nest$mreset(Landroid/view/ImeBackAnimationController;)V

    .line 117
    return-void
.end method

.method public whitelist onReady(Landroid/view/WindowInsetsAnimationController;I)V
    .locals 2
    .param p1, "controller"    # Landroid/view/WindowInsetsAnimationController;
    .param p2, "types"    # I

    .line 104
    iget-object v0, p0, Landroid/view/ImeBackAnimationController$1;->this$0:Landroid/view/ImeBackAnimationController;

    invoke-static {v0, p1}, Landroid/view/ImeBackAnimationController;->-$$Nest$fputmWindowInsetsAnimationController(Landroid/view/ImeBackAnimationController;Landroid/view/WindowInsetsAnimationController;)V

    .line 105
    iget-object v0, p0, Landroid/view/ImeBackAnimationController$1;->this$0:Landroid/view/ImeBackAnimationController;

    invoke-static {v0}, Landroid/view/ImeBackAnimationController;->-$$Nest$misAdjustPan(Landroid/view/ImeBackAnimationController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ImeBackAnimationController$1;->this$0:Landroid/view/ImeBackAnimationController;

    iget-object v1, p0, Landroid/view/ImeBackAnimationController$1;->this$0:Landroid/view/ImeBackAnimationController;

    invoke-static {v1}, Landroid/view/ImeBackAnimationController;->-$$Nest$fgetmViewRoot(Landroid/view/ImeBackAnimationController;)Landroid/view/ViewRootImpl;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewRootImpl;->mScrollY:I

    invoke-static {v0, v1}, Landroid/view/ImeBackAnimationController;->-$$Nest$fputmStartRootScrollY(Landroid/view/ImeBackAnimationController;I)V

    .line 106
    :cond_0
    iget-object v0, p0, Landroid/view/ImeBackAnimationController$1;->this$0:Landroid/view/ImeBackAnimationController;

    invoke-static {v0}, Landroid/view/ImeBackAnimationController;->-$$Nest$fgetmIsPreCommitAnimationInProgress(Landroid/view/ImeBackAnimationController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Landroid/view/ImeBackAnimationController$1;->this$0:Landroid/view/ImeBackAnimationController;

    iget-object v1, p0, Landroid/view/ImeBackAnimationController$1;->this$0:Landroid/view/ImeBackAnimationController;

    invoke-static {v1}, Landroid/view/ImeBackAnimationController;->-$$Nest$fgetmLastProgress(Landroid/view/ImeBackAnimationController;)F

    move-result v1

    invoke-static {v0, v1}, Landroid/view/ImeBackAnimationController;->-$$Nest$msetPreCommitProgress(Landroid/view/ImeBackAnimationController;F)V

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Landroid/view/ImeBackAnimationController$1;->this$0:Landroid/view/ImeBackAnimationController;

    iget-object v1, p0, Landroid/view/ImeBackAnimationController$1;->this$0:Landroid/view/ImeBackAnimationController;

    invoke-static {v1}, Landroid/view/ImeBackAnimationController;->-$$Nest$fgetmTriggerBack(Landroid/view/ImeBackAnimationController;)Z

    move-result v1

    invoke-static {v0, v1}, Landroid/view/ImeBackAnimationController;->-$$Nest$mstartPostCommitAnim(Landroid/view/ImeBackAnimationController;Z)V

    .line 112
    :goto_0
    return-void
.end method
