.class public final Landroid/telephony/satellite/AntennaPosition;
.super Ljava/lang/Object;
.source "AntennaPosition.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/satellite/AntennaPosition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAntennaDirection:Landroid/telephony/satellite/AntennaDirection;

.field private blacklist mSuggestedHoldPosition:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Landroid/telephony/satellite/AntennaPosition$1;

    invoke-direct {v0}, Landroid/telephony/satellite/AntennaPosition$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/AntennaPosition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-direct {p0, p1}, Landroid/telephony/satellite/AntennaPosition;->readFromParcel(Landroid/os/Parcel;)V

    .line 53
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/satellite/AntennaPosition-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/satellite/AntennaPosition;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/satellite/AntennaDirection;I)V
    .locals 0
    .param p1, "antennaDirection"    # Landroid/telephony/satellite/AntennaDirection;
    .param p2, "suggestedHoldPosition"    # I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/telephony/satellite/AntennaPosition;->mAntennaDirection:Landroid/telephony/satellite/AntennaDirection;

    .line 48
    iput p2, p0, Landroid/telephony/satellite/AntennaPosition;->mSuggestedHoldPosition:I

    .line 49
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 122
    const-class v0, Landroid/telephony/satellite/AntennaDirection;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/satellite/AntennaDirection;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/satellite/AntennaDirection;

    iput-object v0, p0, Landroid/telephony/satellite/AntennaPosition;->mAntennaDirection:Landroid/telephony/satellite/AntennaDirection;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/AntennaPosition;->mSuggestedHoldPosition:I

    .line 125
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 85
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 86
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 87
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/satellite/AntennaPosition;

    .line 88
    .local v2, "that":Landroid/telephony/satellite/AntennaPosition;
    iget-object v3, p0, Landroid/telephony/satellite/AntennaPosition;->mAntennaDirection:Landroid/telephony/satellite/AntennaDirection;

    iget-object v4, v2, Landroid/telephony/satellite/AntennaPosition;->mAntennaDirection:Landroid/telephony/satellite/AntennaDirection;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/telephony/satellite/AntennaPosition;->mSuggestedHoldPosition:I

    iget v4, v2, Landroid/telephony/satellite/AntennaPosition;->mSuggestedHoldPosition:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 86
    .end local v2    # "that":Landroid/telephony/satellite/AntennaPosition;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getAntennaDirection()Landroid/telephony/satellite/AntennaDirection;
    .locals 1

    .line 112
    iget-object v0, p0, Landroid/telephony/satellite/AntennaPosition;->mAntennaDirection:Landroid/telephony/satellite/AntennaDirection;

    return-object v0
.end method

.method public whitelist getSuggestedHoldPosition()I
    .locals 1

    .line 118
    iget v0, p0, Landroid/telephony/satellite/AntennaPosition;->mSuggestedHoldPosition:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    .line 94
    iget-object v0, p0, Landroid/telephony/satellite/AntennaPosition;->mAntennaDirection:Landroid/telephony/satellite/AntennaDirection;

    iget v1, p0, Landroid/telephony/satellite/AntennaPosition;->mSuggestedHoldPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "antennaDirection:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-object v1, p0, Landroid/telephony/satellite/AntennaPosition;->mAntennaDirection:Landroid/telephony/satellite/AntennaDirection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string/jumbo v1, "suggestedHoldPosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget v1, p0, Landroid/telephony/satellite/AntennaPosition;->mSuggestedHoldPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 64
    iget-object v0, p0, Landroid/telephony/satellite/AntennaPosition;->mAntennaDirection:Landroid/telephony/satellite/AntennaDirection;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 65
    iget v0, p0, Landroid/telephony/satellite/AntennaPosition;->mSuggestedHoldPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    return-void
.end method
