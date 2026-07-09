.class public final Landroid/hardware/location/ContextHubManager;
.super Ljava/lang/Object;
.source "ContextHubManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/ContextHubManager$Callback;,
        Landroid/hardware/location/ContextHubManager$ICallback;,
        Landroid/hardware/location/ContextHubManager$Event;,
        Landroid/hardware/location/ContextHubManager$AuthorizationState;
    }
.end annotation


# static fields
.field public static final whitelist AUTHORIZATION_DENIED:I = 0x0

.field public static final whitelist AUTHORIZATION_DENIED_GRACE_PERIOD:I = 0x1

.field public static final whitelist AUTHORIZATION_GRANTED:I = 0x2

.field public static final whitelist EVENT_CLIENT_AUTHORIZATION:I = 0x7

.field public static final whitelist EVENT_HUB_RESET:I = 0x6

.field public static final whitelist EVENT_NANOAPP_ABORTED:I = 0x4

.field public static final whitelist EVENT_NANOAPP_DISABLED:I = 0x3

.field public static final whitelist EVENT_NANOAPP_ENABLED:I = 0x2

.field public static final whitelist EVENT_NANOAPP_LOADED:I = 0x0

.field public static final whitelist EVENT_NANOAPP_MESSAGE:I = 0x5

.field public static final whitelist EVENT_NANOAPP_UNLOADED:I = 0x1

.field public static final whitelist EXTRA_CLIENT_AUTHORIZATION_STATE:Ljava/lang/String; = "android.hardware.location.extra.CLIENT_AUTHORIZATION_STATE"

.field public static final whitelist EXTRA_CONTEXT_HUB_INFO:Ljava/lang/String; = "android.hardware.location.extra.CONTEXT_HUB_INFO"

.field public static final whitelist EXTRA_EVENT_TYPE:Ljava/lang/String; = "android.hardware.location.extra.EVENT_TYPE"

.field public static final whitelist EXTRA_MESSAGE:Ljava/lang/String; = "android.hardware.location.extra.MESSAGE"

.field public static final whitelist EXTRA_NANOAPP_ABORT_CODE:Ljava/lang/String; = "android.hardware.location.extra.NANOAPP_ABORT_CODE"

.field public static final whitelist EXTRA_NANOAPP_ID:Ljava/lang/String; = "android.hardware.location.extra.NANOAPP_ID"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ContextHubManager"


# instance fields
.field private greylist-max-o mCallback:Landroid/hardware/location/ContextHubManager$Callback;

.field private greylist-max-o mCallbackHandler:Landroid/os/Handler;

.field private final greylist-max-o mClientCallback:Landroid/hardware/location/IContextHubCallback$Stub;

.field private blacklist mDiscoveryCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;",
            "Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final greylist-max-o mMainLooper:Landroid/os/Looper;

.field private final greylist-max-o mService:Landroid/hardware/location/IContextHubService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/hardware/location/ContextHubManager;)Landroid/hardware/location/ContextHubManager$Callback;
    .locals 0

    iget-object p0, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallbackHandler(Landroid/hardware/location/ContextHubManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/hardware/location/ContextHubManager;->mCallbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocalCallback(Landroid/hardware/location/ContextHubManager;)Landroid/hardware/location/ContextHubManager$ICallback;
    .locals 0

    iget-object p0, p0, Landroid/hardware/location/ContextHubManager;->mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMatchingEndpointDiscoveryList(Landroid/hardware/location/ContextHubManager;[Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/location/ContextHubManager;->getMatchingEndpointDiscoveryList([Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$minvokeOnMessageReceiptCallback(Landroid/hardware/location/ContextHubManager;IILandroid/hardware/location/ContextHubMessage;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/location/ContextHubManager;->invokeOnMessageReceiptCallback(IILandroid/hardware/location/ContextHubMessage;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/location/IContextHubService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "service"    # Landroid/hardware/location/IContextHubService;
    .param p2, "mainLooper"    # Landroid/os/Looper;

    .line 1533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/location/ContextHubManager;->mDiscoveryCallbacks:Ljava/util/Map;

    .line 1515
    new-instance v0, Landroid/hardware/location/ContextHubManager$4;

    invoke-direct {v0, p0}, Landroid/hardware/location/ContextHubManager$4;-><init>(Landroid/hardware/location/ContextHubManager;)V

    iput-object v0, p0, Landroid/hardware/location/ContextHubManager;->mClientCallback:Landroid/hardware/location/IContextHubCallback$Stub;

    .line 1534
    const-string v0, "service cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1535
    const-string v0, "mainLooper cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1536
    iput-object p1, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    .line 1537
    iput-object p2, p0, Landroid/hardware/location/ContextHubManager;->mMainLooper:Landroid/os/Looper;

    .line 1540
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    iget-object v1, p0, Landroid/hardware/location/ContextHubManager;->mClientCallback:Landroid/hardware/location/IContextHubCallback$Stub;

    invoke-interface {v0, v1}, Landroid/hardware/location/IContextHubService;->registerCallback(Landroid/hardware/location/IContextHubCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1543
    nop

    .line 1544
    return-void

    .line 1541
    :catch_0
    move-exception v0

    .line 1542
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private greylist-max-o createClientCallback(Landroid/hardware/location/ContextHubClient;Landroid/hardware/location/ContextHubClientCallback;Ljava/util/concurrent/Executor;)Landroid/hardware/location/IContextHubClientCallback;
    .locals 1
    .param p1, "client"    # Landroid/hardware/location/ContextHubClient;
    .param p2, "callback"    # Landroid/hardware/location/ContextHubClientCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 1053
    new-instance v0, Landroid/hardware/location/ContextHubManager$3;

    invoke-direct {v0, p0, p3, p2, p1}, Landroid/hardware/location/ContextHubManager$3;-><init>(Landroid/hardware/location/ContextHubManager;Ljava/util/concurrent/Executor;Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;)V

    return-object v0
.end method

.method private blacklist createDiscoveryCallback(Landroid/hardware/location/IContextHubService;Ljava/util/concurrent/Executor;Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;Ljava/lang/String;)Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;
    .locals 6
    .param p1, "service"    # Landroid/hardware/location/IContextHubService;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;
    .param p4, "serviceDescriptor"    # Ljava/lang/String;

    .line 778
    new-instance v0, Landroid/hardware/location/ContextHubManager$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v4, p4

    .end local p1    # "service":Landroid/hardware/location/IContextHubService;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;
    .end local p4    # "serviceDescriptor":Ljava/lang/String;
    .local v2, "service":Landroid/hardware/location/IContextHubService;
    .local v3, "executor":Ljava/util/concurrent/Executor;
    .local v4, "serviceDescriptor":Ljava/lang/String;
    .local v5, "callback":Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;
    invoke-direct/range {v0 .. v5}, Landroid/hardware/location/ContextHubManager$2;-><init>(Landroid/hardware/location/ContextHubManager;Landroid/hardware/location/IContextHubService;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;)V

    return-object v0
.end method

.method private greylist-max-o createQueryCallback(Landroid/hardware/location/ContextHubTransaction;)Landroid/hardware/location/IContextHubTransactionCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/location/ContextHubTransaction<",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;>;)",
            "Landroid/hardware/location/IContextHubTransactionCallback;"
        }
    .end annotation

    .line 530
    .local p1, "transaction":Landroid/hardware/location/ContextHubTransaction;, "Landroid/hardware/location/ContextHubTransaction<Ljava/util/List<Landroid/hardware/location/NanoAppState;>;>;"
    new-instance v0, Landroid/hardware/location/ContextHubManager$1;

    invoke-direct {v0, p0, p1}, Landroid/hardware/location/ContextHubManager$1;-><init>(Landroid/hardware/location/ContextHubManager;Landroid/hardware/location/ContextHubTransaction;)V

    return-object v0
.end method

.method private blacklist getMatchingEndpointDiscoveryList([Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "hubEndpointInfoList"    # [Landroid/hardware/contexthub/HubEndpointInfo;
    .param p2, "serviceDescriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/contexthub/HubEndpointInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/contexthub/HubDiscoveryInfo;",
            ">;"
        }
    .end annotation

    .line 844
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 845
    .local v0, "discoveryList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/HubDiscoveryInfo;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 846
    .local v3, "info":Landroid/hardware/contexthub/HubEndpointInfo;
    if-eqz p2, :cond_2

    .line 847
    invoke-virtual {v3}, Landroid/hardware/contexthub/HubEndpointInfo;->getServiceInfoCollection()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/contexthub/HubServiceInfo;

    .line 848
    .local v5, "sInfo":Landroid/hardware/contexthub/HubServiceInfo;
    invoke-virtual {v5}, Landroid/hardware/contexthub/HubServiceInfo;->getServiceDescriptor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 849
    new-instance v6, Landroid/hardware/contexthub/HubDiscoveryInfo;

    invoke-direct {v6, v3, v5}, Landroid/hardware/contexthub/HubDiscoveryInfo;-><init>(Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/HubServiceInfo;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 851
    .end local v5    # "sInfo":Landroid/hardware/contexthub/HubServiceInfo;
    :cond_0
    goto :goto_1

    :cond_1
    goto :goto_2

    .line 853
    :cond_2
    new-instance v4, Landroid/hardware/contexthub/HubDiscoveryInfo;

    invoke-direct {v4, v3}, Landroid/hardware/contexthub/HubDiscoveryInfo;-><init>(Landroid/hardware/contexthub/HubEndpointInfo;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 845
    .end local v3    # "info":Landroid/hardware/contexthub/HubEndpointInfo;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 856
    :cond_3
    return-object v0
.end method

.method private declared-synchronized blacklist invokeOnMessageReceiptCallback(IILandroid/hardware/location/ContextHubMessage;)V
    .locals 1
    .param p1, "hubId"    # I
    .param p2, "nanoAppId"    # I
    .param p3, "message"    # Landroid/hardware/location/ContextHubMessage;

    monitor-enter p0

    .line 1510
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    if-eqz v0, :cond_0

    .line 1511
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/location/ContextHubManager$Callback;->onMessageReceipt(IILandroid/hardware/location/ContextHubMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1513
    .end local p0    # "this":Landroid/hardware/location/ContextHubManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 1509
    .end local p1    # "hubId":I
    .end local p2    # "nanoAppId":I
    .end local p3    # "message":Landroid/hardware/location/ContextHubMessage;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public whitelist createClient(Landroid/content/Context;Landroid/hardware/location/ContextHubInfo;Landroid/app/PendingIntent;J)Landroid/hardware/location/ContextHubClient;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hubInfo"    # Landroid/hardware/location/ContextHubInfo;
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "nanoAppId"    # J

    .line 1265
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    invoke-virtual {p3}, Landroid/app/PendingIntent;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1271
    new-instance v0, Landroid/hardware/location/ContextHubClient;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Landroid/hardware/location/ContextHubClient;-><init>(Landroid/hardware/location/ContextHubInfo;Z)V

    move-object v1, v0

    .line 1273
    .local v1, "client":Landroid/hardware/location/ContextHubClient;
    const/4 v0, 0x0

    .line 1274
    .local v0, "attributionTag":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1275
    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    .line 1274
    :cond_0
    move-object v7, v0

    .line 1280
    .end local v0    # "attributionTag":Ljava/lang/String;
    .local v7, "attributionTag":Ljava/lang/String;
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    .line 1281
    invoke-virtual {p2}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1280
    move-object v4, p3

    move-wide v5, p4

    .end local p3    # "pendingIntent":Landroid/app/PendingIntent;
    .end local p4    # "nanoAppId":J
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    .local v5, "nanoAppId":J
    :try_start_1
    invoke-interface/range {v2 .. v7}, Landroid/hardware/location/IContextHubService;->createPendingIntentClient(ILandroid/app/PendingIntent;JLjava/lang/String;)Landroid/hardware/location/IContextHubClient;

    move-result-object p3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1284
    .local p3, "clientProxy":Landroid/hardware/location/IContextHubClient;
    nop

    .line 1286
    invoke-virtual {v1, p3}, Landroid/hardware/location/ContextHubClient;->setClientProxy(Landroid/hardware/location/IContextHubClient;)V

    .line 1287
    return-object v1

    .line 1282
    .end local p3    # "clientProxy":Landroid/hardware/location/IContextHubClient;
    :catch_0
    move-exception v0

    move-object p3, v0

    goto :goto_1

    .end local v4    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v5    # "nanoAppId":J
    .local p3, "pendingIntent":Landroid/app/PendingIntent;
    .restart local p4    # "nanoAppId":J
    :catch_1
    move-exception v0

    move-object v4, p3

    move-wide v5, p4

    move-object p3, v0

    .line 1283
    .end local p4    # "nanoAppId":J
    .restart local v4    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v5    # "nanoAppId":J
    .local p3, "e":Landroid/os/RemoteException;
    :goto_1
    invoke-virtual {p3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p4

    throw p4

    .line 1268
    .end local v1    # "client":Landroid/hardware/location/ContextHubClient;
    .end local v4    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v5    # "nanoAppId":J
    .end local v7    # "attributionTag":Ljava/lang/String;
    .local p3, "pendingIntent":Landroid/app/PendingIntent;
    .restart local p4    # "nanoAppId":J
    :cond_1
    move-object v4, p3

    move-wide v5, p4

    .end local p3    # "pendingIntent":Landroid/app/PendingIntent;
    .end local p4    # "nanoAppId":J
    .restart local v4    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v5    # "nanoAppId":J
    new-instance p3, Ljava/lang/IllegalArgumentException;

    const-string p4, "PendingIntent must be mutable"

    invoke-direct {p3, p4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public whitelist createClient(Landroid/content/Context;Landroid/hardware/location/ContextHubInfo;Ljava/util/concurrent/Executor;Landroid/hardware/location/ContextHubClientCallback;)Landroid/hardware/location/ContextHubClient;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hubInfo"    # Landroid/hardware/location/ContextHubInfo;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/hardware/location/ContextHubClientCallback;

    .line 1158
    const-string v0, "Callback cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1159
    const-string v0, "ContextHubInfo cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1160
    const-string v0, "Executor cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1162
    new-instance v0, Landroid/hardware/location/ContextHubClient;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroid/hardware/location/ContextHubClient;-><init>(Landroid/hardware/location/ContextHubInfo;Z)V

    .line 1163
    .local v0, "client":Landroid/hardware/location/ContextHubClient;
    invoke-direct {p0, v0, p4, p3}, Landroid/hardware/location/ContextHubManager;->createClientCallback(Landroid/hardware/location/ContextHubClient;Landroid/hardware/location/ContextHubClientCallback;Ljava/util/concurrent/Executor;)Landroid/hardware/location/IContextHubClientCallback;

    move-result-object v1

    .line 1166
    .local v1, "clientInterface":Landroid/hardware/location/IContextHubClientCallback;
    const/4 v2, 0x0

    .line 1167
    .local v2, "attributionTag":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1168
    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1173
    :cond_0
    if-eqz p1, :cond_1

    .line 1174
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .local v3, "packageName":Ljava/lang/String;
    goto :goto_0

    .line 1176
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1181
    .restart local v3    # "packageName":Ljava/lang/String;
    :goto_0
    :try_start_0
    iget-object v4, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    .line 1182
    invoke-virtual {p2}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v5

    .line 1181
    invoke-interface {v4, v5, v1, v2, v3}, Landroid/hardware/location/IContextHubService;->createClient(ILandroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/location/IContextHubClient;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1185
    .local v4, "clientProxy":Landroid/hardware/location/IContextHubClient;
    nop

    .line 1187
    invoke-virtual {v0, v4}, Landroid/hardware/location/ContextHubClient;->setClientProxy(Landroid/hardware/location/IContextHubClient;)V

    .line 1188
    return-object v0

    .line 1183
    .end local v4    # "clientProxy":Landroid/hardware/location/IContextHubClient;
    :catch_0
    move-exception v4

    .line 1184
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method

.method public whitelist createClient(Landroid/hardware/location/ContextHubInfo;Landroid/app/PendingIntent;J)Landroid/hardware/location/ContextHubClient;
    .locals 6
    .param p1, "hubInfo"    # Landroid/hardware/location/ContextHubInfo;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "nanoAppId"    # J

    .line 1297
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    .end local p1    # "hubInfo":Landroid/hardware/location/ContextHubInfo;
    .end local p2    # "pendingIntent":Landroid/app/PendingIntent;
    .end local p3    # "nanoAppId":J
    .local v2, "hubInfo":Landroid/hardware/location/ContextHubInfo;
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    .local v4, "nanoAppId":J
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/location/ContextHubManager;->createClient(Landroid/content/Context;Landroid/hardware/location/ContextHubInfo;Landroid/app/PendingIntent;J)Landroid/hardware/location/ContextHubClient;

    move-result-object p1

    return-object p1
.end method

.method public whitelist createClient(Landroid/hardware/location/ContextHubInfo;Landroid/hardware/location/ContextHubClientCallback;)Landroid/hardware/location/ContextHubClient;
    .locals 2
    .param p1, "hubInfo"    # Landroid/hardware/location/ContextHubInfo;
    .param p2, "callback"    # Landroid/hardware/location/ContextHubClientCallback;

    .line 1211
    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, p2}, Landroid/hardware/location/ContextHubManager;->createClient(Landroid/content/Context;Landroid/hardware/location/ContextHubInfo;Ljava/util/concurrent/Executor;Landroid/hardware/location/ContextHubClientCallback;)Landroid/hardware/location/ContextHubClient;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createClient(Landroid/hardware/location/ContextHubInfo;Landroid/hardware/location/ContextHubClientCallback;Ljava/util/concurrent/Executor;)Landroid/hardware/location/ContextHubClient;
    .locals 1
    .param p1, "hubInfo"    # Landroid/hardware/location/ContextHubInfo;
    .param p2, "callback"    # Landroid/hardware/location/ContextHubClientCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 1201
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p3, p2}, Landroid/hardware/location/ContextHubManager;->createClient(Landroid/content/Context;Landroid/hardware/location/ContextHubInfo;Ljava/util/concurrent/Executor;Landroid/hardware/location/ContextHubClientCallback;)Landroid/hardware/location/ContextHubClient;

    move-result-object v0

    return-object v0
.end method

.method public whitelist disableNanoApp(Landroid/hardware/location/ContextHubInfo;J)Landroid/hardware/location/ContextHubTransaction;
    .locals 4
    .param p1, "hubInfo"    # Landroid/hardware/location/ContextHubInfo;
    .param p2, "nanoAppId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/location/ContextHubInfo;",
            "J)",
            "Landroid/hardware/location/ContextHubTransaction<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 652
    const-string v0, "ContextHubInfo cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 654
    new-instance v0, Landroid/hardware/location/ContextHubTransaction;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/hardware/location/ContextHubTransaction;-><init>(I)V

    .line 656
    .local v0, "transaction":Landroid/hardware/location/ContextHubTransaction;, "Landroid/hardware/location/ContextHubTransaction<Ljava/lang/Void;>;"
    nop

    .line 657
    invoke-static {v0}, Landroid/hardware/location/ContextHubTransactionHelper;->createTransactionCallback(Landroid/hardware/location/ContextHubTransaction;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v1

    .line 660
    .local v1, "callback":Landroid/hardware/location/IContextHubTransactionCallback;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-virtual {p1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v3

    invoke-interface {v2, v3, v1, p2, p3}, Landroid/hardware/location/IContextHubService;->disableNanoApp(ILandroid/hardware/location/IContextHubTransactionCallback;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    nop

    .line 665
    return-object v0

    .line 661
    :catch_0
    move-exception v2

    .line 662
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public blacklist disableTestMode()Z
    .locals 2

    .line 1446
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/hardware/location/IContextHubService;->setTestMode(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1447
    :catch_0
    move-exception v0

    .line 1448
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist enableNanoApp(Landroid/hardware/location/ContextHubInfo;J)Landroid/hardware/location/ContextHubTransaction;
    .locals 4
    .param p1, "hubInfo"    # Landroid/hardware/location/ContextHubInfo;
    .param p2, "nanoAppId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/location/ContextHubInfo;",
            "J)",
            "Landroid/hardware/location/ContextHubTransaction<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 623
    const-string v0, "ContextHubInfo cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 625
    new-instance v0, Landroid/hardware/location/ContextHubTransaction;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/hardware/location/ContextHubTransaction;-><init>(I)V

    .line 627
    .local v0, "transaction":Landroid/hardware/location/ContextHubTransaction;, "Landroid/hardware/location/ContextHubTransaction<Ljava/lang/Void;>;"
    nop

    .line 628
    invoke-static {v0}, Landroid/hardware/location/ContextHubTransactionHelper;->createTransactionCallback(Landroid/hardware/location/ContextHubTransaction;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v1

    .line 631
    .local v1, "callback":Landroid/hardware/location/IContextHubTransactionCallback;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-virtual {p1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v3

    invoke-interface {v2, v3, v1, p2, p3}, Landroid/hardware/location/IContextHubService;->enableNanoApp(ILandroid/hardware/location/IContextHubTransactionCallback;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    nop

    .line 636
    return-object v0

    .line 632
    :catch_0
    move-exception v2

    .line 633
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public blacklist enableTestMode()Z
    .locals 2

    .line 1424
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/hardware/location/IContextHubService;->setTestMode(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1425
    :catch_0
    move-exception v0

    .line 1426
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist findEndpoints(J)Ljava/util/List;
    .locals 5
    .param p1, "endpointId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/hardware/contexthub/HubDiscoveryInfo;",
            ">;"
        }
    .end annotation

    .line 707
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0, p1, p2}, Landroid/hardware/location/IContextHubService;->findEndpoints(J)Ljava/util/List;

    move-result-object v0

    .line 708
    .local v0, "endpointInfos":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/HubEndpointInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 710
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/HubDiscoveryInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contexthub/HubEndpointInfo;

    .line 711
    .local v3, "endpointInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    new-instance v4, Landroid/hardware/contexthub/HubDiscoveryInfo;

    invoke-direct {v4, v3}, Landroid/hardware/contexthub/HubDiscoveryInfo;-><init>(Landroid/hardware/contexthub/HubEndpointInfo;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    nop

    .end local v3    # "endpointInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    goto :goto_0

    .line 713
    :cond_0
    return-object v1

    .line 714
    .end local v0    # "endpointInfos":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/HubEndpointInfo;>;"
    .end local v1    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/HubDiscoveryInfo;>;"
    :catch_0
    move-exception v0

    .line 715
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist findEndpoints(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "serviceDescriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/contexthub/HubDiscoveryInfo;",
            ">;"
        }
    .end annotation

    .line 743
    invoke-virtual {p1}, Ljava/lang/String;->isBlank()Z

    move-result v0

    if-nez v0, :cond_3

    .line 747
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    .line 748
    invoke-interface {v0, p1}, Landroid/hardware/location/IContextHubService;->findEndpointsWithService(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 749
    .local v0, "endpointInfos":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/HubEndpointInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 751
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/HubDiscoveryInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contexthub/HubEndpointInfo;

    .line 752
    .local v3, "endpointInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    invoke-virtual {v3}, Landroid/hardware/contexthub/HubEndpointInfo;->getServiceInfoCollection()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/contexthub/HubServiceInfo;

    .line 753
    .local v5, "serviceInfo":Landroid/hardware/contexthub/HubServiceInfo;
    invoke-virtual {v5}, Landroid/hardware/contexthub/HubServiceInfo;->getServiceDescriptor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 754
    new-instance v6, Landroid/hardware/contexthub/HubDiscoveryInfo;

    invoke-direct {v6, v3, v5}, Landroid/hardware/contexthub/HubDiscoveryInfo;-><init>(Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/HubServiceInfo;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    .end local v5    # "serviceInfo":Landroid/hardware/contexthub/HubServiceInfo;
    :cond_0
    goto :goto_1

    .line 757
    .end local v3    # "endpointInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    :cond_1
    goto :goto_0

    .line 758
    :cond_2
    return-object v1

    .line 759
    .end local v0    # "endpointInfos":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/HubEndpointInfo;>;"
    .end local v1    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/HubDiscoveryInfo;>;"
    :catch_0
    move-exception v0

    .line 760
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 744
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid service descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist findNanoAppOnHub(ILandroid/hardware/location/NanoAppFilter;)[I
    .locals 2
    .param p1, "hubHandle"    # I
    .param p2, "filter"    # Landroid/hardware/location/NanoAppFilter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 435
    invoke-static {}, Landroid/chre/flags/Flags;->removeOldContextHubApis()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    const/4 v0, 0x0

    return-object v0

    .line 440
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0, p1, p2}, Landroid/hardware/location/IContextHubService;->findNanoAppOnHub(ILandroid/hardware/location/NanoAppFilter;)[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getContextHubHandles()[I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 273
    invoke-static {}, Landroid/chre/flags/Flags;->removeOldContextHubApis()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    const/4 v0, 0x0

    return-object v0

    .line 278
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0}, Landroid/hardware/location/IContextHubService;->getContextHubHandles()[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getContextHubInfo(I)Landroid/hardware/location/ContextHubInfo;
    .locals 2
    .param p1, "hubHandle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 298
    invoke-static {}, Landroid/chre/flags/Flags;->removeOldContextHubApis()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    const/4 v0, 0x0

    return-object v0

    .line 303
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0, p1}, Landroid/hardware/location/IContextHubService;->getContextHubInfo(I)Landroid/hardware/location/ContextHubInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getContextHubs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/location/ContextHubInfo;",
            ">;"
        }
    .end annotation

    .line 495
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0}, Landroid/hardware/location/IContextHubService;->getContextHubs()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getHubs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/location/HubInfo;",
            ">;"
        }
    .end annotation

    .line 515
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0}, Landroid/hardware/location/IContextHubService;->getHubs()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 516
    :catch_0
    move-exception v0

    .line 517
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;
    .locals 2
    .param p1, "nanoAppHandle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 408
    invoke-static {}, Landroid/chre/flags/Flags;->removeOldContextHubApis()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    const/4 v0, 0x0

    return-object v0

    .line 413
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0, p1}, Landroid/hardware/location/IContextHubService;->getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getPreloadedNanoAppIds(Landroid/hardware/location/ContextHubInfo;)[J
    .locals 3
    .param p1, "hubInfo"    # Landroid/hardware/location/ContextHubInfo;

    .line 1392
    const-string v0, "hubInfo cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1394
    const/4 v0, 0x0

    .line 1396
    .local v0, "nanoappIds":[J
    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v1, p1}, Landroid/hardware/location/IContextHubService;->getPreloadedNanoAppIds(Landroid/hardware/location/ContextHubInfo;)[J

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1399
    .end local v0    # "nanoappIds":[J
    .local v1, "nanoappIds":[J
    nop

    .line 1401
    if-nez v1, :cond_0

    .line 1402
    const/4 v0, 0x0

    new-array v1, v0, [J

    .line 1404
    :cond_0
    return-object v1

    .line 1397
    .end local v1    # "nanoappIds":[J
    .restart local v0    # "nanoappIds":[J
    :catch_0
    move-exception v1

    .line 1398
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist loadNanoApp(ILandroid/hardware/location/NanoApp;)I
    .locals 2
    .param p1, "hubHandle"    # I
    .param p2, "app"    # Landroid/hardware/location/NanoApp;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 333
    invoke-static {}, Landroid/chre/flags/Flags;->removeOldContextHubApis()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    const/4 v0, -0x1

    return v0

    .line 338
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0, p1, p2}, Landroid/hardware/location/IContextHubService;->loadNanoApp(ILandroid/hardware/location/NanoApp;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist loadNanoApp(Landroid/hardware/location/ContextHubInfo;Landroid/hardware/location/NanoAppBinary;)Landroid/hardware/location/ContextHubTransaction;
    .locals 4
    .param p1, "hubInfo"    # Landroid/hardware/location/ContextHubInfo;
    .param p2, "appBinary"    # Landroid/hardware/location/NanoAppBinary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/location/ContextHubInfo;",
            "Landroid/hardware/location/NanoAppBinary;",
            ")",
            "Landroid/hardware/location/ContextHubTransaction<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 564
    const-string v0, "ContextHubInfo cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 565
    const-string v0, "NanoAppBinary cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 567
    new-instance v0, Landroid/hardware/location/ContextHubTransaction;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/hardware/location/ContextHubTransaction;-><init>(I)V

    .line 569
    .local v0, "transaction":Landroid/hardware/location/ContextHubTransaction;, "Landroid/hardware/location/ContextHubTransaction<Ljava/lang/Void;>;"
    nop

    .line 570
    invoke-static {v0}, Landroid/hardware/location/ContextHubTransactionHelper;->createTransactionCallback(Landroid/hardware/location/ContextHubTransaction;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v1

    .line 573
    .local v1, "callback":Landroid/hardware/location/IContextHubTransactionCallback;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-virtual {p1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v3

    invoke-interface {v2, v3, v1, p2}, Landroid/hardware/location/IContextHubService;->loadNanoAppOnHub(ILandroid/hardware/location/IContextHubTransactionCallback;Landroid/hardware/location/NanoAppBinary;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    nop

    .line 578
    return-object v0

    .line 574
    :catch_0
    move-exception v2

    .line 575
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public whitelist openSession(Landroid/hardware/contexthub/HubEndpoint;Landroid/hardware/contexthub/HubEndpointInfo;)V
    .locals 1
    .param p1, "hubEndpoint"    # Landroid/hardware/contexthub/HubEndpoint;
    .param p2, "destination"    # Landroid/hardware/contexthub/HubEndpointInfo;

    .line 1334
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/hardware/contexthub/HubEndpoint;->openSession(Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V

    .line 1335
    return-void
.end method

.method public whitelist openSession(Landroid/hardware/contexthub/HubEndpoint;Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "hubEndpoint"    # Landroid/hardware/contexthub/HubEndpoint;
    .param p2, "destination"    # Landroid/hardware/contexthub/HubEndpointInfo;
    .param p3, "serviceDescriptor"    # Ljava/lang/String;

    .line 1360
    invoke-virtual {p1, p2, p3}, Landroid/hardware/contexthub/HubEndpoint;->openSession(Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V

    .line 1361
    return-void
.end method

.method public whitelist queryNanoApps(Landroid/hardware/location/ContextHubInfo;)Landroid/hardware/location/ContextHubTransaction;
    .locals 4
    .param p1, "hubInfo"    # Landroid/hardware/location/ContextHubInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/location/ContextHubInfo;",
            ")",
            "Landroid/hardware/location/ContextHubTransaction<",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;>;"
        }
    .end annotation

    .line 680
    const-string v0, "ContextHubInfo cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 682
    new-instance v0, Landroid/hardware/location/ContextHubTransaction;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/hardware/location/ContextHubTransaction;-><init>(I)V

    .line 684
    .local v0, "transaction":Landroid/hardware/location/ContextHubTransaction;, "Landroid/hardware/location/ContextHubTransaction<Ljava/util/List<Landroid/hardware/location/NanoAppState;>;>;"
    invoke-direct {p0, v0}, Landroid/hardware/location/ContextHubManager;->createQueryCallback(Landroid/hardware/location/ContextHubTransaction;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v1

    .line 687
    .local v1, "callback":Landroid/hardware/location/IContextHubTransactionCallback;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-virtual {p1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v3

    invoke-interface {v2, v3, v1}, Landroid/hardware/location/IContextHubService;->queryNanoApps(ILandroid/hardware/location/IContextHubTransactionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    nop

    .line 692
    return-object v0

    .line 688
    :catch_0
    move-exception v2

    .line 689
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public whitelist registerCallback(Landroid/hardware/location/ContextHubManager$Callback;)I
    .locals 1
    .param p1, "callback"    # Landroid/hardware/location/ContextHubManager$Callback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 985
    invoke-static {}, Landroid/chre/flags/Flags;->removeOldContextHubApis()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 986
    const/4 v0, -0x1

    return v0

    .line 989
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/location/ContextHubManager;->registerCallback(Landroid/hardware/location/ContextHubManager$Callback;Landroid/os/Handler;)I

    move-result v0

    return v0
.end method

.method public whitelist registerCallback(Landroid/hardware/location/ContextHubManager$Callback;Landroid/os/Handler;)I
    .locals 3
    .param p1, "callback"    # Landroid/hardware/location/ContextHubManager$Callback;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1027
    invoke-static {}, Landroid/chre/flags/Flags;->removeOldContextHubApis()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 1028
    return v1

    .line 1031
    :cond_0
    monitor-enter p0

    .line 1032
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    if-eqz v0, :cond_1

    .line 1033
    const-string v0, "ContextHubManager"

    const-string v2, "Max number of callbacks reached!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    monitor-exit p0

    return v1

    .line 1036
    :cond_1
    iput-object p1, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    .line 1037
    if-nez p2, :cond_2

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/hardware/location/ContextHubManager;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    :cond_2
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallbackHandler:Landroid/os/Handler;

    .line 1038
    monitor-exit p0

    .line 1039
    const/4 v0, 0x0

    return v0

    .line 1038
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public greylist-max-o registerCallback(Landroid/hardware/location/ContextHubManager$ICallback;)I
    .locals 3
    .param p1, "callback"    # Landroid/hardware/location/ContextHubManager$ICallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 998
    invoke-static {}, Landroid/chre/flags/Flags;->removeOldContextHubApis()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 999
    return v1

    .line 1002
    :cond_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;

    if-eqz v0, :cond_1

    .line 1003
    const-string v0, "ContextHubManager"

    const-string v2, "Max number of local callbacks reached!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    return v1

    .line 1006
    :cond_1
    iput-object p1, p0, Landroid/hardware/location/ContextHubManager;->mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;

    .line 1007
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist registerEndpoint(Landroid/hardware/contexthub/HubEndpoint;)V
    .locals 1
    .param p1, "hubEndpoint"    # Landroid/hardware/contexthub/HubEndpoint;

    .line 1314
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-virtual {p1, v0}, Landroid/hardware/contexthub/HubEndpoint;->register(Landroid/hardware/location/IContextHubService;)V

    .line 1315
    return-void
.end method

.method public whitelist registerEndpointDiscoveryCallback(Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;J)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;
    .param p2, "endpointId"    # J

    .line 867
    new-instance v0, Landroid/os/HandlerExecutor;

    .line 868
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 867
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/hardware/location/ContextHubManager;->registerEndpointDiscoveryCallback(Ljava/util/concurrent/Executor;Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;J)V

    .line 869
    return-void
.end method

.method public whitelist registerEndpointDiscoveryCallback(Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;Ljava/lang/String;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;
    .param p2, "serviceDescriptor"    # Ljava/lang/String;

    .line 907
    new-instance v0, Landroid/os/HandlerExecutor;

    .line 908
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 907
    invoke-virtual {p0, v0, p1, p2}, Landroid/hardware/location/ContextHubManager;->registerEndpointDiscoveryCallback(Ljava/util/concurrent/Executor;Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;Ljava/lang/String;)V

    .line 909
    return-void
.end method

.method public whitelist registerEndpointDiscoveryCallback(Ljava/util/concurrent/Executor;Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;J)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;
    .param p3, "endpointId"    # J

    .line 886
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 887
    const-string v0, "callback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 888
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    .line 889
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/hardware/location/ContextHubManager;->createDiscoveryCallback(Landroid/hardware/location/IContextHubService;Ljava/util/concurrent/Executor;Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;Ljava/lang/String;)Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    move-result-object v0

    .line 891
    .local v0, "iCallback":Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;
    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v1, p3, p4, v0}, Landroid/hardware/location/IContextHubService;->registerEndpointDiscoveryCallbackId(JLandroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    goto :goto_0

    .line 892
    :catch_0
    move-exception v1

    .line 893
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 896
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Landroid/hardware/location/ContextHubManager;->mDiscoveryCallbacks:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    return-void
.end method

.method public whitelist registerEndpointDiscoveryCallback(Ljava/util/concurrent/Executor;Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;Ljava/lang/String;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;
    .param p3, "serviceDescriptor"    # Ljava/lang/String;

    .line 927
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 928
    const-string v0, "callback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 929
    const-string v0, "serviceDescriptor cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 930
    invoke-virtual {p3}, Ljava/lang/String;->isBlank()Z

    move-result v0

    if-nez v0, :cond_0

    .line 934
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    .line 935
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/hardware/location/ContextHubManager;->createDiscoveryCallback(Landroid/hardware/location/IContextHubService;Ljava/util/concurrent/Executor;Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;Ljava/lang/String;)Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    move-result-object v0

    .line 937
    .local v0, "iCallback":Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;
    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v1, p3, v0}, Landroid/hardware/location/IContextHubService;->registerEndpointDiscoveryCallbackDescriptor(Ljava/lang/String;Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 940
    goto :goto_0

    .line 938
    :catch_0
    move-exception v1

    .line 939
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 942
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Landroid/hardware/location/ContextHubManager;->mDiscoveryCallbacks:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    return-void

    .line 931
    .end local v0    # "iCallback":Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid service descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist sendMessage(IILandroid/hardware/location/ContextHubMessage;)I
    .locals 2
    .param p1, "hubHandle"    # I
    .param p2, "nanoAppHandle"    # I
    .param p3, "message"    # Landroid/hardware/location/ContextHubMessage;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 474
    invoke-static {}, Landroid/chre/flags/Flags;->removeOldContextHubApis()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    const/4 v0, -0x1

    return v0

    .line 479
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/location/IContextHubService;->sendMessage(IILandroid/hardware/location/ContextHubMessage;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unloadNanoApp(I)I
    .locals 2
    .param p1, "nanoAppHandle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 364
    invoke-static {}, Landroid/chre/flags/Flags;->removeOldContextHubApis()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    const/4 v0, -0x1

    return v0

    .line 369
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0, p1}, Landroid/hardware/location/IContextHubService;->unloadNanoApp(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unloadNanoApp(Landroid/hardware/location/ContextHubInfo;J)Landroid/hardware/location/ContextHubTransaction;
    .locals 4
    .param p1, "hubInfo"    # Landroid/hardware/location/ContextHubInfo;
    .param p2, "nanoAppId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/location/ContextHubInfo;",
            "J)",
            "Landroid/hardware/location/ContextHubTransaction<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 594
    const-string v0, "ContextHubInfo cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 596
    new-instance v0, Landroid/hardware/location/ContextHubTransaction;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/hardware/location/ContextHubTransaction;-><init>(I)V

    .line 598
    .local v0, "transaction":Landroid/hardware/location/ContextHubTransaction;, "Landroid/hardware/location/ContextHubTransaction<Ljava/lang/Void;>;"
    nop

    .line 599
    invoke-static {v0}, Landroid/hardware/location/ContextHubTransactionHelper;->createTransactionCallback(Landroid/hardware/location/ContextHubTransaction;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v1

    .line 602
    .local v1, "callback":Landroid/hardware/location/IContextHubTransactionCallback;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-virtual {p1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v3

    invoke-interface {v2, v3, v1, p2, p3}, Landroid/hardware/location/IContextHubService;->unloadNanoAppFromHub(ILandroid/hardware/location/IContextHubTransactionCallback;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    nop

    .line 607
    return-object v0

    .line 603
    :catch_0
    move-exception v2

    .line 604
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public whitelist unregisterCallback(Landroid/hardware/location/ContextHubManager$Callback;)I
    .locals 3
    .param p1, "callback"    # Landroid/hardware/location/ContextHubManager$Callback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1467
    invoke-static {}, Landroid/chre/flags/Flags;->removeOldContextHubApis()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 1468
    return v1

    .line 1471
    :cond_0
    monitor-enter p0

    .line 1472
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    if-eq p1, v0, :cond_1

    .line 1473
    const-string v0, "ContextHubManager"

    const-string v2, "Cannot recognize callback!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    monitor-exit p0

    return v1

    .line 1477
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    .line 1478
    iput-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallbackHandler:Landroid/os/Handler;

    .line 1479
    monitor-exit p0

    .line 1480
    const/4 v0, 0x0

    return v0

    .line 1479
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized greylist-max-o unregisterCallback(Landroid/hardware/location/ContextHubManager$ICallback;)I
    .locals 3
    .param p1, "callback"    # Landroid/hardware/location/ContextHubManager$ICallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 1489
    :try_start_0
    invoke-static {}, Landroid/chre/flags/Flags;->removeOldContextHubApis()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 1490
    monitor-exit p0

    return v1

    .line 1493
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;

    if-eq p1, v0, :cond_1

    .line 1494
    const-string v0, "ContextHubManager"

    const-string v2, "Cannot recognize local callback!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1495
    monitor-exit p0

    return v1

    .line 1497
    .end local p0    # "this":Landroid/hardware/location/ContextHubManager;
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Landroid/hardware/location/ContextHubManager;->mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1498
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 1488
    .end local p1    # "callback":Landroid/hardware/location/ContextHubManager$ICallback;
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public whitelist unregisterEndpoint(Landroid/hardware/contexthub/HubEndpoint;)V
    .locals 0
    .param p1, "hubEndpoint"    # Landroid/hardware/contexthub/HubEndpoint;

    .line 1376
    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpoint;->unregister()V

    .line 1377
    return-void
.end method

.method public whitelist unregisterEndpointDiscoveryCallback(Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;

    .line 956
    const-string v0, "callback cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 957
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mDiscoveryCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    .line 958
    .local v0, "iCallback":Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;
    if-eqz v0, :cond_0

    .line 963
    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v1, v0}, Landroid/hardware/location/IContextHubService;->unregisterEndpointDiscoveryCallback(Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 966
    goto :goto_0

    .line 964
    :catch_0
    move-exception v1

    .line 965
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 967
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 959
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Callback not previously registered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
