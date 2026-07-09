.class public final synthetic Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/DoubleUnaryOperator;


# instance fields
.field public final synthetic f$0:D


# direct methods
.method public synthetic constructor <init>(D)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda0;->f$0:D

    return-void
.end method


# virtual methods
.method public final applyAsDouble(D)D
    .locals 2

    .line 0
    iget-wide v0, p0, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda0;->f$0:D

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/ColorSpace$Rgb;->lambda$new$8(DD)D

    move-result-wide p1

    return-wide p1
.end method
