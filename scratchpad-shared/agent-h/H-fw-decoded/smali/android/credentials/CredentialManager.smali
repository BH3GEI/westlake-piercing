.class public final Landroid/credentials/CredentialManager;
.super Ljava/lang/Object;
.source "CredentialManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/credentials/CredentialManager$GetCandidateCredentialsTransport;,
        Landroid/credentials/CredentialManager$GetCredentialTransport;,
        Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;,
        Landroid/credentials/CredentialManager$PrepareGetCredentialTransport;,
        Landroid/credentials/CredentialManager$CreateCredentialTransport;,
        Landroid/credentials/CredentialManager$ClearCredentialStateTransport;,
        Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;,
        Landroid/credentials/CredentialManager$ProviderFilter;
    }
.end annotation


# static fields
.field private static final DEVICE_CONFIG_ENABLE_CREDENTIAL_DESC_API:Ljava/lang/String; = "enable_credential_description_api"

.field public static final DEVICE_CONFIG_ENABLE_CREDENTIAL_MANAGER:Ljava/lang/String; = "enable_credential_manager"

.field public static final EXTRA_AUTOFILL_RESULT_RECEIVER:Ljava/lang/String; = "android.credentials.AUTOFILL_RESULT_RECEIVER"

.field private static final OPTIONS_SENDER_BAL_OPTIN:Landroid/os/Bundle;

.field public static final PROVIDER_FILTER_ALL_PROVIDERS:I = 0x0

.field public static final PROVIDER_FILTER_SYSTEM_PROVIDERS_ONLY:I = 0x1

.field public static final PROVIDER_FILTER_USER_PROVIDERS_INCLUDING_HIDDEN:I = 0x3

.field public static final PROVIDER_FILTER_USER_PROVIDERS_ONLY:I = 0x2

.field public static final TAG:Ljava/lang/String; = "CredentialManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/credentials/ICredentialManager;


# direct methods
.method static bridge synthetic -$$Nest$sfgetOPTIONS_SENDER_BAL_OPTIN()Landroid/os/Bundle;
    .locals 1

    sget-object v0, Landroid/credentials/CredentialManager;->OPTIONS_SENDER_BAL_OPTIN:Landroid/os/Bundle;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 67
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 68
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Landroid/credentials/CredentialManager;->OPTIONS_SENDER_BAL_OPTIN:Landroid/os/Bundle;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/credentials/ICredentialManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/credentials/ICredentialManager;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Landroid/credentials/CredentialManager;->mContext:Landroid/content/Context;

    .line 148
    iput-object p2, p0, Landroid/credentials/CredentialManager;->mService:Landroid/credentials/ICredentialManager;

    .line 149
    return-void
.end method

.method private isCredentialDescriptionApiEnabled()Z
    .locals 3

    .line 588
    const-string v0, "enable_credential_description_api"

    const/4 v1, 0x0

    const-string v2, "credential_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isCredentialDescriptionApiEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 576
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 577
    return v0

    .line 579
    :cond_0
    nop

    .line 580
    const-string v1, "credential"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/credentials/CredentialManager;

    .line 581
    .local v1, "credentialManager":Landroid/credentials/CredentialManager;
    if-eqz v1, :cond_1

    .line 582
    invoke-direct {v1}, Landroid/credentials/CredentialManager;->isCredentialDescriptionApiEnabled()Z

    move-result v0

    return v0

    .line 584
    :cond_1
    return v0
.end method

.method private isServiceEnabled()Z
    .locals 2

    .line 564
    :try_start_0
    iget-object v0, p0, Landroid/credentials/CredentialManager;->mService:Landroid/credentials/ICredentialManager;

    invoke-interface {v0}, Landroid/credentials/ICredentialManager;->isServiceEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public static isServiceEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 545
    const-string v0, "context must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 546
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 547
    return v0

    .line 549
    :cond_0
    nop

    .line 550
    const-string v1, "credential"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/credentials/CredentialManager;

    .line 551
    .local v1, "credentialManager":Landroid/credentials/CredentialManager;
    if-eqz v1, :cond_1

    .line 552
    invoke-direct {v1}, Landroid/credentials/CredentialManager;->isServiceEnabled()Z

    move-result v0

    return v0

    .line 554
    :cond_1
    return v0
.end method


# virtual methods
.method public clearCredentialState(Landroid/credentials/ClearCredentialStateRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 4
    .param p1, "request"    # Landroid/credentials/ClearCredentialStateRequest;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/credentials/ClearCredentialStateRequest;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/credentials/ClearCredentialStateException;",
            ">;)V"
        }
    .end annotation

    .line 409
    .local p4, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/credentials/ClearCredentialStateException;>;"
    const-string/jumbo v0, "request must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 410
    const-string v0, "executor must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 411
    const-string v0, "callback must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 413
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    const-string v0, "CredentialManager"

    const-string v1, "clearCredentialState already canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return-void

    .line 418
    :cond_0
    const/4 v0, 0x0

    .line 420
    .local v0, "cancelRemote":Landroid/os/ICancellationSignal;
    :try_start_0
    iget-object v1, p0, Landroid/credentials/CredentialManager;->mService:Landroid/credentials/ICredentialManager;

    new-instance v2, Landroid/credentials/CredentialManager$ClearCredentialStateTransport;

    const/4 v3, 0x0

    invoke-direct {v2, p3, p4, v3}, Landroid/credentials/CredentialManager$ClearCredentialStateTransport;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/credentials/CredentialManager-IA;)V

    iget-object v3, p0, Landroid/credentials/CredentialManager;->mContext:Landroid/content/Context;

    .line 424
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 421
    invoke-interface {v1, p1, v2, v3}, Landroid/credentials/ICredentialManager;->clearCredentialState(Landroid/credentials/ClearCredentialStateRequest;Landroid/credentials/IClearCredentialStateCallback;Ljava/lang/String;)Landroid/os/ICancellationSignal;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 427
    goto :goto_0

    .line 425
    :catch_0
    move-exception v1

    .line 426
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 429
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    .line 430
    invoke-virtual {p2, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 432
    :cond_1
    return-void
.end method

.method public createCredential(Landroid/content/Context;Landroid/credentials/CreateCredentialRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "request"    # Landroid/credentials/CreateCredentialRequest;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/credentials/CreateCredentialRequest;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/credentials/CreateCredentialResponse;",
            "Landroid/credentials/CreateCredentialException;",
            ">;)V"
        }
    .end annotation

    .line 361
    .local p5, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/credentials/CreateCredentialResponse;Landroid/credentials/CreateCredentialException;>;"
    const-string/jumbo v0, "request must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 362
    const-string v0, "context must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 363
    const-string v0, "executor must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 364
    const-string v0, "callback must not be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 366
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    const-string v0, "CredentialManager"

    const-string v1, "createCredential already canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return-void

    .line 371
    :cond_0
    const/4 v0, 0x0

    .line 373
    .local v0, "cancelRemote":Landroid/os/ICancellationSignal;
    :try_start_0
    iget-object v1, p0, Landroid/credentials/CredentialManager;->mService:Landroid/credentials/ICredentialManager;

    new-instance v2, Landroid/credentials/CredentialManager$CreateCredentialTransport;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p4, p5, v3}, Landroid/credentials/CredentialManager$CreateCredentialTransport;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/credentials/CredentialManager-IA;)V

    iget-object v3, p0, Landroid/credentials/CredentialManager;->mContext:Landroid/content/Context;

    .line 377
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 374
    invoke-interface {v1, p2, v2, v3}, Landroid/credentials/ICredentialManager;->executeCreateCredential(Landroid/credentials/CreateCredentialRequest;Landroid/credentials/ICreateCredentialCallback;Ljava/lang/String;)Landroid/os/ICancellationSignal;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 380
    goto :goto_0

    .line 378
    :catch_0
    move-exception v1

    .line 379
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 382
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-eqz p3, :cond_1

    if-eqz v0, :cond_1

    .line 383
    invoke-virtual {p3, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 385
    :cond_1
    return-void
.end method

.method public getCandidateCredentials(Landroid/credentials/GetCredentialRequest;Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "request"    # Landroid/credentials/GetCredentialRequest;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "clientCallback"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/credentials/GetCredentialRequest;",
            "Ljava/lang/String;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/credentials/GetCandidateCredentialsResponse;",
            "Landroid/credentials/GetCandidateCredentialsException;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .line 172
    .local p5, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/credentials/GetCandidateCredentialsResponse;Landroid/credentials/GetCandidateCredentialsException;>;"
    const-string/jumbo v0, "request must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 173
    const-string v0, "callingPackage must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 174
    const-string v0, "executor must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 175
    const-string v0, "callback must not be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 177
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const-string v0, "CredentialManager"

    const-string v1, "getCandidateCredentials already canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void

    .line 182
    :cond_0
    const/4 v0, 0x0

    .line 184
    .local v0, "cancelRemote":Landroid/os/ICancellationSignal;
    :try_start_0
    iget-object v1, p0, Landroid/credentials/CredentialManager;->mService:Landroid/credentials/ICredentialManager;

    new-instance v2, Landroid/credentials/CredentialManager$GetCandidateCredentialsTransport;

    const/4 v3, 0x0

    invoke-direct {v2, p4, p5, v3}, Landroid/credentials/CredentialManager$GetCandidateCredentialsTransport;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/credentials/CredentialManager-IA;)V

    .line 185
    invoke-interface {v1, p1, v2, p6, p2}, Landroid/credentials/ICredentialManager;->getCandidateCredentials(Landroid/credentials/GetCredentialRequest;Landroid/credentials/IGetCandidateCredentialsCallback;Landroid/os/IBinder;Ljava/lang/String;)Landroid/os/ICancellationSignal;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 192
    goto :goto_0

    .line 190
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 194
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-eqz p3, :cond_1

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {p3, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 197
    :cond_1
    return-void
.end method

.method public getCredential(Landroid/content/Context;Landroid/credentials/GetCredentialRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "request"    # Landroid/credentials/GetCredentialRequest;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/credentials/GetCredentialRequest;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/credentials/GetCredentialResponse;",
            "Landroid/credentials/GetCredentialException;",
            ">;)V"
        }
    .end annotation

    .line 222
    .local p5, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/credentials/GetCredentialResponse;Landroid/credentials/GetCredentialException;>;"
    const-string/jumbo v0, "request must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 223
    const-string v0, "context must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 224
    const-string v0, "executor must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 225
    const-string v0, "callback must not be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 227
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    const-string v0, "CredentialManager"

    const-string v1, "getCredential already canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void

    .line 232
    :cond_0
    const/4 v0, 0x0

    .line 234
    .local v0, "cancelRemote":Landroid/os/ICancellationSignal;
    :try_start_0
    iget-object v1, p0, Landroid/credentials/CredentialManager;->mService:Landroid/credentials/ICredentialManager;

    new-instance v2, Landroid/credentials/CredentialManager$GetCredentialTransport;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p4, p5, v3}, Landroid/credentials/CredentialManager$GetCredentialTransport;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/credentials/CredentialManager-IA;)V

    iget-object v3, p0, Landroid/credentials/CredentialManager;->mContext:Landroid/content/Context;

    .line 238
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 235
    invoke-interface {v1, p2, v2, v3}, Landroid/credentials/ICredentialManager;->executeGetCredential(Landroid/credentials/GetCredentialRequest;Landroid/credentials/IGetCredentialCallback;Ljava/lang/String;)Landroid/os/ICancellationSignal;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 241
    goto :goto_0

    .line 239
    :catch_0
    move-exception v1

    .line 240
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 243
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-eqz p3, :cond_1

    if-eqz v0, :cond_1

    .line 244
    invoke-virtual {p3, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 246
    :cond_1
    return-void
.end method

.method public getCredential(Landroid/content/Context;Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pendingGetCredentialHandle"    # Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/credentials/GetCredentialResponse;",
            "Landroid/credentials/GetCredentialException;",
            ">;)V"
        }
    .end annotation

    .line 273
    .local p5, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/credentials/GetCredentialResponse;Landroid/credentials/GetCredentialException;>;"
    const-string/jumbo v0, "pendingGetCredentialHandle must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 274
    const-string v0, "context must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 275
    const-string v0, "executor must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 276
    const-string v0, "callback must not be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 278
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    const-string v0, "CredentialManager"

    const-string v1, "getCredential already canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void

    .line 283
    :cond_0
    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;->show(Landroid/content/Context;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 284
    return-void
.end method

.method public getCredentialProviderServices(II)Ljava/util/List;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "providerFilter"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/credentials/CredentialProviderInfo;",
            ">;"
        }
    .end annotation

    .line 532
    :try_start_0
    iget-object v0, p0, Landroid/credentials/CredentialManager;->mService:Landroid/credentials/ICredentialManager;

    invoke-interface {v0, p1, p2}, Landroid/credentials/ICredentialManager;->getCredentialProviderServices(II)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getCredentialProviderServicesForTesting(I)Ljava/util/List;
    .locals 2
    .param p1, "providerFilter"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/credentials/CredentialProviderInfo;",
            ">;"
        }
    .end annotation

    .line 511
    :try_start_0
    iget-object v0, p0, Landroid/credentials/CredentialManager;->mService:Landroid/credentials/ICredentialManager;

    invoke-interface {v0, p1}, Landroid/credentials/ICredentialManager;->getCredentialProviderServicesForTesting(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isEnabledCredentialProviderService(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 485
    const-string v0, "componentName must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 488
    :try_start_0
    iget-object v0, p0, Landroid/credentials/CredentialManager;->mService:Landroid/credentials/ICredentialManager;

    iget-object v1, p0, Landroid/credentials/CredentialManager;->mContext:Landroid/content/Context;

    .line 489
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 488
    invoke-interface {v0, p1, v1}, Landroid/credentials/ICredentialManager;->isEnabledCredentialProviderService(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 490
    :catch_0
    move-exception v0

    .line 491
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public prepareGetCredential(Landroid/credentials/GetCredentialRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 5
    .param p1, "request"    # Landroid/credentials/GetCredentialRequest;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/credentials/GetCredentialRequest;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/credentials/PrepareGetCredentialResponse;",
            "Landroid/credentials/GetCredentialException;",
            ">;)V"
        }
    .end annotation

    .line 308
    .local p4, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/credentials/PrepareGetCredentialResponse;Landroid/credentials/GetCredentialException;>;"
    const-string/jumbo v0, "request must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 309
    const-string v0, "executor must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 310
    const-string v0, "callback must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 312
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    const-string v0, "CredentialManager"

    const-string/jumbo v1, "prepareGetCredential already canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void

    .line 317
    :cond_0
    const/4 v0, 0x0

    .line 318
    .local v0, "cancelRemote":Landroid/os/ICancellationSignal;
    new-instance v1, Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;-><init>(Landroid/credentials/CredentialManager-IA;)V

    .line 321
    .local v1, "getCredentialTransport":Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;
    :try_start_0
    iget-object v3, p0, Landroid/credentials/CredentialManager;->mService:Landroid/credentials/ICredentialManager;

    new-instance v4, Landroid/credentials/CredentialManager$PrepareGetCredentialTransport;

    invoke-direct {v4, p3, p4, v1, v2}, Landroid/credentials/CredentialManager$PrepareGetCredentialTransport;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;Landroid/credentials/CredentialManager-IA;)V

    iget-object v2, p0, Landroid/credentials/CredentialManager;->mContext:Landroid/content/Context;

    .line 327
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 322
    invoke-interface {v3, p1, v4, v1, v2}, Landroid/credentials/ICredentialManager;->executePrepareGetCredential(Landroid/credentials/GetCredentialRequest;Landroid/credentials/IPrepareGetCredentialCallback;Landroid/credentials/IGetCredentialCallback;Ljava/lang/String;)Landroid/os/ICancellationSignal;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 330
    goto :goto_0

    .line 328
    :catch_0
    move-exception v2

    .line 329
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 332
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    .line 333
    invoke-virtual {p2, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 335
    :cond_1
    return-void
.end method

.method public registerCredentialDescription(Landroid/credentials/RegisterCredentialDescriptionRequest;)V
    .locals 2
    .param p1, "request"    # Landroid/credentials/RegisterCredentialDescriptionRequest;

    .line 609
    const-string/jumbo v0, "request must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 612
    :try_start_0
    iget-object v0, p0, Landroid/credentials/CredentialManager;->mService:Landroid/credentials/ICredentialManager;

    iget-object v1, p0, Landroid/credentials/CredentialManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/credentials/ICredentialManager;->registerCredentialDescription(Landroid/credentials/RegisterCredentialDescriptionRequest;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    goto :goto_0

    .line 613
    :catch_0
    move-exception v0

    .line 614
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 616
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setEnabledProviders(Ljava/util/List;Ljava/util/List;ILjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 3
    .param p3, "userId"    # I
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/credentials/SetEnabledProvidersException;",
            ">;)V"
        }
    .end annotation

    .line 455
    .local p1, "primaryProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/credentials/SetEnabledProvidersException;>;"
    const-string v0, "executor must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 456
    const-string v0, "callback must not be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 457
    const-string/jumbo v0, "providers must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 458
    const-string/jumbo v0, "primaryProviders must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 461
    :try_start_0
    iget-object v0, p0, Landroid/credentials/CredentialManager;->mService:Landroid/credentials/ICredentialManager;

    new-instance v1, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;

    const/4 v2, 0x0

    invoke-direct {v1, p4, p5, v2}, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/credentials/CredentialManager-IA;)V

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/credentials/ICredentialManager;->setEnabledProviders(Ljava/util/List;Ljava/util/List;ILandroid/credentials/ISetEnabledProvidersCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    goto :goto_0

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 467
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public unregisterCredentialDescription(Landroid/credentials/UnregisterCredentialDescriptionRequest;)V
    .locals 2
    .param p1, "request"    # Landroid/credentials/UnregisterCredentialDescriptionRequest;

    .line 627
    const-string/jumbo v0, "request must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 630
    :try_start_0
    iget-object v0, p0, Landroid/credentials/CredentialManager;->mService:Landroid/credentials/ICredentialManager;

    iget-object v1, p0, Landroid/credentials/CredentialManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/credentials/ICredentialManager;->unregisterCredentialDescription(Landroid/credentials/UnregisterCredentialDescriptionRequest;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    goto :goto_0

    .line 631
    :catch_0
    move-exception v0

    .line 632
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 634
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
