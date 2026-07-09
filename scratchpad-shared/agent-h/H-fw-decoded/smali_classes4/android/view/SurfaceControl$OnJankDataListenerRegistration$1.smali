.class Landroid/view/SurfaceControl$OnJankDataListenerRegistration$1;
.super Landroid/view/SurfaceControl$OnJankDataListenerRegistration;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl$OnJankDataListenerRegistration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    .line 575
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;-><init>(Landroid/view/SurfaceControl-IA;)V

    return-void
.end method


# virtual methods
.method public whitelist flush()V
    .locals 0

    .line 577
    return-void
.end method

.method public blacklist release()V
    .locals 0

    .line 583
    return-void
.end method

.method public whitelist removeAfter(J)V
    .locals 0
    .param p1, "afterVsync"    # J

    .line 580
    return-void
.end method
