.class public Landroid/view/WindowlessWindowManager;
.super Ljava/lang/Object;
.source "WindowlessWindowManager.java"

# interfaces
.implements Landroid/view/IWindowSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowlessWindowManager$State;,
        Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "WindowlessWindowManager"


# instance fields
.field private final blacklist mConfiguration:Landroid/content/res/Configuration;

.field final blacklist mHostInputTransferToken:Landroid/window/InputTransferToken;

.field private final blacklist mInputTransferToken:Landroid/window/InputTransferToken;

.field private blacklist mInsetsState:Landroid/view/InsetsState;

.field private final blacklist mLayout:Landroid/view/WindowlessWindowLayout;

.field private blacklist mParentInterface:Landroid/view/ISurfaceControlViewHostParent;

.field private final blacklist mRealWm:Landroid/view/IWindowSession;

.field final blacklist mResizeCompletionForWindow:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist mRootSurface:Landroid/view/SurfaceControl;

.field final blacklist mStateForWindow:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Landroid/view/WindowlessWindowManager$State;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTmpConfig:Landroid/util/MergedConfiguration;

.field private final blacklist mTmpFrames:Landroid/window/ClientWindowFrames;


# direct methods
.method public constructor blacklist <init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/window/InputTransferToken;)V
    .locals 1
    .param p1, "c"    # Landroid/content/res/Configuration;
    .param p2, "rootSurface"    # Landroid/view/SurfaceControl;
    .param p3, "hostInputTransferToken"    # Landroid/window/InputTransferToken;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mResizeCompletionForWindow:Ljava/util/HashMap;

    .line 93
    new-instance v0, Landroid/window/InputTransferToken;

    invoke-direct {v0}, Landroid/window/InputTransferToken;-><init>()V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mInputTransferToken:Landroid/window/InputTransferToken;

    .line 95
    new-instance v0, Landroid/window/ClientWindowFrames;

    invoke-direct {v0}, Landroid/window/ClientWindowFrames;-><init>()V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mTmpFrames:Landroid/window/ClientWindowFrames;

    .line 96
    new-instance v0, Landroid/util/MergedConfiguration;

    invoke-direct {v0}, Landroid/util/MergedConfiguration;-><init>()V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mTmpConfig:Landroid/util/MergedConfiguration;

    .line 97
    new-instance v0, Landroid/view/WindowlessWindowLayout;

    invoke-direct {v0}, Landroid/view/WindowlessWindowLayout;-><init>()V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mLayout:Landroid/view/WindowlessWindowLayout;

    .line 103
    iput-object p2, p0, Landroid/view/WindowlessWindowManager;->mRootSurface:Landroid/view/SurfaceControl;

    .line 104
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    .line 105
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    .line 106
    iput-object p3, p0, Landroid/view/WindowlessWindowManager;->mHostInputTransferToken:Landroid/window/InputTransferToken;

    .line 107
    return-void
.end method

.method private blacklist clearLastReportedParams()V
    .locals 4

    .line 700
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 701
    .local v0, "emptyParam":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowlessWindowManager$State;

    .line 702
    .local v2, "windowInfo":Landroid/view/WindowlessWindowManager$State;
    iget-object v3, v2, Landroid/view/WindowlessWindowManager$State;->mLastReportedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 703
    .end local v2    # "windowInfo":Landroid/view/WindowlessWindowManager$State;
    goto :goto_0

    .line 704
    :cond_0
    return-void
.end method

.method private blacklist isInTouchModeInternal(I)Z
    .locals 3
    .param p1, "displayId"    # I

    .line 312
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->isInTouchMode(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowlessWindowManager"

    const-string v2, "Unable to check if the window is in touch mode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isOpaque(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 1
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 302
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_1

    goto :goto_0

    .line 307
    :cond_1
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 305
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist relayoutInner(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)I
    .locals 28
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "inAttrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "requestedWidth"    # I
    .param p4, "requestedHeight"    # I
    .param p5, "viewFlags"    # I
    .param p6, "flags"    # I
    .param p7, "seq"    # I
    .param p8, "lastSyncSeqId"    # I
    .param p9, "outFrames"    # Landroid/window/ClientWindowFrames;
    .param p10, "outMergedConfiguration"    # Landroid/util/MergedConfiguration;
    .param p11, "outSurfaceControl"    # Landroid/view/SurfaceControl;
    .param p12, "outInsetsState"    # Landroid/view/InsetsState;
    .param p13, "outActiveControls"    # Landroid/view/InsetsSourceControl$Array;

    .line 383
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    move-object/from16 v6, p12

    monitor-enter p0

    .line 384
    :try_start_0
    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowlessWindowManager$State;

    move-object v7, v0

    .line 385
    .local v7, "state":Landroid/view/WindowlessWindowManager$State;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    if-eqz v7, :cond_8

    .line 390
    iget-object v11, v7, Landroid/view/WindowlessWindowManager$State;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 391
    .local v11, "sc":Landroid/view/SurfaceControl;
    iget-object v8, v7, Landroid/view/WindowlessWindowManager$State;->mLeash:Landroid/view/SurfaceControl;

    .line 392
    .local v8, "leash":Landroid/view/SurfaceControl;
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    move-object v9, v0

    .line 394
    .local v9, "t":Landroid/view/SurfaceControl$Transaction;
    const/4 v0, 0x0

    .line 395
    .local v0, "attrChanges":I
    if-eqz v2, :cond_0

    .line 396
    iget-object v10, v7, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v10, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    move/from16 v16, v0

    goto :goto_0

    .line 395
    :cond_0
    move/from16 v16, v0

    .line 398
    .end local v0    # "attrChanges":I
    .local v16, "attrChanges":I
    :goto_0
    iget-object v10, v7, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 400
    .local v10, "attrs":Landroid/view/WindowManager$LayoutParams;
    new-instance v27, Landroid/window/ClientWindowFrames;

    invoke-direct/range {v27 .. v27}, Landroid/window/ClientWindowFrames;-><init>()V

    move-object/from16 v12, v27

    .line 401
    .local v12, "frames":Landroid/window/ClientWindowFrames;
    iget-object v0, v7, Landroid/view/WindowlessWindowManager$State;->mAttachedFrame:Landroid/graphics/Rect;

    iput-object v0, v12, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    .line 403
    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mLayout:Landroid/view/WindowlessWindowLayout;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v23, p3

    move/from16 v24, p4

    move-object/from16 v17, v0

    move-object/from16 v18, v10

    .end local v10    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v12    # "frames":Landroid/window/ClientWindowFrames;
    .local v18, "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v27, "frames":Landroid/window/ClientWindowFrames;
    invoke-virtual/range {v17 .. v27}, Landroid/view/WindowlessWindowLayout;->computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIFLandroid/window/ClientWindowFrames;)V

    .line 407
    .end local v18    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v27    # "frames":Landroid/window/ClientWindowFrames;
    .restart local v10    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v12    # "frames":Landroid/window/ClientWindowFrames;
    iget-object v0, v7, Landroid/view/WindowlessWindowManager$State;->mFrame:Landroid/graphics/Rect;

    iget-object v13, v12, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v0, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 408
    if-eqz v3, :cond_1

    .line 409
    iget-object v0, v3, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget-object v13, v12, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v0, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 410
    iget-object v0, v3, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    iget-object v13, v12, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 411
    iget-object v0, v3, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    iget-object v13, v12, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 414
    :cond_1
    iget-object v0, v12, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v13, v12, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    invoke-virtual {v9, v8, v0, v13}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 416
    if-nez p5, :cond_2

    .line 420
    invoke-direct {v1, v10}, Landroid/view/WindowlessWindowManager;->isOpaque(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    invoke-virtual {v9, v11, v0}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 421
    if-eqz v5, :cond_3

    .line 422
    const-string v0, "WindowlessWindowManager.relayout"

    invoke-virtual {v5, v11, v0}, Landroid/view/SurfaceControl;->copyFrom(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    goto :goto_1

    .line 425
    :cond_2
    invoke-virtual {v9, v8}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 426
    if-eqz v5, :cond_3

    .line 427
    invoke-virtual {v5}, Landroid/view/SurfaceControl;->release()V

    .line 431
    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    .line 432
    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v13, v1, Landroid/view/WindowlessWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4, v0, v13}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 435
    :cond_4
    const v17, 0x10004

    .line 437
    .local v17, "inputChangeMask":I
    const v0, 0x10004

    and-int v0, v16, v0

    if-eqz v0, :cond_6

    iget-object v0, v7, Landroid/view/WindowlessWindowManager$State;->mInputChannelToken:Landroid/os/IBinder;

    if-eqz v0, :cond_6

    .line 439
    :try_start_1
    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    instance-of v0, v0, Landroid/view/IWindowSession$Stub;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_8

    if-eqz v0, :cond_5

    .line 440
    :try_start_2
    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    iget-object v13, v7, Landroid/view/WindowlessWindowManager$State;->mInputChannelToken:Landroid/os/IBinder;

    iget v14, v7, Landroid/view/WindowlessWindowManager$State;->mDisplayId:I

    new-instance v15, Landroid/view/SurfaceControl;

    move-object/from16 v18, v0

    const-string v0, "WindowlessWindowManager.relayout"

    invoke-direct {v15, v11, v0}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v22, v0

    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v23, v0

    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    move/from16 v24, v0

    iget-object v0, v7, Landroid/view/WindowlessWindowManager$State;->mInputRegion:Landroid/graphics/Region;

    move-object/from16 v25, v0

    move-object/from16 v19, v13

    move/from16 v20, v14

    move-object/from16 v21, v15

    invoke-interface/range {v18 .. v25}, Landroid/view/IWindowSession;->updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v19, v8

    move-object/from16 v18, v9

    move-object/from16 v20, v10

    move-object/from16 v27, v12

    goto :goto_2

    .line 449
    :catch_0
    move-exception v0

    move-object/from16 v19, v8

    move-object/from16 v18, v9

    move-object/from16 v20, v10

    move-object/from16 v27, v12

    goto/16 :goto_3

    .line 445
    :cond_5
    move-object v13, v8

    .end local v8    # "leash":Landroid/view/SurfaceControl;
    .local v13, "leash":Landroid/view/SurfaceControl;
    :try_start_3
    iget-object v8, v1, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_7

    move-object v14, v9

    .end local v9    # "t":Landroid/view/SurfaceControl$Transaction;
    .local v14, "t":Landroid/view/SurfaceControl$Transaction;
    :try_start_4
    iget-object v9, v7, Landroid/view/WindowlessWindowManager$State;->mInputChannelToken:Landroid/os/IBinder;

    iget v0, v7, Landroid/view/WindowlessWindowManager$State;->mDisplayId:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_6

    move-object/from16 v27, v12

    .end local v12    # "frames":Landroid/window/ClientWindowFrames;
    .restart local v27    # "frames":Landroid/window/ClientWindowFrames;
    :try_start_5
    iget v12, v10, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    move-object v15, v13

    .end local v13    # "leash":Landroid/view/SurfaceControl;
    .local v15, "leash":Landroid/view/SurfaceControl;
    :try_start_6
    iget v13, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    move-object/from16 v18, v14

    .end local v14    # "t":Landroid/view/SurfaceControl$Transaction;
    .local v18, "t":Landroid/view/SurfaceControl$Transaction;
    :try_start_7
    iget v14, v10, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    move-object/from16 v19, v15

    .end local v15    # "leash":Landroid/view/SurfaceControl;
    .local v19, "leash":Landroid/view/SurfaceControl;
    :try_start_8
    iget-object v15, v7, Landroid/view/WindowlessWindowManager$State;->mInputRegion:Landroid/graphics/Region;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2

    move-object/from16 v20, v10

    move v10, v0

    .end local v10    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v20, "attrs":Landroid/view/WindowManager$LayoutParams;
    :try_start_9
    invoke-interface/range {v8 .. v15}, Landroid/view/IWindowSession;->updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1

    .line 451
    :goto_2
    goto :goto_4

    .line 449
    :catch_1
    move-exception v0

    goto :goto_3

    .end local v20    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v10    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :catch_2
    move-exception v0

    move-object/from16 v20, v10

    .end local v10    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v20    # "attrs":Landroid/view/WindowManager$LayoutParams;
    goto :goto_3

    .end local v19    # "leash":Landroid/view/SurfaceControl;
    .end local v20    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v10    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v15    # "leash":Landroid/view/SurfaceControl;
    :catch_3
    move-exception v0

    move-object/from16 v20, v10

    move-object/from16 v19, v15

    .end local v10    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v15    # "leash":Landroid/view/SurfaceControl;
    .restart local v19    # "leash":Landroid/view/SurfaceControl;
    .restart local v20    # "attrs":Landroid/view/WindowManager$LayoutParams;
    goto :goto_3

    .end local v18    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v19    # "leash":Landroid/view/SurfaceControl;
    .end local v20    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v10    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v14    # "t":Landroid/view/SurfaceControl$Transaction;
    .restart local v15    # "leash":Landroid/view/SurfaceControl;
    :catch_4
    move-exception v0

    move-object/from16 v20, v10

    move-object/from16 v18, v14

    move-object/from16 v19, v15

    .end local v10    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v14    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v15    # "leash":Landroid/view/SurfaceControl;
    .restart local v18    # "t":Landroid/view/SurfaceControl$Transaction;
    .restart local v19    # "leash":Landroid/view/SurfaceControl;
    .restart local v20    # "attrs":Landroid/view/WindowManager$LayoutParams;
    goto :goto_3

    .end local v18    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v19    # "leash":Landroid/view/SurfaceControl;
    .end local v20    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v10    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v13    # "leash":Landroid/view/SurfaceControl;
    .restart local v14    # "t":Landroid/view/SurfaceControl$Transaction;
    :catch_5
    move-exception v0

    move-object/from16 v20, v10

    move-object/from16 v19, v13

    move-object/from16 v18, v14

    .end local v10    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v13    # "leash":Landroid/view/SurfaceControl;
    .end local v14    # "t":Landroid/view/SurfaceControl$Transaction;
    .restart local v18    # "t":Landroid/view/SurfaceControl$Transaction;
    .restart local v19    # "leash":Landroid/view/SurfaceControl;
    .restart local v20    # "attrs":Landroid/view/WindowManager$LayoutParams;
    goto :goto_3

    .end local v18    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v19    # "leash":Landroid/view/SurfaceControl;
    .end local v20    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v27    # "frames":Landroid/window/ClientWindowFrames;
    .restart local v10    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v12    # "frames":Landroid/window/ClientWindowFrames;
    .restart local v13    # "leash":Landroid/view/SurfaceControl;
    .restart local v14    # "t":Landroid/view/SurfaceControl$Transaction;
    :catch_6
    move-exception v0

    move-object/from16 v20, v10

    move-object/from16 v27, v12

    move-object/from16 v19, v13

    move-object/from16 v18, v14

    .end local v10    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v12    # "frames":Landroid/window/ClientWindowFrames;
    .end local v13    # "leash":Landroid/view/SurfaceControl;
    .end local v14    # "t":Landroid/view/SurfaceControl$Transaction;
    .restart local v18    # "t":Landroid/view/SurfaceControl$Transaction;
    .restart local v19    # "leash":Landroid/view/SurfaceControl;
    .restart local v20    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v27    # "frames":Landroid/window/ClientWindowFrames;
    goto :goto_3

    .end local v18    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v19    # "leash":Landroid/view/SurfaceControl;
    .end local v20    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v27    # "frames":Landroid/window/ClientWindowFrames;
    .restart local v9    # "t":Landroid/view/SurfaceControl$Transaction;
    .restart local v10    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v12    # "frames":Landroid/window/ClientWindowFrames;
    .restart local v13    # "leash":Landroid/view/SurfaceControl;
    :catch_7
    move-exception v0

    move-object/from16 v18, v9

    move-object/from16 v20, v10

    move-object/from16 v27, v12

    move-object/from16 v19, v13

    .end local v9    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v10    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v12    # "frames":Landroid/window/ClientWindowFrames;
    .end local v13    # "leash":Landroid/view/SurfaceControl;
    .restart local v18    # "t":Landroid/view/SurfaceControl$Transaction;
    .restart local v19    # "leash":Landroid/view/SurfaceControl;
    .restart local v20    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v27    # "frames":Landroid/window/ClientWindowFrames;
    goto :goto_3

    .end local v18    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v19    # "leash":Landroid/view/SurfaceControl;
    .end local v20    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v27    # "frames":Landroid/window/ClientWindowFrames;
    .restart local v8    # "leash":Landroid/view/SurfaceControl;
    .restart local v9    # "t":Landroid/view/SurfaceControl$Transaction;
    .restart local v10    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v12    # "frames":Landroid/window/ClientWindowFrames;
    :catch_8
    move-exception v0

    move-object/from16 v19, v8

    move-object/from16 v18, v9

    move-object/from16 v20, v10

    move-object/from16 v27, v12

    .line 450
    .end local v8    # "leash":Landroid/view/SurfaceControl;
    .end local v9    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v10    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v12    # "frames":Landroid/window/ClientWindowFrames;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v18    # "t":Landroid/view/SurfaceControl$Transaction;
    .restart local v19    # "leash":Landroid/view/SurfaceControl;
    .restart local v20    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v27    # "frames":Landroid/window/ClientWindowFrames;
    :goto_3
    const-string v8, "WindowlessWindowManager"

    const-string v9, "Failed to update surface input channel: "

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 437
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v18    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v19    # "leash":Landroid/view/SurfaceControl;
    .end local v20    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v27    # "frames":Landroid/window/ClientWindowFrames;
    .restart local v8    # "leash":Landroid/view/SurfaceControl;
    .restart local v9    # "t":Landroid/view/SurfaceControl$Transaction;
    .restart local v10    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v12    # "frames":Landroid/window/ClientWindowFrames;
    :cond_6
    move-object/from16 v19, v8

    move-object/from16 v18, v9

    move-object/from16 v20, v10

    move-object/from16 v27, v12

    .line 454
    .end local v8    # "leash":Landroid/view/SurfaceControl;
    .end local v9    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v10    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v12    # "frames":Landroid/window/ClientWindowFrames;
    .restart local v18    # "t":Landroid/view/SurfaceControl$Transaction;
    .restart local v19    # "leash":Landroid/view/SurfaceControl;
    .restart local v20    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v27    # "frames":Landroid/window/ClientWindowFrames;
    :goto_4
    if-eqz v6, :cond_7

    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mInsetsState:Landroid/view/InsetsState;

    if-eqz v0, :cond_7

    .line 455
    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v6, v0}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;)V

    .line 458
    :cond_7
    invoke-direct {v1}, Landroid/view/WindowlessWindowManager;->sendLayoutParamsToParent()V

    .line 459
    const/4 v0, 0x0

    return v0

    .line 387
    .end local v11    # "sc":Landroid/view/SurfaceControl;
    .end local v16    # "attrChanges":I
    .end local v17    # "inputChangeMask":I
    .end local v18    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v19    # "leash":Landroid/view/SurfaceControl;
    .end local v20    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v27    # "frames":Landroid/window/ClientWindowFrames;
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v8, "Invalid window token (never added or removed already)"

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    .end local v7    # "state":Landroid/view/WindowlessWindowManager$State;
    :catchall_0
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v0
.end method

.method private blacklist sendLayoutParamsToParent()V
    .locals 8

    .line 707
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mParentInterface:Landroid/view/ISurfaceControlViewHostParent;

    if-nez v0, :cond_0

    .line 708
    return-void

    .line 710
    :cond_0
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    .line 711
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Landroid/view/WindowManager$LayoutParams;

    .line 712
    .local v0, "params":[Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x0

    .line 713
    .local v1, "index":I
    const/4 v2, 0x0

    .line 714
    .local v2, "hasChanges":Z
    iget-object v3, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowlessWindowManager$State;

    .line 715
    .local v4, "windowInfo":Landroid/view/WindowlessWindowManager$State;
    iget-object v5, v4, Landroid/view/WindowlessWindowManager$State;->mLastReportedParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v4, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5, v6}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v5

    .line 716
    .local v5, "changes":I
    if-eqz v5, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    or-int/2addr v2, v6

    .line 717
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "index":I
    .local v6, "index":I
    iget-object v7, v4, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    aput-object v7, v0, v1

    .line 718
    .end local v4    # "windowInfo":Landroid/view/WindowlessWindowManager$State;
    .end local v5    # "changes":I
    move v1, v6

    goto :goto_0

    .line 720
    .end local v6    # "index":I
    .restart local v1    # "index":I
    :cond_2
    if-eqz v2, :cond_3

    .line 722
    :try_start_0
    iget-object v3, p0, Landroid/view/WindowlessWindowManager;->mParentInterface:Landroid/view/ISurfaceControlViewHostParent;

    invoke-interface {v3, v0}, Landroid/view/ISurfaceControlViewHostParent;->updateParams([Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    goto :goto_2

    .line 723
    :catch_0
    move-exception v3

    .line 726
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public blacklist addToDisplay(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIILandroid/view/InputChannel;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/graphics/Rect;[F)I
    .locals 23
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "viewVisibility"    # I
    .param p4, "displayId"    # I
    .param p5, "requestedVisibleTypes"    # I
    .param p6, "outInputChannel"    # Landroid/view/InputChannel;
    .param p7, "outInsetsState"    # Landroid/view/InsetsState;
    .param p8, "outActiveControls"    # Landroid/view/InsetsSourceControl$Array;
    .param p9, "outAttachedFrame"    # Landroid/graphics/Rect;
    .param p10, "outSizeCompatScale"    # [F

    .line 186
    move-object/from16 v3, p2

    move-object/from16 v8, p9

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Leash"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "WindowlessWindowManager.addToDisplay"

    .line 188
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 189
    invoke-virtual/range {p0 .. p2}, Landroid/view/WindowlessWindowManager;->getParentSurface(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v6

    .line 192
    .local v6, "leash":Landroid/view/SurfaceControl;
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    iget v1, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 193
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 195
    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "WindowlessWindowManager.addToDisplay"

    .line 196
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 197
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 198
    invoke-virtual {v0, v6}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v12

    .line 201
    .local v12, "sc":Landroid/view/SurfaceControl;
    new-instance v0, Landroid/view/WindowlessWindowManager$State;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move/from16 v4, p4

    move-object v2, v12

    .end local v12    # "sc":Landroid/view/SurfaceControl;
    .local v2, "sc":Landroid/view/SurfaceControl;
    invoke-direct/range {v0 .. v7}, Landroid/view/WindowlessWindowManager$State;-><init>(Landroid/view/WindowlessWindowManager;Landroid/view/SurfaceControl;Landroid/view/WindowManager$LayoutParams;ILandroid/view/IWindow;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    move-object v4, v0

    .line 202
    .local v4, "state":Landroid/view/WindowlessWindowManager$State;
    monitor-enter p0

    .line 203
    :try_start_0
    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    iget-object v5, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowlessWindowManager$State;

    .line 204
    .local v0, "parentState":Landroid/view/WindowlessWindowManager$State;
    if-eqz v0, :cond_0

    .line 205
    iget-object v5, v0, Landroid/view/WindowlessWindowManager$State;->mFrame:Landroid/graphics/Rect;

    iput-object v5, v4, Landroid/view/WindowlessWindowManager$State;->mAttachedFrame:Landroid/graphics/Rect;

    .line 210
    :cond_0
    iget-object v5, v1, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 211
    iget-object v5, v1, Landroid/view/WindowlessWindowManager;->mInputTransferToken:Landroid/window/InputTransferToken;

    iput-object v5, v4, Landroid/view/WindowlessWindowManager$State;->mInputTransferToken:Landroid/window/InputTransferToken;

    goto :goto_0

    .line 213
    :cond_1
    new-instance v5, Landroid/window/InputTransferToken;

    invoke-direct {v5}, Landroid/window/InputTransferToken;-><init>()V

    iput-object v5, v4, Landroid/view/WindowlessWindowManager$State;->mInputTransferToken:Landroid/window/InputTransferToken;

    .line 216
    :goto_0
    iget-object v5, v1, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v5, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    nop

    .end local v0    # "parentState":Landroid/view/WindowlessWindowManager$State;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    iget-object v0, v4, Landroid/view/WindowlessWindowManager$State;->mAttachedFrame:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    .line 220
    const/4 v0, -0x1

    invoke-virtual {v8, v9, v9, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 222
    :cond_2
    iget-object v0, v4, Landroid/view/WindowlessWindowManager$State;->mAttachedFrame:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 224
    :goto_1
    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, p10, v9

    .line 226
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_5

    .line 229
    :try_start_1
    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    instance-of v0, v0, Landroid/view/IWindowSession$Stub;

    if-eqz v0, :cond_3

    .line 230
    iget-object v10, v1, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    new-instance v12, Landroid/view/SurfaceControl;

    const-string v0, "WindowlessWindowManager.addToDisplay"

    invoke-direct {v12, v2, v0}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 232
    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v13

    iget-object v14, v1, Landroid/view/WindowlessWindowManager;->mHostInputTransferToken:Landroid/window/InputTransferToken;

    iget v15, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v9, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v11, v4, Landroid/view/WindowlessWindowManager$State;->mInputTransferToken:Landroid/window/InputTransferToken;

    .line 234
    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    .line 230
    move-object/from16 v22, p6

    move/from16 v16, v0

    move/from16 v17, v5

    move/from16 v18, v7

    move-object/from16 v19, v9

    move-object/from16 v20, v11

    move/from16 v11, p4

    invoke-interface/range {v10 .. v22}, Landroid/view/IWindowSession;->grantInputChannel(ILandroid/view/SurfaceControl;Landroid/os/IBinder;Landroid/window/InputTransferToken;IIIILandroid/os/IBinder;Landroid/window/InputTransferToken;Ljava/lang/String;Landroid/view/InputChannel;)V

    goto :goto_2

    .line 237
    :cond_3
    iget-object v10, v1, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v13

    iget-object v14, v1, Landroid/view/WindowlessWindowManager;->mHostInputTransferToken:Landroid/window/InputTransferToken;

    iget v15, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v9, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v11, v4, Landroid/view/WindowlessWindowManager$State;->mInputTransferToken:Landroid/window/InputTransferToken;

    .line 240
    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 237
    move-object/from16 v22, p6

    move/from16 v16, v0

    move-object v12, v2

    move/from16 v17, v5

    move/from16 v18, v7

    move-object/from16 v19, v9

    move-object/from16 v20, v11

    move/from16 v11, p4

    .end local v2    # "sc":Landroid/view/SurfaceControl;
    .restart local v12    # "sc":Landroid/view/SurfaceControl;
    :try_start_2
    invoke-interface/range {v10 .. v22}, Landroid/view/IWindowSession;->grantInputChannel(ILandroid/view/SurfaceControl;Landroid/os/IBinder;Landroid/window/InputTransferToken;IIIILandroid/os/IBinder;Landroid/window/InputTransferToken;Ljava/lang/String;Landroid/view/InputChannel;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 242
    .end local v12    # "sc":Landroid/view/SurfaceControl;
    .restart local v2    # "sc":Landroid/view/SurfaceControl;
    :goto_2
    nop

    .line 243
    if-eqz p6, :cond_4

    :try_start_3
    invoke-virtual/range {p6 .. p6}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    iput-object v0, v4, Landroid/view/WindowlessWindowManager$State;->mInputChannelToken:Landroid/os/IBinder;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 246
    goto :goto_5

    .line 244
    .end local v2    # "sc":Landroid/view/SurfaceControl;
    .restart local v12    # "sc":Landroid/view/SurfaceControl;
    :catch_0
    move-exception v0

    move-object v2, v12

    .end local v12    # "sc":Landroid/view/SurfaceControl;
    .restart local v2    # "sc":Landroid/view/SurfaceControl;
    goto :goto_4

    :catch_1
    move-exception v0

    .line 245
    .local v0, "e":Landroid/os/RemoteException;
    :goto_4
    const-string v5, "WindowlessWindowManager"

    const-string v7, "Failed to grant input to surface: "

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5
    :goto_5
    const/4 v0, 0x2

    .line 251
    .local v0, "res":I
    invoke-direct {v1}, Landroid/view/WindowlessWindowManager;->sendLayoutParamsToParent()V

    .line 253
    move/from16 v11, p4

    invoke-direct {v1, v11}, Landroid/view/WindowlessWindowManager;->isInTouchModeInternal(I)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x3

    goto :goto_6

    .line 254
    :cond_6
    const/4 v5, 0x2

    .line 253
    :goto_6
    return v5

    .line 217
    .end local v0    # "res":I
    :catchall_0
    move-exception v0

    move/from16 v11, p4

    :goto_7
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_7
.end method

.method public blacklist addToDisplayAsUser(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIILandroid/view/InputChannel;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/graphics/Rect;[F)I
    .locals 12
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "viewVisibility"    # I
    .param p4, "displayId"    # I
    .param p5, "userId"    # I
    .param p6, "requestedVisibleTypes"    # I
    .param p7, "outInputChannel"    # Landroid/view/InputChannel;
    .param p8, "outInsetsState"    # Landroid/view/InsetsState;
    .param p9, "outActiveControls"    # Landroid/view/InsetsSourceControl$Array;
    .param p10, "outAttachedFrame"    # Landroid/graphics/Rect;
    .param p11, "outSizeCompatScale"    # [F

    .line 266
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    invoke-virtual/range {v0 .. v10}, Landroid/view/WindowlessWindowManager;->addToDisplay(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIILandroid/view/InputChannel;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/graphics/Rect;[F)I

    move-result v11

    return v11
.end method

.method public blacklist addToDisplayWithoutInputChannel(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IILandroid/view/InsetsState;Landroid/graphics/Rect;[F)I
    .locals 1
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "viewVisibility"    # I
    .param p4, "layerStackId"    # I
    .param p5, "insetsState"    # Landroid/view/InsetsState;
    .param p6, "outAttachedFrame"    # Landroid/graphics/Rect;
    .param p7, "outSizeCompatScale"    # [F

    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 627
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist cancelDragAndDrop(Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "dragToken"    # Landroid/os/IBinder;
    .param p2, "skipAnimation"    # Z

    .line 519
    return-void
.end method

.method public blacklist cancelDraw(Landroid/view/IWindow;)Z
    .locals 1
    .param p1, "window"    # Landroid/view/IWindow;

    .line 667
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist clearTouchableRegion(Landroid/view/IWindow;)V
    .locals 2
    .param p1, "window"    # Landroid/view/IWindow;

    .line 486
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/WindowlessWindowManager;->setTouchRegion(Landroid/os/IBinder;Landroid/graphics/Region;)V

    .line 487
    return-void
.end method

.method public blacklist dragRecipientEntered(Landroid/view/IWindow;)V
    .locals 0
    .param p1, "window"    # Landroid/view/IWindow;

    .line 523
    return-void
.end method

.method public blacklist dragRecipientExited(Landroid/view/IWindow;)V
    .locals 0
    .param p1, "window"    # Landroid/view/IWindow;

    .line 527
    return-void
.end method

.method public blacklist dropForAccessibility(Landroid/view/IWindow;II)Z
    .locals 1
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 646
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V
    .locals 3
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "postDrawTransaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "seqId"    # I

    .line 492
    monitor-enter p0

    .line 493
    :try_start_0
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mResizeCompletionForWindow:Ljava/util/HashMap;

    .line 494
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;

    .line 495
    .local v0, "c":Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;
    if-nez v0, :cond_0

    .line 497
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 498
    monitor-exit p0

    return-void

    .line 500
    :cond_0
    invoke-interface {v0, p2}, Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;->finished(Landroid/view/SurfaceControl$Transaction;)V

    .line 501
    iget-object v1, p0, Landroid/view/WindowlessWindowManager;->mResizeCompletionForWindow:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    nop

    .end local v0    # "c":Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;
    monitor-exit p0

    .line 503
    return-void

    .line 502
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist finishMovingTask(Landroid/view/IWindow;)V
    .locals 0
    .param p1, "window"    # Landroid/view/IWindow;

    .line 580
    return-void
.end method

.method blacklist forwardBackKeyToParent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 729
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mParentInterface:Landroid/view/ISurfaceControlViewHostParent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 730
    return v1

    .line 733
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mParentInterface:Landroid/view/ISurfaceControlViewHostParent;

    invoke-interface {v0, p1}, Landroid/view/ISurfaceControlViewHostParent;->forwardBackKeyToParent(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    nop

    .line 738
    const/4 v0, 0x1

    return v0

    .line 734
    :catch_0
    move-exception v0

    .line 735
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WindowlessWindowManager"

    const-string v3, "Failed to forward back key To Parent: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 736
    return v1
.end method

.method public blacklist generateDisplayHash(Landroid/view/IWindow;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 0
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "boundsInWindow"    # Landroid/graphics/Rect;
    .param p3, "hashAlgorithm"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/os/RemoteCallback;

    .line 638
    return-void
.end method

.method blacklist getInputTransferToken(Landroid/os/IBinder;)Landroid/window/InputTransferToken;
    .locals 2
    .param p1, "window"    # Landroid/os/IBinder;

    .line 114
    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mInputTransferToken:Landroid/window/InputTransferToken;

    monitor-exit p0

    return-object v0

    .line 121
    :cond_0
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowlessWindowManager$State;

    .line 122
    .local v0, "state":Landroid/view/WindowlessWindowManager$State;
    if-eqz v0, :cond_1

    .line 123
    iget-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mInputTransferToken:Landroid/window/InputTransferToken;

    monitor-exit p0

    return-object v1

    .line 125
    .end local v0    # "state":Landroid/view/WindowlessWindowManager$State;
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    const-string v0, "WindowlessWindowManager"

    const-string v1, "Failed to get focusGrantToken. Returning null token"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v0, 0x0

    return-object v0

    .line 125
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected blacklist getParentSurface(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;)Landroid/view/SurfaceControl;
    .locals 2
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 169
    monitor-enter p0

    .line 170
    :try_start_0
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mRootSurface:Landroid/view/SurfaceControl;

    monitor-exit p0

    return-object v0

    .line 173
    :cond_0
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    iget-object v1, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowlessWindowManager$State;

    iget-object v0, v0, Landroid/view/WindowlessWindowManager$State;->mLeash:Landroid/view/SurfaceControl;

    monitor-exit p0

    return-object v0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected blacklist getSurfaceControl(Landroid/view/IWindow;)Landroid/view/SurfaceControl;
    .locals 2
    .param p1, "window"    # Landroid/view/IWindow;

    .line 343
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowlessWindowManager$State;

    .line 344
    .local v0, "s":Landroid/view/WindowlessWindowManager$State;
    if-nez v0, :cond_0

    .line 345
    const/4 v1, 0x0

    return-object v1

    .line 347
    :cond_0
    iget-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v1
.end method

.method protected blacklist getSurfaceControl(Landroid/view/View;)Landroid/view/SurfaceControl;
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .line 333
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 334
    .local v0, "root":Landroid/view/ViewRootImpl;
    if-nez v0, :cond_0

    .line 335
    const/4 v1, 0x0

    return-object v1

    .line 337
    :cond_0
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {p0, v1}, Landroid/view/WindowlessWindowManager;->getSurfaceControl(Landroid/view/IWindow;)Landroid/view/SurfaceControl;

    move-result-object v1

    return-object v1
.end method

.method protected blacklist getWindowBinder(Landroid/view/View;)Landroid/os/IBinder;
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .line 323
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 324
    .local v0, "root":Landroid/view/ViewRootImpl;
    if-nez v0, :cond_0

    .line 325
    const/4 v1, 0x0

    return-object v1

    .line 327
    :cond_0
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;
    .locals 1
    .param p1, "window"    # Landroid/os/IBinder;

    .line 566
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/window/InputTransferToken;Z)V
    .locals 0
    .param p1, "callingWindow"    # Landroid/view/IWindow;
    .param p2, "targetInputToken"    # Landroid/window/InputTransferToken;
    .param p3, "grantFocus"    # Z

    .line 633
    return-void
.end method

.method public blacklist grantInputChannel(ILandroid/view/SurfaceControl;Landroid/os/IBinder;Landroid/window/InputTransferToken;IIIILandroid/os/IBinder;Landroid/window/InputTransferToken;Ljava/lang/String;Landroid/view/InputChannel;)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "surface"    # Landroid/view/SurfaceControl;
    .param p3, "clientToken"    # Landroid/os/IBinder;
    .param p4, "hostInputToken"    # Landroid/window/InputTransferToken;
    .param p5, "flags"    # I
    .param p6, "privateFlags"    # I
    .param p7, "inputFeatures"    # I
    .param p8, "type"    # I
    .param p9, "windowToken"    # Landroid/os/IBinder;
    .param p10, "embeddedInputTransferToken"    # Landroid/window/InputTransferToken;
    .param p11, "inputHandleName"    # Ljava/lang/String;
    .param p12, "outInputChannel"    # Landroid/view/InputChannel;

    .line 618
    return-void
.end method

.method public blacklist moveFocusToAdjacentWindow(Landroid/view/IWindow;I)Z
    .locals 2
    .param p1, "fromWindow"    # Landroid/view/IWindow;
    .param p2, "direction"    # I

    .line 672
    const-string v0, "WindowlessWindowManager"

    const-string v1, "Received request to moveFocusToAdjacentWindow on WindowlessWindowManager. We shouldn\'t get here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notifyImeWindowVisibilityChangedFromClient(Landroid/view/IWindow;ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 0
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "visible"    # Z
    .param p3, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 680
    return-void
.end method

.method public blacklist notifyInsetsAnimationRunningStateChanged(Landroid/view/IWindow;Z)V
    .locals 0
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "running"    # Z

    .line 685
    return-void
.end method

.method public blacklist onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "rectangle"    # Landroid/graphics/Rect;

    .line 562
    return-void
.end method

.method public blacklist outOfMemory(Landroid/view/IWindow;)Z
    .locals 1
    .param p1, "window"    # Landroid/view/IWindow;

    .line 474
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist performDrag(Landroid/view/IWindow;ILandroid/view/SurfaceControl;IIIFFFFLandroid/content/ClipData;)Landroid/os/IBinder;
    .locals 1
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "flags"    # I
    .param p3, "surface"    # Landroid/view/SurfaceControl;
    .param p4, "touchSource"    # I
    .param p5, "touchDeviceId"    # I
    .param p6, "touchPointerId"    # I
    .param p7, "touchX"    # F
    .param p8, "touchY"    # F
    .param p9, "thumbCenterX"    # F
    .param p10, "thumbCenterY"    # F
    .param p11, "data"    # Landroid/content/ClipData;

    .line 510
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist pokeDrawLock(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "window"    # Landroid/os/IBinder;

    .line 571
    return-void
.end method

.method public blacklist relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/view/WindowRelayoutResult;)I
    .locals 20
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "inAttrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "requestedWidth"    # I
    .param p4, "requestedHeight"    # I
    .param p5, "viewFlags"    # I
    .param p6, "flags"    # I
    .param p7, "seq"    # I
    .param p8, "lastSyncSeqId"    # I
    .param p9, "outRelayoutResult"    # Landroid/view/WindowRelayoutResult;

    .line 359
    move-object/from16 v0, p9

    if-eqz v0, :cond_0

    .line 360
    iget-object v1, v0, Landroid/view/WindowRelayoutResult;->frames:Landroid/window/ClientWindowFrames;

    .line 361
    .local v1, "outFrames":Landroid/window/ClientWindowFrames;
    iget-object v2, v0, Landroid/view/WindowRelayoutResult;->mergedConfiguration:Landroid/util/MergedConfiguration;

    .line 362
    .local v2, "outMergedConfiguration":Landroid/util/MergedConfiguration;
    iget-object v3, v0, Landroid/view/WindowRelayoutResult;->surfaceControl:Landroid/view/SurfaceControl;

    .line 363
    .local v3, "outSurfaceControl":Landroid/view/SurfaceControl;
    iget-object v4, v0, Landroid/view/WindowRelayoutResult;->insetsState:Landroid/view/InsetsState;

    .line 364
    .local v4, "outInsetsState":Landroid/view/InsetsState;
    iget-object v5, v0, Landroid/view/WindowRelayoutResult;->activeControls:Landroid/view/InsetsSourceControl$Array;

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    .local v5, "outActiveControls":Landroid/view/InsetsSourceControl$Array;
    goto :goto_0

    .line 366
    .end local v1    # "outFrames":Landroid/window/ClientWindowFrames;
    .end local v2    # "outMergedConfiguration":Landroid/util/MergedConfiguration;
    .end local v3    # "outSurfaceControl":Landroid/view/SurfaceControl;
    .end local v4    # "outInsetsState":Landroid/view/InsetsState;
    .end local v5    # "outActiveControls":Landroid/view/InsetsSourceControl$Array;
    :cond_0
    const/4 v1, 0x0

    .line 367
    .restart local v1    # "outFrames":Landroid/window/ClientWindowFrames;
    const/4 v2, 0x0

    .line 368
    .restart local v2    # "outMergedConfiguration":Landroid/util/MergedConfiguration;
    const/4 v3, 0x0

    .line 369
    .restart local v3    # "outSurfaceControl":Landroid/view/SurfaceControl;
    const/4 v4, 0x0

    .line 370
    .restart local v4    # "outInsetsState":Landroid/view/InsetsState;
    const/4 v5, 0x0

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    .line 372
    .end local v1    # "outFrames":Landroid/window/ClientWindowFrames;
    .end local v2    # "outMergedConfiguration":Landroid/util/MergedConfiguration;
    .end local v3    # "outSurfaceControl":Landroid/view/SurfaceControl;
    .end local v4    # "outInsetsState":Landroid/view/InsetsState;
    .local v15, "outFrames":Landroid/window/ClientWindowFrames;
    .local v16, "outMergedConfiguration":Landroid/util/MergedConfiguration;
    .local v17, "outSurfaceControl":Landroid/view/SurfaceControl;
    .local v18, "outInsetsState":Landroid/view/InsetsState;
    .local v19, "outActiveControls":Landroid/view/InsetsSourceControl$Array;
    :goto_0
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    invoke-direct/range {v6 .. v19}, Landroid/view/WindowlessWindowManager;->relayoutInner(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)I

    move-result v1

    return v1
.end method

.method public blacklist relayoutAsync(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIII)V
    .locals 14
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "inAttrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "requestedWidth"    # I
    .param p4, "requestedHeight"    # I
    .param p5, "viewFlags"    # I
    .param p6, "flags"    # I
    .param p7, "seq"    # I
    .param p8, "lastSyncSeqId"    # I

    .line 466
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v13}, Landroid/view/WindowlessWindowManager;->relayoutInner(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)I

    .line 470
    return-void
.end method

.method public blacklist remove(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "clientToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 281
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    invoke-interface {v0, p1}, Landroid/view/IWindowSession;->remove(Landroid/os/IBinder;)V

    .line 283
    monitor-enter p0

    .line 284
    :try_start_0
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowlessWindowManager$State;

    .line 285
    .local v0, "state":Landroid/view/WindowlessWindowManager$State;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    if-eqz v0, :cond_0

    .line 290
    iget-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v1}, Landroid/view/WindowlessWindowManager;->removeSurface(Landroid/view/SurfaceControl;)V

    .line 291
    iget-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v1}, Landroid/view/WindowlessWindowManager;->removeSurface(Landroid/view/SurfaceControl;)V

    .line 292
    return-void

    .line 287
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid window token (never added or removed already)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 285
    .end local v0    # "state":Landroid/view/WindowlessWindowManager$State;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected blacklist removeSurface(Landroid/view/SurfaceControl;)V
    .locals 3
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 296
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 297
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 299
    .end local v0    # "t":Landroid/view/SurfaceControl$Transaction;
    return-void

    .line 296
    .restart local v0    # "t":Landroid/view/SurfaceControl$Transaction;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public blacklist reportDecorViewGestureInterceptionChanged(Landroid/view/IWindow;Z)V
    .locals 0
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "intercepted"    # Z

    .line 605
    return-void
.end method

.method public blacklist reportDropResult(Landroid/view/IWindow;Z)V
    .locals 0
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "consumed"    # Z

    .line 515
    return-void
.end method

.method public blacklist reportKeepClearAreasChanged(Landroid/view/IWindow;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "window"    # Landroid/view/IWindow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/IWindow;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 611
    .local p2, "restrictedRects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .local p3, "unrestrictedRects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    return-void
.end method

.method public blacklist reportSystemGestureExclusionChanged(Landroid/view/IWindow;Ljava/util/List;)V
    .locals 0
    .param p1, "window"    # Landroid/view/IWindow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/IWindow;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 602
    .local p2, "exclusionRects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    return-void
.end method

.method public blacklist sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 0
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "sync"    # Z

    .line 553
    return-void
.end method

.method blacklist setCompletionCallback(Landroid/os/IBinder;Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;)V
    .locals 2
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "callback"    # Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;

    .line 135
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mResizeCompletionForWindow:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    const-string v0, "WindowlessWindowManager"

    const-string v1, "Unsupported overlapping resizes"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mResizeCompletionForWindow:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    return-void
.end method

.method public blacklist setConfiguration(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 110
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 111
    return-void
.end method

.method public blacklist setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    .locals 1
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "touchableInsets"    # I
    .param p3, "contentInsets"    # Landroid/graphics/Rect;
    .param p4, "visibleInsets"    # Landroid/graphics/Rect;
    .param p5, "touchableRegion"    # Landroid/graphics/Region;

    .line 481
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p5}, Landroid/view/WindowlessWindowManager;->setTouchRegion(Landroid/os/IBinder;Landroid/graphics/Region;)V

    .line 482
    return-void
.end method

.method public blacklist setInsetsState(Landroid/view/InsetsState;)V
    .locals 14
    .param p1, "state"    # Landroid/view/InsetsState;

    .line 650
    move-object v5, p1

    iput-object v5, p0, Landroid/view/WindowlessWindowManager;->mInsetsState:Landroid/view/InsetsState;

    .line 651
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/view/WindowlessWindowManager$State;

    .line 653
    .local v13, "s":Landroid/view/WindowlessWindowManager$State;
    :try_start_0
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v0, v0, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget-object v1, v13, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v2, v13, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 654
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v0, v0, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/WindowlessWindowManager;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v1, v1, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 655
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mTmpConfig:Landroid/util/MergedConfiguration;

    iget-object v1, p0, Landroid/view/WindowlessWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Landroid/view/WindowlessWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1, v2}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 656
    iget-object v1, v13, Landroid/view/WindowlessWindowManager$State;->mClient:Landroid/view/IWindow;

    iget-object v2, p0, Landroid/view/WindowlessWindowManager;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v4, p0, Landroid/view/WindowlessWindowManager;->mTmpConfig:Landroid/util/MergedConfiguration;

    iget v8, v13, Landroid/view/WindowlessWindowManager$State;->mDisplayId:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v9, 0x7fffffff

    invoke-interface/range {v1 .. v11}, Landroid/view/IWindow;->resized(Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIIZLandroid/window/ActivityWindowInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    goto :goto_1

    .line 659
    :catch_0
    move-exception v0

    .line 662
    .end local v13    # "s":Landroid/view/WindowlessWindowManager$State;
    :goto_1
    move-object v5, p1

    goto :goto_0

    .line 663
    :cond_0
    return-void
.end method

.method public blacklist setOnBackInvokedCallbackInfo(Landroid/view/IWindow;Landroid/window/OnBackInvokedCallbackInfo;)V
    .locals 0
    .param p1, "iWindow"    # Landroid/view/IWindow;
    .param p2, "callbackInfo"    # Landroid/window/OnBackInvokedCallbackInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 642
    return-void
.end method

.method blacklist setParentInterface(Landroid/view/ISurfaceControlViewHostParent;)V
    .locals 2
    .param p1, "parentInterface"    # Landroid/view/ISurfaceControlViewHostParent;

    .line 688
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mParentInterface:Landroid/view/ISurfaceControlViewHostParent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mParentInterface:Landroid/view/ISurfaceControlViewHostParent;

    invoke-interface {v0}, Landroid/view/ISurfaceControlViewHostParent;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 689
    .local v0, "oldInterface":Landroid/os/IBinder;
    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Landroid/view/ISurfaceControlViewHostParent;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 692
    .local v1, "newInterface":Landroid/os/IBinder;
    :goto_1
    if-eq v0, v1, :cond_2

    .line 693
    invoke-direct {p0}, Landroid/view/WindowlessWindowManager;->clearLastReportedParams()V

    .line 695
    :cond_2
    iput-object p1, p0, Landroid/view/WindowlessWindowManager;->mParentInterface:Landroid/view/ISurfaceControlViewHostParent;

    .line 696
    invoke-direct {p0}, Landroid/view/WindowlessWindowManager;->sendLayoutParamsToParent()V

    .line 697
    return-void
.end method

.method public blacklist setShouldZoomOutWallpaper(Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "shouldZoom"    # Z

    .line 540
    return-void
.end method

.method protected blacklist setTouchRegion(Landroid/os/IBinder;Landroid/graphics/Region;)V
    .locals 10
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "region"    # Landroid/graphics/Region;

    .line 143
    monitor-enter p0

    .line 146
    :try_start_0
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowlessWindowManager$State;

    move-object v1, v0

    .line 147
    .local v1, "state":Landroid/view/WindowlessWindowManager$State;
    if-nez v1, :cond_0

    .line 148
    monitor-exit p0

    return-void

    .line 150
    :cond_0
    iget-object v0, v1, Landroid/view/WindowlessWindowManager$State;->mInputRegion:Landroid/graphics/Region;

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    monitor-exit p0

    return-void

    .line 153
    :cond_1
    if-eqz p2, :cond_2

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0, p2}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-object v0, v1, Landroid/view/WindowlessWindowManager$State;->mInputRegion:Landroid/graphics/Region;

    .line 154
    iget-object v0, v1, Landroid/view/WindowlessWindowManager$State;->mInputChannelToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 156
    :try_start_1
    iget-object v2, p0, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    iget-object v3, v1, Landroid/view/WindowlessWindowManager$State;->mInputChannelToken:Landroid/os/IBinder;

    iget v4, v1, Landroid/view/WindowlessWindowManager$State;->mDisplayId:I

    iget-object v5, v1, Landroid/view/WindowlessWindowManager$State;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v0, v1, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, v1, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v0, v1, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget-object v9, v1, Landroid/view/WindowlessWindowManager$State;->mInputRegion:Landroid/graphics/Region;

    invoke-interface/range {v2 .. v9}, Landroid/view/IWindowSession;->updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    goto :goto_1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "WindowlessWindowManager"

    const-string v3, "Failed to update surface input channel: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    monitor-exit p0

    .line 164
    return-void

    .line 163
    .end local v1    # "state":Landroid/view/WindowlessWindowManager$State;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public blacklist setWallpaperDisplayOffset(Landroid/os/IBinder;II)V
    .locals 0
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 548
    return-void
.end method

.method public blacklist setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    .locals 0
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "xstep"    # F
    .param p5, "ystep"    # F

    .line 532
    return-void
.end method

.method public blacklist setWallpaperZoomOut(Landroid/os/IBinder;F)V
    .locals 0
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "zoom"    # F

    .line 536
    return-void
.end method

.method public blacklist startMovingTask(Landroid/view/IWindow;FF)Z
    .locals 1
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "startX"    # F
    .param p3, "startY"    # F

    .line 575
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;)V
    .locals 0
    .param p1, "channelToken"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I
    .param p3, "surface"    # Landroid/view/SurfaceControl;
    .param p4, "flags"    # I
    .param p5, "privateFlags"    # I
    .param p6, "inputFeatures"    # I
    .param p7, "region"    # Landroid/graphics/Region;

    .line 623
    return-void
.end method

.method public blacklist updateRequestedVisibleTypes(Landroid/view/IWindow;ILandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 2
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "requestedVisibleTypes"    # I
    .param p3, "imeStatsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 591
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    .line 595
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v1, p2

    .line 594
    invoke-interface {v0, p1, v1, p3}, Landroid/view/IWindowSession;->updateRequestedVisibleTypes(Landroid/view/IWindow;ILandroid/view/inputmethod/ImeTracker$Token;)V

    .line 597
    :cond_0
    return-void
.end method

.method public blacklist updateTapExcludeRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    .locals 0
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "region"    # Landroid/graphics/Region;

    .line 585
    return-void
.end method

.method public blacklist wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 557
    return-void
.end method

.method public blacklist wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "window"    # Landroid/os/IBinder;

    .line 544
    return-void
.end method
