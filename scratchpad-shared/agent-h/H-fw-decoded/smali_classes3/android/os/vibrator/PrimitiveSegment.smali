.class public final Landroid/os/vibrator/PrimitiveSegment;
.super Landroid/os/vibrator/VibrationEffectSegment;
.source "PrimitiveSegment.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/vibrator/PrimitiveSegment;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEFAULT_DELAY_MILLIS:I = 0x0

.field public static final blacklist DEFAULT_DELAY_TYPE:I = 0x0

.field public static final blacklist DEFAULT_SCALE:F = 1.0f


# instance fields
.field private final blacklist mDelay:I

.field private final blacklist mDelayType:I

.field private final blacklist mPrimitiveId:I

.field private final blacklist mScale:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 226
    new-instance v0, Landroid/os/vibrator/PrimitiveSegment$1;

    invoke-direct {v0}, Landroid/os/vibrator/PrimitiveSegment$1;-><init>()V

    sput-object v0, Landroid/os/vibrator/PrimitiveSegment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IFI)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "scale"    # F
    .param p3, "delay"    # I

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/os/vibrator/PrimitiveSegment;-><init>(IFII)V

    .line 62
    return-void
.end method

.method public constructor blacklist <init>(IFII)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "scale"    # F
    .param p3, "delay"    # I
    .param p4, "delayType"    # I

    .line 65
    invoke-direct {p0}, Landroid/os/vibrator/VibrationEffectSegment;-><init>()V

    .line 66
    iput p1, p0, Landroid/os/vibrator/PrimitiveSegment;->mPrimitiveId:I

    .line 67
    iput p2, p0, Landroid/os/vibrator/PrimitiveSegment;->mScale:F

    .line 68
    iput p3, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelay:I

    .line 69
    iput p4, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelayType:I

    .line 70
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/vibrator/PrimitiveSegment;-><init>(IFII)V

    .line 57
    return-void
.end method

.method private static blacklist isValidDelayType(I)Z
    .locals 1
    .param p0, "delayType"    # I

    .line 211
    packed-switch p0, :pswitch_data_0

    .line 214
    const/4 v0, 0x0

    goto :goto_0

    .line 213
    :pswitch_0
    const/4 v0, 0x1

    .line 211
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist toDelayTypeDebugString(I)Ljava/lang/String;
    .locals 1
    .param p0, "delayType"    # I

    .line 219
    packed-switch p0, :pswitch_data_0

    .line 221
    const-string/jumbo v0, "pause"

    goto :goto_0

    .line 220
    :pswitch_0
    const-string/jumbo v0, "startOffset"

    .line 219
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist applyEffectStrength(I)Landroid/os/vibrator/PrimitiveSegment;
    .locals 0
    .param p1, "effectStrength"    # I

    .line 149
    return-object p0
.end method

.method public bridge synthetic blacklist applyEffectStrength(I)Landroid/os/vibrator/VibrationEffectSegment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1}, Landroid/os/vibrator/PrimitiveSegment;->applyEffectStrength(I)Landroid/os/vibrator/PrimitiveSegment;

    move-result-object p1

    return-object p1
.end method

.method public blacklist areVibrationFeaturesSupported(Landroid/os/VibratorInfo;)Z
    .locals 1
    .param p1, "vibratorInfo"    # Landroid/os/VibratorInfo;

    .line 107
    iget v0, p0, Landroid/os/vibrator/PrimitiveSegment;->mPrimitiveId:I

    invoke-virtual {p1, v0}, Landroid/os/VibratorInfo;->isPrimitiveSupported(I)Z

    move-result v0

    return v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 196
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 197
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 198
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/os/vibrator/PrimitiveSegment;

    .line 199
    .local v2, "that":Landroid/os/vibrator/PrimitiveSegment;
    iget v3, p0, Landroid/os/vibrator/PrimitiveSegment;->mPrimitiveId:I

    iget v4, v2, Landroid/os/vibrator/PrimitiveSegment;->mPrimitiveId:I

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/os/vibrator/PrimitiveSegment;->mScale:F

    iget v4, p0, Landroid/os/vibrator/PrimitiveSegment;->mScale:F

    .line 200
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelay:I

    iget v4, v2, Landroid/os/vibrator/PrimitiveSegment;->mDelay:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelayType:I

    iget v4, v2, Landroid/os/vibrator/PrimitiveSegment;->mDelayType:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 199
    :goto_0
    return v0

    .line 197
    .end local v2    # "that":Landroid/os/vibrator/PrimitiveSegment;
    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getDelay()I
    .locals 1

    .line 81
    iget v0, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelay:I

    return v0
.end method

.method public blacklist getDelayType()I
    .locals 1

    .line 86
    iget v0, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelayType:I

    return v0
.end method

.method public blacklist getDuration()J
    .locals 2

    .line 91
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist getDuration(Landroid/os/VibratorInfo;)J
    .locals 3
    .param p1, "vibratorInfo"    # Landroid/os/VibratorInfo;

    .line 97
    if-nez p1, :cond_0

    .line 98
    invoke-virtual {p0}, Landroid/os/vibrator/PrimitiveSegment;->getDuration()J

    move-result-wide v0

    return-wide v0

    .line 100
    :cond_0
    iget v0, p0, Landroid/os/vibrator/PrimitiveSegment;->mPrimitiveId:I

    invoke-virtual {p1, v0}, Landroid/os/VibratorInfo;->getPrimitiveDuration(I)I

    move-result v0

    .line 101
    .local v0, "duration":I
    if-lez v0, :cond_1

    iget v1, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelay:I

    add-int/2addr v1, v0

    int-to-long v1, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/os/vibrator/PrimitiveSegment;->getDuration()J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public blacklist getPrimitiveId()I
    .locals 1

    .line 73
    iget v0, p0, Landroid/os/vibrator/PrimitiveSegment;->mPrimitiveId:I

    return v0
.end method

.method public blacklist getScale()F
    .locals 1

    .line 77
    iget v0, p0, Landroid/os/vibrator/PrimitiveSegment;->mScale:F

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    .line 207
    iget v0, p0, Landroid/os/vibrator/PrimitiveSegment;->mPrimitiveId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/PrimitiveSegment;->mScale:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelayType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isHapticFeedbackCandidate()Z
    .locals 1

    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist resolve(I)Landroid/os/vibrator/PrimitiveSegment;
    .locals 0
    .param p1, "defaultAmplitude"    # I

    .line 120
    return-object p0
.end method

.method public bridge synthetic blacklist resolve(I)Landroid/os/vibrator/VibrationEffectSegment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1}, Landroid/os/vibrator/PrimitiveSegment;->resolve(I)Landroid/os/vibrator/PrimitiveSegment;

    move-result-object p1

    return-object p1
.end method

.method public blacklist scale(F)Landroid/os/vibrator/PrimitiveSegment;
    .locals 5
    .param p1, "scaleFactor"    # F

    .line 127
    iget v0, p0, Landroid/os/vibrator/PrimitiveSegment;->mScale:F

    invoke-static {v0, p1}, Landroid/os/VibrationEffect;->scale(FF)F

    move-result v0

    .line 128
    .local v0, "newScale":F
    iget v1, p0, Landroid/os/vibrator/PrimitiveSegment;->mScale:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    .line 129
    return-object p0

    .line 131
    :cond_0
    new-instance v1, Landroid/os/vibrator/PrimitiveSegment;

    iget v2, p0, Landroid/os/vibrator/PrimitiveSegment;->mPrimitiveId:I

    iget v3, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelay:I

    iget v4, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelayType:I

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/os/vibrator/PrimitiveSegment;-><init>(IFII)V

    return-object v1
.end method

.method public bridge synthetic blacklist scale(F)Landroid/os/vibrator/VibrationEffectSegment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1}, Landroid/os/vibrator/PrimitiveSegment;->scale(F)Landroid/os/vibrator/PrimitiveSegment;

    move-result-object p1

    return-object p1
.end method

.method public blacklist scaleLinearly(F)Landroid/os/vibrator/PrimitiveSegment;
    .locals 5
    .param p1, "scaleFactor"    # F

    .line 138
    iget v0, p0, Landroid/os/vibrator/PrimitiveSegment;->mScale:F

    invoke-static {v0, p1}, Landroid/os/VibrationEffect;->scaleLinearly(FF)F

    move-result v0

    .line 139
    .local v0, "newScale":F
    iget v1, p0, Landroid/os/vibrator/PrimitiveSegment;->mScale:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    .line 140
    return-object p0

    .line 142
    :cond_0
    new-instance v1, Landroid/os/vibrator/PrimitiveSegment;

    iget v2, p0, Landroid/os/vibrator/PrimitiveSegment;->mPrimitiveId:I

    iget v3, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelay:I

    iget v4, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelayType:I

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/os/vibrator/PrimitiveSegment;-><init>(IFII)V

    return-object v1
.end method

.method public bridge synthetic blacklist scaleLinearly(F)Landroid/os/vibrator/VibrationEffectSegment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1}, Landroid/os/vibrator/PrimitiveSegment;->scaleLinearly(F)Landroid/os/vibrator/PrimitiveSegment;

    move-result-object p1

    return-object p1
.end method

.method public blacklist toDebugString()Ljava/lang/String;
    .locals 5

    .line 189
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget v1, p0, Landroid/os/vibrator/PrimitiveSegment;->mPrimitiveId:I

    .line 190
    invoke-static {v1}, Landroid/os/VibrationEffect$Composition;->primitiveToString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/os/vibrator/PrimitiveSegment;->mScale:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelayType:I

    .line 191
    invoke-static {v3}, Landroid/os/vibrator/PrimitiveSegment;->toDelayTypeDebugString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelay:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 189
    const-string v2, "Primitive=%s(scale=%.2f, %s=%dms)"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Primitive{primitive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/PrimitiveSegment;->mPrimitiveId:I

    .line 179
    invoke-static {v1}, Landroid/os/VibrationEffect$Composition;->primitiveToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/PrimitiveSegment;->mScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", delayType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelayType:I

    .line 182
    invoke-static {v1}, Landroid/os/VibrationEffect$Composition;->delayTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    return-object v0
.end method

.method public blacklist validate()V
    .locals 4

    .line 155
    iget v0, p0, Landroid/os/vibrator/PrimitiveSegment;->mPrimitiveId:I

    const/16 v1, 0x8

    const-string/jumbo v2, "primitiveId"

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 157
    iget v0, p0, Landroid/os/vibrator/PrimitiveSegment;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    const-string/jumbo v2, "scale"

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    .line 158
    iget v0, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelay:I

    int-to-long v0, v0

    const-string v2, "delay"

    invoke-static {v0, v1, v2}, Landroid/os/vibrator/VibrationEffectSegment;->checkDurationArgument(JLjava/lang/String;)V

    .line 159
    iget v0, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelayType:I

    invoke-static {v0}, Landroid/os/vibrator/PrimitiveSegment;->isValidDelayType(I)Z

    move-result v0

    const-string v1, "delayType"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 160
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 164
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget v0, p0, Landroid/os/vibrator/PrimitiveSegment;->mPrimitiveId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget v0, p0, Landroid/os/vibrator/PrimitiveSegment;->mScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 167
    iget v0, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget v0, p0, Landroid/os/vibrator/PrimitiveSegment;->mDelayType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    return-void
.end method
