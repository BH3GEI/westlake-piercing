.class public final Landroid/os/vibrator/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/os/vibrator/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist adaptiveHapticsEnabled()Z
    .locals 1

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public greylist cancelByAppops()Z
    .locals 1

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fixAudioCoupledHapticsScaling()Z
    .locals 1

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fixVibrationThreadCallbackHandling()Z
    .locals 1

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public greylist hapticFeedbackInputSourceCustomizationEnabled()Z
    .locals 1

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public greylist hapticFeedbackVibrationOemCustomizationEnabled()Z
    .locals 1

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public greylist hapticsScaleV2Enabled()Z
    .locals 1

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public greylist loadHapticFeedbackVibrationCustomizationFromResources()Z
    .locals 1

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public greylist normalizedPwleEffects()Z
    .locals 1

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public greylist primitiveCompositionAbsoluteDelay()Z
    .locals 1

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public greylist throttleVibrationParamsRequests()Z
    .locals 1

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public greylist vendorVibrationEffects()Z
    .locals 1

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public greylist vibrationAttributeImeUsageApi()Z
    .locals 1

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public greylist vibrationPipelineEnabled()Z
    .locals 1

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public greylist vibrationXmlApis()Z
    .locals 1

    .line 108
    const/4 v0, 0x1

    return v0
.end method
