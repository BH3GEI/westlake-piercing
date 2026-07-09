.class public Landroid/os/DdmSyncStageUpdater;
.super Ljava/lang/Object;
.source "DdmSyncStageUpdater.java"


# static fields
.field private static final blacklist CHUNK_STAGE:I

.field private static final blacklist TAG:Ljava/lang/String; = "DdmSyncStageUpdater"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 36
    const-string v0, "STAG"

    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/os/DdmSyncStageUpdater;->CHUNK_STAGE:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist next(Landroid/os/DdmSyncState$Stage;)V
    .locals 4
    .param p1, "stage"    # Landroid/os/DdmSyncState$Stage;

    monitor-enter p0

    .line 50
    :try_start_0
    invoke-static {p1}, Landroid/os/DdmSyncState;->next(Landroid/os/DdmSyncState$Stage;)V

    .line 53
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 54
    .local v0, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Landroid/os/DdmSyncState$Stage;->toInt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 55
    new-instance v1, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v2, Landroid/os/DdmSyncStageUpdater;->CHUNK_STAGE:I

    invoke-direct {v1, v2, v0}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(ILjava/nio/ByteBuffer;)V

    .line 56
    .local v1, "stagChunk":Lorg/apache/harmony/dalvik/ddmc/Chunk;
    invoke-static {v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->sendChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .end local v0    # "data":Ljava/nio/ByteBuffer;
    .end local v1    # "stagChunk":Lorg/apache/harmony/dalvik/ddmc/Chunk;
    goto :goto_0

    .line 49
    .end local p0    # "this":Landroid/os/DdmSyncStageUpdater;
    .end local p1    # "stage":Landroid/os/DdmSyncState$Stage;
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 57
    .restart local p1    # "stage":Landroid/os/DdmSyncState$Stage;
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "DdmSyncStageUpdater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to go to next stage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-void

    .line 49
    .end local p1    # "stage":Landroid/os/DdmSyncState$Stage;
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
