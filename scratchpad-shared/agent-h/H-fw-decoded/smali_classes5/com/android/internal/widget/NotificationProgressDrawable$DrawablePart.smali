.class public abstract Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;
.super Ljava/lang/Object;
.source "NotificationProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/NotificationProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DrawablePart"
.end annotation


# instance fields
.field protected final blacklist mColor:I

.field protected blacklist mEnd:F

.field protected blacklist mStart:F


# direct methods
.method protected constructor blacklist <init>(FFI)V
    .locals 0
    .param p1, "start"    # F
    .param p2, "end"    # F
    .param p3, "color"    # I

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    iput p1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mStart:F

    .line 435
    iput p2, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mEnd:F

    .line 436
    iput p3, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mColor:I

    .line 437
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 467
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 469
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 471
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;

    .line 472
    .local v2, "that":Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;
    iget v3, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mStart:F

    iget v4, v2, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mStart:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_2

    return v1

    .line 473
    :cond_2
    iget v3, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mEnd:F

    iget v4, v2, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mEnd:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_3

    return v1

    .line 474
    :cond_3
    iget v3, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mColor:I

    iget v4, v2, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mColor:I

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    return v0

    .line 469
    .end local v2    # "that":Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;
    :cond_5
    :goto_1
    return v1
.end method

.method public blacklist getColor()I
    .locals 1

    .line 461
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mColor:I

    return v0
.end method

.method public blacklist getEnd()F
    .locals 1

    .line 448
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mEnd:F

    return v0
.end method

.method public blacklist getStart()F
    .locals 1

    .line 440
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mStart:F

    return v0
.end method

.method public blacklist getWidth()F
    .locals 2

    .line 457
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mEnd:F

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mStart:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 479
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mStart:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mEnd:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist setEnd(F)V
    .locals 0
    .param p1, "end"    # F

    .line 452
    iput p1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mEnd:F

    .line 453
    return-void
.end method

.method public blacklist setStart(F)V
    .locals 0
    .param p1, "start"    # F

    .line 444
    iput p1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mStart:F

    .line 445
    return-void
.end method
