.class Landroid/app/NotificationManager$CallNotificationEventCallbackStub;
.super Landroid/app/ICallNotificationEventCallback$Stub;
.source "NotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallNotificationEventCallbackStub"
.end annotation


# instance fields
.field final mExecutor:Ljava/util/concurrent/Executor;

.field final mListener:Landroid/app/NotificationManager$CallNotificationEventListener;

.field final mPackageName:Ljava/lang/String;

.field final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public static synthetic $r8$lambda$1DaJdXvLMG2PebvGeHAHmHI42EE(Landroid/app/NotificationManager$CallNotificationEventCallbackStub;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/NotificationManager$CallNotificationEventCallbackStub;->lambda$onCallNotificationRemoved$1(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$as9yRruhHDkcfpMiiN974qtx5dQ(Landroid/app/NotificationManager$CallNotificationEventCallbackStub;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/NotificationManager$CallNotificationEventCallbackStub;->lambda$onCallNotificationPosted$0(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Landroid/app/NotificationManager$CallNotificationEventListener;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/app/NotificationManager$CallNotificationEventListener;

    .line 3424
    invoke-direct {p0}, Landroid/app/ICallNotificationEventCallback$Stub;-><init>()V

    .line 3425
    iput-object p1, p0, Landroid/app/NotificationManager$CallNotificationEventCallbackStub;->mPackageName:Ljava/lang/String;

    .line 3426
    iput-object p2, p0, Landroid/app/NotificationManager$CallNotificationEventCallbackStub;->mUserHandle:Landroid/os/UserHandle;

    .line 3427
    iput-object p3, p0, Landroid/app/NotificationManager$CallNotificationEventCallbackStub;->mExecutor:Ljava/util/concurrent/Executor;

    .line 3428
    iput-object p4, p0, Landroid/app/NotificationManager$CallNotificationEventCallbackStub;->mListener:Landroid/app/NotificationManager$CallNotificationEventListener;

    .line 3429
    return-void
.end method

.method private synthetic lambda$onCallNotificationPosted$0(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 3434
    iget-object v0, p0, Landroid/app/NotificationManager$CallNotificationEventCallbackStub;->mListener:Landroid/app/NotificationManager$CallNotificationEventListener;

    invoke-interface {v0, p1, p2}, Landroid/app/NotificationManager$CallNotificationEventListener;->onCallNotificationPosted(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method private synthetic lambda$onCallNotificationRemoved$1(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 3440
    iget-object v0, p0, Landroid/app/NotificationManager$CallNotificationEventCallbackStub;->mListener:Landroid/app/NotificationManager$CallNotificationEventListener;

    invoke-interface {v0, p1, p2}, Landroid/app/NotificationManager$CallNotificationEventListener;->onCallNotificationRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public onCallNotificationPosted(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 3434
    iget-object v0, p0, Landroid/app/NotificationManager$CallNotificationEventCallbackStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/NotificationManager$CallNotificationEventCallbackStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/app/NotificationManager$CallNotificationEventCallbackStub$$ExternalSyntheticLambda0;-><init>(Landroid/app/NotificationManager$CallNotificationEventCallbackStub;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3435
    return-void
.end method

.method public onCallNotificationRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 3440
    iget-object v0, p0, Landroid/app/NotificationManager$CallNotificationEventCallbackStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/NotificationManager$CallNotificationEventCallbackStub$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroid/app/NotificationManager$CallNotificationEventCallbackStub$$ExternalSyntheticLambda1;-><init>(Landroid/app/NotificationManager$CallNotificationEventCallbackStub;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3441
    return-void
.end method
