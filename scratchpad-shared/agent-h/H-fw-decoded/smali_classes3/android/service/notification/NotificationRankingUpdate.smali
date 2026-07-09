.class public Landroid/service/notification/NotificationRankingUpdate;
.super Ljava/lang/Object;
.source "NotificationRankingUpdate.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/NotificationRankingUpdate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

.field private blacklist mRankingMapFd:Landroid/os/SharedMemory;

.field private final blacklist mSharedMemoryName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 250
    new-instance v0, Landroid/service/notification/NotificationRankingUpdate$1;

    invoke-direct {v0}, Landroid/service/notification/NotificationRankingUpdate$1;-><init>()V

    sput-object v0, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    .line 47
    const-string v1, "NotificationRankingUpdatedSharedMemory"

    iput-object v1, p0, Landroid/service/notification/NotificationRankingUpdate;->mSharedMemoryName:Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->rankingUpdateAshmem()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 62
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 63
    .local v1, "mapParcel":Landroid/os/Parcel;
    const/4 v2, 0x0

    .line 67
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-class v4, Landroid/os/SharedMemory;

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/SharedMemory;

    iput-object v3, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v3

    .line 72
    .local v3, "smartActionsBundle":Landroid/os/Bundle;
    iget-object v4, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    if-nez v4, :cond_1

    .line 73
    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 96
    if-eqz v2, :cond_0

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    if-eqz v0, :cond_0

    .line 97
    invoke-static {v2}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 98
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    .line 74
    :cond_0
    return-void

    .line 77
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->mapReadOnly()Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v2, v0

    .line 78
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 79
    .local v0, "payload":[B
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 80
    array-length v4, v0

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 81
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 83
    nop

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-class v5, Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 84
    invoke-virtual {v1, v4, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/NotificationListenerService$RankingMap;

    iput-object v4, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 88
    invoke-direct {p0, v3}, Landroid/service/notification/NotificationRankingUpdate;->addSmartActionsFromBundleToRankingMap(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    .end local v0    # "payload":[B
    .end local v3    # "smartActionsBundle":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 96
    if-eqz v2, :cond_2

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    if-eqz v0, :cond_2

    .line 97
    invoke-static {v2}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 98
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    .line 101
    .end local v1    # "mapParcel":Landroid/os/Parcel;
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    :cond_2
    goto :goto_1

    .line 95
    .restart local v1    # "mapParcel":Landroid/os/Parcel;
    .restart local v2    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Landroid/system/ErrnoException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v1    # "mapParcel":Landroid/os/Parcel;
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    .end local p0    # "this":Landroid/service/notification/NotificationRankingUpdate;
    .end local p1    # "in":Landroid/os/Parcel;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    .end local v0    # "e":Landroid/system/ErrnoException;
    .restart local v1    # "mapParcel":Landroid/os/Parcel;
    .restart local v2    # "buffer":Ljava/nio/ByteBuffer;
    .restart local p0    # "this":Landroid/service/notification/NotificationRankingUpdate;
    .restart local p1    # "in":Landroid/os/Parcel;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 96
    if-eqz v2, :cond_3

    iget-object v3, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    if-eqz v3, :cond_3

    .line 97
    invoke-static {v2}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 98
    iget-object v3, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    invoke-virtual {v3}, Landroid/os/SharedMemory;->close()V

    .line 100
    :cond_3
    throw v0

    .line 102
    .end local v1    # "mapParcel":Landroid/os/Parcel;
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/NotificationListenerService$RankingMap;

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 105
    :goto_1
    return-void
.end method

.method public constructor blacklist <init>([Landroid/service/notification/NotificationListenerService$Ranking;)V
    .locals 1
    .param p1, "rankings"    # [Landroid/service/notification/NotificationListenerService$Ranking;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    .line 47
    const-string v0, "NotificationRankingUpdatedSharedMemory"

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mSharedMemoryName:Ljava/lang/String;

    .line 53
    new-instance v0, Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-direct {v0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap;-><init>([Landroid/service/notification/NotificationListenerService$Ranking;)V

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 54
    return-void
.end method

.method private blacklist addSmartActionsFromBundleToRankingMap(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "smartActionsBundle"    # Landroid/os/Bundle;

    .line 115
    if-nez p1, :cond_0

    .line 116
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "rankingMapKeys":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 121
    aget-object v2, v0, v1

    .line 122
    .local v2, "key":Ljava/lang/String;
    const-class v3, Landroid/app/Notification$Action;

    .line 123
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v3

    .line 125
    .local v3, "smartActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Notification$Action;>;"
    iget-object v4, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v4, v2}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRawRankingObject(Ljava/lang/String;)Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v4

    .line 126
    .local v4, "ranking":Landroid/service/notification/NotificationListenerService$Ranking;
    invoke-virtual {v4, v3}, Landroid/service/notification/NotificationListenerService$Ranking;->setSmartActions(Ljava/util/ArrayList;)V

    .line 120
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "smartActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Notification$Action;>;"
    .end local v4    # "ranking":Landroid/service/notification/NotificationListenerService$Ranking;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v1    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 160
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 161
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 163
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/service/notification/NotificationRankingUpdate;

    .line 164
    .local v0, "other":Landroid/service/notification/NotificationRankingUpdate;
    iget-object v1, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v2, v0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v1, v2}, Landroid/service/notification/NotificationListenerService$RankingMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 161
    .end local v0    # "other":Landroid/service/notification/NotificationRankingUpdate;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRankingMap()Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 1

    .line 144
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object v0
.end method

.method public final blacklist isFdNotNullAndClosed()Z
    .locals 2

    .line 137
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->getFd()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 10
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 172
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->rankingUpdateAshmem()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 174
    .local v0, "mapParcel":Landroid/os/Parcel;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v1, "marshalableRankings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/NotificationListenerService$Ranking;>;"
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 180
    .local v2, "smartActionsBundle":Landroid/os/Bundle;
    iget-object v3, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v3}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "rankingMapKeys":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 182
    aget-object v5, v3, v4

    .line 183
    .local v5, "key":Ljava/lang/String;
    iget-object v6, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v6, v5}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRawRankingObject(Ljava/lang/String;)Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v6

    .line 189
    .local v6, "ranking":Landroid/service/notification/NotificationListenerService$Ranking;
    invoke-virtual {v6}, Landroid/service/notification/NotificationListenerService$Ranking;->getSmartActions()Ljava/util/List;

    move-result-object v7

    .line 190
    .local v7, "smartActions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 191
    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    .line 195
    :cond_0
    new-instance v8, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v8}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    .line 197
    .local v8, "rankingCopy":Landroid/service/notification/NotificationListenerService$Ranking;
    invoke-virtual {v8, v6}, Landroid/service/notification/NotificationListenerService$Ranking;->populate(Landroid/service/notification/NotificationListenerService$Ranking;)V

    .line 198
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/service/notification/NotificationListenerService$Ranking;->setSmartActions(Ljava/util/ArrayList;)V

    .line 199
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "ranking":Landroid/service/notification/NotificationListenerService$Ranking;
    .end local v7    # "smartActions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    .end local v8    # "rankingCopy":Landroid/service/notification/NotificationListenerService$Ranking;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 203
    .end local v4    # "i":I
    :cond_1
    new-instance v4, Landroid/service/notification/NotificationListenerService$RankingMap;

    const/4 v5, 0x0

    new-array v6, v5, [Landroid/service/notification/NotificationListenerService$Ranking;

    .line 205
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v4, v6}, Landroid/service/notification/NotificationListenerService$RankingMap;-><init>([Landroid/service/notification/NotificationListenerService$Ranking;)V

    .line 209
    .local v4, "marshalableRankingMap":Landroid/service/notification/NotificationListenerService$RankingMap;
    const/4 v6, 0x0

    .line 213
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {v0, v4, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 214
    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v7

    .line 217
    .local v7, "mapSize":I
    const-string v8, "NotificationRankingUpdatedSharedMemory"

    invoke-static {v8, v7}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object v8

    iput-object v8, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    .line 220
    iget-object v8, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    invoke-virtual {v8}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v8

    move-object v6, v8

    .line 222
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v8

    invoke-virtual {v6, v8, v5, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 224
    iget-object v5, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    sget v8, Landroid/system/OsConstants;->PROT_READ:I

    invoke-virtual {v5, v8}, Landroid/os/SharedMemory;->setProtect(I)Z

    .line 226
    iget-object v5, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    invoke-virtual {p1, v5, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 228
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    .end local v7    # "mapSize":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 237
    if-eqz v6, :cond_2

    iget-object v5, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    if-eqz v5, :cond_2

    .line 238
    invoke-static {v6}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 239
    iget-object v5, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    invoke-virtual {v5}, Landroid/os/SharedMemory;->close()V

    .line 242
    .end local v0    # "mapParcel":Landroid/os/Parcel;
    .end local v1    # "marshalableRankings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/NotificationListenerService$Ranking;>;"
    .end local v2    # "smartActionsBundle":Landroid/os/Bundle;
    .end local v3    # "rankingMapKeys":[Ljava/lang/String;
    .end local v4    # "marshalableRankingMap":Landroid/service/notification/NotificationListenerService$RankingMap;
    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    :cond_2
    goto :goto_2

    .line 234
    .restart local v0    # "mapParcel":Landroid/os/Parcel;
    .restart local v1    # "marshalableRankings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/NotificationListenerService$Ranking;>;"
    .restart local v2    # "smartActionsBundle":Landroid/os/Bundle;
    .restart local v3    # "rankingMapKeys":[Ljava/lang/String;
    .restart local v4    # "marshalableRankingMap":Landroid/service/notification/NotificationListenerService$RankingMap;
    .restart local v6    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v5

    goto :goto_1

    .line 229
    :catch_0
    move-exception v5

    .line 232
    .local v5, "e":Landroid/system/ErrnoException;
    :try_start_1
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "mapParcel":Landroid/os/Parcel;
    .end local v1    # "marshalableRankings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/NotificationListenerService$Ranking;>;"
    .end local v2    # "smartActionsBundle":Landroid/os/Bundle;
    .end local v3    # "rankingMapKeys":[Ljava/lang/String;
    .end local v4    # "marshalableRankingMap":Landroid/service/notification/NotificationListenerService$RankingMap;
    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    .end local p0    # "this":Landroid/service/notification/NotificationRankingUpdate;
    .end local p1    # "out":Landroid/os/Parcel;
    .end local p2    # "flags":I
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    .end local v5    # "e":Landroid/system/ErrnoException;
    .restart local v0    # "mapParcel":Landroid/os/Parcel;
    .restart local v1    # "marshalableRankings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/NotificationListenerService$Ranking;>;"
    .restart local v2    # "smartActionsBundle":Landroid/os/Bundle;
    .restart local v3    # "rankingMapKeys":[Ljava/lang/String;
    .restart local v4    # "marshalableRankingMap":Landroid/service/notification/NotificationListenerService$RankingMap;
    .restart local v6    # "buffer":Ljava/nio/ByteBuffer;
    .restart local p0    # "this":Landroid/service/notification/NotificationRankingUpdate;
    .restart local p1    # "out":Landroid/os/Parcel;
    .restart local p2    # "flags":I
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 237
    if-eqz v6, :cond_3

    iget-object v7, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    if-eqz v7, :cond_3

    .line 238
    invoke-static {v6}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 239
    iget-object v7, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    invoke-virtual {v7}, Landroid/os/SharedMemory;->close()V

    .line 241
    :cond_3
    throw v5

    .line 243
    .end local v0    # "mapParcel":Landroid/os/Parcel;
    .end local v1    # "marshalableRankings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/NotificationListenerService$Ranking;>;"
    .end local v2    # "smartActionsBundle":Landroid/os/Bundle;
    .end local v3    # "rankingMapKeys":[Ljava/lang/String;
    .end local v4    # "marshalableRankingMap":Landroid/service/notification/NotificationListenerService$RankingMap;
    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    :cond_4
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 245
    :goto_2
    return-void
.end method
