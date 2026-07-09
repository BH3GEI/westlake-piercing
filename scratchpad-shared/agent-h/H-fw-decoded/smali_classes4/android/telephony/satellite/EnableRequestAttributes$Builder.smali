.class public final Landroid/telephony/satellite/EnableRequestAttributes$Builder;
.super Ljava/lang/Object;
.source "EnableRequestAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/EnableRequestAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mIsDemoMode:Z

.field private blacklist mIsEmergencyMode:Z

.field private blacklist mIsEnabled:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIsDemoMode(Landroid/telephony/satellite/EnableRequestAttributes$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/satellite/EnableRequestAttributes$Builder;->mIsDemoMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsEmergencyMode(Landroid/telephony/satellite/EnableRequestAttributes$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/satellite/EnableRequestAttributes$Builder;->mIsEmergencyMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsEnabled(Landroid/telephony/satellite/EnableRequestAttributes$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/satellite/EnableRequestAttributes$Builder;->mIsEnabled:Z

    return p0
.end method

.method public constructor whitelist <init>(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/satellite/EnableRequestAttributes$Builder;->mIsDemoMode:Z

    .line 92
    iput-boolean v0, p0, Landroid/telephony/satellite/EnableRequestAttributes$Builder;->mIsEmergencyMode:Z

    .line 96
    iput-boolean p1, p0, Landroid/telephony/satellite/EnableRequestAttributes$Builder;->mIsEnabled:Z

    .line 97
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/satellite/EnableRequestAttributes;
    .locals 2

    .line 142
    new-instance v0, Landroid/telephony/satellite/EnableRequestAttributes;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/satellite/EnableRequestAttributes;-><init>(Landroid/telephony/satellite/EnableRequestAttributes$Builder;Landroid/telephony/satellite/EnableRequestAttributes-IA;)V

    return-object v0
.end method

.method public whitelist setDemoMode(Z)Landroid/telephony/satellite/EnableRequestAttributes$Builder;
    .locals 1
    .param p1, "isDemoMode"    # Z

    .line 110
    iget-boolean v0, p0, Landroid/telephony/satellite/EnableRequestAttributes$Builder;->mIsEnabled:Z

    if-eqz v0, :cond_0

    .line 111
    iput-boolean p1, p0, Landroid/telephony/satellite/EnableRequestAttributes$Builder;->mIsDemoMode:Z

    .line 113
    :cond_0
    return-object p0
.end method

.method public whitelist setEmergencyMode(Z)Landroid/telephony/satellite/EnableRequestAttributes$Builder;
    .locals 1
    .param p1, "isEmergencyMode"    # Z

    .line 128
    iget-boolean v0, p0, Landroid/telephony/satellite/EnableRequestAttributes$Builder;->mIsEnabled:Z

    if-eqz v0, :cond_0

    .line 129
    iput-boolean p1, p0, Landroid/telephony/satellite/EnableRequestAttributes$Builder;->mIsEmergencyMode:Z

    .line 131
    :cond_0
    return-object p0
.end method
