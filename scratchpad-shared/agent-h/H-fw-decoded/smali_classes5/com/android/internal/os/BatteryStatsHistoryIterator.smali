.class public Lcom/android/internal/os/BatteryStatsHistoryIterator;
.super Ljava/lang/Object;
.source "BatteryStatsHistoryIterator.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/os/BatteryStats$HistoryItem;",
        ">;",
        "Ljava/lang/AutoCloseable;"
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "BatteryStatsHistoryItr"


# instance fields
.field private blacklist mBaseMonotonicTime:J

.field private blacklist mBaseTimeUtc:J

.field private final blacklist mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

.field private blacklist mClosed:Z

.field private final blacklist mDescriptorRegistry:Lcom/android/internal/os/PowerStats$DescriptorRegistry;

.field private final blacklist mEndTimeMs:J

.field private blacklist mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

.field private final blacklist mHistoryTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/BatteryStats$HistoryTag;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNextItemReady:Z

.field private final blacklist mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

.field private final blacklist mStartTimeMs:J

.field private blacklist mTimeInitialized:Z


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsHistory;JJ)V
    .locals 2
    .param p1, "history"    # Lcom/android/internal/os/BatteryStatsHistory;
    .param p2, "startTimeMs"    # J
    .param p4, "endTimeMs"    # J

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryTags:Landroid/util/SparseArray;

    .line 42
    new-instance v0, Lcom/android/internal/os/PowerStats$DescriptorRegistry;

    invoke-direct {v0}, Lcom/android/internal/os/PowerStats$DescriptorRegistry;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mDescriptorRegistry:Lcom/android/internal/os/PowerStats$DescriptorRegistry;

    .line 44
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    .line 53
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 54
    iput-wide p2, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mStartTimeMs:J

    .line 55
    const-wide/16 v0, -0x1

    cmp-long v0, p4, v0

    if-eqz v0, :cond_0

    move-wide v0, p4

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mEndTimeMs:J

    .line 56
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 57
    return-void
.end method

.method private blacklist advance()V
    .locals 9

    .line 83
    nop

    :goto_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mStartTimeMs:J

    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mEndTimeMs:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsHistory;->getNextParcel(JJ)Landroid/os/Parcel;

    move-result-object v0

    .line 84
    .local v0, "p":Landroid/os/Parcel;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 85
    goto :goto_1

    .line 88
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mTimeInitialized:Z

    if-nez v2, :cond_1

    .line 89
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    invoke-virtual {v2, v0}, Lcom/android/internal/os/BatteryStatsHistory;->getHistoryBufferStartTime(Landroid/os/Parcel;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBaseMonotonicTime:J

    .line 90
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBaseMonotonicTime:J

    iput-wide v3, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 91
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mTimeInitialized:Z

    .line 95
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    nop

    .line 101
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v2, v2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v2, v2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x7

    if-ne v2, v3, :cond_3

    .line 103
    :cond_2
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v2, v2, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v4, v4, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBaseMonotonicTime:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBaseTimeUtc:J

    .line 106
    :cond_3
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBaseTimeUtc:J

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v5, v5, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v7, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBaseMonotonicTime:J

    sub-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 108
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mEndTimeMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v2, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mEndTimeMs:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4

    .line 109
    goto :goto_1

    .line 111
    :cond_4
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v2, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mStartTimeMs:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    .line 112
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mNextItemReady:Z

    .line 113
    return-void

    .line 115
    .end local v0    # "p":Landroid/os/Parcel;
    :cond_5
    goto :goto_0

    .line 96
    .restart local v0    # "p":Landroid/os/Parcel;
    :catchall_0
    move-exception v2

    .line 97
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "BatteryStatsHistoryItr"

    const-string v4, "Corrupted battery history"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    nop

    .line 117
    .end local v0    # "p":Landroid/os/Parcel;
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    .line 118
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mNextItemReady:Z

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V

    .line 120
    return-void
.end method

.method private static blacklist extractSignedBitField(III)I
    .locals 3
    .param p0, "bits"    # I
    .param p1, "mask"    # I
    .param p2, "shift"    # I

    .line 326
    ushr-int/2addr p1, p2

    .line 327
    ushr-int/2addr p0, p2

    .line 328
    and-int v0, p0, p1

    .line 329
    .local v0, "value":I
    ushr-int/lit8 v1, p1, 0x1

    xor-int/2addr v1, p1

    .line 331
    .local v1, "msbMask":I
    and-int v2, v0, v1

    if-eqz v2, :cond_0

    not-int v2, p1

    or-int/2addr v0, v2

    .line 332
    :cond_0
    return v0
.end method

.method private static blacklist readBatteryLevelInts(IILandroid/os/BatteryStats$HistoryItem;)V
    .locals 3
    .param p0, "batteryInt"    # I
    .param p1, "extendedBatteryInt"    # I
    .param p2, "out"    # Landroid/os/BatteryStats$HistoryItem;

    .line 338
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const/high16 v1, -0x1000000

    const/16 v2, 0x18

    invoke-static {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->extractSignedBitField(III)I

    move-result v1

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 343
    and-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_0

    .line 344
    iget-short v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    const v1, 0xff8000

    const/16 v2, 0xf

    invoke-static {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->extractSignedBitField(III)I

    move-result v1

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 348
    iget-short v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    const/16 v1, 0x7ffc

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->extractSignedBitField(III)I

    move-result v1

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    goto :goto_0

    .line 353
    :cond_0
    const/high16 v0, -0x10000

    const/16 v1, 0x10

    invoke-static {p1, v0, v1}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->extractSignedBitField(III)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 357
    const v0, 0xffff

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->extractSignedBitField(III)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    .line 362
    :goto_0
    return-void
.end method

.method private blacklist readHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;)V
    .locals 11
    .param p1, "src"    # Landroid/os/Parcel;
    .param p2, "cur"    # Landroid/os/BatteryStats$HistoryItem;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 124
    .local v0, "firstToken":I
    const v1, 0x7ffff

    and-int/2addr v1, v0

    .line 125
    .local v1, "deltaTimeToken":I
    const/4 v2, 0x0

    iput-byte v2, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 126
    const/4 v3, 0x1

    iput v3, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 132
    const/4 v4, 0x2

    const v5, 0x7fffd

    if-ge v1, v5, :cond_0

    .line 133
    iget-wide v5, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    int-to-long v7, v1

    add-long/2addr v5, v7

    iput-wide v5, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    goto :goto_0

    .line 134
    :cond_0
    if-ne v1, v5, :cond_1

    .line 135
    invoke-virtual {p2, p1}, Landroid/os/BatteryStats$HistoryItem;->readFromParcel(Landroid/os/Parcel;)V

    .line 137
    return-void

    .line 138
    :cond_1
    const v5, 0x7fffe

    if-ne v1, v5, :cond_2

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 140
    .local v5, "delta":I
    iget-wide v6, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 141
    iget v6, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v6, v3

    iput v6, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 143
    .end local v5    # "delta":I
    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 146
    .local v5, "delta":J
    iget-wide v7, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    add-long/2addr v7, v5

    iput-wide v7, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 147
    iget v7, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v7, v4

    iput v7, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 151
    .end local v5    # "delta":J
    :goto_0
    const/high16 v5, 0x80000

    and-int/2addr v5, v0

    if-eqz v5, :cond_5

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 153
    .local v5, "batteryLevelInt":I
    iget v6, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v6, v3

    iput v6, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 154
    and-int/lit8 v6, v5, 0x2

    if-eqz v6, :cond_3

    move v6, v3

    goto :goto_1

    :cond_3
    move v6, v2

    .line 156
    .local v6, "overflow":Z
    :goto_1
    const/4 v7, 0x0

    .line 157
    .local v7, "extendedBatteryLevelInt":I
    if-eqz v6, :cond_4

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 159
    iget v8, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v8, v3

    iput v8, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 161
    :cond_4
    invoke-static {v5, v7, p2}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readBatteryLevelInts(IILandroid/os/BatteryStats$HistoryItem;)V

    .line 172
    .end local v6    # "overflow":Z
    .end local v7    # "extendedBatteryLevelInt":I
    goto :goto_2

    .line 173
    .end local v5    # "batteryLevelInt":I
    :cond_5
    const/4 v5, 0x0

    .line 176
    .restart local v5    # "batteryLevelInt":I
    :goto_2
    const/high16 v6, 0x100000

    and-int/2addr v6, v0

    const v7, 0xffffff

    const/high16 v8, -0x2000000

    if-eqz v6, :cond_6

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 178
    .local v6, "stateInt":I
    and-int/2addr v8, v0

    and-int/2addr v7, v6

    or-int/2addr v7, v8

    iput v7, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 180
    shr-int/lit8 v7, v6, 0x1d

    and-int/lit8 v7, v7, 0x7

    int-to-byte v7, v7

    iput-byte v7, p2, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 182
    shr-int/lit8 v7, v6, 0x1a

    and-int/lit8 v7, v7, 0x7

    int-to-byte v7, v7

    iput-byte v7, p2, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 184
    shr-int/lit8 v7, v6, 0x18

    and-int/lit8 v7, v7, 0x3

    int-to-byte v7, v7

    iput-byte v7, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 186
    iget-byte v7, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    packed-switch v7, :pswitch_data_0

    goto :goto_3

    .line 194
    :pswitch_0
    const/4 v4, 0x4

    iput-byte v4, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    goto :goto_3

    .line 191
    :pswitch_1
    iput-byte v4, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 192
    goto :goto_3

    .line 188
    :pswitch_2
    iput-byte v3, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 189
    nop

    .line 197
    :goto_3
    iget v4, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v4, v3

    iput v4, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 206
    .end local v6    # "stateInt":I
    goto :goto_4

    .line 207
    :cond_6
    and-int v4, v0, v8

    iget v6, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/2addr v6, v7

    or-int/2addr v4, v6

    iput v4, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 211
    :goto_4
    const/high16 v4, 0x200000

    and-int/2addr v4, v0

    if-eqz v4, :cond_7

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 219
    :cond_7
    const/high16 v4, 0x400000

    and-int/2addr v4, v0

    const v6, 0xffff

    const/4 v7, 0x0

    if-eqz v4, :cond_a

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 221
    .local v4, "indexes":I
    and-int v8, v4, v6

    .line 222
    .local v8, "wakeLockIndex":I
    shr-int/lit8 v9, v4, 0x10

    and-int/2addr v9, v6

    .line 223
    .local v9, "wakeReasonIndex":I
    iget-object v10, p2, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {p0, p1, v8, v10}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readHistoryTag(Landroid/os/Parcel;ILandroid/os/BatteryStats$HistoryTag;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 224
    iget-object v10, p2, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v10, p2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    goto :goto_5

    .line 226
    :cond_8
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 228
    :goto_5
    iget-object v10, p2, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {p0, p1, v9, v10}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readHistoryTag(Landroid/os/Parcel;ILandroid/os/BatteryStats$HistoryTag;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 229
    iget-object v10, p2, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v10, p2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    goto :goto_6

    .line 231
    :cond_9
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 233
    :goto_6
    iget v10, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v10, v3

    iput v10, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 234
    .end local v4    # "indexes":I
    .end local v8    # "wakeLockIndex":I
    .end local v9    # "wakeReasonIndex":I
    goto :goto_7

    .line 235
    :cond_a
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 236
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 239
    :goto_7
    const/high16 v4, 0x800000

    and-int/2addr v4, v0

    if-eqz v4, :cond_c

    .line 240
    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 242
    .local v2, "codeAndIndex":I
    and-int v4, v2, v6

    iput v4, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 243
    shr-int/lit8 v4, v2, 0x10

    and-int/2addr v4, v6

    .line 244
    .local v4, "index":I
    iget-object v6, p2, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {p0, p1, v4, v6}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readHistoryTag(Landroid/os/Parcel;ILandroid/os/BatteryStats$HistoryTag;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 245
    iget-object v6, p2, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v6, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    goto :goto_8

    .line 247
    :cond_b
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 249
    :goto_8
    iget v6, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v6, v3

    iput v6, p2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 255
    .end local v2    # "codeAndIndex":I
    .end local v4    # "index":I
    goto :goto_9

    .line 256
    :cond_c
    iput v2, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 259
    :goto_9
    and-int/lit8 v2, v5, 0x1

    if-eqz v2, :cond_d

    .line 260
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iput-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 261
    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-virtual {v2, p1}, Landroid/os/BatteryStats$HistoryStepDetails;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_a

    .line 263
    :cond_d
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 266
    :goto_a
    const/high16 v2, 0x1000000

    and-int/2addr v2, v0

    if-eqz v2, :cond_e

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p2, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    .line 269
    :cond_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p2, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p2, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    .line 271
    iget v2, p2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v3, 0x20000

    and-int/2addr v2, v3

    if-eqz v2, :cond_12

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 273
    .local v2, "extensionFlags":I
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_f

    .line 274
    invoke-static {p1}, Lcom/android/internal/os/PowerStats$Descriptor;->readSummaryFromParcel(Landroid/os/Parcel;)Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object v3

    .line 275
    .local v3, "descriptor":Lcom/android/internal/os/PowerStats$Descriptor;
    if-eqz v3, :cond_f

    .line 276
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mDescriptorRegistry:Lcom/android/internal/os/PowerStats$DescriptorRegistry;

    invoke-virtual {v4, v3}, Lcom/android/internal/os/PowerStats$DescriptorRegistry;->register(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 279
    .end local v3    # "descriptor":Lcom/android/internal/os/PowerStats$Descriptor;
    :cond_f
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_10

    .line 280
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mDescriptorRegistry:Lcom/android/internal/os/PowerStats$DescriptorRegistry;

    invoke-static {p1, v3}, Lcom/android/internal/os/PowerStats;->readFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/PowerStats$DescriptorRegistry;)Lcom/android/internal/os/PowerStats;

    move-result-object v3

    iput-object v3, p2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    goto :goto_b

    .line 282
    :cond_10
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    .line 284
    :goto_b
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_11

    .line 285
    iget-object v3, p2, Landroid/os/BatteryStats$HistoryItem;->localProcessStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    iput-object v3, p2, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    .line 286
    iget-object v3, p2, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    invoke-virtual {v3, p1}, Landroid/os/BatteryStats$ProcessStateChange;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_c

    .line 288
    :cond_11
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    .line 290
    .end local v2    # "extensionFlags":I
    :goto_c
    goto :goto_d

    .line 291
    :cond_12
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    .line 292
    iput-object v7, p2, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    .line 294
    :goto_d
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist readHistoryTag(Landroid/os/Parcel;ILandroid/os/BatteryStats$HistoryTag;)Z
    .locals 3
    .param p1, "src"    # Landroid/os/Parcel;
    .param p2, "index"    # I
    .param p3, "outTag"    # Landroid/os/BatteryStats$HistoryTag;

    .line 297
    const v0, 0xffff

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 298
    return v1

    .line 301
    :cond_0
    const v0, 0x8000

    and-int/2addr v0, p2

    if-eqz v0, :cond_2

    .line 302
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    .line 303
    .local v0, "tag":Landroid/os/BatteryStats$HistoryTag;
    invoke-virtual {v0, p1}, Landroid/os/BatteryStats$HistoryTag;->readFromParcel(Landroid/os/Parcel;)V

    .line 304
    const v1, -0x8001

    and-int/2addr v1, p2

    iput v1, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 305
    iget v1, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    const/16 v2, 0x7ffe

    if-ge v1, v2, :cond_1

    .line 306
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryTags:Landroid/util/SparseArray;

    iget v2, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 308
    :cond_1
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 311
    :goto_0
    invoke-virtual {p3, v0}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 312
    .end local v0    # "tag":Landroid/os/BatteryStats$HistoryTag;
    goto :goto_2

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$HistoryTag;

    .line 314
    .local v0, "historyTag":Landroid/os/BatteryStats$HistoryTag;
    if-eqz v0, :cond_3

    .line 315
    invoke-virtual {p3, v0}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    goto :goto_1

    .line 317
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 318
    iput v1, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 320
    :goto_1
    iput p2, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 322
    .end local v0    # "historyTag":Landroid/os/BatteryStats$HistoryTag;
    :goto_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 1

    .line 369
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mClosed:Z

    if-nez v0, :cond_0

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mClosed:Z

    .line 371
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHistory;->iteratorFinished()V

    .line 373
    :cond_0
    return-void
.end method

.method public whitelist test-api hasNext()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mNextItemReady:Z

    if-nez v0, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->advance()V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist next()Landroid/os/BatteryStats$HistoryItem;
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mNextItemReady:Z

    if-nez v0, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->advance()V

    .line 77
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mNextItemReady:Z

    .line 78
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->next()Landroid/os/BatteryStats$HistoryItem;

    move-result-object v0

    return-object v0
.end method
