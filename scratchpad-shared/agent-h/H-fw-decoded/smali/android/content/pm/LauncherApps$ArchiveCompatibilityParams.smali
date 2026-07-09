.class public Landroid/content/pm/LauncherApps$ArchiveCompatibilityParams;
.super Ljava/lang/Object;
.source "LauncherApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/LauncherApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArchiveCompatibilityParams"
.end annotation


# instance fields
.field private mEnableIconOverlay:Z

.field private mEnableUnarchivalConfirmation:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2183
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/LauncherApps$ArchiveCompatibilityParams;->mEnableIconOverlay:Z

    .line 2185
    iput-boolean v0, p0, Landroid/content/pm/LauncherApps$ArchiveCompatibilityParams;->mEnableUnarchivalConfirmation:Z

    return-void
.end method


# virtual methods
.method public isEnableIconOverlay()Z
    .locals 1

    .line 2189
    iget-boolean v0, p0, Landroid/content/pm/LauncherApps$ArchiveCompatibilityParams;->mEnableIconOverlay:Z

    return v0
.end method

.method public isEnableUnarchivalConfirmation()Z
    .locals 1

    .line 2194
    iget-boolean v0, p0, Landroid/content/pm/LauncherApps$ArchiveCompatibilityParams;->mEnableUnarchivalConfirmation:Z

    return v0
.end method

.method public setEnableIconOverlay(Z)V
    .locals 0
    .param p1, "enableIconOverlay"    # Z

    .line 2205
    iput-boolean p1, p0, Landroid/content/pm/LauncherApps$ArchiveCompatibilityParams;->mEnableIconOverlay:Z

    .line 2206
    return-void
.end method

.method public setEnableUnarchivalConfirmation(Z)V
    .locals 0
    .param p1, "enableUnarchivalConfirmation"    # Z

    .line 2218
    iput-boolean p1, p0, Landroid/content/pm/LauncherApps$ArchiveCompatibilityParams;->mEnableUnarchivalConfirmation:Z

    .line 2219
    return-void
.end method
