.class public interface abstract Landroid/companion/virtual/sensor/IVirtualSensorCallback;
.super Ljava/lang/Object;
.source "IVirtualSensorCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub;,
        Landroid/companion/virtual/sensor/IVirtualSensorCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.companion.virtual.sensor.IVirtualSensorCallback"


# virtual methods
.method public abstract onConfigurationChanged(Landroid/companion/virtual/sensor/VirtualSensor;ZII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDirectChannelConfigured(ILandroid/companion/virtual/sensor/VirtualSensor;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDirectChannelCreated(ILandroid/os/SharedMemory;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDirectChannelDestroyed(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
