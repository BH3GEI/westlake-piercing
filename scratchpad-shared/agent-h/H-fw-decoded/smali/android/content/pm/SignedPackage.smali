.class public Landroid/content/pm/SignedPackage;
.super Ljava/lang/Object;
.source "SignedPackage.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# instance fields
.field private final mData:Landroid/content/pm/SignedPackageParcel;


# direct methods
.method public constructor <init>(Landroid/content/pm/SignedPackageParcel;)V
    .locals 0
    .param p1, "data"    # Landroid/content/pm/SignedPackageParcel;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificateDigest"    # [B

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/content/pm/SignedPackageParcel;

    invoke-direct {v0}, Landroid/content/pm/SignedPackageParcel;-><init>()V

    .line 40
    .local v0, "data":Landroid/content/pm/SignedPackageParcel;
    iput-object p1, v0, Landroid/content/pm/SignedPackageParcel;->packageName:Ljava/lang/String;

    .line 41
    iput-object p2, v0, Landroid/content/pm/SignedPackageParcel;->certificateDigest:[B

    .line 42
    iput-object v0, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 65
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 66
    :cond_0
    instance-of v1, p1, Landroid/content/pm/SignedPackage;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/content/pm/SignedPackage;

    .line 67
    .local v1, "that":Landroid/content/pm/SignedPackage;
    iget-object v3, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object v3, v3, Landroid/content/pm/SignedPackageParcel;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object v4, v4, Landroid/content/pm/SignedPackageParcel;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object v3, v3, Landroid/content/pm/SignedPackageParcel;->certificateDigest:[B

    iget-object v4, v1, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object v4, v4, Landroid/content/pm/SignedPackageParcel;->certificateDigest:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 66
    .end local v1    # "that":Landroid/content/pm/SignedPackage;
    :cond_2
    return v2
.end method

.method public getCertificateDigest()[B
    .locals 1

    .line 60
    iget-object v0, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object v0, v0, Landroid/content/pm/SignedPackageParcel;->certificateDigest:[B

    return-object v0
.end method

.method public final getData()Landroid/content/pm/SignedPackageParcel;
    .locals 1

    .line 52
    iget-object v0, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object v0, v0, Landroid/content/pm/SignedPackageParcel;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 73
    iget-object v0, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object v0, v0, Landroid/content/pm/SignedPackageParcel;->packageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object v1, v1, Landroid/content/pm/SignedPackageParcel;->certificateDigest:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
