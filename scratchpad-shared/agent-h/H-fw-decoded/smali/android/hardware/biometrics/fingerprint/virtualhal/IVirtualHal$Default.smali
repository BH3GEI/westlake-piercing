.class public Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Default;
.super Ljava/lang/Object;
.source "IVirtualHal.java"

# interfaces
.implements Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 341
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFingerprintHal()Landroid/hardware/biometrics/fingerprint/IFingerprint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 337
    const/4 v0, 0x0

    return-object v0
.end method

.method public resetConfigurations()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 303
    return-void
.end method

.method public setAuthenticatorId(J)V
    .locals 0
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public setChallenge(J)V
    .locals 0
    .param p1, "challenge"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    return-void
.end method

.method public setControlIllumination(Z)V
    .locals 0
    .param p1, "v"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 334
    return-void
.end method

.method public setDetectInteraction(Z)V
    .locals 0
    .param p1, "v"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 328
    return-void
.end method

.method public setDisplayTouch(Z)V
    .locals 0
    .param p1, "v"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 331
    return-void
.end method

.method public setEnrollmentHit(I)V
    .locals 0
    .param p1, "hit_id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public setEnrollments([I)V
    .locals 0
    .param p1, "id"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public setLockout(Z)V
    .locals 0
    .param p1, "lockout"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    return-void
.end method

.method public setLockoutEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 257
    return-void
.end method

.method public setLockoutPermanentThreshold(I)V
    .locals 0
    .param p1, "threshold"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 295
    return-void
.end method

.method public setLockoutTimedDuration(I)V
    .locals 0
    .param p1, "durationMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 282
    return-void
.end method

.method public setLockoutTimedThreshold(I)V
    .locals 0
    .param p1, "threshold"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 270
    return-void
.end method

.method public setMaxEnrollmentPerUser(I)V
    .locals 0
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    return-void
.end method

.method public setNavigationGesture(Z)V
    .locals 0
    .param p1, "v"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 325
    return-void
.end method

.method public setNextEnrollment(Landroid/hardware/biometrics/fingerprint/virtualhal/NextEnrollment;)V
    .locals 0
    .param p1, "next_enrollment"    # Landroid/hardware/biometrics/fingerprint/virtualhal/NextEnrollment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public setOperationAuthenticateAcquired([Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;)V
    .locals 0
    .param p1, "acquired"    # [Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    return-void
.end method

.method public setOperationAuthenticateDuration(I)V
    .locals 0
    .param p1, "durationMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    return-void
.end method

.method public setOperationAuthenticateError(I)V
    .locals 0
    .param p1, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    return-void
.end method

.method public setOperationAuthenticateFails(Z)V
    .locals 0
    .param p1, "fail"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    return-void
.end method

.method public setOperationAuthenticateLatency([I)V
    .locals 0
    .param p1, "latencyMs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    return-void
.end method

.method public setOperationDetectInteractionAcquired([Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;)V
    .locals 0
    .param p1, "acquired"    # [Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    return-void
.end method

.method public setOperationDetectInteractionDuration(I)V
    .locals 0
    .param p1, "durationMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 222
    return-void
.end method

.method public setOperationDetectInteractionError(I)V
    .locals 0
    .param p1, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    return-void
.end method

.method public setOperationDetectInteractionLatency([I)V
    .locals 0
    .param p1, "latencyMs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    return-void
.end method

.method public setOperationEnrollError(I)V
    .locals 0
    .param p1, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    return-void
.end method

.method public setOperationEnrollLatency([I)V
    .locals 0
    .param p1, "latencyMs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    return-void
.end method

.method public setSensorId(I)V
    .locals 0
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 313
    return-void
.end method

.method public setSensorLocation(Landroid/hardware/biometrics/fingerprint/SensorLocation;)V
    .locals 0
    .param p1, "loc"    # Landroid/hardware/biometrics/fingerprint/SensorLocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 322
    return-void
.end method

.method public setSensorStrength(B)V
    .locals 0
    .param p1, "strength"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 316
    return-void
.end method

.method public setType(B)V
    .locals 0
    .param p1, "type"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 310
    return-void
.end method
