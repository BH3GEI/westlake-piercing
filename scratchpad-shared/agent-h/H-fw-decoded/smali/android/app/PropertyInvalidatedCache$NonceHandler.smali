.class abstract Landroid/app/PropertyInvalidatedCache$NonceHandler;
.super Ljava/lang/Object;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PropertyInvalidatedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "NonceHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;
    }
.end annotation


# instance fields
.field private mCorkedInvalidates:I

.field private mCorks:I

.field private mInvalidated:I

.field protected final mLock:Ljava/lang/Object;

.field final mName:Ljava/lang/String;

.field protected mShadowNonce:J

.field private mTestMode:Z

.field private mWatchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/concurrent/Semaphore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    .line 654
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mInvalidated:I

    .line 659
    iput v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorkedInvalidates:I

    .line 665
    iput v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorks:I

    .line 670
    iput-boolean v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mTestMode:Z

    .line 676
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mShadowNonce:J

    .line 694
    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mName:Ljava/lang/String;

    .line 695
    return-void
.end method

.method private wakeAllWatchersLocked()V
    .locals 2

    .line 724
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mWatchers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 725
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mWatchers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 726
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mWatchers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 725
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 729
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method cork()V
    .locals 6

    .line 800
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$sfgetsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 804
    return-void

    .line 807
    :cond_0
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 808
    :try_start_0
    iget v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorks:I

    .line 822
    .local v1, "numberCorks":I
    if-nez v1, :cond_2

    .line 823
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->getNonce()J

    move-result-wide v2

    .line 824
    .local v2, "nonce":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    .line 825
    const-wide/16 v4, 0x2

    invoke-virtual {p0, v4, v5}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->setNonce(J)V

    .line 827
    .end local v2    # "nonce":J
    :cond_1
    goto :goto_0

    .line 828
    :cond_2
    iget v2, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorkedInvalidates:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorkedInvalidates:I

    .line 830
    :goto_0
    iget v2, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorks:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorks:I

    .line 834
    .end local v1    # "numberCorks":I
    monitor-exit v0

    .line 835
    return-void

    .line 834
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method disable()V
    .locals 3

    .line 870
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$sfgetsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 871
    return-void

    .line 873
    :cond_0
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 874
    const-wide/16 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->setNonce(J)V

    .line 875
    monitor-exit v0

    .line 876
    return-void

    .line 875
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getNonce()J
    .locals 3

    .line 702
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 703
    :try_start_0
    iget-boolean v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mTestMode:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mShadowNonce:J

    monitor-exit v0

    return-wide v1

    .line 704
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->getNonceInternal()J

    move-result-wide v0

    return-wide v0

    .line 704
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method abstract getNonceInternal()J
.end method

.method getStats()Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;
    .locals 4

    .line 895
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 896
    :try_start_0
    new-instance v1, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;

    iget v2, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mInvalidated:I

    iget v3, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorkedInvalidates:I

    invoke-direct {v1, v2, v3}, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;-><init>(II)V

    monitor-exit v0

    return-object v1

    .line 897
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method invalidate()V
    .locals 6

    .line 759
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$sfgetsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 763
    return-void

    .line 766
    :cond_0
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 767
    :try_start_0
    iget v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorks:I

    if-lez v1, :cond_1

    .line 771
    iget v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorkedInvalidates:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorkedInvalidates:I

    .line 772
    monitor-exit v0

    return-void

    .line 775
    :cond_1
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->getNonce()J

    move-result-wide v1

    .line 776
    .local v1, "nonce":J
    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    .line 780
    monitor-exit v0

    return-void

    .line 785
    :cond_2
    invoke-static {}, Landroid/app/PropertyInvalidatedCache$NoPreloadHolder;->next()J

    move-result-wide v3

    .line 786
    .local v3, "newValue":J
    invoke-static {v3, v4}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$smisReservedNonce(J)Z

    move-result v5

    if-nez v5, :cond_2

    .line 794
    invoke-virtual {p0, v3, v4}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->setNonce(J)V

    .line 795
    iget v5, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mInvalidated:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mInvalidated:I

    .line 796
    .end local v1    # "nonce":J
    .end local v3    # "newValue":J
    monitor-exit v0

    .line 797
    return-void

    .line 796
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method registerWatcher(Ljava/util/concurrent/Semaphore;)V
    .locals 2
    .param p1, "s"    # Ljava/util/concurrent/Semaphore;

    .line 736
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 737
    :try_start_0
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mWatchers:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 738
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mWatchers:Ljava/util/ArrayList;

    .line 740
    :cond_0
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mWatchers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    monitor-exit v0

    .line 742
    return-void

    .line 741
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setNonce(J)V
    .locals 2
    .param p1, "val"    # J

    .line 713
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 714
    :try_start_0
    iput-wide p1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mShadowNonce:J

    .line 715
    iget-boolean v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mTestMode:Z

    if-nez v1, :cond_0

    .line 716
    invoke-virtual {p0, p1, p2}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->setNonceInternal(J)V

    .line 718
    :cond_0
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->wakeAllWatchersLocked()V

    .line 719
    monitor-exit v0

    .line 720
    return-void

    .line 719
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method abstract setNonceInternal(J)V
.end method

.method setTestMode(Z)V
    .locals 3
    .param p1, "mode"    # Z

    .line 883
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 884
    :try_start_0
    iput-boolean p1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mTestMode:Z

    .line 885
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mShadowNonce:J

    .line 886
    monitor-exit v0

    .line 887
    return-void

    .line 886
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method uncork()V
    .locals 5

    .line 838
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$sfgetsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 842
    return-void

    .line 845
    :cond_0
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 846
    :try_start_0
    iget v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorks:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mCorks:I

    .line 852
    .local v1, "numberCorks":I
    if-ltz v1, :cond_2

    .line 855
    if-nez v1, :cond_1

    .line 857
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->invalidate()V

    .line 862
    .end local v1    # "numberCorks":I
    :cond_1
    monitor-exit v0

    .line 863
    return-void

    .line 853
    .restart local v1    # "numberCorks":I
    :cond_2
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cork underflow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local p0    # "this":Landroid/app/PropertyInvalidatedCache$NonceHandler;
    throw v2

    .line 862
    .end local v1    # "numberCorks":I
    .restart local p0    # "this":Landroid/app/PropertyInvalidatedCache$NonceHandler;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method unregisterWatcher(Ljava/util/concurrent/Semaphore;)V
    .locals 2
    .param p1, "s"    # Ljava/util/concurrent/Semaphore;

    .line 748
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 749
    :try_start_0
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mWatchers:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 750
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler;->mWatchers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 752
    :cond_0
    monitor-exit v0

    .line 753
    return-void

    .line 752
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
