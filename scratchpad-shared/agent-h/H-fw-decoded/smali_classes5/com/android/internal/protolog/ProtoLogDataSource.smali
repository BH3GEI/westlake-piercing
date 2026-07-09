.class public Lcom/android/internal/protolog/ProtoLogDataSource;
.super Landroid/tracing/perfetto/DataSource;
.source "ProtoLogDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;,
        Lcom/android/internal/protolog/ProtoLogDataSource$Instance;,
        Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;,
        Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;,
        Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/tracing/perfetto/DataSource<",
        "Lcom/android/internal/protolog/ProtoLogDataSource$Instance;",
        "Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;",
        "Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist DATASOURCE_NAME:Ljava/lang/String; = "android.protolog"


# instance fields
.field private final blacklist mOnFlushCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOnStartCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOnStopCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRunningInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$8VMrL8ssSIbAZtWzAISxkqwIRLg(Lcom/android/internal/protolog/ProtoLogDataSource;ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/protolog/ProtoLogDataSource;->executeOnStopCallbacks(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$9mffmZ3H5RCzKnkjpItKywhqvaw(Lcom/android/internal/protolog/ProtoLogDataSource;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/protolog/ProtoLogDataSource;->executeOnFlushCallbacks()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$UIYmd4vygAyNlpzo0qcmzUnaAs4(Lcom/android/internal/protolog/ProtoLogDataSource;ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/protolog/ProtoLogDataSource;->executeOnStartCallbacks(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 66
    const-string v0, "android.protolog"

    invoke-direct {p0, v0}, Lcom/android/internal/protolog/ProtoLogDataSource;-><init>(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "dataSourceName"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0, p1}, Landroid/tracing/perfetto/DataSource;-><init>(Ljava/lang/String;)V

    .line 56
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource;->mRunningInstances:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource;->mOnStartCallbacks:Ljava/util/Set;

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource;->mOnFlushCallbacks:Ljava/util/Set;

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource;->mOnStopCallbacks:Ljava/util/Set;

    .line 73
    return-void
.end method

.method private blacklist executeOnFlushCallbacks()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource;->mOnFlushCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 192
    .local v1, "onFlush":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 193
    .end local v1    # "onFlush":Ljava/lang/Runnable;
    goto :goto_0

    .line 194
    :cond_0
    return-void
.end method

.method private declared-synchronized blacklist executeOnStartCallbacks(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .locals 2
    .param p1, "instanceIdx"    # I
    .param p2, "config"    # Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource;->mRunningInstances:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource;->mOnStartCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;

    .line 186
    .local v1, "onStart":Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;
    invoke-interface {v1, p1, p2}, Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;->run(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    .end local v1    # "onStart":Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;
    goto :goto_0

    .line 188
    .end local p0    # "this":Lcom/android/internal/protolog/ProtoLogDataSource;
    :cond_0
    monitor-exit p0

    return-void

    .line 182
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

.method private declared-synchronized blacklist executeOnStopCallbacks(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .locals 2
    .param p1, "instanceIdx"    # I
    .param p2, "config"    # Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    monitor-enter p0

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource;->mRunningInstances:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 199
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource;->mOnStopCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;

    .line 200
    .local v1, "onStop":Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;
    invoke-interface {v1, p1, p2}, Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;->run(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    .end local v1    # "onStop":Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;
    goto :goto_0

    .line 202
    .end local p0    # "this":Lcom/android/internal/protolog/ProtoLogDataSource;
    :cond_0
    monitor-exit p0

    return-void

    .line 196
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

.method private blacklist logLevelFromInt(I)Lcom/android/internal/protolog/common/LogLevel;
    .locals 2
    .param p1, "logFromInt"    # I

    .line 345
    packed-switch p1, :pswitch_data_0

    .line 352
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unhandled log level"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :pswitch_0
    sget-object v0, Lcom/android/internal/protolog/common/LogLevel;->WTF:Lcom/android/internal/protolog/common/LogLevel;

    goto :goto_0

    .line 350
    :pswitch_1
    sget-object v0, Lcom/android/internal/protolog/common/LogLevel;->ERROR:Lcom/android/internal/protolog/common/LogLevel;

    goto :goto_0

    .line 349
    :pswitch_2
    sget-object v0, Lcom/android/internal/protolog/common/LogLevel;->WARN:Lcom/android/internal/protolog/common/LogLevel;

    goto :goto_0

    .line 348
    :pswitch_3
    sget-object v0, Lcom/android/internal/protolog/common/LogLevel;->INFO:Lcom/android/internal/protolog/common/LogLevel;

    goto :goto_0

    .line 347
    :pswitch_4
    sget-object v0, Lcom/android/internal/protolog/common/LogLevel;->VERBOSE:Lcom/android/internal/protolog/common/LogLevel;

    goto :goto_0

    .line 346
    :pswitch_5
    sget-object v0, Lcom/android/internal/protolog/common/LogLevel;->DEBUG:Lcom/android/internal/protolog/common/LogLevel;

    .line 345
    :goto_0
    return-object v0

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

.method private blacklist readProtoLogConfig(Landroid/util/proto/ProtoInputStream;)Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;
    .locals 14
    .param p1, "configStream"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    const-wide v0, 0x10b0000007eL

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 284
    .local v0, "config_token":J
    sget-object v2, Lcom/android/internal/protolog/common/LogLevel;->WTF:Lcom/android/internal/protolog/common/LogLevel;

    .line 285
    .local v2, "defaultLogFromLevel":Lcom/android/internal/protolog/common/LogLevel;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 287
    .local v3, "groupConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;>;"
    :goto_0
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    .line 288
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v4

    const-wide v6, 0x10e00000002L

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    .line 290
    :pswitch_0
    const-wide v4, 0x10e00000003L

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v4

    .line 291
    .local v4, "defaultLogFromLevelInt":I
    invoke-virtual {v2}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 292
    nop

    .line 293
    invoke-direct {p0, v4}, Lcom/android/internal/protolog/ProtoLogDataSource;->logLevelFromInt(I)Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v2

    goto :goto_2

    .line 297
    .end local v4    # "defaultLogFromLevelInt":I
    :pswitch_1
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v4

    .line 298
    .local v4, "tracingMode":I
    packed-switch v4, :pswitch_data_1

    .line 305
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Unhandled ProtoLog tracing mode type"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 302
    :pswitch_2
    sget-object v2, Lcom/android/internal/protolog/common/LogLevel;->DEBUG:Lcom/android/internal/protolog/common/LogLevel;

    .line 303
    goto :goto_2

    .line 300
    :pswitch_3
    goto :goto_2

    .line 309
    .end local v4    # "tracingMode":I
    :pswitch_4
    const-wide v8, 0x20b00000001L

    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v8

    .line 311
    .local v8, "group_overrides_token":J
    const/4 v4, 0x0

    .line 312
    .local v4, "tag":Ljava/lang/String;
    move-object v10, v2

    .line 313
    .local v10, "logFromLevel":Lcom/android/internal/protolog/common/LogLevel;
    const/4 v11, 0x0

    .line 314
    .local v11, "collectStackTrace":Z
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v12

    if-eq v12, v5, :cond_3

    .line 315
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    .line 316
    const-wide v12, 0x10900000001L

    invoke-virtual {p1, v12, v13}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v4

    .line 318
    :cond_1
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_2

    .line 319
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v12

    .line 320
    .local v12, "logFromInt":I
    invoke-direct {p0, v12}, Lcom/android/internal/protolog/ProtoLogDataSource;->logLevelFromInt(I)Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v10

    .line 322
    .end local v12    # "logFromInt":I
    :cond_2
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_0

    .line 323
    const-wide v12, 0x10800000003L

    invoke-virtual {p1, v12, v13}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v11

    goto :goto_1

    .line 327
    :cond_3
    if-eqz v4, :cond_4

    .line 332
    new-instance v5, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    invoke-direct {v5, v10, v11}, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;-><init>(Lcom/android/internal/protolog/common/LogLevel;Z)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_2

    .line 328
    :cond_4
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Failed to decode proto config. Got a group override without a group tag."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 335
    .end local v4    # "tag":Ljava/lang/String;
    .end local v8    # "group_overrides_token":J
    .end local v10    # "logFromLevel":Lcom/android/internal/protolog/common/LogLevel;
    .end local v11    # "collectStackTrace":Z
    :cond_5
    :goto_2
    goto/16 :goto_0

    .line 339
    :cond_6
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 341
    new-instance v4, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v3, v5}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;-><init>(Lcom/android/internal/protolog/common/LogLevel;Ljava/util/Map;Lcom/android/internal/protolog/ProtoLogDataSource-IA;)V

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public blacklist createIncrementalState(Landroid/tracing/perfetto/CreateIncrementalStateArgs;)Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/CreateIncrementalStateArgs<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance;",
            ">;)",
            "Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;"
        }
    .end annotation

    .line 123
    .local p1, "args":Landroid/tracing/perfetto/CreateIncrementalStateArgs;, "Landroid/tracing/perfetto/CreateIncrementalStateArgs<Lcom/android/internal/protolog/ProtoLogDataSource$Instance;>;"
    new-instance v0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;

    invoke-direct {v0}, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic blacklist createIncrementalState(Landroid/tracing/perfetto/CreateIncrementalStateArgs;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/internal/protolog/ProtoLogDataSource;->createIncrementalState(Landroid/tracing/perfetto/CreateIncrementalStateArgs;)Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist createInstance(Landroid/util/proto/ProtoInputStream;I)Landroid/tracing/perfetto/DataSourceInstance;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/protolog/ProtoLogDataSource;->createInstance(Landroid/util/proto/ProtoInputStream;I)Lcom/android/internal/protolog/ProtoLogDataSource$Instance;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createInstance(Landroid/util/proto/ProtoInputStream;I)Lcom/android/internal/protolog/ProtoLogDataSource$Instance;
    .locals 9
    .param p1, "configStream"    # Landroid/util/proto/ProtoInputStream;
    .param p2, "instanceIndex"    # I

    .line 78
    const/4 v0, 0x0

    move-object v1, v0

    .line 81
    .local v1, "config":Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 83
    :try_start_1
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v0

    const/16 v2, 0x7e

    if-ne v0, v2, :cond_1

    .line 84
    if-nez v1, :cond_0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/internal/protolog/ProtoLogDataSource;->readProtoLogConfig(Landroid/util/proto/ProtoInputStream;)Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    move-result-object v0

    move-object v1, v0

    .end local v1    # "config":Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;
    .local v0, "config":Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;
    goto :goto_1

    .line 85
    .end local v0    # "config":Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;
    .restart local v1    # "config":Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "ProtoLog config already set in loop"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "config":Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;
    .end local p0    # "this":Lcom/android/internal/protolog/ProtoLogDataSource;
    .end local p1    # "configStream":Landroid/util/proto/ProtoInputStream;
    .end local p2    # "instanceIndex":I
    throw v0
    :try_end_1
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    .restart local v1    # "config":Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;
    .restart local p0    # "this":Lcom/android/internal/protolog/ProtoLogDataSource;
    .restart local p1    # "configStream":Landroid/util/proto/ProtoInputStream;
    .restart local p2    # "instanceIndex":I
    :cond_1
    :goto_1
    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    move v4, p2

    goto :goto_3

    .line 89
    :catch_1
    move-exception v0

    .line 90
    .local v0, "e":Landroid/util/proto/WireTypeMismatchException;
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to parse ProtoLog DataSource config"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "config":Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;
    .end local p0    # "this":Lcom/android/internal/protolog/ProtoLogDataSource;
    .end local p1    # "configStream":Landroid/util/proto/ProtoInputStream;
    .end local p2    # "instanceIndex":I
    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 95
    .end local v0    # "e":Landroid/util/proto/WireTypeMismatchException;
    .restart local v1    # "config":Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;
    .restart local p0    # "this":Lcom/android/internal/protolog/ProtoLogDataSource;
    .restart local p1    # "configStream":Landroid/util/proto/ProtoInputStream;
    .restart local p2    # "instanceIndex":I
    :cond_2
    nop

    .line 97
    if-nez v1, :cond_3

    .line 99
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->-$$Nest$sfgetDEFAULT()Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    move-result-object v1

    move-object v5, v1

    goto :goto_2

    .line 97
    :cond_3
    move-object v5, v1

    .line 102
    .end local v1    # "config":Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;
    .local v5, "config":Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;
    :goto_2
    new-instance v2, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;

    new-instance v6, Lcom/android/internal/protolog/ProtoLogDataSource$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/android/internal/protolog/ProtoLogDataSource$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource;)V

    new-instance v7, Lcom/android/internal/protolog/ProtoLogDataSource$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0}, Lcom/android/internal/protolog/ProtoLogDataSource$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource;)V

    new-instance v8, Lcom/android/internal/protolog/ProtoLogDataSource$$ExternalSyntheticLambda2;

    invoke-direct {v8, p0}, Lcom/android/internal/protolog/ProtoLogDataSource$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource;)V

    move-object v3, p0

    move v4, p2

    .end local p2    # "instanceIndex":I
    .local v4, "instanceIndex":I
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;-><init>(Landroid/tracing/perfetto/DataSource;ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;Ljava/lang/Runnable;Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;)V

    return-object v2

    .line 93
    .end local v4    # "instanceIndex":I
    .end local v5    # "config":Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;
    .restart local v1    # "config":Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;
    .restart local p2    # "instanceIndex":I
    :catch_2
    move-exception v0

    move v4, p2

    .line 94
    .end local p2    # "instanceIndex":I
    .local v0, "e":Ljava/io/IOException;
    .restart local v4    # "instanceIndex":I
    :goto_3
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v2, "Failed to read ProtoLog DataSource config"

    invoke-direct {p2, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public blacklist createTlsState(Landroid/tracing/perfetto/CreateTlsStateArgs;)Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/CreateTlsStateArgs<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance;",
            ">;)",
            "Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;"
        }
    .end annotation

    .line 110
    .local p1, "args":Landroid/tracing/perfetto/CreateTlsStateArgs;, "Landroid/tracing/perfetto/CreateTlsStateArgs<Lcom/android/internal/protolog/ProtoLogDataSource$Instance;>;"
    invoke-virtual {p1}, Landroid/tracing/perfetto/CreateTlsStateArgs;->getDataSourceInstanceLocked()Landroid/tracing/perfetto/DataSourceInstance;

    move-result-object v0

    check-cast v0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;

    .line 111
    .local v0, "dsInstance":Lcom/android/internal/protolog/ProtoLogDataSource$Instance;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 113
    :try_start_0
    new-instance v2, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;

    invoke-static {}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->-$$Nest$sfgetDEFAULT()Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;Lcom/android/internal/protolog/ProtoLogDataSource-IA;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->close()V

    .line 113
    :cond_0
    return-object v2

    .line 115
    :cond_1
    :try_start_1
    new-instance v2, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->-$$Nest$fgetmConfig(Lcom/android/internal/protolog/ProtoLogDataSource$Instance;)Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;Lcom/android/internal/protolog/ProtoLogDataSource-IA;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->close()V

    .line 115
    :cond_2
    return-object v2

    .line 110
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {v0}, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v1
.end method

.method public bridge synthetic blacklist createTlsState(Landroid/tracing/perfetto/CreateTlsStateArgs;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/internal/protolog/ProtoLogDataSource;->createTlsState(Landroid/tracing/perfetto/CreateTlsStateArgs;)Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;

    move-result-object p1

    return-object p1
.end method

.method public blacklist registerOnFlushCallback(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "onFlushCallback"    # Ljava/lang/Runnable;

    .line 147
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource;->mOnFlushCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    return-void
.end method

.method public declared-synchronized blacklist registerOnStartCallback(Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;)V
    .locals 4
    .param p1, "onStartCallback"    # Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;

    monitor-enter p0

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource;->mOnStartCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource;->mRunningInstances:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 137
    .local v1, "instanceIndex":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/internal/protolog/ProtoLogDataSource;->mRunningInstances:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    .line 138
    .local v2, "config":Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p1, v3, v2}, Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;->run(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    .end local v1    # "instanceIndex":Ljava/lang/Integer;
    .end local v2    # "config":Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;
    goto :goto_0

    .line 140
    .end local p0    # "this":Lcom/android/internal/protolog/ProtoLogDataSource;
    :cond_0
    monitor-exit p0

    return-void

    .line 133
    .end local p1    # "onStartCallback":Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public blacklist registerOnStopCallback(Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;)V
    .locals 1
    .param p1, "onStopCallback"    # Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;

    .line 155
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource;->mOnStopCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method

.method public blacklist unregisterOnFlushCallback(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "onFlushCallback"    # Ljava/lang/Runnable;

    .line 171
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource;->mOnFlushCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    return-void
.end method

.method public blacklist unregisterOnStartCallback(Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;)V
    .locals 1
    .param p1, "onStartCallback"    # Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;

    .line 163
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource;->mOnStartCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    return-void
.end method

.method public blacklist unregisterOnStopCallback(Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;)V
    .locals 1
    .param p1, "onStopCallback"    # Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;

    .line 179
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource;->mOnStopCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    return-void
.end method
