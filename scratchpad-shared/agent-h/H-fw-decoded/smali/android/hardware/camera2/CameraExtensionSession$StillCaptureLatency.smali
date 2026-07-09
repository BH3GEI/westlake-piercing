.class public final Landroid/hardware/camera2/CameraExtensionSession$StillCaptureLatency;
.super Ljava/lang/Object;
.source "CameraExtensionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraExtensionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StillCaptureLatency"
.end annotation


# instance fields
.field private final mCaptureLatency:J

.field private final mProcessingLatency:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0
    .param p1, "captureLatency"    # J
    .param p3, "processingLatency"    # J

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    iput-wide p1, p0, Landroid/hardware/camera2/CameraExtensionSession$StillCaptureLatency;->mCaptureLatency:J

    .line 473
    iput-wide p3, p0, Landroid/hardware/camera2/CameraExtensionSession$StillCaptureLatency;->mProcessingLatency:J

    .line 474
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 499
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 500
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 502
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/CameraExtensionSession$StillCaptureLatency;

    .line 504
    .local v2, "latency":Landroid/hardware/camera2/CameraExtensionSession$StillCaptureLatency;
    iget-wide v3, p0, Landroid/hardware/camera2/CameraExtensionSession$StillCaptureLatency;->mCaptureLatency:J

    iget-wide v5, v2, Landroid/hardware/camera2/CameraExtensionSession$StillCaptureLatency;->mCaptureLatency:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    return v1

    .line 505
    :cond_2
    iget-wide v3, p0, Landroid/hardware/camera2/CameraExtensionSession$StillCaptureLatency;->mProcessingLatency:J

    iget-wide v5, v2, Landroid/hardware/camera2/CameraExtensionSession$StillCaptureLatency;->mProcessingLatency:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    return v1

    .line 507
    :cond_3
    return v0

    .line 500
    .end local v2    # "latency":Landroid/hardware/camera2/CameraExtensionSession$StillCaptureLatency;
    :cond_4
    :goto_0
    return v1
.end method

.method public getCaptureLatency()J
    .locals 2

    .line 483
    iget-wide v0, p0, Landroid/hardware/camera2/CameraExtensionSession$StillCaptureLatency;->mCaptureLatency:J

    return-wide v0
.end method

.method public getProcessingLatency()J
    .locals 2

    .line 494
    iget-wide v0, p0, Landroid/hardware/camera2/CameraExtensionSession$StillCaptureLatency;->mProcessingLatency:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 512
    iget-wide v0, p0, Landroid/hardware/camera2/CameraExtensionSession$StillCaptureLatency;->mCaptureLatency:J

    long-to-float v0, v0

    iget-wide v1, p0, Landroid/hardware/camera2/CameraExtensionSession$StillCaptureLatency;->mProcessingLatency:J

    long-to-float v1, v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([F)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StillCaptureLatency(processingLatency:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/camera2/CameraExtensionSession$StillCaptureLatency;->mProcessingLatency:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", captureLatency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/camera2/CameraExtensionSession$StillCaptureLatency;->mCaptureLatency:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
