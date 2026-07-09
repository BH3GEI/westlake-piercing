.class public final Landroid/credentials/selection/UserSelectionResult;
.super Ljava/lang/Object;
.source "UserSelectionResult.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final mEntryKey:Ljava/lang/String;

.field private final mEntrySubkey:Ljava/lang/String;

.field private final mProviderId:Ljava/lang/String;

.field private mProviderPendingIntentResponse:Landroid/credentials/selection/ProviderPendingIntentResponse;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/credentials/selection/ProviderPendingIntentResponse;)V
    .locals 1
    .param p1, "providerId"    # Ljava/lang/String;
    .param p2, "entryKey"    # Ljava/lang/String;
    .param p3, "entrySubkey"    # Ljava/lang/String;
    .param p4, "providerPendingIntentResponse"    # Landroid/credentials/selection/ProviderPendingIntentResponse;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/credentials/selection/UserSelectionResult;->mProviderId:Ljava/lang/String;

    .line 87
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/credentials/selection/UserSelectionResult;->mEntryKey:Ljava/lang/String;

    .line 88
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/credentials/selection/UserSelectionResult;->mEntrySubkey:Ljava/lang/String;

    .line 89
    iput-object p4, p0, Landroid/credentials/selection/UserSelectionResult;->mProviderPendingIntentResponse:Landroid/credentials/selection/ProviderPendingIntentResponse;

    .line 90
    return-void
.end method

.method public static sendUserSelectionResult(Landroid/os/ResultReceiver;Landroid/credentials/selection/UserSelectionResult;)V
    .locals 3
    .param p0, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p1, "userSelectionResult"    # Landroid/credentials/selection/UserSelectionResult;

    .line 49
    invoke-virtual {p1}, Landroid/credentials/selection/UserSelectionResult;->toUserSelectionDialogResult()Landroid/credentials/selection/UserSelectionDialogResult;

    move-result-object v0

    .line 50
    .local v0, "result":Landroid/credentials/selection/UserSelectionDialogResult;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v1, "resultData":Landroid/os/Bundle;
    invoke-static {v0, v1}, Landroid/credentials/selection/UserSelectionDialogResult;->addToBundle(Landroid/credentials/selection/UserSelectionDialogResult;Landroid/os/Bundle;)V

    .line 52
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 54
    return-void
.end method


# virtual methods
.method public getEntryKey()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Landroid/credentials/selection/UserSelectionResult;->mEntryKey:Ljava/lang/String;

    return-object v0
.end method

.method public getEntrySubkey()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Landroid/credentials/selection/UserSelectionResult;->mEntrySubkey:Ljava/lang/String;

    return-object v0
.end method

.method public getPendingIntentProviderResponse()Landroid/credentials/selection/ProviderPendingIntentResponse;
    .locals 1

    .line 116
    iget-object v0, p0, Landroid/credentials/selection/UserSelectionResult;->mProviderPendingIntentResponse:Landroid/credentials/selection/ProviderPendingIntentResponse;

    return-object v0
.end method

.method public getProviderId()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Landroid/credentials/selection/UserSelectionResult;->mProviderId:Ljava/lang/String;

    return-object v0
.end method

.method toUserSelectionDialogResult()Landroid/credentials/selection/UserSelectionDialogResult;
    .locals 6

    .line 121
    new-instance v0, Landroid/credentials/selection/UserSelectionDialogResult;

    iget-object v2, p0, Landroid/credentials/selection/UserSelectionResult;->mProviderId:Ljava/lang/String;

    iget-object v3, p0, Landroid/credentials/selection/UserSelectionResult;->mEntryKey:Ljava/lang/String;

    iget-object v4, p0, Landroid/credentials/selection/UserSelectionResult;->mEntrySubkey:Ljava/lang/String;

    iget-object v5, p0, Landroid/credentials/selection/UserSelectionResult;->mProviderPendingIntentResponse:Landroid/credentials/selection/ProviderPendingIntentResponse;

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/credentials/selection/UserSelectionDialogResult;-><init>(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/credentials/selection/ProviderPendingIntentResponse;)V

    return-object v0
.end method
