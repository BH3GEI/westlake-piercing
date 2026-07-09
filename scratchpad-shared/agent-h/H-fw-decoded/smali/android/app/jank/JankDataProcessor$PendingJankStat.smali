.class public final Landroid/app/jank/JankDataProcessor$PendingJankStat;
.super Ljava/lang/Object;
.source "JankDataProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/jank/JankDataProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingJankStat"
.end annotation


# static fields
.field private static final NANOS_PER_MS:I = 0xf4240

.field private static final sFrameOverrunHistogramBounds:[I


# instance fields
.field private mActivityName:Ljava/lang/String;

.field private final mFrameOverrunBuckets:[I

.field private mJankyFrames:J

.field private mRefreshRate:I

.field private mTotalFrames:J

.field private mUid:I

.field private mWidgetCategory:Ljava/lang/String;

.field private mWidgetId:Ljava/lang/String;

.field private mWidgetState:Ljava/lang/String;

.field public processedVsyncId:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivityName(Landroid/app/jank/JankDataProcessor$PendingJankStat;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mActivityName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrameOverrunBuckets(Landroid/app/jank/JankDataProcessor$PendingJankStat;)[I
    .locals 0

    iget-object p0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mFrameOverrunBuckets:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmJankyFrames(Landroid/app/jank/JankDataProcessor$PendingJankStat;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mJankyFrames:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmTotalFrames(Landroid/app/jank/JankDataProcessor$PendingJankStat;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mTotalFrames:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputmActivityName(Landroid/app/jank/JankDataProcessor$PendingJankStat;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mActivityName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmJankyFrames(Landroid/app/jank/JankDataProcessor$PendingJankStat;J)V
    .locals 0

    iput-wide p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mJankyFrames:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTotalFrames(Landroid/app/jank/JankDataProcessor$PendingJankStat;J)V
    .locals 0

    iput-wide p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mTotalFrames:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUid(Landroid/app/jank/JankDataProcessor$PendingJankStat;I)V
    .locals 0

    iput p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mUid:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWidgetCategory(Landroid/app/jank/JankDataProcessor$PendingJankStat;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mWidgetCategory:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWidgetId(Landroid/app/jank/JankDataProcessor$PendingJankStat;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mWidgetId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWidgetState(Landroid/app/jank/JankDataProcessor$PendingJankStat;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mWidgetState:Ljava/lang/String;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 363
    const/16 v0, 0x35

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->sFrameOverrunHistogramBounds:[I

    return-void

    :array_0
    .array-data 4
        -0x80000000
        -0xc8
        -0x96
        -0x64
        -0x5a
        -0x50
        -0x46
        -0x3c
        -0x32
        -0x28
        -0x1e
        -0x19
        -0x14
        -0x12
        -0x10
        -0xe
        -0xc
        -0xa
        -0x8
        -0x6
        -0x4
        -0x2
        0x0
        0x2
        0x4
        0x6
        0x8
        0xa
        0xc
        0xe
        0x10
        0x12
        0x14
        0x19
        0x1e
        0x28
        0x32
        0x3c
        0x46
        0x50
        0x5a
        0x64
        0x96
        0xc8
        0x12c
        0x190
        0x1f4
        0x258
        0x2bc
        0x320
        0x384
        0x3e8
        0x7fffffff
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->processedVsyncId:J

    .line 369
    sget-object v0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->sFrameOverrunHistogramBounds:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mFrameOverrunBuckets:[I

    .line 373
    return-void
.end method

.method private clearHistogram()V
    .locals 3

    .line 480
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mFrameOverrunBuckets:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 481
    iget-object v1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mFrameOverrunBuckets:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 480
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 483
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private indexForFrameOverrun(I)I
    .locals 2
    .param p1, "overrunTime"    # I

    .line 487
    const/16 v0, 0x14

    if-ge p1, v0, :cond_4

    .line 488
    const/16 v0, -0x14

    if-lt p1, v0, :cond_0

    .line 489
    add-int/lit8 v0, p1, 0x14

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xc

    return v0

    .line 491
    :cond_0
    const/16 v0, -0x1e

    if-lt p1, v0, :cond_1

    .line 492
    add-int/lit8 v0, p1, 0x1e

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 494
    :cond_1
    const/16 v0, -0x64

    if-lt p1, v0, :cond_2

    .line 495
    add-int/lit8 v0, p1, 0x64

    div-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x3

    return v0

    .line 497
    :cond_2
    const/16 v0, -0xc8

    if-lt p1, v0, :cond_3

    .line 498
    add-int/lit16 v0, p1, 0xc8

    div-int/lit8 v0, v0, 0x32

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 500
    :cond_3
    const/4 v0, 0x0

    return v0

    .line 502
    :cond_4
    const/16 v0, 0x1e

    if-ge p1, v0, :cond_5

    .line 503
    add-int/lit8 v0, p1, -0x14

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x20

    return v0

    .line 505
    :cond_5
    const/16 v0, 0x64

    if-ge p1, v0, :cond_6

    .line 506
    add-int/lit8 v0, p1, -0x1e

    div-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x22

    return v0

    .line 508
    :cond_6
    const/16 v1, 0xc8

    if-ge p1, v1, :cond_7

    .line 509
    add-int/lit8 v1, p1, -0x32

    div-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x29

    return v1

    .line 511
    :cond_7
    const/16 v1, 0x3e8

    if-gt p1, v1, :cond_8

    .line 512
    add-int/lit16 v1, p1, -0xc8

    div-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x2b

    return v1

    .line 514
    :cond_8
    sget-object v0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->sFrameOverrunHistogramBounds:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method


# virtual methods
.method public clearStats()V
    .locals 3

    .line 468
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mUid:I

    .line 469
    const-string v0, ""

    iput-object v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mActivityName:Ljava/lang/String;

    .line 470
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->processedVsyncId:J

    .line 471
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mJankyFrames:J

    .line 472
    iput-wide v1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mTotalFrames:J

    .line 473
    iput-object v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mWidgetCategory:Ljava/lang/String;

    .line 474
    iput-object v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mWidgetState:Ljava/lang/String;

    .line 475
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mRefreshRate:I

    .line 476
    invoke-direct {p0}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->clearHistogram()V

    .line 477
    return-void
.end method

.method public getActivityName()Ljava/lang/String;
    .locals 1

    .line 392
    iget-object v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public getFrameOverrunBuckets()[I
    .locals 1

    .line 440
    iget-object v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mFrameOverrunBuckets:[I

    return-object v0
.end method

.method public getJankyFrames()J
    .locals 2

    .line 432
    iget-wide v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mJankyFrames:J

    return-wide v0
.end method

.method public getProcessedVsyncId()J
    .locals 2

    .line 376
    iget-wide v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->processedVsyncId:J

    return-wide v0
.end method

.method public getRefreshRate()I
    .locals 1

    .line 444
    iget v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mRefreshRate:I

    return v0
.end method

.method public getTotalFrames()J
    .locals 2

    .line 424
    iget-wide v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mTotalFrames:J

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    .line 384
    iget v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mUid:I

    return v0
.end method

.method public getWidgetCategory()Ljava/lang/String;
    .locals 1

    .line 408
    iget-object v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mWidgetCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getWidgetId()Ljava/lang/String;
    .locals 1

    .line 400
    iget-object v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mWidgetId:Ljava/lang/String;

    return-object v0
.end method

.method public getWidgetState()Ljava/lang/String;
    .locals 1

    .line 416
    iget-object v0, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mWidgetState:Ljava/lang/String;

    return-object v0
.end method

.method public recordFrameOverrun(J)V
    .locals 4
    .param p1, "frameTimeNano"    # J

    .line 457
    long-to-int v0, p1

    const v1, 0xf4240

    :try_start_0
    div-int/2addr v0, v1

    .line 458
    .local v0, "frameTimeMillis":I
    iget-object v1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mFrameOverrunBuckets:[I

    invoke-direct {p0, v0}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->indexForFrameOverrun(I)I

    move-result v2

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    .end local v0    # "frameTimeMillis":I
    goto :goto_0

    .line 459
    :catch_0
    move-exception v0

    .line 462
    :goto_0
    return-void
.end method

.method public setActivityName(Ljava/lang/String;)V
    .locals 0
    .param p1, "activityName"    # Ljava/lang/String;

    .line 396
    iput-object p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mActivityName:Ljava/lang/String;

    .line 397
    return-void
.end method

.method public setJankyFrames(J)V
    .locals 0
    .param p1, "jankyFrames"    # J

    .line 436
    iput-wide p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mJankyFrames:J

    .line 437
    return-void
.end method

.method public setProcessedVsyncId(J)V
    .locals 0
    .param p1, "processedVsyncId"    # J

    .line 380
    iput-wide p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->processedVsyncId:J

    .line 381
    return-void
.end method

.method public setRefreshRate(I)V
    .locals 0
    .param p1, "refreshRate"    # I

    .line 448
    iput p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mRefreshRate:I

    .line 449
    return-void
.end method

.method public setTotalFrames(J)V
    .locals 0
    .param p1, "totalFrames"    # J

    .line 428
    iput-wide p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mTotalFrames:J

    .line 429
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 388
    iput p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mUid:I

    .line 389
    return-void
.end method

.method public setWidgetCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "widgetCategory"    # Ljava/lang/String;

    .line 412
    iput-object p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mWidgetCategory:Ljava/lang/String;

    .line 413
    return-void
.end method

.method public setWidgetId(Ljava/lang/String;)V
    .locals 0
    .param p1, "widgetId"    # Ljava/lang/String;

    .line 404
    iput-object p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mWidgetId:Ljava/lang/String;

    .line 405
    return-void
.end method

.method public setWidgetState(Ljava/lang/String;)V
    .locals 0
    .param p1, "widgetState"    # Ljava/lang/String;

    .line 420
    iput-object p1, p0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->mWidgetState:Ljava/lang/String;

    .line 421
    return-void
.end method
