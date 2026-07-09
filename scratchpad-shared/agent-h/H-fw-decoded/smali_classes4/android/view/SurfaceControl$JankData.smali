.class public Landroid/view/SurfaceControl$JankData;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JankData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceControl$JankData$JankType;
    }
.end annotation


# static fields
.field public static final whitelist JANK_APPLICATION:I = 0x2

.field public static final whitelist JANK_COMPOSER:I = 0x1

.field public static final whitelist JANK_NONE:I = 0x0

.field public static final whitelist JANK_OTHER:I = 0x4


# instance fields
.field private final blacklist mActualAppFrameTimeNs:J

.field private final blacklist mFrameIntervalNs:J

.field private final blacklist mFrameVsyncId:J

.field private final blacklist mJankType:I

.field private final blacklist mScheduledAppFrameTimeNs:J


# direct methods
.method public constructor blacklist <init>(JIJJJ)V
    .locals 0
    .param p1, "frameVsyncId"    # J
    .param p3, "jankType"    # I
    .param p4, "frameIntervalNs"    # J
    .param p6, "scheduledAppFrameTimeNs"    # J
    .param p8, "actualAppFrameTimeNs"    # J

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    iput-wide p1, p0, Landroid/view/SurfaceControl$JankData;->mFrameVsyncId:J

    .line 482
    iput p3, p0, Landroid/view/SurfaceControl$JankData;->mJankType:I

    .line 483
    iput-wide p4, p0, Landroid/view/SurfaceControl$JankData;->mFrameIntervalNs:J

    .line 484
    iput-wide p6, p0, Landroid/view/SurfaceControl$JankData;->mScheduledAppFrameTimeNs:J

    .line 485
    iput-wide p8, p0, Landroid/view/SurfaceControl$JankData;->mActualAppFrameTimeNs:J

    .line 486
    return-void
.end method


# virtual methods
.method public whitelist getActualAppFrameTimeNanos()J
    .locals 2

    .line 538
    iget-wide v0, p0, Landroid/view/SurfaceControl$JankData;->mActualAppFrameTimeNs:J

    return-wide v0
.end method

.method public blacklist getFrameIntervalNanos()J
    .locals 2

    .line 516
    iget-wide v0, p0, Landroid/view/SurfaceControl$JankData;->mFrameIntervalNs:J

    return-wide v0
.end method

.method public whitelist getJankType()I
    .locals 1

    .line 506
    iget v0, p0, Landroid/view/SurfaceControl$JankData;->mJankType:I

    return v0
.end method

.method public whitelist getScheduledAppFrameTimeNanos()J
    .locals 2

    .line 529
    iget-wide v0, p0, Landroid/view/SurfaceControl$JankData;->mScheduledAppFrameTimeNs:J

    return-wide v0
.end method

.method public whitelist getVsyncId()J
    .locals 2

    .line 497
    iget-wide v0, p0, Landroid/view/SurfaceControl$JankData;->mFrameVsyncId:J

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JankData{vsync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/SurfaceControl$JankData;->mFrameVsyncId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", jankType=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$JankData;->mJankType:I

    .line 544
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frameInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/SurfaceControl$JankData;->mFrameIntervalNs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ns, scheduledAppTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/SurfaceControl$JankData;->mScheduledAppFrameTimeNs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ns, actualAppTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/SurfaceControl$JankData;->mActualAppFrameTimeNs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ns}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 543
    return-object v0
.end method
