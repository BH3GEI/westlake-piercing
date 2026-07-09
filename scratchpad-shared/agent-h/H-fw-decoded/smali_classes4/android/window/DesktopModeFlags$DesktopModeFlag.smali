.class public Landroid/window/DesktopModeFlags$DesktopModeFlag;
.super Ljava/lang/Object;
.source "DesktopModeFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/DesktopModeFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DesktopModeFlag"
.end annotation


# instance fields
.field private final blacklist mFlagFunction:Ljava/util/function/BooleanSupplier;

.field private final blacklist mShouldOverrideByDevOption:Z


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/BooleanSupplier;Z)V
    .locals 0
    .param p1, "flagFunction"    # Ljava/util/function/BooleanSupplier;
    .param p2, "shouldOverrideByDevOption"    # Z

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Landroid/window/DesktopModeFlags$DesktopModeFlag;->mFlagFunction:Ljava/util/function/BooleanSupplier;

    .line 141
    iput-boolean p2, p0, Landroid/window/DesktopModeFlags$DesktopModeFlag;->mShouldOverrideByDevOption:Z

    .line 142
    return-void
.end method


# virtual methods
.method public blacklist isTrue()Z
    .locals 2

    .line 149
    iget-object v0, p0, Landroid/window/DesktopModeFlags$DesktopModeFlag;->mFlagFunction:Ljava/util/function/BooleanSupplier;

    iget-boolean v1, p0, Landroid/window/DesktopModeFlags$DesktopModeFlag;->mShouldOverrideByDevOption:Z

    invoke-static {v0, v1}, Landroid/window/DesktopModeFlags;->-$$Nest$smisFlagTrue(Ljava/util/function/BooleanSupplier;Z)Z

    move-result v0

    return v0
.end method
