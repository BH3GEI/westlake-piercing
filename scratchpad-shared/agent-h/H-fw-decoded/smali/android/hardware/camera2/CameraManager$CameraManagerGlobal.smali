.class final Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
.super Landroid/hardware/ICameraServiceListener$Stub;
.source "CameraManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CameraManagerGlobal"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    }
.end annotation


# static fields
.field private static final CAMERA_SERVICE_BINDER_NAME:Ljava/lang/String; = "media.camera"

.field private static final DEVICE_STATUS_ARRAY_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "CameraManagerGlobal"

.field private static final gCameraManager:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

.field public static final sCameraServiceDisabled:Z

.field public static final sLandscapeToPortrait:Z


# instance fields
.field private final CAMERA_SERVICE_RECONNECT_DELAY_MS:I

.field private final DEBUG:Z

.field private final mCallbackMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/camera2/CameraManager$AvailabilityCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraService:Landroid/hardware/ICameraService;

.field private final mConcurrentCameraIdCombinations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDeviceStateHandler:Landroid/os/Handler;

.field private mDeviceStateHandlerThread:Landroid/os/HandlerThread;

.field private final mDeviceStatus:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceStatusHistory:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFoldStateListener:Landroid/hardware/camera2/CameraManager$FoldStateListener;

.field private mHasOpenCloseListenerPermission:Z

.field private final mLock:Ljava/lang/Object;

.field private final mOpenedDevices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mTorchCallbackMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/camera2/CameraManager$TorchCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final mTorchClientBinder:Landroid/os/Binder;

.field private final mTorchStatus:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnavailablePhysicalDevices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$jmxOBN39nTX1p4gNk8dcKQK_ku0(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->lambda$scheduleCameraServiceReconnectionLocked$7()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 2267
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    invoke-direct {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;-><init>()V

    sput-object v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->gCameraManager:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    .line 2317
    nop

    .line 2318
    const-string v0, "config.disable_cameraservice"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    .line 2320
    nop

    .line 2321
    const-string v0, "camera.enable_landscape_to_portrait"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sLandscapeToPortrait:Z

    .line 2320
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 2315
    invoke-direct {p0}, Landroid/hardware/ICameraServiceListener$Stub;-><init>()V

    .line 2262
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->DEBUG:Z

    .line 2264
    const/16 v1, 0x3e8

    iput v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->CAMERA_SERVICE_RECONNECT_DELAY_MS:I

    .line 2275
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2277
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    .line 2279
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    .line 2282
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mOpenedDevices:Landroid/util/ArrayMap;

    .line 2284
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mConcurrentCameraIdCombinations:Ljava/util/Set;

    .line 2289
    new-instance v1, Ljava/util/ArrayDeque;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatusHistory:Ljava/util/ArrayDeque;

    .line 2293
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    .line 2296
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchClientBinder:Landroid/os/Binder;

    .line 2299
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    .line 2302
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    .line 2304
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    .line 2308
    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mHasOpenCloseListenerPermission:Z

    .line 2315
    return-void
.end method

.method private addDeviceStatusHistoryLocked(Ljava/lang/String;)V
    .locals 2
    .param p1, "log"    # Ljava/lang/String;

    .line 3589
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatusHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 3590
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatusHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 3592
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatusHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 3593
    return-void
.end method

.method private static cameraStatusesContains([Landroid/hardware/CameraStatus;Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z
    .locals 6
    .param p0, "cameraStatuses"    # [Landroid/hardware/CameraStatus;
    .param p1, "info"    # Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 2591
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 2592
    .local v3, "c":Landroid/hardware/CameraStatus;
    iget-object v4, v3, Landroid/hardware/CameraStatus;->cameraId:Ljava/lang/String;

    invoke-static {p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v3, Landroid/hardware/CameraStatus;->deviceId:I

    invoke-static {p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 2593
    const/4 v0, 0x1

    return v0

    .line 2591
    .end local v3    # "c":Landroid/hardware/CameraStatus;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2596
    :cond_1
    return v1
.end method

.method private connectCameraServiceLocked()V
    .locals 13

    .line 2384
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v0, :cond_7

    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 2386
    :cond_0
    const-string v0, "CameraManagerGlobal"

    const-string v1, "Connecting to camera service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    const-string/jumbo v0, "media.camera"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2389
    .local v0, "cameraServiceBinder":Landroid/os/IBinder;
    if-nez v0, :cond_1

    .line 2391
    return-void

    .line 2394
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5

    .line 2398
    nop

    .line 2400
    invoke-static {v0}, Landroid/hardware/ICameraService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;

    move-result-object v2

    .line 2403
    .local v2, "cameraService":Landroid/hardware/ICameraService;
    :try_start_1
    invoke-static {}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setupGlobalVendorTagDescriptor()V
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2406
    goto :goto_0

    .line 2404
    :catch_0
    move-exception v3

    .line 2405
    .local v3, "e":Landroid/os/ServiceSpecificException;
    invoke-direct {p0, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->handleRecoverableSetupErrors(Landroid/os/ServiceSpecificException;)V

    .line 2409
    .end local v3    # "e":Landroid/os/ServiceSpecificException;
    :goto_0
    :try_start_2
    const-string v3, "connectCameraServiceLocked(E): tid(%d): mDeviceStatus size %d"

    .line 2411
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 2409
    invoke-static {v3, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->addDeviceStatusHistoryLocked(Ljava/lang/String;)V

    .line 2413
    invoke-interface {v2, p0}, Landroid/hardware/ICameraService;->addListener(Landroid/hardware/ICameraServiceListener;)[Landroid/hardware/CameraStatus;

    move-result-object v3

    .line 2414
    .local v3, "cameraStatuses":[Landroid/hardware/CameraStatus;
    array-length v4, v3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 2415
    .local v6, "cameraStatus":Landroid/hardware/CameraStatus;
    new-instance v7, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    iget-object v8, v6, Landroid/hardware/CameraStatus;->cameraId:Ljava/lang/String;

    iget v9, v6, Landroid/hardware/CameraStatus;->deviceId:I

    invoke-direct {v7, v8, v9}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;-><init>(Ljava/lang/String;I)V

    .line 2417
    .local v7, "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    iget v8, v6, Landroid/hardware/CameraStatus;->status:I

    invoke-direct {p0, v8, v7}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)V

    .line 2419
    iget-object v8, v6, Landroid/hardware/CameraStatus;->unavailablePhysicalCameras:[Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 2421
    iget-object v8, v6, Landroid/hardware/CameraStatus;->unavailablePhysicalCameras:[Ljava/lang/String;

    array-length v9, v8

    move v10, v1

    :goto_2
    if-ge v10, v9, :cond_2

    aget-object v11, v8, v10

    .line 2422
    .local v11, "unavailablePhysicalCamera":Ljava/lang/String;
    invoke-direct {p0, v1, v7, v11}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onPhysicalCameraStatusChangedLocked(ILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;Ljava/lang/String;)V

    .line 2421
    .end local v11    # "unavailablePhysicalCamera":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 2428
    :cond_2
    iget-boolean v8, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mHasOpenCloseListenerPermission:Z

    if-eqz v8, :cond_3

    iget v8, v6, Landroid/hardware/CameraStatus;->status:I

    const/4 v9, -0x2

    if-ne v8, v9, :cond_3

    iget-object v8, v6, Landroid/hardware/CameraStatus;->clientPackage:Ljava/lang/String;

    .line 2430
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 2431
    iget-object v8, v6, Landroid/hardware/CameraStatus;->clientPackage:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onCameraOpenedLocked(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;Ljava/lang/String;)V

    .line 2414
    .end local v6    # "cameraStatus":Landroid/hardware/CameraStatus;
    .end local v7    # "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2434
    :cond_4
    iput-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    .line 2436
    const-string v4, "connectCameraServiceLocked(X): tid(%d): mDeviceStatus size %d"

    .line 2438
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 2436
    invoke-static {v4, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->addDeviceStatusHistoryLocked(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2444
    .end local v3    # "cameraStatuses":[Landroid/hardware/CameraStatus;
    goto :goto_3

    .line 2442
    :catch_1
    move-exception v3

    .line 2447
    :goto_3
    nop

    .line 2448
    :try_start_3
    invoke-interface {v2}, Landroid/hardware/ICameraService;->getConcurrentCameraIds()[Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;

    move-result-object v3

    .line 2449
    .local v3, "cameraIdCombinations":[Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;
    array-length v4, v3

    :goto_4
    if-ge v1, v4, :cond_6

    aget-object v5, v3, v1

    .line 2450
    .local v5, "comb":Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;
    nop

    .line 2451
    invoke-virtual {v5}, Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;->getConcurrentCameraIdCombination()Ljava/util/Set;

    move-result-object v6

    .line 2452
    .local v6, "combination":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 2453
    .local v7, "deviceCameraInfoSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    .line 2454
    .local v9, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v10, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v10, v11, v12}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2455
    nop

    .end local v9    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_5

    .line 2456
    :cond_5
    iget-object v8, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mConcurrentCameraIdCombinations:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2449
    nop

    .end local v5    # "comb":Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;
    .end local v6    # "combination":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v7    # "deviceCameraInfoSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2464
    .end local v3    # "cameraIdCombinations":[Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;
    :cond_6
    goto :goto_6

    .line 2462
    :catch_2
    move-exception v1

    .line 2465
    :goto_6
    return-void

    .line 2458
    :catch_3
    move-exception v1

    .line 2460
    .local v1, "e":Landroid/os/ServiceSpecificException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to get concurrent camera id combinations"

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2439
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :catch_4
    move-exception v1

    .line 2441
    .restart local v1    # "e":Landroid/os/ServiceSpecificException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to register a camera service listener"

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2395
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    .end local v2    # "cameraService":Landroid/hardware/ICameraService;
    :catch_5
    move-exception v1

    .line 2397
    .local v1, "e":Landroid/os/RemoteException;
    return-void

    .line 2384
    .end local v0    # "cameraServiceBinder":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_7
    :goto_7
    return-void
.end method

.method private extractCameraIdListLocked(II)[Ljava/lang/String;
    .locals 5
    .param p1, "deviceId"    # I
    .param p2, "devicePolicy"    # I

    .line 2492
    nop

    .line 2494
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 2492
    const-string v1, "extractCameraIdListLocked(E): tid(%d): mDeviceStatus size %d"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->addDeviceStatusHistoryLocked(Ljava/lang/String;)V

    .line 2496
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2497
    .local v0, "cameraIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2498
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2499
    .local v2, "status":I
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 2500
    .local v3, "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    if-eqz v2, :cond_1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    .line 2502
    invoke-direct {p0, p1, p2, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->shouldHideCamera(IILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2503
    goto :goto_1

    .line 2505
    :cond_0
    invoke-static {v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2497
    .end local v2    # "status":I
    .end local v3    # "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2507
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2508
    .end local v0    # "cameraIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 2509
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 2510
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatusHistory:Ljava/util/ArrayDeque;

    .line 2511
    const-string v4, " -> "

    invoke-static {v4, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2512
    .local v2, "messageWithHistory":Ljava/lang/String;
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private extractConcurrentCameraIdListLocked(II)Ljava/util/Set;
    .locals 9
    .param p1, "deviceId"    # I
    .param p2, "devicePolicy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2518
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2519
    .local v0, "concurrentCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mConcurrentCameraIdCombinations:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 2520
    .local v2, "deviceCameraInfos":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;>;"
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 2521
    .local v3, "extractedCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 2525
    .local v5, "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    iget-object v6, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 2526
    .local v6, "status":Ljava/lang/Integer;
    if-nez v6, :cond_1

    .line 2528
    goto :goto_1

    .line 2530
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    .line 2531
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_2

    .line 2532
    goto :goto_1

    .line 2534
    :cond_2
    invoke-direct {p0, p1, p2, v5}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->shouldHideCamera(IILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2535
    goto :goto_1

    .line 2537
    :cond_3
    invoke-static {v5}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2538
    .end local v5    # "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    .end local v6    # "status":Ljava/lang/Integer;
    goto :goto_1

    .line 2539
    :cond_4
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 2540
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2542
    .end local v2    # "deviceCameraInfos":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;>;"
    .end local v3    # "extractedCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    goto :goto_0

    .line 2543
    :cond_6
    return-object v0
.end method

.method public static get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .locals 1

    .line 2324
    sget-object v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->gCameraManager:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    return-object v0
.end method

.method private handleRecoverableSetupErrors(Landroid/os/ServiceSpecificException;)V
    .locals 2
    .param p1, "e"    # Landroid/os/ServiceSpecificException;

    .line 2902
    iget v0, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v0, :pswitch_data_0

    .line 2907
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 2904
    :pswitch_0
    const-string v0, "CameraManagerGlobal"

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2905
    nop

    .line 2909
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private isAvailable(I)Z
    .locals 1
    .param p1, "status"    # I

    .line 2912
    packed-switch p1, :pswitch_data_0

    .line 2916
    const/4 v0, 0x0

    return v0

    .line 2914
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$postSingleCameraClosedUpdate$1(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V
    .locals 0
    .param p0, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p1, "id"    # Ljava/lang/String;

    .line 2967
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraClosed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$postSingleCameraOpenedUpdate$0(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "packageId"    # Ljava/lang/String;

    .line 2957
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraOpened(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$postSingleTorchStrengthLevelUpdate$6(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;I)V
    .locals 0
    .param p0, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "newStrengthLevel"    # I

    .line 3036
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$TorchCallback;->onTorchStrengthLevelChanged(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$postSingleTorchUpdate$4(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;I)V
    .locals 1
    .param p0, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 3013
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/hardware/camera2/CameraManager$TorchCallback;->onTorchModeChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic lambda$postSingleTorchUpdate$5(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;)V
    .locals 0
    .param p0, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p1, "id"    # Ljava/lang/String;

    .line 3023
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager$TorchCallback;->onTorchModeUnavailable(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$postSingleUpdate$2(Ljava/lang/String;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V
    .locals 0
    .param p0, "physicalId"    # Ljava/lang/String;
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "id"    # Ljava/lang/String;

    .line 2980
    if-nez p0, :cond_0

    .line 2981
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraAvailable(Ljava/lang/String;)V

    goto :goto_0

    .line 2983
    :cond_0
    invoke-virtual {p1, p2, p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onPhysicalCameraAvailable(Ljava/lang/String;Ljava/lang/String;)V

    .line 2985
    :goto_0
    return-void
.end method

.method static synthetic lambda$postSingleUpdate$3(Ljava/lang/String;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V
    .locals 0
    .param p0, "physicalId"    # Ljava/lang/String;
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "id"    # Ljava/lang/String;

    .line 2994
    if-nez p0, :cond_0

    .line 2995
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraUnavailable(Ljava/lang/String;)V

    goto :goto_0

    .line 2997
    :cond_0
    invoke-virtual {p1, p2, p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onPhysicalCameraUnavailable(Ljava/lang/String;Ljava/lang/String;)V

    .line 2999
    :goto_0
    return-void
.end method

.method private synthetic lambda$scheduleCameraServiceReconnectionLocked$7()V
    .locals 3

    .line 3498
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 3499
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-nez v0, :cond_0

    .line 3500
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3504
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V

    .line 3505
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3507
    :cond_0
    :goto_0
    return-void
.end method

.method private onCameraClosedLocked(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 3467
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mOpenedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3469
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 3470
    .local v0, "callbackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3471
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 3472
    .local v2, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    invoke-static {v2}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)I

    move-result v3

    invoke-static {v2}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmDevicePolicy(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)I

    move-result v4

    invoke-direct {p0, v3, v4, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->shouldHideCamera(IILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3473
    goto :goto_1

    .line 3476
    :cond_0
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 3477
    .local v3, "executor":Ljava/util/concurrent/Executor;
    invoke-static {p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleCameraClosedUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;)V

    .line 3470
    .end local v2    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3479
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private onCameraOpenedLocked(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;Ljava/lang/String;)V
    .locals 6
    .param p1, "info"    # Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    .param p2, "clientPackageId"    # Ljava/lang/String;

    .line 3430
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mOpenedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3432
    .local v0, "oldApk":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 3433
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "onCameraOpened was previously called for "

    const-string v3, "CameraManagerGlobal"

    if-eqz v1, :cond_0

    .line 3434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and is now again called for the same package name, so no new client visible update will be sent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3438
    return-void

    .line 3440
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and is now called for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " without onCameraClosed being called first"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3447
    :cond_1
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 3448
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 3449
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 3450
    .local v3, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    invoke-static {v3}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)I

    move-result v4

    invoke-static {v3}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmDevicePolicy(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->shouldHideCamera(IILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3451
    goto :goto_1

    .line 3454
    :cond_2
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    .line 3455
    .local v4, "executor":Ljava/util/concurrent/Executor;
    invoke-static {p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleCameraOpenedUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;)V

    .line 3448
    .end local v3    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3457
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method private onPhysicalCameraStatusChangedLocked(ILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;Ljava/lang/String;)V
    .locals 10
    .param p1, "status"    # I
    .param p2, "info"    # Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    .param p3, "physicalId"    # Ljava/lang/String;

    .line 3166
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->validStatus(I)Z

    move-result v0

    const-string v1, "CameraManagerGlobal"

    if-nez v0, :cond_0

    .line 3167
    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    .line 3169
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, p3, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 3167
    const-string v2, "Ignoring invalid device %s physical device %s status 0x%x for device %d"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3170
    return-void

    .line 3174
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    .line 3175
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v9, p1

    move-object v8, p3

    goto/16 :goto_4

    .line 3181
    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3182
    .local v0, "unavailablePhysicalDevices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3183
    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3184
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3185
    :cond_2
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3186
    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3187
    invoke-interface {v0, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3201
    :goto_0
    invoke-static {}, Landroid/hardware/camera2/CameraManager;->physicalCallbacksAreEnabledForUnavailableCamera()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    .line 3202
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3203
    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Camera %s is not available. Ignore physical camera status change callback(s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3205
    return-void

    .line 3208
    :cond_3
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 3209
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_5

    .line 3210
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 3211
    .local v5, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    invoke-static {v5}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)I

    move-result v3

    invoke-static {v5}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmDevicePolicy(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)I

    move-result v4

    invoke-direct {p0, v3, v4, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->shouldHideCamera(IILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3212
    move v9, p1

    move-object v8, p3

    goto :goto_2

    .line 3215
    :cond_4
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/util/concurrent/Executor;

    .line 3216
    .local v6, "executor":Ljava/util/concurrent/Executor;
    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v7

    move-object v4, p0

    move v9, p1

    move-object v8, p3

    .end local p1    # "status":I
    .end local p3    # "physicalId":Ljava/lang/String;
    .local v8, "physicalId":Ljava/lang/String;
    .local v9, "status":I
    invoke-direct/range {v4 .. v9}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3209
    .end local v5    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .end local v6    # "executor":Ljava/util/concurrent/Executor;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move-object p3, v8

    move p1, v9

    goto :goto_1

    .line 3218
    .end local v2    # "i":I
    .end local v8    # "physicalId":Ljava/lang/String;
    .end local v9    # "status":I
    .restart local p1    # "status":I
    .restart local p3    # "physicalId":Ljava/lang/String;
    :cond_5
    return-void

    .line 3186
    .end local v1    # "callbackCount":I
    :cond_6
    move v9, p1

    move-object v8, p3

    .end local p1    # "status":I
    .end local p3    # "physicalId":Ljava/lang/String;
    .restart local v8    # "physicalId":Ljava/lang/String;
    .restart local v9    # "status":I
    goto :goto_3

    .line 3185
    .end local v8    # "physicalId":Ljava/lang/String;
    .end local v9    # "status":I
    .restart local p1    # "status":I
    .restart local p3    # "physicalId":Ljava/lang/String;
    :cond_7
    move v9, p1

    move-object v8, p3

    .line 3198
    .end local p1    # "status":I
    .end local p3    # "physicalId":Ljava/lang/String;
    .restart local v8    # "physicalId":Ljava/lang/String;
    .restart local v9    # "status":I
    :goto_3
    return-void

    .line 3174
    .end local v0    # "unavailablePhysicalDevices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "physicalId":Ljava/lang/String;
    .end local v9    # "status":I
    .restart local p1    # "status":I
    .restart local p3    # "physicalId":Ljava/lang/String;
    :cond_8
    move v9, p1

    move-object v8, p3

    .line 3176
    .end local p1    # "status":I
    .end local p3    # "physicalId":Ljava/lang/String;
    .restart local v8    # "physicalId":Ljava/lang/String;
    .restart local v9    # "status":I
    :goto_4
    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "Camera %s is not present. Ignore physical camera status change"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3178
    return-void
.end method

.method private onStatusChangedLocked(ILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)V
    .locals 11
    .param p1, "status"    # I
    .param p2, "info"    # Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 3085
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->validStatus(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3086
    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    .line 3087
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 3086
    const-string v1, "Ignoring invalid camera %s status 0x%x for device %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManagerGlobal"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3088
    return-void

    .line 3092
    :cond_0
    if-nez p1, :cond_1

    .line 3093
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3094
    .local v0, "oldStatus":Ljava/lang/Integer;
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3096
    .end local v0    # "oldStatus":Ljava/lang/Integer;
    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3097
    .restart local v0    # "oldStatus":Ljava/lang/Integer;
    if-nez v0, :cond_2

    .line 3098
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3102
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_3

    .line 3108
    return-void

    .line 3124
    :cond_3
    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v2

    if-ne v1, v2, :cond_4

    .line 3133
    return-void

    .line 3136
    :cond_4
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 3137
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_7

    .line 3138
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 3139
    .local v5, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    invoke-static {v5}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)I

    move-result v3

    invoke-static {v5}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmDevicePolicy(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)I

    move-result v4

    invoke-direct {p0, v3, v4, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->shouldHideCamera(IILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3140
    goto :goto_3

    .line 3143
    :cond_5
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/util/concurrent/Executor;

    .line 3144
    .local v6, "executor":Ljava/util/concurrent/Executor;
    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v4, p0

    move v9, p1

    .end local p1    # "status":I
    .local v9, "status":I
    invoke-direct/range {v4 .. v9}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3147
    .end local v9    # "status":I
    .restart local p1    # "status":I
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v4, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3148
    iget-object v3, v4, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 3149
    .local v3, "unavailableIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    .line 3150
    .local v8, "unavailableId":Ljava/lang/String;
    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3152
    .end local v8    # "unavailableId":Ljava/lang/String;
    move-object v4, p0

    goto :goto_2

    .line 3137
    .end local v3    # "unavailableIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .end local v6    # "executor":Ljava/util/concurrent/Executor;
    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3155
    .end local v2    # "i":I
    :cond_7
    return-void
.end method

.method private onTorchStatusChangedLocked(ILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)V
    .locals 6
    .param p1, "status"    # I
    .param p2, "info"    # Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 3239
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->validTorchStatus(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3240
    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    .line 3242
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 3240
    const-string v1, "Ignoring invalid camera %s torch status 0x%x for device %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManagerGlobal"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3243
    return-void

    .line 3246
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3247
    .local v0, "oldStatus":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 3253
    return-void

    .line 3256
    :cond_1
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 3257
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 3258
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 3259
    .local v3, "callback":Landroid/hardware/camera2/CameraManager$TorchCallback;
    invoke-static {v3}, Landroid/hardware/camera2/CameraManager$TorchCallback;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$TorchCallback;)I

    move-result v4

    invoke-static {v3}, Landroid/hardware/camera2/CameraManager$TorchCallback;->-$$Nest$fgetmDevicePolicy(Landroid/hardware/camera2/CameraManager$TorchCallback;)I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->shouldHideCamera(IILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3260
    goto :goto_1

    .line 3263
    :cond_2
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    .line 3264
    .local v4, "executor":Ljava/util/concurrent/Executor;
    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleTorchUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V

    .line 3257
    .end local v3    # "callback":Landroid/hardware/camera2/CameraManager$TorchCallback;
    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3266
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method private onTorchStrengthLevelChangedLocked(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;I)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    .param p2, "newStrengthLevel"    # I

    .line 3276
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 3277
    .local v0, "callbackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3278
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 3279
    .local v2, "callback":Landroid/hardware/camera2/CameraManager$TorchCallback;
    invoke-static {v2}, Landroid/hardware/camera2/CameraManager$TorchCallback;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$TorchCallback;)I

    move-result v3

    invoke-static {v2}, Landroid/hardware/camera2/CameraManager$TorchCallback;->-$$Nest$fgetmDevicePolicy(Landroid/hardware/camera2/CameraManager$TorchCallback;)I

    move-result v4

    invoke-direct {p0, v3, v4, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->shouldHideCamera(IILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3280
    goto :goto_1

    .line 3283
    :cond_0
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 3284
    .local v3, "executor":Ljava/util/concurrent/Executor;
    invoke-static {p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleTorchStrengthLevelUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V

    .line 3277
    .end local v2    # "callback":Landroid/hardware/camera2/CameraManager$TorchCallback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3287
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private postSingleAccessPriorityChangeUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 2945
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2947
    .local v0, "ident":J
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2949
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2950
    nop

    .line 2951
    return-void

    .line 2949
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2950
    throw v2
.end method

.method private postSingleCameraClosedUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "id"    # Ljava/lang/String;

    .line 2965
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2967
    .local v0, "ident":J
    :try_start_0
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2969
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2970
    nop

    .line 2971
    return-void

    .line 2969
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2970
    throw v2
.end method

.method private postSingleCameraOpenedUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "packageId"    # Ljava/lang/String;

    .line 2955
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2957
    .local v0, "ident":J
    :try_start_0
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, p3, p4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2959
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2960
    nop

    .line 2961
    return-void

    .line 2959
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2960
    throw v2
.end method

.method private postSingleTorchStrengthLevelUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "newStrengthLevel"    # I

    .line 3034
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3036
    .local v0, "ident":J
    :try_start_0
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, p3, p4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;I)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3038
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3039
    nop

    .line 3040
    return-void

    .line 3038
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3039
    throw v2
.end method

.method private postSingleTorchUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "status"    # I

    .line 3008
    packed-switch p4, :pswitch_data_0

    .line 3021
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "ident":J
    goto :goto_0

    .line 3011
    .end local v0    # "ident":J
    :pswitch_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3013
    .restart local v0    # "ident":J
    :try_start_0
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1, p3, p4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;I)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3016
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3017
    nop

    .line 3018
    goto :goto_1

    .line 3016
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3017
    throw v2

    .line 3023
    :goto_0
    :try_start_1
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda5;

    invoke-direct {v2, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3025
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3026
    nop

    .line 3027
    nop

    .line 3030
    .end local v0    # "ident":J
    :goto_1
    return-void

    .line 3025
    .restart local v0    # "ident":J
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3026
    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "physicalId"    # Ljava/lang/String;
    .param p5, "status"    # I

    .line 2975
    invoke-direct {p0, p5}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2976
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2978
    .local v0, "ident":J
    :try_start_0
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda6;

    invoke-direct {v2, p4, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2987
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2988
    nop

    .line 2989
    .end local v0    # "ident":J
    goto :goto_0

    .line 2987
    .restart local v0    # "ident":J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2988
    throw v2

    .line 2990
    .end local v0    # "ident":J
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2992
    .restart local v0    # "ident":J
    :try_start_1
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda7;

    invoke-direct {v2, p4, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3001
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3002
    nop

    .line 3004
    .end local v0    # "ident":J
    :goto_0
    return-void

    .line 3001
    .restart local v0    # "ident":J
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3002
    throw v2
.end method

.method private scheduleCameraServiceReconnectionLocked()V
    .locals 5

    .line 3486
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3488
    return-void

    .line 3497
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda8;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3e8

    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3510
    goto :goto_0

    .line 3508
    :catch_0
    move-exception v0

    .line 3509
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to schedule camera service re-connect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraManagerGlobal"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3511
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_0
    return-void
.end method

.method private shouldHideCamera(IILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z
    .locals 2
    .param p1, "currentDeviceId"    # I
    .param p2, "devicePolicy"    # I
    .param p3, "info"    # Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 2581
    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-static {p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)I

    move-result v1

    if-nez v1, :cond_0

    .line 2583
    return v0

    .line 2586
    :cond_0
    invoke-static {p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)I

    move-result v1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static sortCameraIds([Ljava/lang/String;)V
    .locals 1
    .param p0, "cameraIds"    # [Ljava/lang/String;

    .line 2549
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$1;

    invoke-direct {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2577
    return-void
.end method

.method private updateCallbackLocked(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;)V
    .locals 11
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 3047
    const/4 v1, 0x0

    move v6, v1

    .local v6, "i":I
    :goto_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v6, v1, :cond_3

    .line 3048
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 3049
    .local v7, "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    invoke-static {p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)I

    move-result v1

    invoke-static {p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmDevicePolicy(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)I

    move-result v2

    invoke-direct {p0, v1, v2, v7}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->shouldHideCamera(IILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3050
    goto :goto_2

    .line 3053
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/Integer;

    .line 3054
    .local v8, "status":Ljava/lang/Integer;
    invoke-static {v7}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3057
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/hardware/camera2/CameraManager;->physicalCallbacksAreEnabledForUnavailableCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    .line 3058
    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3059
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/util/List;

    .line 3060
    .local v9, "unavailableIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 3061
    .local v4, "unavailableId":Ljava/lang/String;
    invoke-static {v7}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3063
    .end local v4    # "unavailableId":Ljava/lang/String;
    goto :goto_1

    .line 3047
    .end local v7    # "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    .end local v8    # "status":Ljava/lang/Integer;
    .end local v9    # "unavailableIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3067
    .end local v6    # "i":I
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mOpenedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 3068
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mOpenedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 3069
    .local v2, "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    invoke-static {p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)I

    move-result v3

    invoke-static {p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmDevicePolicy(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)I

    move-result v4

    invoke-direct {p0, v3, v4, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->shouldHideCamera(IILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3070
    goto :goto_4

    .line 3073
    :cond_4
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mOpenedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3074
    .local v3, "clientPackageId":Ljava/lang/String;
    invoke-static {v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, p2, v4, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleCameraOpenedUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;)V

    .line 3067
    .end local v2    # "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    .end local v3    # "clientPackageId":Ljava/lang/String;
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3076
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method private updateTorchCallbackLocked(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;)V
    .locals 5
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 3221
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3222
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 3223
    .local v1, "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    invoke-static {p1}, Landroid/hardware/camera2/CameraManager$TorchCallback;->-$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$TorchCallback;)I

    move-result v2

    invoke-static {p1}, Landroid/hardware/camera2/CameraManager$TorchCallback;->-$$Nest$fgetmDevicePolicy(Landroid/hardware/camera2/CameraManager$TorchCallback;)I

    move-result v3

    invoke-direct {p0, v2, v3, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->shouldHideCamera(IILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3224
    goto :goto_1

    .line 3227
    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 3228
    .local v2, "status":Ljava/lang/Integer;
    invoke-static {v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, p1, p2, v3, v4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleTorchUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V

    .line 3221
    .end local v1    # "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    .end local v2    # "status":Ljava/lang/Integer;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3230
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private validStatus(I)Z
    .locals 1
    .param p1, "status"    # I

    .line 2921
    packed-switch p1, :pswitch_data_0

    .line 2928
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 2926
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private validTorchStatus(I)Z
    .locals 1
    .param p1, "status"    # I

    .line 2933
    packed-switch p1, :pswitch_data_0

    .line 2939
    const/4 v0, 0x0

    return v0

    .line 2937
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 2356
    return-object p0
.end method

.method public binderDied()V
    .locals 4

    .line 3521
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3522
    :try_start_0
    const-string v1, "binderDied(E): tid(%d): mDeviceStatus size %d"

    .line 3524
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 3523
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3522
    invoke-direct {p0, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->addDeviceStatusHistoryLocked(Ljava/lang/String;)V

    .line 3527
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 3529
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    .line 3536
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ltz v1, :cond_2

    .line 3537
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 3538
    .local v3, "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    invoke-direct {p0, v2, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)V

    .line 3540
    iget-boolean v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mHasOpenCloseListenerPermission:Z

    if-eqz v2, :cond_1

    .line 3541
    invoke-direct {p0, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onCameraClosedLocked(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)V

    .line 3536
    .end local v3    # "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3545
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 3546
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 3547
    .restart local v3    # "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    invoke-direct {p0, v2, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onTorchStatusChangedLocked(ILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)V

    .line 3545
    .end local v3    # "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3551
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mConcurrentCameraIdCombinations:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 3553
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V

    .line 3555
    const-string v1, "binderDied(X): tid(%d): mDeviceStatus size %d"

    .line 3557
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 3556
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3555
    invoke-direct {p0, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->addDeviceStatusHistoryLocked(Ljava/lang/String;)V

    .line 3558
    monitor-exit v0

    .line 3559
    return-void

    .line 3558
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public cameraIdHasConcurrentStreams(Ljava/lang/String;II)Z
    .locals 6
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "deviceId"    # I
    .param p3, "devicePolicy"    # I

    .line 2790
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2791
    :try_start_0
    new-instance v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 2792
    const/4 v2, 0x0

    if-nez p3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, p2

    :goto_0
    invoke-direct {v1, p1, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;-><init>(Ljava/lang/String;I)V

    .line 2793
    .local v1, "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2799
    monitor-exit v0

    return v2

    .line 2801
    :cond_1
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mConcurrentCameraIdCombinations:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 2802
    .local v4, "comb":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;>;"
    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2803
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 2805
    .end local v4    # "comb":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;>;"
    :cond_2
    goto :goto_1

    .line 2806
    :cond_3
    monitor-exit v0

    return v2

    .line 2807
    .end local v1    # "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCameraIdList(II)[Ljava/lang/String;
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "devicePolicy"    # I

    .line 2699
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2701
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 2702
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->extractCameraIdListLocked(II)[Ljava/lang/String;

    move-result-object v1

    .line 2703
    .local v1, "cameraIds":[Ljava/lang/String;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2704
    invoke-static {v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sortCameraIds([Ljava/lang/String;)V

    .line 2705
    return-object v1

    .line 2703
    .end local v1    # "cameraIds":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getCameraIdListNoLazy(II)[Ljava/lang/String;
    .locals 11
    .param p1, "deviceId"    # I
    .param p2, "devicePolicy"    # I

    .line 2600
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2601
    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    .line 2605
    :cond_0
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$2;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$2;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V

    .line 2637
    .local v0, "testListener":Landroid/hardware/ICameraServiceListener$Stub;
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2638
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2640
    :try_start_1
    const-string v3, "getCameraIdListNoLazy(E): tid(%d): mDeviceStatus size %d"

    .line 2642
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 2640
    invoke-static {v3, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->addDeviceStatusHistoryLocked(Ljava/lang/String;)V

    .line 2656
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    invoke-interface {v3, v0}, Landroid/hardware/ICameraService;->addListener(Landroid/hardware/ICameraServiceListener;)[Landroid/hardware/CameraStatus;

    move-result-object v3

    .line 2657
    .local v3, "cameraStatuses":[Landroid/hardware/CameraStatus;
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    invoke-interface {v4, v0}, Landroid/hardware/ICameraService;->removeListener(Landroid/hardware/ICameraServiceListener;)V

    .line 2658
    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 2659
    .local v6, "cameraStatus":Landroid/hardware/CameraStatus;
    iget v7, v6, Landroid/hardware/CameraStatus;->status:I

    new-instance v8, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    iget-object v9, v6, Landroid/hardware/CameraStatus;->cameraId:Ljava/lang/String;

    iget v10, v6, Landroid/hardware/CameraStatus;->deviceId:I

    invoke-direct {v8, v9, v10}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v7, v8}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)V

    .line 2658
    .end local v6    # "cameraStatus":Landroid/hardware/CameraStatus;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2662
    :cond_1
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 2663
    .local v4, "deviceCameraInfos":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2664
    .local v5, "deviceInfosToRemove":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 2669
    .local v7, "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    invoke-static {v3, v7}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->cameraStatusesContains([Landroid/hardware/CameraStatus;Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 2670
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2672
    .end local v7    # "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    :cond_2
    goto :goto_1

    .line 2673
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 2674
    .restart local v7    # "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    invoke-direct {p0, v1, v7}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)V

    .line 2675
    iget-object v8, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2676
    nop

    .end local v7    # "info":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;
    goto :goto_2

    .line 2677
    :cond_4
    const-string v1, "getCameraIdListNoLazy(X): tid(%d): mDeviceStatus size %d"

    .line 2679
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v7, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    .line 2677
    invoke-static {v1, v6}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->addDeviceStatusHistoryLocked(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2686
    .end local v4    # "deviceCameraInfos":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;>;"
    .end local v5    # "deviceInfosToRemove":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;>;"
    goto :goto_3

    .line 2684
    .end local v3    # "cameraStatuses":[Landroid/hardware/CameraStatus;
    :catch_0
    move-exception v1

    .line 2687
    :goto_3
    :try_start_2
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->extractCameraIdListLocked(II)[Ljava/lang/String;

    move-result-object v1

    .line 2688
    .local v1, "cameraIds":[Ljava/lang/String;
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2689
    invoke-static {v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sortCameraIds([Ljava/lang/String;)V

    .line 2690
    return-object v1

    .line 2680
    .end local v1    # "cameraIds":[Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 2682
    .local v1, "e":Landroid/os/ServiceSpecificException;
    :try_start_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to register a camera service listener"

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "testListener":Landroid/hardware/ICameraServiceListener$Stub;
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "deviceId":I
    .end local p2    # "devicePolicy":I
    throw v3

    .line 2688
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    .restart local v0    # "testListener":Landroid/hardware/ICameraServiceListener$Stub;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "deviceId":I
    .restart local p2    # "devicePolicy":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public getCameraService()Landroid/hardware/ICameraService;
    .locals 3

    .line 2367
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2368
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 2369
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v1, :cond_0

    sget-boolean v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v1, :cond_0

    .line 2370
    const-string v1, "CameraManagerGlobal"

    const-string v2, "Camera service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    monitor-exit v0

    return-object v1

    .line 2373
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConcurrentCameraIds(II)Ljava/util/Set;
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "devicePolicy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2710
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2712
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 2713
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->extractConcurrentCameraIdListLocked(II)Ljava/util/Set;

    move-result-object v1

    .line 2715
    .local v1, "concurrentStreamingCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Set<Ljava/lang/String;>;>;"
    monitor-exit v0

    .line 2717
    return-object v1

    .line 2715
    .end local v1    # "concurrentStreamingCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Set<Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTorchStrengthLevel(Ljava/lang/String;Landroid/content/AttributionSourceState;I)I
    .locals 6
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "clientAttribution"    # Landroid/content/AttributionSourceState;
    .param p3, "devicePolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 2876
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2877
    if-eqz p1, :cond_1

    .line 2881
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2882
    .local v1, "cameraService":Landroid/hardware/ICameraService;
    const/4 v2, 0x2

    if-eqz v1, :cond_0

    .line 2888
    nop

    .line 2889
    :try_start_1
    invoke-interface {v1, p1, p2, p3}, Landroid/hardware/ICameraService;->getTorchStrengthLevel(Ljava/lang/String;Landroid/content/AttributionSourceState;I)I

    move-result v2
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2896
    .local v2, "torchStrength":I
    nop

    .line 2897
    .end local v1    # "cameraService":Landroid/hardware/ICameraService;
    :try_start_2
    monitor-exit v0

    .line 2898
    return v2

    .line 2893
    .end local v2    # "torchStrength":I
    .restart local v1    # "cameraService":Landroid/hardware/ICameraService;
    :catch_0
    move-exception v3

    .line 2894
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Landroid/hardware/camera2/CameraAccessException;

    const-string v5, "Camera service is currently unavailable."

    invoke-direct {v4, v2, v5}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local p3    # "devicePolicy":I
    throw v4

    .line 2891
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local p3    # "devicePolicy":I
    :catch_1
    move-exception v2

    .line 2892
    .local v2, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v2}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v3

    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local p3    # "devicePolicy":I
    throw v3

    .line 2883
    .end local v2    # "e":Landroid/os/ServiceSpecificException;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local p3    # "devicePolicy":I
    :cond_0
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    const-string v4, "Camera service is currently unavailable."

    invoke-direct {v3, v2, v4}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local p3    # "devicePolicy":I
    throw v3

    .line 2897
    .end local v1    # "cameraService":Landroid/hardware/ICameraService;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local p3    # "devicePolicy":I
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 2878
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cameraId was null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local p3    # "devicePolicy":I
    throw v1

    .line 2897
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local p3    # "devicePolicy":I
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public injectSessionParams(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 6
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "sessionParams"    # Landroid/hardware/camera2/CaptureRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2471
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2472
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2473
    .local v1, "cameraService":Landroid/hardware/ICameraService;
    const/4 v2, 0x2

    if-eqz v1, :cond_0

    .line 2480
    :try_start_1
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Landroid/hardware/ICameraService;->injectSessionParams(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2487
    nop

    .line 2488
    .end local v1    # "cameraService":Landroid/hardware/ICameraService;
    :try_start_2
    monitor-exit v0

    .line 2489
    return-void

    .line 2483
    .restart local v1    # "cameraService":Landroid/hardware/ICameraService;
    :catch_0
    move-exception v3

    .line 2484
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Landroid/hardware/camera2/CameraAccessException;

    const-string v5, "Camera service is currently unavailable."

    invoke-direct {v4, v2, v5}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    throw v4

    .line 2481
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    :catch_1
    move-exception v2

    .line 2482
    .local v2, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v2}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v3

    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    throw v3

    .line 2474
    .end local v2    # "e":Landroid/os/ServiceSpecificException;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    :cond_0
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    const-string v4, "Camera service is currently unavailable."

    invoke-direct {v3, v2, v4}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    throw v3

    .line 2488
    .end local v1    # "cameraService":Landroid/hardware/ICameraService;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "sessionParams":Landroid/hardware/camera2/CaptureRequest;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public isConcurrentSessionConfigurationSupported(Ljava/util/Map;ILandroid/content/AttributionSourceState;I)Z
    .locals 11
    .param p2, "targetSdkVersion"    # I
    .param p3, "clientAttribution"    # Landroid/content/AttributionSourceState;
    .param p4, "devicePolicy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/params/SessionConfiguration;",
            ">;I",
            "Landroid/content/AttributionSourceState;",
            "I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 2726
    .local p1, "cameraIdsAndSessionConfigurations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;>;"
    if-eqz p1, :cond_7

    .line 2730
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 2731
    .local v0, "size":I
    if-eqz v0, :cond_6

    .line 2735
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2738
    const/4 v2, 0x0

    .line 2739
    .local v2, "subsetFound":Z
    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mConcurrentCameraIdCombinations:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 2740
    .local v4, "combination":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;>;"
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 2741
    .local v6, "infos":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2742
    .local v8, "cameraId":Ljava/lang/String;
    new-instance v9, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    .line 2745
    if-nez p4, :cond_0

    .line 2746
    move v10, v5

    goto :goto_2

    .line 2747
    :cond_0
    iget v10, p3, Landroid/content/AttributionSourceState;->deviceId:I

    :goto_2
    invoke-direct {v9, v8, v10}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;-><init>(Ljava/lang/String;I)V

    .line 2742
    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2748
    nop

    .end local v8    # "cameraId":Ljava/lang/String;
    goto :goto_1

    .line 2749
    :cond_1
    invoke-interface {v4, v6}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2750
    const/4 v2, 0x1

    .line 2752
    .end local v4    # "combination":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;>;"
    .end local v6    # "infos":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;>;"
    :cond_2
    goto :goto_0

    .line 2753
    :cond_3
    if-nez v2, :cond_4

    .line 2754
    const-string v3, "CameraManagerGlobal"

    const-string/jumbo v4, "isConcurrentSessionConfigurationSupported called with a subset of camera ids not returned by getConcurrentCameraIds"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2756
    monitor-exit v1

    return v5

    .line 2758
    :cond_4
    new-array v3, v0, [Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;

    .line 2760
    .local v3, "cameraIdsAndConfigs":[Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;
    const/4 v4, 0x0

    .line 2762
    .local v4, "i":I
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2763
    .local v6, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;>;"
    new-instance v7, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;

    .line 2764
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/camera2/params/SessionConfiguration;

    invoke-direct {v7, v8, v9}, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;-><init>(Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;)V

    aput-object v7, v3, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2765
    nop

    .end local v6    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;>;"
    add-int/lit8 v4, v4, 0x1

    .line 2766
    goto :goto_3

    .line 2768
    :cond_5
    :try_start_1
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    invoke-interface {v5, v3, p2, p3, p4}, Landroid/hardware/ICameraService;->isConcurrentSessionConfigurationSupported([Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;ILandroid/content/AttributionSourceState;I)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    return v5

    .line 2772
    :catch_0
    move-exception v5

    .line 2774
    .local v5, "e":Landroid/os/RemoteException;
    new-instance v6, Landroid/hardware/camera2/CameraAccessException;

    const-string v7, "Camera service is currently unavailable"

    const/4 v8, 0x2

    invoke-direct {v6, v8, v7, v5}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "size":I
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraIdsAndSessionConfigurations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;>;"
    .end local p2    # "targetSdkVersion":I
    .end local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local p4    # "devicePolicy":I
    throw v6

    .line 2770
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v0    # "size":I
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraIdsAndSessionConfigurations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;>;"
    .restart local p2    # "targetSdkVersion":I
    .restart local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local p4    # "devicePolicy":I
    :catch_1
    move-exception v5

    .line 2771
    .local v5, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v5}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v6

    .end local v0    # "size":I
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraIdsAndSessionConfigurations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;>;"
    .end local p2    # "targetSdkVersion":I
    .end local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local p4    # "devicePolicy":I
    throw v6

    .line 2777
    .end local v2    # "subsetFound":Z
    .end local v3    # "cameraIdsAndConfigs":[Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;
    .end local v4    # "i":I
    .end local v5    # "e":Landroid/os/ServiceSpecificException;
    .restart local v0    # "size":I
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraIdsAndSessionConfigurations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;>;"
    .restart local p2    # "targetSdkVersion":I
    .restart local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local p4    # "devicePolicy":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2732
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "camera id and session combination is empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2727
    .end local v0    # "size":I
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cameraIdsAndSessionConfigurations was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCameraAccessPrioritiesChanged()V
    .locals 5

    .line 3406
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3407
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 3408
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3409
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 3410
    .local v3, "executor":Ljava/util/concurrent/Executor;
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 3412
    .local v4, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    invoke-direct {p0, v4, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleAccessPriorityChangeUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;)V

    .line 3408
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    .end local v4    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3414
    .end local v1    # "callbackCount":I
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 3415
    return-void

    .line 3414
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCameraClosed(Ljava/lang/String;I)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "deviceId"    # I

    .line 3461
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3462
    :try_start_0
    new-instance v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    invoke-direct {v1, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onCameraClosedLocked(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)V

    .line 3463
    monitor-exit v0

    .line 3464
    return-void

    .line 3463
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCameraOpened(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "clientPackageId"    # Ljava/lang/String;
    .param p3, "deviceId"    # I

    .line 3424
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3425
    :try_start_0
    new-instance v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    invoke-direct {v1, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onCameraOpenedLocked(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;Ljava/lang/String;)V

    .line 3426
    monitor-exit v0

    .line 3427
    return-void

    .line 3426
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCameraOpenedInSharedMode(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "clientPackageId"    # Ljava/lang/String;
    .param p3, "deviceId"    # I
    .param p4, "primaryClient"    # Z

    .line 3420
    return-void
.end method

.method public onPhysicalCameraStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "cameraId"    # Ljava/lang/String;
    .param p3, "physicalCameraId"    # Ljava/lang/String;
    .param p4, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3381
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3382
    :try_start_0
    new-instance v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    invoke-direct {v1, p2, p4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onPhysicalCameraStatusChangedLocked(ILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;Ljava/lang/String;)V

    .line 3384
    monitor-exit v0

    .line 3385
    return-void

    .line 3384
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onStatusChanged(ILjava/lang/String;I)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "cameraId"    # Ljava/lang/String;
    .param p3, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3367
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3368
    :try_start_0
    const-string/jumbo v1, "onStatusChanged(E): tid(%d): mDeviceStatus size %d"

    .line 3370
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 3369
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3368
    invoke-direct {p0, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->addDeviceStatusHistoryLocked(Ljava/lang/String;)V

    .line 3371
    new-instance v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    invoke-direct {v1, p2, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)V

    .line 3372
    const-string/jumbo v1, "onStatusChanged(X): tid(%d): mDeviceStatus size %d"

    .line 3374
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 3373
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3372
    invoke-direct {p0, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->addDeviceStatusHistoryLocked(Ljava/lang/String;)V

    .line 3375
    monitor-exit v0

    .line 3376
    return-void

    .line 3375
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onTorchStatusChanged(ILjava/lang/String;I)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "cameraId"    # Ljava/lang/String;
    .param p3, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3390
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3391
    :try_start_0
    new-instance v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    invoke-direct {v1, p2, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onTorchStatusChangedLocked(ILandroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;)V

    .line 3392
    monitor-exit v0

    .line 3393
    return-void

    .line 3392
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onTorchStrengthLevelChanged(Ljava/lang/String;II)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "newStrengthLevel"    # I
    .param p3, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3398
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3399
    :try_start_0
    new-instance v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;

    invoke-direct {v1, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onTorchStrengthLevelChangedLocked(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$DeviceCameraInfo;I)V

    .line 3401
    monitor-exit v0

    .line 3402
    return-void

    .line 3401
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;ZII)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "hasOpenCloseListenerPermission"    # Z
    .param p4, "deviceId"    # I
    .param p5, "devicePolicy"    # I

    .line 3300
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3303
    :try_start_0
    iput-boolean p3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mHasOpenCloseListenerPermission:Z

    .line 3304
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 3306
    invoke-static {p1, p4}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fputmDeviceId(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;I)V

    .line 3307
    invoke-static {p1, p5}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fputmDevicePolicy(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;I)V

    .line 3309
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 3311
    .local v1, "oldExecutor":Ljava/util/concurrent/Executor;
    if-nez v1, :cond_0

    .line 3312
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->updateCallbackLocked(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;)V

    .line 3316
    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v2, :cond_1

    .line 3317
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V

    .line 3319
    .end local v1    # "oldExecutor":Ljava/util/concurrent/Executor;
    :cond_1
    monitor-exit v0

    .line 3320
    return-void

    .line 3319
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerDeviceStateListener(Landroid/hardware/camera2/CameraCharacteristics;Landroid/content/Context;)V
    .locals 4
    .param p1, "chars"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p2, "ctx"    # Landroid/content/Context;

    .line 2329
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2330
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStateHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 2331
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "CameraManagerGlobal"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStateHandlerThread:Landroid/os/HandlerThread;

    .line 2332
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStateHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 2333
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStateHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStateHandler:Landroid/os/Handler;

    .line 2336
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mFoldStateListener:Landroid/hardware/camera2/CameraManager$FoldStateListener;

    if-nez v1, :cond_1

    .line 2337
    new-instance v1, Landroid/hardware/camera2/CameraManager$FoldStateListener;

    invoke-direct {v1, p2}, Landroid/hardware/camera2/CameraManager$FoldStateListener;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mFoldStateListener:Landroid/hardware/camera2/CameraManager$FoldStateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2339
    :try_start_1
    const-class v1, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v2, Landroid/os/HandlerExecutor;

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStateHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mFoldStateListener:Landroid/hardware/camera2/CameraManager$FoldStateListener;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2347
    goto :goto_0

    .line 2341
    :catch_0
    move-exception v1

    .line 2342
    .local v1, "e":Ljava/lang/IllegalStateException;
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mFoldStateListener:Landroid/hardware/camera2/CameraManager$FoldStateListener;

    .line 2343
    const-string v2, "CameraManagerGlobal"

    const-string v3, "Failed to register device state listener!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    const-string v2, "CameraManagerGlobal"

    const-string v3, "Device state dependent characteristics updates will not befunctional!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    monitor-exit v0

    return-void

    .line 2350
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mFoldStateListener:Landroid/hardware/camera2/CameraManager$FoldStateListener;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics;->getDeviceStateListener()Landroid/hardware/camera2/CameraManager$DeviceStateListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraManager$FoldStateListener;->addDeviceStateListener(Landroid/hardware/camera2/CameraManager$DeviceStateListener;)V

    .line 2351
    monitor-exit v0

    .line 2352
    return-void

    .line 2351
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;II)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "deviceId"    # I
    .param p4, "devicePolicy"    # I

    .line 3336
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3337
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 3339
    invoke-static {p1, p3}, Landroid/hardware/camera2/CameraManager$TorchCallback;->-$$Nest$fputmDeviceId(Landroid/hardware/camera2/CameraManager$TorchCallback;I)V

    .line 3340
    invoke-static {p1, p4}, Landroid/hardware/camera2/CameraManager$TorchCallback;->-$$Nest$fputmDevicePolicy(Landroid/hardware/camera2/CameraManager$TorchCallback;I)V

    .line 3342
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 3344
    .local v1, "oldExecutor":Ljava/util/concurrent/Executor;
    if-nez v1, :cond_0

    .line 3345
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->updateTorchCallbackLocked(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;)V

    .line 3349
    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v2, :cond_1

    .line 3350
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V

    .line 3352
    .end local v1    # "oldExecutor":Ljava/util/concurrent/Executor;
    :cond_1
    monitor-exit v0

    .line 3353
    return-void

    .line 3352
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setTorchMode(Ljava/lang/String;ZLandroid/content/AttributionSourceState;I)V
    .locals 9
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "clientAttribution"    # Landroid/content/AttributionSourceState;
    .param p4, "devicePolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 2816
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2817
    if-eqz p1, :cond_1

    .line 2821
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v0

    .line 2822
    .local v2, "cameraService":Landroid/hardware/ICameraService;
    const/4 v8, 0x2

    if-eqz v2, :cond_0

    .line 2828
    :try_start_1
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchClientBinder:Landroid/os/Binder;
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "enabled":Z
    .end local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local p4    # "devicePolicy":I
    .local v3, "cameraId":Ljava/lang/String;
    .local v4, "enabled":Z
    .local v6, "clientAttribution":Landroid/content/AttributionSourceState;
    .local v7, "devicePolicy":I
    :try_start_2
    invoke-interface/range {v2 .. v7}, Landroid/hardware/ICameraService;->setTorchMode(Ljava/lang/String;ZLandroid/os/IBinder;Landroid/content/AttributionSourceState;I)V
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2835
    nop

    .line 2836
    .end local v2    # "cameraService":Landroid/hardware/ICameraService;
    :try_start_3
    monitor-exit v1

    .line 2837
    return-void

    .line 2832
    .restart local v2    # "cameraService":Landroid/hardware/ICameraService;
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .line 2830
    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 2832
    .end local v3    # "cameraId":Ljava/lang/String;
    .end local v4    # "enabled":Z
    .end local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local v7    # "devicePolicy":I
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "enabled":Z
    .restart local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local p4    # "devicePolicy":I
    :catch_2
    move-exception v0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    move-object p1, v0

    .line 2833
    .end local p2    # "enabled":Z
    .end local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local p4    # "devicePolicy":I
    .restart local v3    # "cameraId":Ljava/lang/String;
    .restart local v4    # "enabled":Z
    .restart local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local v7    # "devicePolicy":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_0
    new-instance p2, Landroid/hardware/camera2/CameraAccessException;

    const-string p3, "Camera service is currently unavailable"

    invoke-direct {p2, v8, p3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local v3    # "cameraId":Ljava/lang/String;
    .end local v4    # "enabled":Z
    .end local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local v7    # "devicePolicy":I
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    throw p2

    .line 2830
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .local p1, "cameraId":Ljava/lang/String;
    .restart local p2    # "enabled":Z
    .restart local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local p4    # "devicePolicy":I
    :catch_3
    move-exception v0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    move-object p1, v0

    .line 2831
    .end local p2    # "enabled":Z
    .end local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local p4    # "devicePolicy":I
    .restart local v3    # "cameraId":Ljava/lang/String;
    .restart local v4    # "enabled":Z
    .restart local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local v7    # "devicePolicy":I
    .local p1, "e":Landroid/os/ServiceSpecificException;
    :goto_1
    invoke-static {p1}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object p2

    .end local v3    # "cameraId":Ljava/lang/String;
    .end local v4    # "enabled":Z
    .end local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local v7    # "devicePolicy":I
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    throw p2

    .line 2823
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .local p1, "cameraId":Ljava/lang/String;
    .restart local p2    # "enabled":Z
    .restart local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local p4    # "devicePolicy":I
    :cond_0
    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "enabled":Z
    .end local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local p4    # "devicePolicy":I
    .restart local v3    # "cameraId":Ljava/lang/String;
    .restart local v4    # "enabled":Z
    .restart local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local v7    # "devicePolicy":I
    new-instance p1, Landroid/hardware/camera2/CameraAccessException;

    const-string p2, "Camera service is currently unavailable"

    invoke-direct {p1, v8, p2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local v3    # "cameraId":Ljava/lang/String;
    .end local v4    # "enabled":Z
    .end local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local v7    # "devicePolicy":I
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    throw p1

    .line 2836
    .end local v2    # "cameraService":Landroid/hardware/ICameraService;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "enabled":Z
    .restart local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local p4    # "devicePolicy":I
    :catchall_0
    move-exception v0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    move-object p1, v0

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "enabled":Z
    .end local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local p4    # "devicePolicy":I
    .restart local v3    # "cameraId":Ljava/lang/String;
    .restart local v4    # "enabled":Z
    .restart local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local v7    # "devicePolicy":I
    goto :goto_2

    .line 2818
    .end local v3    # "cameraId":Ljava/lang/String;
    .end local v4    # "enabled":Z
    .end local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local v7    # "devicePolicy":I
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "enabled":Z
    .restart local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local p4    # "devicePolicy":I
    :cond_1
    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "enabled":Z
    .end local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local p4    # "devicePolicy":I
    .restart local v3    # "cameraId":Ljava/lang/String;
    .restart local v4    # "enabled":Z
    .restart local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local v7    # "devicePolicy":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cameraId was null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "cameraId":Ljava/lang/String;
    .end local v4    # "enabled":Z
    .end local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local v7    # "devicePolicy":I
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    throw p1

    .line 2836
    .restart local v3    # "cameraId":Ljava/lang/String;
    .restart local v4    # "enabled":Z
    .restart local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local v7    # "devicePolicy":I
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    :catchall_1
    move-exception v0

    move-object p1, v0

    :goto_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public turnOnTorchWithStrengthLevel(Ljava/lang/String;ILandroid/content/AttributionSourceState;I)V
    .locals 9
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "torchStrength"    # I
    .param p3, "clientAttribution"    # Landroid/content/AttributionSourceState;
    .param p4, "devicePolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 2845
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2846
    if-eqz p1, :cond_1

    .line 2850
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v0

    .line 2851
    .local v2, "cameraService":Landroid/hardware/ICameraService;
    const/4 v8, 0x2

    if-eqz v2, :cond_0

    .line 2857
    :try_start_1
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchClientBinder:Landroid/os/Binder;
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "torchStrength":I
    .end local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local p4    # "devicePolicy":I
    .local v3, "cameraId":Ljava/lang/String;
    .local v4, "torchStrength":I
    .local v6, "clientAttribution":Landroid/content/AttributionSourceState;
    .local v7, "devicePolicy":I
    :try_start_2
    invoke-interface/range {v2 .. v7}, Landroid/hardware/ICameraService;->turnOnTorchWithStrengthLevel(Ljava/lang/String;ILandroid/os/IBinder;Landroid/content/AttributionSourceState;I)V
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2868
    nop

    .line 2869
    .end local v2    # "cameraService":Landroid/hardware/ICameraService;
    :try_start_3
    monitor-exit v1

    .line 2870
    return-void

    .line 2865
    .restart local v2    # "cameraService":Landroid/hardware/ICameraService;
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .line 2863
    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 2865
    .end local v3    # "cameraId":Ljava/lang/String;
    .end local v4    # "torchStrength":I
    .end local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local v7    # "devicePolicy":I
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "torchStrength":I
    .restart local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local p4    # "devicePolicy":I
    :catch_2
    move-exception v0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    move-object p1, v0

    .line 2866
    .end local p2    # "torchStrength":I
    .end local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local p4    # "devicePolicy":I
    .restart local v3    # "cameraId":Ljava/lang/String;
    .restart local v4    # "torchStrength":I
    .restart local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local v7    # "devicePolicy":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_0
    new-instance p2, Landroid/hardware/camera2/CameraAccessException;

    const-string p3, "Camera service is currently unavailable."

    invoke-direct {p2, v8, p3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local v3    # "cameraId":Ljava/lang/String;
    .end local v4    # "torchStrength":I
    .end local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local v7    # "devicePolicy":I
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    throw p2

    .line 2863
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .local p1, "cameraId":Ljava/lang/String;
    .restart local p2    # "torchStrength":I
    .restart local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local p4    # "devicePolicy":I
    :catch_3
    move-exception v0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    move-object p1, v0

    .line 2864
    .end local p2    # "torchStrength":I
    .end local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local p4    # "devicePolicy":I
    .restart local v3    # "cameraId":Ljava/lang/String;
    .restart local v4    # "torchStrength":I
    .restart local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local v7    # "devicePolicy":I
    .local p1, "e":Landroid/os/ServiceSpecificException;
    :goto_1
    invoke-static {p1}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object p2

    .end local v3    # "cameraId":Ljava/lang/String;
    .end local v4    # "torchStrength":I
    .end local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local v7    # "devicePolicy":I
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    throw p2

    .line 2852
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .local p1, "cameraId":Ljava/lang/String;
    .restart local p2    # "torchStrength":I
    .restart local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local p4    # "devicePolicy":I
    :cond_0
    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "torchStrength":I
    .end local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local p4    # "devicePolicy":I
    .restart local v3    # "cameraId":Ljava/lang/String;
    .restart local v4    # "torchStrength":I
    .restart local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local v7    # "devicePolicy":I
    new-instance p1, Landroid/hardware/camera2/CameraAccessException;

    const-string p2, "Camera service is currently unavailable."

    invoke-direct {p1, v8, p2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local v3    # "cameraId":Ljava/lang/String;
    .end local v4    # "torchStrength":I
    .end local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local v7    # "devicePolicy":I
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    throw p1

    .line 2869
    .end local v2    # "cameraService":Landroid/hardware/ICameraService;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "torchStrength":I
    .restart local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local p4    # "devicePolicy":I
    :catchall_0
    move-exception v0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    move-object p1, v0

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "torchStrength":I
    .end local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local p4    # "devicePolicy":I
    .restart local v3    # "cameraId":Ljava/lang/String;
    .restart local v4    # "torchStrength":I
    .restart local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local v7    # "devicePolicy":I
    goto :goto_2

    .line 2847
    .end local v3    # "cameraId":Ljava/lang/String;
    .end local v4    # "torchStrength":I
    .end local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local v7    # "devicePolicy":I
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "torchStrength":I
    .restart local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local p4    # "devicePolicy":I
    :cond_1
    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "torchStrength":I
    .end local p3    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local p4    # "devicePolicy":I
    .restart local v3    # "cameraId":Ljava/lang/String;
    .restart local v4    # "torchStrength":I
    .restart local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local v7    # "devicePolicy":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cameraId was null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "cameraId":Ljava/lang/String;
    .end local v4    # "torchStrength":I
    .end local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local v7    # "devicePolicy":I
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    throw p1

    .line 2869
    .restart local v3    # "cameraId":Ljava/lang/String;
    .restart local v4    # "torchStrength":I
    .restart local v6    # "clientAttribution":Landroid/content/AttributionSourceState;
    .restart local v7    # "devicePolicy":I
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    :catchall_1
    move-exception v0

    move-object p1, v0

    :goto_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 3329
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3330
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3331
    monitor-exit v0

    .line 3332
    return-void

    .line 3331
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 3356
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3357
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3358
    monitor-exit v0

    .line 3359
    return-void

    .line 3358
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
