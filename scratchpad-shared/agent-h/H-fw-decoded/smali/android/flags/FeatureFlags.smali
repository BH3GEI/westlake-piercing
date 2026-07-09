.class public Landroid/flags/FeatureFlags;
.super Ljava/lang/Object;
.source "FeatureFlags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/flags/FeatureFlags$ChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FeatureFlags"

.field private static sInstance:Landroid/flags/FeatureFlags;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private final mBooleanOverrides:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDirtyFlags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/flags/Flag<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mIFeatureFlags:Landroid/flags/IFeatureFlags;

.field private final mIFeatureFlagsCallback:Landroid/flags/IFeatureFlagsCallback;

.field private final mKnownFlags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/flags/Flag<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/flags/FeatureFlags$ChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmKnownFlags(Landroid/flags/FeatureFlags;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Landroid/flags/FeatureFlags;->mKnownFlags:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$maddBooleanOverride(Landroid/flags/FeatureFlags;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/flags/FeatureFlags;->addBooleanOverride(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smflagEqualsSyncableFlag(Landroid/flags/Flag;Landroid/flags/SyncableFlag;)Z
    .locals 0

    invoke-static {p0, p1}, Landroid/flags/FeatureFlags;->flagEqualsSyncableFlag(Landroid/flags/Flag;Landroid/flags/SyncableFlag;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/flags/FeatureFlags;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/flags/FeatureFlags;-><init>(Landroid/flags/IFeatureFlags;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/flags/IFeatureFlags;)V
    .locals 3
    .param p1, "iFeatureFlags"    # Landroid/flags/IFeatureFlags;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/flags/FeatureFlags;->mKnownFlags:Ljava/util/Set;

    .line 51
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/flags/FeatureFlags;->mDirtyFlags:Ljava/util/Set;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/flags/FeatureFlags;->mBooleanOverrides:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/flags/FeatureFlags;->mListeners:Ljava/util/Set;

    .line 80
    new-instance v0, Landroid/flags/FeatureFlags$1;

    invoke-direct {v0, p0}, Landroid/flags/FeatureFlags$1;-><init>(Landroid/flags/FeatureFlags;)V

    iput-object v0, p0, Landroid/flags/FeatureFlags;->mIFeatureFlagsCallback:Landroid/flags/IFeatureFlagsCallback;

    .line 107
    iput-object p1, p0, Landroid/flags/FeatureFlags;->mIFeatureFlags:Landroid/flags/IFeatureFlags;

    .line 109
    iget-object v0, p0, Landroid/flags/FeatureFlags;->mIFeatureFlags:Landroid/flags/IFeatureFlags;

    if-eqz v0, :cond_0

    .line 111
    :try_start_0
    iget-object v0, p0, Landroid/flags/FeatureFlags;->mIFeatureFlags:Landroid/flags/IFeatureFlags;

    iget-object v1, p0, Landroid/flags/FeatureFlags;->mIFeatureFlagsCallback:Landroid/flags/IFeatureFlagsCallback;

    invoke-interface {v0, v1}, Landroid/flags/IFeatureFlags;->registerCallback(Landroid/flags/IFeatureFlagsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FeatureFlags"

    const-string v2, "Could not register callbacks!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private addBooleanOverride(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "override"    # Ljava/lang/String;

    .line 312
    iget-object v0, p0, Landroid/flags/FeatureFlags;->mBooleanOverrides:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 313
    .local v0, "nsOverrides":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-nez v0, :cond_0

    .line 314
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 315
    iget-object v1, p0, Landroid/flags/FeatureFlags;->mBooleanOverrides:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_0
    invoke-static {p3}, Landroid/flags/FeatureFlags;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    return-void
.end method

.method private addFlag(Landroid/flags/Flag;)Landroid/flags/Flag;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/flags/Flag<",
            "*>;>(TT;)TT;"
        }
    .end annotation

    .line 246
    .local p1, "flag":Landroid/flags/Flag;, "TT;"
    const-class v0, Landroid/flags/FeatureFlags;

    monitor-enter v0

    .line 247
    :try_start_0
    iget-object v1, p0, Landroid/flags/FeatureFlags;->mDirtyFlags:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v1, p0, Landroid/flags/FeatureFlags;->mKnownFlags:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 249
    monitor-exit v0

    .line 250
    return-object p1

    .line 249
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private bind()Landroid/flags/IFeatureFlags;
    .locals 3

    .line 329
    iget-object v0, p0, Landroid/flags/FeatureFlags;->mIFeatureFlags:Landroid/flags/IFeatureFlags;

    if-nez v0, :cond_0

    .line 330
    nop

    .line 331
    const-string v0, "feature_flags"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 330
    invoke-static {v0}, Landroid/flags/IFeatureFlags$Stub;->asInterface(Landroid/os/IBinder;)Landroid/flags/IFeatureFlags;

    move-result-object v0

    iput-object v0, p0, Landroid/flags/FeatureFlags;->mIFeatureFlags:Landroid/flags/IFeatureFlags;

    .line 333
    :try_start_0
    iget-object v0, p0, Landroid/flags/FeatureFlags;->mIFeatureFlags:Landroid/flags/IFeatureFlags;

    iget-object v1, p0, Landroid/flags/FeatureFlags;->mIFeatureFlagsCallback:Landroid/flags/IFeatureFlagsCallback;

    invoke-interface {v0, v1}, Landroid/flags/IFeatureFlags;->registerCallback(Landroid/flags/IFeatureFlagsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FeatureFlags"

    const-string v2, "Failed to listen for flag changes!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/flags/FeatureFlags;->mIFeatureFlags:Landroid/flags/IFeatureFlags;

    return-object v0
.end method

.method public static booleanFlag(Ljava/lang/String;Ljava/lang/String;Z)Landroid/flags/BooleanFlag;
    .locals 2
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .line 128
    invoke-static {}, Landroid/flags/FeatureFlags;->getInstance()Landroid/flags/FeatureFlags;

    move-result-object v0

    new-instance v1, Landroid/flags/BooleanFlag;

    invoke-direct {v1, p0, p1, p2}, Landroid/flags/BooleanFlag;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, Landroid/flags/FeatureFlags;->addFlag(Landroid/flags/Flag;)Landroid/flags/Flag;

    move-result-object v0

    check-cast v0, Landroid/flags/BooleanFlag;

    return-object v0
.end method

.method public static dynamicBooleanFlag(Ljava/lang/String;Ljava/lang/String;Z)Landroid/flags/DynamicBooleanFlag;
    .locals 2
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .line 162
    invoke-static {}, Landroid/flags/FeatureFlags;->getInstance()Landroid/flags/FeatureFlags;

    move-result-object v0

    new-instance v1, Landroid/flags/DynamicBooleanFlag;

    invoke-direct {v1, p0, p1, p2}, Landroid/flags/DynamicBooleanFlag;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, Landroid/flags/FeatureFlags;->addFlag(Landroid/flags/Flag;)Landroid/flags/Flag;

    move-result-object v0

    check-cast v0, Landroid/flags/DynamicBooleanFlag;

    return-object v0
.end method

.method private static flagEqualsSyncableFlag(Landroid/flags/Flag;Landroid/flags/SyncableFlag;)Z
    .locals 2
    .param p1, "sf"    # Landroid/flags/SyncableFlag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/flags/Flag<",
            "*>;",
            "Landroid/flags/SyncableFlag;",
            ")Z"
        }
    .end annotation

    .line 362
    .local p0, "f":Landroid/flags/Flag;, "Landroid/flags/Flag<*>;"
    invoke-interface {p0}, Landroid/flags/Flag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroid/flags/Flag;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private flagToSyncableFlag(Landroid/flags/Flag;)Landroid/flags/SyncableFlag;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/flags/Flag<",
            "*>;)",
            "Landroid/flags/SyncableFlag;"
        }
    .end annotation

    .line 321
    .local p1, "f":Landroid/flags/Flag;, "Landroid/flags/Flag<*>;"
    new-instance v0, Landroid/flags/SyncableFlag;

    .line 322
    invoke-interface {p1}, Landroid/flags/Flag;->getNamespace()Ljava/lang/String;

    move-result-object v1

    .line 323
    invoke-interface {p1}, Landroid/flags/Flag;->getName()Ljava/lang/String;

    move-result-object v2

    .line 324
    invoke-interface {p1}, Landroid/flags/Flag;->getDefault()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    instance-of v4, p1, Landroid/flags/DynamicFlag;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/flags/SyncableFlag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 321
    return-object v0
.end method

.method public static fusedOffFlag(Ljava/lang/String;Ljava/lang/String;)Landroid/flags/FusedOffFlag;
    .locals 2
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .line 139
    invoke-static {}, Landroid/flags/FeatureFlags;->getInstance()Landroid/flags/FeatureFlags;

    move-result-object v0

    new-instance v1, Landroid/flags/FusedOffFlag;

    invoke-direct {v1, p0, p1}, Landroid/flags/FusedOffFlag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/flags/FeatureFlags;->addFlag(Landroid/flags/Flag;)Landroid/flags/Flag;

    move-result-object v0

    check-cast v0, Landroid/flags/FusedOffFlag;

    return-object v0
.end method

.method public static fusedOnFlag(Ljava/lang/String;Ljava/lang/String;)Landroid/flags/FusedOnFlag;
    .locals 2
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .line 150
    invoke-static {}, Landroid/flags/FeatureFlags;->getInstance()Landroid/flags/FeatureFlags;

    move-result-object v0

    new-instance v1, Landroid/flags/FusedOnFlag;

    invoke-direct {v1, p0, p1}, Landroid/flags/FusedOnFlag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/flags/FeatureFlags;->addFlag(Landroid/flags/Flag;)Landroid/flags/Flag;

    move-result-object v0

    check-cast v0, Landroid/flags/FusedOnFlag;

    return-object v0
.end method

.method private getBooleanInternal(Landroid/flags/Flag;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/flags/Flag<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 232
    .local p1, "flag":Landroid/flags/Flag;, "Landroid/flags/Flag<Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Landroid/flags/FeatureFlags;->sync()V

    .line 233
    iget-object v0, p0, Landroid/flags/FeatureFlags;->mBooleanOverrides:Ljava/util/Map;

    invoke-interface {p1}, Landroid/flags/Flag;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 234
    .local v0, "ns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    .line 235
    .local v1, "value":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 236
    invoke-interface {p1}, Landroid/flags/Flag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/Boolean;

    .line 238
    :cond_0
    if-eqz v1, :cond_1

    .line 242
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 239
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Boolean flag being read but was not synced: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInstance()Landroid/flags/FeatureFlags;
    .locals 2

    .line 63
    sget-object v0, Landroid/flags/FeatureFlags;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Landroid/flags/FeatureFlags;->sInstance:Landroid/flags/FeatureFlags;

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Landroid/flags/FeatureFlags;

    invoke-direct {v1}, Landroid/flags/FeatureFlags;-><init>()V

    sput-object v1, Landroid/flags/FeatureFlags;->sInstance:Landroid/flags/FeatureFlags;

    .line 67
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    sget-object v0, Landroid/flags/FeatureFlags;->sInstance:Landroid/flags/FeatureFlags;

    return-object v0

    .line 67
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static parseBoolean(Ljava/lang/String;)Z
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .line 344
    const-string/jumbo v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 345
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 346
    const-string/jumbo v0, "t"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 347
    const-string/jumbo v0, "on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 348
    .local v0, "result":Z
    :goto_1
    if-nez v0, :cond_2

    .line 349
    const-string v1, "false"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 350
    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 351
    const-string v1, "f"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 352
    const-string/jumbo v1, "off"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried parsing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as boolean but it doesn\'t look like one. Value expected to be one of true|false, 1|0, t|f, on|off."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FeatureFlags"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_2
    return v0
.end method

.method public static setInstance(Landroid/flags/FeatureFlags;)V
    .locals 2
    .param p0, "instance"    # Landroid/flags/FeatureFlags;

    .line 75
    sget-object v0, Landroid/flags/FeatureFlags;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_0
    sput-object p0, Landroid/flags/FeatureFlags;->sInstance:Landroid/flags/FeatureFlags;

    .line 77
    monitor-exit v0

    .line 78
    return-void

    .line 77
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addChangeListener(Landroid/flags/FeatureFlags$ChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/flags/FeatureFlags$ChangeListener;

    .line 173
    iget-object v0, p0, Landroid/flags/FeatureFlags;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method

.method public isCurrentlyEnabled(Landroid/flags/DynamicBooleanFlag;)Z
    .locals 1
    .param p1, "flag"    # Landroid/flags/DynamicBooleanFlag;

    .line 228
    invoke-direct {p0, p1}, Landroid/flags/FeatureFlags;->getBooleanInternal(Landroid/flags/Flag;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Landroid/flags/BooleanFlag;)Z
    .locals 1
    .param p1, "flag"    # Landroid/flags/BooleanFlag;

    .line 201
    invoke-direct {p0, p1}, Landroid/flags/FeatureFlags;->getBooleanInternal(Landroid/flags/Flag;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Landroid/flags/FusedOffFlag;)Z
    .locals 1
    .param p1, "flag"    # Landroid/flags/FusedOffFlag;

    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(Landroid/flags/FusedOnFlag;)Z
    .locals 1
    .param p1, "flag"    # Landroid/flags/FusedOnFlag;

    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method protected onFlagChange(Landroid/flags/DynamicFlag;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/flags/DynamicFlag<",
            "*>;)V"
        }
    .end annotation

    .line 188
    .local p1, "flag":Landroid/flags/DynamicFlag;, "Landroid/flags/DynamicFlag<*>;"
    iget-object v0, p0, Landroid/flags/FeatureFlags;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/flags/FeatureFlags$ChangeListener;

    .line 189
    .local v1, "l":Landroid/flags/FeatureFlags$ChangeListener;
    invoke-interface {v1, p1}, Landroid/flags/FeatureFlags$ChangeListener;->onFlagChanged(Landroid/flags/DynamicFlag;)V

    .line 190
    .end local v1    # "l":Landroid/flags/FeatureFlags$ChangeListener;
    goto :goto_0

    .line 191
    :cond_0
    return-void
.end method

.method public removeChangeListener(Landroid/flags/FeatureFlags$ChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/flags/FeatureFlags$ChangeListener;

    .line 184
    iget-object v0, p0, Landroid/flags/FeatureFlags;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 185
    return-void
.end method

.method public sync()V
    .locals 2

    .line 260
    const-class v0, Landroid/flags/FeatureFlags;

    monitor-enter v0

    .line 261
    :try_start_0
    iget-object v1, p0, Landroid/flags/FeatureFlags;->mDirtyFlags:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    monitor-exit v0

    return-void

    .line 264
    :cond_0
    iget-object v1, p0, Landroid/flags/FeatureFlags;->mDirtyFlags:Ljava/util/Set;

    invoke-virtual {p0, v1}, Landroid/flags/FeatureFlags;->syncInternal(Ljava/util/Set;)V

    .line 265
    iget-object v1, p0, Landroid/flags/FeatureFlags;->mDirtyFlags:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 266
    monitor-exit v0

    .line 267
    return-void

    .line 266
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected syncInternal(Ljava/util/Set;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/flags/Flag<",
            "*>;>;)V"
        }
    .end annotation

    .line 275
    .local p1, "dirtyFlags":Ljava/util/Set;, "Ljava/util/Set<Landroid/flags/Flag<*>;>;"
    invoke-direct {p0}, Landroid/flags/FeatureFlags;->bind()Landroid/flags/IFeatureFlags;

    move-result-object v0

    .line 276
    .local v0, "iFeatureFlags":Landroid/flags/IFeatureFlags;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v1, "syncableFlags":Ljava/util/List;, "Ljava/util/List<Landroid/flags/SyncableFlag;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/flags/Flag;

    .line 278
    .local v3, "f":Landroid/flags/Flag;, "Landroid/flags/Flag<*>;"
    invoke-direct {p0, v3}, Landroid/flags/FeatureFlags;->flagToSyncableFlag(Landroid/flags/Flag;)Landroid/flags/SyncableFlag;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    .end local v3    # "f":Landroid/flags/Flag;, "Landroid/flags/Flag<*>;"
    goto :goto_0

    .line 281
    :cond_0
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v2

    .line 284
    .local v2, "serverFlags":Ljava/util/List;, "Ljava/util/List<Landroid/flags/SyncableFlag;>;"
    :try_start_0
    invoke-interface {v0, v1}, Landroid/flags/IFeatureFlags;->syncFlags(Ljava/util/List;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 287
    goto :goto_1

    .line 285
    :catch_0
    move-exception v3

    .line 286
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 289
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/flags/Flag;

    .line 290
    .local v4, "f":Landroid/flags/Flag;, "Landroid/flags/Flag<*>;"
    const/4 v5, 0x0

    .line 291
    .local v5, "found":Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/flags/SyncableFlag;

    .line 292
    .local v7, "sf":Landroid/flags/SyncableFlag;
    invoke-static {v4, v7}, Landroid/flags/FeatureFlags;->flagEqualsSyncableFlag(Landroid/flags/Flag;Landroid/flags/SyncableFlag;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 293
    instance-of v6, v4, Landroid/flags/BooleanFlag;

    if-nez v6, :cond_1

    instance-of v6, v4, Landroid/flags/DynamicBooleanFlag;

    if-eqz v6, :cond_2

    .line 294
    :cond_1
    invoke-virtual {v7}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Landroid/flags/SyncableFlag;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v6, v8, v9}, Landroid/flags/FeatureFlags;->addBooleanOverride(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_2
    const/4 v5, 0x1

    .line 297
    goto :goto_4

    .line 299
    .end local v7    # "sf":Landroid/flags/SyncableFlag;
    :cond_3
    goto :goto_3

    .line 300
    :cond_4
    :goto_4
    if-nez v5, :cond_6

    .line 301
    instance-of v6, v4, Landroid/flags/BooleanFlag;

    if-eqz v6, :cond_6

    .line 302
    nop

    .line 303
    invoke-interface {v4}, Landroid/flags/Flag;->getNamespace()Ljava/lang/String;

    move-result-object v6

    .line 304
    invoke-interface {v4}, Landroid/flags/Flag;->getName()Ljava/lang/String;

    move-result-object v7

    .line 305
    move-object v8, v4

    check-cast v8, Landroid/flags/BooleanFlag;

    invoke-virtual {v8}, Landroid/flags/BooleanFlag;->getDefault()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string/jumbo v8, "true"

    goto :goto_5

    :cond_5
    const-string v8, "false"

    .line 302
    :goto_5
    invoke-direct {p0, v6, v7, v8}, Landroid/flags/FeatureFlags;->addBooleanOverride(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .end local v4    # "f":Landroid/flags/Flag;, "Landroid/flags/Flag<*>;"
    .end local v5    # "found":Z
    :cond_6
    goto :goto_2

    .line 309
    :cond_7
    return-void
.end method
