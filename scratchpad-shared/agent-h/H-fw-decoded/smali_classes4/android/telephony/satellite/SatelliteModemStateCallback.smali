.class public interface abstract Landroid/telephony/satellite/SatelliteModemStateCallback;
.super Ljava/lang/Object;
.source "SatelliteModemStateCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# virtual methods
.method public blacklist onEmergencyModeChanged(Z)V
    .locals 0
    .param p1, "isEmergency"    # Z

    .line 47
    return-void
.end method

.method public blacklist onRegistrationFailure(I)V
    .locals 0
    .param p1, "causeCode"    # I

    .line 56
    return-void
.end method

.method public abstract whitelist onSatelliteModemStateChanged(I)V
.end method

.method public blacklist onTerrestrialNetworkAvailableChanged(Z)V
    .locals 0
    .param p1, "isAvailable"    # Z

    .line 64
    return-void
.end method
