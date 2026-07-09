.class public Landroid/app/PropertyInvalidatedCache$NonceStore;
.super Ljava/lang/Object;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PropertyInvalidatedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NonceStore"
.end annotation


# static fields
.field public static final INVALID_NONCE_INDEX:I = -0x1

.field private static final MAX_STRING_LENGTH:I = 0x3f

.field private static sInstance:Landroid/app/PropertyInvalidatedCache$NonceStore;

.field private static sLock:Ljava/lang/Object;


# instance fields
.field private mBlockHash:I

.field private mHighestIndex:I

.field private final mLock:Ljava/lang/Object;

.field public final mMaxByte:I

.field public final mMaxNonce:I

.field private final mMutable:Z

.field private mPartialReads:I

.field private final mPtr:J

.field private mStringBytes:I

.field private final mStringHandle:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStringUpdated:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2361
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache$NonceStore;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 2
    .param p1, "ptr"    # J
    .param p3, "mutable"    # Z

    .line 2352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2319
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mLock:Ljava/lang/Object;

    .line 2338
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mBlockHash:I

    .line 2391
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mHighestIndex:I

    .line 2395
    iput v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringBytes:I

    .line 2399
    iput v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mPartialReads:I

    .line 2403
    iput v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringUpdated:I

    .line 2407
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringHandle:Landroid/util/ArrayMap;

    .line 2353
    iput-wide p1, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mPtr:J

    .line 2354
    iput-boolean p3, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mMutable:Z

    .line 2355
    invoke-static {p1, p2}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$smnativeGetMaxByte(J)I

    move-result v0

    iput v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mMaxByte:I

    .line 2356
    invoke-static {p1, p2}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$smnativeGetMaxNonce(J)I

    move-result v0

    iput v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mMaxNonce:I

    .line 2357
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$NonceStore;->refreshStringBlockLocked()V

    .line 2358
    return-void
.end method

.method private appendStringToMapLocked(Ljava/lang/String;[B)V
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "block"    # [B

    .line 2434
    const/4 v0, 0x0

    .line 2435
    .local v0, "offset":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    aget-byte v1, p2, v0

    if-eqz v1, :cond_0

    .line 2436
    aget-byte v1, p2, v0

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_0

    .line 2438
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 2440
    .local v1, "strBytes":[B
    array-length v2, v1

    add-int/2addr v2, v0

    array-length v3, p2

    if-lt v2, v3, :cond_1

    .line 2442
    return-void

    .line 2445
    :cond_1
    array-length v2, v1

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 2446
    add-int/lit8 v2, v0, 0x1

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, p2, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2447
    invoke-static {p2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    iput v2, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mBlockHash:I

    .line 2448
    return-void
.end method

.method static getInstance()Landroid/app/PropertyInvalidatedCache$NonceStore;
    .locals 6

    .line 2368
    sget-object v0, Landroid/app/PropertyInvalidatedCache$NonceStore;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2369
    :try_start_0
    sget-object v1, Landroid/app/PropertyInvalidatedCache$NonceStore;->sInstance:Landroid/app/PropertyInvalidatedCache$NonceStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 2371
    :try_start_1
    invoke-static {}, Lcom/android/internal/os/ApplicationSharedMemory;->getInstance()Lcom/android/internal/os/ApplicationSharedMemory;

    move-result-object v1

    .line 2372
    .local v1, "shmem":Lcom/android/internal/os/ApplicationSharedMemory;
    if-nez v1, :cond_0

    .line 2373
    const/4 v2, 0x0

    goto :goto_0

    .line 2374
    :cond_0
    new-instance v2, Landroid/app/PropertyInvalidatedCache$NonceStore;

    invoke-virtual {v1}, Lcom/android/internal/os/ApplicationSharedMemory;->getSystemNonceBlock()J

    move-result-wide v3

    .line 2375
    invoke-virtual {v1}, Lcom/android/internal/os/ApplicationSharedMemory;->isMutable()Z

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Landroid/app/PropertyInvalidatedCache$NonceStore;-><init>(JZ)V

    :goto_0
    sput-object v2, Landroid/app/PropertyInvalidatedCache$NonceStore;->sInstance:Landroid/app/PropertyInvalidatedCache$NonceStore;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2379
    .end local v1    # "shmem":Lcom/android/internal/os/ApplicationSharedMemory;
    goto :goto_1

    .line 2376
    :catch_0
    move-exception v1

    .line 2381
    :cond_1
    :goto_1
    :try_start_2
    sget-object v1, Landroid/app/PropertyInvalidatedCache$NonceStore;->sInstance:Landroid/app/PropertyInvalidatedCache$NonceStore;

    monitor-exit v0

    return-object v1

    .line 2382
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private refreshStringBlockLocked()V
    .locals 4

    .line 2454
    iget v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mBlockHash:I

    iget-wide v1, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mPtr:J

    invoke-static {v1, v2}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$smnativeGetByteBlockHash(J)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2456
    return-void

    .line 2458
    :cond_0
    iget v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mMaxByte:I

    new-array v0, v0, [B

    .line 2459
    .local v0, "block":[B
    iget-wide v1, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mPtr:J

    iget v3, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mBlockHash:I

    invoke-static {v1, v2, v3, v0}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$smnativeGetByteBlock(JI[B)I

    move-result v1

    .line 2460
    .local v1, "hash":I
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 2465
    const/4 v2, 0x0

    iput v2, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mBlockHash:I

    .line 2466
    iget v2, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mPartialReads:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mPartialReads:I

    .line 2467
    return-void

    .line 2470
    :cond_1
    iget v2, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringUpdated:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringUpdated:I

    .line 2471
    iput v1, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mBlockHash:I

    .line 2472
    invoke-direct {p0, v0}, Landroid/app/PropertyInvalidatedCache$NonceStore;->updateStringMapLocked([B)V

    .line 2473
    return-void
.end method

.method private throwIfBadHandle(I)V
    .locals 3
    .param p1, "handle"    # I

    .line 2491
    if-ltz p1, :cond_0

    iget v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mHighestIndex:I

    if-gt p1, v0, :cond_0

    .line 2494
    return-void

    .line 2492
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid nonce handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static throwIfBadString(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 2477
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2480
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_0

    .line 2484
    return-void

    .line 2481
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot store a string longer than 63"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2478
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot store an empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwIfImmutable()V
    .locals 2

    .line 2500
    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mMutable:Z

    if-eqz v0, :cond_0

    .line 2503
    return-void

    .line 2501
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "write permission denied"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateStringMapLocked([B)V
    .locals 5
    .param p1, "block"    # [B

    .line 2415
    const/4 v0, 0x0

    .line 2416
    .local v0, "index":I
    const/4 v1, 0x0

    .line 2417
    .local v1, "offset":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-byte v2, p1, v1

    if-eqz v2, :cond_1

    .line 2418
    iget v2, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mHighestIndex:I

    if-le v0, v2, :cond_0

    .line 2420
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    aget-byte v4, p1, v1

    invoke-direct {v2, p1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    .line 2421
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringHandle:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2422
    iput v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mHighestIndex:I

    .line 2424
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    aget-byte v2, p1, v1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 2425
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2427
    :cond_1
    iput v1, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringBytes:I

    .line 2428
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "detailed"    # Z

    .line 2562
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2563
    :try_start_0
    const-string v1, "%sStringsMapped: %d, BytesUsed: %d"

    iget v2, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mHighestIndex:I

    .line 2565
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringBytes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p2, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 2563
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2566
    const-string v1, "%sPartialReads: %d, StringUpdates: %d"

    iget v2, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mPartialReads:I

    .line 2568
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringUpdated:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p2, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 2566
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2570
    if-eqz p3, :cond_0

    .line 2571
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringHandle:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2572
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringHandle:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2573
    .local v3, "h":I
    const-string v4, "%sHandle:%d Name:%s"

    .line 2574
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {p2, v5, v2}, [Ljava/lang/Object;

    move-result-object v5

    .line 2573
    invoke-static {v4, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2575
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "h":I
    goto :goto_0

    .line 2577
    :cond_0
    monitor-exit v0

    .line 2578
    return-void

    .line 2577
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getHandleForName(Ljava/lang/String;)I
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 2532
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2533
    :try_start_0
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringHandle:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2534
    .local v1, "handle":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 2535
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$NonceStore;->refreshStringBlockLocked()V

    .line 2536
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringHandle:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move-object v1, v2

    .line 2538
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    monitor-exit v0

    return v2

    .line 2539
    .end local v1    # "handle":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNonce(I)J
    .locals 3
    .param p1, "handle"    # I

    .line 2552
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2553
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/PropertyInvalidatedCache$NonceStore;->throwIfBadHandle(I)V

    .line 2554
    iget-wide v1, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mPtr:J

    invoke-static {v1, v2, p1}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$smnativeGetNonce(JI)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 2555
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setNonce(IJ)Z
    .locals 3
    .param p1, "handle"    # I
    .param p2, "value"    # J

    .line 2544
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2545
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/PropertyInvalidatedCache$NonceStore;->throwIfBadHandle(I)V

    .line 2546
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$NonceStore;->throwIfImmutable()V

    .line 2547
    iget-wide v1, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mPtr:J

    invoke-static {v1, v2, p1, p2, p3}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$smnativeSetNonce(JIJ)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2548
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public storeName(Ljava/lang/String;)I
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .line 2511
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2512
    :try_start_0
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringHandle:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2513
    .local v1, "handle":Ljava/lang/Integer;
    if-nez v1, :cond_1

    .line 2514
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$NonceStore;->throwIfImmutable()V

    .line 2515
    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache$NonceStore;->throwIfBadString(Ljava/lang/String;)V

    .line 2516
    iget v2, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mHighestIndex:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mMaxNonce:I

    if-ge v2, v3, :cond_0

    .line 2519
    iget v2, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mMaxByte:I

    new-array v2, v2, [B

    .line 2520
    .local v2, "block":[B
    iget-wide v3, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mPtr:J

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v2}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$smnativeGetByteBlock(JI[B)I

    .line 2521
    invoke-direct {p0, p1, v2}, Landroid/app/PropertyInvalidatedCache$NonceStore;->appendStringToMapLocked(Ljava/lang/String;[B)V

    .line 2522
    iget-wide v3, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mPtr:J

    iget v5, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mBlockHash:I

    invoke-static {v3, v4, v5, v2}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$smnativeSetByteBlock(JI[B)V

    .line 2523
    invoke-direct {p0, v2}, Landroid/app/PropertyInvalidatedCache$NonceStore;->updateStringMapLocked([B)V

    .line 2524
    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache$NonceStore;->mStringHandle:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object v1, v3

    goto :goto_0

    .line 2517
    .end local v2    # "block":[B
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "nonce limit exceeded"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/PropertyInvalidatedCache$NonceStore;
    .end local p1    # "str":Ljava/lang/String;
    throw v2

    .line 2526
    .restart local p0    # "this":Landroid/app/PropertyInvalidatedCache$NonceStore;
    .restart local p1    # "str":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    monitor-exit v0

    return v2

    .line 2527
    .end local v1    # "handle":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
