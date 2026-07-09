.class public Landroid/flags/IFeatureFlags$Default;
.super Ljava/lang/Object;
.source "IFeatureFlags.java"

# interfaces
.implements Landroid/flags/IFeatureFlags;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/flags/IFeatureFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public overrideFlag(Landroid/flags/SyncableFlag;)V
    .locals 0
    .param p1, "flag"    # Landroid/flags/SyncableFlag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    return-void
.end method

.method public queryFlags(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/flags/SyncableFlag;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/flags/SyncableFlag;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    .local p1, "flagList":Ljava/util/List;, "Ljava/util/List<Landroid/flags/SyncableFlag;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerCallback(Landroid/flags/IFeatureFlagsCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/flags/IFeatureFlagsCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    return-void
.end method

.method public resetFlag(Landroid/flags/SyncableFlag;)V
    .locals 0
    .param p1, "flag"    # Landroid/flags/SyncableFlag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    return-void
.end method

.method public syncFlags(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/flags/SyncableFlag;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/flags/SyncableFlag;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    .local p1, "flagList":Ljava/util/List;, "Ljava/util/List<Landroid/flags/SyncableFlag;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public unregisterCallback(Landroid/flags/IFeatureFlagsCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/flags/IFeatureFlagsCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    return-void
.end method
