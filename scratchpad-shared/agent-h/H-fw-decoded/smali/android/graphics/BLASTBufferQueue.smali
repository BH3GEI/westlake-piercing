.class public final Landroid/graphics/BLASTBufferQueue;
.super Ljava/lang/Object;
.source "BLASTBufferQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;,
        Landroid/graphics/BLASTBufferQueue$WaitForBufferReleaseCallback;
    }
.end annotation


# instance fields
.field public mNativeObject:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "updateDestinationFrame"    # Z

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {p1, p2}, Landroid/graphics/BLASTBufferQueue;->nativeCreate(Ljava/lang/String;Z)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    .line 73
    return-void
.end method

.method private static native nativeApplyPendingTransactions(JJ)V
.end method

.method private static native nativeClearSyncTransaction(J)V
.end method

.method private static native nativeCreate(Ljava/lang/String;Z)J
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGatherPendingTransactions(JJ)Landroid/view/SurfaceControl$Transaction;
.end method

.method private static native nativeGetLastAcquiredFrameNum(J)J
.end method

.method private static native nativeGetSurface(JZ)Landroid/view/Surface;
.end method

.method private static native nativeIsSameSurfaceControl(JJ)Z
.end method

.method private static native nativeMergeWithNextTransaction(JJJ)V
.end method

.method private static native nativeSetApplyToken(JLandroid/os/IBinder;)V
.end method

.method private static native nativeSetTransactionHangCallback(JLandroid/graphics/BLASTBufferQueue$TransactionHangCallback;)V
.end method

.method private static native nativeSetWaitForBufferReleaseCallback(JLandroid/graphics/BLASTBufferQueue$WaitForBufferReleaseCallback;)V
.end method

.method private static native nativeStopContinuousSyncTransaction(J)V
.end method

.method private static native nativeSyncNextTransaction(JLjava/util/function/Consumer;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;Z)Z"
        }
    .end annotation
.end method

.method private static native nativeUpdate(JJJJI)V
.end method


# virtual methods
.method public applyPendingTransactions(J)V
    .locals 2
    .param p1, "frameNumber"    # J

    .line 186
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/BLASTBufferQueue;->nativeApplyPendingTransactions(JJ)V

    .line 187
    return-void
.end method

.method public clearSyncTransaction()V
    .locals 2

    .line 136
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/graphics/BLASTBufferQueue;->nativeClearSyncTransaction(J)V

    .line 137
    return-void
.end method

.method public createSurface()Landroid/view/Surface;
    .locals 3

    .line 84
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/BLASTBufferQueue;->nativeGetSurface(JZ)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public createSurfaceWithHandle()Landroid/view/Surface;
    .locals 3

    .line 92
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/graphics/BLASTBufferQueue;->nativeGetSurface(JZ)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 2

    .line 76
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/graphics/BLASTBufferQueue;->nativeDestroy(J)V

    .line 77
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    .line 78
    return-void
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 153
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 154
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/graphics/BLASTBufferQueue;->nativeDestroy(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 158
    nop

    .line 159
    return-void

    .line 157
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 158
    throw v0
.end method

.method public gatherPendingTransactions(J)Landroid/view/SurfaceControl$Transaction;
    .locals 2
    .param p1, "frameNumber"    # J

    .line 210
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/BLASTBufferQueue;->nativeGatherPendingTransactions(JJ)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public getLastAcquiredFrameNum()J
    .locals 2

    .line 190
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/graphics/BLASTBufferQueue;->nativeGetLastAcquiredFrameNum(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public isSameSurfaceControl(Landroid/view/SurfaceControl;)Z
    .locals 4
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 197
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/BLASTBufferQueue;->nativeIsSameSurfaceControl(JJ)Z

    move-result v0

    return v0
.end method

.method public mergeWithNextTransaction(JJ)V
    .locals 6
    .param p1, "nativeTransaction"    # J
    .param p3, "frameNumber"    # J

    .line 175
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "nativeTransaction":J
    .end local p3    # "frameNumber":J
    .local v2, "nativeTransaction":J
    .local v4, "frameNumber":J
    invoke-static/range {v0 .. v5}, Landroid/graphics/BLASTBufferQueue;->nativeMergeWithNextTransaction(JJJ)V

    .line 176
    return-void
.end method

.method public mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V
    .locals 6
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "frameNumber"    # J

    .line 167
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    move-wide v4, p2

    .end local p2    # "frameNumber":J
    .local v4, "frameNumber":J
    invoke-static/range {v0 .. v5}, Landroid/graphics/BLASTBufferQueue;->nativeMergeWithNextTransaction(JJJ)V

    .line 168
    return-void
.end method

.method public setApplyToken(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "applyToken"    # Landroid/os/IBinder;

    .line 218
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/graphics/BLASTBufferQueue;->nativeSetApplyToken(JLandroid/os/IBinder;)V

    .line 219
    return-void
.end method

.method public setTransactionHangCallback(Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;)V
    .locals 2
    .param p1, "hangCallback"    # Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;

    .line 214
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/graphics/BLASTBufferQueue;->nativeSetTransactionHangCallback(JLandroid/graphics/BLASTBufferQueue$TransactionHangCallback;)V

    .line 215
    return-void
.end method

.method public setWaitForBufferReleaseCallback(Landroid/graphics/BLASTBufferQueue$WaitForBufferReleaseCallback;)V
    .locals 2
    .param p1, "waitCallback"    # Landroid/graphics/BLASTBufferQueue$WaitForBufferReleaseCallback;

    .line 225
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/graphics/BLASTBufferQueue;->nativeSetWaitForBufferReleaseCallback(JLandroid/graphics/BLASTBufferQueue$WaitForBufferReleaseCallback;)V

    .line 226
    return-void
.end method

.method public stopContinuousSyncTransaction()V
    .locals 2

    .line 128
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/graphics/BLASTBufferQueue;->nativeStopContinuousSyncTransaction(J)V

    .line 129
    return-void
.end method

.method public syncNextTransaction(Ljava/util/function/Consumer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)Z"
        }
    .end annotation

    .line 119
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/SurfaceControl$Transaction;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/BLASTBufferQueue;->syncNextTransaction(ZLjava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method

.method public syncNextTransaction(ZLjava/util/function/Consumer;)Z
    .locals 2
    .param p1, "acquireSingleBuffer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)Z"
        }
    .end annotation

    .line 108
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/SurfaceControl$Transaction;>;"
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1, p2, p1}, Landroid/graphics/BLASTBufferQueue;->nativeSyncNextTransaction(JLjava/util/function/Consumer;Z)Z

    move-result v0

    return v0
.end method

.method public update(Landroid/view/SurfaceControl;III)V
    .locals 9
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "format"    # I

    .line 147
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    int-to-long v4, p2

    int-to-long v6, p3

    move v8, p4

    .end local p4    # "format":I
    .local v8, "format":I
    invoke-static/range {v0 .. v8}, Landroid/graphics/BLASTBufferQueue;->nativeUpdate(JJJJI)V

    .line 148
    return-void
.end method
