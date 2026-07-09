.class public Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;
.super Ljava/lang/Object;
.source "AudioHalEngineConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audio/common/AudioHalEngineConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CapSpecificConfig"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist criteria:[Landroid/media/audio/common/AudioHalCapCriterion;

.field public blacklist criteriaV2:[Landroid/media/audio/common/AudioHalCapCriterionV2;

.field public blacklist criterionTypes:[Landroid/media/audio/common/AudioHalCapCriterionType;

.field public blacklist domains:[Landroid/media/audio/common/AudioHalCapDomain;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 121
    new-instance v0, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig$1;

    invoke-direct {v0}, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig$1;-><init>()V

    sput-object v0, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .locals 6
    .param p1, "_v"    # Ljava/lang/Object;

    .line 177
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 178
    :cond_0
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 179
    const/4 v1, 0x0

    .line 180
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 181
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 180
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_1
    return v1

    .line 185
    .end local v1    # "_mask":I
    :cond_2
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_3

    .line 186
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 188
    :cond_3
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 2

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->criteria:[Landroid/media/audio/common/AudioHalCapCriterion;

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 171
    iget-object v1, p0, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->criterionTypes:[Landroid/media/audio/common/AudioHalCapCriterionType;

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 172
    iget-object v1, p0, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->criteriaV2:[Landroid/media/audio/common/AudioHalCapCriterionV2;

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 173
    iget-object v1, p0, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->domains:[Landroid/media/audio/common/AudioHalCapDomain;

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 174
    return v0
.end method

.method public final whitelist getStability()I
    .locals 1

    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 149
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 151
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_9

    .line 152
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    .line 161
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_0

    .line 164
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 152
    return-void

    .line 162
    :cond_0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 153
    :cond_1
    :try_start_1
    sget-object v2, Landroid/media/audio/common/AudioHalCapCriterion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/audio/common/AudioHalCapCriterion;

    iput-object v2, p0, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->criteria:[Landroid/media/audio/common/AudioHalCapCriterion;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    .line 161
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2

    .line 164
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 154
    return-void

    .line 162
    :cond_2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    :cond_3
    :try_start_2
    sget-object v2, Landroid/media/audio/common/AudioHalCapCriterionType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/audio/common/AudioHalCapCriterionType;

    iput-object v2, p0, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->criterionTypes:[Landroid/media/audio/common/AudioHalCapCriterionType;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5

    .line 161
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4

    .line 164
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 156
    return-void

    .line 162
    :cond_4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 157
    :cond_5
    :try_start_3
    sget-object v2, Landroid/media/audio/common/AudioHalCapCriterionV2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/audio/common/AudioHalCapCriterionV2;

    iput-object v2, p0, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->criteriaV2:[Landroid/media/audio/common/AudioHalCapCriterionV2;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7

    .line 161
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6

    .line 164
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 158
    return-void

    .line 162
    :cond_6
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 159
    :cond_7
    :try_start_4
    sget-object v2, Landroid/media/audio/common/AudioHalCapDomain;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/audio/common/AudioHalCapDomain;

    iput-object v2, p0, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->domains:[Landroid/media/audio/common/AudioHalCapDomain;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 161
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8

    .line 164
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 165
    nop

    .line 166
    return-void

    .line 162
    :cond_8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 161
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 151
    :cond_9
    :try_start_5
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 161
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_0
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_a

    .line 162
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 164
    :cond_a
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 165
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 136
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget-object v1, p0, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->criteria:[Landroid/media/audio/common/AudioHalCapCriterion;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 138
    iget-object v1, p0, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->criterionTypes:[Landroid/media/audio/common/AudioHalCapCriterionType;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 139
    iget-object v1, p0, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->criteriaV2:[Landroid/media/audio/common/AudioHalCapCriterionV2;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 140
    iget-object v1, p0, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->domains:[Landroid/media/audio/common/AudioHalCapDomain;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 142
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 143
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 145
    return-void
.end method
