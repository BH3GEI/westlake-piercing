.class public final Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/security/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist aapmApi()Z
    .locals 1

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist aapmFeatureDisableCellular2g()Z
    .locals 1

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist aapmFeatureDisableInstallUnknownSources()Z
    .locals 1

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist aapmFeatureMemoryTaggingExtension()Z
    .locals 1

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist aapmFeatureUsbDataProtection()Z
    .locals 1

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist aflApi()Z
    .locals 1

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist asmOptSystemIntoEnforcement()Z
    .locals 1

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist asmReintroduceGracePeriod()Z
    .locals 1

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist asmRestrictionsEnabled()Z
    .locals 1

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist asmToastsEnabled()Z
    .locals 1

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist binaryTransparencySepolicyHash()Z
    .locals 1

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist blockNullActionIntents()Z
    .locals 1

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist certificateTransparencyConfiguration()Z
    .locals 1

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist clearStrongAuthOnAddPrimaryCredential()Z
    .locals 1

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist contentUriPermissionApis()Z
    .locals 1

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist deprecateFsvSig()Z
    .locals 1

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist disableAdaptiveAuthCounterLock()Z
    .locals 1

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpAttestationVerifications()Z
    .locals 1

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableIntentMatchingFlags()Z
    .locals 1

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enforceIntentFilterMatch()Z
    .locals 1

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist extendEcmToAllSettings()Z
    .locals 1

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist extendVbChainToUpdatedApk()Z
    .locals 1

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist frpEnforcement()Z
    .locals 1

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist fsverityApi()Z
    .locals 1

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist internalLogEventListener()Z
    .locals 1

    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist keyinfoUnlockedDeviceRequired()Z
    .locals 1

    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist keystoreGrantApi()Z
    .locals 1

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist mgf1DigestSetterV2()Z
    .locals 1

    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist preventIntentRedirect()Z
    .locals 1

    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist preventIntentRedirectAbortOrThrowException()Z
    .locals 1

    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist preventIntentRedirectCollectNestedKeysOnServerIfNotCollected()Z
    .locals 1

    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist preventIntentRedirectShowToast()Z
    .locals 1

    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist preventIntentRedirectShowToastIfNestedKeysNotCollectedRW()Z
    .locals 1

    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist preventIntentRedirectThrowExceptionIfNestedKeysNotCollected()Z
    .locals 1

    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist protectDeviceConfigFlags()Z
    .locals 1

    .line 248
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist reportPrimaryAuthAttempts()Z
    .locals 1

    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist secureArrayZeroization()Z
    .locals 1

    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist secureLockdown()Z
    .locals 1

    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist shouldTrustManagerListenForPrimaryAuth()Z
    .locals 1

    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist significantPlaces()Z
    .locals 1

    .line 283
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist subscribeToKeyguardLockedStatePermPrivFlag()Z
    .locals 1

    .line 290
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist unlockedStorageApi()Z
    .locals 1

    .line 297
    const/4 v0, 0x0

    return v0
.end method
