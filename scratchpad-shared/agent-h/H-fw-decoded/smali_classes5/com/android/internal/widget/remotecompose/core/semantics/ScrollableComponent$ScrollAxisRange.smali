.class public Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;
.super Ljava/lang/Object;
.source "ScrollableComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollAxisRange"
.end annotation


# instance fields
.field private blacklist mCanScrollBackwards:Z

.field private blacklist mCanScrollForward:Z

.field private blacklist mMaxValue:F

.field private blacklist mValue:F


# direct methods
.method public constructor blacklist <init>(FFZZ)V
    .locals 0
    .param p1, "value"    # F
    .param p2, "maxValue"    # F
    .param p3, "canScrollForward"    # Z
    .param p4, "canScrollBackwards"    # Z

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;->mValue:F

    .line 86
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;->mMaxValue:F

    .line 87
    iput-boolean p3, p0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;->mCanScrollForward:Z

    .line 88
    iput-boolean p4, p0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;->mCanScrollBackwards:Z

    .line 89
    return-void
.end method


# virtual methods
.method public blacklist canScrollBackwards()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;->mCanScrollBackwards:Z

    return v0
.end method

.method public blacklist canScrollForward()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;->mCanScrollForward:Z

    return v0
.end method

.method public blacklist getMaxValue()F
    .locals 1

    .line 98
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;->mMaxValue:F

    return v0
.end method

.method public blacklist getmValue()F
    .locals 1

    .line 93
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;->mValue:F

    return v0
.end method
