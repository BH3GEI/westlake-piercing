.class public final Landroid/credentials/PrepareGetCredentialResponse;
.super Ljava/lang/Object;
.source "PrepareGetCredentialResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;,
        Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;
    }
.end annotation


# static fields
.field private static final OPTIONS_SENDER_BAL_OPTIN:Landroid/os/Bundle;

.field private static final TAG:Ljava/lang/String; = "CredentialManager"


# instance fields
.field private final mPendingGetCredentialHandle:Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;

.field private final mResponseInternal:Landroid/credentials/PrepareGetCredentialResponseInternal;


# direct methods
.method static bridge synthetic -$$Nest$sfgetOPTIONS_SENDER_BAL_OPTIN()Landroid/os/Bundle;
    .locals 1

    sget-object v0, Landroid/credentials/PrepareGetCredentialResponse;->OPTIONS_SENDER_BAL_OPTIN:Landroid/os/Bundle;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 46
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 47
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Landroid/credentials/PrepareGetCredentialResponse;->OPTIONS_SENDER_BAL_OPTIN:Landroid/os/Bundle;

    .line 46
    return-void
.end method

.method protected constructor <init>(Landroid/credentials/PrepareGetCredentialResponseInternal;Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;)V
    .locals 2
    .param p1, "responseInternal"    # Landroid/credentials/PrepareGetCredentialResponseInternal;
    .param p2, "getCredentialTransport"    # Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p1, p0, Landroid/credentials/PrepareGetCredentialResponse;->mResponseInternal:Landroid/credentials/PrepareGetCredentialResponseInternal;

    .line 176
    new-instance v0, Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;

    .line 177
    invoke-virtual {p1}, Landroid/credentials/PrepareGetCredentialResponseInternal;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;-><init>(Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;Landroid/app/PendingIntent;)V

    iput-object v0, p0, Landroid/credentials/PrepareGetCredentialResponse;->mPendingGetCredentialHandle:Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;

    .line 178
    return-void
.end method


# virtual methods
.method public getPendingGetCredentialHandle()Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;
    .locals 1

    .line 160
    iget-object v0, p0, Landroid/credentials/PrepareGetCredentialResponse;->mPendingGetCredentialHandle:Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;

    return-object v0
.end method

.method public hasAuthenticationResults()Z
    .locals 1

    .line 141
    iget-object v0, p0, Landroid/credentials/PrepareGetCredentialResponse;->mResponseInternal:Landroid/credentials/PrepareGetCredentialResponseInternal;

    invoke-virtual {v0}, Landroid/credentials/PrepareGetCredentialResponseInternal;->hasAuthenticationResults()Z

    move-result v0

    return v0
.end method

.method public hasCredentialResults(Ljava/lang/String;)Z
    .locals 1
    .param p1, "credentialType"    # Ljava/lang/String;

    .line 132
    iget-object v0, p0, Landroid/credentials/PrepareGetCredentialResponse;->mResponseInternal:Landroid/credentials/PrepareGetCredentialResponseInternal;

    invoke-virtual {v0, p1}, Landroid/credentials/PrepareGetCredentialResponseInternal;->hasCredentialResults(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasRemoteResults()Z
    .locals 1

    .line 149
    iget-object v0, p0, Landroid/credentials/PrepareGetCredentialResponse;->mResponseInternal:Landroid/credentials/PrepareGetCredentialResponseInternal;

    invoke-virtual {v0}, Landroid/credentials/PrepareGetCredentialResponseInternal;->hasRemoteResults()Z

    move-result v0

    return v0
.end method
