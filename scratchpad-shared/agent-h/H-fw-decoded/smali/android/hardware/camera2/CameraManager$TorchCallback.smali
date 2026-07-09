.class public abstract Landroid/hardware/camera2/CameraManager$TorchCallback;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TorchCallback"
.end annotation


# instance fields
.field private mDeviceId:I

.field private mDevicePolicy:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$TorchCallback;)I
    .locals 0

    iget p0, p0, Landroid/hardware/camera2/CameraManager$TorchCallback;->mDeviceId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDevicePolicy(Landroid/hardware/camera2/CameraManager$TorchCallback;)I
    .locals 0

    iget p0, p0, Landroid/hardware/camera2/CameraManager$TorchCallback;->mDevicePolicy:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmDeviceId(Landroid/hardware/camera2/CameraManager$TorchCallback;I)V
    .locals 0

    iput p1, p0, Landroid/hardware/camera2/CameraManager$TorchCallback;->mDeviceId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDevicePolicy(Landroid/hardware/camera2/CameraManager$TorchCallback;I)V
    .locals 0

    iput p1, p0, Landroid/hardware/camera2/CameraManager$TorchCallback;->mDevicePolicy:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2045
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTorchModeChanged(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 2082
    return-void
.end method

.method public onTorchModeUnavailable(Ljava/lang/String;)V
    .locals 0
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 2065
    return-void
.end method

.method public onTorchStrengthLevelChanged(Ljava/lang/String;I)V
    .locals 0
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "newStrengthLevel"    # I

    .line 2100
    return-void
.end method
