.class public final Landroid/hardware/contexthub/HubServiceInfo$Builder;
.super Ljava/lang/Object;
.source "HubServiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/HubServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mFormat:I

.field private final blacklist mMajorVersion:I

.field private final blacklist mMinorVersion:I

.field private final blacklist mServiceDescriptor:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;III)V
    .locals 2
    .param p1, "serviceDescriptor"    # Ljava/lang/String;
    .param p2, "format"    # I
    .param p3, "majorVersion"    # I
    .param p4, "minorVersion"    # I

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid format type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_1
    :goto_0
    iput p2, p0, Landroid/hardware/contexthub/HubServiceInfo$Builder;->mFormat:I

    .line 202
    if-ltz p3, :cond_4

    .line 206
    iput p3, p0, Landroid/hardware/contexthub/HubServiceInfo$Builder;->mMajorVersion:I

    .line 208
    if-ltz p4, :cond_3

    .line 212
    iput p4, p0, Landroid/hardware/contexthub/HubServiceInfo$Builder;->mMinorVersion:I

    .line 214
    invoke-virtual {p1}, Ljava/lang/String;->isBlank()Z

    move-result v0

    if-nez v0, :cond_2

    .line 217
    iput-object p1, p0, Landroid/hardware/contexthub/HubServiceInfo$Builder;->mServiceDescriptor:Ljava/lang/String;

    .line 218
    return-void

    .line 215
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid service descriptor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minor version cannot be set to negative number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Major version cannot be set to negative number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/hardware/contexthub/HubServiceInfo;
    .locals 5

    .line 227
    iget v0, p0, Landroid/hardware/contexthub/HubServiceInfo$Builder;->mMajorVersion:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/hardware/contexthub/HubServiceInfo$Builder;->mMinorVersion:I

    if-ltz v0, :cond_0

    .line 230
    new-instance v0, Landroid/hardware/contexthub/HubServiceInfo;

    iget-object v1, p0, Landroid/hardware/contexthub/HubServiceInfo$Builder;->mServiceDescriptor:Ljava/lang/String;

    iget v2, p0, Landroid/hardware/contexthub/HubServiceInfo$Builder;->mFormat:I

    iget v3, p0, Landroid/hardware/contexthub/HubServiceInfo$Builder;->mMajorVersion:I

    iget v4, p0, Landroid/hardware/contexthub/HubServiceInfo$Builder;->mMinorVersion:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/hardware/contexthub/HubServiceInfo;-><init>(Ljava/lang/String;III)V

    return-object v0

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Major and minor version must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
