.class public final Landroid/content/pm/SystemFeaturesCache;
.super Ljava/lang/Object;
.source "SystemFeaturesCache.java"


# static fields
.field private static final UNAVAILABLE_FEATURE_VERSION:I = -0x80000000

.field private static volatile sInstance:Landroid/content/pm/SystemFeaturesCache;


# instance fields
.field private final mSdkFeatureVersions:[I


# direct methods
.method public constructor <init>(Landroid/util/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;)V"
        }
    .end annotation

    .line 90
    .local p1, "availableFeatures":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/FeatureInfo;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/pm/SystemFeaturesCache;-><init>(Ljava/util/Collection;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/pm/FeatureInfo;",
            ">;)V"
        }
    .end annotation

    .line 94
    .local p1, "availableFeatures":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/FeatureInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/16 v0, 0xba

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/content/pm/SystemFeaturesCache;->mSdkFeatureVersions:[I

    .line 97
    iget-object v0, p0, Landroid/content/pm/SystemFeaturesCache;->mSdkFeatureVersions:[I

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 100
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/FeatureInfo;

    .line 101
    .local v1, "fi":Landroid/content/pm/FeatureInfo;
    iget-object v2, v1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/pm/PackageManager;->maybeGetSdkFeatureIndex(Ljava/lang/String;)I

    move-result v2

    .line 102
    .local v2, "sdkFeatureIndex":I
    if-ltz v2, :cond_0

    .line 103
    iget-object v3, p0, Landroid/content/pm/SystemFeaturesCache;->mSdkFeatureVersions:[I

    iget v4, v1, Landroid/content/pm/FeatureInfo;->version:I

    aput v4, v3, v2

    .line 105
    .end local v1    # "fi":Landroid/content/pm/FeatureInfo;
    .end local v2    # "sdkFeatureIndex":I
    :cond_0
    goto :goto_0

    .line 106
    :cond_1
    return-void
.end method

.method public constructor <init>([I)V
    .locals 3
    .param p1, "sdkFeatureVersions"    # [I

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    array-length v0, p1

    const/16 v1, 0xba

    if-ne v0, v1, :cond_0

    .line 119
    iput-object p1, p0, Landroid/content/pm/SystemFeaturesCache;->mSdkFeatureVersions:[I

    .line 120
    return-void

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    array-length v2, p1

    .line 117
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 115
    const-string v2, "Unexpected cached SDK feature count: %d (expected %d)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static clearInstance()V
    .locals 1

    .line 80
    const/4 v0, 0x0

    sput-object v0, Landroid/content/pm/SystemFeaturesCache;->sInstance:Landroid/content/pm/SystemFeaturesCache;

    .line 81
    return-void
.end method

.method public static getInstance()Landroid/content/pm/SystemFeaturesCache;
    .locals 3

    .line 70
    sget-object v0, Landroid/content/pm/SystemFeaturesCache;->sInstance:Landroid/content/pm/SystemFeaturesCache;

    .line 71
    .local v0, "instance":Landroid/content/pm/SystemFeaturesCache;
    if-eqz v0, :cond_0

    .line 74
    return-object v0

    .line 72
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "SystemFeaturesCache not initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setInstance(Landroid/content/pm/SystemFeaturesCache;)V
    .locals 2
    .param p0, "instance"    # Landroid/content/pm/SystemFeaturesCache;

    .line 57
    sget-object v0, Landroid/content/pm/SystemFeaturesCache;->sInstance:Landroid/content/pm/SystemFeaturesCache;

    if-nez v0, :cond_0

    .line 60
    sput-object p0, Landroid/content/pm/SystemFeaturesCache;->sInstance:Landroid/content/pm/SystemFeaturesCache;

    .line 61
    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SystemFeaturesCache instance already initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getSdkFeatureVersions()[I
    .locals 1

    .line 129
    iget-object v0, p0, Landroid/content/pm/SystemFeaturesCache;->mSdkFeatureVersions:[I

    return-object v0
.end method

.method public maybeHasFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
    .locals 4
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "version"    # I

    .line 137
    invoke-static {p1}, Landroid/content/pm/PackageManager;->maybeGetSdkFeatureIndex(Ljava/lang/String;)I

    move-result v0

    .line 138
    .local v0, "sdkFeatureIndex":I
    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 139
    return-object v1

    .line 145
    :cond_0
    const/high16 v2, -0x80000000

    if-ne p2, v2, :cond_1

    iget-object v3, p0, Landroid/content/pm/SystemFeaturesCache;->mSdkFeatureVersions:[I

    aget v3, v3, v0

    if-ne v3, v2, :cond_1

    .line 147
    return-object v1

    .line 150
    :cond_1
    iget-object v1, p0, Landroid/content/pm/SystemFeaturesCache;->mSdkFeatureVersions:[I

    aget v1, v1, v0

    if-lt v1, p2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method
