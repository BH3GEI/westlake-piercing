.class public final Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist enableAccessoryStreamApi()Z
    .locals 1

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableInputPowerLimitedWarning()Z
    .locals 1

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableInterfaceNameDeviceFilter()Z
    .locals 1

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableIsModeChangeSupportedApi()Z
    .locals 1

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableIsPdCompliantApi()Z
    .locals 1

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableReportUsbDataComplianceWarning()Z
    .locals 1

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableUdcSysfsUsbStateUpdate()Z
    .locals 1

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableUsbDataComplianceWarning()Z
    .locals 1

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableUsbDataSignalStaking()Z
    .locals 1

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableUsbDataSignalStakingInternal()Z
    .locals 1

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableUsbSysfsMidiIdentification()Z
    .locals 1

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist exposeUsbSpeedSystemApi()Z
    .locals 1

    .line 87
    const/4 v0, 0x1

    return v0
.end method
