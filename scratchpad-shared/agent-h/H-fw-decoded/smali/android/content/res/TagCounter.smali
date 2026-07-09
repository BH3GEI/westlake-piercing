.class public Landroid/content/res/TagCounter;
.super Ljava/lang/Object;
.source "TagCounter.java"


# static fields
.field private static final DEFAULT_MAX_COUNT:I = 0x200


# instance fields
.field private mCount:I

.field private mMaxValue:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v0, 0x200

    iput v0, p0, Landroid/content/res/TagCounter;->mMaxValue:I

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/TagCounter;->mCount:I

    .line 36
    return-void
.end method


# virtual methods
.method increment()V
    .locals 1

    .line 44
    iget v0, p0, Landroid/content/res/TagCounter;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/res/TagCounter;->mCount:I

    .line 45
    return-void
.end method

.method public isValid()Z
    .locals 2

    .line 48
    iget v0, p0, Landroid/content/res/TagCounter;->mCount:I

    iget v1, p0, Landroid/content/res/TagCounter;->mMaxValue:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method reset(I)V
    .locals 1
    .param p1, "maxValue"    # I

    .line 39
    iput p1, p0, Landroid/content/res/TagCounter;->mMaxValue:I

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/TagCounter;->mCount:I

    .line 41
    return-void
.end method
