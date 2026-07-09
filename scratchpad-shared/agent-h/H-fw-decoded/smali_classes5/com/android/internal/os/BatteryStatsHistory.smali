.class public Lcom/android/internal/os/BatteryStatsHistory;
.super Ljava/lang/Object;
.source "BatteryStatsHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;,
        Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;,
        Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;,
        Lcom/android/internal/os/BatteryStatsHistory$EventLogger;,
        Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;,
        Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;
    }
.end annotation


# static fields
.field static final blacklist BATTERY_LEVEL2_TEMP_MASK:I = -0x10000

.field static final blacklist BATTERY_LEVEL2_TEMP_SHIFT:I = 0x10

.field static final blacklist BATTERY_LEVEL2_VOLT_MASK:I = 0xffff

.field static final blacklist BATTERY_LEVEL2_VOLT_SHIFT:I = 0x0

.field static final blacklist BATTERY_LEVEL_DETAILS_FLAG:I = 0x1

.field static final blacklist BATTERY_LEVEL_LEVEL_MASK:I = -0x1000000

.field static final blacklist BATTERY_LEVEL_LEVEL_SHIFT:I = 0x18

.field static final blacklist BATTERY_LEVEL_OVERFLOW_FLAG:I = 0x2

.field static final blacklist BATTERY_LEVEL_TEMP_MASK:I = 0xff8000

.field static final blacklist BATTERY_LEVEL_TEMP_SHIFT:I = 0xf

.field static final blacklist BATTERY_LEVEL_VOLT_MASK:I = 0x7ffc

.field static final blacklist BATTERY_LEVEL_VOLT_SHIFT:I = 0x2

.field private static final blacklist DEBUG:Z = false

.field static final blacklist DELTA_BATTERY_CHARGE_FLAG:I = 0x1000000

.field static final blacklist DELTA_BATTERY_LEVEL_FLAG:I = 0x80000

.field static final blacklist DELTA_EVENT_FLAG:I = 0x800000

.field static final blacklist DELTA_STATE2_FLAG:I = 0x200000

.field static final blacklist DELTA_STATE_FLAG:I = 0x100000

.field static final blacklist DELTA_STATE_MASK:I = -0x2000000

.field static final blacklist DELTA_TIME_ABS:I = 0x7fffd

.field static final blacklist DELTA_TIME_INT:I = 0x7fffe

.field static final blacklist DELTA_TIME_LONG:I = 0x7ffff

.field static final blacklist DELTA_TIME_MASK:I = 0x7ffff

.field static final blacklist DELTA_WAKELOCK_FLAG:I = 0x400000

.field static final blacklist EXTENSION_POWER_STATS_DESCRIPTOR_FLAG:I = 0x1

.field static final blacklist EXTENSION_POWER_STATS_FLAG:I = 0x2

.field static final blacklist EXTENSION_PROCESS_STATE_CHANGE_FLAG:I = 0x4

.field private static final blacklist EXTRA_BUFFER_SIZE_WHEN_DIR_LOCKED:I = 0x186a0

.field static final blacklist HISTORY_TAG_INDEX_LIMIT:I = 0x7ffe

.field private static final blacklist MAX_HISTORY_TAG_STRING_LENGTH:I = 0x400

.field static final blacklist STATE1_TRACE_MASK:I = 0x3fffffff

.field static final blacklist STATE2_TRACE_MASK:I = -0x1

.field static final blacklist STATE_BATTERY_HEALTH_MASK:I = 0x7

.field static final blacklist STATE_BATTERY_HEALTH_SHIFT:I = 0x1a

.field static final blacklist STATE_BATTERY_MASK:I = -0x1000000

.field static final blacklist STATE_BATTERY_PLUG_MASK:I = 0x3

.field static final blacklist STATE_BATTERY_PLUG_SHIFT:I = 0x18

.field static final blacklist STATE_BATTERY_STATUS_MASK:I = 0x7

.field static final blacklist STATE_BATTERY_STATUS_SHIFT:I = 0x1d

.field private static final blacklist TAG:Ljava/lang/String; = "BatteryStatsHistory"

.field static final blacklist TAG_FIRST_OCCURRENCE_FLAG:I = 0x8000

.field private static final blacklist VERSION:I = 0xd5


# instance fields
.field private blacklist mActiveFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

.field private final blacklist mClock:Lcom/android/internal/os/Clock;

.field private blacklist mCurrentFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

.field private blacklist mCurrentParcel:Landroid/os/Parcel;

.field private blacklist mCurrentParcelEnd:I

.field private final blacklist mEventLogger:Lcom/android/internal/os/BatteryStatsHistory$EventLogger;

.field private blacklist mHaveBatteryLevel:Z

.field private final blacklist mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

.field private final blacklist mHistoryBuffer:Landroid/os/Parcel;

.field private blacklist mHistoryBufferLastPos:I

.field private blacklist mHistoryBufferStartTime:J

.field private final blacklist mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

.field private final blacklist mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

.field private final blacklist mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

.field private blacklist mHistoryMonotonicEndTime:J

.field private blacklist mHistoryParcels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Parcel;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHistoryTagPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/BatteryStats$HistoryTag;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHistoryTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/BatteryStats$HistoryTag;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIteratorCookie:I

.field private blacklist mLastHistoryStepLevel:B

.field private blacklist mMaxHistoryBufferSize:I

.field private final blacklist mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

.field private blacklist mMonotonicHistorySize:J

.field private blacklist mMutable:Z

.field private blacklist mNextHistoryTagIdx:I

.field private blacklist mNumHistoryTagChars:I

.field private blacklist mParcelIndex:I

.field private blacklist mRecordingHistory:Z

.field private final blacklist mStepDetailsCalculator:Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;

.field private final blacklist mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

.field private blacklist mTraceLastState:I

.field private blacklist mTraceLastState2:I

.field private blacklist mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

.field private blacklist mTrackRunningHistoryElapsedRealtimeMs:J

.field private blacklist mTrackRunningHistoryUptimeMs:J

.field private final blacklist mWritableHistory:Lcom/android/internal/os/BatteryStatsHistory;

.field private final blacklist mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final blacklist mWrittenPowerStatsDescriptors:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/internal/os/PowerStats$Descriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    .line 305
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mParcelIndex:I

    .line 307
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 309
    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    .line 317
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    .line 319
    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 320
    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 321
    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    .line 322
    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    .line 323
    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    .line 324
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    .line 325
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryElapsedRealtimeMs:J

    .line 326
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryUptimeMs:J

    .line 334
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWrittenPowerStatsDescriptors:Landroid/util/ArraySet;

    .line 335
    iput-byte v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mLastHistoryStepLevel:B

    .line 336
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    .line 413
    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState:I

    .line 414
    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState2:I

    .line 474
    sget-object v3, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    .line 475
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

    .line 476
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    .line 477
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStepDetailsCalculator:Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;

    .line 478
    new-instance v3, Lcom/android/internal/os/BatteryStatsHistory$EventLogger;

    invoke-direct {v3}, Lcom/android/internal/os/BatteryStatsHistory$EventLogger;-><init>()V

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mEventLogger:Lcom/android/internal/os/BatteryStatsHistory$EventLogger;

    .line 479
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWritableHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 480
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    .line 482
    invoke-virtual {p1}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v3

    .line 484
    .local v3, "historyBlob":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    .line 485
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    array-length v5, v3

    invoke-virtual {v4, v3, v1, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 487
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    .line 488
    invoke-direct {p0, p1, v2}, Lcom/android/internal/os/BatteryStatsHistory;->readFromParcel(Landroid/os/Parcel;Z)V

    .line 489
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;ILcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;Lcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;Lcom/android/internal/os/BatteryStatsHistory$EventLogger;)V
    .locals 10
    .param p1, "historyBuffer"    # Landroid/os/Parcel;
    .param p2, "maxHistoryBufferSize"    # I
    .param p3, "store"    # Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;
    .param p4, "stepDetailsCalculator"    # Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;
    .param p5, "clock"    # Lcom/android/internal/os/Clock;
    .param p6, "monotonicClock"    # Lcom/android/internal/os/MonotonicClock;
    .param p7, "tracer"    # Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;
    .param p8, "eventLogger"    # Lcom/android/internal/os/BatteryStatsHistory$EventLogger;

    .line 426
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/os/BatteryStatsHistory;-><init>(Landroid/os/Parcel;ILcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;Lcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;Lcom/android/internal/os/BatteryStatsHistory$EventLogger;Lcom/android/internal/os/BatteryStatsHistory;)V

    .line 429
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;ILcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;Lcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;Lcom/android/internal/os/BatteryStatsHistory$EventLogger;Lcom/android/internal/os/BatteryStatsHistory;)V
    .locals 4
    .param p1, "historyBuffer"    # Landroid/os/Parcel;
    .param p2, "maxHistoryBufferSize"    # I
    .param p3, "store"    # Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;
    .param p4, "stepDetailsCalculator"    # Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;
    .param p5, "clock"    # Lcom/android/internal/os/Clock;
    .param p6, "monotonicClock"    # Lcom/android/internal/os/MonotonicClock;
    .param p7, "tracer"    # Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;
    .param p8, "eventLogger"    # Lcom/android/internal/os/BatteryStatsHistory$EventLogger;
    .param p9, "writableHistory"    # Lcom/android/internal/os/BatteryStatsHistory;

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    .line 305
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mParcelIndex:I

    .line 307
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 309
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    .line 317
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    .line 319
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 320
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 321
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    .line 322
    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    .line 323
    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    .line 324
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    .line 325
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryElapsedRealtimeMs:J

    .line 326
    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryUptimeMs:J

    .line 334
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWrittenPowerStatsDescriptors:Landroid/util/ArraySet;

    .line 335
    iput-byte v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mLastHistoryStepLevel:B

    .line 336
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    .line 413
    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState:I

    .line 414
    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState2:I

    .line 436
    iput p2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    .line 437
    iput-object p4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStepDetailsCalculator:Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;

    .line 438
    iput-object p7, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

    .line 439
    iput-object p5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    .line 440
    iput-object p6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    .line 441
    iput-object p8, p0, Lcom/android/internal/os/BatteryStatsHistory;->mEventLogger:Lcom/android/internal/os/BatteryStatsHistory$EventLogger;

    .line 442
    iput-object p9, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWritableHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 443
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWritableHistory:Lcom/android/internal/os/BatteryStatsHistory;

    if-eqz v1, :cond_0

    .line 444
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    .line 445
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWritableHistory:Lcom/android/internal/os/BatteryStatsHistory;

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryMonotonicEndTime:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryMonotonicEndTime:J

    .line 448
    :cond_0
    if-eqz p1, :cond_1

    .line 449
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    goto :goto_0

    .line 451
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    .line 452
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistory;->initHistoryBuffer()V

    .line 455
    :goto_0
    if-eqz p9, :cond_2

    .line 456
    iget-object v0, p9, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    goto :goto_1

    .line 458
    :cond_2
    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    .line 459
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    if-eqz v0, :cond_4

    .line 460
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->getLatestFragment()Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    move-result-object v0

    .line 461
    .local v0, "activeFile":Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    if-nez v0, :cond_3

    .line 462
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v2}, Lcom/android/internal/os/MonotonicClock;->monotonicTime()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->createFragment(J)Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    move-result-object v0

    .line 464
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->setActiveFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V

    .line 467
    .end local v0    # "activeFile":Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    :cond_4
    :goto_1
    return-void
.end method

.method private blacklist buildBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;Landroid/os/BatteryStats$HistoryItem;)I
    .locals 10
    .param p1, "cur"    # Landroid/os/BatteryStats$HistoryItem;
    .param p2, "prev"    # Landroid/os/BatteryStats$HistoryItem;

    .line 2102
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iget-byte v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    sub-int/2addr v0, v1

    .line 2103
    .local v0, "levelDelta":I
    iget-short v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iget-short v2, p2, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    sub-int/2addr v1, v2

    .line 2104
    .local v1, "tempDelta":I
    iget-short v2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    iget-short v3, p2, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    sub-int/2addr v2, v3

    .line 2105
    .local v2, "voltDelta":I
    nop

    .line 2106
    const v3, 0xff8000

    const/4 v4, 0x2

    invoke-direct {p0, v1, v3, v4}, Lcom/android/internal/os/BatteryStatsHistory;->signedValueFits(III)Z

    move-result v5

    const/16 v6, 0x7ffc

    if-eqz v5, :cond_1

    .line 2107
    const/16 v5, 0xf

    invoke-direct {p0, v2, v6, v5}, Lcom/android/internal/os/BatteryStatsHistory;->signedValueFits(III)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    .line 2109
    .local v5, "overflow":Z
    :goto_1
    const/4 v7, 0x0

    .line 2110
    .local v7, "batt":I
    shl-int/lit8 v8, v0, 0x18

    const/high16 v9, -0x1000000

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    .line 2111
    if-eqz v5, :cond_2

    .line 2112
    or-int/lit8 v3, v7, 0x2

    .end local v7    # "batt":I
    .local v3, "batt":I
    goto :goto_2

    .line 2114
    .end local v3    # "batt":I
    .restart local v7    # "batt":I
    :cond_2
    shl-int/lit8 v4, v1, 0xf

    and-int/2addr v3, v4

    or-int/2addr v3, v7

    .line 2115
    .end local v7    # "batt":I
    .restart local v3    # "batt":I
    shl-int/lit8 v4, v2, 0x2

    and-int/2addr v4, v6

    or-int/2addr v3, v4

    .line 2118
    :goto_2
    return v3
.end method

.method private blacklist buildExtendedBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;)I
    .locals 3
    .param p1, "cur"    # Landroid/os/BatteryStats$HistoryItem;

    .line 2122
    const/4 v0, 0x0

    .line 2123
    .local v0, "battExt":I
    iget-short v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, -0x10000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 2124
    iget-short v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    shl-int/lit8 v1, v1, 0x0

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 2125
    return v0
.end method

.method private blacklist buildStateInt(Landroid/os/BatteryStats$HistoryItem;)I
    .locals 4
    .param p1, "h"    # Landroid/os/BatteryStats$HistoryItem;

    .line 2129
    const/4 v0, 0x0

    .line 2130
    .local v0, "plugType":I
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2131
    const/4 v0, 0x1

    goto :goto_0

    .line 2132
    :cond_0
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2133
    const/4 v0, 0x2

    goto :goto_0

    .line 2134
    :cond_1
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 2135
    const/4 v0, 0x3

    .line 2137
    :cond_2
    :goto_0
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x1d

    iget-byte v2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    and-int/lit8 v2, v2, 0x7

    shl-int/lit8 v2, v2, 0x1a

    or-int/2addr v1, v2

    and-int/lit8 v2, v0, 0x3

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    iget v2, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    return v1
.end method

.method private blacklist checkImmutable()V
    .locals 2

    .line 757
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    if-nez v0, :cond_0

    .line 760
    return-void

    .line 758
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterating over a mutable battery history"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist createFromBatteryUsageStatsParcel(Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsHistory;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    .line 939
    new-instance v0, Lcom/android/internal/os/BatteryStatsHistory;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsHistory;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private blacklist ensureHistoryTagArray()V
    .locals 5

    .line 2341
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 2342
    return-void

    .line 2345
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    .line 2346
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2347
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/BatteryStats$HistoryTag;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, -0x8001

    and-int/2addr v3, v4

    .line 2348
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$HistoryTag;

    .line 2347
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2349
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/BatteryStats$HistoryTag;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 2350
    :cond_1
    return-void
.end method

.method private blacklist initHistoryBuffer()V
    .locals 3

    .line 492
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryElapsedRealtimeMs:J

    .line 493
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryUptimeMs:J

    .line 494
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWrittenPowerStatsDescriptors:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 496
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v0}, Lcom/android/internal/os/MonotonicClock;->monotonicTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    .line 497
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataSize(I)V

    .line 498
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 499
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataCapacity(I)V

    .line 500
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 501
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 502
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 503
    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    .line 504
    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    .line 505
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    .line 506
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStepDetailsCalculator:Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStepDetailsCalculator:Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;->clear()V

    .line 509
    :cond_0
    return-void
.end method

.method private blacklist maybeFlushBufferAndWriteHistoryItem(Landroid/os/BatteryStats$HistoryItem;JJ)Z
    .locals 10
    .param p1, "cur"    # Landroid/os/BatteryStats$HistoryItem;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "uptimeMs"    # J

    .line 1721
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v8

    .line 1722
    .local v8, "dataSize":I
    iget v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    const/4 v2, 0x0

    if-ge v8, v0, :cond_0

    .line 1723
    return v2

    .line 1726
    :cond_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    const-string v3, "BatteryStatsHistory"

    if-nez v0, :cond_1

    .line 1727
    const-string v0, "mMaxHistoryBufferSize should not be zero when writing history"

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    const/16 v0, 0x400

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    .line 1731
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->tryLock()Z

    move-result v9

    .line 1732
    .local v9, "successfullyLocked":Z
    if-nez v9, :cond_3

    .line 1734
    iget v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    const v4, 0x186a0

    add-int/2addr v0, v4

    if-ge v8, v0, :cond_2

    .line 1735
    return v2

    .line 1740
    :cond_2
    const-string v0, "History buffer overflow exceeds 100000 bytes"

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    :cond_3
    new-instance v6, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v6}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    move-object v7, v6

    .line 1746
    .local v7, "copy":Landroid/os/BatteryStats$HistoryItem;
    invoke-virtual {v7, p1}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 1749
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsHistory;->startNextFragment(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1751
    if-eqz v9, :cond_4

    .line 1752
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->unlock()V

    .line 1757
    :cond_4
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->startRecordingHistory(JJZ)V

    .line 1760
    move-object v6, v7

    .end local v7    # "copy":Landroid/os/BatteryStats$HistoryItem;
    .local v6, "copy":Landroid/os/BatteryStats$HistoryItem;
    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    .line 1761
    const/4 v0, 0x1

    return v0

    .line 1751
    .end local v6    # "copy":Landroid/os/BatteryStats$HistoryItem;
    .restart local v7    # "copy":Landroid/os/BatteryStats$HistoryItem;
    :catchall_0
    move-exception v0

    move-object v6, v7

    .end local v7    # "copy":Landroid/os/BatteryStats$HistoryItem;
    .restart local v6    # "copy":Landroid/os/BatteryStats$HistoryItem;
    if-eqz v9, :cond_5

    .line 1752
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v2}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->unlock()V

    .line 1754
    :cond_5
    throw v0
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;Z)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "useBlobs"    # Z

    .line 982
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 983
    .local v0, "start":J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    .line 984
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 985
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 986
    .local v2, "temp":[B
    :goto_1
    if-eqz v2, :cond_0

    array-length v3, v2

    if-nez v3, :cond_2

    .line 987
    goto :goto_0

    .line 989
    :cond_2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 990
    .local v3, "p":Landroid/os/Parcel;
    array-length v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 991
    invoke-virtual {v3, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 992
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 993
    .end local v2    # "temp":[B
    .end local v3    # "p":Landroid/os/Parcel;
    goto :goto_0

    .line 997
    :cond_3
    return-void
.end method

.method private blacklist recordTraceCounters(III[Landroid/os/BatteryStats$BitDescription;)V
    .locals 7
    .param p1, "oldval"    # I
    .param p2, "newval"    # I
    .param p3, "mask"    # I
    .param p4, "descriptions"    # [Landroid/os/BatteryStats$BitDescription;

    .line 1546
    xor-int v0, p1, p2

    and-int/2addr v0, p3

    .line 1547
    .local v0, "diff":I
    if-nez v0, :cond_0

    return-void

    .line 1549
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p4

    if-ge v1, v2, :cond_4

    .line 1550
    aget-object v2, p4, v1

    .line 1551
    .local v2, "bd":Landroid/os/BatteryStats$BitDescription;
    iget v3, v2, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v3, v0

    if-nez v3, :cond_1

    goto :goto_3

    .line 1554
    :cond_1
    iget v3, v2, Landroid/os/BatteryStats$BitDescription;->shift:I

    if-gez v3, :cond_3

    .line 1555
    iget v3, v2, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v3, p2

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .local v3, "value":I
    :goto_1
    goto :goto_2

    .line 1557
    .end local v3    # "value":I
    :cond_3
    iget v3, v2, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v3, p2

    iget v4, v2, Landroid/os/BatteryStats$BitDescription;->shift:I

    shr-int/2addr v3, v4

    .line 1559
    .restart local v3    # "value":I
    :goto_2
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "battery_stats."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;->traceCounter(Ljava/lang/String;I)V

    .line 1549
    .end local v2    # "bd":Landroid/os/BatteryStats$BitDescription;
    .end local v3    # "value":I
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1561
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method private blacklist recordTraceEvents(ILandroid/os/BatteryStats$HistoryTag;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "tag"    # Landroid/os/BatteryStats$HistoryTag;

    .line 1527
    if-nez p1, :cond_0

    return-void

    .line 1529
    :cond_0
    const v0, -0xc001

    and-int/2addr v0, p1

    .line 1530
    .local v0, "idx":I
    const v1, 0x8000

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    const-string v1, "+"

    goto :goto_0

    .line 1531
    :cond_1
    and-int/lit16 v1, p1, 0x4000

    if-eqz v1, :cond_2

    const-string v1, "-"

    goto :goto_0

    :cond_2
    const-string v1, ""

    :goto_0
    nop

    .line 1533
    .local v1, "prefix":Ljava/lang/String;
    sget-object v2, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    .line 1534
    .local v2, "names":[Ljava/lang/String;
    if-ltz v0, :cond_4

    array-length v3, v2

    if-lt v0, v3, :cond_3

    goto :goto_1

    .line 1536
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "battery_stats."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1537
    .local v3, "track":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p2, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1538
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

    invoke-virtual {v5, v3, v4}, Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;->traceInstantEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    return-void

    .line 1534
    .end local v3    # "track":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    :cond_4
    :goto_1
    return-void
.end method

.method private blacklist setActiveFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V
    .locals 0
    .param p1, "file"    # Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    .line 549
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    .line 553
    return-void
.end method

.method private blacklist setBitField(IIII)I
    .locals 3
    .param p1, "bits"    # I
    .param p2, "value"    # I
    .param p3, "shift"    # I
    .param p4, "mask"    # I

    .line 1564
    shl-int v0, p2, p3

    .line 1565
    .local v0, "shiftedValue":I
    not-int v1, p4

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 1566
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not fit in the bit field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1567
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1566
    const-string v2, "BatteryStatsHistory"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    and-int/2addr v0, p4

    .line 1570
    :cond_0
    not-int v1, p4

    and-int/2addr v1, p1

    or-int/2addr v1, v0

    return v1
.end method

.method private blacklist signedValueFits(III)Z
    .locals 3
    .param p1, "value"    # I
    .param p2, "mask"    # I
    .param p3, "shift"    # I

    .line 2090
    ushr-int/2addr p2, p3

    .line 2095
    ushr-int/lit8 v0, p2, 0x1

    not-int v0, v0

    .line 2096
    .local v0, "msbAndLostBitsMask":I
    and-int v1, p1, v0

    .line 2098
    .local v1, "msbAndLostBits":I
    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method private blacklist startNextFragmentLocked(J)V
    .locals 8
    .param p1, "elapsedRealtimeMs"    # J

    .line 567
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 568
    .local v0, "start":J
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistory(Z)V

    .line 573
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/os/MonotonicClock;->monotonicTime(J)J

    move-result-wide v2

    .line 574
    .local v2, "monotonicStartTime":J
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v4, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->createFragment(J)Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/os/BatteryStatsHistory;->setActiveFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V

    .line 575
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    .line 576
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataSize(I)V

    .line 577
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 578
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataCapacity(I)V

    .line 579
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    .line 580
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v4}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 581
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v4}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 585
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 586
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/BatteryStats$HistoryTag;Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const v7, 0x8000

    or-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/BatteryStats$HistoryTag;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 589
    :cond_0
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWrittenPowerStatsDescriptors:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    .line 590
    return-void
.end method

.method private blacklist verifyVersion(Landroid/os/Parcel;)Z
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .line 794
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 795
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 796
    .local v1, "version":I
    const/16 v2, 0xd5

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private blacklist writeHistory(Z)V
    .locals 4
    .param p1, "fragmentComplete"    # Z

    .line 2209
    monitor-enter p0

    .line 2210
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2211
    const-string v0, "BatteryStatsHistory"

    const-string/jumbo v1, "writeHistory: this instance instance is read-only"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    monitor-exit p0

    return-void

    .line 2217
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v0}, Lcom/android/internal/os/MonotonicClock;->write()V

    .line 2219
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2221
    .local v0, "p":Landroid/os/Parcel;
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2222
    .local v1, "start":J
    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryBuffer(Landroid/os/Parcel;)V

    .line 2227
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    invoke-direct {p0, v0, v3, p1}, Lcom/android/internal/os/BatteryStatsHistory;->writeParcelLocked(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2229
    .end local v1    # "start":J
    :try_start_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2230
    nop

    .line 2231
    .end local v0    # "p":Landroid/os/Parcel;
    monitor-exit p0

    .line 2232
    return-void

    .line 2229
    .restart local v0    # "p":Landroid/os/Parcel;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2230
    nop

    .end local p0    # "this":Lcom/android/internal/os/BatteryStatsHistory;
    .end local p1    # "fragmentComplete":Z
    throw v1

    .line 2231
    .end local v0    # "p":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/android/internal/os/BatteryStatsHistory;
    .restart local p1    # "fragmentComplete":Z
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private blacklist writeHistoryBuffer(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;

    .line 2274
    const/16 v0, 0xd5

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2275
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2276
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryMonotonicEndTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2277
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicHistorySize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2278
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2283
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 2284
    return-void
.end method

.method private blacklist writeHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;Landroid/os/BatteryStats$HistoryItem;)V
    .locals 22
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "cur"    # Landroid/os/BatteryStats$HistoryItem;
    .param p3, "last"    # Landroid/os/BatteryStats$HistoryItem;

    .line 1889
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-wide v4, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryMonotonicEndTime:J

    .line 1891
    if-eqz v3, :cond_29

    iget-byte v5, v2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eqz v5, :cond_0

    goto/16 :goto_12

    .line 1897
    :cond_0
    const/4 v5, 0x0

    .line 1898
    .local v5, "extensionFlags":I
    iget-wide v6, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v8, v3, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long/2addr v6, v8

    .line 1899
    .local v6, "deltaTime":J
    invoke-direct {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->buildBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;Landroid/os/BatteryStats$HistoryItem;)I

    move-result v8

    .line 1900
    .local v8, "batteryLevelInt":I
    invoke-direct {v0, v3}, Lcom/android/internal/os/BatteryStatsHistory;->buildStateInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v9

    .line 1903
    .local v9, "lastStateInt":I
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-ltz v10, :cond_3

    const-wide/32 v10, 0x7fffffff

    cmp-long v10, v6, v10

    if-lez v10, :cond_1

    goto :goto_0

    .line 1905
    :cond_1
    const-wide/32 v10, 0x7fffd

    cmp-long v10, v6, v10

    if-ltz v10, :cond_2

    .line 1906
    const v10, 0x7fffe

    .local v10, "deltaTimeToken":I
    goto :goto_1

    .line 1908
    .end local v10    # "deltaTimeToken":I
    :cond_2
    long-to-int v10, v6

    .restart local v10    # "deltaTimeToken":I
    goto :goto_1

    .line 1904
    .end local v10    # "deltaTimeToken":I
    :cond_3
    :goto_0
    const v10, 0x7ffff

    .line 1910
    .restart local v10    # "deltaTimeToken":I
    :goto_1
    iget v11, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v12, -0x2000000

    and-int/2addr v11, v12

    or-int/2addr v11, v10

    .line 1912
    .local v11, "firstToken":I
    iget-byte v12, v2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iget-byte v13, v0, Lcom/android/internal/os/BatteryStatsHistory;->mLastHistoryStepLevel:B

    if-lt v12, v13, :cond_5

    iget-byte v12, v0, Lcom/android/internal/os/BatteryStatsHistory;->mLastHistoryStepLevel:B

    if-nez v12, :cond_4

    goto :goto_2

    .line 1919
    :cond_4
    const/4 v12, 0x0

    iput-object v12, v2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 1920
    iget-byte v12, v2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput-byte v12, v0, Lcom/android/internal/os/BatteryStatsHistory;->mLastHistoryStepLevel:B

    goto :goto_3

    .line 1913
    :cond_5
    :goto_2
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsHistory;->mStepDetailsCalculator:Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;

    invoke-interface {v12}, Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;->getHistoryStepDetails()Landroid/os/BatteryStats$HistoryStepDetails;

    move-result-object v12

    iput-object v12, v2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 1914
    iget-object v12, v2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    if-eqz v12, :cond_6

    .line 1915
    or-int/lit8 v8, v8, 0x1

    .line 1916
    iget-byte v12, v2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput-byte v12, v0, Lcom/android/internal/os/BatteryStatsHistory;->mLastHistoryStepLevel:B

    .line 1923
    :cond_6
    :goto_3
    if-eqz v8, :cond_7

    const/4 v13, 0x1

    goto :goto_4

    :cond_7
    const/4 v13, 0x0

    .line 1924
    .local v13, "batteryLevelIntChanged":Z
    :goto_4
    if-eqz v13, :cond_8

    .line 1925
    const/high16 v14, 0x80000

    or-int/2addr v11, v14

    .line 1927
    :cond_8
    invoke-direct {v0, v2}, Lcom/android/internal/os/BatteryStatsHistory;->buildStateInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v14

    .line 1928
    .local v14, "stateInt":I
    if-eq v14, v9, :cond_9

    const/4 v15, 0x1

    goto :goto_5

    :cond_9
    const/4 v15, 0x0

    .line 1929
    .local v15, "stateIntChanged":Z
    :goto_5
    if-eqz v15, :cond_a

    .line 1930
    const/high16 v16, 0x100000

    or-int v11, v11, v16

    .line 1932
    :cond_a
    iget-object v12, v2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    if-eqz v12, :cond_b

    .line 1933
    or-int/lit8 v5, v5, 0x2

    .line 1934
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsHistory;->mWrittenPowerStatsDescriptors:Landroid/util/ArraySet;

    iget-object v4, v2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    iget-object v4, v4, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v12, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1935
    or-int/lit8 v5, v5, 0x1

    .line 1938
    :cond_b
    iget-object v4, v2, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    if-eqz v4, :cond_c

    .line 1939
    or-int/lit8 v5, v5, 0x4

    .line 1941
    :cond_c
    if-eqz v5, :cond_d

    .line 1942
    iget v4, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v12, 0x20000

    or-int/2addr v4, v12

    iput v4, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    goto :goto_6

    .line 1944
    :cond_d
    iget v4, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v12, -0x20001

    and-int/2addr v4, v12

    iput v4, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1946
    :goto_6
    iget v4, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iget v12, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    if-ne v4, v12, :cond_f

    if-eqz v5, :cond_e

    goto :goto_7

    :cond_e
    const/4 v4, 0x0

    goto :goto_8

    :cond_f
    :goto_7
    const/4 v4, 0x1

    .line 1947
    .local v4, "state2IntChanged":Z
    :goto_8
    if-eqz v4, :cond_10

    .line 1948
    const/high16 v12, 0x200000

    or-int/2addr v11, v12

    .line 1950
    :cond_10
    iget-object v12, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-nez v12, :cond_11

    iget-object v12, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v12, :cond_12

    .line 1951
    :cond_11
    const/high16 v12, 0x400000

    or-int/2addr v11, v12

    .line 1953
    :cond_12
    iget v12, v2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v12, :cond_13

    .line 1954
    const/high16 v12, 0x800000

    or-int/2addr v11, v12

    .line 1957
    :cond_13
    iget v12, v2, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    move/from16 v17, v4

    .end local v4    # "state2IntChanged":Z
    .local v17, "state2IntChanged":Z
    iget v4, v3, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    if-eq v12, v4, :cond_14

    const/4 v4, 0x1

    goto :goto_9

    :cond_14
    const/4 v4, 0x0

    .line 1958
    .local v4, "batteryChargeChanged":Z
    :goto_9
    if-eqz v4, :cond_15

    .line 1959
    const/high16 v12, 0x1000000

    or-int/2addr v11, v12

    .line 1961
    :cond_15
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1967
    const v12, 0x7fffe

    if-lt v10, v12, :cond_17

    .line 1968
    if-ne v10, v12, :cond_16

    .line 1970
    long-to-int v12, v6

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 1973
    :cond_16
    invoke-virtual {v1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 1976
    :cond_17
    :goto_a
    if-eqz v13, :cond_19

    .line 1977
    and-int/lit8 v12, v8, 0x2

    if-eqz v12, :cond_18

    const/4 v12, 0x1

    goto :goto_b

    :cond_18
    const/4 v12, 0x0

    .line 1978
    .local v12, "overflow":Z
    :goto_b
    const/16 v18, 0x0

    .line 1980
    .local v18, "extendedBatteryLevelInt":I
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1981
    if-eqz v12, :cond_19

    .line 1982
    invoke-direct {v0, v2}, Lcom/android/internal/os/BatteryStatsHistory;->buildExtendedBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v3

    .line 1983
    .end local v18    # "extendedBatteryLevelInt":I
    .local v3, "extendedBatteryLevelInt":I
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1997
    .end local v3    # "extendedBatteryLevelInt":I
    .end local v12    # "overflow":Z
    :cond_19
    if-eqz v15, :cond_1a

    .line 1998
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 2008
    :cond_1a
    if-eqz v17, :cond_1b

    .line 2009
    iget v3, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2015
    :cond_1b
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-nez v3, :cond_1d

    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_1c

    goto :goto_c

    :cond_1c
    move/from16 v19, v4

    const v18, 0x8000

    goto :goto_10

    .line 2018
    :cond_1d
    :goto_c
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_1e

    .line 2019
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0, v3}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I

    move-result v3

    .local v3, "wakeLockIndex":I
    goto :goto_d

    .line 2025
    .end local v3    # "wakeLockIndex":I
    :cond_1e
    const v3, 0xffff

    .line 2027
    .restart local v3    # "wakeLockIndex":I
    :goto_d
    const v18, 0x8000

    iget-object v12, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v12, :cond_1f

    .line 2028
    iget-object v12, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0, v12}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I

    move-result v12

    .local v12, "wakeReasonIndex":I
    goto :goto_e

    .line 2034
    .end local v12    # "wakeReasonIndex":I
    :cond_1f
    const v12, 0xffff

    .line 2036
    .restart local v12    # "wakeReasonIndex":I
    :goto_e
    shl-int/lit8 v19, v12, 0x10

    move/from16 v20, v3

    .end local v3    # "wakeLockIndex":I
    .local v20, "wakeLockIndex":I
    or-int v3, v19, v20

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2037
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_20

    and-int v3, v20, v18

    if-eqz v3, :cond_20

    .line 2039
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move/from16 v19, v4

    const/4 v4, 0x0

    .end local v4    # "batteryChargeChanged":Z
    .local v19, "batteryChargeChanged":Z
    invoke-virtual {v3, v1, v4}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2040
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    goto :goto_f

    .line 2037
    .end local v19    # "batteryChargeChanged":Z
    .restart local v4    # "batteryChargeChanged":Z
    :cond_20
    move/from16 v19, v4

    .line 2042
    .end local v4    # "batteryChargeChanged":Z
    .restart local v19    # "batteryChargeChanged":Z
    :goto_f
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_21

    and-int v3, v12, v18

    if-eqz v3, :cond_21

    .line 2044
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2045
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    .line 2048
    .end local v12    # "wakeReasonIndex":I
    .end local v20    # "wakeLockIndex":I
    :cond_21
    :goto_10
    iget v3, v2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v3, :cond_22

    .line 2049
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0, v3}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I

    move-result v3

    .line 2050
    .local v3, "index":I
    iget v4, v2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v12, 0xffff

    and-int/2addr v4, v12

    const/high16 v12, -0x10000

    move-wide/from16 v20, v6

    .end local v6    # "deltaTime":J
    .local v20, "deltaTime":J
    const/16 v6, 0x10

    invoke-direct {v0, v4, v3, v6, v12}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v4

    .line 2051
    .local v4, "codeAndIndex":I
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2052
    and-int v6, v3, v18

    if-eqz v6, :cond_23

    .line 2053
    iget-object v6, v2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2054
    const/4 v6, 0x1

    iput-boolean v6, v2, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    goto :goto_11

    .line 2048
    .end local v3    # "index":I
    .end local v4    # "codeAndIndex":I
    .end local v20    # "deltaTime":J
    .restart local v6    # "deltaTime":J
    :cond_22
    move-wide/from16 v20, v6

    .line 2063
    .end local v6    # "deltaTime":J
    .restart local v20    # "deltaTime":J
    :cond_23
    :goto_11
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    if-eqz v3, :cond_24

    .line 2064
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-virtual {v3, v1}, Landroid/os/BatteryStats$HistoryStepDetails;->writeToParcel(Landroid/os/Parcel;)V

    .line 2067
    :cond_24
    if-eqz v19, :cond_25

    .line 2069
    iget v3, v2, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2071
    :cond_25
    iget-wide v3, v2, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2072
    iget-wide v3, v2, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2073
    if-eqz v5, :cond_28

    .line 2074
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2075
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    if-eqz v3, :cond_27

    .line 2076
    and-int/lit8 v3, v5, 0x1

    if-eqz v3, :cond_26

    .line 2078
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    iget-object v3, v3, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v3, v1}, Lcom/android/internal/os/PowerStats$Descriptor;->writeSummaryToParcel(Landroid/os/Parcel;)V

    .line 2079
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHistory;->mWrittenPowerStatsDescriptors:Landroid/util/ArraySet;

    iget-object v4, v2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    iget-object v4, v4, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2081
    :cond_26
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    invoke-virtual {v3, v1}, Lcom/android/internal/os/PowerStats;->writeToParcel(Landroid/os/Parcel;)V

    .line 2083
    :cond_27
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    if-eqz v3, :cond_28

    .line 2084
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    invoke-virtual {v3, v1}, Landroid/os/BatteryStats$ProcessStateChange;->writeToParcel(Landroid/os/Parcel;)V

    .line 2087
    :cond_28
    return-void

    .line 1892
    .end local v5    # "extensionFlags":I
    .end local v8    # "batteryLevelInt":I
    .end local v9    # "lastStateInt":I
    .end local v10    # "deltaTimeToken":I
    .end local v11    # "firstToken":I
    .end local v13    # "batteryLevelIntChanged":Z
    .end local v14    # "stateInt":I
    .end local v15    # "stateIntChanged":Z
    .end local v17    # "state2IntChanged":Z
    .end local v19    # "batteryChargeChanged":Z
    .end local v20    # "deltaTime":J
    :cond_29
    :goto_12
    const v3, 0x7fffd

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1893
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Landroid/os/BatteryStats$HistoryItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1894
    return-void
.end method

.method private blacklist writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;)V
    .locals 15
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "cur"    # Landroid/os/BatteryStats$HistoryItem;

    .line 1605
    move-wide/from16 v1, p1

    move-object/from16 v5, p5

    iget v3, v5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v3, :cond_0

    iget-object v3, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 1606
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " without a name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BatteryStatsHistory"

    invoke-static {v4, v3}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    :cond_0
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTracer:Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;->tracingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1610
    iget v3, v5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object v6, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {p0, v3, v6}, Lcom/android/internal/os/BatteryStatsHistory;->recordTraceEvents(ILandroid/os/BatteryStats$HistoryTag;)V

    .line 1611
    iget v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState:I

    iget v6, v5, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v7, 0x3fffffff    # 1.9999999f

    sget-object v8, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    invoke-direct {p0, v3, v6, v7, v8}, Lcom/android/internal/os/BatteryStatsHistory;->recordTraceCounters(III[Landroid/os/BatteryStats$BitDescription;)V

    .line 1613
    iget v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState2:I

    iget v6, v5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    sget-object v7, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    invoke-direct {p0, v3, v6, v4, v7}, Lcom/android/internal/os/BatteryStatsHistory;->recordTraceCounters(III[Landroid/os/BatteryStats$BitDescription;)V

    .line 1615
    iget v3, v5, Landroid/os/BatteryStats$HistoryItem;->states:I

    iput v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState:I

    .line 1616
    iget v3, v5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iput v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTraceLastState2:I

    .line 1619
    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHaveBatteryLevel:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    if-nez v3, :cond_3

    :cond_2
    iget-object v3, v5, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    if-nez v3, :cond_3

    iget-object v3, v5, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    if-nez v3, :cond_3

    .line 1622
    return-void

    .line 1625
    :cond_3
    iget-boolean v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    if-eqz v3, :cond_d

    .line 1629
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v3, v1, v2}, Lcom/android/internal/os/MonotonicClock;->monotonicTime(J)J

    move-result-wide v6

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v8, v3, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v7, v6, v8

    .line 1631
    .local v7, "timeDiffMs":J
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget v6, v5, Landroid/os/BatteryStats$HistoryItem;->states:I

    xor-int v9, v3, v6

    .line 1632
    .local v9, "diffStates":I
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iget v6, v5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    xor-int v10, v3, v6

    .line 1633
    .local v10, "diffStates2":I
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    xor-int v11, v3, v6

    .line 1634
    .local v11, "lastDiffStates":I
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    xor-int v12, v3, v6

    .line 1643
    .local v12, "lastDiffStates2":I
    iget v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    if-ltz v3, :cond_a

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-nez v3, :cond_a

    const-wide/16 v13, 0x3e8

    cmp-long v3, v7, v13

    if-gez v3, :cond_a

    and-int v3, v9, v11

    if-nez v3, :cond_a

    and-int v3, v10, v12

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-boolean v3, v3, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    if-nez v3, :cond_a

    iget-boolean v3, v5, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_4

    iget-object v3, v5, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-nez v3, :cond_a

    :cond_4
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_5

    iget-object v3, v5, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-nez v3, :cond_a

    :cond_5
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v3, :cond_6

    iget v3, v5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-nez v3, :cond_a

    :cond_6
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iget-byte v6, v5, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v3, v6, :cond_a

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iget-byte v6, v5, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    if-ne v3, v6, :cond_a

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iget-byte v6, v5, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-ne v3, v6, :cond_a

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iget-byte v6, v5, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-ne v3, v6, :cond_a

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-short v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iget-short v6, v5, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    if-ne v3, v6, :cond_a

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-short v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    iget-short v6, v5, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    if-ne v3, v6, :cond_a

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    if-nez v3, :cond_a

    .line 1665
    iget-wide v13, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicHistorySize:J

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    iget v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    sub-int/2addr v3, v6

    int-to-long v4, v3

    sub-long/2addr v13, v4

    iput-wide v13, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicHistorySize:J

    .line 1666
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataSize(I)V

    .line 1667
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1668
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    .line 1670
    sub-long/2addr v1, v7

    .line 1675
    .end local p1    # "elapsedRealtimeMs":J
    .local v1, "elapsedRealtimeMs":J
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_7

    .line 1676
    move-object/from16 v5, p5

    iget-object v3, v5, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v3, v5, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1677
    iget-object v3, v5, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    goto :goto_0

    .line 1675
    :cond_7
    move-object/from16 v5, p5

    .line 1682
    :goto_0
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_8

    .line 1683
    iget-object v3, v5, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v3, v5, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1684
    iget-object v3, v5, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 1689
    :cond_8
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v3, :cond_9

    .line 1690
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iput v3, v5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1691
    iget-object v3, v5, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v3, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1692
    iget-object v3, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 1694
    :cond_9
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 1697
    :cond_a
    move-object v0, p0

    move-wide v2, v1

    move-object v1, v5

    move-wide/from16 v4, p3

    .end local v1    # "elapsedRealtimeMs":J
    .local v2, "elapsedRealtimeMs":J
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHistory;->maybeFlushBufferAndWriteHistoryItem(Landroid/os/BatteryStats$HistoryItem;JJ)Z

    move-result v6

    move-object v13, v1

    move-wide v1, v2

    .end local v2    # "elapsedRealtimeMs":J
    .restart local v1    # "elapsedRealtimeMs":J
    if-eqz v6, :cond_b

    .line 1698
    return-void

    .line 1701
    :cond_b
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    if-nez v3, :cond_c

    .line 1703
    new-instance v5, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v5}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 1704
    .local v5, "copy":Landroid/os/BatteryStats$HistoryItem;
    invoke-virtual {v5, v13}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 1705
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v3}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v5, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 1706
    const/4 v3, 0x0

    iput-object v3, v5, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1707
    iput-object v3, v5, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1708
    const/4 v4, 0x0

    iput v4, v5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1709
    iput-object v3, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1710
    iput-boolean v4, v5, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    .line 1711
    iput-object v3, v5, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    .line 1712
    iput-object v3, v5, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    .line 1713
    const/4 v6, 0x7

    move-object v0, p0

    move-wide/from16 v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    .line 1715
    .end local v5    # "copy":Landroid/os/BatteryStats$HistoryItem;
    :cond_c
    const/4 v6, 0x0

    move-object v0, p0

    move-wide/from16 v3, p3

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    .line 1716
    return-void

    .line 1626
    .end local v1    # "elapsedRealtimeMs":J
    .end local v7    # "timeDiffMs":J
    .end local v9    # "diffStates":I
    .end local v10    # "diffStates2":I
    .end local v11    # "lastDiffStates":I
    .end local v12    # "lastDiffStates2":I
    .restart local p1    # "elapsedRealtimeMs":J
    :cond_d
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v3, "Battery history is not writable"

    invoke-direct {v0, v3}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V
    .locals 8
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "cur"    # Landroid/os/BatteryStats$HistoryItem;
    .param p6, "cmd"    # B

    .line 1767
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    if-eqz v0, :cond_3

    .line 1770
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    .line 1771
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 1772
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-boolean v0, v0, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p5, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1773
    .local v0, "hasTags":Z
    :goto_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/os/MonotonicClock;->monotonicTime(J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p6, p5}, Landroid/os/BatteryStats$HistoryItem;->setTo(JBLandroid/os/BatteryStats$HistoryItem;)V

    .line 1774
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v2, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v4, v4, Landroid/os/BatteryStats$HistoryItem;->time:J

    const-wide/32 v6, 0xea60

    sub-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 1775
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Significantly earlier event written to battery history: time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v3, v3, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " previous="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v3, v3, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BatteryStatsHistory"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    :cond_2
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iput-boolean v0, v2, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    .line 1780
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;Landroid/os/BatteryStats$HistoryItem;)V

    .line 1781
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicHistorySize:J

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    iget v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferLastPos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicHistorySize:J

    .line 1782
    const/4 v2, 0x0

    iput-object v2, p5, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1783
    iput-object v2, p5, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1784
    iput v1, p5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1785
    iput-object v2, p5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1786
    iput-boolean v1, p5, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    .line 1787
    iput-object v2, p5, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    .line 1788
    iput-object v2, p5, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    .line 1794
    return-void

    .line 1768
    .end local v0    # "hasTags":Z
    :cond_3
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "Battery history is not writable"

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I
    .locals 7
    .param p1, "tag"    # Landroid/os/BatteryStats$HistoryTag;

    .line 2153
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    const-string v1, "BatteryStatsHistory"

    if-nez v0, :cond_0

    .line 2154
    const-string/jumbo v0, "writeHistoryTag called with null name"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    const-string v0, ""

    iput-object v0, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 2158
    :cond_0
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2159
    .local v0, "stringLength":I
    const/16 v2, 0x400

    if-le v0, v2, :cond_1

    .line 2160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Long battery history tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    iget-object v1, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 2164
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2166
    .local v1, "idxObj":Ljava/lang/Integer;
    const v2, 0x8000

    if-eqz v1, :cond_3

    .line 2167
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2168
    .local v3, "idx":I
    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 2169
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    const v4, -0x8001

    and-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2171
    :cond_2
    return v3

    .line 2172
    .end local v3    # "idx":I
    :cond_3
    iget v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    const/16 v4, 0x7ffe

    if-ge v3, v4, :cond_5

    .line 2173
    iget v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    .line 2174
    .restart local v3    # "idx":I
    new-instance v4, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v4}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    .line 2175
    .local v4, "key":Landroid/os/BatteryStats$HistoryTag;
    invoke-virtual {v4, p1}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 2176
    iput v3, p1, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 2177
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2178
    iget v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    .line 2180
    iget v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    add-int/lit8 v6, v0, 0x1

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    .line 2181
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    if-eqz v5, :cond_4

    .line 2182
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2184
    :cond_4
    or-int/2addr v2, v3

    return v2

    .line 2186
    .end local v3    # "idx":I
    .end local v4    # "key":Landroid/os/BatteryStats$HistoryTag;
    :cond_5
    const/4 v2, -0x1

    iput v2, p1, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 2188
    const v2, 0xfffe

    return v2
.end method

.method private blacklist writeParcelLocked(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;Z)V
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "fragment"    # Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    .param p3, "fragmentComplete"    # Z

    .line 2289
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2291
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2292
    .local v0, "startTimeMs":J
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-virtual {p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-interface {v2, p2, v3, p3}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->writeFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;[BZ)V

    .line 2293
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mEventLogger:Lcom/android/internal/os/BatteryStatsHistory$EventLogger;

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/BatteryStatsHistory$EventLogger;->writeCommitSysConfigFile(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2295
    .end local v0    # "startTimeMs":J
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2296
    nop

    .line 2297
    return-void

    .line 2295
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2296
    throw v0
.end method

.method private blacklist writeToParcel(Landroid/os/Parcel;ZJ)V
    .locals 13
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "useBlobs"    # Z
    .param p3, "preferredEarliestIncludedTimestampMs"    # J

    .line 895
    const-string v0, "BatteryStatsHistory.writeToParcel"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 896
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->lock()V

    .line 898
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 899
    .local v3, "start":J
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 900
    .local v0, "fragments":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    const/4 v8, 0x0

    if-ge v5, v6, :cond_4

    .line 901
    const-wide v9, 0x7fffffffffffffffL

    .line 902
    .local v9, "monotonicEndTime":J
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_0

    .line 903
    add-int/lit8 v6, v5, 0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    iget-wide v11, v6, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->monotonicTimeMs:J

    move-wide v9, v11

    .line 906
    :cond_0
    cmp-long v6, v9, p3

    if-gez v6, :cond_1

    .line 907
    goto :goto_1

    .line 910
    :cond_1
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    invoke-interface {v6, v11}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->readFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)[B

    move-result-object v6

    .line 911
    .local v6, "data":[B
    if-nez v6, :cond_2

    .line 912
    const-string v7, "BatteryStatsHistory"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error reading history fragment "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    goto :goto_1

    .line 916
    :cond_2
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 917
    if-eqz p2, :cond_3

    .line 918
    array-length v7, v6

    invoke-virtual {p1, v6, v8, v7}, Landroid/os/Parcel;->writeBlob([BII)V

    goto :goto_1

    .line 921
    :cond_3
    array-length v7, v6

    invoke-virtual {p1, v6, v8, v7}, Landroid/os/Parcel;->writeByteArray([BII)V

    .line 900
    .end local v6    # "data":[B
    .end local v9    # "monotonicEndTime":J
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 924
    .end local v5    # "i":I
    :cond_4
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    .end local v0    # "fragments":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;>;"
    .end local v3    # "start":J
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->unlock()V

    .line 930
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 931
    nop

    .line 932
    return-void

    .line 929
    :catchall_0
    move-exception v0

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v3}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->unlock()V

    .line 930
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 931
    throw v0
.end method


# virtual methods
.method public blacklist commitCurrentHistoryBatchLocked()V
    .locals 2

    .line 2196
    monitor-enter p0

    .line 2197
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    const/4 v1, -0x1

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 2198
    monitor-exit p0

    .line 2199
    return-void

    .line 2198
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist continueRecordingHistory()V
    .locals 9

    .line 1070
    monitor-enter p0

    .line 1071
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->hasCompletedFragments()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1072
    monitor-exit p0

    return-void

    .line 1075
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    .line 1076
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    move-wide v3, v0

    .line 1077
    .local v3, "elapsedRealtimeMs":J
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v5

    .line 1078
    .local v5, "uptimeMs":J
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, 0x4

    move-object v2, p0

    :try_start_1
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    .line 1079
    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsHistory;->startRecordingHistory(JJZ)V

    .line 1080
    .end local v3    # "elapsedRealtimeMs":J
    .end local v5    # "uptimeMs":J
    monitor-exit p0

    .line 1081
    return-void

    .line 1080
    :catchall_0
    move-exception v0

    move-object v2, p0

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public blacklist copy()Lcom/android/internal/os/BatteryStatsHistory;
    .locals 13

    .line 523
    const-string v0, "BatteryStatsHistory.copy"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 525
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 527
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    move-object v4, v0

    .line 528
    .local v4, "historyBufferCopy":Landroid/os/Parcel;
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 530
    new-instance v3, Lcom/android/internal/os/BatteryStatsHistory;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    iget-object v11, p0, Lcom/android/internal/os/BatteryStatsHistory;->mEventLogger:Lcom/android/internal/os/BatteryStatsHistory$EventLogger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v12, p0

    :try_start_2
    invoke-direct/range {v3 .. v12}, Lcom/android/internal/os/BatteryStatsHistory;-><init>(Landroid/os/Parcel;ILcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;Lcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;Lcom/android/internal/os/BatteryStatsHistory$TraceDelegate;Lcom/android/internal/os/BatteryStatsHistory$EventLogger;Lcom/android/internal/os/BatteryStatsHistory;)V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 534
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 530
    return-object v3

    .line 532
    .end local v4    # "historyBufferCopy":Landroid/os/Parcel;
    :catchall_0
    move-exception v0

    move-object v12, p0

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local p0    # "this":Lcom/android/internal/os/BatteryStatsHistory;
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 534
    .restart local p0    # "this":Lcom/android/internal/os/BatteryStatsHistory;
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 532
    :catchall_2
    move-exception v0

    goto :goto_0

    .line 534
    :catchall_3
    move-exception v0

    move-object v12, p0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 535
    throw v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;JJ)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "startTimeMs"    # J
    .param p4, "endTimeMs"    # J

    .line 2364
    new-instance v0, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    move-object v1, v0

    .line 2365
    .local v1, "printer":Landroid/os/BatteryStats$HistoryPrinter;
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/internal/os/BatteryStatsHistory;->iterate(JJ)Lcom/android/internal/os/BatteryStatsHistoryIterator;

    move-result-object v8

    .line 2366
    .local v8, "iterate":Lcom/android/internal/os/BatteryStatsHistoryIterator;
    :goto_0
    :try_start_0
    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2367
    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->next()Landroid/os/BatteryStats$HistoryItem;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2368
    .local v3, "next":Landroid/os/BatteryStats$HistoryItem;
    const/4 v6, 0x0

    const/4 v7, 0x1

    const-wide/16 v4, 0x0

    move-object v2, p1

    .end local p1    # "pw":Ljava/io/PrintWriter;
    .local v2, "pw":Ljava/io/PrintWriter;
    :try_start_1
    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2369
    .end local v3    # "next":Landroid/os/BatteryStats$HistoryItem;
    move-object p1, v2

    goto :goto_0

    .line 2365
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 2370
    .end local v2    # "pw":Ljava/io/PrintWriter;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    :cond_0
    move-object v2, p1

    .end local p1    # "pw":Ljava/io/PrintWriter;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V

    .line 2371
    .end local v8    # "iterate":Lcom/android/internal/os/BatteryStatsHistoryIterator;
    :cond_1
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 2372
    return-void

    .line 2365
    .end local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v8    # "iterate":Lcom/android/internal/os/BatteryStatsHistoryIterator;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_1
    move-exception v0

    move-object v2, p1

    move-object p1, v0

    .end local p1    # "pw":Ljava/io/PrintWriter;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    :goto_1
    if-eqz v8, :cond_2

    :try_start_2
    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p1
.end method

.method public blacklist forceRecordAllHistory()V
    .locals 1

    .line 1046
    monitor-enter p0

    .line 1047
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHaveBatteryLevel:Z

    .line 1048
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    .line 1049
    monitor-exit p0

    .line 1050
    return-void

    .line 1049
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist getActiveFragment()Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    .locals 1

    .line 1006
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    return-object v0
.end method

.method public blacklist getBatteryHistoryStore()Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;
    .locals 1

    .line 1001
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    return-object v0
.end method

.method public blacklist getHistoryBufferStartTime(Landroid/os/Parcel;)J
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .line 804
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 805
    .local v0, "pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 806
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 807
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 808
    .local v1, "monotonicTime":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 809
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 810
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 811
    return-wide v1
.end method

.method public blacklist getHistoryStringPoolBytes()I
    .locals 1

    .line 2312
    monitor-enter p0

    .line 2313
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    monitor-exit p0

    return v0

    .line 2314
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist getHistoryStringPoolSize()I
    .locals 1

    .line 2303
    monitor-enter p0

    .line 2304
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    monitor-exit p0

    return v0

    .line 2305
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist getHistoryTagPoolString(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 2321
    monitor-enter p0

    .line 2322
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistory;->ensureHistoryTagArray()V

    .line 2323
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$HistoryTag;

    .line 2324
    .local v0, "historyTag":Landroid/os/BatteryStats$HistoryTag;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return-object v1

    .line 2325
    .end local v0    # "historyTag":Landroid/os/BatteryStats$HistoryTag;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist getHistoryTagPoolUid(I)I
    .locals 2
    .param p1, "index"    # I

    .line 2332
    monitor-enter p0

    .line 2333
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistory;->ensureHistoryTagArray()V

    .line 2334
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$HistoryTag;

    .line 2335
    .local v0, "historyTag":Landroid/os/BatteryStats$HistoryTag;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    monitor-exit p0

    return v1

    .line 2336
    .end local v0    # "historyTag":Landroid/os/BatteryStats$HistoryTag;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist getHistoryUsedSize()I
    .locals 3

    .line 1013
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->getSize()I

    move-result v0

    .line 1014
    .local v0, "ret":I
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1015
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1016
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1017
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 1016
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1020
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public blacklist getMonotonicHistorySize()J
    .locals 2

    .line 2357
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicHistorySize:J

    return-wide v0
.end method

.method public blacklist getNextParcel(JJ)Landroid/os/Parcel;
    .locals 9
    .param p1, "startTimeMs"    # J
    .param p3, "endTimeMs"    # J

    .line 680
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistory;->checkImmutable()V

    .line 683
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 684
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    iget v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcelEnd:I

    if-ge v0, v2, :cond_0

    .line 686
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    return-object v0

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    if-ne v0, v2, :cond_1

    .line 689
    return-object v1

    .line 690
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    .line 691
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 693
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 697
    :cond_3
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 698
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    move-wide v5, p1

    move-wide v7, p3

    .end local p1    # "startTimeMs":J
    .end local p3    # "endTimeMs":J
    .local v5, "startTimeMs":J
    .local v7, "endTimeMs":J
    invoke-interface/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->getNextFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;JJ)Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    move-result-object p1

    move-object v4, p1

    .line 700
    .local v4, "next":Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    :goto_0
    if-eqz v4, :cond_7

    .line 701
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    .line 702
    iput v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcelEnd:I

    .line 703
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    .line 704
    .local p1, "p":Landroid/os/Parcel;
    invoke-virtual {p0, p1, v4}, Lcom/android/internal/os/BatteryStatsHistory;->readFragmentToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 705
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 706
    .local p2, "bufSize":I
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p3

    .line 707
    .local p3, "curPos":I
    add-int p4, p3, p2

    iput p4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcelEnd:I

    .line 708
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    .line 709
    iget p4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcelEnd:I

    if-ge p3, p4, :cond_4

    .line 710
    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    .line 711
    iget-object p4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    return-object p4

    .line 713
    .end local p2    # "bufSize":I
    .end local p3    # "curPos":I
    :cond_4
    goto :goto_1

    .line 714
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 716
    :goto_1
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->getNextFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;JJ)Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    move-result-object v4

    .line 717
    .end local p1    # "p":Landroid/os/Parcel;
    goto :goto_0

    .line 697
    .end local v4    # "next":Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    .end local v5    # "startTimeMs":J
    .end local v7    # "endTimeMs":J
    .local p1, "startTimeMs":J
    .local p3, "endTimeMs":J
    :cond_6
    move-wide v5, p1

    move-wide v7, p3

    .line 722
    .end local p1    # "startTimeMs":J
    .end local p3    # "endTimeMs":J
    .restart local v5    # "startTimeMs":J
    .restart local v7    # "endTimeMs":J
    :cond_7
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    if-eqz p1, :cond_a

    .line 723
    :goto_2
    iget p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mParcelIndex:I

    iget-object p2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_a

    .line 724
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryParcels:Ljava/util/List;

    iget p2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mParcelIndex:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mParcelIndex:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcel;

    .line 725
    .local p1, "p":Landroid/os/Parcel;
    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->verifyVersion(Landroid/os/Parcel;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 726
    goto :goto_2

    .line 729
    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 731
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 733
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 735
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 736
    .restart local p2    # "bufSize":I
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p3

    .line 737
    .local p3, "curPos":I
    add-int p4, p3, p2

    iput p4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcelEnd:I

    .line 738
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    .line 739
    iget p4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcelEnd:I

    if-ge p3, p4, :cond_9

    .line 740
    iget-object p4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    return-object p4

    .line 742
    .end local p1    # "p":Landroid/os/Parcel;
    .end local p2    # "bufSize":I
    .end local p3    # "curPos":I
    :cond_9
    goto :goto_2

    .line 746
    :cond_a
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result p1

    if-gtz p1, :cond_b

    .line 748
    return-object v1

    .line 750
    :cond_b
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 751
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    .line 752
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result p1

    iput p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcelEnd:I

    .line 753
    iget-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    return-object p1
.end method

.method public blacklist getStartTime()J
    .locals 3

    .line 618
    monitor-enter p0

    .line 619
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->getEarliestFragment()Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    move-result-object v0

    .line 620
    .local v0, "firstFragment":Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    if-eqz v0, :cond_0

    .line 621
    iget-wide v1, v0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->monotonicTimeMs:J

    monitor-exit p0

    return-wide v1

    .line 623
    :cond_0
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    monitor-exit p0

    return-wide v1

    .line 625
    .end local v0    # "firstFragment":Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist isReadOnly()Z
    .locals 1

    .line 542
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist isRecordingHistory()Z
    .locals 1

    .line 1036
    monitor-enter p0

    .line 1037
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    monitor-exit p0

    return v0

    .line 1038
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist isResetEnabled()Z
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->isLocked()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist iterate(JJ)Lcom/android/internal/os/BatteryStatsHistoryIterator;
    .locals 7
    .param p1, "startTimeMs"    # J
    .param p3, "endTimeMs"    # J

    .line 638
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMutable:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mIteratorCookie:I

    if-eqz v0, :cond_0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    goto :goto_0

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    if-eqz v0, :cond_1

    .line 643
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->lock()V

    .line 645
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    .line 646
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcel:Landroid/os/Parcel;

    .line 647
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mCurrentParcelEnd:I

    .line 648
    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mParcelIndex:I

    .line 649
    new-instance v1, Lcom/android/internal/os/BatteryStatsHistoryIterator;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    .end local p1    # "startTimeMs":J
    .end local p3    # "endTimeMs":J
    .local v3, "startTimeMs":J
    .local v5, "endTimeMs":J
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistoryIterator;-><init>(Lcom/android/internal/os/BatteryStatsHistory;JJ)V

    .line 651
    .local v1, "iterator":Lcom/android/internal/os/BatteryStatsHistoryIterator;
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    iput p1, v2, Lcom/android/internal/os/BatteryStatsHistory;->mIteratorCookie:I

    .line 652
    const-string p1, "BatteryStatsHistory.iterate"

    iget p2, v2, Lcom/android/internal/os/BatteryStatsHistory;->mIteratorCookie:I

    const-wide/32 p3, 0x80000

    invoke-static {p3, p4, p1, p2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 654
    return-object v1

    .line 638
    .end local v1    # "iterator":Lcom/android/internal/os/BatteryStatsHistoryIterator;
    .end local v3    # "startTimeMs":J
    .end local v5    # "endTimeMs":J
    .restart local p1    # "startTimeMs":J
    .restart local p3    # "endTimeMs":J
    :cond_2
    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    .line 639
    .end local p1    # "startTimeMs":J
    .end local p3    # "endTimeMs":J
    .restart local v3    # "startTimeMs":J
    .restart local v5    # "endTimeMs":J
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory;->copy()Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object p1

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/android/internal/os/BatteryStatsHistory;->iterate(JJ)Lcom/android/internal/os/BatteryStatsHistoryIterator;

    move-result-object p1

    return-object p1
.end method

.method blacklist iteratorFinished()V
    .locals 4

    .line 661
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 662
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->unlock()V

    .line 665
    :cond_0
    const-string v0, "BatteryStatsHistory.iterate"

    iget v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mIteratorCookie:I

    const-wide/32 v2, 0x80000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 667
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mIteratorCookie:I

    .line 668
    return-void
.end method

.method public blacklist maybeUpdateWakelockTag(JJLjava/lang/String;I)Z
    .locals 2
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "historyName"    # Ljava/lang/String;
    .param p6, "uid"    # I

    .line 1256
    monitor-enter p0

    .line 1257
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eqz v0, :cond_0

    .line 1258
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 1260
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_1

    .line 1262
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1263
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1264
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p5, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1265
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput p6, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 1266
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1268
    :cond_1
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 1269
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist readFragmentToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)Z
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "fragment"    # Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    .line 770
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0, p2}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->readFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)[B

    move-result-object v0

    .line 771
    .local v0, "data":[B
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 772
    return v1

    .line 774
    :cond_0
    array-length v2, v0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 775
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 776
    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->verifyVersion(Landroid/os/Parcel;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 777
    return v1

    .line 780
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 782
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 784
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 785
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 977
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->readHistoryBuffer(Landroid/os/Parcel;)V

    .line 978
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsHistory;->readFromParcel(Landroid/os/Parcel;Z)V

    .line 979
    return-void
.end method

.method public blacklist readHistoryBuffer(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ParcelFormatException;
        }
    .end annotation

    .line 2238
    monitor-enter p0

    .line 2239
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2240
    .local v0, "version":I
    const/16 v1, 0xd5

    if-eq v0, v1, :cond_0

    .line 2241
    const-string v2, "BatteryStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readHistoryBuffer: version got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; erasing old stats"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    monitor-exit p0

    return-void

    .line 2246
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    .line 2247
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryMonotonicEndTime:J

    .line 2248
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMonotonicHistorySize:J

    .line 2250
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataSize(I)V

    .line 2251
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2253
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2254
    .local v1, "bufSize":I
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 2255
    .local v2, "curPos":I
    iget v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    mul-int/lit8 v3, v3, 0x64

    if-ge v1, v3, :cond_2

    .line 2258
    and-int/lit8 v3, v1, -0x4

    if-ne v3, v1, :cond_1

    .line 2266
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v3, p1, v2, v1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 2267
    add-int v3, v2, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2269
    .end local v0    # "version":I
    .end local v1    # "bufSize":I
    .end local v2    # "curPos":I
    monitor-exit p0

    .line 2270
    return-void

    .line 2259
    .restart local v0    # "version":I
    .restart local v1    # "bufSize":I
    .restart local v2    # "curPos":I
    :cond_1
    new-instance v3, Landroid/os/ParcelFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File corrupt: history data buffer not aligned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/internal/os/BatteryStatsHistory;
    .end local p1    # "in":Landroid/os/Parcel;
    throw v3

    .line 2256
    .restart local p0    # "this":Lcom/android/internal/os/BatteryStatsHistory;
    .restart local p1    # "in":Landroid/os/Parcel;
    :cond_2
    new-instance v3, Landroid/os/ParcelFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File corrupt: history data buffer too large "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/internal/os/BatteryStatsHistory;
    .end local p1    # "in":Landroid/os/Parcel;
    throw v3

    .line 2269
    .end local v0    # "version":I
    .end local v1    # "bufSize":I
    .end local v2    # "curPos":I
    .restart local p0    # "this":Lcom/android/internal/os/BatteryStatsHistory;
    .restart local p1    # "in":Landroid/os/Parcel;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist readSummary()Z
    .locals 5

    .line 946
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    const-string v1, "BatteryStatsHistory"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 947
    const-string/jumbo v0, "readSummary: no history file associated with this instance"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    return v2

    .line 951
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 953
    .local v0, "parcel":Landroid/os/Parcel;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mActiveFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    invoke-interface {v3, v4}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->readFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 954
    .local v3, "data":[B
    if-nez v3, :cond_1

    .line 955
    nop

    .line 966
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 955
    return v2

    .line 958
    :cond_1
    :try_start_1
    array-length v4, v3

    invoke-virtual {v0, v3, v2, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 959
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 960
    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->readHistoryBuffer(Landroid/os/Parcel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 966
    .end local v3    # "data":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 967
    nop

    .line 968
    const/4 v1, 0x1

    return v1

    .line 966
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 961
    :catch_0
    move-exception v3

    .line 962
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "Error reading battery history"

    invoke-static {v1, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 963
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory;->reset()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 964
    nop

    .line 966
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 964
    return v2

    .line 966
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 967
    throw v1
.end method

.method public blacklist readSummaryFromParcel(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 836
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 837
    .local v0, "inclHistory":Z
    if-eqz v0, :cond_0

    .line 838
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->readFromParcel(Landroid/os/Parcel;)V

    .line 841
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 842
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    .line 843
    iput v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    .line 845
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 846
    .local v1, "numTags":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 847
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 848
    .local v3, "idx":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 849
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 850
    .local v5, "uid":I
    new-instance v6, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v6}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    .line 851
    .local v6, "tag":Landroid/os/BatteryStats$HistoryTag;
    iput-object v4, v6, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 852
    iput v5, v6, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 853
    iput v3, v6, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 854
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    iget v7, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    if-lt v3, v7, :cond_1

    .line 856
    add-int/lit8 v7, v3, 0x1

    iput v7, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNextHistoryTagIdx:I

    .line 858
    :cond_1
    iget v7, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    iget-object v8, v6, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v7, v8

    iput v7, p0, Lcom/android/internal/os/BatteryStatsHistory;->mNumHistoryTagChars:I

    .line 846
    .end local v3    # "idx":I
    .end local v4    # "str":Ljava/lang/String;
    .end local v5    # "uid":I
    .end local v6    # "tag":Landroid/os/BatteryStats$HistoryTag;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 860
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public blacklist recordBatteryState(JJIZ)V
    .locals 2
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "batteryLevel"    # I
    .param p6, "isPlugged"    # Z

    .line 1189
    monitor-enter p0

    .line 1190
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p5

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 1191
    invoke-virtual {p0, p6}, Lcom/android/internal/os/BatteryStatsHistory;->setPluggedInState(Z)V

    .line 1196
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1197
    monitor-exit p0

    .line 1198
    return-void

    .line 1197
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordCurrentTimeChange(JJJ)V
    .locals 8
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "currentTimeMs"    # J

    .line 1157
    monitor-enter p0

    .line 1158
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 1159
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 1166
    :catchall_0
    move-exception v0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    goto :goto_0

    .line 1162
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput-wide p5, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 1163
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v7, 0x5

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "elapsedRealtimeMs":J
    .end local p3    # "uptimeMs":J
    .local v2, "elapsedRealtimeMs":J
    .local v4, "uptimeMs":J
    :try_start_3
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    .line 1165
    iget-object p1, v1, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const-wide/16 p2, 0x0

    iput-wide p2, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 1166
    monitor-exit p0

    .line 1167
    return-void

    .line 1166
    .end local v2    # "elapsedRealtimeMs":J
    .end local v4    # "uptimeMs":J
    .restart local p1    # "elapsedRealtimeMs":J
    .restart local p3    # "uptimeMs":J
    :catchall_1
    move-exception v0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "elapsedRealtimeMs":J
    .end local p3    # "uptimeMs":J
    .restart local v2    # "elapsedRealtimeMs":J
    .restart local v4    # "uptimeMs":J
    :goto_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_0
.end method

.method public blacklist recordDataConnectionTypeChangeEvent(JJI)V
    .locals 4
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "dataConnectionType"    # I

    .line 1474
    monitor-enter p0

    .line 1475
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v2, 0x9

    const/16 v3, 0x3e00

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1478
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1479
    monitor-exit p0

    .line 1480
    return-void

    .line 1479
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordDeviceIdleEvent(JJI)V
    .locals 4
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "mode"    # I

    .line 1438
    monitor-enter p0

    .line 1439
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/16 v2, 0x19

    const/high16 v3, 0x6000000

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1442
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1443
    monitor-exit p0

    .line 1444
    return-void

    .line 1443
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordEvent(JJILjava/lang/String;I)V
    .locals 2
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "code"    # I
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "uid"    # I

    .line 1144
    monitor-enter p0

    .line 1145
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1146
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1147
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p6, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1148
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput p7, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 1149
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1150
    monitor-exit p0

    .line 1151
    return-void

    .line 1150
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordGpsSignalQualityEvent(JJI)V
    .locals 4
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "signalLevel"    # I

    .line 1426
    monitor-enter p0

    .line 1427
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/4 v2, 0x7

    const/16 v3, 0x180

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1430
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1431
    monitor-exit p0

    .line 1432
    return-void

    .line 1431
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordNrStateChangeEvent(JJI)V
    .locals 4
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "nrState"    # I

    .line 1487
    monitor-enter p0

    .line 1488
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/16 v2, 0x9

    const/16 v3, 0x600

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1491
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1492
    monitor-exit p0

    .line 1493
    return-void

    .line 1492
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordPhoneStateChangeEvent(JJIIII)V
    .locals 5
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "addStateFlag"    # I
    .param p6, "removeStateFlag"    # I
    .param p7, "state"    # I
    .param p8, "signalStrength"    # I

    .line 1451
    monitor-enter p0

    .line 1452
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    or-int/2addr v1, p5

    not-int v2, p6

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1453
    const/4 v0, -0x1

    if-eq p7, v0, :cond_0

    .line 1454
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1455
    const/4 v3, 0x6

    const/16 v4, 0x1c0

    invoke-direct {p0, v2, p7, v3, v4}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v2

    iput v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1459
    :cond_0
    if-eq p8, v0, :cond_1

    .line 1460
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1461
    const/4 v2, 0x3

    const/16 v3, 0x38

    invoke-direct {p0, v1, p8, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1465
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1466
    monitor-exit p0

    .line 1467
    return-void

    .line 1466
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordPowerStats(JJLcom/android/internal/os/PowerStats;)V
    .locals 3
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "powerStats"    # Lcom/android/internal/os/PowerStats;

    .line 1205
    monitor-enter p0

    .line 1206
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput-object p5, v0, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    .line 1207
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1208
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1209
    monitor-exit p0

    .line 1210
    return-void

    .line 1209
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordProcessStateChange(JJII)V
    .locals 3
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "uid"    # I
    .param p6, "processState"    # I

    .line 1217
    monitor-enter p0

    .line 1218
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localProcessStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    .line 1219
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    iput p5, v0, Landroid/os/BatteryStats$ProcessStateChange;->uid:I

    .line 1220
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    iput p6, v0, Landroid/os/BatteryStats$ProcessStateChange;->processState:I

    .line 1221
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1222
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1223
    monitor-exit p0

    .line 1224
    return-void

    .line 1223
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordScreenBrightnessEvent(JJI)V
    .locals 4
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "brightnessBin"    # I

    .line 1413
    monitor-enter p0

    .line 1414
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1417
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1418
    monitor-exit p0

    .line 1419
    return-void

    .line 1418
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordShutdownEvent(JJJ)V
    .locals 8
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "currentTimeMs"    # J

    .line 1173
    monitor-enter p0

    .line 1174
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 1175
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 1181
    :catchall_0
    move-exception v0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    goto :goto_0

    .line 1178
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput-wide p5, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 1179
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v7, 0x8

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "elapsedRealtimeMs":J
    .end local p3    # "uptimeMs":J
    .local v2, "elapsedRealtimeMs":J
    .local v4, "uptimeMs":J
    :try_start_3
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    .line 1180
    iget-object p1, v1, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const-wide/16 p2, 0x0

    iput-wide p2, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 1181
    monitor-exit p0

    .line 1182
    return-void

    .line 1181
    .end local v2    # "elapsedRealtimeMs":J
    .end local v4    # "uptimeMs":J
    .restart local p1    # "elapsedRealtimeMs":J
    .restart local p3    # "uptimeMs":J
    :catchall_1
    move-exception v0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "elapsedRealtimeMs":J
    .end local p3    # "uptimeMs":J
    .restart local v2    # "elapsedRealtimeMs":J
    .restart local v4    # "uptimeMs":J
    :goto_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_0
.end method

.method public blacklist recordState2StartEvent(JJI)V
    .locals 2
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "stateFlags"    # I

    .line 1350
    monitor-enter p0

    .line 1351
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    or-int/2addr v1, p5

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1352
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1353
    monitor-exit p0

    .line 1354
    return-void

    .line 1353
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordState2StartEvent(JJIILjava/lang/String;)V
    .locals 2
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "stateFlags"    # I
    .param p6, "uid"    # I
    .param p7, "name"    # Ljava/lang/String;

    .line 1361
    monitor-enter p0

    .line 1362
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    or-int/2addr v1, p5

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1363
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const v1, 0x8015

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1364
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1365
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput p6, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 1366
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p7, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1367
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1368
    monitor-exit p0

    .line 1369
    return-void

    .line 1368
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordState2StopEvent(JJI)V
    .locals 3
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "stateFlags"    # I

    .line 1390
    monitor-enter p0

    .line 1391
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    not-int v2, p5

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1392
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1393
    monitor-exit p0

    .line 1394
    return-void

    .line 1393
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordState2StopEvent(JJIILjava/lang/String;)V
    .locals 3
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "stateFlags"    # I
    .param p6, "uid"    # I
    .param p7, "name"    # Ljava/lang/String;

    .line 1376
    monitor-enter p0

    .line 1377
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    not-int v2, p5

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1378
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const/16 v1, 0x4015

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1379
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1380
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput p6, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 1381
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p7, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1382
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1383
    monitor-exit p0

    .line 1384
    return-void

    .line 1383
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordStateChangeEvent(JJII)V
    .locals 3
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "stateStartFlags"    # I
    .param p6, "stateStopFlags"    # I

    .line 1340
    monitor-enter p0

    .line 1341
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    or-int/2addr v1, p5

    not-int v2, p6

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1342
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1343
    monitor-exit p0

    .line 1344
    return-void

    .line 1343
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordStateStartEvent(JJI)V
    .locals 2
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "stateFlags"    # I

    .line 1289
    monitor-enter p0

    .line 1290
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    or-int/2addr v1, p5

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1291
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1292
    monitor-exit p0

    .line 1293
    return-void

    .line 1292
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordStateStartEvent(JJIILjava/lang/String;)V
    .locals 2
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "stateFlags"    # I
    .param p6, "uid"    # I
    .param p7, "name"    # Ljava/lang/String;

    .line 1300
    monitor-enter p0

    .line 1301
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    or-int/2addr v1, p5

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1302
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const v1, 0x8015

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1303
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1304
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput p6, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 1305
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p7, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1306
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1307
    monitor-exit p0

    .line 1308
    return-void

    .line 1307
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordStateStopEvent(JJI)V
    .locals 3
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "stateFlags"    # I

    .line 1314
    monitor-enter p0

    .line 1315
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    not-int v2, p5

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1316
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1317
    monitor-exit p0

    .line 1318
    return-void

    .line 1317
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordStateStopEvent(JJIILjava/lang/String;)V
    .locals 3
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "stateFlags"    # I
    .param p6, "uid"    # I
    .param p7, "name"    # Ljava/lang/String;

    .line 1325
    monitor-enter p0

    .line 1326
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    not-int v2, p5

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1327
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const/16 v1, 0x4015

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1328
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1329
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput p6, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 1330
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p7, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1331
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1332
    monitor-exit p0

    .line 1333
    return-void

    .line 1332
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordWakelockStartEvent(JJLjava/lang/String;I)V
    .locals 7
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "historyName"    # Ljava/lang/String;
    .param p6, "uid"    # I

    .line 1243
    monitor-enter p0

    .line 1244
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1245
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p5, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1246
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput p6, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1247
    const/high16 v6, 0x40000000    # 2.0f

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "elapsedRealtimeMs":J
    .end local p3    # "uptimeMs":J
    .local v2, "elapsedRealtimeMs":J
    .local v4, "uptimeMs":J
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->recordStateStartEvent(JJI)V

    .line 1248
    monitor-exit p0

    .line 1249
    return-void

    .line 1248
    .end local v2    # "elapsedRealtimeMs":J
    .end local v4    # "uptimeMs":J
    .restart local p1    # "elapsedRealtimeMs":J
    .restart local p3    # "uptimeMs":J
    :catchall_0
    move-exception v0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object p1, v0

    .end local p1    # "elapsedRealtimeMs":J
    .end local p3    # "uptimeMs":J
    .restart local v2    # "elapsedRealtimeMs":J
    .restart local v4    # "uptimeMs":J
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_0
.end method

.method public blacklist recordWakelockStopEvent(JJLjava/lang/String;I)V
    .locals 7
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "historyName"    # Ljava/lang/String;
    .param p6, "uid"    # I

    .line 1277
    monitor-enter p0

    .line 1278
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1279
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz p5, :cond_0

    move-object v1, p5

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    iput-object v1, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1280
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput p6, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1281
    const/high16 v6, 0x40000000    # 2.0f

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "elapsedRealtimeMs":J
    .end local p3    # "uptimeMs":J
    .local v2, "elapsedRealtimeMs":J
    .local v4, "uptimeMs":J
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->recordStateStopEvent(JJI)V

    .line 1282
    monitor-exit p0

    .line 1283
    return-void

    .line 1282
    .end local v2    # "elapsedRealtimeMs":J
    .end local v4    # "uptimeMs":J
    .restart local p1    # "elapsedRealtimeMs":J
    .restart local p3    # "uptimeMs":J
    :catchall_0
    move-exception v0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object p1, v0

    .end local p1    # "elapsedRealtimeMs":J
    .end local p3    # "uptimeMs":J
    .restart local v2    # "elapsedRealtimeMs":J
    .restart local v4    # "uptimeMs":J
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_1
.end method

.method public blacklist recordWakeupEvent(JJLjava/lang/String;)V
    .locals 2
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "reason"    # Ljava/lang/String;

    .line 1400
    monitor-enter p0

    .line 1401
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1402
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p5, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1403
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 1404
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1405
    monitor-exit p0

    .line 1406
    return-void

    .line 1405
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordWifiConsumedCharge(JJD)V
    .locals 3
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "monitoredRailChargeMah"    # D

    .line 1232
    monitor-enter p0

    .line 1233
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v1, v0, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    add-double/2addr v1, p5

    iput-wide v1, v0, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    .line 1234
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1235
    monitor-exit p0

    .line 1236
    return-void

    .line 1235
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordWifiSignalStrengthChangeEvent(JJI)V
    .locals 4
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "strengthBin"    # I

    .line 1514
    monitor-enter p0

    .line 1515
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1516
    const/4 v2, 0x4

    const/16 v3, 0x70

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1519
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1520
    monitor-exit p0

    .line 1521
    return-void

    .line 1520
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist recordWifiSupplicantStateChangeEvent(JJI)V
    .locals 4
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "supplState"    # I

    .line 1500
    monitor-enter p0

    .line 1501
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1502
    const/4 v2, 0x0

    const/16 v3, 0xf

    invoke-direct {p0, v1, p5, v2, v3}, Lcom/android/internal/os/BatteryStatsHistory;->setBitField(IIII)I

    move-result v1

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1505
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJ)V

    .line 1506
    monitor-exit p0

    .line 1507
    return-void

    .line 1506
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist reset()V
    .locals 3

    .line 605
    monitor-enter p0

    .line 606
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistory;->initHistoryBuffer()V

    .line 607
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->reset()V

    .line 609
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBufferStartTime:J

    invoke-interface {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;->createFragment(J)Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->setActiveFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V

    .line 611
    :cond_0
    monitor-exit p0

    .line 612
    return-void

    .line 611
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist setBatteryState(IIIIIII)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "level"    # I
    .param p3, "health"    # I
    .param p4, "plugType"    # I
    .param p5, "temperature"    # I
    .param p6, "voltageMv"    # I
    .param p7, "chargeUah"    # I

    .line 1101
    monitor-enter p0

    .line 1102
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHaveBatteryLevel:Z

    .line 1103
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p1

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 1104
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p2

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 1105
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p3

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 1106
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p4

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 1107
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-short v1, p5

    iput-short v1, v0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 1108
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-short v1, p6

    iput-short v1, v0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    .line 1109
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput p7, v0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    .line 1110
    monitor-exit p0

    .line 1111
    return-void

    .line 1110
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist setBatteryState(ZIII)V
    .locals 2
    .param p1, "charging"    # Z
    .param p2, "status"    # I
    .param p3, "level"    # I
    .param p4, "chargeUah"    # I

    .line 1087
    monitor-enter p0

    .line 1088
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHaveBatteryLevel:Z

    .line 1089
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->setChargingState(Z)V

    .line 1090
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p2

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 1091
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    int-to-byte v1, p3

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 1092
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput p4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    .line 1093
    monitor-exit p0

    .line 1094
    return-void

    .line 1093
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist setChargingState(Z)V
    .locals 3
    .param p1, "charging"    # Z

    .line 1130
    monitor-enter p0

    .line 1131
    if-eqz p1, :cond_0

    .line 1132
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    goto :goto_0

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v2, -0x1000001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 1136
    :goto_0
    monitor-exit p0

    .line 1137
    return-void

    .line 1136
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist setHistoryRecordingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1027
    monitor-enter p0

    .line 1028
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    .line 1029
    monitor-exit p0

    .line 1030
    return-void

    .line 1029
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist setMaxHistoryBufferSize(I)V
    .locals 0
    .param p1, "maxHistoryBufferSize"    # I

    .line 515
    iput p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mMaxHistoryBufferSize:I

    .line 516
    return-void
.end method

.method public blacklist setPluggedInState(Z)V
    .locals 3
    .param p1, "pluggedIn"    # Z

    .line 1117
    monitor-enter p0

    .line 1118
    if-eqz p1, :cond_0

    .line 1119
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    goto :goto_0

    .line 1121
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v2, -0x80001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1123
    :goto_0
    monitor-exit p0

    .line 1124
    return-void

    .line 1123
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist startNextFragment(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 560
    monitor-enter p0

    .line 561
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsHistory;->startNextFragmentLocked(J)V

    .line 562
    monitor-exit p0

    .line 563
    return-void

    .line 562
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist startRecordingHistory(JJZ)V
    .locals 10
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "reset"    # Z

    .line 1057
    monitor-enter p0

    .line 1058
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mRecordingHistory:Z

    .line 1059
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 1060
    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1061
    if-eqz p5, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    move v9, v0

    .line 1060
    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    .end local p1    # "elapsedRealtimeMs":J
    .end local p3    # "uptimeMs":J
    .local v4, "elapsedRealtimeMs":J
    .local v6, "uptimeMs":J
    :try_start_1
    invoke-direct/range {v3 .. v9}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;B)V

    .line 1062
    iget-object p1, v3, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const-wide/16 p2, 0x0

    iput-wide p2, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 1063
    monitor-exit p0

    .line 1064
    return-void

    .line 1063
    .end local v4    # "elapsedRealtimeMs":J
    .end local v6    # "uptimeMs":J
    .restart local p1    # "elapsedRealtimeMs":J
    .restart local p3    # "uptimeMs":J
    :catchall_0
    move-exception v0

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    move-object p1, v0

    .end local p1    # "elapsedRealtimeMs":J
    .end local p3    # "uptimeMs":J
    .restart local v4    # "elapsedRealtimeMs":J
    .restart local v6    # "uptimeMs":J
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_1
.end method

.method public blacklist writeHistory()V
    .locals 1

    .line 2205
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistory(Z)V

    .line 2206
    return-void
.end method

.method public blacklist writeHistoryItem(JJ)V
    .locals 11
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J

    .line 1577
    monitor-enter p0

    .line 1578
    :try_start_0
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryElapsedRealtimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 1579
    :try_start_1
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryElapsedRealtimeMs:J

    sub-long v7, p1, v2

    .line 1581
    .local v7, "diffElapsedMs":J
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryUptimeMs:J

    sub-long v9, p3, v2

    .line 1582
    .local v9, "diffUptimeMs":J
    const-wide/16 v2, 0x14

    sub-long v2, v7, v2

    cmp-long v0, v9, v2

    if-gez v0, :cond_0

    .line 1583
    sub-long v2, v7, v9

    sub-long v2, p1, v2

    .line 1585
    .local v2, "wakeElapsedTimeMs":J
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 1586
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    const/4 v4, 0x0

    iput-object v4, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1587
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    iput-object v4, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 1588
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    iput-object v4, v0, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    .line 1589
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    iput-object v4, v0, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    .line 1590
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    const/4 v4, 0x0

    iput v4, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 1591
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    iput v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1592
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, p0

    move-wide v4, p3

    :try_start_2
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;)V

    goto :goto_0

    .line 1582
    .end local v2    # "wakeElapsedTimeMs":J
    :cond_0
    move-wide v4, p3

    goto :goto_0

    .line 1600
    .end local v7    # "diffElapsedMs":J
    .end local v9    # "diffUptimeMs":J
    :catchall_0
    move-exception v0

    move-wide v4, p3

    goto :goto_1

    .line 1578
    :cond_1
    move-wide v4, p3

    .line 1596
    :goto_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, -0x80000000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 1597
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryElapsedRealtimeMs:J

    .line 1598
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsHistory;->mTrackRunningHistoryUptimeMs:J

    .line 1599
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryItem(JJLandroid/os/BatteryStats$HistoryItem;)V

    .line 1600
    monitor-exit p0

    .line 1601
    return-void

    .line 1600
    :catchall_1
    move-exception v0

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public blacklist writeSummaryToParcel(Landroid/os/Parcel;Z)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "inclHistory"    # Z

    .line 818
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 819
    if-eqz p2, :cond_0

    .line 820
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->writeToParcel(Landroid/os/Parcel;)V

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 824
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 825
    .local v1, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/BatteryStats$HistoryTag;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$HistoryTag;

    .line 826
    .local v2, "tag":Landroid/os/BatteryStats$HistoryTag;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 827
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 828
    iget v3, v2, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    .end local v1    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/BatteryStats$HistoryTag;Ljava/lang/Integer;>;"
    .end local v2    # "tag":Landroid/os/BatteryStats$HistoryTag;
    goto :goto_0

    .line 830
    :cond_1
    return-void
.end method

.method public blacklist writeToBatteryUsageStatsParcel(Landroid/os/Parcel;J)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "preferredHistoryDurationMs"    # J

    .line 884
    monitor-enter p0

    .line 885
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBlob([B)V

    .line 886
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    if-eqz v0, :cond_0

    .line 887
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mHistoryMonotonicEndTime:J

    sub-long/2addr v0, p2

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/os/BatteryStatsHistory;->writeToParcel(Landroid/os/Parcel;ZJ)V

    .line 890
    :cond_0
    monitor-exit p0

    .line 891
    return-void

    .line 890
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;

    .line 869
    monitor-enter p0

    .line 870
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory;->writeHistoryBuffer(Landroid/os/Parcel;)V

    .line 871
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory;->mStore:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;

    if-eqz v0, :cond_0

    .line 872
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsHistory;->writeToParcel(Landroid/os/Parcel;ZJ)V

    .line 874
    :cond_0
    monitor-exit p0

    .line 875
    return-void

    .line 874
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
