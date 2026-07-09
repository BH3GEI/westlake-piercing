.class public final synthetic Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureRegistration;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureRegistration;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureObserver$$ExternalSyntheticLambda0;->f$0:Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureRegistration;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureObserver$$ExternalSyntheticLambda0;->f$0:Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureRegistration;

    invoke-static {v0}, Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureObserver;->lambda$onScreenCaptured$0(Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureRegistration;)V

    return-void
.end method
