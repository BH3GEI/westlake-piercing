.class public Landroid/hardware/camera2/extension/IRequestCallback$Default;
.super Ljava/lang/Object;
.source "IRequestCallback.java"

# interfaces
.implements Landroid/hardware/camera2/extension/IRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/IRequestCallback;
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

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCaptureBufferLost(IJI)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "frameNumber"    # J
    .param p4, "outputStreamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public onCaptureCompleted(ILandroid/hardware/camera2/extension/ParcelTotalCaptureResult;)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "totalCaptureResult"    # Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public onCaptureFailed(ILandroid/hardware/camera2/extension/CaptureFailure;)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "captureFailure"    # Landroid/hardware/camera2/extension/CaptureFailure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public onCaptureProgressed(ILandroid/hardware/camera2/extension/ParcelCaptureResult;)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "partialResult"    # Landroid/hardware/camera2/extension/ParcelCaptureResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public onCaptureSequenceAborted(I)V
    .locals 0
    .param p1, "sequenceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public onCaptureSequenceCompleted(IJ)V
    .locals 0
    .param p1, "sequenceId"    # I
    .param p2, "frameNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public onCaptureStarted(IJJ)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "frameNumber"    # J
    .param p4, "timestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
