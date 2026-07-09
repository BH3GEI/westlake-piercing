.class Landroid/hardware/camera2/extension/CameraExtensionService$CameraExtensionServiceImpl;
.super Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;
.source "CameraExtensionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/CameraExtensionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraExtensionServiceImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/extension/CameraExtensionService;


# direct methods
.method private constructor <init>(Landroid/hardware/camera2/extension/CameraExtensionService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 100
    iput-object p1, p0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraExtensionServiceImpl;->this$0:Landroid/hardware/camera2/extension/CameraExtensionService;

    invoke-direct {p0}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/camera2/extension/CameraExtensionService;Landroid/hardware/camera2/extension/CameraExtensionService-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/extension/CameraExtensionService$CameraExtensionServiceImpl;-><init>(Landroid/hardware/camera2/extension/CameraExtensionService;)V

    return-void
.end method


# virtual methods
.method public advancedExtensionsSupported()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    .locals 2
    .param p1, "extensionType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraExtensionServiceImpl;->this$0:Landroid/hardware/camera2/extension/CameraExtensionService;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/extension/CameraExtensionService;->onInitializeAdvancedExtension(I)Landroid/hardware/camera2/extension/AdvancedExtender;

    move-result-object v0

    .line 172
    .local v0, "extender":Landroid/hardware/camera2/extension/AdvancedExtender;
    iget-object v1, p0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraExtensionServiceImpl;->this$0:Landroid/hardware/camera2/extension/CameraExtensionService;

    invoke-static {v1}, Landroid/hardware/camera2/extension/CameraExtensionService;->-$$Nest$fgetmCameraUsageTracker(Landroid/hardware/camera2/extension/CameraExtensionService;)Landroid/hardware/camera2/extension/CameraUsageTracker;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/extension/AdvancedExtender;->setCameraUsageTracker(Landroid/hardware/camera2/extension/CameraUsageTracker;)V

    .line 173
    invoke-virtual {v0}, Landroid/hardware/camera2/extension/AdvancedExtender;->getAdvancedExtenderBinder()Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v1

    return-object v1
.end method

.method public initializeImageExtension(I)Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;
    .locals 1
    .param p1, "extensionType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    const/4 v0, 0x0

    return-object v0
.end method

.method public initializePreviewExtension(I)Landroid/hardware/camera2/extension/IPreviewExtenderImpl;
    .locals 1
    .param p1, "extensionType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method public initializeSession(Landroid/hardware/camera2/extension/IInitializeSessionCallback;)V
    .locals 5
    .param p1, "cb"    # Landroid/hardware/camera2/extension/IInitializeSessionCallback;

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "ret":Z
    invoke-static {}, Landroid/hardware/camera2/extension/CameraExtensionService;->-$$Nest$sfgetmLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 120
    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/extension/CameraExtensionService;->-$$Nest$sfgetmInitializeCb()Landroid/hardware/camera2/extension/IInitializeSessionCallback;

    move-result-object v2

    if-nez v2, :cond_0

    .line 121
    invoke-static {p1}, Landroid/hardware/camera2/extension/CameraExtensionService;->-$$Nest$sfputmInitializeCb(Landroid/hardware/camera2/extension/IInitializeSessionCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :try_start_1
    invoke-static {}, Landroid/hardware/camera2/extension/CameraExtensionService;->-$$Nest$sfgetmInitializeCb()Landroid/hardware/camera2/extension/IInitializeSessionCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/camera2/extension/IInitializeSessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraExtensionServiceImpl;->this$0:Landroid/hardware/camera2/extension/CameraExtensionService;

    invoke-static {v3}, Landroid/hardware/camera2/extension/CameraExtensionService;->-$$Nest$fgetmDeathRecipient(Landroid/hardware/camera2/extension/CameraExtensionService;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    goto :goto_0

    .line 124
    :catch_0
    move-exception v2

    .line 125
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "CameraExtensionService"

    const-string v4, "Failure to register binder death notifier!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x1

    .line 129
    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    if-eqz v0, :cond_1

    .line 133
    :try_start_3
    invoke-interface {p1}, Landroid/hardware/camera2/extension/IInitializeSessionCallback;->onSuccess()V

    goto :goto_1

    .line 135
    :cond_1
    invoke-interface {p1}, Landroid/hardware/camera2/extension/IInitializeSessionCallback;->onFailure()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 140
    :goto_1
    goto :goto_2

    .line 137
    :catch_1
    move-exception v1

    .line 139
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CameraExtensionService"

    const-string v3, "Client doesn\'t respond!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void

    .line 129
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2
.end method

.method public registerClient(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraExtensionServiceImpl;->this$0:Landroid/hardware/camera2/extension/CameraExtensionService;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/extension/CameraExtensionService;->onRegisterClient(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public releaseSession()V
    .locals 4

    .line 145
    invoke-static {}, Landroid/hardware/camera2/extension/CameraExtensionService;->-$$Nest$sfgetmLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 146
    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/extension/CameraExtensionService;->-$$Nest$sfgetmInitializeCb()Landroid/hardware/camera2/extension/IInitializeSessionCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 147
    invoke-static {}, Landroid/hardware/camera2/extension/CameraExtensionService;->-$$Nest$sfgetmInitializeCb()Landroid/hardware/camera2/extension/IInitializeSessionCallback;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/camera2/extension/IInitializeSessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraExtensionServiceImpl;->this$0:Landroid/hardware/camera2/extension/CameraExtensionService;

    invoke-static {v2}, Landroid/hardware/camera2/extension/CameraExtensionService;->-$$Nest$fgetmDeathRecipient(Landroid/hardware/camera2/extension/CameraExtensionService;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 148
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/hardware/camera2/extension/CameraExtensionService;->-$$Nest$sfputmInitializeCb(Landroid/hardware/camera2/extension/IInitializeSessionCallback;)V

    .line 150
    :cond_0
    monitor-exit v0

    .line 151
    return-void

    .line 150
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterClient(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraExtensionServiceImpl;->this$0:Landroid/hardware/camera2/extension/CameraExtensionService;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/extension/CameraExtensionService;->onUnregisterClient(Landroid/os/IBinder;)V

    .line 109
    return-void
.end method
