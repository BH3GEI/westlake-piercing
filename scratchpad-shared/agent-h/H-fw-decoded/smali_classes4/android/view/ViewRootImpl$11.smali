.class Landroid/view/ViewRootImpl$11;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootImpl;->registerCallbacksForSync(ZLandroid/window/SurfaceSyncGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;

.field final synthetic blacklist val$surfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

.field final synthetic blacklist val$syncBuffer:Z

.field final synthetic blacklist val$t:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public static synthetic blacklist $r8$lambda$B3xgjVvEams4YrkJ3Tq8ugo3lrU(Landroid/view/ViewRootImpl$11;Landroid/window/SurfaceSyncGroup;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$11;->lambda$onFrameDraw$2(Landroid/window/SurfaceSyncGroup;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$FqK4Og5BBUTjhoLGGOqnFp1LfZI(Landroid/view/ViewRootImpl$11;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewRootImpl$11;->lambda$onFrameDraw$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$R3FkiByxaHubFL68iUllcN1tkkY(Landroid/view/ViewRootImpl$11;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$11;->lambda$onFrameDraw$1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$lOIKKNnrcWn9ZndeJebfX4H5mOg(Landroid/view/ViewRootImpl$11;JLandroid/window/SurfaceSyncGroup;ZZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/view/ViewRootImpl$11;->lambda$onFrameDraw$3(JLandroid/window/SurfaceSyncGroup;ZZ)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/view/SurfaceControl$Transaction;Landroid/window/SurfaceSyncGroup;Z)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12831
    iput-object p1, p0, Landroid/view/ViewRootImpl$11;->this$0:Landroid/view/ViewRootImpl;

    iput-object p2, p0, Landroid/view/ViewRootImpl$11;->val$t:Landroid/view/SurfaceControl$Transaction;

    iput-object p3, p0, Landroid/view/ViewRootImpl$11;->val$surfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    iput-boolean p4, p0, Landroid/view/ViewRootImpl$11;->val$syncBuffer:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onFrameDraw$0()V
    .locals 2

    .line 12865
    iget-object v0, p0, Landroid/view/ViewRootImpl$11;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to submit the sync transaction after 4s. Likely to ANR soon"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic blacklist lambda$onFrameDraw$1(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "timeoutRunnable"    # Ljava/lang/Runnable;

    .line 12870
    iget-object v0, p0, Landroid/view/ViewRootImpl$11;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onFrameDraw$2(Landroid/window/SurfaceSyncGroup;Landroid/view/SurfaceControl$Transaction;)V
    .locals 6
    .param p1, "surfaceSyncGroup"    # Landroid/window/SurfaceSyncGroup;
    .param p2, "transaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 12865
    new-instance v0, Landroid/view/ViewRootImpl$11$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$11$$ExternalSyntheticLambda0;-><init>(Landroid/view/ViewRootImpl$11;)V

    .line 12868
    .local v0, "timeoutRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Landroid/view/ViewRootImpl$11;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    sget v2, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    int-to-long v2, v2

    const-wide/16 v4, 0xfa0

    mul-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/ViewRootImpl$ViewRootHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 12869
    iget-object v1, p0, Landroid/view/ViewRootImpl$11;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmSimpleExecutor(Landroid/view/ViewRootImpl;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/view/ViewRootImpl$11$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Landroid/view/ViewRootImpl$11$$ExternalSyntheticLambda1;-><init>(Landroid/view/ViewRootImpl$11;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v1, v2}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;

    .line 12871
    invoke-virtual {p1, p2}, Landroid/window/SurfaceSyncGroup;->addTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 12872
    invoke-virtual {p1}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    .line 12873
    return-void
.end method

.method private synthetic blacklist lambda$onFrameDraw$3(JLandroid/window/SurfaceSyncGroup;ZZ)V
    .locals 1
    .param p1, "frame"    # J
    .param p3, "surfaceSyncGroup"    # Landroid/window/SurfaceSyncGroup;
    .param p4, "syncBuffer"    # Z
    .param p5, "didProduceBuffer"    # Z

    .line 12895
    if-nez p5, :cond_0

    .line 12896
    iget-object v0, p0, Landroid/view/ViewRootImpl$11;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmBlastBufferQueue(Landroid/view/ViewRootImpl;)Landroid/graphics/BLASTBufferQueue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/BLASTBufferQueue;->clearSyncTransaction()V

    .line 12902
    iget-object v0, p0, Landroid/view/ViewRootImpl$11;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmBlastBufferQueue(Landroid/view/ViewRootImpl;)Landroid/graphics/BLASTBufferQueue;

    move-result-object v0

    .line 12903
    invoke-virtual {v0, p1, p2}, Landroid/graphics/BLASTBufferQueue;->gatherPendingTransactions(J)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 12902
    invoke-virtual {p3, v0}, Landroid/window/SurfaceSyncGroup;->addTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 12904
    invoke-virtual {p3}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    .line 12905
    return-void

    .line 12911
    :cond_0
    if-nez p4, :cond_1

    .line 12912
    invoke-virtual {p3}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    .line 12914
    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist onFrameDraw(IJ)Landroid/graphics/HardwareRenderer$FrameCommitCallback;
    .locals 8
    .param p1, "syncResult"    # I
    .param p2, "frame"    # J

    .line 12843
    iget-object v0, p0, Landroid/view/ViewRootImpl$11;->val$t:Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_0

    .line 12844
    iget-object v0, p0, Landroid/view/ViewRootImpl$11;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/ViewRootImpl$11;->val$t:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1, p2, p3}, Landroid/view/ViewRootImpl;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    .line 12851
    :cond_0
    and-int/lit8 v0, p1, 0x6

    if-eqz v0, :cond_1

    .line 12853
    iget-object v0, p0, Landroid/view/ViewRootImpl$11;->val$surfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    iget-object v1, p0, Landroid/view/ViewRootImpl$11;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmBlastBufferQueue(Landroid/view/ViewRootImpl;)Landroid/graphics/BLASTBufferQueue;

    move-result-object v1

    .line 12854
    invoke-virtual {v1, p2, p3}, Landroid/graphics/BLASTBufferQueue;->gatherPendingTransactions(J)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 12853
    invoke-virtual {v0, v1}, Landroid/window/SurfaceSyncGroup;->addTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 12855
    iget-object v0, p0, Landroid/view/ViewRootImpl$11;->val$surfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    invoke-virtual {v0}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    .line 12856
    const/4 v0, 0x0

    return-object v0

    .line 12863
    :cond_1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl$11;->val$syncBuffer:Z

    if-eqz v0, :cond_2

    .line 12864
    iget-object v0, p0, Landroid/view/ViewRootImpl$11;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmBlastBufferQueue(Landroid/view/ViewRootImpl;)Landroid/graphics/BLASTBufferQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl$11;->val$surfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    new-instance v2, Landroid/view/ViewRootImpl$11$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1}, Landroid/view/ViewRootImpl$11$$ExternalSyntheticLambda2;-><init>(Landroid/view/ViewRootImpl$11;Landroid/window/SurfaceSyncGroup;)V

    invoke-virtual {v0, v2}, Landroid/graphics/BLASTBufferQueue;->syncNextTransaction(Ljava/util/function/Consumer;)Z

    move-result v0

    .line 12874
    .local v0, "result":Z
    if-nez v0, :cond_2

    .line 12879
    iget-object v1, p0, Landroid/view/ViewRootImpl$11;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to syncNextTransaction. Possibly something else is trying to sync?"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12881
    iget-object v1, p0, Landroid/view/ViewRootImpl$11;->val$surfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    invoke-virtual {v1}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    .line 12885
    .end local v0    # "result":Z
    :cond_2
    iget-object v6, p0, Landroid/view/ViewRootImpl$11;->val$surfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    iget-boolean v7, p0, Landroid/view/ViewRootImpl$11;->val$syncBuffer:Z

    new-instance v2, Landroid/view/ViewRootImpl$11$$ExternalSyntheticLambda3;

    move-object v3, p0

    move-wide v4, p2

    .end local p2    # "frame":J
    .local v4, "frame":J
    invoke-direct/range {v2 .. v7}, Landroid/view/ViewRootImpl$11$$ExternalSyntheticLambda3;-><init>(Landroid/view/ViewRootImpl$11;JLandroid/window/SurfaceSyncGroup;Z)V

    return-object v2
.end method

.method public blacklist onFrameDraw(J)V
    .locals 0
    .param p1, "frame"    # J

    .line 12834
    return-void
.end method
