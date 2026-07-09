.class public interface abstract Landroid/hardware/biometrics/IBiometricContextListener;
.super Ljava/lang/Object;
.source "IBiometricContextListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/IBiometricContextListener$FoldState;,
        Landroid/hardware/biometrics/IBiometricContextListener$Stub;,
        Landroid/hardware/biometrics/IBiometricContextListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.biometrics.IBiometricContextListener"


# virtual methods
.method public abstract onDisplayStateChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onFoldChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onHardwareIgnoreTouchesChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
