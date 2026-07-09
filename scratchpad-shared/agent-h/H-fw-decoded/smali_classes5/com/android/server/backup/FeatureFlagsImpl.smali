.class public final Lcom/android/server/backup/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/server/backup/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist enableClearPipeAfterRestoreFile()Z
    .locals 1

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableIncreaseDatatypesForAgentLogging()Z
    .locals 1

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableIncreasedBmmLoggingForRestoreAtInstall()Z
    .locals 1

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableMaxSizeWritesToPipes()Z
    .locals 1

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableMetricsSettingsBackupAgents()Z
    .locals 1

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableMetricsSystemBackupAgents()Z
    .locals 1

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableReadAllExternalStorageFiles()Z
    .locals 1

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableRestrictedModeChanges()Z
    .locals 1

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableSkippingRestoreLaunchedApps()Z
    .locals 1

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableVToURestoreForSystemComponentsInAllowlist()Z
    .locals 1

    .line 73
    const/4 v0, 0x0

    return v0
.end method
