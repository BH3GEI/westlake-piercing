.class public final Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;
.super Ljava/lang/Object;
.source "AuthenticationSucceededInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

.field private final mIsStrongBiometric:Z

.field private final mRequestReason:I

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 202
    new-instance v0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/hardware/biometrics/BiometricSourceType;IZI)V
    .locals 3
    .param p1, "biometricSourceType"    # Landroid/hardware/biometrics/BiometricSourceType;
    .param p2, "requestReason"    # I
    .param p3, "isStrongBiometric"    # Z
    .param p4, "userId"    # I

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 81
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 83
    iput p2, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mRequestReason:I

    .line 84
    const-class v0, Landroid/hardware/biometrics/BiometricRequestConstants$RequestReason;

    iget v1, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mRequestReason:I

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 86
    iput-boolean p3, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mIsStrongBiometric:Z

    .line 87
    iput p4, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mUserId:I

    .line 90
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 184
    .local v0, "flg":B
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 185
    .local v1, "isStrongBiometric":Z
    :goto_0
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/BiometricSourceType;

    .line 186
    .local v2, "biometricSourceType":Landroid/hardware/biometrics/BiometricSourceType;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 187
    .local v3, "requestReason":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 189
    .local v4, "userId":I
    iput-object v2, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 190
    const-class v5, Landroid/annotation/NonNull;

    iget-object v6, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v7, 0x0

    invoke-static {v5, v7, v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 192
    iput v3, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mRequestReason:I

    .line 193
    const-class v5, Landroid/hardware/biometrics/BiometricRequestConstants$RequestReason;

    iget v6, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mRequestReason:I

    invoke-static {v5, v7, v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 195
    iput-boolean v1, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mIsStrongBiometric:Z

    .line 196
    iput v4, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mUserId:I

    .line 199
    return-void
.end method

.method private __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 329
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 132
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 133
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 135
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;

    .line 137
    .local v2, "that":Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;
    iget-object v3, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    iget-object v4, v2, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 138
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mRequestReason:I

    iget v4, v2, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mRequestReason:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mIsStrongBiometric:Z

    iget-boolean v4, v2, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mIsStrongBiometric:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mUserId:I

    iget v4, v2, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mUserId:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 137
    :goto_0
    return v0

    .line 133
    .end local v2    # "that":Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;
    :cond_3
    :goto_1
    return v1
.end method

.method public getBiometricSourceType()Landroid/hardware/biometrics/BiometricSourceType;
    .locals 1

    .line 97
    iget-object v0, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    return-object v0
.end method

.method public getRequestReason()I
    .locals 1

    .line 106
    iget v0, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mRequestReason:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .line 122
    iget v0, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mUserId:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 150
    const/4 v0, 0x1

    .line 151
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 152
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mRequestReason:I

    add-int/2addr v0, v2

    .line 153
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mIsStrongBiometric:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 154
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mUserId:I

    add-int/2addr v0, v2

    .line 155
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method

.method public isIsStrongBiometric()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mIsStrongBiometric:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "flg":B
    iget-boolean v1, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mIsStrongBiometric:Z

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 166
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 167
    iget-object v1, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 168
    iget v1, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mRequestReason:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget v1, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mUserId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    return-void
.end method
