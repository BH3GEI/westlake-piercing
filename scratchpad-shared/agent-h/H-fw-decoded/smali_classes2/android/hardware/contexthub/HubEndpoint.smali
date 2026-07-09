.class public Landroid/hardware/contexthub/HubEndpoint;
.super Ljava/lang/Object;
.source "HubEndpoint.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contexthub/HubEndpoint$Builder;,
        Landroid/hardware/contexthub/HubEndpoint$EndpointConsumer;,
        Landroid/hardware/contexthub/HubEndpoint$Reason;
    }
.end annotation


# static fields
.field public static final whitelist REASON_CLOSE_ENDPOINT_SESSION_REQUESTED:I = 0x4

.field public static final whitelist REASON_ENDPOINT_INVALID:I = 0x5

.field public static final whitelist REASON_ENDPOINT_STOPPED:I = 0x6

.field public static final whitelist REASON_FAILURE:I = 0x0

.field public static final whitelist REASON_OPEN_ENDPOINT_SESSION_REQUEST_REJECTED:I = 0x3

.field public static final whitelist REASON_PERMISSION_DENIED:I = 0x9

.field private static final blacklist TAG:Ljava/lang/String; = "HubEndpoint"


# instance fields
.field private final blacklist mActiveSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/contexthub/HubEndpointSession;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAssignedHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

.field private final blacklist mLifecycleCallback:Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

.field private final blacklist mLifecycleCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mMessageCallback:Landroid/hardware/contexthub/HubEndpointMessageCallback;

.field private final blacklist mMessageCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mPendingHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

.field private final blacklist mServiceCallback:Landroid/hardware/contexthub/IContextHubEndpointCallback;

.field private blacklist mServiceToken:Landroid/hardware/contexthub/IContextHubEndpoint;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActiveSessions(Landroid/hardware/contexthub/HubEndpoint;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mActiveSessions:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAssignedHubEndpointInfo(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointInfo;
    .locals 0

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mAssignedHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLifecycleCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointLifecycleCallback;
    .locals 0

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mLifecycleCallback:Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLifecycleCallbackExecutor(Landroid/hardware/contexthub/HubEndpoint;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mLifecycleCallbackExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/hardware/contexthub/HubEndpoint;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMessageCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointMessageCallback;
    .locals 0

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mMessageCallback:Landroid/hardware/contexthub/HubEndpointMessageCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMessageCallbackExecutor(Landroid/hardware/contexthub/HubEndpoint;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mMessageCallbackExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceToken(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/IContextHubEndpoint;
    .locals 0

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mServiceToken:Landroid/hardware/contexthub/IContextHubEndpoint;

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/HubEndpointLifecycleCallback;Ljava/util/concurrent/Executor;Landroid/hardware/contexthub/HubEndpointMessageCallback;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "pendingEndpointInfo"    # Landroid/hardware/contexthub/HubEndpointInfo;
    .param p2, "endpointLifecycleCallback"    # Landroid/hardware/contexthub/HubEndpointLifecycleCallback;
    .param p3, "lifecycleCallbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p4, "endpointMessageCallback"    # Landroid/hardware/contexthub/HubEndpointMessageCallback;
    .param p5, "messageCallbackExecutor"    # Ljava/util/concurrent/Executor;

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mLock:Ljava/lang/Object;

    .line 107
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mActiveSessions:Landroid/util/SparseArray;

    .line 117
    new-instance v0, Landroid/hardware/contexthub/HubEndpoint$1;

    invoke-direct {v0, p0}, Landroid/hardware/contexthub/HubEndpoint$1;-><init>(Landroid/hardware/contexthub/HubEndpoint;)V

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mServiceCallback:Landroid/hardware/contexthub/IContextHubEndpointCallback;

    .line 337
    iput-object p1, p0, Landroid/hardware/contexthub/HubEndpoint;->mPendingHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    .line 338
    iput-object p2, p0, Landroid/hardware/contexthub/HubEndpoint;->mLifecycleCallback:Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    .line 339
    iput-object p3, p0, Landroid/hardware/contexthub/HubEndpoint;->mLifecycleCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 340
    iput-object p4, p0, Landroid/hardware/contexthub/HubEndpoint;->mMessageCallback:Landroid/hardware/contexthub/HubEndpointMessageCallback;

    .line 341
    iput-object p5, p0, Landroid/hardware/contexthub/HubEndpoint;->mMessageCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 342
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/HubEndpointLifecycleCallback;Ljava/util/concurrent/Executor;Landroid/hardware/contexthub/HubEndpointMessageCallback;Ljava/util/concurrent/Executor;Landroid/hardware/contexthub/HubEndpoint-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/hardware/contexthub/HubEndpoint;-><init>(Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/HubEndpointLifecycleCallback;Ljava/util/concurrent/Executor;Landroid/hardware/contexthub/HubEndpointMessageCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist closeSession(Landroid/hardware/contexthub/HubEndpointSession;)V
    .locals 4
    .param p1, "session"    # Landroid/hardware/contexthub/HubEndpointSession;

    .line 405
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 406
    :try_start_0
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint;->mActiveSessions:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointSession;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 408
    monitor-exit v0

    return-void

    .line 410
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointSession;->setClosed()V

    .line 411
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint;->mActiveSessions:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointSession;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 412
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    :try_start_1
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mServiceToken:Landroid/hardware/contexthub/IContextHubEndpoint;

    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointSession;->getId()I

    move-result v1

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Landroid/hardware/contexthub/IContextHubEndpoint;->closeSession(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 419
    goto :goto_0

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HubEndpoint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeSession: failed to close session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 418
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 420
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 412
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist getLifecycleCallback()Landroid/hardware/contexthub/HubEndpointLifecycleCallback;
    .locals 1

    .line 450
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mLifecycleCallback:Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    return-object v0
.end method

.method public whitelist getMessageCallback()Landroid/hardware/contexthub/HubEndpointMessageCallback;
    .locals 1

    .line 455
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mMessageCallback:Landroid/hardware/contexthub/HubEndpointMessageCallback;

    return-object v0
.end method

.method public whitelist getServiceInfoCollection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/hardware/contexthub/HubServiceInfo;",
            ">;"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mPendingHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {v0}, Landroid/hardware/contexthub/HubEndpointInfo;->getServiceInfoCollection()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTag()Ljava/lang/String;
    .locals 1

    .line 440
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mPendingHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {v0}, Landroid/hardware/contexthub/HubEndpointInfo;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getVersion()I
    .locals 1

    .line 435
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mPendingHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {v0}, Landroid/hardware/contexthub/HubEndpointInfo;->getVersion()I

    move-result v0

    return v0
.end method

.method public blacklist openSession(Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V
    .locals 8
    .param p1, "destinationInfo"    # Landroid/hardware/contexthub/HubEndpointInfo;
    .param p2, "serviceDescriptor"    # Ljava/lang/String;

    .line 382
    :try_start_0
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 384
    :try_start_1
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mServiceToken:Landroid/hardware/contexthub/IContextHubEndpoint;

    invoke-interface {v0, p1, p2}, Landroid/hardware/contexthub/IContextHubEndpoint;->openSession(Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)I

    move-result v0

    move v3, v0

    .line 387
    .local v3, "sessionId":I
    new-instance v2, Landroid/hardware/contexthub/HubEndpointSession;

    iget-object v6, p0, Landroid/hardware/contexthub/HubEndpoint;->mAssignedHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    .end local p1    # "destinationInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    .end local p2    # "serviceDescriptor":Ljava/lang/String;
    .local v5, "destinationInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    .local v7, "serviceDescriptor":Ljava/lang/String;
    :try_start_2
    invoke-direct/range {v2 .. v7}, Landroid/hardware/contexthub/HubEndpointSession;-><init>(ILandroid/hardware/contexthub/HubEndpoint;Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V

    .line 394
    .local v2, "newSession":Landroid/hardware/contexthub/HubEndpointSession;
    iget-object p1, v4, Landroid/hardware/contexthub/HubEndpoint;->mActiveSessions:Landroid/util/SparseArray;

    invoke-virtual {p1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 395
    .end local v3    # "sessionId":I
    monitor-exit v1

    .line 400
    goto :goto_2

    .line 395
    .end local v2    # "newSession":Landroid/hardware/contexthub/HubEndpointSession;
    .end local v5    # "destinationInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    .end local v7    # "serviceDescriptor":Ljava/lang/String;
    .restart local p1    # "destinationInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    .restart local p2    # "serviceDescriptor":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object p1, v0

    .end local p1    # "destinationInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    .end local p2    # "serviceDescriptor":Ljava/lang/String;
    .restart local v5    # "destinationInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    .restart local v7    # "serviceDescriptor":Ljava/lang/String;
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v5    # "destinationInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    .end local v7    # "serviceDescriptor":Ljava/lang/String;
    .end local p0    # "this":Landroid/hardware/contexthub/HubEndpoint;
    :try_start_3
    throw p1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 396
    .restart local v5    # "destinationInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    .restart local v7    # "serviceDescriptor":Ljava/lang/String;
    .restart local p0    # "this":Landroid/hardware/contexthub/HubEndpoint;
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 395
    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .line 396
    .end local v5    # "destinationInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    .end local v7    # "serviceDescriptor":Ljava/lang/String;
    .restart local p1    # "destinationInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    .restart local p2    # "serviceDescriptor":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object p1, v0

    .line 398
    .end local p2    # "serviceDescriptor":Ljava/lang/String;
    .restart local v5    # "destinationInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    .restart local v7    # "serviceDescriptor":Ljava/lang/String;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1
    const-string p2, "HubEndpoint"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openSession: failed to open session to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 399
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 401
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public blacklist register(Landroid/hardware/location/IContextHubService;)V
    .locals 4
    .param p1, "service"    # Landroid/hardware/location/IContextHubService;

    .line 347
    :try_start_0
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mPendingHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint;->mServiceCallback:Landroid/hardware/contexthub/IContextHubEndpointCallback;

    iget-object v2, p0, Landroid/hardware/contexthub/HubEndpoint;->mPendingHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    .line 351
    invoke-virtual {v2}, Landroid/hardware/contexthub/HubEndpointInfo;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/contexthub/HubEndpoint;->mPendingHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    .line 352
    invoke-virtual {v3}, Landroid/hardware/contexthub/HubEndpointInfo;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 348
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/hardware/location/IContextHubService;->registerEndpoint(Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/IContextHubEndpointCallback;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/contexthub/IContextHubEndpoint;

    move-result-object v0

    .line 353
    .local v0, "serviceToken":Landroid/hardware/contexthub/IContextHubEndpoint;
    invoke-interface {v0}, Landroid/hardware/contexthub/IContextHubEndpoint;->getAssignedHubEndpointInfo()Landroid/hardware/contexthub/HubEndpointInfo;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/contexthub/HubEndpoint;->mAssignedHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    .line 354
    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mServiceToken:Landroid/hardware/contexthub/IContextHubEndpoint;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    .end local v0    # "serviceToken":Landroid/hardware/contexthub/IContextHubEndpoint;
    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HubEndpoint"

    const-string v2, "registerEndpoint: failed to register endpoint"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 359
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method blacklist sendMessage(Landroid/hardware/contexthub/HubEndpointSession;Landroid/hardware/contexthub/HubMessage;Landroid/hardware/location/IContextHubTransactionCallback;)V
    .locals 3
    .param p1, "session"    # Landroid/hardware/contexthub/HubEndpointSession;
    .param p2, "message"    # Landroid/hardware/contexthub/HubMessage;
    .param p3, "transactionCallback"    # Landroid/hardware/location/IContextHubTransactionCallback;

    .line 427
    :try_start_0
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mServiceToken:Landroid/hardware/contexthub/IContextHubEndpoint;

    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointSession;->getId()I

    move-result v1

    invoke-interface {v0, v1, p2, p3}, Landroid/hardware/contexthub/IContextHubEndpoint;->sendMessage(ILandroid/hardware/contexthub/HubMessage;Landroid/hardware/location/IContextHubTransactionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    goto :goto_0

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessage: failed to send message session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HubEndpoint"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 430
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 432
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist unregister()V
    .locals 4

    .line 364
    :try_start_0
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_1
    iget-object v2, p0, Landroid/hardware/contexthub/HubEndpoint;->mActiveSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 367
    iget-object v2, p0, Landroid/hardware/contexthub/HubEndpoint;->mActiveSessions:Landroid/util/SparseArray;

    iget-object v3, p0, Landroid/hardware/contexthub/HubEndpoint;->mActiveSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contexthub/HubEndpointSession;

    invoke-virtual {v2}, Landroid/hardware/contexthub/HubEndpointSession;->setClosed()V

    .line 366
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 369
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint;->mActiveSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 370
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 371
    :try_start_2
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mServiceToken:Landroid/hardware/contexthub/IContextHubEndpoint;

    invoke-interface {v0}, Landroid/hardware/contexthub/IContextHubEndpoint;->unregister()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 375
    goto :goto_1

    .line 370
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Landroid/hardware/contexthub/HubEndpoint;
    :try_start_4
    throw v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 372
    .restart local p0    # "this":Landroid/hardware/contexthub/HubEndpoint;
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HubEndpoint"

    const-string v2, "unregisterEndpoint: failed to unregister endpoint"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 374
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 376
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method
