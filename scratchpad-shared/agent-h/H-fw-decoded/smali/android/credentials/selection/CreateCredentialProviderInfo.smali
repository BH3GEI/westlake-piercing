.class public final Landroid/credentials/selection/CreateCredentialProviderInfo;
.super Ljava/lang/Object;
.source "CreateCredentialProviderInfo.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/credentials/selection/CreateCredentialProviderInfo$Builder;
    }
.end annotation


# instance fields
.field private final mProviderName:Ljava/lang/String;

.field private final mRemoteEntry:Landroid/credentials/selection/Entry;

.field private final mSaveEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/credentials/selection/Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;Landroid/credentials/selection/Entry;)V
    .locals 1
    .param p1, "providerName"    # Ljava/lang/String;
    .param p3, "remoteEntry"    # Landroid/credentials/selection/Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/credentials/selection/Entry;",
            ">;",
            "Landroid/credentials/selection/Entry;",
            ")V"
        }
    .end annotation

    .line 65
    .local p2, "saveEntries":Ljava/util/List;, "Ljava/util/List<Landroid/credentials/selection/Entry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/credentials/selection/CreateCredentialProviderInfo;->mProviderName:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/credentials/selection/CreateCredentialProviderInfo;->mSaveEntries:Ljava/util/List;

    .line 68
    iput-object p3, p0, Landroid/credentials/selection/CreateCredentialProviderInfo;->mRemoteEntry:Landroid/credentials/selection/Entry;

    .line 69
    return-void
.end method


# virtual methods
.method public getProviderName()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Landroid/credentials/selection/CreateCredentialProviderInfo;->mProviderName:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteEntry()Landroid/credentials/selection/Entry;
    .locals 1

    .line 92
    iget-object v0, p0, Landroid/credentials/selection/CreateCredentialProviderInfo;->mRemoteEntry:Landroid/credentials/selection/Entry;

    return-object v0
.end method

.method public getSaveEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/credentials/selection/Entry;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Landroid/credentials/selection/CreateCredentialProviderInfo;->mSaveEntries:Ljava/util/List;

    return-object v0
.end method
