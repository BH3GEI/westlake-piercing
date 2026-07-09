.class public Landroid/hardware/ICameraService$Default;
.super Ljava/lang/Object;
.source "ICameraService.java"

# interfaces
.implements Landroid/hardware/ICameraService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ICameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Landroid/hardware/ICameraServiceListener;)[Landroid/hardware/CameraStatus;
    .locals 1
    .param p1, "listener"    # Landroid/hardware/ICameraServiceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 358
    const/4 v0, 0x0

    return-object v0
.end method

.method public connect(Landroid/hardware/ICameraClient;IIIZLandroid/content/AttributionSourceState;I)Landroid/hardware/ICamera;
    .locals 1
    .param p1, "client"    # Landroid/hardware/ICameraClient;
    .param p2, "cameraId"    # I
    .param p3, "targetSdkVersion"    # I
    .param p4, "rotationOverride"    # I
    .param p5, "forceSlowJpegMode"    # Z
    .param p6, "clientAttribution"    # Landroid/content/AttributionSourceState;
    .param p7, "devicePolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;Ljava/lang/String;IIILandroid/content/AttributionSourceState;IZ)Landroid/hardware/camera2/ICameraDeviceUser;
    .locals 1
    .param p1, "callbacks"    # Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .param p2, "cameraId"    # Ljava/lang/String;
    .param p3, "oomScoreOffset"    # I
    .param p4, "targetSdkVersion"    # I
    .param p5, "rotationOverride"    # I
    .param p6, "clientAttribution"    # Landroid/content/AttributionSourceState;
    .param p7, "devicePolicy"    # I
    .param p8, "sharedMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public createDefaultRequest(Ljava/lang/String;ILandroid/content/AttributionSourceState;I)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "templateId"    # I
    .param p3, "clientAttribution"    # Landroid/content/AttributionSourceState;
    .param p4, "devicePolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCameraCharacteristics(Ljava/lang/String;IILandroid/content/AttributionSourceState;I)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "targetSdkVersion"    # I
    .param p3, "rotationOverride"    # I
    .param p4, "clientAttribution"    # Landroid/content/AttributionSourceState;
    .param p5, "devicePolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCameraInfo(IILandroid/content/AttributionSourceState;I)Landroid/hardware/CameraInfo;
    .locals 1
    .param p1, "cameraId"    # I
    .param p2, "rotationOverride"    # I
    .param p3, "clientAttribution"    # Landroid/content/AttributionSourceState;
    .param p4, "devicePolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCameraVendorTagCache()Landroid/hardware/camera2/params/VendorTagDescriptorCache;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 189
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCameraVendorTagDescriptor()Landroid/hardware/camera2/params/VendorTagDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 179
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConcurrentCameraIds()[Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLegacyParameters(I)Ljava/lang/String;
    .locals 1
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 194
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumberOfCameras(ILandroid/content/AttributionSourceState;I)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "clientAttribution"    # Landroid/content/AttributionSourceState;
    .param p3, "devicePolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public getSessionCharacteristics(Ljava/lang/String;IILandroid/hardware/camera2/params/SessionConfiguration;Landroid/content/AttributionSourceState;I)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "targetSdkVersion"    # I
    .param p3, "rotationOverride"    # I
    .param p4, "sessionConfiguration"    # Landroid/hardware/camera2/params/SessionConfiguration;
    .param p5, "clientAttribution"    # Landroid/content/AttributionSourceState;
    .param p6, "devicePolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 354
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTorchStrengthLevel(Ljava/lang/String;Landroid/content/AttributionSourceState;I)I
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "clientAttribution"    # Landroid/content/AttributionSourceState;
    .param p3, "devicePolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public injectCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/ICameraInjectionCallback;)Landroid/hardware/camera2/ICameraInjectionSession;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "internalCamId"    # Ljava/lang/String;
    .param p3, "externalCamId"    # Ljava/lang/String;
    .param p4, "CameraInjectionCallback"    # Landroid/hardware/camera2/ICameraInjectionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 204
    const/4 v0, 0x0

    return-object v0
.end method

.method public injectSessionParams(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .locals 0
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "sessionParams"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    return-void
.end method

.method public isConcurrentSessionConfigurationSupported([Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;ILandroid/content/AttributionSourceState;I)Z
    .locals 1
    .param p1, "sessions"    # [Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;
    .param p2, "targetSdkVersion"    # I
    .param p3, "clientAttribution"    # Landroid/content/AttributionSourceState;
    .param p4, "devicePolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public isHiddenPhysicalCamera(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public isSessionConfigurationWithParametersSupported(Ljava/lang/String;ILandroid/hardware/camera2/params/SessionConfiguration;Landroid/content/AttributionSourceState;I)Z
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "targetSdkVersion"    # I
    .param p3, "sessionConfiguration"    # Landroid/hardware/camera2/params/SessionConfiguration;
    .param p4, "clientAttribution"    # Landroid/content/AttributionSourceState;
    .param p5, "devicePolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 330
    const/4 v0, 0x0

    return v0
.end method

.method public notifyDeviceStateChange(J)V
    .locals 0
    .param p1, "newState"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 273
    return-void
.end method

.method public notifyDisplayConfigurationChange()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 260
    return-void
.end method

.method public notifySystemEvent(I[I)V
    .locals 0
    .param p1, "eventId"    # I
    .param p2, "args"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 252
    return-void
.end method

.method public removeListener(Landroid/hardware/ICameraServiceListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/ICameraServiceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    return-void
.end method

.method public reportExtensionSessionStats(Landroid/hardware/CameraExtensionSessionStats;)Ljava/lang/String;
    .locals 1
    .param p1, "stats"    # Landroid/hardware/CameraExtensionSessionStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 294
    const/4 v0, 0x0

    return-object v0
.end method

.method public setTorchMode(Ljava/lang/String;ZLandroid/os/IBinder;Landroid/content/AttributionSourceState;I)V
    .locals 0
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "clientBinder"    # Landroid/os/IBinder;
    .param p4, "clientAttribution"    # Landroid/content/AttributionSourceState;
    .param p5, "devicePolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    return-void
.end method

.method public turnOnTorchWithStrengthLevel(Ljava/lang/String;ILandroid/os/IBinder;Landroid/content/AttributionSourceState;I)V
    .locals 0
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "strengthLevel"    # I
    .param p3, "clientBinder"    # Landroid/os/IBinder;
    .param p4, "clientAttribution"    # Landroid/content/AttributionSourceState;
    .param p5, "devicePolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    return-void
.end method
