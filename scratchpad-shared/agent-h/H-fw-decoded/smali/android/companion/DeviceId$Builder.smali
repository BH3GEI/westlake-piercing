.class public final Landroid/companion/DeviceId$Builder;
.super Ljava/lang/Object;
.source "DeviceId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/DeviceId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCustomId:Ljava/lang/String;

.field private mMacAddress:Landroid/net/MacAddress;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/companion/DeviceId;
    .locals 3

    .line 202
    iget-object v0, p0, Landroid/companion/DeviceId$Builder;->mCustomId:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/companion/DeviceId$Builder;->mMacAddress:Landroid/net/MacAddress;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one device id property must benon-null to build a DeviceId."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_1
    :goto_0
    new-instance v0, Landroid/companion/DeviceId;

    iget-object v1, p0, Landroid/companion/DeviceId$Builder;->mCustomId:Ljava/lang/String;

    iget-object v2, p0, Landroid/companion/DeviceId$Builder;->mMacAddress:Landroid/net/MacAddress;

    invoke-direct {v0, v1, v2}, Landroid/companion/DeviceId;-><init>(Ljava/lang/String;Landroid/net/MacAddress;)V

    return-object v0
.end method

.method public setCustomId(Ljava/lang/String;)Landroid/companion/DeviceId$Builder;
    .locals 2
    .param p1, "customId"    # Ljava/lang/String;

    .line 177
    if-eqz p1, :cond_1

    .line 178
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x400

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length of the custom id must be at most 1024 characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/companion/DeviceId$Builder;->mCustomId:Ljava/lang/String;

    .line 183
    return-object p0
.end method

.method public setMacAddress(Landroid/net/MacAddress;)Landroid/companion/DeviceId$Builder;
    .locals 0
    .param p1, "macAddress"    # Landroid/net/MacAddress;

    .line 196
    iput-object p1, p0, Landroid/companion/DeviceId$Builder;->mMacAddress:Landroid/net/MacAddress;

    .line 197
    return-object p0
.end method
