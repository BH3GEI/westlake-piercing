.class public interface abstract Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;
.super Ljava/lang/Object;
.source "InsetsAnimationControlRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsAnimationControlRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SurfaceParamsApplier"
.end annotation


# static fields
.field public static final blacklist DEFAULT:Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 113
    new-instance v0, Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;->DEFAULT:Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

    return-void
.end method

.method public static synthetic blacklist lambda$static$0([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .locals 4
    .param p0, "params"    # [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    .line 114
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 115
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 116
    aget-object v2, p0, v1

    const/16 v3, 0x9

    new-array v3, v3, [F

    invoke-static {v0, v2, v3}, Landroid/view/SyncRtSurfaceTransactionApplier;->applyParams(Landroid/view/SurfaceControl$Transaction;Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;[F)V

    .line 115
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 118
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 119
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 120
    return-void
.end method


# virtual methods
.method public varargs abstract blacklist applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
.end method
