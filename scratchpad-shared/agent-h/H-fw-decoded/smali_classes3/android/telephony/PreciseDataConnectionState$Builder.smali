.class public final Landroid/telephony/PreciseDataConnectionState$Builder;
.super Ljava/lang/Object;
.source "PreciseDataConnectionState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PreciseDataConnectionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mApnSetting:Landroid/telephony/data/ApnSetting;

.field private blacklist mDefaultQos:Landroid/telephony/data/Qos;

.field private blacklist mFailCause:I

.field private blacklist mId:I

.field private blacklist mLinkProperties:Landroid/net/LinkProperties;

.field private blacklist mNetworkAgentId:I

.field private blacklist mNetworkType:I

.field private blacklist mNetworkValidationStatus:I

.field private blacklist mState:I

.field private blacklist mTransportType:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mTransportType:I

    .line 478
    iput v0, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mId:I

    .line 483
    iput v0, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mNetworkAgentId:I

    .line 486
    iput v0, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mState:I

    .line 489
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mNetworkType:I

    .line 498
    iput v0, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mFailCause:I

    .line 507
    iput v0, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mNetworkValidationStatus:I

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/telephony/PreciseDataConnectionState;
    .locals 12

    .line 631
    new-instance v0, Landroid/telephony/PreciseDataConnectionState;

    iget v1, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mTransportType:I

    iget v2, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mId:I

    iget v3, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mNetworkAgentId:I

    iget v4, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mState:I

    iget v5, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mNetworkType:I

    iget-object v6, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mLinkProperties:Landroid/net/LinkProperties;

    iget v7, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mFailCause:I

    iget-object v8, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mApnSetting:Landroid/telephony/data/ApnSetting;

    iget-object v9, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mDefaultQos:Landroid/telephony/data/Qos;

    iget v10, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mNetworkValidationStatus:I

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Landroid/telephony/PreciseDataConnectionState;-><init>(IIIIILandroid/net/LinkProperties;ILandroid/telephony/data/ApnSetting;Landroid/telephony/data/Qos;ILandroid/telephony/PreciseDataConnectionState-IA;)V

    return-object v0
.end method

.method public blacklist setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/PreciseDataConnectionState$Builder;
    .locals 0
    .param p1, "apnSetting"    # Landroid/telephony/data/ApnSetting;

    .line 595
    iput-object p1, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 596
    return-object p0
.end method

.method public blacklist setDefaultQos(Landroid/telephony/data/Qos;)Landroid/telephony/PreciseDataConnectionState$Builder;
    .locals 0
    .param p1, "qos"    # Landroid/telephony/data/Qos;

    .line 608
    iput-object p1, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mDefaultQos:Landroid/telephony/data/Qos;

    .line 609
    return-object p0
.end method

.method public blacklist setFailCause(I)Landroid/telephony/PreciseDataConnectionState$Builder;
    .locals 0
    .param p1, "failCause"    # I

    .line 584
    iput p1, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mFailCause:I

    .line 585
    return-object p0
.end method

.method public blacklist setId(I)Landroid/telephony/PreciseDataConnectionState$Builder;
    .locals 0
    .param p1, "id"    # I

    .line 528
    iput p1, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mId:I

    .line 529
    return-object p0
.end method

.method public blacklist setLinkProperties(Landroid/net/LinkProperties;)Landroid/telephony/PreciseDataConnectionState$Builder;
    .locals 0
    .param p1, "linkProperties"    # Landroid/net/LinkProperties;

    .line 572
    iput-object p1, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mLinkProperties:Landroid/net/LinkProperties;

    .line 573
    return-object p0
.end method

.method public blacklist setNetworkAgentId(I)Landroid/telephony/PreciseDataConnectionState$Builder;
    .locals 0
    .param p1, "agentId"    # I

    .line 539
    iput p1, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mNetworkAgentId:I

    .line 540
    return-object p0
.end method

.method public blacklist setNetworkType(I)Landroid/telephony/PreciseDataConnectionState$Builder;
    .locals 0
    .param p1, "networkType"    # I

    .line 561
    iput p1, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mNetworkType:I

    .line 562
    return-object p0
.end method

.method public blacklist setNetworkValidationStatus(I)Landroid/telephony/PreciseDataConnectionState$Builder;
    .locals 0
    .param p1, "networkValidationStatus"    # I

    .line 621
    iput p1, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mNetworkValidationStatus:I

    .line 622
    return-object p0
.end method

.method public blacklist setState(I)Landroid/telephony/PreciseDataConnectionState$Builder;
    .locals 0
    .param p1, "state"    # I

    .line 550
    iput p1, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mState:I

    .line 551
    return-object p0
.end method

.method public blacklist setTransportType(I)Landroid/telephony/PreciseDataConnectionState$Builder;
    .locals 0
    .param p1, "transportType"    # I

    .line 517
    iput p1, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mTransportType:I

    .line 518
    return-object p0
.end method
