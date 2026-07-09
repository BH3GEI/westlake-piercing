.class public final Landroid/hardware/camera2/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;,
        Landroid/hardware/camera2/CameraManager$AvailabilityCallback;,
        Landroid/hardware/camera2/CameraManager$TorchCallback;,
        Landroid/hardware/camera2/CameraManager$FoldStateListener;,
        Landroid/hardware/camera2/CameraManager$DeviceStateListener;
    }
.end annotation


# static fields
.field private static final API_VERSION_1:I = 0x1

.field private static final API_VERSION_2:I = 0x2

.field private static final CAMERA_OPEN_CLOSE_LISTENER_PERMISSION:Ljava/lang/String; = "android.permission.CAMERA_OPEN_CLOSE_LISTENER"

.field private static final CAMERA_TYPE_ALL:I = 0x1

.field private static final CAMERA_TYPE_BACKWARD_COMPATIBLE:I = 0x0

.field private static final ENABLE_PHYSICAL_CAMERA_CALLBACK_FOR_UNAVAILABLE_LOGICAL_CAMERA:J = 0xe909d6aL

.field public static final LANDSCAPE_TO_PORTRAIT_PROP:Ljava/lang/String; = "camera.enable_landscape_to_portrait"

.field public static final OVERRIDE_CAMERA_LANDSCAPE_TO_PORTRAIT:J = 0xef10e60L

.field public static final ROTATION_OVERRIDE_NONE:I = 0x0

.field public static final ROTATION_OVERRIDE_OVERRIDE_TO_PORTRAIT:I = 0x1

.field public static final ROTATION_OVERRIDE_ROTATION_ONLY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CameraManager"

.field private static final USE_CALLING_PID:I = -0x1

.field private static final USE_CALLING_UID:I = -0x1


# instance fields
.field private final DEBUG:Z

.field private final mCameraIdToMultiResolutionStreamConfigurationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHasOpenCloseListenerPermission:Z

.field private final mLock:Ljava/lang/Object;

.field private mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager;->DEBUG:Z

    .line 152
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager;->mCameraIdToMultiResolutionStreamConfigurationMap:Ljava/util/Map;

    .line 156
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    .line 237
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 238
    :try_start_0
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 239
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CAMERA_OPEN_CLOSE_LISTENER"

    .line 240
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager;->mHasOpenCloseListenerPermission:Z

    .line 242
    monitor-exit v1

    .line 243
    return-void

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getCameraCharacteristics(Ljava/lang/String;I)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 10
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "rotationOverride"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 769
    const/4 v1, 0x0

    .line 770
    .local v1, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_1

    .line 773
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 774
    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v0

    .line 775
    .local v3, "cameraService":Landroid/hardware/ICameraService;
    const/4 v9, 0x2

    if-eqz v3, :cond_0

    .line 780
    :try_start_1
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 783
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 785
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getClientAttribution()Landroid/content/AttributionSourceState;

    move-result-object v7

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 786
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v8
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 781
    move-object v4, p1

    move v6, p2

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "rotationOverride":I
    .local v4, "cameraId":Ljava/lang/String;
    .local v6, "rotationOverride":I
    :try_start_2
    invoke-interface/range {v3 .. v8}, Landroid/hardware/ICameraService;->getCameraCharacteristics(Ljava/lang/String;IILandroid/content/AttributionSourceState;I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p1

    .line 787
    .local p1, "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p0, v4, p1, v3}, Landroid/hardware/camera2/CameraManager;->prepareCameraCharacteristics(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/ICameraService;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p2
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, p2

    .line 794
    .end local p1    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    nop

    .line 795
    .end local v3    # "cameraService":Landroid/hardware/ICameraService;
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 796
    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraManager;->registerDeviceStateListener(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 797
    return-object v1

    .line 790
    .restart local v3    # "cameraService":Landroid/hardware/ICameraService;
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .line 788
    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 790
    .end local v4    # "cameraId":Ljava/lang/String;
    .end local v6    # "rotationOverride":I
    .local p1, "cameraId":Ljava/lang/String;
    .restart local p2    # "rotationOverride":I
    :catch_2
    move-exception v0

    move-object v4, p1

    move v6, p2

    move-object p1, v0

    .line 792
    .end local p2    # "rotationOverride":I
    .restart local v4    # "cameraId":Ljava/lang/String;
    .restart local v6    # "rotationOverride":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_0
    :try_start_4
    new-instance p2, Landroid/hardware/camera2/CameraAccessException;

    const-string v0, "Camera service is currently unavailable"

    invoke-direct {p2, v9, v0, p1}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v4    # "cameraId":Ljava/lang/String;
    .end local v6    # "rotationOverride":I
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager;
    throw p2

    .line 788
    .restart local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .local p1, "cameraId":Ljava/lang/String;
    .restart local p2    # "rotationOverride":I
    :catch_3
    move-exception v0

    move-object v4, p1

    move v6, p2

    move-object p1, v0

    .line 789
    .end local p2    # "rotationOverride":I
    .restart local v4    # "cameraId":Ljava/lang/String;
    .restart local v6    # "rotationOverride":I
    .local p1, "e":Landroid/os/ServiceSpecificException;
    :goto_1
    invoke-static {p1}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object p2

    .end local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v4    # "cameraId":Ljava/lang/String;
    .end local v6    # "rotationOverride":I
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager;
    throw p2

    .line 776
    .restart local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .local p1, "cameraId":Ljava/lang/String;
    .restart local p2    # "rotationOverride":I
    :cond_0
    move-object v4, p1

    move v6, p2

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "rotationOverride":I
    .restart local v4    # "cameraId":Ljava/lang/String;
    .restart local v6    # "rotationOverride":I
    new-instance p1, Landroid/hardware/camera2/CameraAccessException;

    const-string p2, "Camera service is currently unavailable"

    invoke-direct {p1, v9, p2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v4    # "cameraId":Ljava/lang/String;
    .end local v6    # "rotationOverride":I
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager;
    throw p1

    .line 795
    .end local v3    # "cameraService":Landroid/hardware/ICameraService;
    .restart local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "rotationOverride":I
    :catchall_0
    move-exception v0

    move-object v4, p1

    move v6, p2

    move-object p1, v0

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "rotationOverride":I
    .restart local v4    # "cameraId":Ljava/lang/String;
    .restart local v6    # "rotationOverride":I
    :goto_2
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_2

    .line 771
    .end local v4    # "cameraId":Ljava/lang/String;
    .end local v6    # "rotationOverride":I
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "rotationOverride":I
    :cond_1
    move-object v4, p1

    move v6, p2

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "rotationOverride":I
    .restart local v4    # "cameraId":Ljava/lang/String;
    .restart local v6    # "rotationOverride":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No cameras available on device"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getCameraDeviceSetupUnsafe(Ljava/lang/String;)Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 930
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, p0, v1}, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraManager;Landroid/content/Context;)V

    return-object v0
.end method

.method private getDisplaySize()Landroid/util/Size;
    .locals 8

    .line 609
    const-string v0, "CameraManager"

    new-instance v1, Landroid/util/Size;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/util/Size;-><init>(II)V

    .line 612
    .local v1, "ret":Landroid/util/Size;
    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    const-string v4, "display"

    .line 613
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    .line 614
    .local v3, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v3, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    .line 615
    .local v2, "display":Landroid/view/Display;
    if-eqz v2, :cond_1

    .line 616
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 617
    .local v4, "sz":Landroid/graphics/Point;
    invoke-virtual {v2, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 618
    iget v5, v4, Landroid/graphics/Point;->x:I

    .line 619
    .local v5, "width":I
    iget v6, v4, Landroid/graphics/Point;->y:I

    .line 621
    .local v6, "height":I
    if-le v6, v5, :cond_0

    .line 622
    move v6, v5

    .line 623
    iget v7, v4, Landroid/graphics/Point;->y:I

    move v5, v7

    .line 626
    :cond_0
    new-instance v7, Landroid/util/Size;

    invoke-direct {v7, v5, v6}, Landroid/util/Size;-><init>(II)V

    .line 627
    .end local v1    # "ret":Landroid/util/Size;
    .end local v4    # "sz":Landroid/graphics/Point;
    .end local v5    # "width":I
    .end local v6    # "height":I
    .local v7, "ret":Landroid/util/Size;
    move-object v1, v7

    goto :goto_0

    .line 628
    .end local v7    # "ret":Landroid/util/Size;
    .restart local v1    # "ret":Landroid/util/Size;
    :cond_1
    const-string v4, "Invalid default display!"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    .end local v2    # "display":Landroid/view/Display;
    .end local v3    # "displayManager":Landroid/hardware/display/DisplayManager;
    :goto_0
    goto :goto_1

    .line 630
    :catch_0
    move-exception v2

    .line 631
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDisplaySize Failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v1
.end method

.method private getPhysicalCameraMultiResolutionConfigs(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/ICameraService;)Ljava/util/Map;
    .locals 11
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p3, "cameraService"    # Landroid/hardware/ICameraService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            "Landroid/hardware/ICameraService;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 651
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mCameraIdToMultiResolutionStreamConfigurationMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mCameraIdToMultiResolutionStreamConfigurationMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0

    .line 655
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v1, v0

    .line 657
    .local v1, "multiResolutionStreamConfigurations":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/hardware/camera2/params/StreamConfiguration;>;"
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mCameraIdToMultiResolutionStreamConfigurationMap:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MULTI_RESOLUTION_STREAM_SUPPORTED:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Boolean;

    .line 662
    .local v2, "multiResolutionStreamSupported":Ljava/lang/Boolean;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v5, p3

    goto/16 :goto_2

    .line 670
    :cond_1
    invoke-virtual {p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v3

    .line 671
    .local v3, "physicalCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isUltraHighResolutionSensor()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 672
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_PHYSICAL_CAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 674
    .local v0, "configs":[Landroid/hardware/camera2/params/StreamConfiguration;
    if-eqz v0, :cond_2

    .line 675
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    :cond_2
    return-object v1

    .line 680
    .end local v0    # "configs":[Landroid/hardware/camera2/params/StreamConfiguration;
    :cond_3
    :try_start_0
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v6, v4

    .line 681
    .local v6, "physicalCameraId":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4}, Landroid/hardware/camera2/CameraManager;->getClientAttribution(IZ)Landroid/content/AttributionSourceState;

    move-result-object v9

    .line 683
    .local v9, "clientAttribution":Landroid/content/AttributionSourceState;
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 686
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v7, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 684
    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p3

    .end local p3    # "cameraService":Landroid/hardware/ICameraService;
    .local v5, "cameraService":Landroid/hardware/ICameraService;
    :try_start_1
    invoke-interface/range {v5 .. v10}, Landroid/hardware/ICameraService;->getCameraCharacteristics(Ljava/lang/String;IILandroid/content/AttributionSourceState;I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p3

    .line 690
    .local p3, "physicalCameraInfo":Landroid/hardware/camera2/impl/CameraMetadataNative;
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_PHYSICAL_CAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 693
    .local v4, "configs":[Landroid/hardware/camera2/params/StreamConfiguration;
    if-eqz v4, :cond_4

    .line 694
    invoke-virtual {v1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 696
    .end local v4    # "configs":[Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v6    # "physicalCameraId":Ljava/lang/String;
    .end local v9    # "clientAttribution":Landroid/content/AttributionSourceState;
    .end local p3    # "physicalCameraInfo":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :cond_4
    move-object p3, v5

    goto :goto_0

    .line 697
    :catch_0
    move-exception v0

    move-object p3, v0

    goto :goto_1

    .line 702
    .end local v5    # "cameraService":Landroid/hardware/ICameraService;
    .local p3, "cameraService":Landroid/hardware/ICameraService;
    :cond_5
    move-object v5, p3

    .line 704
    .end local p3    # "cameraService":Landroid/hardware/ICameraService;
    .restart local v5    # "cameraService":Landroid/hardware/ICameraService;
    return-object v1

    .line 697
    .end local v5    # "cameraService":Landroid/hardware/ICameraService;
    .restart local p3    # "cameraService":Landroid/hardware/ICameraService;
    :catch_1
    move-exception v0

    move-object v5, p3

    move-object p3, v0

    .line 698
    .restart local v5    # "cameraService":Landroid/hardware/ICameraService;
    .local p3, "e":Landroid/os/RemoteException;
    :goto_1
    new-instance v0, Landroid/os/ServiceSpecificException;

    const/4 v4, 0x4

    const-string v6, "Camera service is currently unavailable"

    invoke-direct {v0, v4, v6}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 701
    .local v0, "sse":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v4

    throw v4

    .line 662
    .end local v0    # "sse":Landroid/os/ServiceSpecificException;
    .end local v3    # "physicalCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "cameraService":Landroid/hardware/ICameraService;
    .local p3, "cameraService":Landroid/hardware/ICameraService;
    :cond_6
    move-object v5, p3

    .line 663
    .end local p3    # "cameraService":Landroid/hardware/ICameraService;
    .restart local v5    # "cameraService":Landroid/hardware/ICameraService;
    :goto_2
    return-object v1
.end method

.method public static getRotationOverride(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 1672
    const/4 v0, 0x0

    .line 1673
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 1675
    .local v1, "packageName":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 1676
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1677
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1680
    :cond_0
    invoke-static {p0, v0, v1}, Landroid/hardware/camera2/CameraManager;->getRotationOverride(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static getRotationOverride(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1688
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->enableCameraCompatForDesktopWindowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1689
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/CameraManager;->getRotationOverrideInternal(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1691
    :cond_0
    invoke-static {p1, p2}, Landroid/hardware/camera2/CameraManager;->shouldOverrideToPortrait(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1692
    const/4 v0, 0x1

    goto :goto_0

    .line 1693
    :cond_1
    const/4 v0, 0x0

    .line 1691
    :goto_0
    return v0
.end method

.method private static getRotationOverrideForCompatFreeform(I)I
    .locals 2
    .param p0, "freeformCameraCompatMode"    # I

    .line 1747
    const/4 v0, 0x5

    const/4 v1, 0x2

    if-eq p0, v0, :cond_1

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 1753
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1751
    :cond_1
    :goto_0
    return v1
.end method

.method public static getRotationOverrideInternal(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1704
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sLandscapeToPortrait:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1705
    return v1

    .line 1710
    :cond_0
    if-eqz p0, :cond_2

    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1711
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1712
    .local v0, "activityManager":Landroid/app/ActivityManager;
    if-eqz v0, :cond_2

    .line 1713
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$AppTask;

    .line 1714
    .local v3, "appTask":Landroid/app/ActivityManager$AppTask;
    invoke-virtual {v3}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v4

    .line 1715
    .local v4, "taskInfo":Landroid/app/TaskInfo;
    iget-object v5, v4, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    iget-object v5, v5, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    iget v5, v5, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatMode:I

    .line 1717
    .local v5, "freeformCameraCompatMode":I
    if-eqz v5, :cond_1

    iget-object v6, v4, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_1

    iget-object v6, v4, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1719
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1721
    invoke-static {v5}, Landroid/hardware/camera2/CameraManager;->getRotationOverrideForCompatFreeform(I)I

    move-result v1

    return v1

    .line 1723
    .end local v3    # "appTask":Landroid/app/ActivityManager$AppTask;
    .end local v4    # "taskInfo":Landroid/app/TaskInfo;
    .end local v5    # "freeformCameraCompatMode":I
    :cond_1
    goto :goto_0

    .line 1727
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    :cond_2
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 1731
    :try_start_0
    const-string v2, "android.camera.PROPERTY_COMPAT_OVERRIDE_LANDSCAPE_TO_PORTRAIT"

    .line 1729
    invoke-virtual {p1, v2, p2}, Landroid/content/pm/PackageManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;

    move-result-object v2

    .line 1731
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_3

    .line 1732
    move v1, v0

    goto :goto_1

    .line 1733
    :cond_3
    nop

    .line 1729
    :goto_1
    return v1

    .line 1734
    :catch_0
    move-exception v2

    .line 1739
    :cond_4
    const-wide/32 v2, 0xef10e60

    invoke-static {v2, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1740
    move v1, v0

    goto :goto_2

    .line 1741
    :cond_5
    nop

    .line 1739
    :goto_2
    return v1
.end method

.method public static isHiddenPhysicalCamera(Ljava/lang/String;)Z
    .locals 2
    .param p0, "cameraId"    # Ljava/lang/String;

    .line 2117
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v1

    .line 2119
    .local v1, "cameraService":Landroid/hardware/ICameraService;
    if-nez v1, :cond_0

    return v0

    .line 2121
    :cond_0
    invoke-interface {v1, p0}, Landroid/hardware/ICameraService;->isHiddenPhysicalCamera(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2122
    .end local v1    # "cameraService":Landroid/hardware/ICameraService;
    :catch_0
    move-exception v1

    .line 2125
    return v0
.end method

.method private openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;IIZ)Landroid/hardware/camera2/CameraDevice;
    .locals 22
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "oomScoreOffset"    # I
    .param p5, "rotationOverride"    # I
    .param p6, "sharedMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1099
    move-object/from16 v5, p0

    invoke-virtual/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    .line 1100
    .local v4, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    const/4 v10, 0x0

    .line 1101
    .local v10, "device":Landroid/hardware/camera2/CameraDevice;
    iget-object v11, v5, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1102
    const/4 v12, 0x0

    .line 1103
    .local v12, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    const/4 v0, 0x0

    .line 1104
    .local v0, "cameraDeviceSetup":Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;
    :try_start_0
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraDeviceSetup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1105
    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->isCameraDeviceSetupSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1106
    invoke-direct/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->getCameraDeviceSetupUnsafe(Ljava/lang/String;)Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;

    move-result-object v1

    move-object v0, v1

    move-object v8, v0

    goto :goto_0

    .line 1109
    :cond_0
    move-object v8, v0

    .end local v0    # "cameraDeviceSetup":Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;
    .local v8, "cameraDeviceSetup":Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;
    :goto_0
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v1, v5, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 1116
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v6, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v7, v5, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Landroid/hardware/camera2/impl/CameraDeviceImpl;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraManager;ILandroid/content/Context;Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;Z)V

    move-object v1, v0

    .line 1118
    .local v1, "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    move-result-object v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1121
    .local v14, "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    const/4 v2, 0x4

    :try_start_1
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v13

    .line 1122
    .local v13, "cameraService":Landroid/hardware/ICameraService;
    if-eqz v13, :cond_1

    .line 1128
    nop

    .line 1129
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/hardware/camera2/CameraManager;->getClientAttribution(Z)Landroid/content/AttributionSourceState;

    move-result-object v19

    .line 1130
    .local v19, "clientAttribution":Landroid/content/AttributionSourceState;
    iget-object v0, v5, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 1135
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v3, v5, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 1138
    invoke-virtual {v5, v3}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v20

    .line 1131
    move-object/from16 v15, p1

    move/from16 v16, p4

    move/from16 v18, p5

    move/from16 v21, p6

    move/from16 v17, v0

    invoke-interface/range {v13 .. v21}, Landroid/hardware/ICameraService;->connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;Ljava/lang/String;IIILandroid/content/AttributionSourceState;IZ)Landroid/hardware/camera2/ICameraDeviceUser;

    move-result-object v0

    move-object v12, v0

    .line 1169
    .end local v13    # "cameraService":Landroid/hardware/ICameraService;
    .end local v19    # "clientAttribution":Landroid/content/AttributionSourceState;
    :goto_1
    goto :goto_3

    .line 1123
    .restart local v13    # "cameraService":Landroid/hardware/ICameraService;
    :cond_1
    new-instance v0, Landroid/os/ServiceSpecificException;

    const-string v3, "Camera service is currently unavailable"

    invoke-direct {v0, v2, v3}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .end local v1    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local v4    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v8    # "cameraDeviceSetup":Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;
    .end local v10    # "device":Landroid/hardware/camera2/CameraDevice;
    .end local v12    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .end local v14    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "oomScoreOffset":I
    .end local p5    # "rotationOverride":I
    .end local p6    # "sharedMode":Z
    throw v0
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1162
    .end local v13    # "cameraService":Landroid/hardware/ICameraService;
    .restart local v1    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local v4    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v8    # "cameraDeviceSetup":Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;
    .restart local v10    # "device":Landroid/hardware/camera2/CameraDevice;
    .restart local v12    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .restart local v14    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "oomScoreOffset":I
    .restart local p5    # "rotationOverride":I
    .restart local p6    # "sharedMode":Z
    :catch_0
    move-exception v0

    .line 1164
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v3, Landroid/os/ServiceSpecificException;

    const-string v6, "Camera service is currently unavailable"

    invoke-direct {v3, v2, v6}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 1167
    .local v3, "sse":Landroid/os/ServiceSpecificException;
    invoke-virtual {v1, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/os/ServiceSpecificException;)V

    .line 1168
    invoke-static {v3}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v2

    .end local v4    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v10    # "device":Landroid/hardware/camera2/CameraDevice;
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "oomScoreOffset":I
    .end local p5    # "rotationOverride":I
    .end local p6    # "sharedMode":Z
    throw v2

    .line 1139
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "sse":Landroid/os/ServiceSpecificException;
    .restart local v4    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v10    # "device":Landroid/hardware/camera2/CameraDevice;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "oomScoreOffset":I
    .restart local p5    # "rotationOverride":I
    .restart local p6    # "sharedMode":Z
    :catch_1
    move-exception v0

    .line 1140
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v6, 0x9

    if-eq v3, v6, :cond_5

    .line 1142
    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v6, 0x6

    const/4 v7, 0x7

    if-eq v3, v7, :cond_3

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v9, 0x8

    if-eq v3, v9, :cond_3

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v3, v6, :cond_3

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v3, v2, :cond_3

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v9, 0xa

    if-ne v3, v9, :cond_2

    goto :goto_2

    .line 1160
    :cond_2
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v2

    .end local v4    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v10    # "device":Landroid/hardware/camera2/CameraDevice;
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "oomScoreOffset":I
    .end local p5    # "rotationOverride":I
    .end local p6    # "sharedMode":Z
    throw v2

    .line 1150
    .restart local v4    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v10    # "device":Landroid/hardware/camera2/CameraDevice;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "oomScoreOffset":I
    .restart local p5    # "rotationOverride":I
    .restart local p6    # "sharedMode":Z
    :cond_3
    :goto_2
    invoke-virtual {v1, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/os/ServiceSpecificException;)V

    .line 1152
    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v3, v6, :cond_4

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v3, v2, :cond_4

    iget v2, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v2, v7, :cond_4

    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    goto :goto_1

    .line 1176
    :goto_3
    invoke-virtual {v1, v12}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteDevice(Landroid/hardware/camera2/ICameraDeviceUser;)V

    .line 1177
    move-object v10, v1

    .line 1178
    .end local v1    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local v8    # "cameraDeviceSetup":Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;
    .end local v12    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .end local v14    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    monitor-exit v11

    .line 1180
    return-object v10

    .line 1156
    .restart local v0    # "e":Landroid/os/ServiceSpecificException;
    .restart local v1    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local v8    # "cameraDeviceSetup":Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;
    .restart local v12    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .restart local v14    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    :cond_4
    invoke-static {v0}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v2

    .end local v4    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v10    # "device":Landroid/hardware/camera2/CameraDevice;
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "oomScoreOffset":I
    .end local p5    # "rotationOverride":I
    .end local p6    # "sharedMode":Z
    throw v2

    .line 1141
    .restart local v4    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v10    # "device":Landroid/hardware/camera2/CameraDevice;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "oomScoreOffset":I
    .restart local p5    # "rotationOverride":I
    .restart local p6    # "sharedMode":Z
    :cond_5
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Should\'ve gone down the shim path"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v4    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v10    # "device":Landroid/hardware/camera2/CameraDevice;
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "oomScoreOffset":I
    .end local p5    # "rotationOverride":I
    .end local p6    # "sharedMode":Z
    throw v2

    .line 1178
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    .end local v1    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local v8    # "cameraDeviceSetup":Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;
    .end local v12    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .end local v14    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .restart local v4    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v10    # "device":Landroid/hardware/camera2/CameraDevice;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "oomScoreOffset":I
    .restart local p5    # "rotationOverride":I
    .restart local p6    # "sharedMode":Z
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static physicalCallbacksAreEnabledForUnavailableCamera()Z
    .locals 2

    .line 1785
    const-wide/32 v0, 0xe909d6a

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static reportExtensionSessionStats(Landroid/hardware/CameraExtensionSessionStats;)Ljava/lang/String;
    .locals 5
    .param p0, "extStats"    # Landroid/hardware/CameraExtensionSessionStats;

    .line 2240
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 2241
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    const-string v1, ""

    const-string v2, "CameraManager"

    if-nez v0, :cond_0

    .line 2242
    const-string v3, "CameraService not available. Not reporting extension stats."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    return-object v1

    .line 2246
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Landroid/hardware/ICameraService;->reportExtensionSessionStats(Landroid/hardware/CameraExtensionSessionStats;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2247
    :catch_0
    move-exception v3

    .line 2248
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Failed to report extension session stats to cameraservice."

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2250
    .end local v3    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public static shouldOverrideToPortrait(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 2
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1763
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sLandscapeToPortrait:Z

    if-nez v0, :cond_0

    .line 1764
    const/4 v0, 0x0

    return v0

    .line 1767
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 1769
    :try_start_0
    const-string v0, "android.camera.PROPERTY_COMPAT_OVERRIDE_LANDSCAPE_TO_PORTRAIT"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;

    move-result-object v0

    .line 1771
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1769
    return v0

    .line 1772
    :catch_0
    move-exception v0

    .line 1777
    :cond_1
    const-wide/32 v0, 0xef10e60

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 735
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->getRotationOverride(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    return-object v0
.end method

.method public getCameraCharacteristics(Ljava/lang/String;Z)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "overrideToPortrait"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 760
    nop

    .line 761
    if-eqz p2, :cond_0

    .line 762
    const/4 v0, 0x1

    goto :goto_0

    .line 763
    :cond_0
    const/4 v0, 0x0

    .line 760
    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    return-object v0
.end method

.method public getCameraDeviceSetup(Ljava/lang/String;)Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 916
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->isCameraDeviceSetupSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 921
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraDeviceSetupUnsafe(Ljava/lang/String;)Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;

    move-result-object v0

    return-object v0

    .line 917
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraDeviceSetup is not supported for Camera ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCameraExtensionCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .locals 4
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 860
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 861
    .local v0, "chars":Landroid/hardware/camera2/CameraCharacteristics;
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraManager;->getPhysicalIdToCharsMap(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/Map;

    move-result-object v1

    .line 862
    .local v1, "characteristicsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    new-instance v2, Landroid/hardware/camera2/CameraExtensionCharacteristics;

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-object v2
.end method

.method public getCameraIdList()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 326
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDeviceId()I

    move-result v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 327
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v2

    .line 326
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraIdList(II)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCameraIdListNoLazy()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 343
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDeviceId()I

    move-result v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 344
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v2

    .line 343
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraIdListNoLazy(II)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCameraService()Landroid/hardware/ICameraService;
    .locals 1

    .line 2217
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    return-object v0
.end method

.method public getClientAttribution()Landroid/content/AttributionSourceState;
    .locals 2

    .line 1070
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/CameraManager;->getClientAttribution(IZ)Landroid/content/AttributionSourceState;

    move-result-object v0

    return-object v0
.end method

.method public getClientAttribution(IZ)Landroid/content/AttributionSourceState;
    .locals 4
    .param p1, "deviceIdOverride"    # I
    .param p2, "useContextAttributionSource"    # Z

    .line 1030
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    .line 1031
    .local v0, "contextAttributionSource":Landroid/content/AttributionSource;
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1032
    invoke-virtual {v0, p1}, Landroid/content/AttributionSource;->withDeviceId(I)Landroid/content/AttributionSource;

    move-result-object v0

    .line 1034
    :cond_0
    nop

    .line 1035
    invoke-virtual {v0}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v2

    .line 1037
    .local v2, "contextAttributionSourceState":Landroid/content/AttributionSourceState;
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->dataDeliveryPermissionChecks()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    .line 1038
    return-object v2

    .line 1040
    :cond_1
    new-instance v3, Landroid/content/AttributionSourceState;

    invoke-direct {v3}, Landroid/content/AttributionSourceState;-><init>()V

    .line 1042
    .local v3, "clientAttribution":Landroid/content/AttributionSourceState;
    iput v1, v3, Landroid/content/AttributionSourceState;->uid:I

    .line 1043
    iput v1, v3, Landroid/content/AttributionSourceState;->pid:I

    .line 1044
    iget v1, v2, Landroid/content/AttributionSourceState;->deviceId:I

    iput v1, v3, Landroid/content/AttributionSourceState;->deviceId:I

    .line 1045
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    .line 1046
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    .line 1047
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/content/AttributionSourceState;

    iput-object v1, v3, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    .line 1048
    return-object v3
.end method

.method public getClientAttribution(Z)Landroid/content/AttributionSourceState;
    .locals 1
    .param p1, "useContextAttributionSource"    # Z

    .line 1061
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CameraManager;->getClientAttribution(IZ)Landroid/content/AttributionSourceState;

    move-result-object v0

    return-object v0
.end method

.method public getConcurrentCameraIds()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 398
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDeviceId()I

    move-result v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 399
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v2

    .line 398
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getConcurrentCameraIds(II)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDevicePolicyFromContext(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 595
    invoke-virtual {p1}, Landroid/content/Context;->getDeviceId()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 596
    return v1

    .line 599
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

    if-nez v0, :cond_1

    .line 600
    const-class v0, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/VirtualDeviceManager;

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager;->mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

    .line 602
    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

    if-nez v0, :cond_2

    .line 603
    goto :goto_0

    .line 604
    :cond_2
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {p1}, Landroid/content/Context;->getDeviceId()I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/companion/virtual/VirtualDeviceManager;->getDevicePolicy(II)I

    move-result v1

    .line 602
    :goto_0
    return v1
.end method

.method public getPhysicalIdToCharsMap(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/Map;
    .locals 5
    .param p1, "chars"    # Landroid/hardware/camera2/CameraCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 872
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 874
    .local v0, "physicalIdsToChars":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v1

    .line 875
    .local v1, "physicalCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 876
    .local v3, "physicalCameraId":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    .line 877
    .local v4, "physicalChars":Landroid/hardware/camera2/CameraCharacteristics;
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    .end local v3    # "physicalCameraId":Ljava/lang/String;
    .end local v4    # "physicalChars":Landroid/hardware/camera2/CameraCharacteristics;
    goto :goto_0

    .line 879
    :cond_0
    return-object v0
.end method

.method public getTorchStrengthLevel(Ljava/lang/String;)I
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1658
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_0

    .line 1661
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    .line 1664
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getClientAttribution()Landroid/content/AttributionSourceState;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 1665
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v2

    .line 1662
    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getTorchStrengthLevel(Ljava/lang/String;Landroid/content/AttributionSourceState;I)I

    move-result v0

    .line 1661
    return v0

    .line 1659
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No camera available on device."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public injectCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "internalCamId"    # Ljava/lang/String;
    .param p3, "externalCamId"    # Ljava/lang/String;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2160
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_1

    .line 2163
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 2164
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-eqz v0, :cond_0

    .line 2168
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2170
    :try_start_0
    new-instance v2, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;

    invoke-direct {v2, p5, p4}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;-><init>(Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;Ljava/util/concurrent/Executor;)V

    .line 2172
    .local v2, "injectionSessionImpl":Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;
    nop

    .line 2173
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->getCallback()Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$CameraInjectionCallback;

    move-result-object v3

    .line 2174
    .local v3, "cameraInjectionCallback":Landroid/hardware/camera2/ICameraInjectionCallback;
    invoke-interface {v0, p1, p2, p3, v3}, Landroid/hardware/ICameraService;->injectCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/ICameraInjectionCallback;)Landroid/hardware/camera2/ICameraInjectionSession;

    move-result-object v4

    .line 2176
    .local v4, "injectionSession":Landroid/hardware/camera2/ICameraInjectionSession;
    invoke-virtual {v2, v4}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->setRemoteInjectionSession(Landroid/hardware/camera2/ICameraInjectionSession;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2185
    .end local v2    # "injectionSessionImpl":Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;
    .end local v3    # "cameraInjectionCallback":Landroid/hardware/camera2/ICameraInjectionCallback;
    .end local v4    # "injectionSession":Landroid/hardware/camera2/ICameraInjectionSession;
    nop

    .line 2186
    :try_start_1
    monitor-exit v1

    .line 2187
    return-void

    .line 2186
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 2179
    :catch_0
    move-exception v2

    .line 2181
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Landroid/os/ServiceSpecificException;

    const-string v4, "Camera service is currently unavailable"

    const/4 v5, 0x4

    invoke-direct {v3, v5, v4}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 2184
    .local v3, "sse":Landroid/os/ServiceSpecificException;
    invoke-static {v3}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v4

    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "internalCamId":Ljava/lang/String;
    .end local p3    # "externalCamId":Ljava/lang/String;
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .end local p5    # "callback":Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;
    throw v4

    .line 2177
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "sse":Landroid/os/ServiceSpecificException;
    .restart local v0    # "cameraService":Landroid/hardware/ICameraService;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "internalCamId":Ljava/lang/String;
    .restart local p3    # "externalCamId":Ljava/lang/String;
    .restart local p4    # "executor":Ljava/util/concurrent/Executor;
    .restart local p5    # "callback":Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;
    :catch_1
    move-exception v2

    .line 2178
    .local v2, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v2}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    move-result-object v3

    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "internalCamId":Ljava/lang/String;
    .end local p3    # "externalCamId":Ljava/lang/String;
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .end local p5    # "callback":Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;
    throw v3

    .line 2186
    .end local v2    # "e":Landroid/os/ServiceSpecificException;
    .restart local v0    # "cameraService":Landroid/hardware/ICameraService;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "internalCamId":Ljava/lang/String;
    .restart local p3    # "externalCamId":Ljava/lang/String;
    .restart local p4    # "executor":Ljava/util/concurrent/Executor;
    .restart local p5    # "callback":Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2165
    :cond_0
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const/4 v2, 0x2

    const-string v3, "Camera service is currently unavailable"

    invoke-direct {v1, v2, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 2161
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No cameras available on device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public injectSessionParams(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "sessionParams"    # Landroid/hardware/camera2/CaptureRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2209
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->injectSessionParams(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)V

    .line 2210
    return-void
.end method

.method public isCameraDeviceSetupSupported(Ljava/lang/String;)Z
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 963
    if-eqz p1, :cond_1

    .line 967
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_0

    .line 968
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDeviceId()I

    move-result v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 969
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v2

    .line 968
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraIdList(II)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 969
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 975
    .local v0, "chars":Landroid/hardware/camera2/CameraCharacteristics;
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceSetupImpl;->isCameraDeviceSetupSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v1

    return v1

    .line 970
    .end local v0    # "chars":Landroid/hardware/camera2/CameraCharacteristics;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera ID \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not available on device."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 964
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Camera ID was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCameraDeviceSharingSupported(Ljava/lang/String;)Z
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1001
    if-eqz p1, :cond_2

    .line 1005
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_1

    .line 1006
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDeviceId()I

    move-result v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 1007
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v2

    .line 1006
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraIdList(II)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1007
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1012
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 1013
    .local v0, "chars":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SHARED_SESSION_OUTPUT_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1014
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 1015
    .local v1, "sharedOutputConfiguration":[J
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 1008
    .end local v0    # "chars":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v1    # "sharedOutputConfiguration":[J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera ID \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not available on device."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1002
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Camera ID was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCameraServiceDisabled()Z
    .locals 1

    .line 2226
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    return v0
.end method

.method public isConcurrentSessionConfigurationSupported(Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/params/SessionConfiguration;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 437
    .local p1, "cameraIdAndSessionConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;>;"
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 440
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 441
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getClientAttribution()Landroid/content/AttributionSourceState;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 442
    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v3

    .line 438
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isConcurrentSessionConfigurationSupported(Ljava/util/Map;ILandroid/content/AttributionSourceState;I)Z

    move-result v0

    .line 437
    return v0
.end method

.method public openCamera(Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .locals 8
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "oomScoreOffset"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1466
    if-eqz p3, :cond_1

    .line 1469
    if-ltz p2, :cond_0

    .line 1473
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 1474
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->getRotationOverride(Landroid/content/Context;)I

    move-result v6

    .line 1473
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move-object v4, p3

    move-object v3, p4

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "oomScoreOffset":I
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .local v2, "cameraId":Ljava/lang/String;
    .local v3, "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .local v4, "executor":Ljava/util/concurrent/Executor;
    .local v5, "oomScoreOffset":I
    invoke-virtual/range {v1 .. v7}, Landroid/hardware/camera2/CameraManager;->openCameraImpl(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;IIZ)V

    .line 1475
    return-void

    .line 1470
    .end local v2    # "cameraId":Ljava/lang/String;
    .end local v3    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    .end local v5    # "oomScoreOffset":I
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "oomScoreOffset":I
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    :cond_0
    move-object v2, p1

    move v5, p2

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "oomScoreOffset":I
    .restart local v2    # "cameraId":Ljava/lang/String;
    .restart local v5    # "oomScoreOffset":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "oomScoreOffset < 0, cannot increase priority of camera client"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1467
    .end local v2    # "cameraId":Ljava/lang/String;
    .end local v5    # "oomScoreOffset":I
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "oomScoreOffset":I
    :cond_1
    move-object v2, p1

    move v5, p2

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "oomScoreOffset":I
    .restart local v2    # "cameraId":Ljava/lang/String;
    .restart local v5    # "oomScoreOffset":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "executor was null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    .locals 7
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1265
    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 1266
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->getRotationOverride(Landroid/content/Context;)I

    move-result v5

    .line 1265
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .local v1, "cameraId":Ljava/lang/String;
    .local v2, "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/camera2/CameraManager;->openCameraImpl(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;IIZ)V

    .line 1267
    return-void
.end method

.method public openCamera(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .locals 8
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1348
    if-eqz p2, :cond_0

    .line 1351
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 1352
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->getRotationOverride(Landroid/content/Context;)I

    move-result v6

    .line 1351
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v3, p3

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .local v2, "cameraId":Ljava/lang/String;
    .local v3, "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .local v4, "executor":Ljava/util/concurrent/Executor;
    invoke-virtual/range {v1 .. v7}, Landroid/hardware/camera2/CameraManager;->openCameraImpl(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;IIZ)V

    .line 1353
    return-void

    .line 1349
    .end local v2    # "cameraId":Ljava/lang/String;
    .end local v3    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    :cond_0
    move-object v2, p1

    move-object v4, p2

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local v2    # "cameraId":Ljava/lang/String;
    .restart local v4    # "executor":Ljava/util/concurrent/Executor;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "executor was null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public openCamera(Ljava/lang/String;ZLandroid/os/Handler;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .locals 7
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "overrideToPortrait"    # Z
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1302
    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 1304
    if-eqz p2, :cond_0

    .line 1305
    const/4 v0, 0x1

    move v5, v0

    goto :goto_0

    .line 1306
    :cond_0
    const/4 v0, 0x0

    move v5, v0

    :goto_0
    nop

    .line 1302
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p4    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .local v1, "cameraId":Ljava/lang/String;
    .local v2, "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/camera2/CameraManager;->openCameraImpl(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;IIZ)V

    .line 1307
    return-void
.end method

.method public openCameraImpl(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;IIZ)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "oomScoreOffset"    # I
    .param p5, "rotationOverride"    # I
    .param p6, "sharedMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1505
    if-eqz p1, :cond_2

    .line 1507
    if-eqz p2, :cond_1

    .line 1510
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_0

    .line 1514
    invoke-direct/range {p0 .. p6}, Landroid/hardware/camera2/CameraManager;->openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;IIZ)Landroid/hardware/camera2/CameraDevice;

    .line 1516
    return-void

    .line 1511
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No cameras available on device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1508
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1506
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cameraId was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openSharedCamera(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .locals 8
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1396
    if-eqz p2, :cond_1

    .line 1399
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->isCameraDeviceSharingSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1403
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 1404
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->getRotationOverride(Landroid/content/Context;)I

    move-result v6

    .line 1403
    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v3, p3

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .local v2, "cameraId":Ljava/lang/String;
    .local v3, "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .local v4, "executor":Ljava/util/concurrent/Executor;
    invoke-virtual/range {v1 .. v7}, Landroid/hardware/camera2/CameraManager;->openCameraImpl(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;IIZ)V

    .line 1405
    return-void

    .line 1400
    .end local v2    # "cameraId":Ljava/lang/String;
    .end local v3    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    :cond_0
    move-object v2, p1

    move-object v4, p2

    move-object v3, p3

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .restart local v2    # "cameraId":Ljava/lang/String;
    .restart local v3    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .restart local v4    # "executor":Ljava/util/concurrent/Executor;
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "CameraDevice sharing is not supported for Camera ID: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1397
    .end local v2    # "cameraId":Ljava/lang/String;
    .end local v3    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    :cond_1
    move-object v2, p1

    move-object v4, p2

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local v2    # "cameraId":Ljava/lang/String;
    .restart local v4    # "executor":Ljava/util/concurrent/Executor;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "executor was null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prepareCameraCharacteristics(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/ICameraService;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "metadata"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p3, "cameraService"    # Landroid/hardware/ICameraService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 817
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 819
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setCameraId(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 822
    goto :goto_0

    .line 839
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 820
    :catch_0
    move-exception v1

    .line 821
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_1
    const-string v2, "CameraManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse camera Id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to integer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 826
    invoke-virtual {v2}, Landroid/content/Context;->getDeviceId()I

    move-result v2

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v3

    .line 825
    invoke-virtual {v1, p1, v2, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->cameraIdHasConcurrentStreams(Ljava/lang/String;II)Z

    move-result v1

    .line 827
    .local v1, "hasConcurrentStreams":Z
    invoke-virtual {p2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setHasMandatoryConcurrentStreams(Z)V

    .line 829
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager;->getDisplaySize()Landroid/util/Size;

    move-result-object v2

    .line 830
    .local v2, "displaySize":Landroid/util/Size;
    invoke-virtual {p2, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setDisplaySize(Landroid/util/Size;)V

    .line 832
    nop

    .line 833
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraManager;->getPhysicalCameraMultiResolutionConfigs(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/ICameraService;)Ljava/util/Map;

    move-result-object v3

    .line 834
    .local v3, "multiResolutionSizeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Landroid/hardware/camera2/params/StreamConfiguration;>;"
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 835
    invoke-virtual {p2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setMultiResolutionStreamConfigurationMap(Ljava/util/Map;)V

    .line 838
    :cond_0
    new-instance v4, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v4, p2}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    monitor-exit v0

    return-object v4

    .line 839
    .end local v1    # "hasConcurrentStreams":Z
    .end local v2    # "displaySize":Landroid/util/Size;
    .end local v3    # "multiResolutionSizeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Landroid/hardware/camera2/params/StreamConfiguration;>;"
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V
    .locals 6
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 474
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    .line 475
    invoke-static {p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-boolean v3, p0, Landroid/hardware/camera2/CameraManager;->mHasOpenCloseListenerPermission:Z

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 476
    invoke-virtual {v1}, Landroid/content/Context;->getDeviceId()I

    move-result v4

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v5

    .line 474
    move-object v1, p1

    .end local p1    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .local v1, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;ZII)V

    .line 477
    return-void
.end method

.method public registerAvailabilityCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .locals 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 511
    if-eqz p1, :cond_0

    .line 514
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    iget-boolean v3, p0, Landroid/hardware/camera2/CameraManager;->mHasOpenCloseListenerPermission:Z

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 515
    invoke-virtual {v1}, Landroid/content/Context;->getDeviceId()I

    move-result v4

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 516
    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v5

    .line 514
    move-object v2, p1

    move-object v1, p2

    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .local v1, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .local v2, "executor":Ljava/util/concurrent/Executor;
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;ZII)V

    .line 517
    return-void

    .line 512
    .end local v1    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    :cond_0
    move-object v2, p1

    move-object v1, p2

    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .restart local v1    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .restart local v2    # "executor":Ljava/util/concurrent/Executor;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "executor was null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerDeviceStateListener(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 2
    .param p1, "chars"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 308
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerDeviceStateListener(Landroid/hardware/camera2/CameraCharacteristics;Landroid/content/Context;)V

    .line 309
    return-void
.end method

.method public registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 554
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    .line 555
    invoke-static {p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDeviceId()I

    move-result v2

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 556
    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v3

    .line 554
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;II)V

    .line 557
    return-void
.end method

.method public registerTorchCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 574
    if-eqz p1, :cond_0

    .line 577
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDeviceId()I

    move-result v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 578
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v2

    .line 577
    invoke-virtual {v0, p2, p1, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;II)V

    .line 579
    return-void

    .line 575
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTorchMode(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1559
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_0

    .line 1562
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    .line 1566
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getClientAttribution()Landroid/content/AttributionSourceState;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 1567
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v2

    .line 1563
    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->setTorchMode(Ljava/lang/String;ZLandroid/content/AttributionSourceState;I)V

    .line 1568
    return-void

    .line 1560
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No cameras available on device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public turnOnTorchWithStrengthLevel(Ljava/lang/String;I)V
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "torchStrength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1627
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_0

    .line 1630
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    .line 1634
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getClientAttribution()Landroid/content/AttributionSourceState;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 1635
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraManager;->getDevicePolicyFromContext(Landroid/content/Context;)I

    move-result v2

    .line 1631
    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->turnOnTorchWithStrengthLevel(Ljava/lang/String;ILandroid/content/AttributionSourceState;I)V

    .line 1636
    return-void

    .line 1628
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No camera available on device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 528
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 529
    return-void
.end method

.method public unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 590
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V

    .line 591
    return-void
.end method
