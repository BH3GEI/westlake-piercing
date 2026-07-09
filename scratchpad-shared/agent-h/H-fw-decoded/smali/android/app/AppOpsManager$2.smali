.class Landroid/app/AppOpsManager$2;
.super Landroid/os/IpcDataCache$QueryHandler;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/IpcDataCache$QueryHandler<",
        "Landroid/app/AppOpsManager$AppOpModeQuery;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8022
    invoke-direct {p0}, Landroid/os/IpcDataCache$QueryHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/app/AppOpsManager$AppOpModeQuery;)Ljava/lang/Integer;
    .locals 7
    .param p1, "query"    # Landroid/app/AppOpsManager$AppOpModeQuery;

    .line 8025
    invoke-static {}, Landroid/app/AppOpsManager;->-$$Nest$smgetService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    .line 8027
    .local v1, "service":Lcom/android/internal/app/IAppOpsService;
    :try_start_0
    iget v2, p1, Landroid/app/AppOpsManager$AppOpModeQuery;->op:I

    iget v3, p1, Landroid/app/AppOpsManager$AppOpModeQuery;->uid:I

    iget-object v4, p1, Landroid/app/AppOpsManager$AppOpModeQuery;->packageName:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/AppOpsManager$AppOpModeQuery;->attributionTag:Ljava/lang/String;

    iget v6, p1, Landroid/app/AppOpsManager$AppOpModeQuery;->virtualDeviceId:I

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/app/IAppOpsService;->checkOperationRawForDevice(IILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 8029
    :catch_0
    move-exception v0

    .line 8030
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 8022
    check-cast p1, Landroid/app/AppOpsManager$AppOpModeQuery;

    invoke-virtual {p0, p1}, Landroid/app/AppOpsManager$2;->apply(Landroid/app/AppOpsManager$AppOpModeQuery;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public shouldBypassCache(Landroid/app/AppOpsManager$AppOpModeQuery;)Z
    .locals 1
    .param p1, "query"    # Landroid/app/AppOpsManager$AppOpModeQuery;

    .line 8037
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->appopModeCachingEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bridge synthetic shouldBypassCache(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 8022
    check-cast p1, Landroid/app/AppOpsManager$AppOpModeQuery;

    invoke-virtual {p0, p1}, Landroid/app/AppOpsManager$2;->shouldBypassCache(Landroid/app/AppOpsManager$AppOpModeQuery;)Z

    move-result p1

    return p1
.end method
