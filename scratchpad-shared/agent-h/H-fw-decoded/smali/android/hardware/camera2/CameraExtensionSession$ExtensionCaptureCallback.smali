.class public abstract Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
.super Ljava/lang/Object;
.source "CameraExtensionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraExtensionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtensionCaptureCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureFailed(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraExtensionSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;

    .line 135
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;I)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraExtensionSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "failure"    # I

    .line 162
    return-void
.end method

.method public onCaptureProcessProgressed(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;I)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraExtensionSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "progress"    # I

    .line 268
    return-void
.end method

.method public onCaptureProcessStarted(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraExtensionSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;

    .line 110
    return-void
.end method

.method public onCaptureResultAvailable(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraExtensionSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 233
    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraExtensionSession;I)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraExtensionSession;
    .param p2, "sequenceId"    # I

    .line 207
    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraExtensionSession;I)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraExtensionSession;
    .param p2, "sequenceId"    # I

    .line 185
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;J)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraExtensionSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "timestamp"    # J

    .line 88
    return-void
.end method
