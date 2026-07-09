.class public final Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;
.super Ljava/lang/Object;
.source "BatteryStatsHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VarintParceler"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 2380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist readLongArray(Landroid/os/Parcel;[J)V
    .locals 10
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "values"    # [J

    .line 2420
    array-length v0, p2

    if-nez v0, :cond_0

    .line 2421
    return-void

    .line 2423
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2424
    .local v0, "in":I
    const/4 v1, 0x4

    .line 2425
    .local v1, "available":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_5

    .line 2426
    const-wide/16 v3, 0x0

    .line 2428
    .local v3, "result":J
    const/4 v5, 0x0

    .local v5, "shift":I
    :goto_1
    const/16 v6, 0x40

    if-ge v5, v6, :cond_3

    .line 2429
    if-nez v1, :cond_1

    .line 2430
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2431
    const/4 v1, 0x4

    .line 2433
    :cond_1
    int-to-byte v7, v0

    .line 2434
    .local v7, "b":B
    shr-int/lit8 v0, v0, 0x8

    .line 2435
    add-int/lit8 v1, v1, -0x1

    .line 2437
    and-int/lit8 v8, v7, 0x7f

    int-to-long v8, v8

    shl-long/2addr v8, v5

    or-long/2addr v3, v8

    .line 2438
    and-int/lit16 v8, v7, 0x80

    if-nez v8, :cond_2

    .line 2439
    aput-wide v3, p2, v2

    .line 2440
    goto :goto_2

    .line 2428
    .end local v7    # "b":B
    :cond_2
    add-int/lit8 v5, v5, 0x7

    goto :goto_1

    .line 2443
    :cond_3
    :goto_2
    if-ge v5, v6, :cond_4

    .line 2425
    .end local v3    # "result":J
    .end local v5    # "shift":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2444
    .restart local v3    # "result":J
    .restart local v5    # "shift":I
    :cond_4
    new-instance v6, Landroid/os/ParcelFormatException;

    const-string v7, "Invalid varint format"

    invoke-direct {v6, v7}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2447
    .end local v2    # "i":I
    .end local v3    # "result":J
    .end local v5    # "shift":I
    :cond_5
    return-void
.end method

.method public blacklist writeLongArray(Landroid/os/Parcel;[J)V
    .locals 11
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "values"    # [J

    .line 2386
    array-length v0, p2

    if-nez v0, :cond_0

    .line 2387
    return-void

    .line 2389
    :cond_0
    const/4 v0, 0x0

    .line 2390
    .local v0, "out":I
    const/4 v1, 0x0

    .line 2391
    .local v1, "shift":I
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-wide v4, p2, v3

    .line 2392
    .local v4, "value":J
    const/4 v6, 0x0

    .line 2393
    .local v6, "done":Z
    :goto_1
    if-nez v6, :cond_3

    .line 2395
    const-wide/16 v7, -0x80

    and-long/2addr v7, v4

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    .line 2396
    long-to-int v7, v4

    int-to-byte v7, v7

    .line 2397
    .local v7, "b":B
    const/4 v6, 0x1

    goto :goto_2

    .line 2399
    .end local v7    # "b":B
    :cond_1
    long-to-int v7, v4

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 2400
    .restart local v7    # "b":B
    const/4 v8, 0x7

    ushr-long/2addr v4, v8

    .line 2402
    :goto_2
    const/16 v8, 0x20

    if-ne v1, v8, :cond_2

    .line 2403
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2404
    const/4 v1, 0x0

    .line 2405
    const/4 v0, 0x0

    .line 2407
    :cond_2
    and-int/lit16 v8, v7, 0xff

    shl-int/2addr v8, v1

    or-int/2addr v0, v8

    .line 2408
    nop

    .end local v7    # "b":B
    add-int/lit8 v1, v1, 0x8

    .line 2409
    goto :goto_1

    .line 2391
    .end local v4    # "value":J
    .end local v6    # "done":Z
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2411
    :cond_4
    if-eqz v1, :cond_5

    .line 2412
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2414
    :cond_5
    return-void
.end method
