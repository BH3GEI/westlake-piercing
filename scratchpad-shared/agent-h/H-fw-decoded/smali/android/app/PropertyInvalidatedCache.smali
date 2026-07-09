.class public Landroid/app/PropertyInvalidatedCache;
.super Ljava/lang/Object;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/PropertyInvalidatedCache$NonceWatcher;,
        Landroid/app/PropertyInvalidatedCache$NonceHandler;,
        Landroid/app/PropertyInvalidatedCache$NonceSharedMem;,
        Landroid/app/PropertyInvalidatedCache$NonceLocal;,
        Landroid/app/PropertyInvalidatedCache$NonceSysprop;,
        Landroid/app/PropertyInvalidatedCache$Args;,
        Landroid/app/PropertyInvalidatedCache$CacheMap;,
        Landroid/app/PropertyInvalidatedCache$DefaultComputer;,
        Landroid/app/PropertyInvalidatedCache$QueryHandler;,
        Landroid/app/PropertyInvalidatedCache$NonceStore;,
        Landroid/app/PropertyInvalidatedCache$AutoCorker;,
        Landroid/app/PropertyInvalidatedCache$NoPreloadHolder;
    }
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


# static fields
.field static final BRIEF:Ljava/lang/String; = "-brief"

.field private static final CACHE_KEY_PREFIX:Ljava/lang/String; = "cache_key"

.field private static final DEBUG:Z = false

.field private static final MAX_RESERVED_NONCE:I = 0x3

.field public static final MODULE_BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field public static final MODULE_SYSTEM:Ljava/lang/String; = "system_server"

.field public static final MODULE_TELEPHONY:Ljava/lang/String; = "telephony"

.field public static final MODULE_TEST:Ljava/lang/String; = "test"

.field static final NAME_CONTAINS:Ljava/lang/String; = "-name-has="

.field static final NAME_LIKE:Ljava/lang/String; = "-name-like="

.field private static final NONCE_BYPASS:I = 0x3

.field private static final NONCE_CORKED:I = 0x2

.field private static final NONCE_DISABLED:I = 0x1

.field static final NONCE_UNSET:I = 0x0

.field private static final PREFIX_SYSTEM:Ljava/lang/String; = "cache_key.system_server."

.field private static final PREFIX_TEST:Ljava/lang/String; = "cache_key.test."

.field static final PROPERTY_CONTAINS:Ljava/lang/String; = "-property-has="

.field static final PROPERTY_LIKE:Ljava/lang/String; = "-property-like="

.field private static final TAG:Ljava/lang/String; = "PropertyInvalidatedCache"

.field private static final VERIFY:Z

.field private static final sCaches:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/PropertyInvalidatedCache;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCorkLock:Ljava/lang/Object;

.field private static final sDisabledKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sEnabled:Z

.field private static final sGlobalLock:Ljava/lang/Object;

.field private static final sHandlers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/app/PropertyInvalidatedCache$NonceHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final sNonceName:[Ljava/lang/String;

.field private static final sSharedMemoryAvailable:Z

.field private static sTestMode:Z

.field private static final sValidKeyPrefix:[Ljava/lang/String;

.field private static final sValidModule:[Ljava/lang/String;


# instance fields
.field private final mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "TQuery;TResult;>.CacheMap<TQuery;TResult;>;"
        }
    .end annotation
.end field

.field private final mCacheName:Ljava/lang/String;

.field private final mCacheNullResults:Z

.field private mClears:J

.field private mComputer:Landroid/app/PropertyInvalidatedCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache$QueryHandler<",
            "TQuery;TResult;>;"
        }
    .end annotation
.end field

.field private mDisabled:Z

.field private mHighWaterMark:J

.field private mHits:J

.field private mLastSeenNonce:J

.field private final mLock:Ljava/lang/Object;

.field private final mMaxEntries:I

.field private mMissOverflow:J

.field private mMisses:J

.field private final mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

.field private mNulls:J

.field private final mPropertyName:Ljava/lang/String;

.field private mSkips:[J


# direct methods
.method static bridge synthetic -$$Nest$fgetmHighWaterMark(Landroid/app/PropertyInvalidatedCache;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mHighWaterMark:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxEntries(Landroid/app/PropertyInvalidatedCache;)I
    .locals 0

    iget p0, p0, Landroid/app/PropertyInvalidatedCache;->mMaxEntries:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMissOverflow(Landroid/app/PropertyInvalidatedCache;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mMissOverflow:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputmHighWaterMark(Landroid/app/PropertyInvalidatedCache;J)V
    .locals 0

    iput-wide p1, p0, Landroid/app/PropertyInvalidatedCache;->mHighWaterMark:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMissOverflow(Landroid/app/PropertyInvalidatedCache;J)V
    .locals 0

    iput-wide p1, p0, Landroid/app/PropertyInvalidatedCache;->mMissOverflow:J

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetsEnabled()Z
    .locals 1

    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$smgetNonceHandler(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceHandler;
    .locals 0

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->getNonceHandler(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceHandler;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smisReservedNonce(J)Z
    .locals 0

    invoke-static {p0, p1}, Landroid/app/PropertyInvalidatedCache;->isReservedNonce(J)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeGetByteBlock(JI[B)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/app/PropertyInvalidatedCache;->nativeGetByteBlock(JI[B)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeGetByteBlockHash(J)I
    .locals 0

    invoke-static {p0, p1}, Landroid/app/PropertyInvalidatedCache;->nativeGetByteBlockHash(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeGetMaxByte(J)I
    .locals 0

    invoke-static {p0, p1}, Landroid/app/PropertyInvalidatedCache;->nativeGetMaxByte(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeGetMaxNonce(J)I
    .locals 0

    invoke-static {p0, p1}, Landroid/app/PropertyInvalidatedCache;->nativeGetMaxNonce(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeGetNonce(JI)J
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/app/PropertyInvalidatedCache;->nativeGetNonce(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$smnativeSetByteBlock(JI[B)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/app/PropertyInvalidatedCache;->nativeSetByteBlock(JI[B)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSetNonce(JIJ)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/app/PropertyInvalidatedCache;->nativeSetNonce(JIJ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smthrowIfInvalidModule(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->throwIfInvalidModule(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 201
    const-string/jumbo v0, "telephony"

    const-string/jumbo v1, "test"

    const-string/jumbo v2, "system_server"

    const-string v3, "bluetooth"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sValidModule:[Ljava/lang/String;

    .line 218
    const-string v0, "cache_key.telephony."

    const-string v1, "cache_key.test."

    const-string v2, "cache_key.system_server."

    const-string v3, "cache_key.bluetooth."

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sValidKeyPrefix:[Ljava/lang/String;

    .line 279
    const-string v0, "corked"

    const-string v1, "bypass"

    const-string/jumbo v2, "unset"

    const-string v3, "disabled"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sNonceName:[Ljava/lang/String;

    .line 296
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/PropertyInvalidatedCache;->sTestMode:Z

    .line 331
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sCorkLock:Ljava/lang/Object;

    .line 337
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    .line 347
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sDisabledKeys:Ljava/util/HashSet;

    .line 354
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sCaches:Ljava/util/WeakHashMap;

    .line 360
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    .line 1188
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1192
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->isSharedMemoryAvailable()Z

    move-result v0

    sput-boolean v0, Landroid/app/PropertyInvalidatedCache;->sSharedMemoryAvailable:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "maxEntries"    # I
    .param p2, "propertyName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1364
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    invoke-static {p2}, Landroid/app/PropertyInvalidatedCache;->argsFromProperty(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/PropertyInvalidatedCache$Args;->maxEntries(I)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Landroid/app/PropertyInvalidatedCache;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    .line 1365
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "maxEntries"    # I
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "cacheName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1381
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    invoke-static {p2}, Landroid/app/PropertyInvalidatedCache;->argsFromProperty(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/PropertyInvalidatedCache$Args;->maxEntries(I)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p3, v1}, Landroid/app/PropertyInvalidatedCache;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    .line 1382
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V
    .locals 1
    .param p1, "maxEntries"    # I
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "api"    # Ljava/lang/String;
    .param p4, "cacheName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/app/PropertyInvalidatedCache$QueryHandler<",
            "TQuery;TResult;>;)V"
        }
    .end annotation

    .line 1398
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    .local p5, "computer":Landroid/app/PropertyInvalidatedCache$QueryHandler;, "Landroid/app/PropertyInvalidatedCache$QueryHandler<TQuery;TResult;>;"
    new-instance v0, Landroid/app/PropertyInvalidatedCache$Args;

    invoke-direct {v0, p2}, Landroid/app/PropertyInvalidatedCache$Args;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/app/PropertyInvalidatedCache$Args;->maxEntries(I)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/PropertyInvalidatedCache$Args;->api(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v0

    invoke-direct {p0, v0, p4, p5}, Landroid/app/PropertyInvalidatedCache;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    .line 1399
    return-void
.end method

.method public constructor <init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V
    .locals 3
    .param p1, "args"    # Landroid/app/PropertyInvalidatedCache$Args;
    .param p2, "cacheName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PropertyInvalidatedCache$Args;",
            "Ljava/lang/String;",
            "Landroid/app/PropertyInvalidatedCache$QueryHandler<",
            "TQuery;TResult;>;)V"
        }
    .end annotation

    .line 1315
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    .local p3, "computer":Landroid/app/PropertyInvalidatedCache$QueryHandler;, "Landroid/app/PropertyInvalidatedCache$QueryHandler<TQuery;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    .line 304
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mHits:J

    .line 307
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mMisses:J

    .line 312
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mNulls:J

    .line 315
    const/4 v2, 0x4

    new-array v2, v2, [J

    iput-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    .line 318
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mMissOverflow:J

    .line 321
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mHighWaterMark:J

    .line 324
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mClears:J

    .line 628
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    .line 634
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/PropertyInvalidatedCache;->mDisabled:Z

    .line 1316
    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache$Args;->-$$Nest$fgetmModule(Landroid/app/PropertyInvalidatedCache$Args;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache$Args;->-$$Nest$fgetmApi(Landroid/app/PropertyInvalidatedCache$Args;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/PropertyInvalidatedCache;->createPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    .line 1317
    iput-object p2, p0, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    .line 1318
    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache$Args;->-$$Nest$fgetmCacheNulls(Landroid/app/PropertyInvalidatedCache$Args;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/PropertyInvalidatedCache;->mCacheNullResults:Z

    .line 1319
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->getNonceHandler(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceHandler;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    .line 1320
    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache$Args;->-$$Nest$fgetmMaxEntries(Landroid/app/PropertyInvalidatedCache$Args;)I

    move-result v0

    iput v0, p0, Landroid/app/PropertyInvalidatedCache;->mMaxEntries:I

    .line 1321
    new-instance v0, Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache$Args;->-$$Nest$fgetmIsolateUids(Landroid/app/PropertyInvalidatedCache$Args;)Z

    move-result v1

    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache$Args;->-$$Nest$fgetmTestMode(Landroid/app/PropertyInvalidatedCache$Args;)Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Landroid/app/PropertyInvalidatedCache$CacheMap;-><init>(Landroid/app/PropertyInvalidatedCache;ZZ)V

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    .line 1322
    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/app/PropertyInvalidatedCache$DefaultComputer;

    invoke-direct {v0, p0}, Landroid/app/PropertyInvalidatedCache$DefaultComputer;-><init>(Landroid/app/PropertyInvalidatedCache;)V

    :goto_0
    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mComputer:Landroid/app/PropertyInvalidatedCache$QueryHandler;

    .line 1323
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache;->registerCache()V

    .line 1324
    return-void
.end method

.method private static anyDetailed([Ljava/lang/String;)Z
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;

    .line 2116
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 2117
    .local v3, "a":Ljava/lang/String;
    const-string v4, "-name-has="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "-name-like="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2118
    const-string v4, "-property-has="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "-property-like="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 2116
    .end local v3    # "a":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2119
    .restart local v3    # "a":Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 2122
    .end local v3    # "a":Ljava/lang/String;
    :cond_2
    return v1
.end method

.method public static apiFromProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1346
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->argsFromProperty(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v0

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache$Args;->-$$Nest$fgetmApi(Landroid/app/PropertyInvalidatedCache$Args;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static argsFromProperty(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .line 1331
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->throwIfInvalidCacheKey(Ljava/lang/String;)V

    .line 1333
    const-string v0, "cache_key"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1334
    .local v0, "base":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1335
    .local v1, "dot":I
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1336
    .local v2, "module":Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1337
    .local v3, "api":Ljava/lang/String;
    new-instance v4, Landroid/app/PropertyInvalidatedCache$Args;

    invoke-direct {v4, v2}, Landroid/app/PropertyInvalidatedCache$Args;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Landroid/app/PropertyInvalidatedCache$Args;->api(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v4

    return-object v4
.end method

.method private static chooses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "arg"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "reference"    # Ljava/lang/String;
    .param p3, "contains"    # Z

    .line 2129
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2130
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2131
    .local v0, "value":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 2132
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    .line 2134
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 2137
    .end local v0    # "value":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static corkInvalidations(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1865
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->getNonceHandler(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->cork()V

    .line 1866
    return-void
.end method

.method public static createPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "apiName"    # Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 172
    .local v0, "api":[C
    const/4 v1, 0x0

    .line 173
    .local v1, "upper":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 174
    aget-char v3, v0, v2

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    add-int/lit8 v1, v1, 0x1

    .line 173
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    .end local v2    # "i":I
    :cond_1
    array-length v2, v0

    add-int/2addr v2, v1

    new-array v2, v2, [C

    .line 179
    .local v2, "suffix":[C
    const/4 v3, 0x0

    .line 180
    .local v3, "j":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_5

    .line 181
    aget-char v5, v0, v4

    invoke-static {v5}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 182
    aget-char v5, v0, v4

    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 183
    if-lez v4, :cond_2

    .line 184
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "j":I
    .local v5, "j":I
    const/16 v6, 0x5f

    aput-char v6, v2, v3

    move v3, v5

    .line 186
    .end local v5    # "j":I
    .restart local v3    # "j":I
    :cond_2
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "j":I
    .restart local v5    # "j":I
    aget-char v6, v0, v4

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    aput-char v6, v2, v3

    move v3, v5

    goto :goto_2

    .line 188
    .end local v5    # "j":I
    .restart local v3    # "j":I
    :cond_3
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "j":I
    .restart local v5    # "j":I
    aget-char v6, v0, v4

    aput-char v6, v2, v3

    move v3, v5

    .line 180
    .end local v5    # "j":I
    .restart local v3    # "j":I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 191
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "invalid api name"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 195
    .end local v4    # "i":I
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cache_key."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static createSystemCacheKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "api"    # Ljava/lang/String;

    .line 244
    const-string/jumbo v0, "system_server"

    invoke-static {v0, p0}, Landroid/app/PropertyInvalidatedCache;->createPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static disableForCurrentProcess(Ljava/lang/String;)V
    .locals 0
    .param p0, "cacheName"    # Ljava/lang/String;

    .line 1621
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->disableLocal(Ljava/lang/String;)V

    .line 1622
    return-void
.end method

.method public static disableForTestMode()V
    .locals 2

    .line 2067
    const-string v0, "PropertyInvalidatedCache"

    const-string v1, "disabling all caches in the process"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    .line 2069
    return-void
.end method

.method private static final disableLocal(Ljava/lang/String;)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .line 1568
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1569
    :try_start_0
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sDisabledKeys:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1571
    monitor-exit v0

    return-void

    .line 1573
    :cond_0
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PropertyInvalidatedCache;

    .line 1574
    .local v2, "cache":Landroid/app/PropertyInvalidatedCache;
    iget-object v3, v2, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1575
    invoke-virtual {v2}, Landroid/app/PropertyInvalidatedCache;->disableInstance()V

    .line 1577
    .end local v2    # "cache":Landroid/app/PropertyInvalidatedCache;
    :cond_1
    goto :goto_0

    .line 1580
    :cond_2
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sDisabledKeys:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1581
    monitor-exit v0

    .line 1582
    return-void

    .line 1581
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static disableSystemWide(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1788
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->getNonceHandler(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->disable()V

    .line 1789
    return-void
.end method

.method public static dumpCacheInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .locals 5
    .param p0, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "args"    # [Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2270
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2271
    .local v0, "barray":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2272
    .local v1, "bout":Ljava/io/PrintWriter;
    invoke-static {v1, p1}, Landroid/app/PropertyInvalidatedCache;->dumpCacheInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2273
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 2277
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 2278
    .local v2, "out":Ljava/io/FileOutputStream;
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 2279
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 2280
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2283
    .end local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 2281
    :catch_0
    move-exception v2

    .line 2282
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "PropertyInvalidatedCache"

    const-string v4, "Failed to dump PropertyInvalidatedCache instances"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private static dumpCacheInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "args"    # [Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2233
    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    if-nez v0, :cond_0

    .line 2234
    const-string v0, "  Caching is disabled in this process."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2235
    return-void

    .line 2240
    :cond_0
    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache;->anyDetailed([Ljava/lang/String;)Z

    move-result v0

    .line 2242
    .local v0, "detail":Z
    sget-boolean v1, Landroid/app/PropertyInvalidatedCache;->sSharedMemoryAvailable:Z

    if-eqz v1, :cond_1

    .line 2243
    const-string v1, "  SharedMemory: enabled"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2244
    invoke-static {}, Landroid/app/PropertyInvalidatedCache$NonceStore;->getInstance()Landroid/app/PropertyInvalidatedCache$NonceStore;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, p0, v2, v0}, Landroid/app/PropertyInvalidatedCache$NonceStore;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2246
    :cond_1
    const-string v1, "  SharedMemory: disabled"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2248
    :goto_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 2250
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->getActiveCaches()Ljava/util/ArrayList;

    move-result-object v1

    .line 2251
    .local v1, "activeCaches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PropertyInvalidatedCache;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2252
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PropertyInvalidatedCache;

    .line 2253
    .local v3, "currentCache":Landroid/app/PropertyInvalidatedCache;
    invoke-direct {v3, p0, v0, p1}, Landroid/app/PropertyInvalidatedCache;->dumpContents(Ljava/io/PrintWriter;Z[Ljava/lang/String;)V

    .line 2251
    .end local v3    # "currentCache":Landroid/app/PropertyInvalidatedCache;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2255
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private dumpContents(Ljava/io/PrintWriter;Z[Ljava/lang/String;)V
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "detailed"    # Z
    .param p3, "args"    # [Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2179
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    if-eqz p2, :cond_0

    invoke-direct {p0, p3}, Landroid/app/PropertyInvalidatedCache;->showDetailed([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2180
    return-void

    .line 2183
    :cond_0
    const/4 v0, 0x0

    .line 2184
    .local v0, "brief":Z
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p3, v3

    .local v4, "a":Ljava/lang/String;
    const-string v5, "-brief"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    .end local v4    # "a":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2186
    :cond_1
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    invoke-virtual {v1}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->getStats()Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;

    move-result-object v1

    .line 2188
    .local v1, "stats":Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;
    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2189
    if-eqz v0, :cond_2

    :try_start_0
    invoke-direct {p0, v1}, Landroid/app/PropertyInvalidatedCache;->isActive(Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2190
    monitor-exit v3

    return-void

    .line 2193
    :cond_2
    const-string v4, "  Cache Name: %s"

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->cacheName()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2194
    const-string v4, "    Property: %s"

    iget-object v5, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2195
    const-string v4, "    Hits: %d, Misses: %d, Skips: %d, Clears: %d, Nulls: %d"

    iget-wide v5, p0, Landroid/app/PropertyInvalidatedCache;->mHits:J

    .line 2197
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v6, p0, Landroid/app/PropertyInvalidatedCache;->mMisses:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache;->getSkipsLocked()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v8, p0, Landroid/app/PropertyInvalidatedCache;->mClears:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-wide v9, p0, Landroid/app/PropertyInvalidatedCache;->mNulls:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    filled-new-array {v5, v6, v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v5

    .line 2195
    invoke-static {v4, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2200
    const-string v4, "    Skip-%s: %d"

    sget-object v5, Landroid/app/PropertyInvalidatedCache;->sNonceName:[Ljava/lang/String;

    aget-object v5, v5, v2

    iget-object v6, p0, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    aget-wide v6, v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2201
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 2202
    const-string v4, ", Skip-%s: %d"

    sget-object v5, Landroid/app/PropertyInvalidatedCache;->sNonceName:[Ljava/lang/String;

    aget-object v5, v5, v2

    iget-object v6, p0, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    aget-wide v6, v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2201
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2204
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2206
    const-string v2, "    Nonce: 0x%016x, Invalidates: %d, Corked: %d"

    iget-wide v4, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    .line 2208
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1}, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->-$$Nest$fgetinvalidated(Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->-$$Nest$fgetcorkedInvalidates(Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    .line 2206
    invoke-static {v2, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2209
    const-string v2, "    Current Size: %d, Max Size: %d, HW Mark: %d, Overflows: %d"

    iget-object v4, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    .line 2211
    invoke-virtual {v4}, Landroid/app/PropertyInvalidatedCache$CacheMap;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Landroid/app/PropertyInvalidatedCache;->mMaxEntries:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide v6, p0, Landroid/app/PropertyInvalidatedCache;->mHighWaterMark:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v7, p0, Landroid/app/PropertyInvalidatedCache;->mMissOverflow:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v4

    .line 2209
    invoke-static {v2, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2212
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-virtual {v2, p1}, Landroid/app/PropertyInvalidatedCache$CacheMap;->dump(Ljava/io/PrintWriter;)V

    .line 2213
    const-string v2, "    Enabled: %s"

    iget-boolean v4, p0, Landroid/app/PropertyInvalidatedCache;->mDisabled:Z

    if-eqz v4, :cond_4

    const-string v4, "false"

    goto :goto_2

    :cond_4
    const-string/jumbo v4, "true"

    :goto_2
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2216
    if-eqz p2, :cond_5

    .line 2217
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-virtual {v2, p1}, Landroid/app/PropertyInvalidatedCache$CacheMap;->dumpDetailed(Ljava/io/PrintWriter;)V

    .line 2221
    :cond_5
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2222
    monitor-exit v3

    .line 2223
    return-void

    .line 2222
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static getActiveCaches()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/PropertyInvalidatedCache;",
            ">;"
        }
    .end annotation

    .line 2094
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2095
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Landroid/app/PropertyInvalidatedCache;->sCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 2096
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getCurrentNonce()J
    .locals 2

    .line 1475
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->getNonce()J

    move-result-wide v0

    return-wide v0
.end method

.method private getDisabledState()Z
    .locals 1

    .line 2076
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->isDisabled()Z

    move-result v0

    return v0
.end method

.method private static getNonceHandler(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceHandler;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .line 1226
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PropertyInvalidatedCache$NonceHandler;

    .line 1227
    .local v0, "h":Landroid/app/PropertyInvalidatedCache$NonceHandler;
    if-nez v0, :cond_3

    .line 1228
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1229
    :try_start_0
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->throwIfInvalidCacheKey(Ljava/lang/String;)V

    .line 1230
    sget-object v2, Landroid/app/PropertyInvalidatedCache;->sHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PropertyInvalidatedCache$NonceHandler;

    move-object v0, v2

    .line 1231
    if-nez v0, :cond_2

    .line 1232
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->sharedMemoryOkay(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1233
    new-instance v2, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;

    const-string v3, "cache_key.system_server."

    invoke-direct {v2, p0, v3}, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .end local v0    # "h":Landroid/app/PropertyInvalidatedCache$NonceHandler;
    .local v2, "h":Landroid/app/PropertyInvalidatedCache$NonceHandler;
    goto :goto_0

    .line 1234
    .end local v2    # "h":Landroid/app/PropertyInvalidatedCache$NonceHandler;
    .restart local v0    # "h":Landroid/app/PropertyInvalidatedCache$NonceHandler;
    :cond_0
    const-string v2, "cache_key.test."

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1235
    new-instance v2, Landroid/app/PropertyInvalidatedCache$NonceLocal;

    invoke-direct {v2, p0}, Landroid/app/PropertyInvalidatedCache$NonceLocal;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .end local v0    # "h":Landroid/app/PropertyInvalidatedCache$NonceHandler;
    .restart local v2    # "h":Landroid/app/PropertyInvalidatedCache$NonceHandler;
    goto :goto_0

    .line 1237
    .end local v2    # "h":Landroid/app/PropertyInvalidatedCache$NonceHandler;
    .restart local v0    # "h":Landroid/app/PropertyInvalidatedCache$NonceHandler;
    :cond_1
    new-instance v2, Landroid/app/PropertyInvalidatedCache$NonceSysprop;

    invoke-direct {v2, p0}, Landroid/app/PropertyInvalidatedCache$NonceSysprop;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 1239
    :goto_0
    sget-object v2, Landroid/app/PropertyInvalidatedCache;->sHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    :cond_2
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1243
    :cond_3
    :goto_1
    return-object v0
.end method

.method public static getNonceWatcher(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceWatcher;
    .locals 3
    .param p0, "propertyName"    # Ljava/lang/String;

    .line 1162
    new-instance v0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->getNonceHandler(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/app/PropertyInvalidatedCache$NonceWatcher;-><init>(Landroid/app/PropertyInvalidatedCache$NonceHandler;Landroid/app/PropertyInvalidatedCache-IA;)V

    return-object v0
.end method

.method private getSkipsLocked()J
    .locals 6

    .line 2158
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    const/4 v0, 0x0

    .line 2159
    .local v0, "sum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 2160
    int-to-long v2, v0

    iget-object v4, p0, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    aget-wide v4, v4, v1

    add-long/2addr v2, v4

    long-to-int v0, v2

    .line 2159
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2162
    .end local v1    # "i":I
    :cond_0
    int-to-long v1, v0

    return-wide v1
.end method

.method private static inSharedMemoryDenyList(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1208
    const-string v0, "cache_key.system_server.package_info"

    .line 1209
    .local v0, "pkginfo":Ljava/lang/String;
    const-string v1, "cache_key.system_server.package_info"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static invalidateCache(Landroid/app/PropertyInvalidatedCache$Args;)V
    .locals 2
    .param p0, "args"    # Landroid/app/PropertyInvalidatedCache$Args;

    .line 1834
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache$Args;->-$$Nest$fgetmModule(Landroid/app/PropertyInvalidatedCache$Args;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache$Args;->-$$Nest$fgetmApi(Landroid/app/PropertyInvalidatedCache$Args;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/PropertyInvalidatedCache;->createPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    .line 1835
    return-void
.end method

.method public static invalidateCache(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1848
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->getNonceHandler(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->invalidate()V

    .line 1849
    return-void
.end method

.method public static invalidateCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "api"    # Ljava/lang/String;

    .line 1826
    invoke-static {p0, p1}, Landroid/app/PropertyInvalidatedCache;->createPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    .line 1827
    return-void
.end method

.method private isActive(Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;)Z
    .locals 5
    .param p1, "stats"    # Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;

    .line 2169
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2170
    :try_start_0
    iget-wide v1, p0, Landroid/app/PropertyInvalidatedCache;->mHits:J

    iget-wide v3, p0, Landroid/app/PropertyInvalidatedCache;->mMisses:J

    add-long/2addr v1, v3

    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache;->getSkipsLocked()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->-$$Nest$fgetinvalidated(Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->-$$Nest$fgetcorkedInvalidates(Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 2172
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static isReservedNonce(J)Z
    .locals 2
    .param p0, "n"    # J

    .line 273
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x3

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isSharedMemoryAvailable()Z
    .locals 1

    .line 1196
    invoke-static {}, Lcom/android/internal/os/Flags;->applicationSharedMemoryEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1197
    invoke-static {}, Landroid/app/Flags;->picUsesSharedMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1196
    :goto_0
    return v0
.end method

.method private static isSharedMemoryAvailable$ravenwood()Z
    .locals 1

    .line 1201
    const/4 v0, 0x0

    return v0
.end method

.method private maybeCheckConsistency(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;TResult;)TResult;"
        }
    .end annotation

    .line 2027
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    .local p1, "query":Ljava/lang/Object;, "TQuery;"
    .local p2, "proposedResult":Ljava/lang/Object;, "TResult;"
    return-object p2
.end method

.method private static native nativeGetByteBlock(JI[B)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativeGetByteBlockHash(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetMaxByte(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativeGetMaxNonce(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativeGetNonce(JI)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeSetByteBlock(JI[B)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativeSetNonce(JIJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private registerCache()V
    .locals 3

    .line 1407
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1408
    :try_start_0
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sDisabledKeys:Ljava/util/HashSet;

    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1409
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->disableInstance()V

    .line 1411
    :cond_0
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sCaches:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1412
    monitor-exit v0

    .line 1413
    return-void

    .line 1412
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static resetAfterTestLocked()V
    .locals 4

    .line 1449
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->asIterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "e":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1450
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1451
    .local v1, "s":Ljava/lang/String;
    sget-object v2, Landroid/app/PropertyInvalidatedCache;->sHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PropertyInvalidatedCache$NonceHandler;

    .line 1452
    .local v2, "h":Landroid/app/PropertyInvalidatedCache$NonceHandler;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->setTestMode(Z)V

    .line 1453
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "h":Landroid/app/PropertyInvalidatedCache$NonceHandler;
    goto :goto_0

    .line 1454
    .end local v0    # "e":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static separatePermissionNotificationsEnabled()Z
    .locals 1

    .line 88
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->isSharedMemoryAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-static {}, Landroid/app/Flags;->picSeparatePermissionNotifications()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 88
    :goto_0
    return v0
.end method

.method public static setTestMode(Z)V
    .locals 3
    .param p0, "mode"    # Z

    .line 1424
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1425
    :try_start_0
    sget-boolean v1, Landroid/app/PropertyInvalidatedCache;->sTestMode:Z

    if-ne v1, p0, :cond_1

    .line 1426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot set test mode redundantly: mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1427
    .local v1, "msg":Ljava/lang/String;
    invoke-static {}, Landroid/app/Flags;->enforcePicTestmodeProtocol()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1430
    const-string v2, "PropertyInvalidatedCache"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1428
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "mode":Z
    throw v2

    .line 1433
    .end local v1    # "msg":Ljava/lang/String;
    .restart local p0    # "mode":Z
    :cond_1
    :goto_0
    sput-boolean p0, Landroid/app/PropertyInvalidatedCache;->sTestMode:Z

    .line 1434
    if-eqz p0, :cond_2

    goto :goto_1

    .line 1437
    :cond_2
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->resetAfterTestLocked()V

    .line 1439
    :goto_1
    monitor-exit v0

    .line 1440
    return-void

    .line 1439
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static sharedMemoryOkay(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1215
    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sSharedMemoryAvailable:Z

    if-eqz v0, :cond_0

    .line 1216
    const-string v0, "cache_key.system_server."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1217
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->inSharedMemoryDenyList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1215
    :goto_0
    return v0
.end method

.method private showDetailed([Ljava/lang/String;)Z
    .locals 7
    .param p1, "args"    # [Ljava/lang/String;

    .line 2145
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 2146
    .local v3, "a":Ljava/lang/String;
    const-string v4, "-name-has="

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->cacheName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Landroid/app/PropertyInvalidatedCache;->chooses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2147
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->cacheName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-name-like="

    invoke-static {v3, v5, v4, v1}, Landroid/app/PropertyInvalidatedCache;->chooses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    .line 2148
    const-string v5, "-property-has="

    invoke-static {v3, v5, v4, v6}, Landroid/app/PropertyInvalidatedCache;->chooses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    .line 2149
    const-string v5, "-property-like="

    invoke-static {v3, v5, v4, v1}, Landroid/app/PropertyInvalidatedCache;->chooses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 2145
    .end local v3    # "a":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2150
    .restart local v3    # "a":Ljava/lang/String;
    :cond_1
    :goto_1
    return v6

    .line 2153
    .end local v3    # "a":Ljava/lang/String;
    :cond_2
    return v1
.end method

.method private static throwIfInvalidCacheKey(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 230
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sValidKeyPrefix:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 231
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sValidKeyPrefix:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 230
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid cache name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static throwIfInvalidModule(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 209
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sValidModule:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 210
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sValidModule:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 209
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid module: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static uncorkInvalidations(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1877
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->getNonceHandler(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->uncork()V

    .line 1878
    return-void
.end method


# virtual methods
.method public bypass(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)Z"
        }
    .end annotation

    .line 1515
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    .local p1, "query":Ljava/lang/Object;, "TQuery;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mComputer:Landroid/app/PropertyInvalidatedCache$QueryHandler;

    invoke-virtual {v0, p1}, Landroid/app/PropertyInvalidatedCache$QueryHandler;->shouldBypassCache(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final cacheName()Ljava/lang/String;
    .locals 1

    .line 2036
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    return-object v0
.end method

.method public final clear()V
    .locals 5

    .line 1486
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1490
    :try_start_0
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-virtual {v1}, Landroid/app/PropertyInvalidatedCache$CacheMap;->clear()V

    .line 1491
    iget-wide v1, p0, Landroid/app/PropertyInvalidatedCache;->mClears:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/app/PropertyInvalidatedCache;->mClears:J

    .line 1492
    monitor-exit v0

    .line 1493
    return-void

    .line 1492
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public corkInvalidations()V
    .locals 1

    .line 1808
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->cork()V

    .line 1809
    return-void
.end method

.method public disableForCurrentProcess()V
    .locals 1

    .line 1616
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->disableLocal(Ljava/lang/String;)V

    .line 1617
    return-void
.end method

.method public disableInstance()V
    .locals 2

    .line 1556
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1557
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/app/PropertyInvalidatedCache;->mDisabled:Z

    .line 1558
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->clear()V

    .line 1559
    monitor-exit v0

    .line 1560
    return-void

    .line 1559
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disableLocal()V
    .locals 0

    .line 1606
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->disableForCurrentProcess()V

    .line 1607
    return-void
.end method

.method public disableSystemWide()V
    .locals 1

    .line 1778
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->disableSystemWide(Ljava/lang/String;)V

    .line 1779
    return-void
.end method

.method public dumpCacheEntries(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2294
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2295
    :try_start_0
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-virtual {v1, p1}, Landroid/app/PropertyInvalidatedCache$CacheMap;->dumpDetailed(Ljava/io/PrintWriter;)V

    .line 2296
    monitor-exit v0

    .line 2297
    return-void

    .line 2296
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public forgetDisableLocal()V
    .locals 3

    .line 1593
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1594
    :try_start_0
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sDisabledKeys:Ljava/util/HashSet;

    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1595
    monitor-exit v0

    .line 1596
    return-void

    .line 1595
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNonce()J
    .locals 3

    .line 1171
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1172
    :try_start_0
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    invoke-virtual {v1}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->getNonce()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 1173
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNonceWatcher()Landroid/app/PropertyInvalidatedCache$NonceWatcher;
    .locals 3

    .line 1153
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    new-instance v0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;

    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/app/PropertyInvalidatedCache$NonceWatcher;-><init>(Landroid/app/PropertyInvalidatedCache$NonceHandler;Landroid/app/PropertyInvalidatedCache-IA;)V

    return-object v0
.end method

.method public invalidateCache()V
    .locals 1

    .line 1798
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->invalidate()V

    .line 1799
    return-void
.end method

.method public isDisabled()Z
    .locals 1

    .line 1630
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache;->mDisabled:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final propertyName()Ljava/lang/String;
    .locals 1

    .line 2044
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public query(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)TResult;"
        }
    .end annotation

    .line 1639
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    .local p1, "query":Ljava/lang/Object;, "TQuery;"
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->isDisabled()Z

    move-result v0

    const-wide/16 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache;->getCurrentNonce()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    .line 1640
    .local v3, "currentNonce":J
    :goto_0
    invoke-static {v3, v4}, Landroid/app/PropertyInvalidatedCache;->isReservedNonce(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1641
    invoke-virtual {p0, p1}, Landroid/app/PropertyInvalidatedCache;->bypass(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1642
    const-wide/16 v3, 0x3

    .line 1645
    :cond_1
    :goto_1
    invoke-static {v3, v4}, Landroid/app/PropertyInvalidatedCache;->isReservedNonce(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1646
    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache;->mDisabled:Z

    if-nez v0, :cond_2

    .line 1649
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1650
    :try_start_0
    iget-object v5, p0, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    long-to-int v6, v3

    aget-wide v7, v5, v6

    add-long/2addr v7, v1

    aput-wide v7, v5, v6

    .line 1651
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1661
    :cond_2
    :goto_2
    invoke-virtual {p0, p1}, Landroid/app/PropertyInvalidatedCache;->recompute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1666
    :cond_3
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1667
    :try_start_1
    iget-wide v5, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_6

    .line 1668
    iget-object v5, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-virtual {v5, p1}, Landroid/app/PropertyInvalidatedCache$CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1669
    .local v5, "cachedResult":Ljava/lang/Object;, "TResult;"
    if-nez v5, :cond_5

    .line 1670
    iget-boolean v6, p0, Landroid/app/PropertyInvalidatedCache;->mCacheNullResults:Z

    if-eqz v6, :cond_4

    .line 1671
    iget-object v6, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-virtual {v6, p1}, Landroid/app/PropertyInvalidatedCache$CacheMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    .local v6, "cacheHit":Z
    goto :goto_3

    .line 1673
    .end local v6    # "cacheHit":Z
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "cacheHit":Z
    goto :goto_3

    .line 1676
    .end local v6    # "cacheHit":Z
    :cond_5
    const/4 v6, 0x1

    .line 1678
    .restart local v6    # "cacheHit":Z
    :goto_3
    if-eqz v6, :cond_7

    .line 1679
    iget-wide v7, p0, Landroid/app/PropertyInvalidatedCache;->mHits:J

    add-long/2addr v7, v1

    iput-wide v7, p0, Landroid/app/PropertyInvalidatedCache;->mHits:J

    goto :goto_4

    .line 1688
    .end local v5    # "cachedResult":Ljava/lang/Object;, "TResult;"
    .end local v6    # "cacheHit":Z
    :cond_6
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->clear()V

    .line 1689
    iput-wide v3, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    .line 1690
    const/4 v6, 0x0

    .line 1691
    .restart local v6    # "cacheHit":Z
    const/4 v5, 0x0

    .line 1693
    .restart local v5    # "cachedResult":Ljava/lang/Object;, "TResult;"
    :cond_7
    :goto_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1701
    if-eqz v6, :cond_c

    .line 1702
    invoke-virtual {p0, v5, p1}, Landroid/app/PropertyInvalidatedCache;->refresh(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1703
    .local v0, "refreshedResult":Ljava/lang/Object;, "TResult;"
    if-eq v0, v5, :cond_b

    .line 1707
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache;->getCurrentNonce()J

    move-result-wide v7

    .line 1708
    .local v7, "afterRefreshNonce":J
    cmp-long v9, v3, v7

    if-eqz v9, :cond_8

    .line 1709
    move-wide v3, v7

    .line 1716
    goto :goto_1

    .line 1718
    :cond_8
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1719
    :try_start_2
    iget-wide v9, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    cmp-long v2, v3, v9

    if-eqz v2, :cond_9

    goto :goto_5

    .line 1723
    :cond_9
    if-nez v0, :cond_a

    .line 1724
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-virtual {v2, p1}, Landroid/app/PropertyInvalidatedCache$CacheMap;->remove(Ljava/lang/Object;)V

    goto :goto_5

    .line 1726
    :cond_a
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-virtual {v2, p1, v0}, Landroid/app/PropertyInvalidatedCache$CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1728
    :goto_5
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1729
    invoke-direct {p0, p1, v0}, Landroid/app/PropertyInvalidatedCache;->maybeCheckConsistency(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 1728
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 1734
    .end local v7    # "afterRefreshNonce":J
    :cond_b
    invoke-direct {p0, p1, v5}, Landroid/app/PropertyInvalidatedCache;->maybeCheckConsistency(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 1741
    .end local v0    # "refreshedResult":Ljava/lang/Object;, "TResult;"
    :cond_c
    invoke-virtual {p0, p1}, Landroid/app/PropertyInvalidatedCache;->recompute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1742
    .local v7, "result":Ljava/lang/Object;, "TResult;"
    iget-object v8, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1745
    :try_start_4
    iget-wide v9, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    cmp-long v0, v9, v3

    if-nez v0, :cond_f

    .line 1746
    if-nez v7, :cond_e

    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache;->mCacheNullResults:Z

    if-eqz v0, :cond_d

    goto :goto_6

    .line 1748
    :cond_d
    if-nez v7, :cond_f

    .line 1750
    iget-wide v9, p0, Landroid/app/PropertyInvalidatedCache;->mNulls:J

    add-long/2addr v9, v1

    iput-wide v9, p0, Landroid/app/PropertyInvalidatedCache;->mNulls:J

    goto :goto_7

    .line 1747
    :cond_e
    :goto_6
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-virtual {v0, p1, v7}, Landroid/app/PropertyInvalidatedCache$CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1753
    :cond_f
    :goto_7
    iget-wide v9, p0, Landroid/app/PropertyInvalidatedCache;->mMisses:J

    add-long/2addr v9, v1

    iput-wide v9, p0, Landroid/app/PropertyInvalidatedCache;->mMisses:J

    .line 1754
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1755
    invoke-direct {p0, p1, v7}, Landroid/app/PropertyInvalidatedCache;->maybeCheckConsistency(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1754
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 1693
    .end local v5    # "cachedResult":Ljava/lang/Object;, "TResult;"
    .end local v6    # "cacheHit":Z
    .end local v7    # "result":Ljava/lang/Object;, "TResult;"
    :catchall_3
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1
.end method

.method protected queryToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2055
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    .local p1, "query":Ljava/lang/Object;, "TQuery;"
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)TResult;"
        }
    .end annotation

    .line 1504
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    .local p1, "query":Ljava/lang/Object;, "TQuery;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mComputer:Landroid/app/PropertyInvalidatedCache$QueryHandler;

    invoke-virtual {v0, p1}, Landroid/app/PropertyInvalidatedCache$QueryHandler;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected refresh(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;TQuery;)TResult;"
        }
    .end annotation

    .line 1545
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    .local p1, "oldResult":Ljava/lang/Object;, "TResult;"
    .local p2, "query":Ljava/lang/Object;, "TQuery;"
    return-object p1
.end method

.method public resultEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;TResult;)Z"
        }
    .end annotation

    .line 1525
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    .local p1, "cachedResult":Ljava/lang/Object;, "TResult;"
    .local p2, "fetchedResult":Ljava/lang/Object;, "TResult;"
    if-eqz p2, :cond_0

    .line 1526
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1528
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 2

    .line 2085
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2086
    :try_start_0
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-virtual {v1}, Landroid/app/PropertyInvalidatedCache$CacheMap;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 2087
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public testPropertyName()V
    .locals 3

    .line 1464
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1465
    :try_start_0
    sget-boolean v1, Landroid/app/PropertyInvalidatedCache;->sTestMode:Z

    if-eqz v1, :cond_0

    .line 1468
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->setTestMode(Z)V

    .line 1469
    monitor-exit v0

    .line 1470
    return-void

    .line 1466
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cannot test property name with test mode off"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    throw v1

    .line 1469
    .restart local p0    # "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public uncorkInvalidations()V
    .locals 1

    .line 1818
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->uncork()V

    .line 1819
    return-void
.end method
