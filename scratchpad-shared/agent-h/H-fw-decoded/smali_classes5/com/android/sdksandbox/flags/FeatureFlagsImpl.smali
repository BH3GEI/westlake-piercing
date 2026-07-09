.class public final Lcom/android/sdksandbox/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/sdksandbox/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist firstAndLastSdkSandboxUidPublic()Z
    .locals 1

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public greylist getEffectiveTargetSdkVersionApi()Z
    .locals 1

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public greylist sandboxActivitySdkBasedContext()Z
    .locals 1

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public greylist sandboxClientImportanceListener()Z
    .locals 1

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public greylist sdkSandboxDexVerifier()Z
    .locals 1

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public greylist sdkSandboxInstrumentationInfo()Z
    .locals 1

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public greylist sdkSandboxUidToAppUidApi()Z
    .locals 1

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public greylist sdkSandboxVerifySdkDexFiles()Z
    .locals 1

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public greylist selinuxInputSelector()Z
    .locals 1

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public greylist selinuxSdkSandboxAudit()Z
    .locals 1

    .line 73
    const/4 v0, 0x1

    return v0
.end method
