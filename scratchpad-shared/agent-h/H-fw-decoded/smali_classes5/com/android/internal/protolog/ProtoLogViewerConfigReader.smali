.class public Lcom/android/internal/protolog/ProtoLogViewerConfigReader;
.super Ljava/lang/Object;
.source "ProtoLogViewerConfigReader.java"


# instance fields
.field private final blacklist mGroupHashes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mLogMessageMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mViewerConfigInputStreamProvider:Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;)V
    .locals 1
    .param p1, "viewerConfigInputStreamProvider"    # Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mGroupHashes:Ljava/util/Map;

    .line 29
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mLogMessageMap:Landroid/util/LongSparseArray;

    .line 34
    iput-object p1, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mViewerConfigInputStreamProvider:Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;

    .line 35
    return-void
.end method

.method static synthetic blacklist lambda$loadViewerConfig$0(Ljava/lang/String;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;

    .line 54
    return-void
.end method

.method static synthetic blacklist lambda$unloadViewerConfig$1(Ljava/lang/String;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;

    .line 82
    return-void
.end method

.method private blacklist loadGroupId(Ljava/lang/String;)J
    .locals 10
    .param p1, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mViewerConfigInputStreamProvider:Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;

    invoke-interface {v0}, Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;->getInputStream()Lcom/android/internal/protolog/AutoClosableProtoInputStream;

    move-result-object v0

    .line 188
    .local v0, "pisWrapper":Lcom/android/internal/protolog/AutoClosableProtoInputStream;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->get()Landroid/util/proto/ProtoInputStream;

    move-result-object v1

    .line 190
    .local v1, "pis":Landroid/util/proto/ProtoInputStream;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 191
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 192
    const-wide v4, 0x20b00000002L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 194
    .local v4, "inMessageToken":J
    const-wide/16 v6, 0x0

    .line 195
    .local v6, "groupId":J
    const/4 v2, 0x0

    .line 196
    .local v2, "groupName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v8

    if-eq v8, v3, :cond_1

    .line 197
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto :goto_2

    .line 202
    :pswitch_0
    const-wide v8, 0x10900000002L

    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .end local v2    # "groupName":Ljava/lang/String;
    .local v8, "groupName":Ljava/lang/String;
    goto :goto_2

    .line 199
    .end local v8    # "groupName":Ljava/lang/String;
    .restart local v2    # "groupName":Ljava/lang/String;
    :pswitch_1
    const-wide v8, 0x10d00000001L

    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v8

    int-to-long v6, v8

    .line 200
    nop

    .line 203
    :goto_2
    goto :goto_1

    .line 207
    :cond_1
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    .line 208
    nop

    .line 214
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->close()V

    .line 208
    :cond_2
    return-wide v6

    .line 211
    :cond_3
    :try_start_1
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    .end local v2    # "groupName":Ljava/lang/String;
    .end local v4    # "inMessageToken":J
    .end local v6    # "groupId":J
    goto :goto_0

    .line 214
    .end local v1    # "pis":Landroid/util/proto/ProtoInputStream;
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->close()V

    .line 216
    .end local v0    # "pisWrapper":Lcom/android/internal/protolog/AutoClosableProtoInputStream;
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found in viewer config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    .restart local v0    # "pisWrapper":Lcom/android/internal/protolog/AutoClosableProtoInputStream;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_6

    :try_start_2
    invoke-virtual {v0}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist loadViewerConfigMappingForGroup(Ljava/lang/String;)Ljava/util/Map;
    .locals 14
    .param p1, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->loadGroupId(Ljava/lang/String;)J

    move-result-wide v0

    .line 138
    .local v0, "targetGroupId":J
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 139
    .local v2, "hashesForGroup":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mViewerConfigInputStreamProvider:Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;

    invoke-interface {v3}, Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;->getInputStream()Lcom/android/internal/protolog/AutoClosableProtoInputStream;

    move-result-object v3

    .line 140
    .local v3, "pisWrapper":Lcom/android/internal/protolog/AutoClosableProtoInputStream;
    :try_start_0
    invoke-virtual {v3}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->get()Landroid/util/proto/ProtoInputStream;

    move-result-object v4

    .line 141
    .local v4, "pis":Landroid/util/proto/ProtoInputStream;
    :cond_0
    :goto_0
    invoke-virtual {v4}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    .line 142
    invoke-virtual {v4}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    .line 143
    const-wide v7, 0x20b00000001L

    invoke-virtual {v4, v7, v8}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v7

    .line 145
    .local v7, "inMessageToken":J
    const-wide/16 v9, 0x0

    .line 146
    .local v9, "messageId":J
    const/4 v5, 0x0

    .line 147
    .local v5, "message":Ljava/lang/String;
    const/4 v11, 0x0

    .line 148
    .local v11, "groupId":I
    :goto_1
    invoke-virtual {v4}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v12

    if-eq v12, v6, :cond_1

    .line 149
    invoke-virtual {v4}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 157
    :pswitch_1
    const-wide v12, 0x10d00000004L

    invoke-virtual {v4, v12, v13}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v12

    move v11, v12

    .end local v11    # "groupId":I
    .local v12, "groupId":I
    goto :goto_2

    .line 154
    .end local v12    # "groupId":I
    .restart local v11    # "groupId":I
    :pswitch_2
    const-wide v12, 0x10900000002L

    invoke-virtual {v4, v12, v13}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v12

    .line 155
    .end local v5    # "message":Ljava/lang/String;
    .local v12, "message":Ljava/lang/String;
    move-object v5, v12

    goto :goto_2

    .line 151
    .end local v12    # "message":Ljava/lang/String;
    .restart local v5    # "message":Ljava/lang/String;
    :pswitch_3
    const-wide v12, 0x10600000001L

    invoke-virtual {v4, v12, v13}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v12

    .line 152
    .end local v9    # "messageId":J
    .local v12, "messageId":J
    move-wide v9, v12

    .line 158
    .end local v12    # "messageId":J
    .restart local v9    # "messageId":J
    :goto_2
    goto :goto_1

    .line 162
    :cond_1
    if-eqz v11, :cond_5

    .line 166
    const-wide/16 v12, 0x0

    cmp-long v6, v9, v12

    if-eqz v6, :cond_4

    .line 170
    if-eqz v5, :cond_3

    .line 174
    int-to-long v12, v11

    cmp-long v6, v12, v0

    if-nez v6, :cond_2

    .line 175
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_2
    invoke-virtual {v4, v7, v8}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 179
    .end local v5    # "message":Ljava/lang/String;
    .end local v7    # "inMessageToken":J
    .end local v9    # "messageId":J
    .end local v11    # "groupId":I
    goto :goto_0

    .line 171
    .restart local v5    # "message":Ljava/lang/String;
    .restart local v7    # "inMessageToken":J
    .restart local v9    # "messageId":J
    .restart local v11    # "groupId":I
    :cond_3
    new-instance v6, Ljava/io/IOException;

    const-string v12, "Failed to get message string"

    invoke-direct {v6, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "targetGroupId":J
    .end local v2    # "hashesForGroup":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v3    # "pisWrapper":Lcom/android/internal/protolog/AutoClosableProtoInputStream;
    .end local p0    # "this":Lcom/android/internal/protolog/ProtoLogViewerConfigReader;
    .end local p1    # "group":Ljava/lang/String;
    throw v6

    .line 167
    .restart local v0    # "targetGroupId":J
    .restart local v2    # "hashesForGroup":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v3    # "pisWrapper":Lcom/android/internal/protolog/AutoClosableProtoInputStream;
    .restart local p0    # "this":Lcom/android/internal/protolog/ProtoLogViewerConfigReader;
    .restart local p1    # "group":Ljava/lang/String;
    :cond_4
    new-instance v6, Ljava/io/IOException;

    const-string v12, "Failed to get message id"

    invoke-direct {v6, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "targetGroupId":J
    .end local v2    # "hashesForGroup":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v3    # "pisWrapper":Lcom/android/internal/protolog/AutoClosableProtoInputStream;
    .end local p0    # "this":Lcom/android/internal/protolog/ProtoLogViewerConfigReader;
    .end local p1    # "group":Ljava/lang/String;
    throw v6

    .line 163
    .restart local v0    # "targetGroupId":J
    .restart local v2    # "hashesForGroup":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v3    # "pisWrapper":Lcom/android/internal/protolog/AutoClosableProtoInputStream;
    .restart local p0    # "this":Lcom/android/internal/protolog/ProtoLogViewerConfigReader;
    .restart local p1    # "group":Ljava/lang/String;
    :cond_5
    new-instance v6, Ljava/io/IOException;

    const-string v12, "Failed to get group id"

    invoke-direct {v6, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "targetGroupId":J
    .end local v2    # "hashesForGroup":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v3    # "pisWrapper":Lcom/android/internal/protolog/AutoClosableProtoInputStream;
    .end local p0    # "this":Lcom/android/internal/protolog/ProtoLogViewerConfigReader;
    .end local p1    # "group":Ljava/lang/String;
    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    .end local v4    # "pis":Landroid/util/proto/ProtoInputStream;
    .end local v5    # "message":Ljava/lang/String;
    .end local v7    # "inMessageToken":J
    .end local v9    # "messageId":J
    .end local v11    # "groupId":I
    .restart local v0    # "targetGroupId":J
    .restart local v2    # "hashesForGroup":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v3    # "pisWrapper":Lcom/android/internal/protolog/AutoClosableProtoInputStream;
    .restart local p0    # "this":Lcom/android/internal/protolog/ProtoLogViewerConfigReader;
    .restart local p1    # "group":Ljava/lang/String;
    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->close()V

    .line 183
    .end local v3    # "pisWrapper":Lcom/android/internal/protolog/AutoClosableProtoInputStream;
    :cond_7
    return-object v2

    .line 139
    .restart local v3    # "pisWrapper":Lcom/android/internal/protolog/AutoClosableProtoInputStream;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_8

    :try_start_1
    invoke-virtual {v3}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_3
    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public blacklist getViewerString(J)Ljava/lang/String;
    .locals 1
    .param p1, "messageHash"    # J

    .line 43
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mLogMessageMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized blacklist loadViewerConfig([Ljava/lang/String;)V
    .locals 1
    .param p1, "groups"    # [Ljava/lang/String;

    monitor-enter p0

    .line 54
    :try_start_0
    new-instance v0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->loadViewerConfig([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 53
    .end local p0    # "this":Lcom/android/internal/protolog/ProtoLogViewerConfigReader;
    .end local p1    # "groups":[Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist loadViewerConfig([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)V
    .locals 10
    .param p1, "groups"    # [Ljava/lang/String;
    .param p2, "logger"    # Lcom/android/internal/protolog/common/ILogger;

    monitor-enter p0

    .line 61
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 62
    .local v2, "group":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mGroupHashes:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 63
    goto :goto_2

    .line 67
    :cond_0
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->loadViewerConfigMappingForGroup(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 68
    .local v3, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mGroupHashes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 70
    .local v5, "key":Ljava/lang/Long;
    iget-object v6, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mLogMessageMap:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 71
    .end local v5    # "key":Ljava/lang/Long;
    goto :goto_1

    .line 73
    .end local p0    # "this":Lcom/android/internal/protolog/ProtoLogViewerConfigReader;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loaded "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mLogMessageMap:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " log definitions"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/android/internal/protolog/common/ILogger;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .end local v3    # "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    goto :goto_2

    .line 74
    :catch_0
    move-exception v3

    .line 75
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to load log definitions: IOException while processing viewer config"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/android/internal/protolog/common/ILogger;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    .end local v2    # "group":Ljava/lang/String;
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :cond_2
    monitor-exit p0

    return-void

    .line 60
    .end local p1    # "groups":[Ljava/lang/String;
    .end local p2    # "logger":Lcom/android/internal/protolog/common/ILogger;
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public blacklist messageHashIsAvailableInFile(J)Z
    .locals 9
    .param p1, "messageHash"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mViewerConfigInputStreamProvider:Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;

    invoke-interface {v0}, Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;->getInputStream()Lcom/android/internal/protolog/AutoClosableProtoInputStream;

    move-result-object v0

    .line 112
    .local v0, "pisWrapper":Lcom/android/internal/protolog/AutoClosableProtoInputStream;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->get()Landroid/util/proto/ProtoInputStream;

    move-result-object v1

    .line 113
    .local v1, "pis":Landroid/util/proto/ProtoInputStream;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 114
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 115
    const-wide v5, 0x20b00000001L

    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v5

    .line 117
    .local v5, "inMessageToken":J
    :cond_1
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    if-eq v2, v3, :cond_3

    .line 118
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 119
    const-wide v7, 0x10600000001L

    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v7, p1

    if-nez v2, :cond_1

    .line 120
    nop

    .line 128
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->close()V

    .line 120
    :cond_2
    return v4

    .line 125
    :cond_3
    :try_start_1
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    .end local v5    # "inMessageToken":J
    goto :goto_0

    .line 128
    .end local v1    # "pis":Landroid/util/proto/ProtoInputStream;
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->close()V

    .line 130
    .end local v0    # "pisWrapper":Lcom/android/internal/protolog/AutoClosableProtoInputStream;
    :cond_5
    const/4 v0, 0x0

    return v0

    .line 111
    .restart local v0    # "pisWrapper":Lcom/android/internal/protolog/AutoClosableProtoInputStream;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_6

    :try_start_2
    invoke-virtual {v0}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw v1
.end method

.method public declared-synchronized blacklist unloadViewerConfig([Ljava/lang/String;)V
    .locals 1
    .param p1, "groups"    # [Ljava/lang/String;

    monitor-enter p0

    .line 82
    :try_start_0
    new-instance v0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->unloadViewerConfig([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 81
    .end local p0    # "this":Lcom/android/internal/protolog/ProtoLogViewerConfigReader;
    .end local p1    # "groups":[Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist unloadViewerConfig([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)V
    .locals 9
    .param p1, "groups"    # [Ljava/lang/String;
    .param p2, "logger"    # Lcom/android/internal/protolog/common/ILogger;

    monitor-enter p0

    .line 89
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 90
    .local v2, "group":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mGroupHashes:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 91
    goto :goto_2

    .line 94
    :cond_0
    iget-object v3, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mGroupHashes:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 95
    .local v3, "hashes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 96
    .local v5, "hash":Ljava/lang/Long;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unloading viewer config hash "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Lcom/android/internal/protolog/common/ILogger;->log(Ljava/lang/String;)V

    .line 97
    iget-object v6, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mLogMessageMap:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/util/LongSparseArray;->remove(J)V

    .line 98
    .end local v5    # "hash":Ljava/lang/Long;
    goto :goto_1

    .line 99
    .end local p0    # "this":Lcom/android/internal/protolog/ProtoLogViewerConfigReader;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mGroupHashes:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .end local v2    # "group":Ljava/lang/String;
    .end local v3    # "hashes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :cond_2
    monitor-exit p0

    return-void

    .line 88
    .end local p1    # "groups":[Ljava/lang/String;
    .end local p2    # "logger":Lcom/android/internal/protolog/common/ILogger;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
