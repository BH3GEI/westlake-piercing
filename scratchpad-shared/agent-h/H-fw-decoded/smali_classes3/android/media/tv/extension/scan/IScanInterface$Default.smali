.class public Landroid/media/tv/extension/scan/IScanInterface$Default;
.super Ljava/lang/Object;
.source "IScanInterface.java"

# interfaces
.implements Landroid/media/tv/extension/scan/IScanInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/scan/IScanInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createSession(ILjava/lang/String;Ljava/lang/String;Landroid/media/tv/extension/scan/IScanListener;)Landroid/os/IBinder;
    .locals 1
    .param p1, "broadcastType"    # I
    .param p2, "countryCode"    # Ljava/lang/String;
    .param p3, "operator"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/media/tv/extension/scan/IScanListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getParameters(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "broadcastType"    # I
    .param p2, "countryCode"    # Ljava/lang/String;
    .param p3, "operator"    # Ljava/lang/String;
    .param p4, "params"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method
