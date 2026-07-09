.class public final Landroid/hardware/location/HubInfo;
.super Ljava/lang/Object;
.source "HubInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/HubInfo$HubType;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/location/HubInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TYPE_CONTEXT_HUB:I = 0x0

.field public static final blacklist TYPE_VENDOR_HUB:I = 0x1


# instance fields
.field private final blacklist mContextHubInfo:Landroid/hardware/location/ContextHubInfo;

.field private final blacklist mId:J

.field private final blacklist mType:I

.field private final blacklist mVendorHubInfo:Landroid/hardware/location/VendorHubInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 143
    new-instance v0, Landroid/hardware/location/HubInfo$1;

    invoke-direct {v0}, Landroid/hardware/location/HubInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/location/HubInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JLandroid/hardware/location/ContextHubInfo;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "contextHubInfo"    # Landroid/hardware/location/ContextHubInfo;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-wide p1, p0, Landroid/hardware/location/HubInfo;->mId:J

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/location/HubInfo;->mType:I

    .line 54
    iput-object p3, p0, Landroid/hardware/location/HubInfo;->mContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/location/HubInfo;->mVendorHubInfo:Landroid/hardware/location/VendorHubInfo;

    .line 56
    return-void
.end method

.method public constructor blacklist <init>(JLandroid/hardware/location/VendorHubInfo;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "vendorHubInfo"    # Landroid/hardware/location/VendorHubInfo;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-wide p1, p0, Landroid/hardware/location/HubInfo;->mId:J

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/location/HubInfo;->mType:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/location/HubInfo;->mContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    .line 63
    iput-object p3, p0, Landroid/hardware/location/HubInfo;->mVendorHubInfo:Landroid/hardware/location/VendorHubInfo;

    .line 64
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/location/HubInfo;->mId:J

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/HubInfo;->mType:I

    .line 70
    iget v0, p0, Landroid/hardware/location/HubInfo;->mType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 80
    new-instance v0, Landroid/os/BadParcelableException;

    const-string v1, "Parcelable has invalid type"

    invoke-direct {v0, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :pswitch_0
    sget-object v0, Landroid/hardware/location/VendorHubInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/VendorHubInfo;

    iput-object v0, p0, Landroid/hardware/location/HubInfo;->mVendorHubInfo:Landroid/hardware/location/VendorHubInfo;

    .line 77
    iput-object v1, p0, Landroid/hardware/location/HubInfo;->mContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    .line 78
    goto :goto_0

    .line 72
    :pswitch_1
    sget-object v0, Landroid/hardware/location/ContextHubInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/ContextHubInfo;

    iput-object v0, p0, Landroid/hardware/location/HubInfo;->mContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    .line 73
    iput-object v1, p0, Landroid/hardware/location/HubInfo;->mVendorHubInfo:Landroid/hardware/location/VendorHubInfo;

    .line 74
    nop

    .line 82
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/location/HubInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/location/HubInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 2

    .line 102
    iget v0, p0, Landroid/hardware/location/HubInfo;->mType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/location/HubInfo;->mContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Landroid/hardware/location/HubInfo;->mContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    invoke-virtual {v0}, Landroid/hardware/location/ContextHubInfo;->describeContents()I

    move-result v0

    return v0

    .line 105
    :cond_0
    iget v0, p0, Landroid/hardware/location/HubInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/hardware/location/HubInfo;->mVendorHubInfo:Landroid/hardware/location/VendorHubInfo;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Landroid/hardware/location/HubInfo;->mVendorHubInfo:Landroid/hardware/location/VendorHubInfo;

    invoke-virtual {v0}, Landroid/hardware/location/VendorHubInfo;->describeContents()I

    move-result v0

    return v0

    .line 108
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getContextHubInfo()Landroid/hardware/location/ContextHubInfo;
    .locals 1

    .line 97
    iget-object v0, p0, Landroid/hardware/location/HubInfo;->mContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    return-object v0
.end method

.method public blacklist getId()J
    .locals 2

    .line 86
    iget-wide v0, p0, Landroid/hardware/location/HubInfo;->mId:J

    return-wide v0
.end method

.method public blacklist getType()I
    .locals 1

    .line 91
    iget v0, p0, Landroid/hardware/location/HubInfo;->mType:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .local v0, "out":Ljava/lang/StringBuilder;
    const-string v1, "HubInfo ID: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-wide v1, p0, Landroid/hardware/location/HubInfo;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget v1, p0, Landroid/hardware/location/HubInfo;->mType:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/hardware/location/HubInfo;->mContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    if-eqz v1, :cond_0

    .line 133
    const-string v1, " ContextHubDetails: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-object v1, p0, Landroid/hardware/location/HubInfo;->mContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    :cond_0
    iget v1, p0, Landroid/hardware/location/HubInfo;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/hardware/location/HubInfo;->mVendorHubInfo:Landroid/hardware/location/VendorHubInfo;

    if-eqz v1, :cond_1

    .line 137
    const-string v1, " VendorHubDetails: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget-object v1, p0, Landroid/hardware/location/HubInfo;->mVendorHubInfo:Landroid/hardware/location/VendorHubInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 113
    iget-wide v0, p0, Landroid/hardware/location/HubInfo;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 114
    iget v0, p0, Landroid/hardware/location/HubInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget v0, p0, Landroid/hardware/location/HubInfo;->mType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/location/HubInfo;->mContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Landroid/hardware/location/HubInfo;->mContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/location/ContextHubInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 120
    :cond_0
    iget v0, p0, Landroid/hardware/location/HubInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/hardware/location/HubInfo;->mVendorHubInfo:Landroid/hardware/location/VendorHubInfo;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Landroid/hardware/location/HubInfo;->mVendorHubInfo:Landroid/hardware/location/VendorHubInfo;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/location/VendorHubInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 123
    :cond_1
    return-void
.end method
