.class public Landroid/app/timedetector/ITimeDetectorService$Default;
.super Ljava/lang/Object;
.source "ITimeDetectorService.java"

# interfaces
.implements Landroid/app/timedetector/ITimeDetectorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/timedetector/ITimeDetectorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Landroid/app/time/ITimeDetectorListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/app/time/ITimeDetectorListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public confirmTime(Landroid/app/time/UnixEpochTime;)Z
    .locals 1
    .param p1, "time"    # Landroid/app/time/UnixEpochTime;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public getCapabilitiesAndConfig()Landroid/app/time/TimeCapabilitiesAndConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimeState()Landroid/app/time/TimeState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public latestNetworkTime()Landroid/app/time/UnixEpochTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeListener(Landroid/app/time/ITimeDetectorListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/app/time/ITimeDetectorListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public setManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)Z
    .locals 1
    .param p1, "timeZoneSuggestion"    # Landroid/app/timedetector/ManualTimeSuggestion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public suggestExternalTime(Landroid/app/time/ExternalTimeSuggestion;)V
    .locals 0
    .param p1, "timeSuggestion"    # Landroid/app/time/ExternalTimeSuggestion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    return-void
.end method

.method public suggestManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)Z
    .locals 1
    .param p1, "timeSuggestion"    # Landroid/app/timedetector/ManualTimeSuggestion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public suggestTelephonyTime(Landroid/app/timedetector/TelephonyTimeSuggestion;)V
    .locals 0
    .param p1, "timeSuggestion"    # Landroid/app/timedetector/TelephonyTimeSuggestion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    return-void
.end method

.method public updateConfiguration(Landroid/app/time/TimeConfiguration;)Z
    .locals 1
    .param p1, "timeConfiguration"    # Landroid/app/time/TimeConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    return v0
.end method
