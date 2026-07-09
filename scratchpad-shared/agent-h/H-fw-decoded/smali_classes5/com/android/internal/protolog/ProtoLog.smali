.class public Lcom/android/internal/protolog/ProtoLog;
.super Ljava/lang/Object;
.source "ProtoLog.java"


# static fields
.field public static blacklist REQUIRE_PROTOLOGTOOL:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static blacklist sDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

.field private static final blacklist sInitLock:Ljava/lang/Object;

.field private static blacklist sProtoLogInstance:Lcom/android/internal/protolog/common/IProtoLog;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 56
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/protolog/ProtoLog;->REQUIRE_PROTOLOGTOOL:Z

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/protolog/ProtoLog;->sInitLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist createAndEnableNewPerfettoProtoLogImpl(Lcom/android/internal/protolog/ProtoLogDataSource;[Lcom/android/internal/protolog/common/IProtoLogGroup;)Lcom/android/internal/protolog/PerfettoProtoLogImpl;
    .locals 2
    .param p0, "datasource"    # Lcom/android/internal/protolog/ProtoLogDataSource;
    .param p1, "groups"    # [Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 106
    :try_start_0
    new-instance v0, Lcom/android/internal/protolog/UnprocessedPerfettoProtoLogImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/protolog/UnprocessedPerfettoProtoLogImpl;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource;[Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    .line 108
    .local v0, "unprocessedPerfettoProtoLogImpl":Lcom/android/internal/protolog/UnprocessedPerfettoProtoLogImpl;
    invoke-virtual {v0}, Lcom/android/internal/protolog/UnprocessedPerfettoProtoLogImpl;->enable()V
    :try_end_0
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    return-object v0

    .line 111
    .end local v0    # "unprocessedPerfettoProtoLogImpl":Lcom/android/internal/protolog/UnprocessedPerfettoProtoLogImpl;
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static varargs blacklist d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p1, "messageString"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/android/internal/protolog/common/LogLevel;->DEBUG:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/protolog/ProtoLog;->logStringMessage(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method public static varargs blacklist e(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p1, "messageString"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/android/internal/protolog/common/LogLevel;->ERROR:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/protolog/ProtoLog;->logStringMessage(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method public static declared-synchronized blacklist getSharedSingleInstanceDataSource()Lcom/android/internal/protolog/ProtoLogDataSource;
    .locals 3

    const-class v0, Lcom/android/internal/protolog/ProtoLog;

    monitor-enter v0

    .line 226
    :try_start_0
    sget-object v1, Lcom/android/internal/protolog/ProtoLog;->sDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    if-nez v1, :cond_0

    .line 227
    sget-object v1, Landroid/tracing/perfetto/InitArguments;->DEFAULTS:Landroid/tracing/perfetto/InitArguments;

    invoke-static {v1}, Landroid/tracing/perfetto/Producer;->init(Landroid/tracing/perfetto/InitArguments;)V

    .line 228
    new-instance v1, Lcom/android/internal/protolog/ProtoLogDataSource;

    invoke-direct {v1}, Lcom/android/internal/protolog/ProtoLogDataSource;-><init>()V

    sput-object v1, Lcom/android/internal/protolog/ProtoLog;->sDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    .line 229
    new-instance v1, Landroid/tracing/perfetto/DataSourceParams$Builder;

    invoke-direct {v1}, Landroid/tracing/perfetto/DataSourceParams$Builder;-><init>()V

    .line 231
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/tracing/perfetto/DataSourceParams$Builder;->setBufferExhaustedPolicy(I)Landroid/tracing/perfetto/DataSourceParams$Builder;

    move-result-object v1

    .line 234
    invoke-virtual {v1}, Landroid/tracing/perfetto/DataSourceParams$Builder;->build()Landroid/tracing/perfetto/DataSourceParams;

    move-result-object v1

    .line 237
    .local v1, "params":Landroid/tracing/perfetto/DataSourceParams;
    sget-object v2, Lcom/android/internal/protolog/ProtoLog;->sDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    invoke-virtual {v2, v1}, Lcom/android/internal/protolog/ProtoLogDataSource;->register(Landroid/tracing/perfetto/DataSourceParams;)V

    .line 240
    .end local v1    # "params":Landroid/tracing/perfetto/DataSourceParams;
    :cond_0
    sget-object v1, Lcom/android/internal/protolog/ProtoLog;->sDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 225
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static blacklist getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;
    .locals 1

    .line 214
    sget-object v0, Lcom/android/internal/protolog/ProtoLog;->sProtoLogInstance:Lcom/android/internal/protolog/common/IProtoLog;

    return-object v0
.end method

.method public static varargs blacklist i(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p1, "messageString"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/android/internal/protolog/common/LogLevel;->INFO:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/protolog/ProtoLog;->logStringMessage(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method public static varargs blacklist init([Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .locals 1
    .param p0, "groups"    # [Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 76
    invoke-static {}, Landroid/tracing/Flags;->perfettoProtologTracing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {p0}, Lcom/android/internal/protolog/ProtoLog;->initializePerfettoProtoLog([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    goto :goto_0

    .line 79
    :cond_0
    new-instance v0, Lcom/android/internal/protolog/LogcatOnlyProtoLogImpl;

    invoke-direct {v0}, Lcom/android/internal/protolog/LogcatOnlyProtoLogImpl;-><init>()V

    sput-object v0, Lcom/android/internal/protolog/ProtoLog;->sProtoLogInstance:Lcom/android/internal/protolog/common/IProtoLog;

    .line 81
    :goto_0
    return-void
.end method

.method private static varargs blacklist initializePerfettoProtoLog([Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .locals 5
    .param p0, "groups"    # [Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 84
    invoke-static {}, Lcom/android/internal/protolog/ProtoLog;->getSharedSingleInstanceDataSource()Lcom/android/internal/protolog/ProtoLogDataSource;

    move-result-object v0

    .line 86
    .local v0, "datasource":Lcom/android/internal/protolog/ProtoLogDataSource;
    sget-object v1, Lcom/android/internal/protolog/ProtoLog;->sInitLock:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 88
    .local v2, "allGroups":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/internal/protolog/common/IProtoLogGroup;>;"
    sget-object v3, Lcom/android/internal/protolog/ProtoLog;->sProtoLogInstance:Lcom/android/internal/protolog/common/IProtoLog;

    .line 89
    .local v3, "previousProtoLogImpl":Lcom/android/internal/protolog/common/IProtoLog;
    if-eqz v3, :cond_0

    .line 91
    invoke-interface {v3}, Lcom/android/internal/protolog/common/IProtoLog;->getRegisteredGroups()Ljava/util/List;

    move-result-object v4

    .line 92
    .local v4, "alreadyRegisteredGroups":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/protolog/common/IProtoLogGroup;>;"
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 95
    .end local v4    # "alreadyRegisteredGroups":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/protolog/common/IProtoLogGroup;>;"
    :cond_0
    const/4 v4, 0x0

    new-array v4, v4, [Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 96
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 95
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLog;->createAndEnableNewPerfettoProtoLogImpl(Lcom/android/internal/protolog/ProtoLogDataSource;[Lcom/android/internal/protolog/common/IProtoLogGroup;)Lcom/android/internal/protolog/PerfettoProtoLogImpl;

    move-result-object v4

    sput-object v4, Lcom/android/internal/protolog/ProtoLog;->sProtoLogInstance:Lcom/android/internal/protolog/common/IProtoLog;

    .line 97
    instance-of v4, v3, Lcom/android/internal/protolog/PerfettoProtoLogImpl;

    if-eqz v4, :cond_1

    .line 98
    move-object v4, v3

    check-cast v4, Lcom/android/internal/protolog/PerfettoProtoLogImpl;

    invoke-virtual {v4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->disable()V

    .line 100
    .end local v2    # "allGroups":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/internal/protolog/common/IProtoLogGroup;>;"
    .end local v3    # "previousProtoLogImpl":Lcom/android/internal/protolog/common/IProtoLog;
    :cond_1
    monitor-exit v1

    .line 101
    return-void

    .line 100
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static blacklist isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z
    .locals 1
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p1, "level"    # Lcom/android/internal/protolog/common/LogLevel;

    .line 206
    sget-object v0, Lcom/android/internal/protolog/ProtoLog;->sProtoLogInstance:Lcom/android/internal/protolog/common/IProtoLog;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/protolog/common/IProtoLog;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    return v0
.end method

.method private static varargs blacklist logStringMessage(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "logLevel"    # Lcom/android/internal/protolog/common/LogLevel;
    .param p1, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p2, "stringMessage"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/android/internal/protolog/ProtoLog;->sProtoLogInstance:Lcom/android/internal/protolog/common/IProtoLog;

    if-eqz v0, :cond_1

    .line 250
    sget-object v0, Lcom/android/internal/protolog/ProtoLog;->sProtoLogInstance:Lcom/android/internal/protolog/common/IProtoLog;

    invoke-interface {v0, p1, p0}, Lcom/android/internal/protolog/common/IProtoLog;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    sget-object v0, Lcom/android/internal/protolog/ProtoLog;->sProtoLogInstance:Lcom/android/internal/protolog/common/IProtoLog;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/internal/protolog/common/IProtoLog;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    :cond_0
    return-void

    .line 246
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to use ProtoLog before it is initialized in this process."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs blacklist v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p1, "messageString"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/android/internal/protolog/common/LogLevel;->VERBOSE:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/protolog/ProtoLog;->logStringMessage(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method public static varargs blacklist w(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p1, "messageString"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/android/internal/protolog/common/LogLevel;->WARN:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/protolog/ProtoLog;->logStringMessage(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    return-void
.end method

.method public static varargs blacklist wtf(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p1, "messageString"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/android/internal/protolog/common/LogLevel;->WTF:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/protolog/ProtoLog;->logStringMessage(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    return-void
.end method
