.class Landroid/companion/CompanionDeviceManager$SystemDataTransferCallbackProxy;
.super Landroid/companion/ISystemDataTransferCallback$Stub;
.source "CompanionDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/CompanionDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemDataTransferCallbackProxy"
.end annotation


# instance fields
.field private final mCallback:Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/companion/CompanionException;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$ABTtdy9-UT_LSpytL_bBn4ZFHEc(Landroid/companion/CompanionDeviceManager$SystemDataTransferCallbackProxy;)V
    .locals 0

    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager$SystemDataTransferCallbackProxy;->lambda$onResult$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$AfyPDF-ediE2gUNBMdyWYD6uejU(Landroid/companion/CompanionDeviceManager$SystemDataTransferCallbackProxy;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/companion/CompanionDeviceManager$SystemDataTransferCallbackProxy;->lambda$onError$1(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/companion/CompanionException;",
            ">;)V"
        }
    .end annotation

    .line 1968
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/companion/CompanionException;>;"
    invoke-direct {p0}, Landroid/companion/ISystemDataTransferCallback$Stub;-><init>()V

    .line 1969
    iput-object p1, p0, Landroid/companion/CompanionDeviceManager$SystemDataTransferCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1970
    iput-object p2, p0, Landroid/companion/CompanionDeviceManager$SystemDataTransferCallbackProxy;->mCallback:Landroid/os/OutcomeReceiver;

    .line 1971
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/companion/CompanionDeviceManager-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/companion/CompanionDeviceManager$SystemDataTransferCallbackProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    return-void
.end method

.method private synthetic lambda$onError$1(Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;

    .line 1980
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$SystemDataTransferCallbackProxy;->mCallback:Landroid/os/OutcomeReceiver;

    new-instance v1, Landroid/companion/CompanionException;

    invoke-direct {v1, p1}, Landroid/companion/CompanionException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$onResult$0()V
    .locals 2

    .line 1975
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$SystemDataTransferCallbackProxy;->mCallback:Landroid/os/OutcomeReceiver;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;

    .line 1980
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$SystemDataTransferCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/CompanionDeviceManager$SystemDataTransferCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/companion/CompanionDeviceManager$SystemDataTransferCallbackProxy$$ExternalSyntheticLambda0;-><init>(Landroid/companion/CompanionDeviceManager$SystemDataTransferCallbackProxy;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1981
    return-void
.end method

.method public onResult()V
    .locals 2

    .line 1975
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$SystemDataTransferCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/CompanionDeviceManager$SystemDataTransferCallbackProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/companion/CompanionDeviceManager$SystemDataTransferCallbackProxy$$ExternalSyntheticLambda1;-><init>(Landroid/companion/CompanionDeviceManager$SystemDataTransferCallbackProxy;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1976
    return-void
.end method
