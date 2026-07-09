.class public final Landroid/content/res/ResourceTimer;
.super Ljava/lang/Object;
.source "ResourceTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ResourceTimer$Config;,
        Landroid/content/res/ResourceTimer$Timer;
    }
.end annotation


# static fields
.field private static ENABLE_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ResourceTimer"

.field private static mHandler:Landroid/os/Handler;

.field private static sApiMap:[I

.field private static sConfig:Landroid/content/res/ResourceTimer$Config;

.field private static sCurrentPoint:I

.field private static sEnabled:Z

.field private static sIncrementalMetrics:Z

.field private static sLastUpdated:J

.field private static final sLock:Ljava/lang/Object;

.field private static sManager:Landroid/content/res/ResourceTimer;

.field private static final sProcessStart:J

.field private static final sPublicationPoints:[J

.field private static sTimers:[Landroid/content/res/ResourceTimer$Timer;


# direct methods
.method static bridge synthetic -$$Nest$smhandleMessage(Landroid/os/Message;)V
    .locals 0

    invoke-static {p0}, Landroid/content/res/ResourceTimer;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 47
    const/4 v0, 0x1

    sput-boolean v0, Landroid/content/res/ResourceTimer;->sEnabled:Z

    .line 52
    sput-boolean v0, Landroid/content/res/ResourceTimer;->sIncrementalMetrics:Z

    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Landroid/content/res/ResourceTimer;->ENABLE_DEBUG:Z

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/ResourceTimer;->sLock:Ljava/lang/Object;

    .line 67
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Landroid/content/res/ResourceTimer;->sProcessStart:J

    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Landroid/content/res/ResourceTimer;->sPublicationPoints:[J

    .line 135
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/content/res/ResourceTimer;->sLastUpdated:J

    return-void

    :array_0
    .array-data 8
        0x5
        0x3c
        0x2d0
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ResourceTimer constructor"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs dumpTimers(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 18
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "args"    # [Ljava/lang/String;

    .line 279
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v0

    .line 280
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_0
    const-string v0, "\nDumping ResourceTimers"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    sget-object v3, Landroid/content/res/ResourceTimer;->sLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 284
    :try_start_1
    sget-boolean v0, Landroid/content/res/ResourceTimer;->sEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    .line 285
    .local v4, "enabled":Z
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 286
    if-nez v4, :cond_1

    .line 287
    :try_start_2
    const-string v0, "  Timers are not enabled in this process"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 311
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 288
    return-void

    .line 293
    :cond_1
    :try_start_3
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v3, "-refresh"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    move v3, v0

    .line 295
    .local v3, "refresh":Z
    sget-object v5, Landroid/content/res/ResourceTimer;->sLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 296
    :try_start_4
    invoke-static {v3}, Landroid/content/res/ResourceTimer;->update(Z)V

    .line 297
    sget-wide v6, Landroid/content/res/ResourceTimer;->sLastUpdated:J

    sget-wide v8, Landroid/content/res/ResourceTimer;->sProcessStart:J

    sub-long/2addr v6, v8

    .line 298
    .local v6, "runtime":J
    const-string v0, "  config runtime=%d proc=%s\n"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {}, Landroid/os/Process;->myProcessName()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v0, v8}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 299
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v8, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    array-length v8, v8

    if-ge v0, v8, :cond_3

    .line 300
    sget-object v8, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    aget-object v8, v8, v0

    .line 301
    .local v8, "t":Landroid/content/res/ResourceTimer$Timer;
    iget v9, v8, Landroid/content/res/ResourceTimer$Timer;->count:I

    if-eqz v9, :cond_2

    .line 302
    sget-object v9, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget-object v9, v9, Landroid/content/res/ResourceTimer$Config;->timers:[Ljava/lang/String;

    aget-object v9, v9, v0

    move-object v10, v9

    .line 303
    .local v10, "name":Ljava/lang/String;
    const-string v9, "  stats timer=%s cnt=%d avg=%d min=%d max=%d pval=%s largest=%s\n"

    iget v11, v8, Landroid/content/res/ResourceTimer$Timer;->count:I

    .line 305
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-wide v12, v8, Landroid/content/res/ResourceTimer$Timer;->total:J

    iget v14, v8, Landroid/content/res/ResourceTimer$Timer;->count:I

    int-to-long v14, v14

    div-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget v13, v8, Landroid/content/res/ResourceTimer$Timer;->mintime:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v14, v8, Landroid/content/res/ResourceTimer$Timer;->maxtime:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v15, v8, Landroid/content/res/ResourceTimer$Timer;->percentile:[I

    .line 306
    invoke-static {v15}, Landroid/content/res/ResourceTimer;->packedString([I)Ljava/lang/String;

    move-result-object v15

    move/from16 v17, v0

    .end local v0    # "i":I
    .local v17, "i":I
    iget-object v0, v8, Landroid/content/res/ResourceTimer$Timer;->largest:[I

    .line 307
    invoke-static {v0}, Landroid/content/res/ResourceTimer;->packedString([I)Ljava/lang/String;

    move-result-object v16

    filled-new-array/range {v10 .. v16}, [Ljava/lang/Object;

    move-result-object v0

    .line 303
    invoke-virtual {v1, v9, v0}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_2

    .line 301
    .end local v10    # "name":Ljava/lang/String;
    .end local v17    # "i":I
    .restart local v0    # "i":I
    :cond_2
    move/from16 v17, v0

    .line 299
    .end local v0    # "i":I
    .end local v8    # "t":Landroid/content/res/ResourceTimer$Timer;
    .restart local v17    # "i":I
    :goto_2
    add-int/lit8 v0, v17, 0x1

    .end local v17    # "i":I
    .restart local v0    # "i":I
    goto :goto_1

    :cond_3
    move/from16 v17, v0

    .line 310
    .end local v0    # "i":I
    .end local v6    # "runtime":J
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 311
    .end local v3    # "refresh":Z
    .end local v4    # "enabled":Z
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 312
    .end local v1    # "pw":Ljava/io/PrintWriter;
    return-void

    .line 310
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    .restart local v3    # "refresh":Z
    .restart local v4    # "enabled":Z
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v1    # "pw":Ljava/io/PrintWriter;
    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "args":[Ljava/lang/String;
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 285
    .end local v3    # "refresh":Z
    .end local v4    # "enabled":Z
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    .restart local p0    # "fd":Ljava/io/FileDescriptor;
    .restart local p1    # "args":[Ljava/lang/String;
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local v1    # "pw":Ljava/io/PrintWriter;
    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "args":[Ljava/lang/String;
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 279
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    .restart local p0    # "fd":Ljava/io/FileDescriptor;
    .restart local p1    # "args":[Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object v3, v0

    :try_start_9
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v3
.end method

.method private static handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p0, "msg"    # Landroid/os/Message;

    .line 200
    sget-object v0, Landroid/content/res/ResourceTimer;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    invoke-static {}, Landroid/content/res/ResourceTimer;->publish()V

    .line 202
    invoke-static {}, Landroid/content/res/ResourceTimer;->startTimer()V

    .line 203
    monitor-exit v0

    .line 204
    return-void

    .line 203
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static native nativeEnableTimers(Landroid/content/res/ResourceTimer$Config;)I
.end method

.method private static native nativeGetTimers([Landroid/content/res/ResourceTimer$Timer;Z)I
.end method

.method private static packedString([I)Ljava/lang/String;
    .locals 3
    .param p0, "a"    # [I

    .line 271
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[\\]\\[ ]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static publish()V
    .locals 18

    .line 246
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/content/res/ResourceTimer;->update(Z)V

    .line 248
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 249
    sget-object v2, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    aget-object v2, v2, v1

    .line 250
    .local v2, "timer":Landroid/content/res/ResourceTimer$Timer;
    iget v3, v2, Landroid/content/res/ResourceTimer$Timer;->count:I

    if-lez v3, :cond_0

    .line 251
    sget-object v3, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget-object v3, v3, Landroid/content/res/ResourceTimer$Config;->timers:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget v4, v2, Landroid/content/res/ResourceTimer$Timer;->count:I

    .line 252
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v2, Landroid/content/res/ResourceTimer$Timer;->percentile:[I

    invoke-static {v5}, Landroid/content/res/ResourceTimer;->packedString([I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 251
    const-string v4, "%s count=%d pvalues=%s"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ResourceTimer"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    sget-object v3, Landroid/content/res/ResourceTimer;->sApiMap:[I

    aget v3, v3, v1

    if-eqz v3, :cond_0

    .line 254
    sget-object v3, Landroid/content/res/ResourceTimer;->sApiMap:[I

    aget v5, v3, v1

    iget v6, v2, Landroid/content/res/ResourceTimer$Timer;->count:I

    iget-wide v7, v2, Landroid/content/res/ResourceTimer$Timer;->total:J

    iget-object v3, v2, Landroid/content/res/ResourceTimer$Timer;->percentile:[I

    const/4 v4, 0x0

    aget v9, v3, v4

    iget-object v3, v2, Landroid/content/res/ResourceTimer$Timer;->percentile:[I

    aget v10, v3, v0

    iget-object v3, v2, Landroid/content/res/ResourceTimer$Timer;->percentile:[I

    const/4 v11, 0x2

    aget v3, v3, v11

    iget-object v12, v2, Landroid/content/res/ResourceTimer$Timer;->percentile:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    iget-object v14, v2, Landroid/content/res/ResourceTimer$Timer;->largest:[I

    aget v4, v14, v4

    iget-object v14, v2, Landroid/content/res/ResourceTimer$Timer;->largest:[I

    aget v14, v14, v0

    iget-object v15, v2, Landroid/content/res/ResourceTimer$Timer;->largest:[I

    aget v15, v15, v11

    iget-object v11, v2, Landroid/content/res/ResourceTimer$Timer;->largest:[I

    aget v16, v11, v13

    iget-object v11, v2, Landroid/content/res/ResourceTimer$Timer;->largest:[I

    const/4 v13, 0x4

    aget v17, v11, v13

    move v13, v4

    const/16 v4, 0x205

    move v11, v3

    invoke-static/range {v4 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJIIIIIIIII)V

    .line 248
    .end local v2    # "timer":Landroid/content/res/ResourceTimer$Timer;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    .end local v1    # "i":I
    :cond_1
    sget v1, Landroid/content/res/ResourceTimer;->sCurrentPoint:I

    add-int/2addr v1, v0

    sput v1, Landroid/content/res/ResourceTimer;->sCurrentPoint:I

    .line 265
    return-void
.end method

.method public static start()V
    .locals 5

    .line 148
    sget-object v0, Landroid/content/res/ResourceTimer;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_0
    sget-boolean v1, Landroid/content/res/ResourceTimer;->sEnabled:Z

    if-nez v1, :cond_0

    .line 150
    monitor-exit v0

    return-void

    .line 152
    :cond_0
    sget-object v1, Landroid/content/res/ResourceTimer;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 154
    monitor-exit v0

    return-void

    .line 156
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 159
    new-instance v1, Landroid/content/res/ResourceTimer$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/ResourceTimer$1;-><init>(Landroid/os/Looper;)V

    sput-object v1, Landroid/content/res/ResourceTimer;->mHandler:Landroid/os/Handler;

    .line 168
    new-instance v1, Landroid/content/res/ResourceTimer$Config;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/content/res/ResourceTimer$Config;-><init>(Landroid/content/res/ResourceTimer-IA;)V

    sput-object v1, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    .line 169
    sget-object v1, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    invoke-static {v1}, Landroid/content/res/ResourceTimer;->nativeEnableTimers(Landroid/content/res/ResourceTimer$Config;)I

    .line 170
    sget-object v1, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget v1, v1, Landroid/content/res/ResourceTimer$Config;->maxTimer:I

    new-array v1, v1, [Landroid/content/res/ResourceTimer$Timer;

    sput-object v1, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    .line 171
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 172
    sget-object v3, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    new-instance v4, Landroid/content/res/ResourceTimer$Timer;

    invoke-direct {v4, v2}, Landroid/content/res/ResourceTimer$Timer;-><init>(Landroid/content/res/ResourceTimer-IA;)V

    aput-object v4, v3, v1

    .line 173
    sget-object v3, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    aget-object v3, v3, v1

    sget-object v4, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget v4, v4, Landroid/content/res/ResourceTimer$Config;->maxBuckets:I

    new-array v4, v4, [I

    iput-object v4, v3, Landroid/content/res/ResourceTimer$Timer;->percentile:[I

    .line 174
    sget-object v3, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    aget-object v3, v3, v1

    sget-object v4, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget v4, v4, Landroid/content/res/ResourceTimer$Config;->maxLargest:I

    new-array v4, v4, [I

    iput-object v4, v3, Landroid/content/res/ResourceTimer$Timer;->largest:[I

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v1    # "i":I
    :cond_2
    sget-object v1, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget v1, v1, Landroid/content/res/ResourceTimer$Config;->maxTimer:I

    new-array v1, v1, [I

    sput-object v1, Landroid/content/res/ResourceTimer;->sApiMap:[I

    .line 180
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    sget-object v2, Landroid/content/res/ResourceTimer;->sApiMap:[I

    array-length v2, v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_5

    .line 181
    sget-object v2, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget-object v2, v2, Landroid/content/res/ResourceTimer$Config;->timers:[Ljava/lang/String;

    aget-object v2, v2, v1

    const-string v4, "GetResourceValue"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 182
    sget-object v2, Landroid/content/res/ResourceTimer;->sApiMap:[I

    const/4 v3, 0x1

    aput v3, v2, v1

    goto :goto_2

    .line 183
    :cond_3
    sget-object v2, Landroid/content/res/ResourceTimer;->sConfig:Landroid/content/res/ResourceTimer$Config;

    iget-object v2, v2, Landroid/content/res/ResourceTimer$Config;->timers:[Ljava/lang/String;

    aget-object v2, v2, v1

    const-string v4, "RetrieveAttributes"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 184
    sget-object v2, Landroid/content/res/ResourceTimer;->sApiMap:[I

    const/4 v3, 0x2

    aput v3, v2, v1

    goto :goto_2

    .line 186
    :cond_4
    sget-object v2, Landroid/content/res/ResourceTimer;->sApiMap:[I

    aput v3, v2, v1

    .line 180
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 190
    .end local v1    # "i":I
    :cond_5
    sput v3, Landroid/content/res/ResourceTimer;->sCurrentPoint:I

    .line 191
    invoke-static {}, Landroid/content/res/ResourceTimer;->startTimer()V

    .line 192
    monitor-exit v0

    .line 193
    return-void

    .line 157
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ResourceTimer started too early"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static startTimer()V
    .locals 6

    .line 214
    sget v0, Landroid/content/res/ResourceTimer;->sCurrentPoint:I

    sget-object v1, Landroid/content/res/ResourceTimer;->sPublicationPoints:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 215
    sget-object v0, Landroid/content/res/ResourceTimer;->sPublicationPoints:[J

    sget v1, Landroid/content/res/ResourceTimer;->sCurrentPoint:I

    aget-wide v0, v0, v1

    .local v0, "delay":J
    goto :goto_0

    .line 218
    .end local v0    # "delay":J
    :cond_0
    sget-object v0, Landroid/content/res/ResourceTimer;->sPublicationPoints:[J

    sget-object v1, Landroid/content/res/ResourceTimer;->sPublicationPoints:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    .line 219
    .local v0, "repeated":J
    sget-object v2, Landroid/content/res/ResourceTimer;->sPublicationPoints:[J

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 220
    .local v2, "prelude":I
    sget v3, Landroid/content/res/ResourceTimer;->sCurrentPoint:I

    sub-int/2addr v3, v2

    int-to-long v3, v3

    mul-long/2addr v3, v0

    move-wide v0, v3

    .line 223
    .end local v2    # "prelude":I
    .local v0, "delay":J
    :goto_0
    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    .line 225
    sget-boolean v2, Landroid/content/res/ResourceTimer;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_1

    .line 226
    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    .line 228
    :cond_1
    sget-object v2, Landroid/content/res/ResourceTimer;->mHandler:Landroid/os/Handler;

    sget-wide v3, Landroid/content/res/ResourceTimer;->sProcessStart:J

    add-long/2addr v3, v0

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 229
    return-void
.end method

.method private static update(Z)V
    .locals 2
    .param p0, "reset"    # Z

    .line 236
    sget-object v0, Landroid/content/res/ResourceTimer;->sTimers:[Landroid/content/res/ResourceTimer$Timer;

    invoke-static {v0, p0}, Landroid/content/res/ResourceTimer;->nativeGetTimers([Landroid/content/res/ResourceTimer$Timer;Z)I

    .line 237
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Landroid/content/res/ResourceTimer;->sLastUpdated:J

    .line 238
    return-void
.end method
