.class Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$2;
.super Ljava/lang/Object;
.source "RemoteComposePlayer.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->registerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 695
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$2;->this$0:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 719
    return-void
.end method

.method public whitelist onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 698
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$2;->this$0:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mAcc:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_0

    .line 699
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$2;->this$0:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->-$$Nest$fgetmInner(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;)Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    const/16 v4, 0x11

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setExternalFloat(IF)V

    .line 701
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$2;->this$0:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->-$$Nest$fgetmInner(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;)Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    const/16 v3, 0x12

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setExternalFloat(IF)V

    .line 703
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$2;->this$0:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->-$$Nest$fgetmInner(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;)Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    const/16 v2, 0x13

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setExternalFloat(IF)V

    goto/16 :goto_0

    .line 705
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$2;->this$0:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mGyro:Landroid/hardware/Sensor;

    if-ne v0, v1, :cond_1

    .line 706
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$2;->this$0:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->-$$Nest$fgetmInner(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;)Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    const/16 v4, 0x14

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setExternalFloat(IF)V

    .line 707
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$2;->this$0:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->-$$Nest$fgetmInner(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;)Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    const/16 v3, 0x15

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setExternalFloat(IF)V

    .line 708
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$2;->this$0:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->-$$Nest$fgetmInner(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;)Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setExternalFloat(IF)V

    goto :goto_0

    .line 709
    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$2;->this$0:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mMag:Landroid/hardware/Sensor;

    if-ne v0, v1, :cond_2

    .line 710
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$2;->this$0:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->-$$Nest$fgetmInner(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;)Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    const/16 v4, 0x17

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setExternalFloat(IF)V

    .line 711
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$2;->this$0:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->-$$Nest$fgetmInner(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;)Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    const/16 v3, 0x18

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setExternalFloat(IF)V

    .line 712
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$2;->this$0:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->-$$Nest$fgetmInner(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;)Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    const/16 v2, 0x19

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setExternalFloat(IF)V

    goto :goto_0

    .line 713
    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$2;->this$0:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mLight:Landroid/hardware/Sensor;

    if-ne v0, v1, :cond_3

    .line 714
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$2;->this$0:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->-$$Nest$fgetmInner(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;)Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    const/16 v2, 0x1a

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setExternalFloat(IF)V

    .line 716
    :cond_3
    :goto_0
    return-void
.end method
