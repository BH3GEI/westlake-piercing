.class public final Landroid/telephony/satellite/SatellitePosition;
.super Ljava/lang/Object;
.source "SatellitePosition.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/satellite/SatellitePosition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAltitudeKm:D

.field private blacklist mLongitudeDegree:D


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Landroid/telephony/satellite/SatellitePosition$1;

    invoke-direct {v0}, Landroid/telephony/satellite/SatellitePosition$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatellitePosition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(DD)V
    .locals 0
    .param p1, "longitudeDegree"    # D
    .param p3, "altitudeKm"    # D

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-wide p1, p0, Landroid/telephony/satellite/SatellitePosition;->mLongitudeDegree:D

    .line 74
    iput-wide p3, p0, Landroid/telephony/satellite/SatellitePosition;->mAltitudeKm:D

    .line 75
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/satellite/SatellitePosition;->mLongitudeDegree:D

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/satellite/SatellitePosition;->mAltitudeKm:D

    .line 63
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 128
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 129
    :cond_0
    instance-of v1, p1, Landroid/telephony/satellite/SatellitePosition;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/telephony/satellite/SatellitePosition;

    .line 131
    .local v1, "that":Landroid/telephony/satellite/SatellitePosition;
    iget-wide v3, v1, Landroid/telephony/satellite/SatellitePosition;->mLongitudeDegree:D

    iget-wide v5, p0, Landroid/telephony/satellite/SatellitePosition;->mLongitudeDegree:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_1

    iget-wide v3, v1, Landroid/telephony/satellite/SatellitePosition;->mAltitudeKm:D

    iget-wide v5, p0, Landroid/telephony/satellite/SatellitePosition;->mAltitudeKm:D

    .line 132
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 131
    :goto_0
    return v0

    .line 129
    .end local v1    # "that":Landroid/telephony/satellite/SatellitePosition;
    :cond_2
    return v2
.end method

.method public blacklist getAltitudeKm()D
    .locals 2

    .line 123
    iget-wide v0, p0, Landroid/telephony/satellite/SatellitePosition;->mAltitudeKm:D

    return-wide v0
.end method

.method public blacklist getLongitudeDegrees()D
    .locals 2

    .line 113
    iget-wide v0, p0, Landroid/telephony/satellite/SatellitePosition;->mLongitudeDegree:D

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 137
    iget-wide v0, p0, Landroid/telephony/satellite/SatellitePosition;->mLongitudeDegree:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/satellite/SatellitePosition;->mAltitudeKm:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLongitudeDegree: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/satellite/SatellitePosition;->mLongitudeDegree:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAltitudeKm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/satellite/SatellitePosition;->mAltitudeKm:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 102
    iget-wide v0, p0, Landroid/telephony/satellite/SatellitePosition;->mLongitudeDegree:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 103
    iget-wide v0, p0, Landroid/telephony/satellite/SatellitePosition;->mAltitudeKm:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 104
    return-void
.end method
