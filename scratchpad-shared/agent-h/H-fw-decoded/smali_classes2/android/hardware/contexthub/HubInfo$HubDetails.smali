.class public final Landroid/hardware/contexthub/HubInfo$HubDetails;
.super Ljava/lang/Object;
.source "HubInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/HubInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HubDetails"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contexthub/HubInfo$HubDetails$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/contexthub/HubInfo$HubDetails;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist contextHubInfo:I = 0x0

.field public static final blacklist vendorHubInfo:I = 0x1


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 133
    new-instance v0, Landroid/hardware/contexthub/HubInfo$HubDetails$1;

    invoke-direct {v0}, Landroid/hardware/contexthub/HubInfo$HubDetails$1;-><init>()V

    sput-object v0, Landroid/hardware/contexthub/HubInfo$HubDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "_value":Landroid/hardware/contexthub/ContextHubInfo;
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/contexthub/HubInfo$HubDetails;->_tag:I

    .line 82
    iput-object v0, p0, Landroid/hardware/contexthub/HubInfo$HubDetails;->_value:Ljava/lang/Object;

    .line 83
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput p1, p0, Landroid/hardware/contexthub/HubInfo$HubDetails;->_tag:I

    .line 91
    iput-object p2, p0, Landroid/hardware/contexthub/HubInfo$HubDetails;->_value:Ljava/lang/Object;

    .line 92
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p0, p1}, Landroid/hardware/contexthub/HubInfo$HubDetails;->readFromParcel(Landroid/os/Parcel;)V

    .line 87
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/contexthub/HubInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubInfo$HubDetails;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 197
    invoke-virtual {p0}, Landroid/hardware/contexthub/HubInfo$HubDetails;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 200
    return-void

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubInfo$HubDetails;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/contexthub/HubInfo$HubDetails;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/contexthub/HubInfo$HubDetails;->_tagString(I)Ljava/lang/String;

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

.method private blacklist _set(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 211
    iput p1, p0, Landroid/hardware/contexthub/HubInfo$HubDetails;->_tag:I

    .line 212
    iput-object p2, p0, Landroid/hardware/contexthub/HubInfo$HubDetails;->_value:Ljava/lang/Object;

    .line 213
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 203
    packed-switch p1, :pswitch_data_0

    .line 207
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :pswitch_0
    const-string v0, "vendorHubInfo"

    return-object v0

    .line 204
    :pswitch_1
    const-string v0, "contextHubInfo"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist contextHubInfo(Landroid/hardware/contexthub/ContextHubInfo;)Landroid/hardware/contexthub/HubInfo$HubDetails;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/contexthub/ContextHubInfo;

    .line 101
    new-instance v0, Landroid/hardware/contexthub/HubInfo$HubDetails;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/contexthub/HubInfo$HubDetails;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .locals 2
    .param p1, "_v"    # Ljava/lang/Object;

    .line 189
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 190
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 191
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 193
    :cond_1
    return v0
.end method

.method public static blacklist vendorHubInfo(Landroid/hardware/contexthub/VendorHubInfo;)Landroid/hardware/contexthub/HubInfo$HubDetails;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/contexthub/VendorHubInfo;

    .line 116
    new-instance v0, Landroid/hardware/contexthub/HubInfo$HubDetails;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/contexthub/HubInfo$HubDetails;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 2

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/contexthub/HubInfo$HubDetails;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 183
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/contexthub/HubInfo$HubDetails;->getVendorHubInfo()Landroid/hardware/contexthub/VendorHubInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/contexthub/HubInfo$HubDetails;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 180
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/contexthub/HubInfo$HubDetails;->getContextHubInfo()Landroid/hardware/contexthub/ContextHubInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/contexthub/HubInfo$HubDetails;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 181
    nop

    .line 186
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getContextHubInfo()Landroid/hardware/contexthub/ContextHubInfo;
    .locals 1

    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/contexthub/HubInfo$HubDetails;->_assertTag(I)V

    .line 106
    iget-object v0, p0, Landroid/hardware/contexthub/HubInfo$HubDetails;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/contexthub/ContextHubInfo;

    return-object v0
.end method

.method public final whitelist getStability()I
    .locals 1

    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .locals 1

    .line 95
    iget v0, p0, Landroid/hardware/contexthub/HubInfo$HubDetails;->_tag:I

    return v0
.end method

.method public blacklist getVendorHubInfo()Landroid/hardware/contexthub/VendorHubInfo;
    .locals 1

    .line 120
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/contexthub/HubInfo$HubDetails;->_assertTag(I)V

    .line 121
    iget-object v0, p0, Landroid/hardware/contexthub/HubInfo$HubDetails;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/contexthub/VendorHubInfo;

    return-object v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 160
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 172
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "union: unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :pswitch_0
    sget-object v1, Landroid/hardware/contexthub/VendorHubInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contexthub/VendorHubInfo;

    .line 169
    .local v1, "_aidl_value":Landroid/hardware/contexthub/VendorHubInfo;
    invoke-direct {p0, v0, v1}, Landroid/hardware/contexthub/HubInfo$HubDetails;->_set(ILjava/lang/Object;)V

    .line 170
    return-void

    .line 163
    .end local v1    # "_aidl_value":Landroid/hardware/contexthub/VendorHubInfo;
    :pswitch_1
    sget-object v1, Landroid/hardware/contexthub/ContextHubInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contexthub/ContextHubInfo;

    .line 164
    .local v1, "_aidl_value":Landroid/hardware/contexthub/ContextHubInfo;
    invoke-direct {p0, v0, v1}, Landroid/hardware/contexthub/HubInfo$HubDetails;->_set(ILjava/lang/Object;)V

    .line 165
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setContextHubInfo(Landroid/hardware/contexthub/ContextHubInfo;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/contexthub/ContextHubInfo;

    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/contexthub/HubInfo$HubDetails;->_set(ILjava/lang/Object;)V

    .line 111
    return-void
.end method

.method public blacklist setVendorHubInfo(Landroid/hardware/contexthub/VendorHubInfo;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/contexthub/VendorHubInfo;

    .line 125
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/contexthub/HubInfo$HubDetails;->_set(ILjava/lang/Object;)V

    .line 126
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 146
    iget v0, p0, Landroid/hardware/contexthub/HubInfo$HubDetails;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget v0, p0, Landroid/hardware/contexthub/HubInfo$HubDetails;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 152
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/contexthub/HubInfo$HubDetails;->getVendorHubInfo()Landroid/hardware/contexthub/VendorHubInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 149
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/contexthub/HubInfo$HubDetails;->getContextHubInfo()Landroid/hardware/contexthub/ContextHubInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 150
    nop

    .line 155
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
