.class public final Landroid/credentials/CredentialProviderInfo$Builder;
.super Ljava/lang/Object;
.source "CredentialProviderInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/CredentialProviderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCapabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsEnabled:Z

.field private mIsPrimary:Z

.field private mIsSystemProvider:Z

.field private mOverrideLabel:Ljava/lang/CharSequence;

.field private mServiceInfo:Landroid/content/pm/ServiceInfo;

.field private mSettingsActivity:Ljava/lang/CharSequence;

.field private mSettingsSubtitle:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCapabilities(Landroid/credentials/CredentialProviderInfo$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/credentials/CredentialProviderInfo$Builder;->mCapabilities:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsEnabled(Landroid/credentials/CredentialProviderInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/credentials/CredentialProviderInfo$Builder;->mIsEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPrimary(Landroid/credentials/CredentialProviderInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/credentials/CredentialProviderInfo$Builder;->mIsPrimary:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSystemProvider(Landroid/credentials/CredentialProviderInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/credentials/CredentialProviderInfo$Builder;->mIsSystemProvider:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOverrideLabel(Landroid/credentials/CredentialProviderInfo$Builder;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/credentials/CredentialProviderInfo$Builder;->mOverrideLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceInfo(Landroid/credentials/CredentialProviderInfo$Builder;)Landroid/content/pm/ServiceInfo;
    .locals 0

    iget-object p0, p0, Landroid/credentials/CredentialProviderInfo$Builder;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingsActivity(Landroid/credentials/CredentialProviderInfo$Builder;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/credentials/CredentialProviderInfo$Builder;->mSettingsActivity:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingsSubtitle(Landroid/credentials/CredentialProviderInfo$Builder;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/credentials/CredentialProviderInfo$Builder;->mSettingsSubtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/pm/ServiceInfo;)V
    .locals 2
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/credentials/CredentialProviderInfo$Builder;->mCapabilities:Ljava/util/List;

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/credentials/CredentialProviderInfo$Builder;->mIsSystemProvider:Z

    .line 221
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/credentials/CredentialProviderInfo$Builder;->mSettingsSubtitle:Ljava/lang/CharSequence;

    .line 222
    iput-object v1, p0, Landroid/credentials/CredentialProviderInfo$Builder;->mSettingsActivity:Ljava/lang/CharSequence;

    .line 223
    iput-boolean v0, p0, Landroid/credentials/CredentialProviderInfo$Builder;->mIsEnabled:Z

    .line 224
    iput-boolean v0, p0, Landroid/credentials/CredentialProviderInfo$Builder;->mIsPrimary:Z

    .line 225
    iput-object v1, p0, Landroid/credentials/CredentialProviderInfo$Builder;->mOverrideLabel:Ljava/lang/CharSequence;

    .line 233
    iput-object p1, p0, Landroid/credentials/CredentialProviderInfo$Builder;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 234
    return-void
.end method


# virtual methods
.method public addCapabilities(Ljava/util/List;)Landroid/credentials/CredentialProviderInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/credentials/CredentialProviderInfo$Builder;"
        }
    .end annotation

    .line 270
    .local p1, "capabilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/credentials/CredentialProviderInfo$Builder;->mCapabilities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 271
    return-object p0
.end method

.method public build()Landroid/credentials/CredentialProviderInfo;
    .locals 2

    .line 296
    new-instance v0, Landroid/credentials/CredentialProviderInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/credentials/CredentialProviderInfo;-><init>(Landroid/credentials/CredentialProviderInfo$Builder;Landroid/credentials/CredentialProviderInfo-IA;)V

    return-object v0
.end method

.method public setEnabled(Z)Landroid/credentials/CredentialProviderInfo$Builder;
    .locals 0
    .param p1, "isEnabled"    # Z

    .line 276
    iput-boolean p1, p0, Landroid/credentials/CredentialProviderInfo$Builder;->mIsEnabled:Z

    .line 277
    return-object p0
.end method

.method public setOverrideLabel(Ljava/lang/CharSequence;)Landroid/credentials/CredentialProviderInfo$Builder;
    .locals 0
    .param p1, "overrideLabel"    # Ljava/lang/CharSequence;

    .line 248
    iput-object p1, p0, Landroid/credentials/CredentialProviderInfo$Builder;->mOverrideLabel:Ljava/lang/CharSequence;

    .line 249
    return-object p0
.end method

.method public setPrimary(Z)Landroid/credentials/CredentialProviderInfo$Builder;
    .locals 0
    .param p1, "isPrimary"    # Z

    .line 290
    iput-boolean p1, p0, Landroid/credentials/CredentialProviderInfo$Builder;->mIsPrimary:Z

    .line 291
    return-object p0
.end method

.method public setSettingsActivity(Ljava/lang/CharSequence;)Landroid/credentials/CredentialProviderInfo$Builder;
    .locals 0
    .param p1, "settingsActivity"    # Ljava/lang/CharSequence;

    .line 264
    iput-object p1, p0, Landroid/credentials/CredentialProviderInfo$Builder;->mSettingsActivity:Ljava/lang/CharSequence;

    .line 265
    return-object p0
.end method

.method public setSettingsSubtitle(Ljava/lang/CharSequence;)Landroid/credentials/CredentialProviderInfo$Builder;
    .locals 0
    .param p1, "settingsSubtitle"    # Ljava/lang/CharSequence;

    .line 254
    iput-object p1, p0, Landroid/credentials/CredentialProviderInfo$Builder;->mSettingsSubtitle:Ljava/lang/CharSequence;

    .line 255
    return-object p0
.end method

.method public setSystemProvider(Z)Landroid/credentials/CredentialProviderInfo$Builder;
    .locals 0
    .param p1, "isSystemProvider"    # Z

    .line 238
    iput-boolean p1, p0, Landroid/credentials/CredentialProviderInfo$Builder;->mIsSystemProvider:Z

    .line 239
    return-object p0
.end method
