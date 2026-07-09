.class public final Landroid/os/vibrator/VibratorEnvelopeEffectInfo;
.super Ljava/lang/Object;
.source "VibratorEnvelopeEffectInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/vibrator/VibratorEnvelopeEffectInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mMaxControlPointDurationMillis:J

.field private final blacklist mMaxSize:I

.field private final blacklist mMinControlPointDurationMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 118
    new-instance v0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo$1;

    invoke-direct {v0}, Landroid/os/vibrator/VibratorEnvelopeEffectInfo$1;-><init>()V

    sput-object v0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IJJ)V
    .locals 0
    .param p1, "maxSize"    # I
    .param p2, "minControlPointDurationMillis"    # J
    .param p4, "maxControlPointDurationMillis"    # J

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMaxSize:I

    .line 71
    iput-wide p2, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMinControlPointDurationMillis:J

    .line 72
    iput-wide p4, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMaxControlPointDurationMillis:J

    .line 73
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMaxSize:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMinControlPointDurationMillis:J

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMaxControlPointDurationMillis:J

    .line 54
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 89
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 90
    return v0

    .line 92
    :cond_0
    instance-of v1, p1, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 93
    return v2

    .line 95
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;

    .line 96
    .local v1, "other":Landroid/os/vibrator/VibratorEnvelopeEffectInfo;
    iget v3, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMaxSize:I

    iget v4, v1, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMaxSize:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMinControlPointDurationMillis:J

    iget-wide v5, v1, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMinControlPointDurationMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMaxControlPointDurationMillis:J

    iget-wide v5, v1, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMaxControlPointDurationMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist getMaxControlPointDurationMillis()J
    .locals 2

    .line 195
    iget-wide v0, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMaxControlPointDurationMillis:J

    return-wide v0
.end method

.method public whitelist getMaxDurationMillis()J
    .locals 4

    .line 145
    iget v0, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMaxSize:I

    int-to-long v0, v0

    iget-wide v2, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMaxControlPointDurationMillis:J

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist getMaxSize()I
    .locals 1

    .line 161
    iget v0, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMaxSize:I

    return v0
.end method

.method public whitelist getMinControlPointDurationMillis()J
    .locals 2

    .line 178
    iget-wide v0, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMinControlPointDurationMillis:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    .line 103
    iget v0, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMaxSize:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMinControlPointDurationMillis:J

    .line 104
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMaxControlPointDurationMillis:J

    .line 105
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 103
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VibratorEnvelopeEffectInfo{, mMaxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMaxSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMinControlPointDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMinControlPointDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxControlPointDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMaxControlPointDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 77
    iget v0, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMaxSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget-wide v0, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMinControlPointDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 79
    iget-wide v0, p0, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;->mMaxControlPointDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 80
    return-void
.end method
