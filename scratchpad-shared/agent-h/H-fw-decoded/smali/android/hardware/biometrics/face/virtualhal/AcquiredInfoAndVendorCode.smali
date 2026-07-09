.class public final Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;
.super Ljava/lang/Object;
.source "AcquiredInfoAndVendorCode.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;",
            ">;"
        }
    .end annotation
.end field

.field public static final acquiredInfo:I = 0x0

.field public static final vendorCode:I = 0x1


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    .line 21
    .local v0, "_value":B
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;->_tag:I

    .line 22
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;->_value:Ljava/lang/Object;

    .line 23
    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;->_tag:I

    .line 31
    iput-object p2, p0, Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;->_value:Ljava/lang/Object;

    .line 32
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;->readFromParcel(Landroid/os/Parcel;)V

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 121
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 124
    return-void

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private _set(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 135
    iput p1, p0, Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;->_tag:I

    .line 136
    iput-object p2, p0, Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;->_value:Ljava/lang/Object;

    .line 137
    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 127
    packed-switch p1, :pswitch_data_0

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :pswitch_0
    const-string/jumbo v0, "vendorCode"

    return-object v0

    .line 128
    :pswitch_1
    const-string v0, "acquiredInfo"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static acquiredInfo(B)Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;
    .locals 3
    .param p0, "_value"    # B

    .line 42
    new-instance v0, Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static vendorCode(I)Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;
    .locals 3
    .param p0, "_value"    # I

    .line 58
    new-instance v0, Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;->getTag()I

    .line 117
    return v0
.end method

.method public getAcquiredInfo()B
    .locals 1

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;->_assertTag(I)V

    .line 47
    iget-object v0, p0, Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public getTag()I
    .locals 1

    .line 35
    iget v0, p0, Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;->_tag:I

    return v0
.end method

.method public getVendorCode()I
    .locals 1

    .line 62
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;->_assertTag(I)V

    .line 63
    iget-object v0, p0, Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 97
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 109
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "union: unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 106
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;->_set(ILjava/lang/Object;)V

    .line 107
    return-void

    .line 100
    .end local v1    # "_aidl_value":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 101
    .local v1, "_aidl_value":B
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;->_set(ILjava/lang/Object;)V

    .line 102
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAcquiredInfo(B)V
    .locals 2
    .param p1, "_value"    # B

    .line 51
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;->_set(ILjava/lang/Object;)V

    .line 52
    return-void
.end method

.method public setVendorCode(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 67
    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;->_set(ILjava/lang/Object;)V

    .line 68
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 83
    iget v0, p0, Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget v0, p0, Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 89
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;->getVendorCode()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 86
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/virtualhal/AcquiredInfoAndVendorCode;->getAcquiredInfo()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 87
    nop

    .line 92
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
