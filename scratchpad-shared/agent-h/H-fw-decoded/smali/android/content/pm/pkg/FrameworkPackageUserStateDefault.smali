.class Landroid/content/pm/pkg/FrameworkPackageUserStateDefault;
.super Ljava/lang/Object;
.source "FrameworkPackageUserStateDefault.java"

# interfaces
.implements Landroid/content/pm/pkg/FrameworkPackageUserState;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;
    .locals 1

    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCeDataInode()J
    .locals 2

    .line 75
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDisabledComponents()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDistractionFlags()I
    .locals 1

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public getEnabledComponents()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledState()I
    .locals 1

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public getHarmfulAppWarning()Ljava/lang/String;
    .locals 1

    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInstallReason()I
    .locals 1

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public getLastDisableAppCaller()Ljava/lang/String;
    .locals 1

    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;
    .locals 1

    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedLibraryOverlayPaths()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/overlay/OverlayPaths;",
            ">;"
        }
    .end annotation

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSplashScreenTheme()Ljava/lang/String;
    .locals 1

    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUninstallReason()I
    .locals 1

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public isComponentDisabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "componentName"    # Ljava/lang/String;

    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public isComponentEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "componentName"    # Ljava/lang/String;

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public isInstalled()Z
    .locals 1

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public isInstantApp()Z
    .locals 1

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public isNotLaunched()Z
    .locals 1

    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public isStopped()Z
    .locals 1

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public isSuspended()Z
    .locals 1

    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public isVirtualPreload()Z
    .locals 1

    .line 128
    const/4 v0, 0x0

    return v0
.end method
