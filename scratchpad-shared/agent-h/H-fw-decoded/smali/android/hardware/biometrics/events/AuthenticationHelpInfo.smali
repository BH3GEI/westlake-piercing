.class public final Landroid/hardware/biometrics/events/AuthenticationHelpInfo;
.super Ljava/lang/Object;
.source "AuthenticationHelpInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/events/AuthenticationHelpInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

.field private final mHelpCode:I

.field private final mHelpString:Ljava/lang/String;

.field private final mRequestReason:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 204
    new-instance v0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/hardware/biometrics/BiometricSourceType;ILjava/lang/String;I)V
    .locals 3
    .param p1, "biometricSourceType"    # Landroid/hardware/biometrics/BiometricSourceType;
    .param p2, "requestReason"    # I
    .param p3, "helpString"    # Ljava/lang/String;
    .param p4, "helpCode"    # I

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 82
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 84
    iput p2, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mRequestReason:I

    .line 85
    const-class v0, Landroid/hardware/biometrics/BiometricRequestConstants$RequestReason;

    iget v1, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mRequestReason:I

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 87
    iput-object p3, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mHelpString:Ljava/lang/String;

    .line 88
    iput p4, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mHelpCode:I

    .line 91
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 186
    .local v0, "flg":B
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/BiometricSourceType;

    .line 187
    .local v1, "biometricSourceType":Landroid/hardware/biometrics/BiometricSourceType;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 188
    .local v2, "requestReason":I
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "helpString":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 191
    .local v5, "helpCode":I
    iput-object v1, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 192
    const-class v6, Landroid/annotation/NonNull;

    iget-object v7, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-static {v6, v4, v7}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 194
    iput v2, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mRequestReason:I

    .line 195
    const-class v6, Landroid/hardware/biometrics/BiometricRequestConstants$RequestReason;

    iget v7, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mRequestReason:I

    invoke-static {v6, v4, v7}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 197
    iput-object v3, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mHelpString:Ljava/lang/String;

    .line 198
    iput v5, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mHelpCode:I

    .line 201
    return-void
.end method

.method private __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 331
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 133
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 134
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 136
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;

    .line 138
    .local v2, "that":Landroid/hardware/biometrics/events/AuthenticationHelpInfo;
    iget-object v3, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    iget-object v4, v2, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 139
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mRequestReason:I

    iget v4, v2, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mRequestReason:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mHelpString:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mHelpString:Ljava/lang/String;

    .line 141
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mHelpCode:I

    iget v4, v2, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mHelpCode:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 138
    :goto_0
    return v0

    .line 134
    .end local v2    # "that":Landroid/hardware/biometrics/events/AuthenticationHelpInfo;
    :cond_3
    :goto_1
    return v1
.end method

.method public getBiometricSourceType()Landroid/hardware/biometrics/BiometricSourceType;
    .locals 1

    .line 98
    iget-object v0, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    return-object v0
.end method

.method public getHelpCode()I
    .locals 1

    .line 123
    iget v0, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mHelpCode:I

    return v0
.end method

.method public getHelpString()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mHelpString:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestReason()I
    .locals 1

    .line 107
    iget v0, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mRequestReason:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 151
    const/4 v0, 0x1

    .line 152
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 153
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mRequestReason:I

    add-int/2addr v0, v2

    .line 154
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mHelpString:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 155
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mHelpCode:I

    add-int/2addr v0, v2

    .line 156
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "flg":B
    iget-object v1, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mHelpString:Ljava/lang/String;

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 167
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 168
    iget-object v1, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 169
    iget v1, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mRequestReason:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-object v1, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mHelpString:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mHelpString:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    :cond_1
    iget v1, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->mHelpCode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    return-void
.end method
