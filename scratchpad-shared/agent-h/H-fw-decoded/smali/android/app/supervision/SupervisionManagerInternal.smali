.class public abstract Landroid/app/supervision/SupervisionManagerInternal;
.super Ljava/lang/Object;
.source "SupervisionManagerInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract isActiveSupervisionApp(I)Z
.end method

.method public abstract isSupervisionEnabledForUser(I)Z
.end method

.method public abstract isSupervisionLockscreenEnabledForUser(I)Z
.end method

.method public abstract setSupervisionEnabledForUser(IZ)V
.end method

.method public abstract setSupervisionLockscreenEnabledForUser(IZLandroid/os/PersistableBundle;)V
.end method
