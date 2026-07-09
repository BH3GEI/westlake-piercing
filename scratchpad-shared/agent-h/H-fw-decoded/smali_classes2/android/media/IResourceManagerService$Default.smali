.class public Landroid/media/IResourceManagerService$Default;
.super Ljava/lang/Object;
.source "IResourceManagerService.java"

# interfaces
.implements Landroid/media/IResourceManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IResourceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addResource(Landroid/media/ClientInfoParcel;Landroid/media/IResourceManagerClient;[Landroid/media/MediaResourceParcel;)V
    .locals 0
    .param p1, "clientInfo"    # Landroid/media/ClientInfoParcel;
    .param p2, "client"    # Landroid/media/IResourceManagerClient;
    .param p3, "resources"    # [Landroid/media/MediaResourceParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 175
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist config([Landroid/media/MediaResourcePolicyParcel;)V
    .locals 0
    .param p1, "policies"    # [Landroid/media/MediaResourcePolicyParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist getMediaResourceUsageReport([Landroid/media/MediaResourceParcel;)V
    .locals 0
    .param p1, "resources"    # [Landroid/media/MediaResourceParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    return-void
.end method

.method public blacklist markClientForPendingRemoval(Landroid/media/ClientInfoParcel;)V
    .locals 0
    .param p1, "clientInfo"    # Landroid/media/ClientInfoParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    return-void
.end method

.method public blacklist notifyClientConfigChanged(Landroid/media/ClientConfigParcel;)V
    .locals 0
    .param p1, "clientConfig"    # Landroid/media/ClientConfigParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    return-void
.end method

.method public blacklist notifyClientCreated(Landroid/media/ClientInfoParcel;)V
    .locals 0
    .param p1, "clientInfo"    # Landroid/media/ClientInfoParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    return-void
.end method

.method public blacklist notifyClientStarted(Landroid/media/ClientConfigParcel;)V
    .locals 0
    .param p1, "clientConfig"    # Landroid/media/ClientConfigParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    return-void
.end method

.method public blacklist notifyClientStopped(Landroid/media/ClientConfigParcel;)V
    .locals 0
    .param p1, "clientConfig"    # Landroid/media/ClientConfigParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    return-void
.end method

.method public blacklist overridePid(II)V
    .locals 0
    .param p1, "originalPid"    # I
    .param p2, "newPid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    return-void
.end method

.method public blacklist overrideProcessInfo(Landroid/media/IResourceManagerClient;III)V
    .locals 0
    .param p1, "client"    # Landroid/media/IResourceManagerClient;
    .param p2, "pid"    # I
    .param p3, "procState"    # I
    .param p4, "oomScore"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    return-void
.end method

.method public blacklist reclaimResource(Landroid/media/ClientInfoParcel;[Landroid/media/MediaResourceParcel;)Z
    .locals 1
    .param p1, "clientInfo"    # Landroid/media/ClientInfoParcel;
    .param p2, "resources"    # [Landroid/media/MediaResourceParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist reclaimResourcesFromClientsPendingRemoval(I)V
    .locals 0
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    return-void
.end method

.method public blacklist removeClient(Landroid/media/ClientInfoParcel;)V
    .locals 0
    .param p1, "clientInfo"    # Landroid/media/ClientInfoParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    return-void
.end method

.method public blacklist removeResource(Landroid/media/ClientInfoParcel;[Landroid/media/MediaResourceParcel;)V
    .locals 0
    .param p1, "clientInfo"    # Landroid/media/ClientInfoParcel;
    .param p2, "resources"    # [Landroid/media/MediaResourceParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method
