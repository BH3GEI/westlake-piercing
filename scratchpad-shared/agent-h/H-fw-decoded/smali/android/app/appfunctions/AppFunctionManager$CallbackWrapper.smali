.class Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper;
.super Landroid/app/appfunctions/IAppFunctionEnabledCallback$Stub;
.source "AppFunctionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appfunctions/AppFunctionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackWrapper"
.end annotation


# instance fields
.field private final mCallback:Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$Fb95o_RGN_Ad_dFIFUQvYBjTOHI(Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper;Landroid/os/ParcelableException;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper;->lambda$onError$1(Landroid/os/ParcelableException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FnGtglkmdduH4sjk0y-O2ZrnZYY(Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper;->lambda$onSuccess$0()V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 0
    .param p1, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 360
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Ljava/lang/Exception;>;"
    invoke-direct {p0}, Landroid/app/appfunctions/IAppFunctionEnabledCallback$Stub;-><init>()V

    .line 361
    iput-object p2, p0, Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper;->mCallback:Landroid/os/OutcomeReceiver;

    .line 362
    iput-object p1, p0, Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 363
    return-void
.end method

.method private synthetic lambda$onError$1(Landroid/os/ParcelableException;)V
    .locals 2
    .param p1, "exception"    # Landroid/os/ParcelableException;

    .line 374
    const-class v0, Ljava/lang/IllegalArgumentException;

    .line 375
    invoke-virtual {p1}, Landroid/os/ParcelableException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 374
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper;->mCallback:Landroid/os/OutcomeReceiver;

    invoke-virtual {p1}, Landroid/os/ParcelableException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/IllegalArgumentException;

    invoke-interface {v0, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 377
    :cond_0
    const-class v0, Ljava/lang/SecurityException;

    .line 378
    invoke-virtual {p1}, Landroid/os/ParcelableException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 377
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper;->mCallback:Landroid/os/OutcomeReceiver;

    invoke-virtual {p1}, Landroid/os/ParcelableException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/SecurityException;

    invoke-interface {v0, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 381
    :cond_1
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper;->mCallback:Landroid/os/OutcomeReceiver;

    invoke-interface {v0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 383
    :goto_0
    return-void
.end method

.method private synthetic lambda$onSuccess$0()V
    .locals 2

    .line 367
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper;->mCallback:Landroid/os/OutcomeReceiver;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/os/ParcelableException;)V
    .locals 2
    .param p1, "exception"    # Landroid/os/ParcelableException;

    .line 372
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper;Landroid/os/ParcelableException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 384
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 367
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 368
    return-void
.end method
