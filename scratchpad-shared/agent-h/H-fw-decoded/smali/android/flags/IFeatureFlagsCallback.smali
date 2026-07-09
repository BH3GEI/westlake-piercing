.class public interface abstract Landroid/flags/IFeatureFlagsCallback;
.super Ljava/lang/Object;
.source "IFeatureFlagsCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/flags/IFeatureFlagsCallback$Stub;,
        Landroid/flags/IFeatureFlagsCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.flags.IFeatureFlagsCallback"


# virtual methods
.method public abstract onFlagChange(Landroid/flags/SyncableFlag;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
