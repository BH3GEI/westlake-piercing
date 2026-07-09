.class final Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;
.super Ljava/lang/Object;
.source "FadeManagerConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/FadeManagerConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FadeVolumeShaperConfigsWrapper"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mFadeInVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

.field private blacklist mFadeOutVolShaperConfig:Landroid/media/VolumeShaper$Configuration;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 1678
    new-instance v0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper$1;

    invoke-direct {v0}, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper$1;-><init>()V

    sput-object v0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 0

    .line 1561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;)V
    .locals 1
    .param p1, "wrapper"    # Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    .line 1563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1564
    const-string v0, "Fade volume shaper configs wrapper cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1565
    iget-object v0, p1, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeOutVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeOutVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    .line 1566
    iget-object v0, p1, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeInVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeInVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    .line 1567
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1673
    sget-object v0, Landroid/media/VolumeShaper$Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/VolumeShaper$Configuration;

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeOutVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    .line 1674
    sget-object v0, Landroid/media/VolumeShaper$Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/VolumeShaper$Configuration;

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeInVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    .line 1675
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 1657
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 1617
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1618
    return v0

    .line 1621
    :cond_0
    instance-of v1, p1, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1622
    return v2

    .line 1625
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    .line 1627
    .local v1, "rhs":Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;
    iget-object v3, p0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeInVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    if-nez v3, :cond_2

    iget-object v3, v1, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeInVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeOutVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    if-nez v3, :cond_2

    iget-object v3, v1, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeOutVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    if-nez v3, :cond_2

    .line 1629
    return v0

    .line 1633
    :cond_2
    iget-object v3, p0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeOutVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    if-eqz v3, :cond_3

    .line 1634
    iget-object v3, p0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeOutVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    iget-object v4, v1, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeOutVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    invoke-virtual {v3, v4}, Landroid/media/VolumeShaper$Configuration;->equals(Ljava/lang/Object;)Z

    move-result v3

    .local v3, "isEqual":Z
    goto :goto_0

    .line 1635
    .end local v3    # "isEqual":Z
    :cond_3
    iget-object v3, v1, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeOutVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    if-eqz v3, :cond_4

    .line 1636
    return v2

    .line 1638
    :cond_4
    const/4 v3, 0x1

    .line 1641
    .restart local v3    # "isEqual":Z
    :goto_0
    iget-object v4, p0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeInVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    if-eqz v4, :cond_6

    .line 1642
    if-eqz v3, :cond_5

    iget-object v4, p0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeInVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    iget-object v5, v1, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeInVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    invoke-virtual {v4, v5}, Landroid/media/VolumeShaper$Configuration;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_1
    move v3, v0

    goto :goto_2

    .line 1643
    :cond_6
    iget-object v0, v1, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeInVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    if-eqz v0, :cond_7

    .line 1644
    return v2

    .line 1647
    :cond_7
    :goto_2
    return v3
.end method

.method public blacklist getFadeInVolShaperConfig()Landroid/media/VolumeShaper$Configuration;
    .locals 1

    .line 1594
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeInVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    return-object v0
.end method

.method public blacklist getFadeOutVolShaperConfig()Landroid/media/VolumeShaper$Configuration;
    .locals 1

    .line 1584
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeOutVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    .line 1652
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeOutVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    iget-object v1, p0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeInVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method blacklist isFadeInConfigActive()Z
    .locals 1

    .line 1612
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeInVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method blacklist isFadeOutConfigActive()Z
    .locals 1

    .line 1608
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeOutVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isInactive()Z
    .locals 1

    .line 1604
    invoke-virtual {p0}, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->isFadeOutConfigActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->isFadeInConfigActive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist setFadeInVolShaperConfig(Landroid/media/VolumeShaper$Configuration;)V
    .locals 0
    .param p1, "fadeInConfig"    # Landroid/media/VolumeShaper$Configuration;

    .line 1574
    iput-object p1, p0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeInVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    .line 1575
    return-void
.end method

.method public blacklist setFadeOutVolShaperConfig(Landroid/media/VolumeShaper$Configuration;)V
    .locals 0
    .param p1, "fadeOutConfig"    # Landroid/media/VolumeShaper$Configuration;

    .line 1570
    iput-object p1, p0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeOutVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    .line 1571
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1662
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeOutVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    invoke-virtual {v0, p1, p2}, Landroid/media/VolumeShaper$Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1663
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeInVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    invoke-virtual {v0, p1, p2}, Landroid/media/VolumeShaper$Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1664
    return-void
.end method
