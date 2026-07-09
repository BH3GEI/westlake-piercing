.class public interface abstract Landroid/content/pm/pkg/FrameworkPackageUserState;
.super Ljava/lang/Object;
.source "FrameworkPackageUserState.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT:Landroid/content/pm/pkg/FrameworkPackageUserState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Landroid/content/pm/pkg/FrameworkPackageUserStateDefault;

    invoke-direct {v0}, Landroid/content/pm/pkg/FrameworkPackageUserStateDefault;-><init>()V

    sput-object v0, Landroid/content/pm/pkg/FrameworkPackageUserState;->DEFAULT:Landroid/content/pm/pkg/FrameworkPackageUserState;

    return-void
.end method


# virtual methods
.method public abstract getAllOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;
.end method

.method public abstract getCeDataInode()J
.end method

.method public abstract getDisabledComponents()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDistractionFlags()I
.end method

.method public abstract getEnabledComponents()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEnabledState()I
.end method

.method public abstract getHarmfulAppWarning()Ljava/lang/String;
.end method

.method public abstract getInstallReason()I
.end method

.method public abstract getLastDisableAppCaller()Ljava/lang/String;
.end method

.method public abstract getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;
.end method

.method public abstract getSharedLibraryOverlayPaths()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/overlay/OverlayPaths;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSplashScreenTheme()Ljava/lang/String;
.end method

.method public abstract getUninstallReason()I
.end method

.method public abstract isComponentDisabled(Ljava/lang/String;)Z
.end method

.method public abstract isComponentEnabled(Ljava/lang/String;)Z
.end method

.method public abstract isHidden()Z
.end method

.method public abstract isInstalled()Z
.end method

.method public abstract isInstantApp()Z
.end method

.method public abstract isNotLaunched()Z
.end method

.method public abstract isStopped()Z
.end method

.method public abstract isSuspended()Z
.end method

.method public abstract isVirtualPreload()Z
.end method
