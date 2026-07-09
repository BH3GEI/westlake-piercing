.class public abstract Lcom/android/internal/protolog/PerfettoProtoLogImpl;
.super Lcom/android/internal/protolog/IProtoLogClient$Stub;
.source "PerfettoProtoLogImpl.java"

# interfaces
.implements Lcom/android/internal/protolog/common/IProtoLog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "ProtoLog"

.field public static final blacklist NULL_STRING:Ljava/lang/String; = "null"

.field private static final blacklist STACK_SIZE_TO_PROTO_LOG_ENTRY_CALL:I = 0x6


# instance fields
.field protected blacklist mBackgroundLoggingService:Ljava/util/concurrent/ExecutorService;

.field private final blacklist mBackgroundServiceLock:Ljava/util/concurrent/locks/Lock;

.field private final blacklist mCacheUpdater:Lcom/android/internal/protolog/ProtoLogCacheUpdater;

.field private final blacklist mCollectStackTraceGroupCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist mConfigurationService:Lcom/android/internal/protolog/IProtoLogConfigurationService;

.field protected final blacklist mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

.field private final blacklist mDefaultLogLevelCounts:[I

.field protected final blacklist mLogGroups:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/protolog/common/IProtoLogGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLogLevelCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field private blacklist mLogcatReady:Z

.field private final blacklist mTracingInstances:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static synthetic blacklist $r8$lambda$ByAaNrwt9j6GynENDKrjHFNxzFg(Lcom/android/internal/protolog/PerfettoProtoLogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->lambda$connectToConfigurationService$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$MQ_SVaXmDujMW5ISGNMGvz8bOeI(Lcom/android/internal/protolog/PerfettoProtoLogImpl;ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->onTracingInstanceStart(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ZlqZnoHV-BCap7Ww-YBSQosJFUU(Lcom/android/internal/protolog/PerfettoProtoLogImpl;ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->onTracingInstanceStop(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mJFpMcp6YfnU0kpGiDT5HEXAhf0(Lcom/android/internal/protolog/PerfettoProtoLogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->onTracingFlush()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oLMGvk9n3jCtLVnANtrX7U02Jos(Lcom/android/internal/protolog/PerfettoProtoLogImpl;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;[Ljava/lang/Object;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;Ljava/lang/String;JLandroid/tracing/perfetto/TracingContext;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->lambda$logToProto$6(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;[Ljava/lang/Object;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;Ljava/lang/String;JLandroid/tracing/perfetto/TracingContext;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qCUZOZspX3_hz0DsGTElovE4fEE(Lcom/android/internal/protolog/PerfettoProtoLogImpl;Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;JLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->lambda$log$3(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;JLjava/lang/String;)V

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogDataSource;Lcom/android/internal/protolog/ProtoLogCacheUpdater;[Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .locals 1
    .param p1, "dataSource"    # Lcom/android/internal/protolog/ProtoLogDataSource;
    .param p2, "cacheUpdater"    # Lcom/android/internal/protolog/ProtoLogCacheUpdater;
    .param p3, "groups"    # [Lcom/android/internal/protolog/common/IProtoLogGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 123
    nop

    .line 124
    invoke-static {}, Landroid/tracing/Flags;->clientSideProtoLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    nop

    .line 126
    const-string/jumbo v0, "protolog_configuration"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 125
    invoke-static {v0}, Lcom/android/internal/protolog/IProtoLogConfigurationService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/protolog/IProtoLogConfigurationService;

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_0
    const/4 v0, 0x0

    .line 123
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource;Lcom/android/internal/protolog/ProtoLogCacheUpdater;[Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/IProtoLogConfigurationService;)V

    .line 129
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogDataSource;Lcom/android/internal/protolog/ProtoLogCacheUpdater;[Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/IProtoLogConfigurationService;)V
    .locals 1
    .param p1, "dataSource"    # Lcom/android/internal/protolog/ProtoLogDataSource;
    .param p2, "cacheUpdater"    # Lcom/android/internal/protolog/ProtoLogCacheUpdater;
    .param p3, "groups"    # [Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p4, "configurationService"    # Lcom/android/internal/protolog/IProtoLogConfigurationService;

    .line 135
    invoke-direct {p0}, Lcom/android/internal/protolog/IProtoLogClient$Stub;-><init>()V

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mTracingInstances:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 101
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroups:Ljava/util/TreeMap;

    .line 106
    nop

    .line 107
    invoke-static {}, Lcom/android/internal/protolog/common/LogLevel;->values()[Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDefaultLogLevelCounts:[I

    .line 108
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogLevelCounts:Ljava/util/Map;

    .line 110
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCollectStackTraceGroupCounts:Ljava/util/Map;

    .line 113
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundServiceLock:Ljava/util/concurrent/locks/Lock;

    .line 114
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundLoggingService:Ljava/util/concurrent/ExecutorService;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogcatReady:Z

    .line 136
    iput-object p1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    .line 137
    iput-object p2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCacheUpdater:Lcom/android/internal/protolog/ProtoLogCacheUpdater;

    .line 138
    iput-object p4, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mConfigurationService:Lcom/android/internal/protolog/IProtoLogConfigurationService;

    .line 140
    invoke-direct {p0, p3}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->registerGroupsLocally([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    .line 141
    return-void
.end method

.method private blacklist collectStackTrace()Ljava/lang/String;
    .locals 6

    .line 636
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 637
    .local v0, "stackTrace":[Ljava/lang/StackTraceElement;
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 638
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 639
    .local v2, "pw":Ljava/io/PrintWriter;
    const/4 v3, 0x6

    .local v3, "i":I
    :goto_0
    :try_start_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 640
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tat "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 642
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 644
    .end local v2    # "pw":Ljava/io/PrintWriter;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 638
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    :catchall_0
    move-exception v3

    :try_start_1
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
.end method

.method private blacklist connectToConfigurationService()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mConfigurationService:Lcom/android/internal/protolog/IProtoLogConfigurationService;

    const-string v1, "A null ProtoLog Configuration Service was provided!"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundLoggingService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 182
    return-void
.end method

.method private blacklist hash(Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 3
    .param p1, "logLevel"    # Lcom/android/internal/protolog/common/LogLevel;
    .param p2, "logGroup"    # Ljava/lang/String;
    .param p3, "messageString"    # Ljava/lang/String;

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 630
    .local v0, "fullStringIdentifier":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method private blacklist internProtoMessage(Landroid/tracing/perfetto/TracingContext;Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;)J
    .locals 16
    .param p2, "level"    # Lcom/android/internal/protolog/common/LogLevel;
    .param p3, "logGroup"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p4, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/TracingContext<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;",
            ">;",
            "Lcom/android/internal/protolog/common/LogLevel;",
            "Lcom/android/internal/protolog/common/IProtoLogGroup;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .line 576
    .local p1, "ctx":Landroid/tracing/perfetto/TracingContext;, "Landroid/tracing/perfetto/TracingContext<Lcom/android/internal/protolog/ProtoLogDataSource$Instance;Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual/range {p1 .. p1}, Landroid/tracing/perfetto/TracingContext;->getIncrementalState()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;

    .line 578
    .local v2, "incrementalState":Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;
    iget-boolean v3, v2, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->clearReported:Z

    const-wide v4, 0x10d0000000dL

    if-nez v3, :cond_0

    .line 579
    invoke-virtual/range {p1 .. p1}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object v3

    .line 580
    .local v3, "os":Landroid/util/proto/ProtoOutputStream;
    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 581
    iput-boolean v6, v2, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->clearReported:Z

    .line 585
    .end local v3    # "os":Landroid/util/proto/ProtoOutputStream;
    :cond_0
    iget-object v3, v2, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->protologGroupInterningSet:Ljava/util/Set;

    invoke-interface/range {p3 .. p3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-wide v6, 0x10900000002L

    const-wide v8, 0x10b00000069L

    if-nez v3, :cond_1

    .line 586
    iget-object v3, v2, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->protologGroupInterningSet:Ljava/util/Set;

    invoke-interface/range {p3 .. p3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 588
    invoke-virtual/range {p1 .. p1}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object v3

    .line 589
    .restart local v3    # "os":Landroid/util/proto/ProtoOutputStream;
    invoke-virtual {v3, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 590
    .local v10, "protologViewerConfigToken":J
    const-wide v12, 0x20b00000002L

    invoke-virtual {v3, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 592
    .local v12, "groupConfigToken":J
    const-wide v14, 0x10d00000001L

    invoke-interface/range {p3 .. p3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getId()I

    move-result v8

    invoke-virtual {v3, v14, v15, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 593
    invoke-interface/range {p3 .. p3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 594
    const-wide v8, 0x10900000003L

    invoke-interface/range {p3 .. p3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v8, v9, v14}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 596
    invoke-virtual {v3, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 597
    invoke-virtual {v3, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 600
    .end local v3    # "os":Landroid/util/proto/ProtoOutputStream;
    .end local v10    # "protologViewerConfigToken":J
    .end local v12    # "groupConfigToken":J
    :cond_1
    invoke-interface/range {p3 .. p3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v8, p0

    invoke-direct {v8, v0, v3, v1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->hash(Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 601
    .local v3, "messageHash":Ljava/lang/Long;
    iget-object v9, v2, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->protologMessageInterningSet:Ljava/util/Set;

    invoke-interface {v9, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 602
    iget-object v9, v2, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->protologMessageInterningSet:Ljava/util/Set;

    invoke-interface {v9, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 604
    invoke-virtual/range {p1 .. p1}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object v9

    .line 607
    .local v9, "os":Landroid/util/proto/ProtoOutputStream;
    const/4 v10, 0x2

    invoke-virtual {v9, v4, v5, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 609
    const-wide v4, 0x10b00000069L

    invoke-virtual {v9, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 610
    .local v4, "protologViewerConfigToken":J
    const-wide v10, 0x20b00000001L

    invoke-virtual {v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 612
    .local v10, "messageConfigToken":J
    const-wide v12, 0x10600000001L

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v9, v12, v13, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 613
    invoke-virtual {v9, v6, v7, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 614
    const-wide v6, 0x10e00000003L

    iget v12, v0, Lcom/android/internal/protolog/common/LogLevel;->id:I

    invoke-virtual {v9, v6, v7, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 615
    const-wide v6, 0x10d00000004L

    invoke-interface/range {p3 .. p3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getId()I

    move-result v12

    invoke-virtual {v9, v6, v7, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 617
    invoke-virtual {v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 618
    invoke-virtual {v9, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 621
    .end local v4    # "protologViewerConfigToken":J
    .end local v9    # "os":Landroid/util/proto/ProtoOutputStream;
    .end local v10    # "messageConfigToken":J
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    return-wide v4
.end method

.method private blacklist internStacktraceString(Landroid/tracing/perfetto/TracingContext;Ljava/lang/String;)I
    .locals 7
    .param p2, "stacktrace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/TracingContext<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 652
    .local p1, "ctx":Landroid/tracing/perfetto/TracingContext;, "Landroid/tracing/perfetto/TracingContext<Lcom/android/internal/protolog/ProtoLogDataSource$Instance;Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;>;"
    invoke-virtual {p1}, Landroid/tracing/perfetto/TracingContext;->getIncrementalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;

    .line 653
    .local v0, "incrementalState":Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;
    iget-object v3, v0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->stacktraceInterningMap:Ljava/util/Map;

    const-wide v4, 0x20b00000025L

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    .end local p1    # "ctx":Landroid/tracing/perfetto/TracingContext;, "Landroid/tracing/perfetto/TracingContext<Lcom/android/internal/protolog/ProtoLogDataSource$Instance;Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;>;"
    .end local p2    # "stacktrace":Ljava/lang/String;
    .local v2, "ctx":Landroid/tracing/perfetto/TracingContext;, "Landroid/tracing/perfetto/TracingContext<Lcom/android/internal/protolog/ProtoLogDataSource$Instance;Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;>;"
    .local v6, "stacktrace":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->internString(Landroid/tracing/perfetto/TracingContext;Ljava/util/Map;JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method private blacklist internString(Landroid/tracing/perfetto/TracingContext;Ljava/util/Map;JLjava/lang/String;)I
    .locals 10
    .param p3, "fieldId"    # J
    .param p5, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/TracingContext<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;J",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 674
    .local p1, "ctx":Landroid/tracing/perfetto/TracingContext;, "Landroid/tracing/perfetto/TracingContext<Lcom/android/internal/protolog/ProtoLogDataSource$Instance;Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;>;"
    .local p2, "internMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/tracing/perfetto/TracingContext;->getIncrementalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;

    .line 676
    .local v0, "incrementalState":Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;
    iget-boolean v1, v0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->clearReported:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 677
    invoke-virtual {p1}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object v1

    .line 678
    .local v1, "os":Landroid/util/proto/ProtoOutputStream;
    const-wide v3, 0x10d0000000dL

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 679
    iput-boolean v2, v0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->clearReported:Z

    .line 682
    .end local v1    # "os":Landroid/util/proto/ProtoOutputStream;
    :cond_0
    invoke-interface {p2, p5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 683
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v1, v2

    .line 684
    .local v1, "internedIndex":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, p5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    invoke-virtual {p1}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object v2

    .line 687
    .local v2, "os":Landroid/util/proto/ProtoOutputStream;
    const-wide v3, 0x10b0000000cL

    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 688
    .local v3, "token":J
    invoke-virtual {v2, p3, p4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 689
    .local v5, "innerToken":J
    const-wide v7, 0x10400000001L

    invoke-virtual {v2, v7, v8, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 690
    const-wide v7, 0x10c00000002L

    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v2, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 691
    invoke-virtual {v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 692
    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 695
    .end local v1    # "internedIndex":I
    .end local v2    # "os":Landroid/util/proto/ProtoOutputStream;
    .end local v3    # "token":J
    .end local v5    # "innerToken":J
    :cond_1
    invoke-interface {p2, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private blacklist internStringArg(Landroid/tracing/perfetto/TracingContext;Ljava/lang/String;)I
    .locals 7
    .param p2, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/TracingContext<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 662
    .local p1, "ctx":Landroid/tracing/perfetto/TracingContext;, "Landroid/tracing/perfetto/TracingContext<Lcom/android/internal/protolog/ProtoLogDataSource$Instance;Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;>;"
    invoke-virtual {p1}, Landroid/tracing/perfetto/TracingContext;->getIncrementalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;

    .line 663
    .local v0, "incrementalState":Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;
    iget-object v3, v0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->argumentInterningMap:Ljava/util/Map;

    const-wide v4, 0x20b00000024L

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    .end local p1    # "ctx":Landroid/tracing/perfetto/TracingContext;, "Landroid/tracing/perfetto/TracingContext<Lcom/android/internal/protolog/ProtoLogDataSource$Instance;Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;>;"
    .end local p2    # "string":Ljava/lang/String;
    .local v2, "ctx":Landroid/tracing/perfetto/TracingContext;, "Landroid/tracing/perfetto/TracingContext<Lcom/android/internal/protolog/ProtoLogDataSource$Instance;Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;>;"
    .local v6, "string":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->internString(Landroid/tracing/perfetto/TracingContext;Ljava/util/Map;JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method private synthetic blacklist lambda$connectToConfigurationService$0()V
    .locals 6

    .line 165
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->createConfigurationServiceRegisterClientArgs()Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;

    move-result-object v0

    .line 167
    .local v0, "args":Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;
    iget-object v1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroups:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;->groups:[Ljava/lang/String;

    .line 168
    iget-object v1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroups:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    new-array v1, v1, [Z

    iput-object v1, v0, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;->groupsDefaultLogcatStatus:[Z

    .line 170
    iget-object v1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroups:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v1

    .line 171
    .local v1, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/protolog/common/IProtoLogGroup;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 172
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 173
    .local v3, "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    iget-object v4, v0, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;->groups:[Ljava/lang/String;

    invoke-interface {v3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 174
    iget-object v4, v0, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;->groupsDefaultLogcatStatus:[Z

    invoke-interface {v3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToLogcat()Z

    move-result v5

    aput-boolean v5, v4, v2

    .line 171
    .end local v3    # "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mConfigurationService:Lcom/android/internal/protolog/IProtoLogConfigurationService;

    invoke-interface {v2, p0, v0}, Lcom/android/internal/protolog/IProtoLogConfigurationService;->registerClient(Lcom/android/internal/protolog/IProtoLogClient;Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v0    # "args":Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;
    .end local v1    # "groups":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/protolog/common/IProtoLogGroup;>;"
    nop

    .line 181
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to register ProtoLog client"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private synthetic blacklist lambda$log$3(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;JLjava/lang/String;)V
    .locals 0
    .param p1, "logLevel"    # Lcom/android/internal/protolog/common/LogLevel;
    .param p2, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p3, "message"    # Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;
    .param p4, "args"    # [Ljava/lang/Object;
    .param p5, "tsNanos"    # J
    .param p7, "stacktrace"    # Ljava/lang/String;

    .line 371
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->logToProto(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;JLjava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$logToProto$4(Landroid/util/proto/ProtoOutputStream;Ljava/lang/Double;)V
    .locals 4
    .param p0, "os"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "it"    # Ljava/lang/Double;

    .line 553
    const-wide v0, 0x20100000004L

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    return-void
.end method

.method static synthetic blacklist lambda$logToProto$5(Landroid/util/proto/ProtoOutputStream;Ljava/lang/Boolean;)V
    .locals 3
    .param p0, "os"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "it"    # Ljava/lang/Boolean;

    .line 556
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-wide v1, 0x20500000005L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void
.end method

.method private synthetic blacklist lambda$logToProto$6(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;[Ljava/lang/Object;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;Ljava/lang/String;JLandroid/tracing/perfetto/TracingContext;)V
    .locals 25
    .param p1, "logGroup"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p2, "level"    # Lcom/android/internal/protolog/common/LogLevel;
    .param p3, "args"    # [Ljava/lang/Object;
    .param p4, "message"    # Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;
    .param p5, "stacktrace"    # Ljava/lang/String;
    .param p6, "tsNanos"    # J
    .param p8, "ctx"    # Landroid/tracing/perfetto/TracingContext;

    .line 451
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p8

    invoke-virtual {v3}, Landroid/tracing/perfetto/TracingContext;->getCustomTlsState()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;

    .line 452
    .local v4, "tlsState":Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;->getLogFromLevel(Ljava/lang/String;)Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v5

    .line 454
    .local v5, "logFrom":Lcom/android/internal/protolog/common/LogLevel;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v0

    invoke-virtual {v5}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 455
    return-void

    .line 458
    :cond_0
    const-string v6, "null"

    if-eqz v2, :cond_3

    .line 462
    const/4 v0, 0x0

    .line 463
    .local v0, "argIndex":I
    array-length v8, v2

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_3

    aget-object v10, v2, v9

    .line 464
    .local v10, "o":Ljava/lang/Object;
    invoke-static/range {p4 .. p4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->-$$Nest$mgetMessageMask(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)I

    move-result v11

    invoke-static {v11, v0}, Lcom/android/internal/protolog/common/LogDataType;->bitmaskToLogDataType(II)I

    move-result v11

    .line 465
    .local v11, "type":I
    if-nez v11, :cond_2

    .line 466
    if-nez v10, :cond_1

    .line 467
    invoke-direct {v1, v3, v6}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->internStringArg(Landroid/tracing/perfetto/TracingContext;Ljava/lang/String;)I

    goto :goto_1

    .line 469
    :cond_1
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v3, v12}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->internStringArg(Landroid/tracing/perfetto/TracingContext;Ljava/lang/String;)I

    .line 472
    :cond_2
    :goto_1
    nop

    .end local v10    # "o":Ljava/lang/Object;
    .end local v11    # "type":I
    add-int/lit8 v0, v0, 0x1

    .line 463
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 476
    .end local v0    # "argIndex":I
    :cond_3
    const/4 v0, 0x0

    .line 477
    .local v0, "internedStacktrace":I
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;->getShouldCollectStacktrace(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 481
    move-object/from16 v8, p5

    invoke-direct {v1, v3, v8}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->internStacktraceString(Landroid/tracing/perfetto/TracingContext;Ljava/lang/String;)I

    move-result v0

    move v9, v0

    goto :goto_2

    .line 477
    :cond_4
    move-object/from16 v8, p5

    move v9, v0

    .line 484
    .end local v0    # "internedStacktrace":I
    .local v9, "internedStacktrace":I
    :goto_2
    const/4 v0, 0x0

    .line 486
    .local v0, "needsIncrementalState":Z
    const-wide/16 v10, 0x0

    .line 487
    .local v10, "messageHash":J
    invoke-static/range {p4 .. p4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->-$$Nest$fgetmMessageHash(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/Long;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 488
    invoke-static/range {p4 .. p4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->-$$Nest$fgetmMessageHash(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 490
    :cond_5
    invoke-static/range {p4 .. p4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->-$$Nest$fgetmMessageString(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 491
    const/4 v0, 0x1

    .line 492
    invoke-static/range {p4 .. p4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->-$$Nest$fgetmMessageString(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/String;

    move-result-object v12

    .line 493
    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-direct {v1, v3, v14, v13, v12}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->internProtoMessage(Landroid/tracing/perfetto/TracingContext;Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;)J

    move-result-wide v10

    goto :goto_3

    .line 490
    :cond_6
    move-object/from16 v13, p1

    move-object/from16 v14, p2

    .line 496
    :goto_3
    invoke-virtual {v3}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object v12

    .line 497
    .local v12, "os":Landroid/util/proto/ProtoOutputStream;
    const/4 v15, 0x0

    const-wide v7, 0x10400000008L

    move-wide/from16 v13, p6

    invoke-virtual {v12, v7, v8, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 498
    const-wide v7, 0x10b00000068L

    invoke-virtual {v12, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 500
    .local v7, "token":J
    const-wide v13, 0x10600000001L

    invoke-virtual {v12, v13, v14, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 502
    if-eqz v2, :cond_d

    .line 504
    const/4 v13, 0x0

    .line 505
    .local v13, "argIndex":I
    new-instance v14, Landroid/util/LongArray;

    invoke-direct {v14}, Landroid/util/LongArray;-><init>()V

    .line 506
    .local v14, "longParams":Landroid/util/LongArray;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v16

    .line 507
    .local v17, "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v16

    .line 508
    .local v18, "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    move/from16 v16, v15

    array-length v15, v2

    move-object/from16 v19, v5

    move v2, v13

    move/from16 v5, v16

    move v13, v0

    .end local v0    # "needsIncrementalState":Z
    .end local v5    # "logFrom":Lcom/android/internal/protolog/common/LogLevel;
    .local v2, "argIndex":I
    .local v13, "needsIncrementalState":Z
    .local v19, "logFrom":Lcom/android/internal/protolog/common/LogLevel;
    :goto_4
    if-ge v5, v15, :cond_b

    aget-object v20, p3, v5

    .line 509
    .local v20, "o":Ljava/lang/Object;
    invoke-static/range {p4 .. p4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->-$$Nest$mgetMessageMask(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)I

    move-result v0

    invoke-static {v0, v2}, Lcom/android/internal/protolog/common/LogDataType;->bitmaskToLogDataType(II)I

    move-result v21

    .line 511
    .local v21, "type":I
    packed-switch v21, :pswitch_data_0

    move/from16 v22, v2

    move-wide/from16 v23, v10

    move-object/from16 v2, v18

    move/from16 v18, v5

    move-object/from16 v5, v17

    .end local v10    # "messageHash":J
    .end local v17    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v18    # "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local v2, "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local v5, "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .local v22, "argIndex":I
    .local v23, "messageHash":J
    goto/16 :goto_7

    .line 537
    .end local v5    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v22    # "argIndex":I
    .end local v23    # "messageHash":J
    .local v2, "argIndex":I
    .restart local v10    # "messageHash":J
    .restart local v17    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v18    # "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :pswitch_0
    if-nez v20, :cond_7

    .line 538
    :try_start_0
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v22, v2

    move-object/from16 v2, v18

    .end local v18    # "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local v2, "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .restart local v22    # "argIndex":I
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v18, v5

    move-wide/from16 v23, v10

    move-object/from16 v5, v17

    goto/16 :goto_7

    .line 544
    .end local v22    # "argIndex":I
    .local v2, "argIndex":I
    .restart local v18    # "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v0

    move/from16 v22, v2

    move-object/from16 v2, v18

    move/from16 v18, v5

    move-wide/from16 v23, v10

    move-object/from16 v5, v17

    .end local v18    # "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local v2, "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .restart local v22    # "argIndex":I
    goto/16 :goto_6

    .line 540
    .end local v22    # "argIndex":I
    .local v2, "argIndex":I
    .restart local v18    # "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_7
    move/from16 v22, v2

    move-object/from16 v2, v18

    .end local v18    # "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local v2, "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .restart local v22    # "argIndex":I
    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v18, v5

    move-wide/from16 v23, v10

    move-object/from16 v5, v17

    goto/16 :goto_7

    .line 544
    :catch_1
    move-exception v0

    move/from16 v18, v5

    move-wide/from16 v23, v10

    move-object/from16 v5, v17

    goto/16 :goto_6

    .line 530
    .end local v22    # "argIndex":I
    .local v2, "argIndex":I
    .restart local v18    # "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :pswitch_1
    move/from16 v22, v2

    move-object/from16 v2, v18

    .end local v18    # "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local v2, "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .restart local v22    # "argIndex":I
    if-nez v20, :cond_8

    .line 531
    const-wide/16 v23, 0x0

    :try_start_2
    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move/from16 v18, v5

    move-object/from16 v5, v17

    .end local v17    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v5    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    :try_start_3
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v23, v10

    goto/16 :goto_7

    .line 544
    .end local v5    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v17    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    :catch_2
    move-exception v0

    move/from16 v18, v5

    move-object/from16 v5, v17

    move-wide/from16 v23, v10

    .end local v17    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v5    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    goto/16 :goto_6

    .line 533
    .end local v5    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v17    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    :cond_8
    move/from16 v18, v5

    move-object/from16 v5, v17

    .end local v17    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v5    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    .line 535
    move-wide/from16 v23, v10

    goto :goto_7

    .line 544
    :catch_3
    move-exception v0

    move-wide/from16 v23, v10

    goto :goto_6

    .line 523
    .end local v5    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v22    # "argIndex":I
    .local v2, "argIndex":I
    .restart local v17    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v18    # "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :pswitch_2
    move/from16 v22, v2

    move-object/from16 v2, v18

    move/from16 v18, v5

    move-object/from16 v5, v17

    .end local v17    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v18    # "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local v2, "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .restart local v5    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v22    # "argIndex":I
    if-nez v20, :cond_9

    .line 524
    move-wide/from16 v23, v10

    .end local v10    # "messageHash":J
    .restart local v23    # "messageHash":J
    const-wide/16 v10, 0x0

    :try_start_4
    invoke-virtual {v14, v10, v11}, Landroid/util/LongArray;->add(J)V

    goto :goto_7

    .line 526
    .end local v23    # "messageHash":J
    .restart local v10    # "messageHash":J
    :cond_9
    move-wide/from16 v23, v10

    .end local v10    # "messageHash":J
    .restart local v23    # "messageHash":J
    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    invoke-virtual {v14, v10, v11}, Landroid/util/LongArray;->add(J)V

    .line 528
    goto :goto_7

    .line 514
    .end local v5    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v22    # "argIndex":I
    .end local v23    # "messageHash":J
    .local v2, "argIndex":I
    .restart local v10    # "messageHash":J
    .restart local v17    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v18    # "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :pswitch_3
    move/from16 v22, v2

    move-wide/from16 v23, v10

    move-object/from16 v2, v18

    move/from16 v18, v5

    move-object/from16 v5, v17

    .end local v10    # "messageHash":J
    .end local v17    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v18    # "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local v2, "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .restart local v5    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v22    # "argIndex":I
    .restart local v23    # "messageHash":J
    if-nez v20, :cond_a

    .line 515
    invoke-direct {v1, v3, v6}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->internStringArg(Landroid/tracing/perfetto/TracingContext;Ljava/lang/String;)I

    move-result v0

    .local v0, "internedStringId":I
    goto :goto_5

    .line 517
    .end local v0    # "internedStringId":I
    :cond_a
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->internStringArg(Landroid/tracing/perfetto/TracingContext;Ljava/lang/String;)I

    move-result v0

    .line 519
    .restart local v0    # "internedStringId":I
    :goto_5
    const-wide v10, 0x20d00000002L

    invoke-virtual {v12, v10, v11, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    .line 520
    const/4 v10, 0x1

    .line 521
    .end local v13    # "needsIncrementalState":Z
    .local v10, "needsIncrementalState":Z
    move v13, v10

    goto :goto_7

    .line 544
    .end local v0    # "internedStringId":I
    .end local v10    # "needsIncrementalState":Z
    .restart local v13    # "needsIncrementalState":Z
    :catch_4
    move-exception v0

    .line 545
    .local v0, "ex":Ljava/lang/ClassCastException;
    :goto_6
    const-string v10, "ProtoLog"

    const-string v11, "Invalid ProtoLog paramsMask"

    invoke-static {v10, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 546
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    :goto_7
    nop

    .line 547
    :goto_8
    nop

    .end local v20    # "o":Ljava/lang/Object;
    .end local v21    # "type":I
    add-int/lit8 v0, v22, 0x1

    .line 508
    .end local v22    # "argIndex":I
    .local v0, "argIndex":I
    add-int/lit8 v10, v18, 0x1

    move-object/from16 v18, v2

    move-object/from16 v17, v5

    move v5, v10

    move-wide/from16 v10, v23

    move v2, v0

    goto/16 :goto_4

    .line 550
    .end local v0    # "argIndex":I
    .end local v5    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v23    # "messageHash":J
    .local v2, "argIndex":I
    .local v10, "messageHash":J
    .restart local v17    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v18    # "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_b
    move/from16 v22, v2

    move-wide/from16 v23, v10

    move-object/from16 v5, v17

    move-object/from16 v2, v18

    .end local v10    # "messageHash":J
    .end local v17    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v18    # "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local v2, "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .restart local v5    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v22    # "argIndex":I
    .restart local v23    # "messageHash":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    invoke-virtual {v14}, Landroid/util/LongArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_c

    .line 551
    const-wide v10, 0x21200000003L

    move-wide v15, v7

    .end local v7    # "token":J
    .local v15, "token":J
    invoke-virtual {v14, v0}, Landroid/util/LongArray;->get(I)J

    move-result-wide v6

    invoke-virtual {v12, v10, v11, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 550
    add-int/lit8 v0, v0, 0x1

    move-wide v7, v15

    goto :goto_9

    .end local v15    # "token":J
    .restart local v7    # "token":J
    :cond_c
    move-wide v15, v7

    .line 553
    .end local v0    # "i":I
    .end local v7    # "token":J
    .restart local v15    # "token":J
    new-instance v0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda7;

    invoke-direct {v0, v12}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda7;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 556
    new-instance v0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda8;

    invoke-direct {v0, v12}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda8;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    move v0, v13

    goto :goto_a

    .line 502
    .end local v2    # "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .end local v13    # "needsIncrementalState":Z
    .end local v14    # "longParams":Landroid/util/LongArray;
    .end local v15    # "token":J
    .end local v19    # "logFrom":Lcom/android/internal/protolog/common/LogLevel;
    .end local v22    # "argIndex":I
    .end local v23    # "messageHash":J
    .local v0, "needsIncrementalState":Z
    .local v5, "logFrom":Lcom/android/internal/protolog/common/LogLevel;
    .restart local v7    # "token":J
    .restart local v10    # "messageHash":J
    :cond_d
    move-object/from16 v19, v5

    move-wide v15, v7

    move-wide/from16 v23, v10

    .line 559
    .end local v5    # "logFrom":Lcom/android/internal/protolog/common/LogLevel;
    .end local v7    # "token":J
    .end local v10    # "messageHash":J
    .restart local v15    # "token":J
    .restart local v19    # "logFrom":Lcom/android/internal/protolog/common/LogLevel;
    .restart local v23    # "messageHash":J
    :goto_a
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;->getShouldCollectStacktrace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 560
    const-wide v5, 0x10d00000006L

    invoke-virtual {v12, v5, v6, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 563
    :cond_e
    move-wide v5, v15

    .end local v15    # "token":J
    .local v5, "token":J
    invoke-virtual {v12, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 565
    if-eqz v0, :cond_f

    .line 566
    const-wide v7, 0x10d0000000dL

    const/4 v2, 0x2

    invoke-virtual {v12, v7, v8, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 569
    :cond_f
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic blacklist lambda$onShellCommand$2(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "msg"    # Ljava/lang/String;

    .line 338
    invoke-static {p0, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$onTracingInstanceStop$7(I)Z
    .locals 1
    .param p0, "it"    # I

    .line 794
    if-nez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$toggleLogcat$1(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 248
    const-string v0, "ProtoLog"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;)V
    .locals 10
    .param p1, "logLevel"    # Lcom/android/internal/protolog/common/LogLevel;
    .param p2, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p3, "message"    # Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 360
    invoke-virtual {p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->isProtoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    .line 363
    .local v7, "tsNanos":J
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCollectStackTraceGroupCounts:Ljava/util/Map;

    invoke-interface {p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 364
    invoke-direct {p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->collectStackTrace()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .local v0, "stacktrace":Ljava/lang/String;
    goto :goto_0

    .line 366
    .end local v0    # "stacktrace":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    move-object v9, v0

    .line 369
    .local v9, "stacktrace":Ljava/lang/String;
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 370
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundLoggingService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "logLevel":Lcom/android/internal/protolog/common/LogLevel;
    .end local p2    # "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    .end local p3    # "message":Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;
    .end local p4    # "args":[Ljava/lang/Object;
    .local v3, "logLevel":Lcom/android/internal/protolog/common/LogLevel;
    .local v4, "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    .local v5, "message":Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;
    .local v6, "args":[Ljava/lang/Object;
    :try_start_1
    invoke-direct/range {v1 .. v9}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;JLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    iget-object p1, v2, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 375
    goto :goto_2

    .line 374
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .end local v3    # "logLevel":Lcom/android/internal/protolog/common/LogLevel;
    .end local v4    # "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    .end local v5    # "message":Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;
    .end local v6    # "args":[Ljava/lang/Object;
    .restart local p1    # "logLevel":Lcom/android/internal/protolog/common/LogLevel;
    .restart local p2    # "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    .restart local p3    # "message":Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;
    .restart local p4    # "args":[Ljava/lang/Object;
    :catchall_1
    move-exception v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object p1, v0

    .end local p1    # "logLevel":Lcom/android/internal/protolog/common/LogLevel;
    .end local p2    # "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    .end local p3    # "message":Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;
    .end local p4    # "args":[Ljava/lang/Object;
    .restart local v3    # "logLevel":Lcom/android/internal/protolog/common/LogLevel;
    .restart local v4    # "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    .restart local v5    # "message":Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;
    .restart local v6    # "args":[Ljava/lang/Object;
    :goto_1
    iget-object p2, v2, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 375
    throw p1

    .line 360
    .end local v3    # "logLevel":Lcom/android/internal/protolog/common/LogLevel;
    .end local v4    # "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    .end local v5    # "message":Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;
    .end local v6    # "args":[Ljava/lang/Object;
    .end local v7    # "tsNanos":J
    .end local v9    # "stacktrace":Ljava/lang/String;
    .restart local p1    # "logLevel":Lcom/android/internal/protolog/common/LogLevel;
    .restart local p2    # "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    .restart local p3    # "message":Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;
    .restart local p4    # "args":[Ljava/lang/Object;
    :cond_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 377
    .end local p1    # "logLevel":Lcom/android/internal/protolog/common/LogLevel;
    .end local p2    # "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    .end local p3    # "message":Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;
    .end local p4    # "args":[Ljava/lang/Object;
    .restart local v3    # "logLevel":Lcom/android/internal/protolog/common/LogLevel;
    .restart local v4    # "group":Lcom/android/internal/protolog/common/IProtoLogGroup;
    .restart local v5    # "message":Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;
    .restart local v6    # "args":[Ljava/lang/Object;
    :goto_2
    invoke-interface {v4}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToLogcat()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 378
    invoke-interface {v4}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3, v5, v6}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->logToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;)V

    .line 380
    :cond_2
    return-void
.end method

.method private static blacklist logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "msg"    # Ljava/lang/String;

    .line 813
    const-string v0, "ProtoLog"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    if-eqz p0, :cond_0

    .line 815
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 816
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 818
    :cond_0
    return-void
.end method

.method private blacklist logToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "level"    # Lcom/android/internal/protolog/common/LogLevel;
    .param p3, "message"    # Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 420
    iget-boolean v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogcatReady:Z

    if-nez v0, :cond_0

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to log a protolog message with hash "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 422
    invoke-virtual {p3}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->getMessageHash()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to logcat before the service is ready to accept such requests."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 421
    const-string v1, "ProtoLog"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return-void

    .line 427
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->getLogcatMessageString(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "messageString":Ljava/lang/String;
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->logToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 429
    return-void
.end method

.method private blacklist logToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "level"    # Lcom/android/internal/protolog/common/LogLevel;
    .param p3, "messageString"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 434
    if-eqz p4, :cond_0

    .line 436
    :try_start_0
    invoke-static {p3, p4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    .local v0, "message":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 437
    .end local v0    # "message":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 438
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FORMAT_ERROR \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", args=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 440
    invoke-static {p4}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/protolog/NoViewerConfigProtoLogImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/internal/protolog/NoViewerConfigProtoLogImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v2

    .line 439
    const-string v3, ", "

    invoke-static {v3, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "message":Ljava/lang/String;
    goto :goto_0

    .line 443
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    move-object v0, p3

    .line 445
    .restart local v0    # "message":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->passToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method private blacklist logToProto(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;JLjava/lang/String;)V
    .locals 10
    .param p1, "level"    # Lcom/android/internal/protolog/common/LogLevel;
    .param p2, "logGroup"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p3, "message"    # Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;
    .param p4, "args"    # [Ljava/lang/Object;
    .param p5, "tsNanos"    # J
    .param p7, "stacktrace"    # Ljava/lang/String;

    .line 450
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda6;

    move-object v2, p0

    move-object v4, p1

    move-object v3, p2

    move-object v6, p3

    move-object v5, p4

    move-wide v8, p5

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;[Ljava/lang/Object;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/android/internal/protolog/ProtoLogDataSource;->trace(Landroid/tracing/perfetto/TraceFunction;)V

    .line 570
    return-void
.end method

.method private blacklist onTracingFlush()V
    .locals 5

    .line 383
    const-string v0, "Executing onTracingFlush"

    const-string v1, "ProtoLog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 388
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundLoggingService:Ljava/util/concurrent/ExecutorService;

    .line 389
    .local v0, "loggingService":Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundLoggingService:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    iget-object v2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 392
    nop

    .line 395
    :try_start_1
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 396
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    invoke-interface {v0, v3, v4, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    .line 398
    .local v2, "finished":Z
    if-nez v2, :cond_0

    .line 399
    const-string v3, "ProtoLog background tracing service didn\'t finish gracefully."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 403
    .end local v2    # "finished":Z
    :cond_0
    goto :goto_0

    .line 401
    :catch_0
    move-exception v2

    .line 402
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "Failed to wait for tracing to finish"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 405
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_0
    invoke-static {}, Landroid/tracing/Flags;->clientSideProtoLogging()Z

    move-result v2

    if-nez v2, :cond_1

    .line 406
    invoke-virtual {p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->dumpViewerConfig()V

    .line 409
    :cond_1
    const-string v2, "Finished onTracingFlush"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return-void

    .line 391
    .end local v0    # "loggingService":Ljava/util/concurrent/ExecutorService;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mBackgroundServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 392
    throw v0
.end method

.method private declared-synchronized blacklist onTracingInstanceStart(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .locals 10
    .param p1, "instanceIdx"    # I
    .param p2, "config"    # Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    monitor-enter p0

    .line 739
    :try_start_0
    const-string v0, "ProtoLog"

    const-string v1, "Executing onTracingInstanceStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-virtual {p2}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getDefaultGroupConfig()Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;->logFrom:Lcom/android/internal/protolog/common/LogLevel;

    .line 742
    .local v0, "defaultLogFrom":Lcom/android/internal/protolog/common/LogLevel;
    invoke-virtual {v0}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v1

    .local v1, "i":I
    :goto_0
    invoke-static {}, Lcom/android/internal/protolog/common/LogLevel;->values()[Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 743
    iget-object v2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDefaultLogLevelCounts:[I

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    .line 742
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 746
    .end local v1    # "i":I
    .end local p0    # "this":Lcom/android/internal/protolog/PerfettoProtoLogImpl;
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getGroupTagsWithOverriddenConfigs()Ljava/util/Set;

    move-result-object v1

    .line 748
    .local v1, "overriddenGroupTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 749
    .local v3, "overriddenGroupTag":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogLevelCounts:Ljava/util/Map;

    invoke-static {}, Lcom/android/internal/protolog/common/LogLevel;->values()[Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    iget-object v4, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogLevelCounts:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 752
    .local v4, "logLevelsCountsForGroup":[I
    invoke-virtual {p2, v3}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getConfigFor(Ljava/lang/String;)Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;->logFrom:Lcom/android/internal/protolog/common/LogLevel;

    .line 753
    .local v5, "logFromLevel":Lcom/android/internal/protolog/common/LogLevel;
    invoke-virtual {v5}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v6

    .local v6, "i":I
    :goto_2
    invoke-static {}, Lcom/android/internal/protolog/common/LogLevel;->values()[Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v7

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 754
    aget v7, v4, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v4, v6

    .line 753
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 757
    .end local v6    # "i":I
    :cond_1
    invoke-virtual {p2, v3}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getConfigFor(Ljava/lang/String;)Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;->collectStackTrace:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 758
    iget-object v6, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCollectStackTraceGroupCounts:Ljava/util/Map;

    iget-object v8, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCollectStackTraceGroupCounts:Ljava/util/Map;

    .line 759
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v3, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 758
    invoke-interface {v6, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    :cond_2
    invoke-virtual {p2, v3}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getConfigFor(Ljava/lang/String;)Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;->collectStackTrace:Z

    if-eqz v6, :cond_3

    .line 763
    iget-object v6, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCollectStackTraceGroupCounts:Ljava/util/Map;

    iget-object v8, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCollectStackTraceGroupCounts:Ljava/util/Map;

    .line 764
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v3, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 763
    invoke-interface {v6, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    .end local v3    # "overriddenGroupTag":Ljava/lang/String;
    .end local v4    # "logLevelsCountsForGroup":[I
    .end local v5    # "logFromLevel":Lcom/android/internal/protolog/common/LogLevel;
    :cond_3
    goto/16 :goto_1

    .line 768
    :cond_4
    iget-object v2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCacheUpdater:Lcom/android/internal/protolog/ProtoLogCacheUpdater;

    invoke-interface {v2, p0}, Lcom/android/internal/protolog/ProtoLogCacheUpdater;->update(Lcom/android/internal/protolog/common/IProtoLog;)V

    .line 770
    iget-object v2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mTracingInstances:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 772
    const-string v2, "ProtoLog"

    const-string v3, "Finished onTracingInstanceStart"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    monitor-exit p0

    return-void

    .line 738
    .end local v0    # "defaultLogFrom":Lcom/android/internal/protolog/common/LogLevel;
    .end local v1    # "overriddenGroupTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p1    # "instanceIdx":I
    .end local p2    # "config":Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized blacklist onTracingInstanceStop(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .locals 8
    .param p1, "instanceIdx"    # I
    .param p2, "config"    # Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    monitor-enter p0

    .line 777
    :try_start_0
    const-string v0, "ProtoLog"

    const-string v1, "Executing onTracingInstanceStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mTracingInstances:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 780
    invoke-virtual {p2}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getDefaultGroupConfig()Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;->logFrom:Lcom/android/internal/protolog/common/LogLevel;

    .line 781
    .local v0, "defaultLogFrom":Lcom/android/internal/protolog/common/LogLevel;
    invoke-virtual {v0}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v1

    .local v1, "i":I
    :goto_0
    invoke-static {}, Lcom/android/internal/protolog/common/LogLevel;->values()[Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 782
    iget-object v2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDefaultLogLevelCounts:[I

    aget v3, v2, v1

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v1

    .line 781
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 785
    .end local v1    # "i":I
    .end local p0    # "this":Lcom/android/internal/protolog/PerfettoProtoLogImpl;
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getGroupTagsWithOverriddenConfigs()Ljava/util/Set;

    move-result-object v1

    .line 787
    .local v1, "overriddenGroupTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 788
    .local v3, "overriddenGroupTag":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogLevelCounts:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 790
    .local v4, "logLevelsCountsForGroup":[I
    invoke-virtual {p2, v3}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getConfigFor(Ljava/lang/String;)Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;->logFrom:Lcom/android/internal/protolog/common/LogLevel;

    .line 791
    .local v5, "logFromLevel":Lcom/android/internal/protolog/common/LogLevel;
    invoke-virtual {v5}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v6

    .local v6, "i":I
    :goto_2
    invoke-static {}, Lcom/android/internal/protolog/common/LogLevel;->values()[Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v7

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 792
    aget v7, v4, v6

    add-int/lit8 v7, v7, -0x1

    aput v7, v4, v6

    .line 791
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 794
    .end local v6    # "i":I
    :cond_1
    invoke-static {v4}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v6

    new-instance v7, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda5;

    invoke-direct {v7}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 795
    iget-object v6, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogLevelCounts:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    :cond_2
    invoke-virtual {p2, v3}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getConfigFor(Ljava/lang/String;)Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;->collectStackTrace:Z

    if-eqz v6, :cond_3

    .line 799
    iget-object v6, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCollectStackTraceGroupCounts:Ljava/util/Map;

    iget-object v7, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCollectStackTraceGroupCounts:Ljava/util/Map;

    .line 800
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 799
    invoke-interface {v6, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    iget-object v6, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCollectStackTraceGroupCounts:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_3

    .line 803
    iget-object v6, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCollectStackTraceGroupCounts:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    .end local v3    # "overriddenGroupTag":Ljava/lang/String;
    .end local v4    # "logLevelsCountsForGroup":[I
    .end local v5    # "logFromLevel":Lcom/android/internal/protolog/common/LogLevel;
    :cond_3
    goto :goto_1

    .line 808
    :cond_4
    iget-object v2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCacheUpdater:Lcom/android/internal/protolog/ProtoLogCacheUpdater;

    invoke-interface {v2, p0}, Lcom/android/internal/protolog/ProtoLogCacheUpdater;->update(Lcom/android/internal/protolog/common/IProtoLog;)V

    .line 809
    const-string v2, "ProtoLog"

    const-string v3, "Finished onTracingInstanceStop"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 810
    monitor-exit p0

    return-void

    .line 776
    .end local v0    # "defaultLogFrom":Lcom/android/internal/protolog/common/LogLevel;
    .end local v1    # "overriddenGroupTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p1    # "instanceIdx":I
    .end local p2    # "config":Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private blacklist registerGroupsLocally([Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .locals 5
    .param p1, "protoLogGroups"    # [Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 293
    invoke-direct {p0, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->verifyNoCollisionsOrDuplicates([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    .line 295
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 296
    .local v2, "protoLogGroup":Lcom/android/internal/protolog/common/IProtoLogGroup;
    iget-object v3, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroups:Ljava/util/TreeMap;

    invoke-interface {v2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .end local v2    # "protoLogGroup":Lcom/android/internal/protolog/common/IProtoLogGroup;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    :cond_0
    return-void
.end method

.method private varargs blacklist setTextLogging(ZLcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)I
    .locals 6
    .param p1, "value"    # Z
    .param p2, "logger"    # Lcom/android/internal/protolog/common/ILogger;
    .param p3, "groups"    # [Ljava/lang/String;

    .line 711
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->validateGroups(Lcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 712
    const/4 v0, -0x1

    return v0

    .line 715
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_2

    .line 716
    aget-object v1, p3, v0

    .line 717
    .local v1, "group":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroups:Ljava/util/TreeMap;

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 718
    .local v2, "g":Lcom/android/internal/protolog/common/IProtoLogGroup;
    if-eqz v2, :cond_1

    .line 719
    invoke-interface {v2, p1}, Lcom/android/internal/protolog/common/IProtoLogGroup;->setLogToLogcat(Z)V

    .line 715
    .end local v1    # "group":Ljava/lang/String;
    .end local v2    # "g":Lcom/android/internal/protolog/common/IProtoLogGroup;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 721
    .restart local v1    # "group":Ljava/lang/String;
    .restart local v2    # "g":Lcom/android/internal/protolog/common/IProtoLogGroup;
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No IProtoLogGroup named "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 725
    .end local v0    # "i":I
    .end local v1    # "group":Ljava/lang/String;
    .end local v2    # "g":Lcom/android/internal/protolog/common/IProtoLogGroup;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCacheUpdater:Lcom/android/internal/protolog/ProtoLogCacheUpdater;

    invoke-interface {v0, p0}, Lcom/android/internal/protolog/ProtoLogCacheUpdater;->update(Lcom/android/internal/protolog/common/IProtoLog;)V

    .line 726
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist unknownCommand(Ljava/io/PrintWriter;)I
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 730
    const-string v0, "Unknown command"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 731
    const-string v0, "Window manager logging options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 732
    const-string v0, "  enable-text [group...]: Enable logcat logging for given groups"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 733
    const-string v0, "  disable-text [group...]: Disable logcat logging for given groups"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 734
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist verifyNoCollisionsOrDuplicates([Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .locals 5
    .param p1, "protoLogGroups"    # [Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 301
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 303
    .local v0, "groupId":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 304
    .local v3, "protoLogGroup":Lcom/android/internal/protolog/common/IProtoLogGroup;
    invoke-interface {v3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 309
    invoke-interface {v3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 303
    .end local v3    # "protoLogGroup":Lcom/android/internal/protolog/common/IProtoLogGroup;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 305
    .restart local v3    # "protoLogGroup":Lcom/android/internal/protolog/common/IProtoLogGroup;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Group with same id ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 306
    invoke-interface {v3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") registered twice. Potential duplicate or hash id collision."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 311
    .end local v3    # "protoLogGroup":Lcom/android/internal/protolog/common/IProtoLogGroup;
    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract blacklist createConfigurationServiceRegisterClientArgs()Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;
.end method

.method public blacklist disable()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/protolog/ProtoLogDataSource;->unregisterOnStartCallback(Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;)V

    .line 190
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/protolog/ProtoLogDataSource;->unregisterOnFlushCallback(Ljava/lang/Runnable;)V

    .line 191
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/protolog/ProtoLogDataSource;->unregisterOnStopCallback(Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;)V

    .line 192
    return-void
.end method

.method abstract blacklist dumpViewerConfig()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public blacklist enable()V
    .locals 2

    .line 148
    sget-object v0, Landroid/tracing/perfetto/InitArguments;->DEFAULTS:Landroid/tracing/perfetto/InitArguments;

    invoke-static {v0}, Landroid/tracing/perfetto/Producer;->init(Landroid/tracing/perfetto/InitArguments;)V

    .line 150
    invoke-static {}, Landroid/tracing/Flags;->clientSideProtoLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->connectToConfigurationService()V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/protolog/ProtoLogDataSource;->registerOnStartCallback(Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;)V

    .line 155
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/protolog/ProtoLogDataSource;->registerOnFlushCallback(Ljava/lang/Runnable;)V

    .line 156
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/protolog/ProtoLogDataSource;->registerOnStopCallback(Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;)V

    .line 157
    return-void
.end method

.method abstract blacklist getLogcatMessageString(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/String;
.end method

.method public blacklist getRegisteredGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/protolog/common/IProtoLogGroup;",
            ">;"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroups:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z
    .locals 3
    .param p1, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p2, "level"    # Lcom/android/internal/protolog/common/LogLevel;

    .line 278
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogLevelCounts:Ljava/util/Map;

    invoke-interface {p1}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 279
    .local v0, "groupLevelCount":[I
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDefaultLogLevelCounts:[I

    invoke-virtual {p2}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-gtz v1, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    .line 280
    invoke-virtual {p2}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v1

    aget v1, v0, v1

    if-gtz v1, :cond_2

    .line 281
    :cond_1
    invoke-interface {p1}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToLogcat()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 279
    :goto_0
    return v1
.end method

.method public blacklist isProtoEnabled()Z
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mTracingInstances:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V
    .locals 2
    .param p1, "logLevel"    # Lcom/android/internal/protolog/common/LogLevel;
    .param p2, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p3, "messageHash"    # J
    .param p5, "paramsMask"    # I
    .param p6, "args"    # [Ljava/lang/Object;

    .line 204
    new-instance v0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p4, p5, v1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;-><init>(JILcom/android/internal/protolog/PerfettoProtoLogImpl-IA;)V

    invoke-direct {p0, p1, p2, v0, p6}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;)V

    .line 205
    return-void
.end method

.method public varargs blacklist log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "logLevel"    # Lcom/android/internal/protolog/common/LogLevel;
    .param p2, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p3, "messageString"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 209
    new-instance v0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;-><init>(Ljava/lang/String;Lcom/android/internal/protolog/PerfettoProtoLogImpl-IA;)V

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;)V

    .line 210
    return-void
.end method

.method public blacklist onShellCommand(Landroid/os/ShellCommand;)I
    .locals 9
    .param p1, "shell"    # Landroid/os/ShellCommand;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 322
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 324
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-static {}, Landroid/tracing/Flags;->clientSideProtoLogging()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 325
    const-string v1, "Command deprecated. Please use \'cmd protolog_configuration\' instead."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    return v2

    .line 329
    :cond_0
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, "cmd":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 331
    invoke-direct {p0, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->unknownCommand(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 333
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v3, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "arg":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 336
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 338
    :cond_2
    new-instance v4, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;)V

    .line 339
    .local v4, "logger":Lcom/android/internal/protolog/common/ILogger;
    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 340
    .local v7, "groups":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_3
    goto :goto_1

    :sswitch_0
    const-string/jumbo v8, "start"

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    :sswitch_1
    const-string/jumbo v6, "stop"

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :sswitch_2
    const-string v6, "disable-text"

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x3

    goto :goto_2

    :sswitch_3
    const-string v6, "enable-text"

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x2

    goto :goto_2

    :goto_1
    move v6, v2

    :goto_2
    packed-switch v6, :pswitch_data_0

    .line 353
    invoke-direct {p0, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->unknownCommand(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 350
    :pswitch_0
    invoke-virtual {p0, v7, v4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->stopLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I

    move-result v2

    return v2

    .line 347
    :pswitch_1
    invoke-virtual {p0, v7, v4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->startLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I

    move-result v2

    return v2

    .line 342
    :pswitch_2
    const-string v6, "Command not supported. Please start and stop ProtoLog tracing with Perfetto."

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 344
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x57eac4c9 -> :sswitch_3
        -0x3d842b0e -> :sswitch_2
        0x360802 -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist passToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "level"    # Lcom/android/internal/protolog/common/LogLevel;
    .param p3, "message"    # Ljava/lang/String;

    .line 217
    sget-object v0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$1;->$SwitchMap$com$android$internal$protolog$common$LogLevel:[I

    invoke-virtual {p2}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 234
    :pswitch_0
    invoke-static {p1, p3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 231
    :pswitch_1
    invoke-static {p1, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    goto :goto_0

    .line 228
    :pswitch_2
    invoke-static {p1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    goto :goto_0

    .line 225
    :pswitch_3
    invoke-static {p1, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    goto :goto_0

    .line 222
    :pswitch_4
    invoke-static {p1, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    goto :goto_0

    .line 219
    :pswitch_5
    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    nop

    .line 237
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected blacklist readyToLogToLogcat()V
    .locals 1

    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogcatReady:Z

    .line 315
    return-void
.end method

.method public blacklist startLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I
    .locals 1
    .param p1, "groups"    # [Ljava/lang/String;
    .param p2, "logger"    # Lcom/android/internal/protolog/common/ILogger;

    .line 263
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->setTextLogging(ZLcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist stopLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I
    .locals 1
    .param p1, "groups"    # [Ljava/lang/String;
    .param p2, "logger"    # Lcom/android/internal/protolog/common/ILogger;

    .line 273
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->setTextLogging(ZLcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist toggleLogcat(Z[Ljava/lang/String;)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "groups"    # [Ljava/lang/String;

    .line 248
    new-instance v0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda9;-><init>()V

    .line 249
    .local v0, "logger":Lcom/android/internal/protolog/common/ILogger;
    if-eqz p1, :cond_0

    .line 250
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->startLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->stopLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I

    .line 254
    :goto_0
    return-void
.end method

.method protected blacklist validateGroups(Lcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "logger"    # Lcom/android/internal/protolog/common/ILogger;
    .param p2, "groups"    # [Ljava/lang/String;

    .line 699
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 700
    aget-object v1, p2, v0

    .line 701
    .local v1, "group":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroups:Ljava/util/TreeMap;

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 702
    .local v2, "g":Lcom/android/internal/protolog/common/IProtoLogGroup;
    if-nez v2, :cond_0

    .line 703
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No IProtoLogGroup named "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/internal/protolog/common/ILogger;->log(Ljava/lang/String;)V

    .line 704
    const/4 v3, 0x0

    return v3

    .line 699
    .end local v1    # "group":Ljava/lang/String;
    .end local v2    # "g":Lcom/android/internal/protolog/common/IProtoLogGroup;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 707
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
