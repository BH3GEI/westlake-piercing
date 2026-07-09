.class final Landroid/view/ViewRootImpl$SyntheticTrackballHandler;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SyntheticTrackballHandler"
.end annotation


# instance fields
.field private greylist-max-o mLastTime:J

.field private final greylist-max-o mX:Landroid/view/ViewRootImpl$TrackballAxis;

.field private final greylist-max-o mY:Landroid/view/ViewRootImpl$TrackballAxis;

.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .locals 1
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 8467
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8468
    new-instance v0, Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$TrackballAxis;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    .line 8469
    new-instance v0, Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$TrackballAxis;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    return-void
.end method


# virtual methods
.method public greylist-max-o cancel()V
    .locals 2

    .line 8575
    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    .line 8580
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v0, :cond_0

    .line 8581
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 8583
    :cond_0
    return-void
.end method

.method public greylist-max-o process(Landroid/view/MotionEvent;)V
    .locals 32
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 8474
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 8475
    .local v2, "curTime":J
    iget-wide v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    const-wide/16 v6, 0xfa

    add-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-gez v1, :cond_0

    .line 8478
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 8479
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1, v4}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 8480
    iput-wide v2, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    .line 8483
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    .line 8484
    .local v14, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    .line 8485
    .local v9, "metaState":I
    const/4 v15, 0x2

    packed-switch v14, :pswitch_data_0

    goto :goto_0

    .line 8495
    :pswitch_0
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1, v15}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 8496
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1, v15}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 8497
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object v4, v1

    new-instance v1, Landroid/view/KeyEvent;

    const/16 v12, 0x400

    const/16 v13, 0x101

    const/4 v6, 0x1

    const/16 v7, 0x17

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object/from16 v16, v4

    move-wide v4, v2

    move-object/from16 v15, v16

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v15, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    goto :goto_0

    .line 8487
    :pswitch_1
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 8488
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1, v4}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 8489
    iget-object v15, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v1, Landroid/view/KeyEvent;

    const/16 v12, 0x400

    const/16 v13, 0x101

    const/4 v6, 0x0

    const/16 v7, 0x17

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-wide v4, v2

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v15, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 8493
    nop

    .line 8510
    :goto_0
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    const-string v7, "X"

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/view/ViewRootImpl$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v28

    .line 8511
    .local v28, "xOff":F
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    const-string v7, "Y"

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/view/ViewRootImpl$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v29

    .line 8519
    .local v29, "yOff":F
    const/4 v1, 0x0

    .line 8520
    .local v1, "keycode":I
    const/4 v4, 0x0

    .line 8521
    .local v4, "movement":I
    const/high16 v5, 0x3f800000    # 1.0f

    .line 8522
    .local v5, "accel":F
    cmpl-float v6, v28, v29

    if-lez v6, :cond_3

    .line 8523
    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v6}, Landroid/view/ViewRootImpl$TrackballAxis;->generate()I

    move-result v4

    .line 8524
    if-eqz v4, :cond_2

    .line 8525
    if-lez v4, :cond_1

    const/16 v6, 0x16

    goto :goto_1

    .line 8526
    :cond_1
    const/16 v6, 0x15

    :goto_1
    move v1, v6

    .line 8527
    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v5, v6, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 8528
    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    move/from16 v21, v1

    move/from16 v30, v5

    goto :goto_3

    .line 8524
    :cond_2
    move/from16 v21, v1

    move/from16 v30, v5

    goto :goto_3

    .line 8530
    :cond_3
    const/4 v6, 0x0

    cmpl-float v6, v29, v6

    if-lez v6, :cond_6

    .line 8531
    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v6}, Landroid/view/ViewRootImpl$TrackballAxis;->generate()I

    move-result v4

    .line 8532
    if-eqz v4, :cond_5

    .line 8533
    if-lez v4, :cond_4

    const/16 v6, 0x14

    goto :goto_2

    .line 8534
    :cond_4
    const/16 v6, 0x13

    :goto_2
    move v1, v6

    .line 8535
    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v5, v6, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 8536
    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    move/from16 v21, v1

    move/from16 v30, v5

    goto :goto_3

    .line 8532
    :cond_5
    move/from16 v21, v1

    move/from16 v30, v5

    goto :goto_3

    .line 8530
    :cond_6
    move/from16 v21, v1

    move/from16 v30, v5

    .line 8540
    .end local v1    # "keycode":I
    .end local v5    # "accel":F
    .local v21, "keycode":I
    .local v30, "accel":F
    :goto_3
    if-eqz v21, :cond_a

    .line 8541
    if-gez v4, :cond_7

    neg-int v4, v4

    .line 8542
    :cond_7
    int-to-float v1, v4

    mul-float v1, v1, v30

    float-to-int v15, v1

    .line 8546
    .local v15, "accelMovement":I
    if-le v15, v4, :cond_8

    .line 8549
    add-int/lit8 v16, v4, -0x1

    .line 8550
    .end local v4    # "movement":I
    .local v16, "movement":I
    sub-int v8, v15, v16

    .line 8551
    .local v8, "repeatCount":I
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object v4, v1

    new-instance v1, Landroid/view/KeyEvent;

    const/16 v12, 0x400

    const/16 v13, 0x101

    const/4 v6, 0x2

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object v7, v4

    move-wide v4, v2

    move/from16 v31, v14

    move-object v14, v7

    move/from16 v7, v21

    .end local v14    # "action":I
    .end local v21    # "keycode":I
    .local v7, "keycode":I
    .local v31, "action":I
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .end local v7    # "keycode":I
    .restart local v21    # "keycode":I
    invoke-virtual {v14, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    move/from16 v4, v16

    goto :goto_4

    .line 8546
    .end local v8    # "repeatCount":I
    .end local v16    # "movement":I
    .end local v31    # "action":I
    .restart local v4    # "movement":I
    .restart local v14    # "action":I
    :cond_8
    move/from16 v31, v14

    .line 8556
    .end local v14    # "action":I
    .restart local v31    # "action":I
    :goto_4
    if-lez v4, :cond_9

    .line 8559
    add-int/lit8 v4, v4, -0x1

    .line 8560
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 8561
    .end local v2    # "curTime":J
    .local v16, "curTime":J
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    move v2, v15

    .end local v15    # "accelMovement":I
    .local v2, "accelMovement":I
    new-instance v15, Landroid/view/KeyEvent;

    const/16 v26, 0x400

    const/16 v27, 0x101

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v24, -0x1

    const/16 v25, 0x0

    move-wide/from16 v18, v16

    move v5, v2

    move/from16 v23, v9

    .end local v2    # "accelMovement":I
    .end local v9    # "metaState":I
    .local v5, "accelMovement":I
    .local v23, "metaState":I
    invoke-direct/range {v15 .. v27}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .end local v23    # "metaState":I
    .restart local v9    # "metaState":I
    invoke-virtual {v1, v15}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 8565
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v15, Landroid/view/KeyEvent;

    const/16 v20, 0x1

    .end local v9    # "metaState":I
    .restart local v23    # "metaState":I
    invoke-direct/range {v15 .. v27}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .end local v23    # "metaState":I
    .restart local v9    # "metaState":I
    invoke-virtual {v1, v15}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    move v15, v5

    move-wide/from16 v2, v16

    goto :goto_4

    .line 8570
    .end local v5    # "accelMovement":I
    .end local v16    # "curTime":J
    .local v2, "curTime":J
    .restart local v15    # "accelMovement":I
    :cond_9
    move v5, v15

    .end local v15    # "accelMovement":I
    .restart local v5    # "accelMovement":I
    iput-wide v2, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    goto :goto_5

    .line 8540
    .end local v5    # "accelMovement":I
    .end local v31    # "action":I
    .restart local v14    # "action":I
    :cond_a
    move/from16 v31, v14

    .line 8572
    .end local v14    # "action":I
    .restart local v31    # "action":I
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
