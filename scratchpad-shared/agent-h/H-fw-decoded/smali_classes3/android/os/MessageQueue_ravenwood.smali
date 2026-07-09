.class Landroid/os/MessageQueue_ravenwood;
.super Ljava/lang/Object;
.source "MessageQueue_ravenwood.java"


# static fields
.field private static final blacklist sInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroid/os/MessageQueue_ravenwood;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sNextId:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private blacklist mDeleted:Z

.field private volatile blacklist mPendingWake:Z

.field private final blacklist mPoller:Ljava/lang/Object;

.field private volatile blacklist mPolling:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Landroid/os/MessageQueue_ravenwood;->sNextId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/os/MessageQueue_ravenwood;->sInstances:Ljava/util/Map;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/MessageQueue_ravenwood;->mDeleted:Z

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue_ravenwood;->mPoller:Ljava/lang/Object;

    return-void
.end method

.method private static blacklist getInstance(J)Landroid/os/MessageQueue_ravenwood;
    .locals 4
    .param p0, "id"    # J

    .line 44
    sget-object v0, Landroid/os/MessageQueue_ravenwood;->sInstances:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageQueue_ravenwood;

    .line 45
    .local v0, "q":Landroid/os/MessageQueue_ravenwood;
    if-eqz v0, :cond_0

    .line 48
    invoke-direct {v0}, Landroid/os/MessageQueue_ravenwood;->validate()V

    .line 49
    return-object v0

    .line 46
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MessageQueue doesn\'t exist with id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist nativeDestroy(J)V
    .locals 2
    .param p0, "ptr"    # J

    .line 60
    invoke-static {p0, p1}, Landroid/os/MessageQueue_ravenwood;->getInstance(J)Landroid/os/MessageQueue_ravenwood;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/os/MessageQueue_ravenwood;->mDeleted:Z

    .line 61
    sget-object v0, Landroid/os/MessageQueue_ravenwood;->sInstances:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public static blacklist nativeInit()J
    .locals 5

    .line 53
    sget-object v0, Landroid/os/MessageQueue_ravenwood;->sNextId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    .line 54
    .local v0, "id":J
    new-instance v2, Landroid/os/MessageQueue_ravenwood;

    invoke-direct {v2}, Landroid/os/MessageQueue_ravenwood;-><init>()V

    .line 55
    .local v2, "q":Landroid/os/MessageQueue_ravenwood;
    sget-object v3, Landroid/os/MessageQueue_ravenwood;->sInstances:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-wide v0
.end method

.method public static blacklist nativeIsPolling(J)Z
    .locals 2
    .param p0, "ptr"    # J

    .line 96
    invoke-static {p0, p1}, Landroid/os/MessageQueue_ravenwood;->getInstance(J)Landroid/os/MessageQueue_ravenwood;

    move-result-object v0

    .line 97
    .local v0, "q":Landroid/os/MessageQueue_ravenwood;
    iget-boolean v1, v0, Landroid/os/MessageQueue_ravenwood;->mPolling:Z

    return v1
.end method

.method public static blacklist nativePollOnce(Landroid/os/MessageQueue;JI)V
    .locals 5
    .param p0, "queue"    # Landroid/os/MessageQueue;
    .param p1, "ptr"    # J
    .param p3, "timeoutMillis"    # I

    .line 65
    invoke-static {p1, p2}, Landroid/os/MessageQueue_ravenwood;->getInstance(J)Landroid/os/MessageQueue_ravenwood;

    move-result-object v0

    .line 66
    .local v0, "q":Landroid/os/MessageQueue_ravenwood;
    iget-object v1, v0, Landroid/os/MessageQueue_ravenwood;->mPoller:Ljava/lang/Object;

    monitor-enter v1

    .line 67
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v0, Landroid/os/MessageQueue_ravenwood;->mPolling:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :try_start_1
    iget-boolean v2, v0, Landroid/os/MessageQueue_ravenwood;->mPendingWake:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    if-nez p3, :cond_1

    goto :goto_0

    .line 73
    :cond_1
    const/4 v2, -0x1

    if-ne p3, v2, :cond_2

    .line 74
    iget-object v2, v0, Landroid/os/MessageQueue_ravenwood;->mPoller:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 76
    :cond_2
    iget-object v2, v0, Landroid/os/MessageQueue_ravenwood;->mPoller:Ljava/lang/Object;

    int-to-long v3, p3

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :goto_0
    goto :goto_1

    .line 78
    :catch_0
    move-exception v2

    .line 79
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 82
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/os/MessageQueue_ravenwood;->mPendingWake:Z

    .line 83
    iput-boolean v2, v0, Landroid/os/MessageQueue_ravenwood;->mPolling:Z

    .line 84
    monitor-exit v1

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public static blacklist nativeSetFileDescriptorEvents(JII)V
    .locals 1
    .param p0, "ptr"    # J
    .param p2, "fd"    # I
    .param p3, "events"    # I

    .line 101
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static blacklist nativeWake(J)V
    .locals 3
    .param p0, "ptr"    # J

    .line 88
    invoke-static {p0, p1}, Landroid/os/MessageQueue_ravenwood;->getInstance(J)Landroid/os/MessageQueue_ravenwood;

    move-result-object v0

    .line 89
    .local v0, "q":Landroid/os/MessageQueue_ravenwood;
    iget-object v1, v0, Landroid/os/MessageQueue_ravenwood;->mPoller:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v0, Landroid/os/MessageQueue_ravenwood;->mPendingWake:Z

    .line 91
    iget-object v2, v0, Landroid/os/MessageQueue_ravenwood;->mPoller:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 92
    monitor-exit v1

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private blacklist validate()V
    .locals 2

    .line 37
    iget-boolean v0, p0, Landroid/os/MessageQueue_ravenwood;->mDeleted:Z

    if-nez v0, :cond_0

    .line 41
    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "MessageQueue already destroyed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
