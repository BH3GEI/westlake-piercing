.class public Landroid/content/pm/parsing/PackageLite;
.super Ljava/lang/Object;
.source "PackageLite.java"


# instance fields
.field private final mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

.field private final mBaseApkPath:Ljava/lang/String;

.field private final mBaseRequiredSplitTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBaseRevisionCode:I

.field private final mConfigForSplit:[Ljava/lang/String;

.field private final mCoreApp:Z

.field private final mDebuggable:Z

.field private final mDeclaredLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mExtractNativeLibs:Z

.field private final mInstallLocation:I

.field private final mIsFeatureSplits:[Z

.field private final mIsSdkLibrary:Z

.field private final mIsStaticLibrary:Z

.field private final mIsolatedSplits:Z

.field private final mMultiArch:Z

.field private final mPackageName:Ljava/lang/String;

.field private final mPageSizeCompat:I

.field private final mPath:Ljava/lang/String;

.field private final mProfileableByShell:Z

.field private final mRequiredSplitTypes:[Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSigningDetails:Landroid/content/pm/SigningDetails;

.field private final mSplitApkPaths:[Ljava/lang/String;

.field private final mSplitNames:[Ljava/lang/String;

.field private final mSplitRequired:Z

.field private final mSplitRevisionCodes:[I

.field private final mSplitTypes:[Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetSdk:I

.field private final mUse32bitAbi:Z

.field private final mUseEmbeddedDex:Z

.field private final mUsesSdkLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsesSdkLibrariesCertDigests:[[Ljava/lang/String;

.field private final mUsesSdkLibrariesVersionsMajor:[J

.field private final mUsesSplitNames:[Ljava/lang/String;

.field private final mUsesStaticLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsesStaticLibrariesCertDigests:[[Ljava/lang/String;

.field private final mUsesStaticLibrariesVersions:[J

.field private final mVerifiers:[Landroid/content/pm/VerifierInfo;

.field private final mVersionCode:I

.field private final mVersionCodeMajor:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/parsing/ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[II[Ljava/util/Set;[Ljava/util/Set;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "baseApkPath"    # Ljava/lang/String;
    .param p3, "baseApk"    # Landroid/content/pm/parsing/ApkLite;
    .param p4, "splitNames"    # [Ljava/lang/String;
    .param p5, "isFeatureSplits"    # [Z
    .param p6, "usesSplitNames"    # [Ljava/lang/String;
    .param p7, "configForSplit"    # [Ljava/lang/String;
    .param p8, "splitApkPaths"    # [Ljava/lang/String;
    .param p9, "splitRevisionCodes"    # [I
    .param p10, "targetSdk"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/ApkLite;",
            "[",
            "Ljava/lang/String;",
            "[Z[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[II[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 149
    .local p11, "requiredSplitTypes":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    .local p12, "splitTypes":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Landroid/content/pm/parsing/PackageLite;->mPath:Ljava/lang/String;

    .line 153
    iput-object p2, p0, Landroid/content/pm/parsing/PackageLite;->mBaseApkPath:Ljava/lang/String;

    .line 154
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mPackageName:Ljava/lang/String;

    .line 155
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getVersionCode()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/PackageLite;->mVersionCode:I

    .line 156
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getVersionCodeMajor()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/PackageLite;->mVersionCodeMajor:I

    .line 157
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getInstallLocation()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/PackageLite;->mInstallLocation:I

    .line 158
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getVerifiers()[Landroid/content/pm/VerifierInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mVerifiers:[Landroid/content/pm/VerifierInfo;

    .line 159
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 160
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getRevisionCode()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/PackageLite;->mBaseRevisionCode:I

    .line 161
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isCoreApp()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mCoreApp:Z

    .line 162
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isDebuggable()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mDebuggable:Z

    .line 163
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isMultiArch()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mMultiArch:Z

    .line 164
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isUse32bitAbi()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mUse32bitAbi:Z

    .line 165
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isExtractNativeLibs()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mExtractNativeLibs:Z

    .line 166
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isIsolatedSplits()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mIsolatedSplits:Z

    .line 167
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isUseEmbeddedDex()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mUseEmbeddedDex:Z

    .line 168
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getRequiredSplitTypes()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mBaseRequiredSplitTypes:Ljava/util/Set;

    .line 169
    iput-object p11, p0, Landroid/content/pm/parsing/PackageLite;->mRequiredSplitTypes:[Ljava/util/Set;

    .line 170
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isSplitRequired()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/content/pm/parsing/PackageLite;->hasAnyRequiredSplitTypes()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mSplitRequired:Z

    .line 171
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isProfileableByShell()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mProfileableByShell:Z

    .line 172
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isIsSdkLibrary()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mIsSdkLibrary:Z

    .line 173
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mUsesSdkLibraries:Ljava/util/List;

    .line 174
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mUsesSdkLibrariesVersionsMajor:[J

    .line 175
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getUsesSdkLibrariesCertDigests()[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mUsesSdkLibrariesCertDigests:[[Ljava/lang/String;

    .line 176
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isIsStaticLibrary()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mIsStaticLibrary:Z

    .line 177
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mUsesStaticLibraries:Ljava/util/List;

    .line 178
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getUsesStaticLibrariesVersions()[J

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mUsesStaticLibrariesVersions:[J

    .line 179
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getUsesStaticLibrariesCertDigests()[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mUsesStaticLibrariesCertDigests:[[Ljava/lang/String;

    .line 180
    iput-object p4, p0, Landroid/content/pm/parsing/PackageLite;->mSplitNames:[Ljava/lang/String;

    .line 181
    iput-object p12, p0, Landroid/content/pm/parsing/PackageLite;->mSplitTypes:[Ljava/util/Set;

    .line 182
    iput-object p5, p0, Landroid/content/pm/parsing/PackageLite;->mIsFeatureSplits:[Z

    .line 183
    iput-object p6, p0, Landroid/content/pm/parsing/PackageLite;->mUsesSplitNames:[Ljava/lang/String;

    .line 184
    iput-object p7, p0, Landroid/content/pm/parsing/PackageLite;->mConfigForSplit:[Ljava/lang/String;

    .line 185
    iput-object p8, p0, Landroid/content/pm/parsing/PackageLite;->mSplitApkPaths:[Ljava/lang/String;

    .line 186
    iput-object p9, p0, Landroid/content/pm/parsing/PackageLite;->mSplitRevisionCodes:[I

    .line 187
    iput p10, p0, Landroid/content/pm/parsing/PackageLite;->mTargetSdk:I

    .line 188
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getDeclaredLibraries()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mDeclaredLibraries:Ljava/util/List;

    .line 189
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getArchivedPackage()Landroid/content/pm/ArchivedPackageParcel;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

    .line 190
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getPageSizeCompat()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/PackageLite;->mPageSizeCompat:I

    .line 191
    return-void
.end method

.method private __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 534
    return-void
.end method

.method private hasAnyRequiredSplitTypes()Z
    .locals 3

    .line 217
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mBaseRequiredSplitTypes:Ljava/util/Set;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 218
    return v1

    .line 220
    :cond_0
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mRequiredSplitTypes:[Ljava/util/Set;

    new-instance v2, Landroid/content/pm/parsing/PackageLite$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/content/pm/parsing/PackageLite$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->find([Ljava/lang/Object;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic lambda$hasAnyRequiredSplitTypes$0(Ljava/util/Set;)Z
    .locals 1
    .param p0, "r"    # Ljava/util/Set;

    .line 220
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public getAllApkPaths()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/content/pm/parsing/PackageLite;->mBaseApkPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v1, p0, Landroid/content/pm/parsing/PackageLite;->mSplitApkPaths:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    iget-object v1, p0, Landroid/content/pm/parsing/PackageLite;->mSplitApkPaths:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 202
    :cond_0
    return-object v0
.end method

.method public getArchivedPackage()Landroid/content/pm/ArchivedPackageParcel;
    .locals 1

    .line 517
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

    return-object v0
.end method

.method public getBaseApkPath()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mBaseApkPath:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseRequiredSplitTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mBaseRequiredSplitTypes:Ljava/util/Set;

    return-object v0
.end method

.method public getBaseRevisionCode()I
    .locals 1

    .line 340
    iget v0, p0, Landroid/content/pm/parsing/PackageLite;->mBaseRevisionCode:I

    return v0
.end method

.method public getConfigForSplit()[Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mConfigForSplit:[Ljava/lang/String;

    return-object v0
.end method

.method public getDeclaredLibraries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .line 509
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mDeclaredLibraries:Ljava/util/List;

    return-object v0
.end method

.method public getInstallLocation()I
    .locals 1

    .line 360
    iget v0, p0, Landroid/content/pm/parsing/PackageLite;->mInstallLocation:I

    return v0
.end method

.method public getIsFeatureSplits()[Z
    .locals 1

    .line 384
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mIsFeatureSplits:[Z

    return-object v0
.end method

.method public getLongVersionCode()J
    .locals 2

    .line 210
    iget v0, p0, Landroid/content/pm/parsing/PackageLite;->mVersionCodeMajor:I

    iget v1, p0, Landroid/content/pm/parsing/PackageLite;->mVersionCode:I

    invoke-static {v0, v1}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPageSizeCompat()I
    .locals 1

    .line 525
    iget v0, p0, Landroid/content/pm/parsing/PackageLite;->mPageSizeCompat:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getRequiredSplitTypes()[Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mRequiredSplitTypes:[Ljava/util/Set;

    return-object v0
.end method

.method public getSigningDetails()Landroid/content/pm/SigningDetails;
    .locals 1

    .line 376
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-object v0
.end method

.method public getSplitApkPaths()[Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mSplitApkPaths:[Ljava/lang/String;

    return-object v0
.end method

.method public getSplitNames()[Ljava/lang/String;
    .locals 1

    .line 277
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mSplitNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getSplitRevisionCodes()[I
    .locals 1

    .line 348
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mSplitRevisionCodes:[I

    return-object v0
.end method

.method public getSplitTypes()[Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mSplitTypes:[Ljava/util/Set;

    return-object v0
.end method

.method public getTargetSdk()I
    .locals 1

    .line 332
    iget v0, p0, Landroid/content/pm/parsing/PackageLite;->mTargetSdk:I

    return v0
.end method

.method public getUsesSdkLibraries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 479
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mUsesSdkLibraries:Ljava/util/List;

    return-object v0
.end method

.method public getUsesSdkLibrariesCertDigests()[[Ljava/lang/String;
    .locals 1

    .line 489
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mUsesSdkLibrariesCertDigests:[[Ljava/lang/String;

    return-object v0
.end method

.method public getUsesSdkLibrariesVersionsMajor()[J
    .locals 1

    .line 484
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mUsesSdkLibrariesVersionsMajor:[J

    return-object v0
.end method

.method public getUsesSplitNames()[Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mUsesSplitNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getUsesStaticLibraries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 494
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mUsesStaticLibraries:Ljava/util/List;

    return-object v0
.end method

.method public getUsesStaticLibrariesCertDigests()[[Ljava/lang/String;
    .locals 1

    .line 504
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mUsesStaticLibrariesCertDigests:[[Ljava/lang/String;

    return-object v0
.end method

.method public getUsesStaticLibrariesVersions()[J
    .locals 1

    .line 499
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mUsesStaticLibrariesVersions:[J

    return-object v0
.end method

.method public getVerifiers()[Landroid/content/pm/VerifierInfo;
    .locals 1

    .line 368
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mVerifiers:[Landroid/content/pm/VerifierInfo;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .line 327
    iget v0, p0, Landroid/content/pm/parsing/PackageLite;->mVersionCode:I

    return v0
.end method

.method public getVersionCodeMajor()I
    .locals 1

    .line 322
    iget v0, p0, Landroid/content/pm/parsing/PackageLite;->mVersionCodeMajor:I

    return v0
.end method

.method public isCoreApp()Z
    .locals 1

    .line 409
    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mCoreApp:Z

    return v0
.end method

.method public isDebuggable()Z
    .locals 1

    .line 417
    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mDebuggable:Z

    return v0
.end method

.method public isExtractNativeLibs()Z
    .locals 1

    .line 441
    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mExtractNativeLibs:Z

    return v0
.end method

.method public isIsSdkLibrary()Z
    .locals 1

    .line 466
    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mIsSdkLibrary:Z

    return v0
.end method

.method public isIsStaticLibrary()Z
    .locals 1

    .line 474
    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mIsStaticLibrary:Z

    return v0
.end method

.method public isIsolatedSplits()Z
    .locals 1

    .line 392
    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mIsolatedSplits:Z

    return v0
.end method

.method public isMultiArch()Z
    .locals 1

    .line 425
    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mMultiArch:Z

    return v0
.end method

.method public isProfileableByShell()Z
    .locals 1

    .line 449
    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mProfileableByShell:Z

    return v0
.end method

.method public isSplitRequired()Z
    .locals 1

    .line 401
    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mSplitRequired:Z

    return v0
.end method

.method public isUse32bitAbi()Z
    .locals 1

    .line 433
    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mUse32bitAbi:Z

    return v0
.end method

.method public isUseEmbeddedDex()Z
    .locals 1

    .line 458
    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mUseEmbeddedDex:Z

    return v0
.end method
