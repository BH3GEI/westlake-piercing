.class public Landroid/app/PropertyInvalidatedCache$NonceWatcher;
.super Ljava/lang/Object;
.source "PropertyInvalidatedCache.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PropertyInvalidatedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NonceWatcher"
.end annotation


# instance fields
.field private final mHandler:Landroid/app/PropertyInvalidatedCache$NonceHandler;

.field private mLastSeen:J

.field private final mSem:Ljava/util/concurrent/Semaphore;


# direct methods
.method private constructor <init>(Landroid/app/PropertyInvalidatedCache$NonceHandler;)V
    .locals 2
    .param p1, "handler"    # Landroid/app/PropertyInvalidatedCache$NonceHandler;

    .line 1073
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1061
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mLastSeen:J

    .line 1065
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mSem:Ljava/util/concurrent/Semaphore;

    .line 1074
    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mHandler:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    .line 1075
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mHandler:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->registerWatcher(Ljava/util/concurrent/Semaphore;)V

    .line 1076
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/PropertyInvalidatedCache$NonceHandler;Landroid/app/PropertyInvalidatedCache-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/PropertyInvalidatedCache$NonceWatcher;-><init>(Landroid/app/PropertyInvalidatedCache$NonceHandler;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1085
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mHandler:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->unregisterWatcher(Ljava/util/concurrent/Semaphore;)V

    .line 1086
    return-void
.end method

.method public isChanged()Z
    .locals 4

    .line 1102
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mHandler:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->getNonce()J

    move-result-wide v0

    .line 1103
    .local v0, "current":J
    iget-wide v2, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mLastSeen:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 1104
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mLastSeen:J

    .line 1105
    const/4 v2, 0x1

    return v2

    .line 1107
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public lastSeen()J
    .locals 2

    .line 1093
    iget-wide v0, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mLastSeen:J

    return-wide v0
.end method

.method public waitForChange()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1118
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mSem:Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore;->acquire(I)V

    .line 1119
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public waitForChange(JLjava/util/concurrent/TimeUnit;)I
    .locals 2
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1131
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mSem:Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/util/concurrent/Semaphore;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1132
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    move-result v0

    add-int/2addr v0, v1

    return v0

    .line 1134
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public wakeUp()V
    .locals 1

    .line 1144
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1145
    return-void
.end method
