.class public final Landroid/companion/ObservingDevicePresenceRequest;
.super Ljava/lang/Object;
.source "ObservingDevicePresenceRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/ObservingDevicePresenceRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/ObservingDevicePresenceRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARCEL_UUID_NOT_NULL:I = 0x1

.field private static final PARCEL_UUID_NULL:I


# instance fields
.field private final mAssociationId:I

.field private final mUuid:Landroid/os/ParcelUuid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    new-instance v0, Landroid/companion/ObservingDevicePresenceRequest$1;

    invoke-direct {v0}, Landroid/companion/ObservingDevicePresenceRequest$1;-><init>()V

    sput-object v0, Landroid/companion/ObservingDevicePresenceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ILandroid/os/ParcelUuid;)V
    .locals 0
    .param p1, "associationId"    # I
    .param p2, "uuid"    # Landroid/os/ParcelUuid;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Landroid/companion/ObservingDevicePresenceRequest;->mAssociationId:I

    .line 55
    iput-object p2, p0, Landroid/companion/ObservingDevicePresenceRequest;->mUuid:Landroid/os/ParcelUuid;

    .line 56
    return-void
.end method

.method synthetic constructor <init>(ILandroid/os/ParcelUuid;Landroid/companion/ObservingDevicePresenceRequest-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/companion/ObservingDevicePresenceRequest;-><init>(ILandroid/os/ParcelUuid;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/ObservingDevicePresenceRequest;->mAssociationId:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/companion/ObservingDevicePresenceRequest;->mUuid:Landroid/os/ParcelUuid;

    goto :goto_0

    .line 63
    :cond_0
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    iput-object v0, p0, Landroid/companion/ObservingDevicePresenceRequest;->mUuid:Landroid/os/ParcelUuid;

    .line 65
    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/companion/ObservingDevicePresenceRequest-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/companion/ObservingDevicePresenceRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 125
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 126
    :cond_0
    instance-of v1, p1, Landroid/companion/ObservingDevicePresenceRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/companion/ObservingDevicePresenceRequest;

    .line 128
    .local v1, "that":Landroid/companion/ObservingDevicePresenceRequest;
    iget-object v3, p0, Landroid/companion/ObservingDevicePresenceRequest;->mUuid:Landroid/os/ParcelUuid;

    iget-object v4, v1, Landroid/companion/ObservingDevicePresenceRequest;->mUuid:Landroid/os/ParcelUuid;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/companion/ObservingDevicePresenceRequest;->mAssociationId:I

    iget v4, v1, Landroid/companion/ObservingDevicePresenceRequest;->mAssociationId:I

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 126
    .end local v1    # "that":Landroid/companion/ObservingDevicePresenceRequest;
    :cond_2
    return v2
.end method

.method public getAssociationId()I
    .locals 1

    .line 73
    iget v0, p0, Landroid/companion/ObservingDevicePresenceRequest;->mAssociationId:I

    return v0
.end method

.method public getUuid()Landroid/os/ParcelUuid;
    .locals 1

    .line 81
    iget-object v0, p0, Landroid/companion/ObservingDevicePresenceRequest;->mUuid:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 133
    iget v0, p0, Landroid/companion/ObservingDevicePresenceRequest;->mAssociationId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/ObservingDevicePresenceRequest;->mUuid:Landroid/os/ParcelUuid;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObservingDevicePresenceRequest { Association Id= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/ObservingDevicePresenceRequest;->mAssociationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ParcelUuid= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/ObservingDevicePresenceRequest;->mUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 86
    iget v0, p0, Landroid/companion/ObservingDevicePresenceRequest;->mAssociationId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v0, p0, Landroid/companion/ObservingDevicePresenceRequest;->mUuid:Landroid/os/ParcelUuid;

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 91
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-object v0, p0, Landroid/companion/ObservingDevicePresenceRequest;->mUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 95
    :goto_0
    return-void
.end method
