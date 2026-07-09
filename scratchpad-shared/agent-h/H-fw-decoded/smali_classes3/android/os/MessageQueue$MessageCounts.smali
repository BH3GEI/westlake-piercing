.class final Landroid/os/MessageQueue$MessageCounts;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MessageCounts"
.end annotation


# static fields
.field private static final blacklist AWAKE:J = 0x7fffffffffffffffL

.field private static final blacklist MESSAGE_FLUSH_THRESHOLD:I = 0xa

.field private static blacklist sCounts:Ljava/lang/invoke/VarHandle;


# instance fields
.field private volatile blacklist mCountsValue:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 2640
    :try_start_0
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    .line 2641
    .local v0, "l":Ljava/lang/invoke/MethodHandles$Lookup;
    const-class v1, Landroid/os/MessageQueue$MessageCounts;

    const-string/jumbo v2, "mCountsValue"

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v1

    sput-object v1, Landroid/os/MessageQueue$MessageCounts;->sCounts:Ljava/lang/invoke/VarHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2646
    .end local v0    # "l":Ljava/lang/invoke/MethodHandles$Lookup;
    nop

    .line 2647
    return-void

    .line 2643
    :catch_0
    move-exception v0

    .line 2644
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VarHandle lookup failed with exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConcurrentMessageQueue"

    invoke-static {v2, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor blacklist <init>()V
    .locals 2

    .line 2635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2637
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/MessageQueue$MessageCounts;->mCountsValue:J

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/MessageQueue-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/MessageQueue$MessageCounts;-><init>()V

    return-void
.end method

.method private static blacklist combineCounts(II)J
    .locals 4
    .param p0, "queued"    # I
    .param p1, "cancelled"    # I

    .line 2666
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static blacklist numCancelled(J)I
    .locals 1
    .param p0, "val"    # J

    .line 2662
    long-to-int v0, p0

    return v0
.end method

.method private static blacklist numQueued(J)I
    .locals 2
    .param p0, "val"    # J

    .line 2658
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public blacklist clearCounts()V
    .locals 2

    .line 2709
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/MessageQueue$MessageCounts;->mCountsValue:J

    .line 2710
    return-void
.end method

.method public blacklist incrementCancelled()Z
    .locals 9

    .line 2686
    nop

    :goto_0
    iget-wide v2, p0, Landroid/os/MessageQueue$MessageCounts;->mCountsValue:J

    .line 2687
    .local v2, "oldVal":J
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2688
    return v1

    .line 2690
    :cond_0
    invoke-static {v2, v3}, Landroid/os/MessageQueue$MessageCounts;->numQueued(J)I

    move-result v6

    .line 2691
    .local v6, "queued":I
    invoke-static {v2, v3}, Landroid/os/MessageQueue$MessageCounts;->numCancelled(J)I

    move-result v7

    .line 2692
    .local v7, "cancelled":I
    const/16 v0, 0xa

    if-le v6, v0, :cond_1

    shr-int/lit8 v0, v6, 0x1

    if-ge v0, v7, :cond_1

    const/4 v1, 0x1

    :cond_1
    move v8, v1

    .line 2695
    .local v8, "needsPurge":Z
    if-eqz v8, :cond_2

    .line 2696
    const-wide v0, 0x7fffffffffffffffL

    move-wide v4, v0

    .local v0, "newVal":J
    goto :goto_1

    .line 2698
    .end local v0    # "newVal":J
    :cond_2
    add-int/lit8 v0, v7, 0x1

    .line 2699
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2698
    invoke-static {v6, v0}, Landroid/os/MessageQueue$MessageCounts;->combineCounts(II)J

    move-result-wide v0

    move-wide v4, v0

    .line 2702
    .local v4, "newVal":J
    :goto_1
    sget-object v0, Landroid/os/MessageQueue$MessageCounts;->sCounts:Ljava/lang/invoke/VarHandle;

    move-object v1, p0

    invoke-polymorphic/range {v0 .. v5}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Landroid/os/MessageQueue$MessageCounts;JJ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2703
    return v8

    .line 2705
    .end local v2    # "oldVal":J
    .end local v4    # "newVal":J
    .end local v6    # "queued":I
    .end local v7    # "cancelled":I
    .end local v8    # "needsPurge":Z
    :cond_3
    goto :goto_0
.end method

.method public blacklist incrementQueued()V
    .locals 8

    .line 2671
    nop

    :goto_0
    iget-wide v2, p0, Landroid/os/MessageQueue$MessageCounts;->mCountsValue:J

    .line 2672
    .local v2, "oldVal":J
    invoke-static {v2, v3}, Landroid/os/MessageQueue$MessageCounts;->numQueued(J)I

    move-result v6

    .line 2673
    .local v6, "queued":I
    invoke-static {v2, v3}, Landroid/os/MessageQueue$MessageCounts;->numCancelled(J)I

    move-result v7

    .line 2675
    .local v7, "cancelled":I
    add-int/lit8 v0, v6, 0x1

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v7}, Landroid/os/MessageQueue$MessageCounts;->combineCounts(II)J

    move-result-wide v4

    .line 2678
    .local v4, "newVal":J
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/MessageQueue$MessageCounts;->sCounts:Ljava/lang/invoke/VarHandle;

    move-object v1, p0

    invoke-polymorphic/range {v0 .. v5}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Landroid/os/MessageQueue$MessageCounts;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2679
    goto :goto_1

    .line 2681
    .end local v2    # "oldVal":J
    .end local v4    # "newVal":J
    .end local v6    # "queued":I
    .end local v7    # "cancelled":I
    :cond_0
    goto :goto_0

    .line 2682
    :cond_1
    :goto_1
    return-void
.end method
