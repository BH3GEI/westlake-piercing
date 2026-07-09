.class Landroid/view/SurfaceView$SurfaceControlViewHostParent;
.super Landroid/view/ISurfaceControlViewHostParent$Stub;
.source "SurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SurfaceControlViewHostParent"
.end annotation


# instance fields
.field private blacklist mSurfaceView:Landroid/view/SurfaceView;


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 331
    invoke-direct {p0}, Landroid/view/ISurfaceControlViewHostParent$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/SurfaceView-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/SurfaceView$SurfaceControlViewHostParent;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$forwardBackKeyToParent$1(Landroid/view/SurfaceView;Landroid/view/KeyEvent;)V
    .locals 7
    .param p0, "sv"    # Landroid/view/SurfaceView;
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 403
    invoke-virtual {p0}, Landroid/view/SurfaceView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 406
    :cond_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 407
    .local v0, "vri":Landroid/view/ViewRootImpl;
    if-nez v0, :cond_1

    .line 408
    return-void

    .line 410
    :cond_1
    iget-object v1, p0, Landroid/view/SurfaceView;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/input/InputManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    .line 411
    .local v1, "inputManager":Landroid/hardware/input/InputManager;
    if-nez v1, :cond_2

    .line 412
    return-void

    .line 415
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 416
    .local v2, "timeDiff":J
    const-wide/16 v4, 0x64

    cmp-long v4, v2, v4

    const-string v5, "SurfaceView"

    if-lez v4, :cond_3

    .line 417
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignore the input event that exceed the tolerance time, exceed "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "ms"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return-void

    .line 421
    :cond_3
    invoke-virtual {v1, p1}, Landroid/hardware/input/InputManager;->verifyInputEvent(Landroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;

    move-result-object v4

    if-nez v4, :cond_4

    .line 422
    const-string v4, "Received invalid input event"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return-void

    .line 425
    :cond_4
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, p1, v6, v4, v5}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 427
    return-void

    .line 404
    .end local v0    # "vri":Landroid/view/ViewRootImpl;
    .end local v1    # "inputManager":Landroid/hardware/input/InputManager;
    .end local v2    # "timeDiff":J
    :cond_5
    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$updateParams$0(Landroid/view/SurfaceView;)V
    .locals 1
    .param p0, "sv"    # Landroid/view/SurfaceView;

    .line 385
    iget-object v0, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 388
    :cond_0
    return-void
.end method


# virtual methods
.method blacklist attach(Landroid/view/SurfaceView;)V
    .locals 3
    .param p1, "sv"    # Landroid/view/SurfaceView;

    .line 344
    monitor-enter p0

    .line 346
    :try_start_0
    iget-object v0, p1, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getRemoteInterface()Landroid/view/ISurfaceControlViewHost;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ISurfaceControlViewHost;->attachParentInterface(Landroid/view/ISurfaceControlViewHostParent;)V

    .line 347
    iput-object p1, p0, Landroid/view/SurfaceView$SurfaceControlViewHostParent;->mSurfaceView:Landroid/view/SurfaceView;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    goto :goto_0

    .line 352
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "SurfaceView"

    const-string v2, "Failed to attach parent interface to SCVH. Likely SCVH is alraedy dead."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit p0

    .line 353
    return-void

    .line 352
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method blacklist detach()V
    .locals 4

    .line 356
    monitor-enter p0

    .line 357
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlViewHostParent;->mSurfaceView:Landroid/view/SurfaceView;

    if-nez v0, :cond_0

    .line 358
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 361
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/view/SurfaceView$SurfaceControlViewHostParent;->mSurfaceView:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getRemoteInterface()Landroid/view/ISurfaceControlViewHost;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ISurfaceControlViewHost;->attachParentInterface(Landroid/view/ISurfaceControlViewHostParent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    goto :goto_0

    .line 362
    :catch_0
    move-exception v1

    .line 363
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "SurfaceView"

    const-string v3, "Failed to remove parent interface from SCVH. Likely SCVH is already dead"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iput-object v0, p0, Landroid/view/SurfaceView$SurfaceControlViewHostParent;->mSurfaceView:Landroid/view/SurfaceView;

    .line 367
    monitor-exit p0

    .line 368
    return-void

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public blacklist forwardBackKeyToParent(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 395
    monitor-enter p0

    .line 396
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlViewHostParent;->mSurfaceView:Landroid/view/SurfaceView;

    .line 397
    .local v0, "sv":Landroid/view/SurfaceView;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    if-nez v0, :cond_0

    .line 399
    return-void

    .line 402
    :cond_0
    new-instance v1, Landroid/view/SurfaceView$SurfaceControlViewHostParent$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Landroid/view/SurfaceView$SurfaceControlViewHostParent$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceView;Landroid/view/KeyEvent;)V

    invoke-static {v0, v1}, Landroid/view/SurfaceView;->-$$Nest$mrunOnUiThread(Landroid/view/SurfaceView;Ljava/lang/Runnable;)V

    .line 428
    return-void

    .line 397
    .end local v0    # "sv":Landroid/view/SurfaceView;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist updateParams([Landroid/view/WindowManager$LayoutParams;)V
    .locals 3
    .param p1, "childAttrs"    # [Landroid/view/WindowManager$LayoutParams;

    .line 373
    monitor-enter p0

    .line 374
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlViewHostParent;->mSurfaceView:Landroid/view/SurfaceView;

    .line 375
    .local v0, "sv":Landroid/view/SurfaceView;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    if-nez v0, :cond_0

    .line 377
    return-void

    .line 380
    :cond_0
    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmEmbeddedWindowParams(Landroid/view/SurfaceView;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 381
    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmEmbeddedWindowParams(Landroid/view/SurfaceView;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->addAll(Ljava/util/Collection;)Z

    .line 383
    invoke-virtual {v0}, Landroid/view/SurfaceView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 384
    new-instance v1, Landroid/view/SurfaceView$SurfaceControlViewHostParent$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Landroid/view/SurfaceView$SurfaceControlViewHostParent$$ExternalSyntheticLambda1;-><init>(Landroid/view/SurfaceView;)V

    invoke-static {v0, v1}, Landroid/view/SurfaceView;->-$$Nest$mrunOnUiThread(Landroid/view/SurfaceView;Ljava/lang/Runnable;)V

    .line 390
    :cond_1
    return-void

    .line 375
    .end local v0    # "sv":Landroid/view/SurfaceView;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
