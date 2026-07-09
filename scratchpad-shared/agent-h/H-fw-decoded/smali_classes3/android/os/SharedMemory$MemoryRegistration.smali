.class final Landroid/os/SharedMemory$MemoryRegistration;
.super Ljava/lang/Object;
.source "SharedMemory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SharedMemory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MemoryRegistration"
.end annotation


# instance fields
.field private greylist-max-o mReferenceCount:I

.field private greylist-max-o mSize:I


# direct methods
.method private constructor greylist-max-o <init>(I)V
    .locals 3
    .param p1, "size"    # I

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    sget v0, Landroid/system/OsConstants;->_SC_PAGE_SIZE:I

    .line 384
    .local v0, "PAGE_SIZE":I
    if-lez v0, :cond_0

    .line 385
    rem-int v1, p1, v0

    .line 386
    .local v1, "remainder":I
    if-eqz v1, :cond_0

    .line 387
    sub-int v2, v0, v1

    add-int/2addr p1, v2

    .line 390
    .end local v1    # "remainder":I
    :cond_0
    iput p1, p0, Landroid/os/SharedMemory$MemoryRegistration;->mSize:I

    .line 391
    const/4 v1, 0x1

    iput v1, p0, Landroid/os/SharedMemory$MemoryRegistration;->mReferenceCount:I

    .line 392
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    iget v2, p0, Landroid/os/SharedMemory$MemoryRegistration;->mSize:I

    invoke-virtual {v1, v2}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    .line 393
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/os/SharedMemory-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/SharedMemory$MemoryRegistration;-><init>(I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized greylist-max-o acquire()Landroid/os/SharedMemory$MemoryRegistration;
    .locals 1

    monitor-enter p0

    .line 396
    :try_start_0
    iget v0, p0, Landroid/os/SharedMemory$MemoryRegistration;->mReferenceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/SharedMemory$MemoryRegistration;->mReferenceCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    monitor-exit p0

    return-object p0

    .line 395
    .end local p0    # "this":Landroid/os/SharedMemory$MemoryRegistration;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized greylist-max-o release()V
    .locals 2

    monitor-enter p0

    .line 401
    :try_start_0
    iget v0, p0, Landroid/os/SharedMemory$MemoryRegistration;->mReferenceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/os/SharedMemory$MemoryRegistration;->mReferenceCount:I

    .line 402
    iget v0, p0, Landroid/os/SharedMemory$MemoryRegistration;->mReferenceCount:I

    if-nez v0, :cond_0

    .line 403
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    iget v1, p0, Landroid/os/SharedMemory$MemoryRegistration;->mSize:I

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    .end local p0    # "this":Landroid/os/SharedMemory$MemoryRegistration;
    :cond_0
    monitor-exit p0

    return-void

    .line 400
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
