.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field blacklist mHeight:F

.field blacklist mWidth:F


# direct methods
.method public constructor blacklist <init>(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->mWidth:F

    .line 25
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->mHeight:F

    .line 26
    return-void
.end method


# virtual methods
.method public blacklist getHeight()F
    .locals 1

    .line 41
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->mHeight:F

    return v0
.end method

.method public blacklist getWidth()F
    .locals 1

    .line 37
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->mWidth:F

    return v0
.end method

.method public blacklist setHeight(F)V
    .locals 0
    .param p1, "value"    # F

    .line 33
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->mHeight:F

    .line 34
    return-void
.end method

.method public blacklist setWidth(F)V
    .locals 0
    .param p1, "value"    # F

    .line 29
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->mWidth:F

    .line 30
    return-void
.end method
