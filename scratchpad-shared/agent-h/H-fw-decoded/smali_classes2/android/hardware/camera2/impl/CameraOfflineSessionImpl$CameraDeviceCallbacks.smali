.class public Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;
.super Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;
.source "CameraOfflineSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraDeviceCallbacks"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 137
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;-><init>()V

    return-void
.end method

.method private blacklist onCaptureErrorLocked(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
    .locals 21
    .param p1, "errorCode"    # I
    .param p2, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;

    .line 459
    move-object/from16 v1, p0

    move/from16 v7, p1

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getRequestId()I

    move-result v12

    .line 460
    .local v12, "requestId":I
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getSubsequenceId()I

    move-result v8

    .line 461
    .local v8, "subsequenceId":I
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getFrameNumber()J

    move-result-wide v13

    .line 462
    .local v13, "frameNumber":J
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getErrorPhysicalCameraId()Ljava/lang/String;

    move-result-object v15

    .line 463
    .local v15, "errorPhysicalCameraId":Ljava/lang/String;
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->-$$Nest$fgetmCaptureCallbackMap(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Landroid/util/SparseArray;

    move-result-object v0

    .line 464
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    .line 466
    .local v2, "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    const-string v0, "CameraOfflineSessionImpl"

    if-nez v2, :cond_0

    .line 467
    nop

    .line 468
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 467
    const-string v4, "Receive capture error on unknown request ID %d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    return-void

    .line 472
    :cond_0
    invoke-virtual {v2, v8}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    .line 474
    .local v3, "request":Landroid/hardware/camera2/CaptureRequest;
    const/4 v4, 0x0

    .line 475
    .local v4, "failureDispatch":Ljava/lang/Runnable;
    const/4 v5, 0x5

    if-ne v7, v5, :cond_6

    .line 479
    iget-object v5, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->-$$Nest$fgetmRemoteSession(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Landroid/hardware/camera2/ICameraOfflineSession;

    move-result-object v5

    if-nez v5, :cond_1

    iget-object v5, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->-$$Nest$misClosed(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 480
    iget-object v5, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->-$$Nest$fgetmConfiguredOutputs(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getErrorStreamId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/params/OutputConfiguration;

    move-object v9, v5

    .local v5, "config":Landroid/hardware/camera2/params/OutputConfiguration;
    goto :goto_0

    .line 482
    .end local v5    # "config":Landroid/hardware/camera2/params/OutputConfiguration;
    :cond_1
    iget-object v5, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->-$$Nest$fgetmOfflineOutputs(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getErrorStreamId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/params/OutputConfiguration;

    move-object v9, v5

    .line 484
    .local v9, "config":Landroid/hardware/camera2/params/OutputConfiguration;
    :goto_0
    if-nez v9, :cond_2

    .line 485
    nop

    .line 487
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getErrorStreamId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 485
    const-string v6, "Stream %d has been removed. Skipping buffer lost callback"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return-void

    .line 490
    :cond_2
    invoke-virtual {v9}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v11, v4

    .end local v4    # "failureDispatch":Ljava/lang/Runnable;
    .local v11, "failureDispatch":Ljava/lang/Runnable;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/view/Surface;

    .line 491
    .local v4, "surface":Landroid/view/Surface;
    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CaptureRequest;->containsTarget(Landroid/view/Surface;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 492
    goto :goto_1

    .line 494
    :cond_3
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getCallback()Landroid/hardware/camera2/impl/CaptureCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CaptureCallback;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 495
    .local v5, "executor":Ljava/util/concurrent/Executor;
    new-instance v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$6;

    move-wide/from16 v19, v13

    move-object v13, v5

    move-wide/from16 v5, v19

    .local v5, "frameNumber":J
    .local v13, "executor":Ljava/util/concurrent/Executor;
    invoke-direct/range {v0 .. v6}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$6;-><init>(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CaptureCallbackHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    move-object v11, v0

    .line 506
    if-eqz v13, :cond_4

    .line 508
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 510
    .local v16, "ident":J
    :try_start_0
    invoke-interface {v13, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 513
    goto :goto_2

    .line 512
    :catchall_0
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 513
    throw v0

    .line 515
    .end local v4    # "surface":Landroid/view/Surface;
    .end local v13    # "executor":Ljava/util/concurrent/Executor;
    .end local v16    # "ident":J
    :cond_4
    :goto_2
    move-wide v13, v5

    goto :goto_1

    .line 490
    .end local v5    # "frameNumber":J
    .local v13, "frameNumber":J
    :cond_5
    move-wide v5, v13

    .line 516
    .end local v9    # "config":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v13    # "frameNumber":J
    .restart local v5    # "frameNumber":J
    move-object/from16 v16, v2

    move-object v9, v3

    move v3, v8

    goto :goto_5

    .line 517
    .end local v5    # "frameNumber":J
    .end local v11    # "failureDispatch":Ljava/lang/Runnable;
    .local v4, "failureDispatch":Ljava/lang/Runnable;
    .restart local v13    # "frameNumber":J
    :cond_6
    move-wide v5, v13

    .end local v13    # "frameNumber":J
    .restart local v5    # "frameNumber":J
    const/4 v0, 0x4

    const/4 v9, 0x1

    if-ne v7, v0, :cond_7

    move v11, v9

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    move v11, v0

    .line 518
    .local v11, "mayHaveBuffers":Z
    :goto_3
    const/4 v10, 0x0

    .line 520
    .local v10, "reason":I
    move v13, v8

    .end local v8    # "subsequenceId":I
    .local v13, "subsequenceId":I
    new-instance v8, Landroid/hardware/camera2/CaptureFailure;

    move v0, v9

    move-object v9, v3

    move v3, v13

    move-wide v13, v5

    .end local v5    # "frameNumber":J
    .local v3, "subsequenceId":I
    .local v9, "request":Landroid/hardware/camera2/CaptureRequest;
    .local v13, "frameNumber":J
    invoke-direct/range {v8 .. v15}, Landroid/hardware/camera2/CaptureFailure;-><init>(Landroid/hardware/camera2/CaptureRequest;IZIJLjava/lang/String;)V

    .line 528
    .end local v13    # "frameNumber":J
    .restart local v5    # "frameNumber":J
    .local v8, "failure":Landroid/hardware/camera2/CaptureFailure;
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getCallback()Landroid/hardware/camera2/impl/CaptureCallback;

    move-result-object v13

    invoke-virtual {v13}, Landroid/hardware/camera2/impl/CaptureCallback;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v13

    .line 529
    .local v13, "executor":Ljava/util/concurrent/Executor;
    new-instance v14, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$7;

    invoke-direct {v14, v1, v2, v9, v8}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$7;-><init>(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CaptureCallbackHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 542
    .end local v4    # "failureDispatch":Ljava/lang/Runnable;
    .local v14, "failureDispatch":Ljava/lang/Runnable;
    iget-object v4, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->-$$Nest$fgetmFrameNumberTracker(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Landroid/hardware/camera2/impl/FrameNumberTracker;

    move-result-object v4

    .line 543
    move-object/from16 v16, v2

    .end local v2    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .local v16, "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    invoke-virtual {v9}, Landroid/hardware/camera2/CaptureRequest;->getRequestType()I

    move-result v2

    .line 542
    invoke-virtual {v4, v5, v6, v0, v2}, Landroid/hardware/camera2/impl/FrameNumberTracker;->updateTracker(JZI)V

    .line 544
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->-$$Nest$mcheckAndFireSequenceComplete(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)V

    .line 546
    if-eqz v13, :cond_8

    .line 548
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 550
    .local v17, "ident":J
    :try_start_1
    invoke-interface {v13, v14}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 552
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 553
    goto :goto_4

    .line 552
    :catchall_1
    move-exception v0

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 553
    throw v0

    .line 557
    .end local v8    # "failure":Landroid/hardware/camera2/CaptureFailure;
    .end local v10    # "reason":I
    .end local v11    # "mayHaveBuffers":Z
    .end local v13    # "executor":Ljava/util/concurrent/Executor;
    .end local v17    # "ident":J
    :cond_8
    :goto_4
    move-object v11, v14

    .end local v14    # "failureDispatch":Ljava/lang/Runnable;
    .local v11, "failureDispatch":Ljava/lang/Runnable;
    :goto_5
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 140
    return-object p0
.end method

.method public blacklist onCaptureStarted(Landroid/hardware/camera2/impl/CaptureResultExtras;J)V
    .locals 19
    .param p1, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;
    .param p2, "timestamp"    # J

    .line 221
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getRequestId()I

    move-result v8

    .line 222
    .local v8, "requestId":I
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getFrameNumber()J

    move-result-wide v6

    .line 223
    .local v6, "frameNumber":J
    nop

    .line 224
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getLastCompletedRegularFrameNumber()J

    move-result-wide v10

    .line 225
    .local v10, "lastCompletedRegularFrameNumber":J
    nop

    .line 226
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getLastCompletedReprocessFrameNumber()J

    move-result-wide v12

    .line 227
    .local v12, "lastCompletedReprocessFrameNumber":J
    nop

    .line 228
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getLastCompletedZslFrameNumber()J

    move-result-wide v14

    .line 232
    .local v14, "lastCompletedZslFrameNumber":J
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 236
    :try_start_0
    iget-object v9, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-static/range {v9 .. v15}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->-$$Nest$mremoveCompletedCallbackHolderLocked(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;JJJ)V

    .line 240
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->-$$Nest$fgetmCaptureCallbackMap(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    move-object v3, v0

    .line 242
    .local v3, "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    if-nez v3, :cond_0

    .line 243
    monitor-exit v2

    return-void

    .line 246
    :cond_0
    invoke-virtual {v3}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getCallback()Landroid/hardware/camera2/impl/CaptureCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CaptureCallback;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    move-object v9, v0

    .line 247
    .local v9, "executor":Ljava/util/concurrent/Executor;
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->-$$Nest$misClosed(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez v9, :cond_1

    move-object/from16 v18, v2

    move-object v2, v3

    goto :goto_1

    .line 250
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-wide/from16 v16, v4

    .line 252
    .local v16, "ident":J
    :try_start_1
    new-instance v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$3;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-wide/from16 v4, p2

    move-object/from16 v18, v2

    move-object v2, v3

    move-object/from16 v3, p1

    .end local v3    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .local v2, "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    :try_start_2
    invoke-direct/range {v0 .. v7}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$3;-><init>(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CaptureCallbackHolder;Landroid/hardware/camera2/impl/CaptureResultExtras;JJ)V

    invoke-interface {v9, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 289
    :try_start_3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 290
    nop

    .line 291
    .end local v9    # "executor":Ljava/util/concurrent/Executor;
    .end local v16    # "ident":J
    monitor-exit v18

    .line 292
    return-void

    .line 289
    .restart local v9    # "executor":Ljava/util/concurrent/Executor;
    .restart local v16    # "ident":J
    :catchall_0
    move-exception v0

    goto :goto_0

    .end local v2    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .restart local v3    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    :catchall_1
    move-exception v0

    move-object/from16 v18, v2

    move-object v2, v3

    .end local v3    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .restart local v2    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    :goto_0
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 290
    nop

    .end local v6    # "frameNumber":J
    .end local v8    # "requestId":I
    .end local v10    # "lastCompletedRegularFrameNumber":J
    .end local v12    # "lastCompletedReprocessFrameNumber":J
    .end local v14    # "lastCompletedZslFrameNumber":J
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;
    .end local p1    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    .end local p2    # "timestamp":J
    throw v0

    .line 247
    .end local v2    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .end local v16    # "ident":J
    .restart local v3    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .restart local v6    # "frameNumber":J
    .restart local v8    # "requestId":I
    .restart local v10    # "lastCompletedRegularFrameNumber":J
    .restart local v12    # "lastCompletedReprocessFrameNumber":J
    .restart local v14    # "lastCompletedZslFrameNumber":J
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;
    .restart local p1    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    .restart local p2    # "timestamp":J
    :cond_2
    move-object/from16 v18, v2

    move-object v2, v3

    .end local v3    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .restart local v2    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    :goto_1
    monitor-exit v18

    return-void

    .line 291
    .end local v2    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .end local v9    # "executor":Ljava/util/concurrent/Executor;
    :catchall_2
    move-exception v0

    move-object/from16 v18, v2

    :goto_2
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_2
.end method

.method public blacklist onClientSharedAccessPriorityChanged(Z)V
    .locals 2
    .param p1, "primaryClient"    # Z

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClientSharedAccessPriorityChanged primaryClient = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraOfflineSessionImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void
.end method

.method public blacklist onDeviceError(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;

    .line 145
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    packed-switch p1, :pswitch_data_0

    .line 154
    :try_start_0
    new-instance v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$1;

    goto :goto_0

    .line 151
    :pswitch_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->onCaptureErrorLocked(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V

    .line 152
    goto :goto_1

    .line 172
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 154
    :goto_0
    invoke-direct {v1, p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$1;-><init>(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;)V

    .line 164
    .local v1, "errorDispatch":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    .local v2, "ident":J
    :try_start_1
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->-$$Nest$fgetmOfflineExecutor(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 168
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 169
    nop

    .line 172
    .end local v1    # "errorDispatch":Ljava/lang/Runnable;
    .end local v2    # "ident":J
    :goto_1
    monitor-exit v0

    .line 173
    return-void

    .line 168
    .restart local v1    # "errorDispatch":Ljava/lang/Runnable;
    .restart local v2    # "ident":J
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 169
    nop

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;
    .end local p1    # "errorCode":I
    .end local p2    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    throw v4

    .line 172
    .end local v1    # "errorDispatch":Ljava/lang/Runnable;
    .end local v2    # "ident":J
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;
    .restart local p1    # "errorCode":I
    .restart local p2    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist onDeviceIdle()V
    .locals 9

    .line 189
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    iget-object v1, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->-$$Nest$fgetmRemoteSession(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Landroid/hardware/camera2/ICameraOfflineSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 191
    const-string v0, "CameraOfflineSessionImpl"

    const-string v2, "Ignoring idle state notifications during offline switches"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    monitor-exit v1

    return-void

    .line 196
    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    const-wide v5, 0x7fffffffffffffffL

    const-wide v7, 0x7fffffffffffffffL

    const-wide v3, 0x7fffffffffffffffL

    invoke-static/range {v2 .. v8}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->-$$Nest$mremoveCompletedCallbackHolderLocked(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;JJJ)V

    .line 201
    new-instance v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$2;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$2;-><init>(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;)V

    move-object v2, v0

    .line 210
    .local v2, "idleDispatch":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 212
    .local v3, "ident":J
    :try_start_1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->-$$Nest$fgetmOfflineExecutor(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 215
    nop

    .line 216
    .end local v2    # "idleDispatch":Ljava/lang/Runnable;
    .end local v3    # "ident":J
    monitor-exit v1

    .line 217
    return-void

    .line 214
    .restart local v2    # "idleDispatch":Ljava/lang/Runnable;
    .restart local v3    # "ident":J
    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 215
    nop

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;
    throw v0

    .line 216
    .end local v2    # "idleDispatch":Ljava/lang/Runnable;
    .end local v3    # "ident":J
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public blacklist onPrepared(I)V
    .locals 2
    .param p1, "streamId"    # I

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected stream "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is prepared"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraOfflineSessionImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return-void
.end method

.method public blacklist onRepeatingRequestError(JI)V
    .locals 2
    .param p1, "lastFrameNumber"    # J
    .param p3, "repeatingRequestId"    # I

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected repeating request error received. Last frame number is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraOfflineSessionImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method

.method public blacklist onRequestQueueEmpty()V
    .locals 2

    .line 452
    const-string v0, "CameraOfflineSessionImpl"

    const-string v1, "onRequestQueueEmpty"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return-void
.end method

.method public blacklist onResultReceived(Landroid/hardware/camera2/CameraMetadataInfo;Landroid/hardware/camera2/impl/CaptureResultExtras;[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V
    .locals 25
    .param p1, "resultInfo"    # Landroid/hardware/camera2/CameraMetadataInfo;
    .param p2, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;
    .param p3, "physicalResults"    # [Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 298
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CameraMetadataInfo;->getMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v7

    .line 299
    .local v7, "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getRequestId()I

    move-result v12

    .line 300
    .local v12, "requestId":I
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getFrameNumber()J

    move-result-wide v14

    .line 302
    .local v14, "frameNumber":J
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    iget-object v8, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v8

    .line 304
    :try_start_0
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_SHADING_MAP_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    iget-object v2, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->-$$Nest$fgetmCharacteristics(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_SHADING_MAP_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 305
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    .line 304
    invoke-virtual {v7, v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 307
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->-$$Nest$fgetmCaptureCallbackMap(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Landroid/util/SparseArray;

    move-result-object v0

    .line 308
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    .line 309
    .local v2, "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getSubsequenceId()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    .line 311
    .local v3, "request":Landroid/hardware/camera2/CaptureRequest;
    nop

    .line 312
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getPartialResultCount()I

    move-result v0

    iget-object v4, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->-$$Nest$fgetmTotalPartialCount(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)I

    move-result v4

    if-ge v0, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move/from16 v17, v0

    .line 313
    .local v17, "isPartialResult":Z
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest;->getRequestType()I

    move-result v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 316
    .local v18, "requestType":I
    if-nez v2, :cond_1

    .line 317
    :try_start_1
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->-$$Nest$fgetmFrameNumberTracker(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Landroid/hardware/camera2/impl/FrameNumberTracker;

    move-result-object v13

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v18}, Landroid/hardware/camera2/impl/FrameNumberTracker;->updateTracker(JLandroid/hardware/camera2/CaptureResult;ZI)V

    .line 320
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 441
    .end local v2    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .end local v3    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v17    # "isPartialResult":Z
    .end local v18    # "requestType":I
    :catchall_0
    move-exception v0

    move-object v10, v1

    move-object/from16 v23, v7

    move-object/from16 v16, v8

    move/from16 v19, v12

    goto/16 :goto_5

    .line 323
    .restart local v2    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .restart local v3    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v17    # "isPartialResult":Z
    .restart local v18    # "requestType":I
    :cond_1
    :try_start_2
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->-$$Nest$misClosed(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    if-eqz v0, :cond_2

    .line 324
    :try_start_3
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->-$$Nest$fgetmFrameNumberTracker(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Landroid/hardware/camera2/impl/FrameNumberTracker;

    move-result-object v13

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v18}, Landroid/hardware/camera2/impl/FrameNumberTracker;->updateTracker(JLandroid/hardware/camera2/CaptureResult;ZI)V

    .line 326
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    .line 330
    :cond_2
    const/4 v13, 0x0

    .line 336
    .local v13, "resultDispatch":Ljava/lang/Runnable;
    :try_start_4
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->hasBatchedOutputs()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    if-eqz v0, :cond_3

    .line 337
    :try_start_5
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0, v7}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v4, v0

    .local v0, "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    goto :goto_1

    .line 339
    .end local v0    # "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :cond_3
    const/4 v0, 0x0

    move-object v4, v0

    .line 342
    .local v4, "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :goto_1
    :try_start_6
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getCallback()Landroid/hardware/camera2/impl/CaptureCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CaptureCallback;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    move-object v9, v0

    .line 344
    .local v9, "executor":Ljava/util/concurrent/Executor;
    if-eqz v17, :cond_4

    .line 345
    :try_start_7
    new-instance v6, Landroid/hardware/camera2/CaptureResult;

    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, p2

    invoke-direct {v6, v0, v7, v3, v5}, Landroid/hardware/camera2/CaptureResult;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;)V

    .line 348
    .local v6, "resultAsCapture":Landroid/hardware/camera2/CaptureResult;
    new-instance v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$4;

    move-object/from16 v24, v5

    move-object v5, v3

    move-object v3, v4

    move-object/from16 v4, v24

    .end local v4    # "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .local v3, "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .local v5, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-direct/range {v0 .. v6}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$4;-><init>(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CaptureCallbackHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CaptureResultExtras;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v10, v1

    move-object v11, v2

    move-object/from16 v16, v3

    move-object v3, v5

    .line 375
    .end local v2    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .end local v5    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v13    # "resultDispatch":Ljava/lang/Runnable;
    .local v0, "resultDispatch":Ljava/lang/Runnable;
    .local v3, "request":Landroid/hardware/camera2/CaptureRequest;
    .local v11, "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .local v16, "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    nop

    .line 376
    .local v6, "finalResult":Landroid/hardware/camera2/CaptureResult;
    move-object/from16 v19, v6

    move-object v6, v3

    move-object/from16 v3, v19

    move-object/from16 v23, v7

    move/from16 v19, v12

    move-object/from16 v7, v16

    move-object/from16 v16, v8

    move-object v12, v9

    move-object v8, v0

    goto/16 :goto_2

    .line 377
    .end local v0    # "resultDispatch":Ljava/lang/Runnable;
    .end local v6    # "finalResult":Landroid/hardware/camera2/CaptureResult;
    .end local v11    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .end local v16    # "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .restart local v2    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .restart local v4    # "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .restart local v13    # "resultDispatch":Ljava/lang/Runnable;
    :cond_4
    move-object v10, v1

    move-object v11, v2

    move-object/from16 v16, v4

    .end local v2    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .end local v4    # "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .restart local v11    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .restart local v16    # "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :try_start_8
    iget-object v0, v10, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->-$$Nest$fgetmFrameNumberTracker(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Landroid/hardware/camera2/impl/FrameNumberTracker;

    move-result-object v0

    .line 378
    invoke-virtual {v0, v14, v15}, Landroid/hardware/camera2/impl/FrameNumberTracker;->popPartialResults(J)Ljava/util/List;

    move-result-object v5

    .line 380
    .local v5, "partialResults":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    .line 381
    invoke-virtual {v7, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide/from16 v19, v0

    .line 382
    .local v19, "sensorTimestamp":J
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 383
    invoke-virtual {v3, v0}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    move-object/from16 v21, v0

    .line 384
    .local v21, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getSubsequenceId()I

    move-result v6

    move/from16 v22, v6

    .line 385
    .local v22, "subsequenceId":I
    new-instance v0, Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v1, v10, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Ljava/lang/String;

    move-result-object v1

    .line 386
    invoke-virtual {v11}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getSessionId()I

    move-result v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    move-object/from16 v4, p2

    move-object v2, v7

    move-object/from16 v7, p3

    .end local v7    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .local v2, "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :try_start_9
    invoke-direct/range {v0 .. v7}, Landroid/hardware/camera2/TotalCaptureResult;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;Ljava/util/List;I[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    move-object/from16 v23, v2

    .line 389
    .end local v2    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .local v0, "resultAsCapture":Landroid/hardware/camera2/TotalCaptureResult;
    .local v23, "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    move-object v2, v11

    move-object v11, v0

    .end local v0    # "resultAsCapture":Landroid/hardware/camera2/TotalCaptureResult;
    .local v2, "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .local v11, "resultAsCapture":Landroid/hardware/camera2/TotalCaptureResult;
    :try_start_a
    new-instance v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$5;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-object v1, v9

    move-object v9, v5

    move-wide/from16 v4, v19

    move/from16 v19, v12

    move-object v12, v1

    move-object v1, v10

    move-object/from16 v7, v21

    move/from16 v6, v22

    move-object v10, v3

    move-object/from16 v3, v16

    move-object/from16 v16, v8

    move-object/from16 v8, p2

    .end local v5    # "partialResults":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    .end local v16    # "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v21    # "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v22    # "subsequenceId":I
    .local v3, "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .local v4, "sensorTimestamp":J
    .local v6, "subsequenceId":I
    .local v7, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v9, "partialResults":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    .local v10, "request":Landroid/hardware/camera2/CaptureRequest;
    .local v12, "executor":Ljava/util/concurrent/Executor;
    .local v19, "requestId":I
    :try_start_b
    invoke-direct/range {v0 .. v11}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$5;-><init>(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CaptureCallbackHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;JILandroid/util/Range;Landroid/hardware/camera2/impl/CaptureResultExtras;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-object v8, v0

    move-object/from16 v24, v10

    move-object v10, v1

    move-wide v0, v4

    move-object v5, v9

    move-object v4, v11

    move-object v11, v2

    move-object v2, v7

    move-object v7, v3

    move v3, v6

    move-object/from16 v6, v24

    .line 421
    .end local v9    # "partialResults":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    .end local v10    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v13    # "resultDispatch":Ljava/lang/Runnable;
    .local v0, "sensorTimestamp":J
    .local v2, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v3, "subsequenceId":I
    .local v4, "resultAsCapture":Landroid/hardware/camera2/TotalCaptureResult;
    .restart local v5    # "partialResults":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    .local v6, "request":Landroid/hardware/camera2/CaptureRequest;
    .local v7, "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .local v8, "resultDispatch":Ljava/lang/Runnable;
    .local v11, "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    move-object v9, v4

    move-object v3, v9

    .line 424
    .end local v0    # "sensorTimestamp":J
    .end local v2    # "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v4    # "resultAsCapture":Landroid/hardware/camera2/TotalCaptureResult;
    .end local v5    # "partialResults":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    .local v3, "finalResult":Landroid/hardware/camera2/CaptureResult;
    :goto_2
    if-eqz v12, :cond_5

    .line 425
    :try_start_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    move-wide v1, v0

    .line 427
    .local v1, "ident":J
    :try_start_d
    invoke-interface {v12, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 429
    :try_start_e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 430
    goto :goto_3

    .line 429
    :catchall_1
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 430
    nop

    .end local v14    # "frameNumber":J
    .end local v19    # "requestId":I
    .end local v23    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;
    .end local p1    # "resultInfo":Landroid/hardware/camera2/CameraMetadataInfo;
    .end local p2    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    .end local p3    # "physicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    throw v0

    .line 434
    .end local v1    # "ident":J
    .restart local v14    # "frameNumber":J
    .restart local v19    # "requestId":I
    .restart local v23    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;
    .restart local p1    # "resultInfo":Landroid/hardware/camera2/CameraMetadataInfo;
    .restart local p2    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    .restart local p3    # "physicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    :cond_5
    :goto_3
    iget-object v0, v10, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->-$$Nest$fgetmFrameNumberTracker(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Landroid/hardware/camera2/impl/FrameNumberTracker;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    move-wide v1, v14

    move/from16 v4, v17

    move/from16 v5, v18

    .end local v14    # "frameNumber":J
    .end local v17    # "isPartialResult":Z
    .end local v18    # "requestType":I
    .local v1, "frameNumber":J
    .local v4, "isPartialResult":Z
    .local v5, "requestType":I
    :try_start_f
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/camera2/impl/FrameNumberTracker;->updateTracker(JLandroid/hardware/camera2/CaptureResult;ZI)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 438
    .end local v1    # "frameNumber":J
    .end local v4    # "isPartialResult":Z
    .end local v5    # "requestType":I
    .restart local v14    # "frameNumber":J
    .restart local v17    # "isPartialResult":Z
    .restart local v18    # "requestType":I
    if-nez v17, :cond_6

    .line 439
    :try_start_10
    iget-object v0, v10, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->-$$Nest$mcheckAndFireSequenceComplete(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)V

    .line 441
    .end local v3    # "finalResult":Landroid/hardware/camera2/CaptureResult;
    .end local v6    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v7    # "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v8    # "resultDispatch":Ljava/lang/Runnable;
    .end local v11    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .end local v12    # "executor":Ljava/util/concurrent/Executor;
    .end local v17    # "isPartialResult":Z
    .end local v18    # "requestType":I
    :cond_6
    monitor-exit v16

    .line 442
    return-void

    .line 441
    .end local v14    # "frameNumber":J
    .restart local v1    # "frameNumber":J
    :catchall_2
    move-exception v0

    move-wide v14, v1

    .end local v1    # "frameNumber":J
    .restart local v14    # "frameNumber":J
    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v10, v1

    goto :goto_5

    .end local v19    # "requestId":I
    .local v12, "requestId":I
    :catchall_4
    move-exception v0

    move-object/from16 v16, v8

    move/from16 v19, v12

    .end local v12    # "requestId":I
    .restart local v19    # "requestId":I
    goto :goto_5

    .end local v19    # "requestId":I
    .end local v23    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .local v2, "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .restart local v12    # "requestId":I
    :catchall_5
    move-exception v0

    move-object/from16 v23, v2

    move-object/from16 v16, v8

    move/from16 v19, v12

    .end local v2    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v12    # "requestId":I
    .restart local v19    # "requestId":I
    .restart local v23    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    goto :goto_5

    .end local v19    # "requestId":I
    .end local v23    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .local v7, "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .restart local v12    # "requestId":I
    :catchall_6
    move-exception v0

    goto :goto_4

    :catchall_7
    move-exception v0

    move-object v10, v1

    :goto_4
    move-object/from16 v23, v7

    move-object/from16 v16, v8

    move/from16 v19, v12

    .end local v7    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v12    # "requestId":I
    .restart local v19    # "requestId":I
    .restart local v23    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :goto_5
    monitor-exit v16
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    throw v0

    :catchall_8
    move-exception v0

    goto :goto_5
.end method
