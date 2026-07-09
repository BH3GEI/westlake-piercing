.class public final Landroid/credentials/selection/CreateCredentialProviderData$Builder;
.super Ljava/lang/Object;
.source "CreateCredentialProviderData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/selection/CreateCredentialProviderData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mProviderFlattenedComponentName:Ljava/lang/String;

.field private mRemoteEntry:Landroid/credentials/selection/Entry;

.field private mSaveEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/credentials/selection/Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "providerFlattenedComponentName"    # Ljava/lang/String;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/credentials/selection/CreateCredentialProviderData$Builder;->mSaveEntries:Ljava/util/List;

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/credentials/selection/CreateCredentialProviderData$Builder;->mRemoteEntry:Landroid/credentials/selection/Entry;

    .line 130
    iput-object p1, p0, Landroid/credentials/selection/CreateCredentialProviderData$Builder;->mProviderFlattenedComponentName:Ljava/lang/String;

    .line 131
    return-void
.end method


# virtual methods
.method public build()Landroid/credentials/selection/CreateCredentialProviderData;
    .locals 4

    .line 150
    new-instance v0, Landroid/credentials/selection/CreateCredentialProviderData;

    iget-object v1, p0, Landroid/credentials/selection/CreateCredentialProviderData$Builder;->mProviderFlattenedComponentName:Ljava/lang/String;

    iget-object v2, p0, Landroid/credentials/selection/CreateCredentialProviderData$Builder;->mSaveEntries:Ljava/util/List;

    iget-object v3, p0, Landroid/credentials/selection/CreateCredentialProviderData$Builder;->mRemoteEntry:Landroid/credentials/selection/Entry;

    invoke-direct {v0, v1, v2, v3}, Landroid/credentials/selection/CreateCredentialProviderData;-><init>(Ljava/lang/String;Ljava/util/List;Landroid/credentials/selection/Entry;)V

    return-object v0
.end method

.method public setRemoteEntry(Landroid/credentials/selection/Entry;)Landroid/credentials/selection/CreateCredentialProviderData$Builder;
    .locals 0
    .param p1, "remoteEntry"    # Landroid/credentials/selection/Entry;

    .line 143
    iput-object p1, p0, Landroid/credentials/selection/CreateCredentialProviderData$Builder;->mRemoteEntry:Landroid/credentials/selection/Entry;

    .line 144
    return-object p0
.end method

.method public setSaveEntries(Ljava/util/List;)Landroid/credentials/selection/CreateCredentialProviderData$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/credentials/selection/Entry;",
            ">;)",
            "Landroid/credentials/selection/CreateCredentialProviderData$Builder;"
        }
    .end annotation

    .line 136
    .local p1, "credentialEntries":Ljava/util/List;, "Ljava/util/List<Landroid/credentials/selection/Entry;>;"
    iput-object p1, p0, Landroid/credentials/selection/CreateCredentialProviderData$Builder;->mSaveEntries:Ljava/util/List;

    .line 137
    return-object p0
.end method
