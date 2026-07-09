.class Landroid/graphics/SurfaceTexture$SetFrameRateArgs;
.super Ljava/lang/Object;
.source "SurfaceTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/SurfaceTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetFrameRateArgs"
.end annotation


# instance fields
.field final mChangeFrameRateStrategy:I

.field final mCompatibility:I

.field final mFrameRate:F


# direct methods
.method constructor <init>(FII)V
    .locals 0
    .param p1, "frameRate"    # F
    .param p2, "compatibility"    # I
    .param p3, "changeFrameRateStrategy"    # I

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput p1, p0, Landroid/graphics/SurfaceTexture$SetFrameRateArgs;->mFrameRate:F

    .line 251
    iput p2, p0, Landroid/graphics/SurfaceTexture$SetFrameRateArgs;->mCompatibility:I

    .line 252
    iput p3, p0, Landroid/graphics/SurfaceTexture$SetFrameRateArgs;->mChangeFrameRateStrategy:I

    .line 253
    return-void
.end method
