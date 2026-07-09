.class final Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierState;
.super Landroid/hardware/input/StickyModifierState;
.source "InputManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocalStickyModifierState"
.end annotation


# instance fields
.field private final blacklist mLockedModifierState:I

.field private final blacklist mModifierState:I


# direct methods
.method constructor blacklist <init>(II)V
    .locals 0
    .param p1, "modifierState"    # I
    .param p2, "lockedModifierState"    # I

    .line 979
    invoke-direct {p0}, Landroid/hardware/input/StickyModifierState;-><init>()V

    .line 980
    iput p1, p0, Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierState;->mModifierState:I

    .line 981
    iput p2, p0, Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierState;->mLockedModifierState:I

    .line 982
    return-void
.end method


# virtual methods
.method public blacklist isAltGrModifierLocked()Z
    .locals 1

    .line 1031
    iget v0, p0, Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierState;->mLockedModifierState:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isAltGrModifierOn()Z
    .locals 1

    .line 1026
    iget v0, p0, Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierState;->mModifierState:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isAltModifierLocked()Z
    .locals 1

    .line 1021
    iget v0, p0, Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierState;->mLockedModifierState:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isAltModifierOn()Z
    .locals 1

    .line 1016
    iget v0, p0, Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierState;->mModifierState:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isCtrlModifierLocked()Z
    .locals 1

    .line 1001
    iget v0, p0, Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierState;->mLockedModifierState:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isCtrlModifierOn()Z
    .locals 1

    .line 996
    iget v0, p0, Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierState;->mModifierState:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isMetaModifierLocked()Z
    .locals 2

    .line 1011
    iget v0, p0, Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierState;->mLockedModifierState:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isMetaModifierOn()Z
    .locals 2

    .line 1006
    iget v0, p0, Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierState;->mModifierState:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isShiftModifierLocked()Z
    .locals 2

    .line 991
    iget v0, p0, Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierState;->mLockedModifierState:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist isShiftModifierOn()Z
    .locals 2

    .line 986
    iget v0, p0, Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierState;->mModifierState:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
