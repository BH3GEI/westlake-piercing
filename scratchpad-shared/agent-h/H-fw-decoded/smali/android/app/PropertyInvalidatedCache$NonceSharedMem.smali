.class final Landroid/app/PropertyInvalidatedCache$NonceSharedMem;
.super Landroid/app/PropertyInvalidatedCache$NonceHandler;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PropertyInvalidatedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NonceSharedMem"
.end annotation


# instance fields
.field private volatile mHandle:I

.field private final mShortName:Ljava/lang/String;

.field private volatile mStore:Landroid/app/PropertyInvalidatedCache$NonceStore;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 959
    invoke-direct {p0, p1}, Landroid/app/PropertyInvalidatedCache$NonceHandler;-><init>(Ljava/lang/String;)V

    .line 952
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mHandle:I

    .line 960
    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 961
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mShortName:Ljava/lang/String;

    goto :goto_0

    .line 963
    :cond_0
    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mShortName:Ljava/lang/String;

    .line 965
    :goto_0
    return-void
.end method

.method private initialize(Z)I
    .locals 5
    .param p1, "update"    # Z

    .line 974
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 975
    :try_start_0
    iget v1, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mHandle:I

    .line 976
    .local v1, "handle":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 977
    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mStore:Landroid/app/PropertyInvalidatedCache$NonceStore;

    if-nez v3, :cond_0

    .line 978
    invoke-static {}, Landroid/app/PropertyInvalidatedCache$NonceStore;->getInstance()Landroid/app/PropertyInvalidatedCache$NonceStore;

    move-result-object v3

    iput-object v3, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mStore:Landroid/app/PropertyInvalidatedCache$NonceStore;

    .line 979
    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mStore:Landroid/app/PropertyInvalidatedCache$NonceStore;

    if-nez v3, :cond_0

    .line 980
    monitor-exit v0

    return v2

    .line 983
    :cond_0
    if-eqz p1, :cond_1

    .line 984
    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mStore:Landroid/app/PropertyInvalidatedCache$NonceStore;

    iget-object v4, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mShortName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/PropertyInvalidatedCache$NonceStore;->storeName(Ljava/lang/String;)I

    .line 986
    :cond_1
    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mStore:Landroid/app/PropertyInvalidatedCache$NonceStore;

    iget-object v4, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mShortName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/PropertyInvalidatedCache$NonceStore;->getHandleForName(Ljava/lang/String;)I

    move-result v3

    move v1, v3

    .line 987
    if-ne v1, v2, :cond_2

    .line 988
    monitor-exit v0

    return v2

    .line 991
    :cond_2
    iput v1, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mHandle:I

    .line 993
    :cond_3
    monitor-exit v0

    return v1

    .line 994
    .end local v1    # "handle":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method getNonceInternal()J
    .locals 3

    .line 1002
    iget v0, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mHandle:I

    .line 1003
    .local v0, "handle":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1004
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->initialize(Z)I

    move-result v0

    .line 1005
    if-ne v0, v1, :cond_0

    .line 1006
    const-wide/16 v1, 0x0

    return-wide v1

    .line 1009
    :cond_0
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mStore:Landroid/app/PropertyInvalidatedCache$NonceStore;

    invoke-virtual {v1, v0}, Landroid/app/PropertyInvalidatedCache$NonceStore;->getNonce(I)J

    move-result-wide v1

    return-wide v1
.end method

.method setNonceInternal(J)V
    .locals 4
    .param p1, "value"    # J

    .line 1016
    iget v0, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mHandle:I

    .line 1017
    .local v0, "handle":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1018
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->initialize(Z)I

    move-result v0

    .line 1019
    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1020
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to assign nonce handle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1023
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;->mStore:Landroid/app/PropertyInvalidatedCache$NonceStore;

    invoke-virtual {v1, v0, p1, p2}, Landroid/app/PropertyInvalidatedCache$NonceStore;->setNonce(IJ)Z

    .line 1024
    return-void
.end method
