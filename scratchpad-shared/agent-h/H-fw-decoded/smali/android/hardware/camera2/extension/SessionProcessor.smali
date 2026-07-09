.class public abstract Landroid/hardware/camera2/extension/SessionProcessor;
.super Ljava/lang/Object;
.source "SessionProcessor.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;,
        Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallbackImpl;,
        Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SessionProcessor"


# instance fields
.field private mCameraUsageTracker:Landroid/hardware/camera2/extension/CameraUsageTracker;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCameraUsageTracker(Landroid/hardware/camera2/extension/SessionProcessor;)Landroid/hardware/camera2/extension/CameraUsageTracker;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/extension/SessionProcessor;->mCameraUsageTracker:Landroid/hardware/camera2/extension/CameraUsageTracker;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract deInitSession(Landroid/os/IBinder;)V
.end method

.method getSessionProcessorBinder()Landroid/hardware/camera2/extension/ISessionProcessorImpl;
    .locals 2

    .line 522
    new-instance v0, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/camera2/extension/SessionProcessor$SessionProcessorImpl;-><init>(Landroid/hardware/camera2/extension/SessionProcessor;Landroid/hardware/camera2/extension/SessionProcessor-IA;)V

    return-object v0
.end method

.method public abstract initSession(Landroid/os/IBinder;Ljava/lang/String;Landroid/hardware/camera2/extension/CharacteristicsMap;Landroid/hardware/camera2/extension/CameraOutputSurface;Landroid/hardware/camera2/extension/CameraOutputSurface;)Landroid/hardware/camera2/extension/ExtensionConfiguration;
.end method

.method public abstract onCaptureSessionEnd()V
.end method

.method public abstract onCaptureSessionStart(Landroid/hardware/camera2/extension/RequestProcessor;Ljava/lang/String;)V
.end method

.method setCameraUsageTracker(Landroid/hardware/camera2/extension/CameraUsageTracker;)V
    .locals 0
    .param p1, "tracker"    # Landroid/hardware/camera2/extension/CameraUsageTracker;

    .line 89
    iput-object p1, p0, Landroid/hardware/camera2/extension/SessionProcessor;->mCameraUsageTracker:Landroid/hardware/camera2/extension/CameraUsageTracker;

    .line 90
    return-void
.end method

.method public abstract setParameters(Landroid/hardware/camera2/CaptureRequest;)V
.end method

.method public abstract startMultiFrameCapture(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallback;)I
.end method

.method public abstract startRepeating(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallback;)I
.end method

.method public abstract startTrigger(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/extension/SessionProcessor$CaptureCallback;)I
.end method

.method public abstract stopRepeating()V
.end method
