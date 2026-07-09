.class Landroid/app/PropertyInvalidatedCache$CacheMap;
.super Ljava/lang/Object;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PropertyInvalidatedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Query:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/LinkedHashMap<",
            "TQuery;TResult;>;>;"
        }
    .end annotation
.end field

.field private final mIsolated:Z

.field private final mSelfUid:I

.field private final mShadowCache:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "TQuery;>;"
        }
    .end annotation
.end field

.field private mShadowHits:I

.field private mShadowMisses:I

.field private mShadowSelfHits:I

.field private final mStatistics:Z

.field private final mTestMode:Z

.field private final mUidSeen:Landroid/util/SparseBooleanArray;

.field final synthetic this$0:Landroid/app/PropertyInvalidatedCache;


# direct methods
.method constructor <init>(Landroid/app/PropertyInvalidatedCache;ZZ)V
    .locals 2
    .param p2, "isolate"    # Z
    .param p3, "testMode"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 462
    .local p0, "this":Landroid/app/PropertyInvalidatedCache$CacheMap;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>.CacheMap<TQuery;TResult;>;"
    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->this$0:Landroid/app/PropertyInvalidatedCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    .line 463
    invoke-static {}, Landroid/app/Flags;->picIsolateCacheByUid()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mIsolated:Z

    .line 464
    invoke-static {}, Landroid/app/Flags;->picIsolatedCacheStatistics()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mIsolated:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mStatistics:Z

    .line 465
    iget-boolean p1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mStatistics:Z

    if-eqz p1, :cond_2

    .line 466
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mUidSeen:Landroid/util/SparseBooleanArray;

    .line 467
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowCache:Landroid/util/ArraySet;

    goto :goto_2

    .line 469
    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mUidSeen:Landroid/util/SparseBooleanArray;

    .line 470
    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowCache:Landroid/util/ArraySet;

    .line 472
    :goto_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    iput p1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mSelfUid:I

    .line 473
    iput-boolean p3, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mTestMode:Z

    .line 474
    return-void
.end method

.method private callerUid()I
    .locals 1

    .line 479
    .local p0, "this":Landroid/app/PropertyInvalidatedCache$CacheMap;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>.CacheMap<TQuery;TResult;>;"
    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mIsolated:Z

    if-nez v0, :cond_0

    .line 480
    const/4 v0, 0x0

    return v0

    .line 481
    :cond_0
    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mTestMode:Z

    if-eqz v0, :cond_1

    .line 482
    invoke-static {}, Landroid/os/Binder;->getCallingWorkSourceUid()I

    move-result v0

    return v0

    .line 484
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private createMap()Ljava/util/LinkedHashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "TQuery;TResult;>;"
        }
    .end annotation

    .line 406
    .local p0, "this":Landroid/app/PropertyInvalidatedCache$CacheMap;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>.CacheMap<TQuery;TResult;>;"
    new-instance v0, Landroid/app/PropertyInvalidatedCache$CacheMap$1;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, p0, v3, v1, v2}, Landroid/app/PropertyInvalidatedCache$CacheMap$1;-><init>(Landroid/app/PropertyInvalidatedCache$CacheMap;IFZ)V

    return-object v0
.end method


# virtual methods
.method clear()V
    .locals 1

    .line 576
    .local p0, "this":Landroid/app/PropertyInvalidatedCache$CacheMap;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>.CacheMap<TQuery;TResult;>;"
    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mStatistics:Z

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowCache:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 580
    :cond_0
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 581
    return-void
.end method

.method containsKey(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)Z"
        }
    .end annotation

    .line 518
    .local p0, "this":Landroid/app/PropertyInvalidatedCache$CacheMap;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>.CacheMap<TQuery;TResult;>;"
    .local p1, "query":Ljava/lang/Object;, "TQuery;"
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$CacheMap;->callerUid()I

    move-result v0

    .line 519
    .local v0, "uid":I
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    .line 520
    .local v1, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TQuery;TResult;>;"
    if-eqz v1, :cond_0

    .line 521
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 523
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 585
    .local p0, "this":Landroid/app/PropertyInvalidatedCache$CacheMap;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>.CacheMap<TQuery;TResult;>;"
    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mStatistics:Z

    if-eqz v0, :cond_0

    .line 586
    iget v0, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowHits:I

    .line 587
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowMisses:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowCache:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 586
    const-string v1, "    ShadowHits: %d, ShadowMisses: %d, ShadowSize: %d"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 588
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mUidSeen:Landroid/util/SparseBooleanArray;

    .line 589
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowSelfHits:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 588
    const-string v1, "    ShadowUids: %d, SelfUid: %d"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 591
    :cond_0
    return-void
.end method

.method dumpDetailed(Ljava/io/PrintWriter;)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 595
    .local p0, "this":Landroid/app/PropertyInvalidatedCache$CacheMap;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>.CacheMap<TQuery;TResult;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 596
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 597
    .local v1, "uid":I
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    .line 599
    .local v2, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TQuery;TResult;>;"
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 600
    .local v3, "cacheEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TQuery;TResult;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 601
    goto :goto_2

    .line 604
    :cond_0
    const-string v4, "    Contents:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 605
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "      Uid: %d\n"

    invoke-static {v5, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 606
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 607
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TQuery;TResult;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 608
    .local v6, "key":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 610
    .local v7, "value":Ljava/lang/String;
    const-string v8, "      Key: %s\n      Value: %s\n"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 611
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TQuery;TResult;>;"
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    goto :goto_1

    .line 595
    .end local v1    # "uid":I
    .end local v2    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TQuery;TResult;>;"
    .end local v3    # "cacheEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TQuery;TResult;>;>;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 613
    .end local v0    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)TResult;"
        }
    .end annotation

    .line 492
    .local p0, "this":Landroid/app/PropertyInvalidatedCache$CacheMap;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>.CacheMap<TQuery;TResult;>;"
    .local p1, "query":Ljava/lang/Object;, "TQuery;"
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$CacheMap;->callerUid()I

    move-result v0

    .line 495
    .local v0, "uid":I
    iget-boolean v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mStatistics:Z

    if-eqz v1, :cond_1

    .line 496
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowCache:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 497
    iget v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowHits:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowHits:I

    .line 498
    iget v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mSelfUid:I

    if-ne v0, v1, :cond_1

    .line 499
    iget v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowSelfHits:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowSelfHits:I

    goto :goto_0

    .line 502
    :cond_0
    iget v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowMisses:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowMisses:I

    .line 506
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    .line 507
    .local v1, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TQuery;TResult;>;"
    if-eqz v1, :cond_2

    .line 508
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 510
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;TResult;)V"
        }
    .end annotation

    .line 546
    .local p0, "this":Landroid/app/PropertyInvalidatedCache$CacheMap;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>.CacheMap<TQuery;TResult;>;"
    .local p1, "query":Ljava/lang/Object;, "TQuery;"
    .local p2, "result":Ljava/lang/Object;, "TResult;"
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$CacheMap;->callerUid()I

    move-result v0

    .line 547
    .local v0, "uid":I
    iget-boolean v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mStatistics:Z

    if-eqz v1, :cond_0

    .line 548
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowCache:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 549
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mUidSeen:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 552
    :cond_0
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    .line 553
    .local v1, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TQuery;TResult;>;"
    if-nez v1, :cond_1

    .line 554
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$CacheMap;->createMap()Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 555
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 557
    :cond_1
    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    return-void
.end method

.method remove(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)V"
        }
    .end annotation

    .line 531
    .local p0, "this":Landroid/app/PropertyInvalidatedCache$CacheMap;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>.CacheMap<TQuery;TResult;>;"
    .local p1, "query":Ljava/lang/Object;, "TQuery;"
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$CacheMap;->callerUid()I

    move-result v0

    .line 532
    .local v0, "uid":I
    iget-boolean v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mStatistics:Z

    if-eqz v1, :cond_0

    .line 533
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowCache:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 536
    :cond_0
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    .line 537
    .local v1, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TQuery;TResult;>;"
    if-eqz v1, :cond_1

    .line 538
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    :cond_1
    return-void
.end method

.method size()I
    .locals 4

    .line 564
    .local p0, "this":Landroid/app/PropertyInvalidatedCache$CacheMap;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>.CacheMap<TQuery;TResult;>;"
    const/4 v0, 0x0

    .line 565
    .local v0, "total":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 566
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    .line 567
    .local v2, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TQuery;TResult;>;"
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 565
    .end local v2    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TQuery;TResult;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 569
    .end local v1    # "i":I
    :cond_0
    return v0
.end method
