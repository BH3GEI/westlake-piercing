.class public interface abstract Landroid/hardware/camera2/extension/IOutputSurfaceConfiguration;
.super Ljava/lang/Object;
.source "IOutputSurfaceConfiguration.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/IOutputSurfaceConfiguration$Stub;,
        Landroid/hardware/camera2/extension/IOutputSurfaceConfiguration$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.camera2.extension.IOutputSurfaceConfiguration"


# virtual methods
.method public abstract getImageAnalysisOutputSurface()Landroid/hardware/camera2/extension/OutputSurface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getImageCaptureOutputSurface()Landroid/hardware/camera2/extension/OutputSurface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getPostviewOutputSurface()Landroid/hardware/camera2/extension/OutputSurface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getPreviewOutputSurface()Landroid/hardware/camera2/extension/OutputSurface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
