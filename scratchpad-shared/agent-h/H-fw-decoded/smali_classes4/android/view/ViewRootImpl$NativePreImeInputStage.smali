.class final Landroid/view/ViewRootImpl$NativePreImeInputStage;
.super Landroid/view/ViewRootImpl$AsyncInputStage;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/InputQueue$FinishedInputEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NativePreImeInputStage"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .param p2, "next"    # Landroid/view/ViewRootImpl$InputStage;
    .param p3, "traceCounter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 7624
    iput-object p1, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 7625
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl$AsyncInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 7626
    return-void
.end method

.method private blacklist doOnBackKeyEvent(Landroid/view/KeyEvent;)I
    .locals 8
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 7664
    iget-object v0, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v0

    .line 7665
    .local v0, "dispatcher":Landroid/window/WindowOnBackInvokedDispatcher;
    invoke-virtual {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->getTopCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v1

    .line 7666
    .local v1, "topCallback":Landroid/window/OnBackInvokedCallback;
    invoke-virtual {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->isBackGestureInProgress()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    .line 7667
    return v3

    .line 7669
    :cond_0
    instance-of v2, v1, Landroid/window/OnBackAnimationCallback;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    instance-of v2, v1, Landroid/view/ImeBackAnimationController;

    if-nez v2, :cond_3

    .line 7671
    move-object v2, v1

    check-cast v2, Landroid/window/OnBackAnimationCallback;

    .line 7673
    .local v2, "animationCallback":Landroid/window/OnBackAnimationCallback;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 7691
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7692
    invoke-interface {v2}, Landroid/window/OnBackAnimationCallback;->onBackCancelled()V

    goto :goto_1

    .line 7694
    :cond_1
    invoke-virtual {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->tryInvokeSystemNavigationObserverCallback()V

    .line 7695
    invoke-interface {v1}, Landroid/window/OnBackInvokedCallback;->onBackInvoked()V

    goto :goto_1

    .line 7680
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_5

    .line 7682
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->predictiveBackSwipeEdgeNoneApi()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 7683
    new-instance v6, Landroid/window/BackEvent;

    invoke-direct {v6, v7, v7, v7, v3}, Landroid/window/BackEvent;-><init>(FFFI)V

    .local v6, "backEvent":Landroid/window/BackEvent;
    goto :goto_0

    .line 7685
    .end local v6    # "backEvent":Landroid/window/BackEvent;
    :cond_2
    new-instance v3, Landroid/window/BackEvent;

    invoke-direct {v3, v7, v7, v7, v4}, Landroid/window/BackEvent;-><init>(FFFI)V

    move-object v6, v3

    .line 7687
    .restart local v6    # "backEvent":Landroid/window/BackEvent;
    :goto_0
    invoke-interface {v2, v6}, Landroid/window/OnBackAnimationCallback;->onBackStarted(Landroid/window/BackEvent;)V

    .line 7688
    .end local v6    # "backEvent":Landroid/window/BackEvent;
    goto :goto_1

    .line 7699
    .end local v2    # "animationCallback":Landroid/window/OnBackAnimationCallback;
    :cond_3
    if-eqz v1, :cond_5

    .line 7700
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_6

    .line 7701
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 7702
    invoke-virtual {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->tryInvokeSystemNavigationObserverCallback()V

    .line 7703
    invoke-interface {v1}, Landroid/window/OnBackInvokedCallback;->onBackInvoked()V

    goto :goto_2

    .line 7705
    :cond_4
    iget-object v2, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Skip onBackInvoked(), reason: keyEvent.isCanceled=true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 7699
    :cond_5
    :goto_1
    nop

    .line 7709
    :cond_6
    :goto_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_7

    .line 7711
    invoke-virtual {p1}, Landroid/view/KeyEvent;->cancel()V

    .line 7713
    :cond_7
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o onFinishedInputEvent(Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "token"    # Ljava/lang/Object;
    .param p2, "handled"    # Z

    .line 7718
    move-object v0, p1

    check-cast v0, Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7719
    .local v0, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    if-eqz p2, :cond_0

    .line 7720
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewRootImpl$NativePreImeInputStage;->finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    .line 7721
    return-void

    .line 7723
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$NativePreImeInputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 7724
    return-void
.end method

.method protected greylist-max-o onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 4
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7630
    invoke-virtual {p1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->forPreImeOnly()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7632
    return v1

    .line 7634
    :cond_0
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/KeyEvent;

    if-eqz v0, :cond_5

    .line 7635
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/KeyEvent;

    .line 7639
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$NativePreImeInputStage;->isBack(Landroid/view/InputEvent;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 7640
    iget-object v2, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmWindowlessBackKeyCallback(Landroid/view/ViewRootImpl;)Ljava/util/function/Predicate;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 7641
    iget-object v2, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmWindowlessBackKeyCallback(Landroid/view/ViewRootImpl;)Ljava/util/function/Predicate;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7643
    nop

    .line 7642
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 7643
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7644
    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    .line 7642
    :goto_0
    return v3

    .line 7647
    :cond_2
    return v1

    .line 7649
    :cond_3
    iget-object v2, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmOnBackInvokedDispatcher(Landroid/view/ViewRootImpl;)Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v2

    .line 7650
    invoke-virtual {v2}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7651
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$NativePreImeInputStage;->doOnBackKeyEvent(Landroid/view/KeyEvent;)I

    move-result v1

    return v1

    .line 7655
    :cond_4
    iget-object v2, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    if-eqz v2, :cond_5

    .line 7656
    iget-object v1, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v1, v2, p1, v3, p0}, Landroid/view/InputQueue;->sendInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;ZLandroid/view/InputQueue$FinishedInputEventCallback;)V

    .line 7657
    const/4 v1, 0x3

    return v1

    .line 7660
    .end local v0    # "keyEvent":Landroid/view/KeyEvent;
    :cond_5
    return v1
.end method
