.class final Landroid/app/ConfigurationChangedListenerController$ListenerContainer;
.super Ljava/lang/Object;
.source "ConfigurationChangedListenerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ConfigurationChangedListenerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListenerContainer"
.end annotation


# instance fields
.field private final mConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$A4sLxIk3QWUKSXaStstCDhi9Sn0(Landroid/app/ConfigurationChangedListenerController$ListenerContainer;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ConfigurationChangedListenerController$ListenerContainer;->lambda$accept$0(Landroid/os/IBinder;)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .line 102
    .local p2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/IBinder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Landroid/app/ConfigurationChangedListenerController$ListenerContainer;->mExecutor:Ljava/util/concurrent/Executor;

    .line 104
    iput-object p2, p0, Landroid/app/ConfigurationChangedListenerController$ListenerContainer;->mConsumer:Ljava/util/function/Consumer;

    .line 105
    return-void
.end method

.method private synthetic lambda$accept$0(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 112
    iget-object v0, p0, Landroid/app/ConfigurationChangedListenerController$ListenerContainer;->mConsumer:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public accept(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 112
    iget-object v0, p0, Landroid/app/ConfigurationChangedListenerController$ListenerContainer;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/ConfigurationChangedListenerController$ListenerContainer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/ConfigurationChangedListenerController$ListenerContainer$$ExternalSyntheticLambda0;-><init>(Landroid/app/ConfigurationChangedListenerController$ListenerContainer;Landroid/os/IBinder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method

.method public isMatch(Ljava/util/function/Consumer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/os/IBinder;",
            ">;)Z"
        }
    .end annotation

    .line 108
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/IBinder;>;"
    iget-object v0, p0, Landroid/app/ConfigurationChangedListenerController$ListenerContainer;->mConsumer:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
