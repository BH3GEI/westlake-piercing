.class public interface abstract Landroid/app/IApplicationStartInfoCompleteListener;
.super Ljava/lang/Object;
.source "IApplicationStartInfoCompleteListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IApplicationStartInfoCompleteListener$Stub;,
        Landroid/app/IApplicationStartInfoCompleteListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.app.IApplicationStartInfoCompleteListener"


# virtual methods
.method public abstract onApplicationStartInfoComplete(Landroid/app/ApplicationStartInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
