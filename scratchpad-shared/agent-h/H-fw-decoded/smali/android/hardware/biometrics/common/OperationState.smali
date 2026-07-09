.class public final Landroid/hardware/biometrics/common/OperationState;
.super Ljava/lang/Object;
.source "OperationState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;,
        Landroid/hardware/biometrics/common/OperationState$FaceOperationState;,
        Landroid/hardware/biometrics/common/OperationState$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/common/OperationState;",
            ">;"
        }
    .end annotation
.end field

.field public static final faceOperationState:I = 0x1

.field public static final fingerprintOperationState:I


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Landroid/hardware/biometrics/common/OperationState$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/common/OperationState$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/common/OperationState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    .line 21
    .local v0, "_value":Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/biometrics/common/OperationState;->_tag:I

    .line 22
    iput-object v0, p0, Landroid/hardware/biometrics/common/OperationState;->_value:Ljava/lang/Object;

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
    iput p1, p0, Landroid/hardware/biometrics/common/OperationState;->_tag:I

    .line 31
    iput-object p2, p0, Landroid/hardware/biometrics/common/OperationState;->_value:Ljava/lang/Object;

    .line 32
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/common/OperationState;->readFromParcel(Landroid/os/Parcel;)V

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/biometrics/common/OperationState-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/biometrics/common/OperationState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 137
    invoke-virtual {p0}, Landroid/hardware/biometrics/common/OperationState;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 140
    return-void

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/biometrics/common/OperationState;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/biometrics/common/OperationState;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/biometrics/common/OperationState;->_tagString(I)Ljava/lang/String;

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

    .line 151
    iput p1, p0, Landroid/hardware/biometrics/common/OperationState;->_tag:I

    .line 152
    iput-object p2, p0, Landroid/hardware/biometrics/common/OperationState;->_value:Ljava/lang/Object;

    .line 153
    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 143
    packed-switch p1, :pswitch_data_0

    .line 147
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

    .line 145
    :pswitch_0
    const-string v0, "faceOperationState"

    return-object v0

    .line 144
    :pswitch_1
    const-string v0, "fingerprintOperationState"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 2
    .param p1, "_v"    # Ljava/lang/Object;

    .line 129
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 130
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 131
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 133
    :cond_1
    return v0
.end method

.method public static faceOperationState(Landroid/hardware/biometrics/common/OperationState$FaceOperationState;)Landroid/hardware/biometrics/common/OperationState;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/biometrics/common/OperationState$FaceOperationState;

    .line 56
    new-instance v0, Landroid/hardware/biometrics/common/OperationState;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/biometrics/common/OperationState;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static fingerprintOperationState(Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;)Landroid/hardware/biometrics/common/OperationState;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;

    .line 41
    new-instance v0, Landroid/hardware/biometrics/common/OperationState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/biometrics/common/OperationState;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/biometrics/common/OperationState;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 123
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/biometrics/common/OperationState;->getFaceOperationState()Landroid/hardware/biometrics/common/OperationState$FaceOperationState;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/biometrics/common/OperationState;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 120
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/biometrics/common/OperationState;->getFingerprintOperationState()Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/biometrics/common/OperationState;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 121
    nop

    .line 126
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFaceOperationState()Landroid/hardware/biometrics/common/OperationState$FaceOperationState;
    .locals 1

    .line 60
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/biometrics/common/OperationState;->_assertTag(I)V

    .line 61
    iget-object v0, p0, Landroid/hardware/biometrics/common/OperationState;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/biometrics/common/OperationState$FaceOperationState;

    return-object v0
.end method

.method public getFingerprintOperationState()Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;
    .locals 1

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/biometrics/common/OperationState;->_assertTag(I)V

    .line 46
    iget-object v0, p0, Landroid/hardware/biometrics/common/OperationState;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;

    return-object v0
.end method

.method public final getStability()I
    .locals 1

    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public getTag()I
    .locals 1

    .line 35
    iget v0, p0, Landroid/hardware/biometrics/common/OperationState;->_tag:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 100
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 112
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

    .line 108
    :pswitch_0
    sget-object v1, Landroid/hardware/biometrics/common/OperationState$FaceOperationState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/common/OperationState$FaceOperationState;

    .line 109
    .local v1, "_aidl_value":Landroid/hardware/biometrics/common/OperationState$FaceOperationState;
    invoke-direct {p0, v0, v1}, Landroid/hardware/biometrics/common/OperationState;->_set(ILjava/lang/Object;)V

    .line 110
    return-void

    .line 103
    .end local v1    # "_aidl_value":Landroid/hardware/biometrics/common/OperationState$FaceOperationState;
    :pswitch_1
    sget-object v1, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;

    .line 104
    .local v1, "_aidl_value":Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;
    invoke-direct {p0, v0, v1}, Landroid/hardware/biometrics/common/OperationState;->_set(ILjava/lang/Object;)V

    .line 105
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFaceOperationState(Landroid/hardware/biometrics/common/OperationState$FaceOperationState;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/biometrics/common/OperationState$FaceOperationState;

    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/biometrics/common/OperationState;->_set(ILjava/lang/Object;)V

    .line 66
    return-void
.end method

.method public setFingerprintOperationState(Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/biometrics/common/OperationState;->_set(ILjava/lang/Object;)V

    .line 51
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 86
    iget v0, p0, Landroid/hardware/biometrics/common/OperationState;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget v0, p0, Landroid/hardware/biometrics/common/OperationState;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 92
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/biometrics/common/OperationState;->getFaceOperationState()Landroid/hardware/biometrics/common/OperationState$FaceOperationState;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 89
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/biometrics/common/OperationState;->getFingerprintOperationState()Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 90
    nop

    .line 95
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
