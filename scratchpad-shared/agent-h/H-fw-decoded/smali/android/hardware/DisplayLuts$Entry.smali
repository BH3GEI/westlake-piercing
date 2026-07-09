.class public Landroid/hardware/DisplayLuts$Entry;
.super Ljava/lang/Object;
.source "DisplayLuts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/DisplayLuts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# static fields
.field private static final LUT_LENGTH_LIMIT:I = 0x186a0


# instance fields
.field private mBuffer:[F

.field private mDimension:I

.field private mSamplingKey:I

.field private mSize:I


# direct methods
.method public constructor <init>([FII)V
    .locals 6
    .param p1, "buffer"    # [F
    .param p2, "dimension"    # I
    .param p3, "samplingKey"    # I

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    if-eqz p1, :cond_7

    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_7

    .line 86
    array-length v0, p1

    const v2, 0x186a0

    if-ge v0, v2, :cond_6

    .line 90
    const/4 v0, 0x3

    if-eq p2, v1, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The dimension should be either 1D or 3D!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1
    :goto_0
    if-ne p2, v0, :cond_5

    .line 96
    array-length v1, p1

    if-le v1, v0, :cond_4

    .line 100
    array-length v1, p1

    .line 101
    .local v1, "lengthPerChannel":I
    rem-int/lit8 v2, v1, 0x3

    if-nez v2, :cond_3

    .line 105
    div-int/2addr v1, v0

    .line 107
    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v2

    .line 108
    .local v2, "size":D
    double-to-int v0, v2

    int-to-double v4, v0

    cmpl-double v0, v2, v4

    if-nez v0, :cond_2

    .line 109
    double-to-int v0, v2

    iput v0, p0, Landroid/hardware/DisplayLuts$Entry;->mSize:I

    .line 114
    .end local v1    # "lengthPerChannel":I
    .end local v2    # "size":D
    goto :goto_1

    .line 111
    .restart local v1    # "lengthPerChannel":I
    .restart local v2    # "size":D
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot get the cube root of the 3d lut buffer!"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    .end local v2    # "size":D
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "The lut buffer of 3dlut should have 3 channels!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    .end local v1    # "lengthPerChannel":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The 3d lut size of each dimension should be over 1!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_5
    array-length v0, p1

    iput v0, p0, Landroid/hardware/DisplayLuts$Entry;->mSize:I

    .line 118
    :goto_1
    iput-object p1, p0, Landroid/hardware/DisplayLuts$Entry;->mBuffer:[F

    .line 119
    iput p2, p0, Landroid/hardware/DisplayLuts$Entry;->mDimension:I

    .line 120
    iput p3, p0, Landroid/hardware/DisplayLuts$Entry;->mSamplingKey:I

    .line 121
    return-void

    .line 87
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The lut length is too big to handle!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The buffer cannot be empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static dimensionToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "dimension"    # I

    .line 164
    packed-switch p0, :pswitch_data_0

    .line 170
    :pswitch_0
    const-string v0, ""

    return-object v0

    .line 168
    :pswitch_1
    const-string v0, "THREE_DIMENSION"

    return-object v0

    .line 166
    :pswitch_2
    const-string v0, "ONE_DIMENSION"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static samplingKeyToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # I

    .line 175
    packed-switch p0, :pswitch_data_0

    .line 183
    const-string v0, ""

    return-object v0

    .line 181
    :pswitch_0
    const-string v0, "SAMPLING_KEY_CIE_Y"

    return-object v0

    .line 179
    :pswitch_1
    const-string v0, "SAMPLING_KEY_MAX_RGB"

    return-object v0

    .line 177
    :pswitch_2
    const-string v0, "SAMPLING_KEY_RGB"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getBuffer()[F
    .locals 1

    .line 144
    iget-object v0, p0, Landroid/hardware/DisplayLuts$Entry;->mBuffer:[F

    return-object v0
.end method

.method public getDimension()I
    .locals 1

    .line 128
    iget v0, p0, Landroid/hardware/DisplayLuts$Entry;->mDimension:I

    return v0
.end method

.method public getSamplingKey()I
    .locals 1

    .line 152
    iget v0, p0, Landroid/hardware/DisplayLuts$Entry;->mSamplingKey:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 136
    iget v0, p0, Landroid/hardware/DisplayLuts$Entry;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entry{dimension="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 158
    invoke-virtual {p0}, Landroid/hardware/DisplayLuts$Entry;->getDimension()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/DisplayLuts$Entry;->dimensionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size(each dimension)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 159
    invoke-virtual {p0}, Landroid/hardware/DisplayLuts$Entry;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", samplingKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 160
    invoke-virtual {p0}, Landroid/hardware/DisplayLuts$Entry;->getSamplingKey()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/DisplayLuts$Entry;->samplingKeyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    return-object v0
.end method
