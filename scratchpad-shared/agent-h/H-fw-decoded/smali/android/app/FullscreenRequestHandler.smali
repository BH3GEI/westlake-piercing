.class public Landroid/app/FullscreenRequestHandler;
.super Ljava/lang/Object;
.source "FullscreenRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FullscreenRequestHandler$RequestResult;
    }
.end annotation


# static fields
.field public static final REMOTE_CALLBACK_RESULT_KEY:Ljava/lang/String; = "result"

.field public static final RESULT_APPROVED:I = 0x0

.field public static final RESULT_FAILED_NOT_IN_FULLSCREEN_WITH_HISTORY:I = 0x1

.field public static final RESULT_FAILED_NOT_TOP_FOCUSED:I = 0x2


# direct methods
.method static bridge synthetic -$$Nest$smnotifyFullscreenRequestResult(Landroid/os/OutcomeReceiver;I)V
    .locals 0

    invoke-static {p0, p1}, Landroid/app/FullscreenRequestHandler;->notifyFullscreenRequestResult(Landroid/os/OutcomeReceiver;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static earlyCheckRequestMatchesWindowingMode(II)I
    .locals 1
    .param p0, "request"    # I
    .param p1, "windowingMode"    # I

    .line 100
    if-nez p0, :cond_0

    .line 101
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 102
    return v0

    .line 105
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static notifyFullscreenRequestResult(Landroid/os/OutcomeReceiver;I)V
    .locals 3
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Ljava/lang/Throwable;",
            ">;I)V"
        }
    .end annotation

    .line 81
    .local p0, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Ljava/lang/Throwable;>;"
    const/4 v0, 0x0

    .line 82
    .local v0, "e":Ljava/lang/Throwable;
    packed-switch p1, :pswitch_data_0

    .line 91
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 88
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The window is not the top focused window."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 89
    goto :goto_0

    .line 84
    :pswitch_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The window is not in fullscreen by calling the requestFullscreenMode API before, such that cannot be restored."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 86
    nop

    .line 94
    :goto_0
    if-eqz v0, :cond_0

    .line 95
    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 97
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static requestFullscreenMode(ILandroid/os/OutcomeReceiver;Landroid/content/res/Configuration;Landroid/os/IBinder;)V
    .locals 3
    .param p0, "request"    # I
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Ljava/lang/Throwable;",
            ">;",
            "Landroid/content/res/Configuration;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .line 51
    .local p1, "approvalCallback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Ljava/lang/Throwable;>;"
    iget-object v0, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 52
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 51
    invoke-static {p0, v0}, Landroid/app/FullscreenRequestHandler;->earlyCheckRequestMatchesWindowingMode(II)I

    move-result v0

    .line 53
    .local v0, "earlyCheck":I
    if-eqz v0, :cond_1

    .line 54
    if-eqz p1, :cond_0

    .line 55
    invoke-static {p1, v0}, Landroid/app/FullscreenRequestHandler;->notifyFullscreenRequestResult(Landroid/os/OutcomeReceiver;I)V

    .line 57
    :cond_0
    return-void

    .line 60
    :cond_1
    if-eqz p1, :cond_2

    .line 61
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v1

    new-instance v2, Landroid/app/FullscreenRequestHandler$1;

    invoke-direct {v2, p1}, Landroid/app/FullscreenRequestHandler$1;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-virtual {v1, p3, p0, v2}, Landroid/app/ActivityClient;->requestMultiwindowFullscreen(Landroid/os/IBinder;ILandroid/os/IRemoteCallback;)V

    goto :goto_0

    .line 70
    :cond_2
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p3, p0, v2}, Landroid/app/ActivityClient;->requestMultiwindowFullscreen(Landroid/os/IBinder;ILandroid/os/IRemoteCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :goto_0
    goto :goto_1

    .line 72
    :catchall_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/Throwable;
    if-eqz p1, :cond_3

    .line 74
    invoke-interface {p1, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 77
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_3
    :goto_1
    return-void
.end method
