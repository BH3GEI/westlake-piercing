.class public final Landroid/media/audiopolicy/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/media/audiopolicy/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist audioMixOwnership()Z
    .locals 1

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public greylist audioMixPolicyOrdering()Z
    .locals 1

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public greylist audioMixTestApi()Z
    .locals 1

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public greylist audioPolicyUpdateMixingRulesApi()Z
    .locals 1

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableFadeManagerConfiguration()Z
    .locals 1

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public greylist multiZoneAudio()Z
    .locals 1

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public greylist recordAudioDeviceAwarePermission()Z
    .locals 1

    .line 52
    const/4 v0, 0x1

    return v0
.end method
