.class public final Landroid/app/PropertyInvalidatedCache$AutoCorker;
.super Ljava/lang/Object;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PropertyInvalidatedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AutoCorker"
.end annotation


# static fields
.field public static final DEFAULT_AUTO_CORK_DELAY_MS:I = 0x32


# instance fields
.field private final mAutoCorkDelayMs:I

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

.field private final mPropertyName:Ljava/lang/String;

.field private mUncorkDeadlineMs:J


# direct methods
.method static bridge synthetic -$$Nest$mhandleMessage(Landroid/app/PropertyInvalidatedCache$AutoCorker;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/PropertyInvalidatedCache$AutoCorker;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 1909
    const/16 v0, 0x32

    invoke-direct {p0, p1, v0}, Landroid/app/PropertyInvalidatedCache$AutoCorker;-><init>(Ljava/lang/String;I)V

    .line 1910
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "autoCorkDelayMs"    # I

    .line 1912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1900
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mLock:Ljava/lang/Object;

    .line 1901
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mUncorkDeadlineMs:J

    .line 1913
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->separatePermissionNotificationsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1917
    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mPropertyName:Ljava/lang/String;

    .line 1918
    iput p2, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mAutoCorkDelayMs:I

    .line 1922
    return-void

    .line 1914
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AutoCorking is unavailable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getHandlerLocked()Landroid/os/Handler;
    .locals 2

    .line 1990
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1991
    new-instance v0, Landroid/app/PropertyInvalidatedCache$AutoCorker$1;

    invoke-static {}, Landroid/app/PropertyInvalidatedCache$AutoCorker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/PropertyInvalidatedCache$AutoCorker$1;-><init>(Landroid/app/PropertyInvalidatedCache$AutoCorker;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mHandler:Landroid/os/Handler;

    .line 1998
    :cond_0
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static getLooper()Landroid/os/Looper;
    .locals 1

    .line 2006
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 1959
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1966
    :try_start_0
    iget-wide v1, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mUncorkDeadlineMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 1967
    monitor-exit v0

    return-void

    .line 1969
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1970
    .local v1, "nowMs":J
    iget-wide v3, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mUncorkDeadlineMs:J

    cmp-long v3, v3, v1

    if-lez v3, :cond_1

    .line 1971
    iget v3, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mAutoCorkDelayMs:I

    int-to-long v3, v3

    add-long/2addr v3, v1

    iput-wide v3, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mUncorkDeadlineMs:J

    .line 1977
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$AutoCorker;->getHandlerLocked()Landroid/os/Handler;

    move-result-object v3

    iget-wide v4, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mUncorkDeadlineMs:J

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 1978
    monitor-exit v0

    return-void

    .line 1983
    :cond_1
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mUncorkDeadlineMs:J

    .line 1984
    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    invoke-virtual {v3}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->uncork()V

    .line 1985
    .end local v1    # "nowMs":J
    monitor-exit v0

    .line 1986
    return-void

    .line 1985
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public autoCork()V
    .locals 7

    .line 1925
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1926
    :try_start_0
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    if-nez v1, :cond_0

    .line 1927
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mPropertyName:Ljava/lang/String;

    invoke-static {v1}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$smgetNonceHandler(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceHandler;

    move-result-object v1

    iput-object v1, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    .line 1929
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1931
    invoke-static {}, Landroid/app/PropertyInvalidatedCache$AutoCorker;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1937
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->invalidate()V

    .line 1938
    return-void

    .line 1940
    :cond_1
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1941
    :try_start_1
    iget-wide v2, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mUncorkDeadlineMs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x0

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1947
    .local v0, "alreadyQueued":Z
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget v5, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mAutoCorkDelayMs:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mUncorkDeadlineMs:J

    .line 1948
    if-nez v0, :cond_3

    .line 1949
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$AutoCorker;->getHandlerLocked()Landroid/os/Handler;

    move-result-object v3

    iget-wide v4, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mUncorkDeadlineMs:J

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 1950
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    invoke-virtual {v2}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->cork()V

    goto :goto_1

    .line 1953
    :cond_3
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    invoke-virtual {v2}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->invalidate()V

    .line 1955
    .end local v0    # "alreadyQueued":Z
    :goto_1
    monitor-exit v1

    .line 1956
    return-void

    .line 1955
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1929
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
