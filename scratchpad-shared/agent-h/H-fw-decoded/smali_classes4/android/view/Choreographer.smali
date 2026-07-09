.class public final Landroid/view/Choreographer;
.super Ljava/lang/Object;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Choreographer$BufferStuffingState;,
        Landroid/view/Choreographer$FrameData;,
        Landroid/view/Choreographer$FrameHandler;,
        Landroid/view/Choreographer$FrameDisplayEventReceiver;,
        Landroid/view/Choreographer$CallbackQueue;,
        Landroid/view/Choreographer$FrameCallback;,
        Landroid/view/Choreographer$FrameTimeline;,
        Landroid/view/Choreographer$CallbackRecord;,
        Landroid/view/Choreographer$VsyncCallback;
    }
.end annotation


# static fields
.field public static final blacklist CALLBACK_ANIMATION:I = 0x1

.field public static final greylist-max-o CALLBACK_COMMIT:I = 0x4

.field public static final greylist-max-o CALLBACK_INPUT:I = 0x0

.field public static final blacklist CALLBACK_INSETS_ANIMATION:I = 0x2

.field private static final greylist-max-o CALLBACK_LAST:I = 0x4

.field private static final greylist-max-o CALLBACK_TRACE_TITLES:[Ljava/lang/String;

.field public static final greylist-max-o CALLBACK_TRAVERSAL:I = 0x3

.field private static final greylist-max-o DEBUG_FRAMES:Z = false

.field private static final greylist-max-o DEBUG_JANK:Z = false

.field private static final greylist-max-o DEFAULT_FRAME_DELAY:J = 0xaL

.field private static final greylist-max-o FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

.field private static final greylist-max-o MSG_DO_FRAME:I = 0x0

.field private static final greylist-max-o MSG_DO_SCHEDULE_CALLBACK:I = 0x2

.field private static final greylist-max-o MSG_DO_SCHEDULE_VSYNC:I = 0x1

.field private static final greylist-max-o SKIPPED_FRAME_WARNING_LIMIT:I

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Choreographer"

.field private static final greylist-max-o USE_FRAME_TIME:Z

.field private static final greylist-max-p USE_VSYNC:Z

.field private static final blacklist VSYNC_CALLBACK_TOKEN:Ljava/lang/Object;

.field private static volatile greylist-max-o mMainInstance:Landroid/view/Choreographer;

.field private static volatile greylist-max-o sFrameDelay:J

.field private static final greylist-max-o sSfThreadInstance:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/view/Choreographer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sThreadInstance:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/view/Choreographer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

.field private greylist-max-o mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

.field private final greylist mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

.field private greylist-max-o mCallbacksRunning:Z

.field private greylist-max-o mDebugPrintNextFrameTimeDelta:Z

.field private final greylist mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

.field private greylist-max-o mFPSDivisor:I

.field private final blacklist mFrameData:Landroid/view/Choreographer$FrameData;

.field blacklist mFrameInfo:Landroid/graphics/FrameInfo;

.field private greylist-max-r mFrameIntervalNanos:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private greylist-max-o mFrameScheduled:Z

.field private final greylist-max-o mHandler:Landroid/view/Choreographer$FrameHandler;

.field private volatile blacklist mInDoFrameCallback:Z

.field private blacklist mLastFrameIntervalNanos:J

.field private greylist mLastFrameTimeNanos:J

.field private blacklist mLastNoOffsetFrameTimeNanos:J

.field private final blacklist mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

.field private final greylist-max-p mLock:Ljava/lang/Object;

.field private final greylist-max-o mLooper:Landroid/os/Looper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/view/Choreographer;)Landroid/view/Choreographer$FrameHandler;
    .locals 0

    iget-object p0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mobtainCallbackLocked(Landroid/view/Choreographer;JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/Choreographer;->obtainCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mrecycleCallbackLocked(Landroid/view/Choreographer;Landroid/view/Choreographer$CallbackRecord;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetFRAME_CALLBACK_TOKEN()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetVSYNC_CALLBACK_TOKEN()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/view/Choreographer;->VSYNC_CALLBACK_TOKEN:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputmMainInstance(Landroid/view/Choreographer;)V
    .locals 0

    sput-object p0, Landroid/view/Choreographer;->mMainInstance:Landroid/view/Choreographer;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 5

    .line 110
    const-wide/16 v0, 0xa

    sput-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    .line 113
    new-instance v0, Landroid/view/Choreographer$1;

    invoke-direct {v0}, Landroid/view/Choreographer$1;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    .line 132
    new-instance v0, Landroid/view/Choreographer$2;

    invoke-direct {v0}, Landroid/view/Choreographer$2;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->sSfThreadInstance:Ljava/lang/ThreadLocal;

    .line 146
    const-string v0, "debug.choreographer.vsync"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/Choreographer;->USE_VSYNC:Z

    .line 150
    const-string v0, "debug.choreographer.frametime"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    .line 155
    const-string v0, "debug.choreographer.skipwarning"

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/view/Choreographer;->SKIPPED_FRAME_WARNING_LIMIT:I

    .line 163
    new-instance v0, Landroid/view/Choreographer$3;

    invoke-direct {v0}, Landroid/view/Choreographer$3;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    .line 166
    new-instance v0, Landroid/view/Choreographer$4;

    invoke-direct {v0}, Landroid/view/Choreographer$4;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->VSYNC_CALLBACK_TOKEN:Ljava/lang/Object;

    .line 280
    const-string/jumbo v0, "traversal"

    const-string v1, "commit"

    const-string v2, "input"

    const-string v3, "animation"

    const-string v4, "insets_animation"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/Choreographer;->CALLBACK_TRACE_TITLES:[Ljava/lang/String;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Looper;I)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "vsyncSource"    # I

    .line 335
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/view/Choreographer;-><init>(Landroid/os/Looper;IJ)V

    .line 336
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Looper;IJ)V
    .locals 9
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "vsyncSource"    # I
    .param p3, "layerHandle"    # J

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    .line 207
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/Choreographer;->mFPSDivisor:I

    .line 208
    new-instance v1, Landroid/view/DisplayEventReceiver$VsyncEventData;

    invoke-direct {v1}, Landroid/view/DisplayEventReceiver$VsyncEventData;-><init>()V

    iput-object v1, p0, Landroid/view/Choreographer;->mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    .line 210
    new-instance v1, Landroid/view/Choreographer$FrameData;

    invoke-direct {v1}, Landroid/view/Choreographer$FrameData;-><init>()V

    iput-object v1, p0, Landroid/view/Choreographer;->mFrameData:Landroid/view/Choreographer$FrameData;

    .line 211
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/Choreographer;->mInDoFrameCallback:Z

    .line 249
    new-instance v1, Landroid/view/Choreographer$BufferStuffingState;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/Choreographer$BufferStuffingState;-><init>(Landroid/view/Choreographer-IA;)V

    iput-object v1, p0, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    .line 274
    new-instance v1, Landroid/graphics/FrameInfo;

    invoke-direct {v1}, Landroid/graphics/FrameInfo;-><init>()V

    iput-object v1, p0, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    .line 339
    iput-object p1, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    .line 340
    new-instance v1, Landroid/view/Choreographer$FrameHandler;

    invoke-direct {v1, p0, p1}, Landroid/view/Choreographer$FrameHandler;-><init>(Landroid/view/Choreographer;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    .line 341
    sget-boolean v1, Landroid/view/Choreographer;->USE_VSYNC:Z

    if-eqz v1, :cond_0

    .line 342
    new-instance v3, Landroid/view/Choreographer$FrameDisplayEventReceiver;

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-wide v7, p3

    .end local p1    # "looper":Landroid/os/Looper;
    .end local p2    # "vsyncSource":I
    .end local p3    # "layerHandle":J
    .local v5, "looper":Landroid/os/Looper;
    .local v6, "vsyncSource":I
    .local v7, "layerHandle":J
    invoke-direct/range {v3 .. v8}, Landroid/view/Choreographer$FrameDisplayEventReceiver;-><init>(Landroid/view/Choreographer;Landroid/os/Looper;IJ)V

    goto :goto_0

    .line 343
    .end local v5    # "looper":Landroid/os/Looper;
    .end local v6    # "vsyncSource":I
    .end local v7    # "layerHandle":J
    .restart local p1    # "looper":Landroid/os/Looper;
    .restart local p2    # "vsyncSource":I
    .restart local p3    # "layerHandle":J
    :cond_0
    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-wide v7, p3

    .end local p1    # "looper":Landroid/os/Looper;
    .end local p2    # "vsyncSource":I
    .end local p3    # "layerHandle":J
    .restart local v5    # "looper":Landroid/os/Looper;
    .restart local v6    # "vsyncSource":I
    .restart local v7    # "layerHandle":J
    move-object v3, v2

    :goto_0
    iput-object v3, v4, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    .line 344
    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, v4, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    .line 346
    const p1, 0x4e6e6b28    # 1.0E9f

    invoke-static {}, Landroid/view/Choreographer;->getRefreshRate()F

    move-result p2

    div-float/2addr p1, p2

    float-to-long p1, p1

    iput-wide p1, v4, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    .line 348
    const/4 p1, 0x5

    new-array p1, p1, [Landroid/view/Choreographer$CallbackQueue;

    iput-object p1, v4, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    .line 349
    const/4 p1, 0x0

    .local p1, "i":I
    :goto_1
    const/4 p2, 0x4

    if-gt p1, p2, :cond_1

    .line 350
    iget-object p2, v4, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    new-instance p3, Landroid/view/Choreographer$CallbackQueue;

    invoke-direct {p3, p0, v2}, Landroid/view/Choreographer$CallbackQueue;-><init>(Landroid/view/Choreographer;Landroid/view/Choreographer-IA;)V

    aput-object p3, p2, p1

    .line 349
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 353
    .end local p1    # "i":I
    :cond_1
    const-string p1, "debug.hwui.fps_divisor"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/Choreographer;->setFPSDivisor(I)V

    .line 354
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Looper;ILandroid/view/Choreographer-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/Choreographer;-><init>(Landroid/os/Looper;I)V

    return-void
.end method

.method private greylist-max-o dispose()V
    .locals 1

    .line 421
    iget-object v0, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-virtual {v0}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->dispose()V

    .line 422
    return-void
.end method

.method public static greylist getFrameDelay()J
    .locals 2

    .line 466
    sget-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    return-wide v0
.end method

.method public static whitelist getInstance()Landroid/view/Choreographer;
    .locals 1

    .line 370
    sget-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    return-object v0
.end method

.method static blacklist getInstanceForSurfaceControl(JLandroid/os/Looper;)Landroid/view/Choreographer;
    .locals 2
    .param p0, "layerHandle"    # J
    .param p2, "looper"    # Landroid/os/Looper;

    .line 397
    if-eqz p2, :cond_0

    .line 400
    new-instance v0, Landroid/view/Choreographer;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, p0, p1}, Landroid/view/Choreographer;-><init>(Landroid/os/Looper;IJ)V

    return-object v0

    .line 398
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The current thread must have a looper!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o getMainThreadInstance()Landroid/view/Choreographer;
    .locals 1

    .line 408
    sget-object v0, Landroid/view/Choreographer;->mMainInstance:Landroid/view/Choreographer;

    return-object v0
.end method

.method private static greylist-max-o getRefreshRate()F
    .locals 2

    .line 357
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 359
    .local v0, "di":Landroid/view/DisplayInfo;
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v1

    return v1
.end method

.method public static greylist getSfInstance()Landroid/view/Choreographer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 380
    sget-object v0, Landroid/view/Choreographer;->sSfThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    return-object v0
.end method

.method private greylist-max-o isRunningOnLooperThreadLocked()Z
    .locals 2

    .line 1222
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o obtainCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;
    .locals 3
    .param p1, "dueTime"    # J
    .param p3, "action"    # Ljava/lang/Object;
    .param p4, "token"    # Ljava/lang/Object;

    .line 1226
    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 1227
    .local v0, "callback":Landroid/view/Choreographer$CallbackRecord;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1228
    new-instance v2, Landroid/view/Choreographer$CallbackRecord;

    invoke-direct {v2, v1}, Landroid/view/Choreographer$CallbackRecord;-><init>(Landroid/view/Choreographer-IA;)V

    move-object v0, v2

    goto :goto_0

    .line 1230
    :cond_0
    iget-object v2, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    iput-object v2, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 1231
    iput-object v1, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1233
    :goto_0
    iput-wide p1, v0, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    .line 1234
    iput-object p3, v0, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    .line 1235
    iput-object p4, v0, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    .line 1236
    return-object v0
.end method

.method private greylist-max-o postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V
    .locals 7
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Object;
    .param p3, "token"    # Ljava/lang/Object;
    .param p4, "delayMillis"    # J

    .line 590
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 591
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 592
    .local v1, "now":J
    add-long v3, v1, p4

    .line 593
    .local v3, "dueTime":J
    iget-object v5, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v5, v5, p1

    invoke-virtual {v5, v3, v4, p2, p3}, Landroid/view/Choreographer$CallbackQueue;->addCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 595
    cmp-long v5, v3, v1

    if-gtz v5, :cond_0

    .line 596
    invoke-direct {p0, v1, v2}, Landroid/view/Choreographer;->scheduleFrameLocked(J)V

    goto :goto_0

    .line 598
    :cond_0
    iget-object v5, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, p2}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 599
    .local v5, "msg":Landroid/os/Message;
    iput p1, v5, Landroid/os/Message;->arg1:I

    .line 600
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 601
    iget-object v6, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v6, v5, v3, v4}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 603
    .end local v1    # "now":J
    .end local v3    # "dueTime":J
    .end local v5    # "msg":Landroid/os/Message;
    :goto_0
    monitor-exit v0

    .line 604
    return-void

    .line 603
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V
    .locals 1
    .param p1, "callback"    # Landroid/view/Choreographer$CallbackRecord;

    .line 1240
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    .line 1241
    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    .line 1242
    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1243
    iput-object p1, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 1244
    return-void
.end method

.method public static greylist-max-o releaseInstance()V
    .locals 2

    .line 415
    sget-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    .line 416
    .local v0, "old":Landroid/view/Choreographer;
    sget-object v1, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 417
    invoke-direct {v0}, Landroid/view/Choreographer;->dispose()V

    .line 418
    return-void
.end method

.method private greylist-max-o removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Object;
    .param p3, "token"    # Ljava/lang/Object;

    .line 653
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 654
    :try_start_0
    iget-object v1, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2, p3}, Landroid/view/Choreographer$CallbackQueue;->removeCallbacksLocked(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 655
    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    .line 656
    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Landroid/view/Choreographer$FrameHandler;->removeMessages(ILjava/lang/Object;)V

    .line 658
    :cond_0
    monitor-exit v0

    .line 659
    return-void

    .line 658
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o scheduleFrameLocked(J)V
    .locals 5
    .param p1, "now"    # J

    .line 843
    iget-boolean v0, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-nez v0, :cond_2

    .line 844
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    .line 845
    sget-boolean v1, Landroid/view/Choreographer;->USE_VSYNC:Z

    if-eqz v1, :cond_1

    .line 853
    invoke-direct {p0}, Landroid/view/Choreographer;->isRunningOnLooperThreadLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 854
    invoke-direct {p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    goto :goto_0

    .line 856
    :cond_0
    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v1, v0}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 857
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 858
    iget-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 859
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 861
    :cond_1
    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    sget-wide v3, Landroid/view/Choreographer;->sFrameDelay:J

    add-long/2addr v1, v3

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 866
    .local v1, "nextFrameTime":J
    iget-object v3, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 867
    .local v3, "msg":Landroid/os/Message;
    invoke-virtual {v3, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 868
    iget-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 871
    .end local v1    # "nextFrameTime":J
    .end local v3    # "msg":Landroid/os/Message;
    :cond_2
    :goto_0
    return-void
.end method

.method private greylist-max-r scheduleVsyncLocked()V
    .locals 3

    .line 1214
    const-wide/16 v0, 0x8

    :try_start_0
    const-string v2, "Choreographer#scheduleVsyncLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1215
    iget-object v2, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-virtual {v2}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->scheduleVsync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1217
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1218
    nop

    .line 1219
    return-void

    .line 1217
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1218
    throw v2
.end method

.method public static blacklist setFrameDelay(J)V
    .locals 0
    .param p0, "frameDelay"    # J

    .line 486
    sput-wide p0, Landroid/view/Choreographer;->sFrameDelay:J

    .line 487
    return-void
.end method

.method public static greylist-max-o subtractFrameDelay(J)J
    .locals 4
    .param p0, "delayMillis"    # J

    .line 512
    sget-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    .line 513
    .local v0, "frameDelay":J
    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    sub-long v2, p0, v0

    :goto_0
    return-wide v2
.end method

.method private blacklist traceMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 908
    const-wide/16 v0, 0x8

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 909
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 910
    return-void
.end method


# virtual methods
.method greylist-max-o doCallbacks(IJ)V
    .locals 19
    .param p1, "callbackType"    # I
    .param p2, "frameIntervalNanos"    # J

    .line 1128
    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v0, v1, Landroid/view/Choreographer;->mFrameData:Landroid/view/Choreographer$FrameData;

    invoke-static {v0}, Landroid/view/Choreographer$FrameData;->-$$Nest$fgetmFrameTimeNanos(Landroid/view/Choreographer$FrameData;)J

    move-result-wide v3

    .line 1129
    .local v3, "frameTimeNanos":J
    iget-object v5, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1133
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 1134
    .local v6, "now":J
    iget-object v0, v1, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v0, v0, v2

    const-wide/32 v8, 0xf4240

    div-long v8, v6, v8

    invoke-virtual {v0, v8, v9}, Landroid/view/Choreographer$CallbackQueue;->extractDueCallbacksLocked(J)Landroid/view/Choreographer$CallbackRecord;

    move-result-object v0

    move-object v8, v0

    .line 1136
    .local v8, "callbacks":Landroid/view/Choreographer$CallbackRecord;
    if-nez v8, :cond_0

    .line 1137
    monitor-exit v5

    return-void

    .line 1139
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/view/Choreographer;->mCallbacksRunning:Z

    .line 1149
    const/4 v0, 0x4

    const-wide/16 v9, 0x8

    if-ne v2, v0, :cond_2

    .line 1150
    sub-long v11, v6, v3

    .line 1151
    .local v11, "jitterNanos":J
    const-string v0, "jitterNanos"

    long-to-int v13, v11

    invoke-static {v9, v10, v0, v13}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 1152
    const-wide/16 v13, 0x0

    cmp-long v0, p2, v13

    if-lez v0, :cond_1

    const-wide/16 v13, 0x2

    mul-long v13, v13, p2

    cmp-long v0, v11, v13

    if-ltz v0, :cond_1

    .line 1153
    rem-long v13, v11, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    add-long v17, v13, p2

    .line 1163
    .local v17, "lastFrameOffset":J
    move-wide v15, v11

    .end local v11    # "jitterNanos":J
    .local v15, "jitterNanos":J
    sub-long v12, v6, v17

    .line 1164
    .end local v3    # "frameTimeNanos":J
    .local v12, "frameTimeNanos":J
    :try_start_1
    iput-wide v12, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    .line 1165
    iget-object v11, v1, Landroid/view/Choreographer;->mFrameData:Landroid/view/Choreographer$FrameData;

    iget-object v14, v1, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-virtual/range {v11 .. v16}, Landroid/view/Choreographer$FrameData;->update(JLandroid/view/DisplayEventReceiver;J)Landroid/view/Choreographer$FrameTimeline;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v3, v12

    goto :goto_0

    .line 1168
    .end local v6    # "now":J
    .end local v8    # "callbacks":Landroid/view/Choreographer$CallbackRecord;
    .end local v15    # "jitterNanos":J
    .end local v17    # "lastFrameOffset":J
    :catchall_0
    move-exception v0

    move-wide v3, v12

    goto :goto_3

    .line 1152
    .end local v12    # "frameTimeNanos":J
    .restart local v3    # "frameTimeNanos":J
    .restart local v6    # "now":J
    .restart local v8    # "callbacks":Landroid/view/Choreographer$CallbackRecord;
    .restart local v11    # "jitterNanos":J
    :cond_1
    move-wide v15, v11

    .line 1168
    .end local v6    # "now":J
    .end local v11    # "jitterNanos":J
    :cond_2
    :goto_0
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 1170
    const/4 v5, 0x0

    :try_start_3
    sget-object v0, Landroid/view/Choreographer;->CALLBACK_TRACE_TITLES:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1171
    move-object v0, v8

    .local v0, "c":Landroid/view/Choreographer$CallbackRecord;
    :goto_1
    if-eqz v0, :cond_3

    .line 1177
    iget-object v6, v1, Landroid/view/Choreographer;->mFrameData:Landroid/view/Choreographer$FrameData;

    invoke-virtual {v0, v6}, Landroid/view/Choreographer$CallbackRecord;->run(Landroid/view/Choreographer$FrameData;)V

    .line 1171
    iget-object v6, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v0, v6

    goto :goto_1

    .line 1180
    .end local v0    # "c":Landroid/view/Choreographer$CallbackRecord;
    :cond_3
    iget-object v6, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1181
    :try_start_4
    iput-boolean v5, v1, Landroid/view/Choreographer;->mCallbacksRunning:Z

    .line 1183
    :cond_4
    iget-object v0, v8, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1184
    .local v0, "next":Landroid/view/Choreographer$CallbackRecord;
    invoke-direct {v1, v8}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    .line 1185
    move-object v8, v0

    .line 1186
    .end local v0    # "next":Landroid/view/Choreographer$CallbackRecord;
    if-nez v8, :cond_4

    .line 1187
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1188
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 1189
    nop

    .line 1190
    return-void

    .line 1187
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 1180
    :catchall_2
    move-exception v0

    iget-object v6, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1181
    :try_start_6
    iput-boolean v5, v1, Landroid/view/Choreographer;->mCallbacksRunning:Z

    .line 1183
    :goto_2
    iget-object v5, v8, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1184
    .local v5, "next":Landroid/view/Choreographer$CallbackRecord;
    invoke-direct {v1, v8}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    .line 1185
    move-object v8, v5

    .line 1186
    .end local v5    # "next":Landroid/view/Choreographer$CallbackRecord;
    if-eqz v8, :cond_5

    goto :goto_2

    .line 1187
    :cond_5
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1188
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 1189
    throw v0

    .line 1187
    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 1168
    .end local v8    # "callbacks":Landroid/view/Choreographer$CallbackRecord;
    :catchall_4
    move-exception v0

    :goto_3
    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0
.end method

.method blacklist doFrame(JILandroid/view/DisplayEventReceiver$VsyncEventData;)V
    .locals 34
    .param p1, "frameTimeNanos"    # J
    .param p3, "frame"    # I
    .param p4, "vsyncEventData"    # Landroid/view/DisplayEventReceiver$VsyncEventData;

    .line 969
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p4

    iget-wide v5, v4, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameInterval:J

    .line 970
    .local v5, "frameIntervalNanos":J
    const/4 v7, 0x0

    .line 971
    .local v7, "resynced":Z
    move-wide/from16 v8, p1

    .line 975
    .local v8, "offsetFrameTimeNanos":J
    invoke-static {}, Landroid/view/flags/Flags;->bufferStuffingRecovery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 976
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/Choreographer;->updateBufferStuffingState(JLandroid/view/DisplayEventReceiver$VsyncEventData;)Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 988
    :pswitch_0
    invoke-direct {v1}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    .line 989
    return-void

    .line 984
    :pswitch_1
    sub-long v8, v2, v5

    .line 985
    goto :goto_0

    .line 980
    :pswitch_2
    nop

    .line 996
    :cond_0
    :goto_0
    const/4 v10, 0x0

    const-wide/16 v11, 0x8

    :try_start_0
    iget-object v0, v1, Landroid/view/Choreographer;->mFrameData:Landroid/view/Choreographer$FrameData;

    invoke-virtual {v0, v8, v9, v4}, Landroid/view/Choreographer$FrameData;->update(JLandroid/view/DisplayEventReceiver$VsyncEventData;)Landroid/view/Choreographer$FrameTimeline;

    move-result-object v0

    move-object v13, v0

    .line 997
    .local v13, "timeline":Landroid/view/Choreographer$FrameTimeline;
    invoke-static {v11, v12}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Choreographer#doFrame "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v13}, Landroid/view/Choreographer$FrameTimeline;->-$$Nest$fgetmVsyncId(Landroid/view/Choreographer$FrameTimeline;)J

    move-result-wide v14

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v12, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1000
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/view/Choreographer;->mInDoFrameCallback:Z

    .line 1002
    :cond_1
    iget-object v14, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    .line 1003
    :try_start_1
    iget-boolean v0, v1, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-nez v0, :cond_3

    .line 1004
    const-string v0, "Frame not scheduled"

    invoke-direct {v1, v0}, Landroid/view/Choreographer;->traceMessage(Ljava/lang/String;)V

    .line 1005
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    .line 1110
    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    .line 1111
    iput-boolean v10, v1, Landroid/view/Choreographer;->mInDoFrameCallback:Z

    .line 1112
    if-eqz v7, :cond_2

    .line 1113
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 1115
    :cond_2
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 1005
    return-void

    .line 1007
    :cond_3
    :try_start_2
    iput-wide v2, v1, Landroid/view/Choreographer;->mLastNoOffsetFrameTimeNanos:J

    .line 1015
    move-wide/from16 v18, v8

    .line 1016
    .local v18, "intendedFrameTimeNanos":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v26
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    .line 1019
    .local v26, "startNanos":J
    sub-long v24, v26, v2

    .line 1020
    .local v24, "jitterNanos":J
    cmp-long v0, v24, v5

    const-wide/16 v28, 0x0

    if-ltz v0, :cond_7

    .line 1021
    move-wide/from16 v2, v26

    .line 1022
    .end local p1    # "frameTimeNanos":J
    .local v2, "frameTimeNanos":J
    cmp-long v0, v5, v28

    if-nez v0, :cond_4

    .line 1023
    :try_start_3
    const-string v0, "Choreographer"

    const-string v15, "Vsync data empty due to timeout"

    invoke-static {v0, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-wide/from16 v30, v11

    goto :goto_2

    .line 1087
    .end local v18    # "intendedFrameTimeNanos":J
    .end local v24    # "jitterNanos":J
    .end local v26    # "startNanos":J
    :catchall_0
    move-exception v0

    move-wide/from16 v20, v2

    goto/16 :goto_8

    .line 1025
    .restart local v18    # "intendedFrameTimeNanos":J
    .restart local v24    # "jitterNanos":J
    .restart local v26    # "startNanos":J
    :cond_4
    :try_start_4
    rem-long v20, v24, v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 1026
    .local v20, "lastFrameOffset":J
    sub-long v2, v2, v20

    .line 1027
    :try_start_5
    div-long v22, v24, v5

    move-wide/from16 p1, v22

    .line 1028
    .local p1, "skippedFrames":J
    sget v0, Landroid/view/Choreographer;->SKIPPED_FRAME_WARNING_LIMIT:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-wide/from16 v30, v11

    int-to-long v11, v0

    cmp-long v0, p1, v11

    if-ltz v0, :cond_5

    .line 1029
    :try_start_6
    const-string v0, "Choreographer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipped "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-wide/from16 v22, v2

    move-wide/from16 v2, p1

    .end local p1    # "skippedFrames":J
    .local v2, "skippedFrames":J
    .local v22, "frameTimeNanos":J
    :try_start_7
    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " frames!  The application may be doing too much work on its main thread."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 1087
    .end local v2    # "skippedFrames":J
    .end local v18    # "intendedFrameTimeNanos":J
    .end local v20    # "lastFrameOffset":J
    .end local v24    # "jitterNanos":J
    .end local v26    # "startNanos":J
    :catchall_1
    move-exception v0

    move-wide/from16 v20, v22

    goto/16 :goto_8

    .end local v22    # "frameTimeNanos":J
    .local v2, "frameTimeNanos":J
    :catchall_2
    move-exception v0

    move-wide/from16 v22, v2

    goto :goto_4

    .line 1028
    .restart local v18    # "intendedFrameTimeNanos":J
    .restart local v20    # "lastFrameOffset":J
    .restart local v24    # "jitterNanos":J
    .restart local v26    # "startNanos":J
    .restart local p1    # "skippedFrames":J
    :cond_5
    move-wide/from16 v22, v2

    move-wide/from16 v2, p1

    .line 1042
    .end local v2    # "frameTimeNanos":J
    .end local v20    # "lastFrameOffset":J
    .end local p1    # "skippedFrames":J
    .restart local v22    # "frameTimeNanos":J
    :goto_1
    move-wide/from16 v2, v22

    .end local v22    # "frameTimeNanos":J
    .restart local v2    # "frameTimeNanos":J
    :goto_2
    :try_start_8
    iget-object v0, v1, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    iget-boolean v0, v0, Landroid/view/Choreographer$BufferStuffingState;->isRecovering:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v0, :cond_6

    .line 1043
    sub-long/2addr v2, v5

    move-wide/from16 v21, v2

    goto :goto_3

    .line 1042
    :cond_6
    move-wide/from16 v21, v2

    .line 1049
    .end local v2    # "frameTimeNanos":J
    .local v21, "frameTimeNanos":J
    :goto_3
    :try_start_9
    iget-object v0, v1, Landroid/view/Choreographer;->mFrameData:Landroid/view/Choreographer$FrameData;

    iget-object v2, v1, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    move-object/from16 v20, v0

    move-object/from16 v23, v2

    invoke-virtual/range {v20 .. v25}, Landroid/view/Choreographer$FrameData;->update(JLandroid/view/DisplayEventReceiver;J)Landroid/view/Choreographer$FrameTimeline;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-wide/from16 v11, v24

    .end local v24    # "jitterNanos":J
    .local v11, "jitterNanos":J
    move-object v13, v0

    .line 1051
    const/4 v7, 0x1

    move-wide/from16 v20, v21

    goto :goto_5

    .line 1087
    .end local v11    # "jitterNanos":J
    .end local v18    # "intendedFrameTimeNanos":J
    .end local v26    # "startNanos":J
    :catchall_3
    move-exception v0

    move-wide/from16 v20, v21

    goto/16 :goto_8

    .end local v21    # "frameTimeNanos":J
    .restart local v2    # "frameTimeNanos":J
    :catchall_4
    move-exception v0

    move-wide/from16 v22, v2

    move-wide/from16 v30, v11

    :goto_4
    move-wide/from16 v20, v22

    .end local v2    # "frameTimeNanos":J
    .restart local v22    # "frameTimeNanos":J
    goto/16 :goto_8

    .end local v22    # "frameTimeNanos":J
    .restart local v2    # "frameTimeNanos":J
    :catchall_5
    move-exception v0

    move-wide/from16 v30, v11

    move-wide/from16 v20, v2

    goto/16 :goto_8

    .line 1020
    .end local v2    # "frameTimeNanos":J
    .restart local v18    # "intendedFrameTimeNanos":J
    .restart local v24    # "jitterNanos":J
    .restart local v26    # "startNanos":J
    .local p1, "frameTimeNanos":J
    :cond_7
    move-wide/from16 v30, v11

    move-wide/from16 v11, v24

    .end local v24    # "jitterNanos":J
    .restart local v11    # "jitterNanos":J
    move-wide/from16 v20, v2

    .line 1054
    .end local p1    # "frameTimeNanos":J
    .local v20, "frameTimeNanos":J
    :goto_5
    :try_start_a
    iget-wide v2, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    cmp-long v0, v20, v2

    if-gez v0, :cond_a

    .line 1059
    const-string v0, "Frame time goes backward"

    invoke-direct {v1, v0}, Landroid/view/Choreographer;->traceMessage(Ljava/lang/String;)V

    .line 1060
    iget-object v0, v1, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    iget-boolean v0, v0, Landroid/view/Choreographer$BufferStuffingState;->isRecovering:Z

    if-eqz v0, :cond_8

    .line 1061
    iget-object v0, v1, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    iget v2, v0, Landroid/view/Choreographer$BufferStuffingState;->numberWaitsForNextVsync:I

    const/16 v16, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/view/Choreographer$BufferStuffingState;->numberWaitsForNextVsync:I

    .line 1063
    :cond_8
    invoke-direct {v1}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    .line 1064
    monitor-exit v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    .line 1110
    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    .line 1111
    iput-boolean v10, v1, Landroid/view/Choreographer;->mInDoFrameCallback:Z

    .line 1112
    if-eqz v7, :cond_9

    .line 1113
    invoke-static/range {v30 .. v31}, Landroid/os/Trace;->traceEnd(J)V

    .line 1115
    :cond_9
    invoke-static/range {v30 .. v31}, Landroid/os/Trace;->traceEnd(J)V

    .line 1064
    return-void

    .line 1067
    :cond_a
    :try_start_b
    iget v0, v1, Landroid/view/Choreographer;->mFPSDivisor:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_d

    .line 1068
    iget-wide v2, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    sub-long v2, v20, v2

    .line 1069
    .local v2, "timeSinceVsync":J
    iget v0, v1, Landroid/view/Choreographer;->mFPSDivisor:I

    move-wide/from16 v32, v11

    .end local v11    # "jitterNanos":J
    .local v32, "jitterNanos":J
    int-to-long v10, v0

    mul-long/2addr v10, v5

    cmp-long v0, v2, v10

    if-gez v0, :cond_e

    cmp-long v0, v2, v28

    if-lez v0, :cond_e

    .line 1070
    const-string v0, "Frame skipped due to FPSDivisor"

    invoke-direct {v1, v0}, Landroid/view/Choreographer;->traceMessage(Ljava/lang/String;)V

    .line 1071
    iget-object v0, v1, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    iget-boolean v0, v0, Landroid/view/Choreographer$BufferStuffingState;->isRecovering:Z

    if-eqz v0, :cond_b

    .line 1072
    iget-object v0, v1, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    iget v10, v0, Landroid/view/Choreographer$BufferStuffingState;->numberWaitsForNextVsync:I

    const/16 v16, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v0, Landroid/view/Choreographer$BufferStuffingState;->numberWaitsForNextVsync:I

    .line 1074
    :cond_b
    invoke-direct {v1}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    .line 1075
    monitor-exit v14
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 1110
    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    .line 1111
    const/4 v15, 0x0

    iput-boolean v15, v1, Landroid/view/Choreographer;->mInDoFrameCallback:Z

    .line 1112
    if-eqz v7, :cond_c

    .line 1113
    invoke-static/range {v30 .. v31}, Landroid/os/Trace;->traceEnd(J)V

    .line 1115
    :cond_c
    invoke-static/range {v30 .. v31}, Landroid/os/Trace;->traceEnd(J)V

    .line 1075
    return-void

    .line 1067
    .end local v2    # "timeSinceVsync":J
    .end local v32    # "jitterNanos":J
    .restart local v11    # "jitterNanos":J
    :cond_d
    move-wide/from16 v32, v11

    .line 1079
    .end local v11    # "jitterNanos":J
    .restart local v32    # "jitterNanos":J
    :cond_e
    :try_start_c
    iget-object v0, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    .line 1080
    invoke-virtual {v4}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object v2

    iget-wide v2, v2, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    .line 1081
    invoke-virtual {v4}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object v10

    iget-wide v10, v10, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J

    move-wide/from16 v22, v2

    iget-wide v2, v4, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameInterval:J

    .line 1079
    move-object/from16 v17, v0

    move-wide/from16 v28, v2

    move-wide/from16 v24, v10

    invoke-virtual/range {v17 .. v29}, Landroid/graphics/FrameInfo;->setVsync(JJJJJJ)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    move-wide/from16 v2, v20

    .line 1083
    .end local v20    # "frameTimeNanos":J
    .local v2, "frameTimeNanos":J
    const/4 v15, 0x0

    :try_start_d
    iput-boolean v15, v1, Landroid/view/Choreographer;->mFrameScheduled:Z

    .line 1084
    iput-wide v2, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    .line 1085
    iput-wide v5, v1, Landroid/view/Choreographer;->mLastFrameIntervalNanos:J

    .line 1086
    iget-object v0, v1, Landroid/view/Choreographer;->mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    invoke-virtual {v0, v4}, Landroid/view/DisplayEventReceiver$VsyncEventData;->copyFrom(Landroid/view/DisplayEventReceiver$VsyncEventData;)V

    .line 1087
    .end local v18    # "intendedFrameTimeNanos":J
    .end local v32    # "jitterNanos":J
    monitor-exit v14
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 1089
    if-eqz v7, :cond_f

    :try_start_e
    invoke-static/range {v30 .. v31}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1090
    const-string v0, "Choreographer#doFrame - resynced to %d in %.1fms"

    invoke-static {v13}, Landroid/view/Choreographer$FrameTimeline;->-$$Nest$fgetmVsyncId(Landroid/view/Choreographer$FrameTimeline;)J

    move-result-wide v10

    .line 1091
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v13}, Landroid/view/Choreographer$FrameTimeline;->-$$Nest$fgetmDeadlineNanos(Landroid/view/Choreographer$FrameTimeline;)J

    move-result-wide v11

    sub-long v11, v11, v26

    long-to-float v11, v11

    const v12, 0x358637bd    # 1.0E-6f

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    filled-new-array {v10, v11}, [Ljava/lang/Object;

    move-result-object v10

    .line 1090
    invoke-static {v0, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1092
    .local v0, "message":Ljava/lang/String;
    move-wide/from16 v10, v30

    invoke-static {v10, v11, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto :goto_6

    .line 1110
    .end local v0    # "message":Ljava/lang/String;
    .end local v13    # "timeline":Landroid/view/Choreographer$FrameTimeline;
    .end local v26    # "startNanos":J
    :catchall_6
    move-exception v0

    goto :goto_9

    .line 1095
    .restart local v13    # "timeline":Landroid/view/Choreographer$FrameTimeline;
    .restart local v26    # "startNanos":J
    :cond_f
    :goto_6
    const-wide/32 v10, 0xf4240

    :try_start_f
    div-long v10, v2, v10
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    move-wide/from16 v20, v2

    .end local v2    # "frameTimeNanos":J
    .restart local v20    # "frameTimeNanos":J
    :try_start_10
    invoke-static {v13}, Landroid/view/Choreographer$FrameTimeline;->-$$Nest$fgetmExpectedPresentationTimeNanos(Landroid/view/Choreographer$FrameTimeline;)J

    move-result-wide v2

    invoke-static {v10, v11, v2, v3}, Landroid/view/animation/AnimationUtils;->lockAnimationClock(JJ)V

    .line 1098
    iget-object v0, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    invoke-virtual {v0}, Landroid/graphics/FrameInfo;->markInputHandlingStart()V

    .line 1099
    const/4 v15, 0x0

    invoke-virtual {v1, v15, v5, v6}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    .line 1101
    iget-object v0, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    invoke-virtual {v0}, Landroid/graphics/FrameInfo;->markAnimationsStart()V

    .line 1102
    const/4 v0, 0x1

    invoke-virtual {v1, v0, v5, v6}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    .line 1103
    const/4 v0, 0x2

    invoke-virtual {v1, v0, v5, v6}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    .line 1105
    iget-object v0, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    invoke-virtual {v0}, Landroid/graphics/FrameInfo;->markPerformTraversalsStart()V

    .line 1106
    const/4 v0, 0x3

    invoke-virtual {v1, v0, v5, v6}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    .line 1108
    const/4 v0, 0x4

    invoke-virtual {v1, v0, v5, v6}, Landroid/view/Choreographer;->doCallbacks(IJ)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    .line 1110
    .end local v13    # "timeline":Landroid/view/Choreographer$FrameTimeline;
    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    .line 1111
    const/4 v15, 0x0

    iput-boolean v15, v1, Landroid/view/Choreographer;->mInDoFrameCallback:Z

    .line 1112
    if-eqz v7, :cond_10

    .line 1113
    const-wide/16 v30, 0x8

    invoke-static/range {v30 .. v31}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_7

    .line 1112
    :cond_10
    const-wide/16 v30, 0x8

    .line 1115
    :goto_7
    invoke-static/range {v30 .. v31}, Landroid/os/Trace;->traceEnd(J)V

    .line 1116
    nop

    .line 1124
    return-void

    .line 1110
    .end local v20    # "frameTimeNanos":J
    .end local v26    # "startNanos":J
    .restart local v2    # "frameTimeNanos":J
    :catchall_7
    move-exception v0

    move-wide/from16 v20, v2

    .end local v2    # "frameTimeNanos":J
    .restart local v20    # "frameTimeNanos":J
    goto :goto_9

    .line 1087
    .end local v20    # "frameTimeNanos":J
    .restart local v2    # "frameTimeNanos":J
    .restart local v13    # "timeline":Landroid/view/Choreographer$FrameTimeline;
    :catchall_8
    move-exception v0

    move-wide/from16 v20, v2

    .end local v2    # "frameTimeNanos":J
    .restart local v20    # "frameTimeNanos":J
    goto :goto_8

    .end local v20    # "frameTimeNanos":J
    .restart local p1    # "frameTimeNanos":J
    :catchall_9
    move-exception v0

    move-wide/from16 v20, v2

    .end local p1    # "frameTimeNanos":J
    .restart local v20    # "frameTimeNanos":J
    :goto_8
    :try_start_11
    monitor-exit v14
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    .end local v5    # "frameIntervalNanos":J
    .end local v7    # "resynced":Z
    .end local v8    # "offsetFrameTimeNanos":J
    .end local v20    # "frameTimeNanos":J
    .end local p0    # "this":Landroid/view/Choreographer;
    .end local p3    # "frame":I
    .end local p4    # "vsyncEventData":Landroid/view/DisplayEventReceiver$VsyncEventData;
    :try_start_12
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    .line 1110
    .end local v13    # "timeline":Landroid/view/Choreographer$FrameTimeline;
    .restart local v5    # "frameIntervalNanos":J
    .restart local v7    # "resynced":Z
    .restart local v8    # "offsetFrameTimeNanos":J
    .restart local v20    # "frameTimeNanos":J
    .restart local p0    # "this":Landroid/view/Choreographer;
    .restart local p3    # "frame":I
    .restart local p4    # "vsyncEventData":Landroid/view/DisplayEventReceiver$VsyncEventData;
    :catchall_a
    move-exception v0

    move-wide/from16 v2, v20

    goto :goto_9

    .line 1087
    .restart local v13    # "timeline":Landroid/view/Choreographer$FrameTimeline;
    :catchall_b
    move-exception v0

    goto :goto_8

    .line 1110
    .end local v13    # "timeline":Landroid/view/Choreographer$FrameTimeline;
    .end local v20    # "frameTimeNanos":J
    .restart local p1    # "frameTimeNanos":J
    :catchall_c
    move-exception v0

    .end local p1    # "frameTimeNanos":J
    .restart local v2    # "frameTimeNanos":J
    :goto_9
    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    .line 1111
    const/4 v15, 0x0

    iput-boolean v15, v1, Landroid/view/Choreographer;->mInDoFrameCallback:Z

    .line 1112
    if-eqz v7, :cond_11

    .line 1113
    const-wide/16 v30, 0x8

    invoke-static/range {v30 .. v31}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_a

    .line 1112
    :cond_11
    const-wide/16 v30, 0x8

    .line 1115
    :goto_a
    invoke-static/range {v30 .. v31}, Landroid/os/Trace;->traceEnd(J)V

    .line 1116
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method greylist-max-o doScheduleCallback(I)V
    .locals 4
    .param p1, "callbackType"    # I

    .line 1201
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1202
    :try_start_0
    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-nez v1, :cond_0

    .line 1203
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1204
    .local v1, "now":J
    iget-object v3, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v3, v3, p1

    invoke-virtual {v3, v1, v2}, Landroid/view/Choreographer$CallbackQueue;->hasDueCallbacksLocked(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1205
    invoke-direct {p0, v1, v2}, Landroid/view/Choreographer;->scheduleFrameLocked(J)V

    .line 1208
    .end local v1    # "now":J
    :cond_0
    monitor-exit v0

    .line 1209
    return-void

    .line 1208
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method greylist-max-o doScheduleVsync()V
    .locals 2

    .line 1193
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1194
    :try_start_0
    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-eqz v1, :cond_0

    .line 1195
    invoke-direct {p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    .line 1197
    :cond_0
    monitor-exit v0

    .line 1198
    return-void

    .line 1197
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method greylist-max-o dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Choreographer:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mFrameScheduled="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 530
    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 531
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mLastFrameTime="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 532
    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 533
    return-void
.end method

.method public blacklist getExpectedPresentationTimeMillis()J
    .locals 4

    .line 820
    invoke-virtual {p0}, Landroid/view/Choreographer;->getExpectedPresentationTimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getExpectedPresentationTimeNanos()J
    .locals 2

    .line 807
    iget-object v0, p0, Landroid/view/Choreographer;->mFrameData:Landroid/view/Choreographer$FrameData;

    invoke-virtual {v0}, Landroid/view/Choreographer$FrameData;->getPreferredFrameTimeline()Landroid/view/Choreographer$FrameTimeline;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer$FrameTimeline;->getExpectedPresentationTimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getFrameDeadline()J
    .locals 2

    .line 898
    iget-object v0, p0, Landroid/view/Choreographer;->mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    invoke-virtual {v0}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object v0

    iget-wide v0, v0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J

    return-wide v0
.end method

.method public greylist-max-o getFrameIntervalNanos()J
    .locals 3

    .line 521
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 522
    :try_start_0
    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameIntervalNanos:J

    monitor-exit v0

    return-wide v1

    .line 523
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist getFrameTime()J
    .locals 4

    .line 755
    invoke-virtual {p0}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist getFrameTimeNanos()J
    .locals 3

    .line 770
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 771
    :try_start_0
    iget-boolean v1, p0, Landroid/view/Choreographer;->mCallbacksRunning:Z

    if-eqz v1, :cond_1

    .line 775
    sget-boolean v1, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    :goto_0
    monitor-exit v0

    return-wide v1

    .line 772
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This method must only be called as part of a callback while a frame is in progress."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/view/Choreographer;
    throw v1

    .line 776
    .restart local p0    # "this":Landroid/view/Choreographer;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o getLastFrameTimeNanos()J
    .locals 3

    .line 786
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 787
    :try_start_0
    sget-boolean v1, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    :goto_0
    monitor-exit v0

    return-wide v1

    .line 788
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getLatestExpectedPresentTimeNanos()J
    .locals 2

    .line 834
    iget-object v0, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    if-nez v0, :cond_0

    .line 835
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0

    .line 838
    :cond_0
    iget-object v0, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-virtual {v0}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->getLatestVsyncEventData()Landroid/view/DisplayEventReceiver$VsyncEventData;

    move-result-object v0

    .line 839
    invoke-virtual {v0}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object v0

    iget-wide v0, v0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->expectedPresentationTime:J

    .line 838
    return-wide v0
.end method

.method public blacklist getLooper()Landroid/os/Looper;
    .locals 1

    .line 445
    iget-object v0, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public blacklist getVsyncId()J
    .locals 5

    .line 882
    iget-boolean v0, p0, Landroid/view/Choreographer;->mInDoFrameCallback:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 883
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iget-object v3, p0, Landroid/view/Choreographer;->mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    .line 884
    invoke-virtual {v3}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object v3

    iget-wide v3, v3, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v4

    if-ne p0, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 883
    const-string/jumbo v4, "unsync-vsync-id=%d isSfChoreo=%s"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 885
    .local v2, "message":Ljava/lang/String;
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 887
    .end local v2    # "message":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Landroid/view/Choreographer;->mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    invoke-virtual {v0}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object v0

    iget-wide v0, v0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    return-wide v0
.end method

.method greylist invalidate()V
    .locals 0

    .line 430
    invoke-direct {p0}, Landroid/view/Choreographer;->dispose()V

    .line 431
    return-void
.end method

.method blacklist isTheLooperSame(Landroid/os/Looper;)Z
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .line 438
    iget-object v0, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist onWaitForBufferRelease(J)V
    .locals 4
    .param p1, "durationNanos"    # J

    .line 258
    iget-wide v0, p0, Landroid/view/Choreographer;->mLastFrameIntervalNanos:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 259
    iget-object v0, p0, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    iget-object v0, v0, Landroid/view/Choreographer$BufferStuffingState;->isStuffed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 261
    :cond_0
    return-void
.end method

.method public greylist postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .locals 6
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "token"    # Ljava/lang/Object;

    .line 551
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "callbackType":I
    .end local p2    # "action":Ljava/lang/Runnable;
    .end local p3    # "token":Ljava/lang/Object;
    .local v1, "callbackType":I
    .local v2, "action":Ljava/lang/Runnable;
    .local v3, "token":Ljava/lang/Object;
    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    .line 552
    return-void
.end method

.method public greylist postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V
    .locals 2
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "token"    # Ljava/lang/Object;
    .param p4, "delayMillis"    # J

    .line 572
    if-eqz p2, :cond_1

    .line 575
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    .line 579
    invoke-direct/range {p0 .. p5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    .line 580
    return-void

    .line 576
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callbackType is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "action must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/Choreographer$FrameCallback;

    .line 673
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    .line 674
    return-void
.end method

.method public whitelist postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V
    .locals 6
    .param p1, "callback"    # Landroid/view/Choreographer$FrameCallback;
    .param p2, "delayMillis"    # J

    .line 689
    if-eqz p1, :cond_0

    .line 693
    const/4 v1, 0x1

    sget-object v3, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    .end local p1    # "callback":Landroid/view/Choreographer$FrameCallback;
    .end local p2    # "delayMillis":J
    .local v2, "callback":Landroid/view/Choreographer$FrameCallback;
    .local v4, "delayMillis":J
    invoke-direct/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    .line 695
    return-void

    .line 690
    .end local v2    # "callback":Landroid/view/Choreographer$FrameCallback;
    .end local v4    # "delayMillis":J
    .restart local p1    # "callback":Landroid/view/Choreographer$FrameCallback;
    .restart local p2    # "delayMillis":J
    :cond_0
    move-object v2, p1

    move-wide v4, p2

    .end local p1    # "callback":Landroid/view/Choreographer$FrameCallback;
    .end local p2    # "delayMillis":J
    .restart local v2    # "callback":Landroid/view/Choreographer$FrameCallback;
    .restart local v4    # "delayMillis":J
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callback must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist postVsyncCallback(Landroid/view/Choreographer$VsyncCallback;)V
    .locals 6
    .param p1, "callback"    # Landroid/view/Choreographer$VsyncCallback;

    .line 617
    if-eqz p1, :cond_0

    .line 621
    sget-object v3, Landroid/view/Choreographer;->VSYNC_CALLBACK_TOKEN:Ljava/lang/Object;

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    .end local p1    # "callback":Landroid/view/Choreographer$VsyncCallback;
    .local v2, "callback":Landroid/view/Choreographer$VsyncCallback;
    invoke-direct/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    .line 622
    return-void

    .line 618
    .end local v2    # "callback":Landroid/view/Choreographer$VsyncCallback;
    .restart local p1    # "callback":Landroid/view/Choreographer$VsyncCallback;
    :cond_0
    move-object v2, p1

    .end local p1    # "callback":Landroid/view/Choreographer$VsyncCallback;
    .restart local v2    # "callback":Landroid/view/Choreographer$VsyncCallback;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "callback must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .locals 2
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "token"    # Ljava/lang/Object;

    .line 640
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    .line 644
    invoke-direct {p0, p1, p2, p3}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 645
    return-void

    .line 641
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callbackType is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/Choreographer$FrameCallback;

    .line 706
    if-eqz p1, :cond_0

    .line 710
    const/4 v0, 0x1

    sget-object v1, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    invoke-direct {p0, v0, p1, v1}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 711
    return-void

    .line 707
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeVsyncCallback(Landroid/view/Choreographer$VsyncCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/Choreographer$VsyncCallback;

    .line 721
    if-eqz p1, :cond_0

    .line 725
    const/4 v0, 0x1

    sget-object v1, Landroid/view/Choreographer;->VSYNC_CALLBACK_TOKEN:Ljava/lang/Object;

    invoke-direct {p0, v0, p1, v1}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 726
    return-void

    .line 722
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o setFPSDivisor(I)V
    .locals 0
    .param p1, "divisor"    # I

    .line 902
    if-gtz p1, :cond_0

    const/4 p1, 0x1

    .line 903
    :cond_0
    iput p1, p0, Landroid/view/Choreographer;->mFPSDivisor:I

    .line 904
    invoke-static {p1}, Landroid/view/ThreadedRenderer;->setFPSDivisor(I)V

    .line 905
    return-void
.end method

.method blacklist updateBufferStuffingState(JLandroid/view/DisplayEventReceiver$VsyncEventData;)Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;
    .locals 9
    .param p1, "frameTimeNanos"    # J
    .param p3, "vsyncEventData"    # Landroid/view/DisplayEventReceiver$VsyncEventData;

    .line 916
    iget-object v0, p0, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    iget-boolean v0, v0, Landroid/view/Choreographer$BufferStuffingState;->isRecovering:Z

    const-string v1, "Buffer stuffing recovery"

    const/4 v2, 0x0

    const-wide/16 v3, 0x8

    if-nez v0, :cond_2

    .line 917
    iget-object v0, p0, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    iget-object v0, v0, Landroid/view/Choreographer$BufferStuffingState;->isStuffed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 918
    sget-object v0, Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;->NONE:Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;

    return-object v0

    .line 923
    :cond_0
    iget-object v0, p0, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/view/Choreographer$BufferStuffingState;->isRecovering:Z

    .line 924
    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thread "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 927
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", recover frame"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 925
    invoke-static {v3, v4, v1, v0, v2}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 929
    :cond_1
    sget-object v0, Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;->DELAY_FRAME:Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;

    return-object v0

    .line 935
    :cond_2
    iget-object v0, p0, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    iget v0, v0, Landroid/view/Choreographer$BufferStuffingState;->numberWaitsForNextVsync:I

    add-int/lit8 v0, v0, 0x2

    .line 936
    .local v0, "totalFrameDelays":I
    iget-wide v5, p0, Landroid/view/Choreographer;->mLastFrameIntervalNanos:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_3

    .line 937
    iget-wide v5, p0, Landroid/view/Choreographer;->mLastNoOffsetFrameTimeNanos:J

    sub-long v5, p1, v5

    iget-wide v7, p0, Landroid/view/Choreographer;->mLastFrameIntervalNanos:J

    div-long v7, v5, v7

    goto :goto_0

    :cond_3
    nop

    .line 943
    .local v7, "vsyncsSinceLastCallback":J
    :goto_0
    int-to-long v5, v0

    cmp-long v5, v7, v5

    if-lez v5, :cond_5

    .line 947
    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 948
    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 951
    :cond_4
    iget-object v1, p0, Landroid/view/Choreographer;->mBufferStuffingState:Landroid/view/Choreographer$BufferStuffingState;

    invoke-virtual {v1}, Landroid/view/Choreographer$BufferStuffingState;->reset()V

    .line 952
    sget-object v1, Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;->NONE:Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;

    return-object v1

    .line 958
    :cond_5
    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 959
    const-string v2, "Negative offset added to animation"

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 963
    :cond_6
    sget-object v1, Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;->OFFSET:Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;

    return-object v1
.end method
