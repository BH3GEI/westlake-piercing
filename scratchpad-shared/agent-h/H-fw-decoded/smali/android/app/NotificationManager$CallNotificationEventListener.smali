.class public interface abstract Landroid/app/NotificationManager$CallNotificationEventListener;
.super Ljava/lang/Object;
.source "NotificationManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallNotificationEventListener"
.end annotation


# virtual methods
.method public abstract onCallNotificationPosted(Ljava/lang/String;Landroid/os/UserHandle;)V
.end method

.method public abstract onCallNotificationRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
.end method
