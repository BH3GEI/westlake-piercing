.class public Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Default;
.super Ljava/lang/Object;
.source "IVirtualHal.java"

# interfaces
.implements Landroid/hardware/biometrics/face/virtualhal/IVirtualHal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/face/virtualhal/IVirtualHal;
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

    .line 301
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFaceHal()Landroid/hardware/biometrics/face/IFace;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 297
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

    .line 269
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

    .line 202
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

    .line 213
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

    .line 261
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

    .line 248
    return-void
.end method

.method public setLockoutTimedEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 223
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

    .line 236
    return-void
.end method

.method public setNextEnrollment(Landroid/hardware/biometrics/face/virtualhal/NextEnrollment;)V
    .locals 0
    .param p1, "next_enrollment"    # Landroid/hardware/biometrics/face/virtualhal/NextEnrollment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public setOperationAuthenticateAcquired([Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;)V
    .locals 0
    .param p1, "acquired"    # [Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
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

    .line 129
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

.method public setOperationDetectInteractionFails(Z)V
    .locals 0
    .param p1, "error"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
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

    .line 182
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

    .line 162
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

    .line 289
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

    .line 279
    return-void
.end method
