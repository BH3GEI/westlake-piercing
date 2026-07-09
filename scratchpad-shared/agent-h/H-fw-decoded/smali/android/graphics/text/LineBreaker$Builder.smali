.class public final Landroid/graphics/text/LineBreaker$Builder;
.super Ljava/lang/Object;
.source "LineBreaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/text/LineBreaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBreakStrategy:I

.field private mHyphenationFrequency:I

.field private mIndents:[I

.field private mJustificationMode:I

.field private mUseBoundsForWidth:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/text/LineBreaker$Builder;->mBreakStrategy:I

    .line 196
    iput v0, p0, Landroid/graphics/text/LineBreaker$Builder;->mHyphenationFrequency:I

    .line 197
    iput v0, p0, Landroid/graphics/text/LineBreaker$Builder;->mJustificationMode:I

    .line 198
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/text/LineBreaker$Builder;->mIndents:[I

    .line 199
    iput-boolean v0, p0, Landroid/graphics/text/LineBreaker$Builder;->mUseBoundsForWidth:Z

    return-void
.end method


# virtual methods
.method public build()Landroid/graphics/text/LineBreaker;
    .locals 7

    .line 276
    new-instance v0, Landroid/graphics/text/LineBreaker;

    iget v1, p0, Landroid/graphics/text/LineBreaker$Builder;->mBreakStrategy:I

    iget v2, p0, Landroid/graphics/text/LineBreaker$Builder;->mHyphenationFrequency:I

    iget v3, p0, Landroid/graphics/text/LineBreaker$Builder;->mJustificationMode:I

    iget-object v4, p0, Landroid/graphics/text/LineBreaker$Builder;->mIndents:[I

    iget-boolean v5, p0, Landroid/graphics/text/LineBreaker$Builder;->mUseBoundsForWidth:Z

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/graphics/text/LineBreaker;-><init>(III[IZLandroid/graphics/text/LineBreaker-IA;)V

    return-object v0
.end method

.method public setBreakStrategy(I)Landroid/graphics/text/LineBreaker$Builder;
    .locals 0
    .param p1, "breakStrategy"    # I

    .line 208
    iput p1, p0, Landroid/graphics/text/LineBreaker$Builder;->mBreakStrategy:I

    .line 209
    return-object p0
.end method

.method public setHyphenationFrequency(I)Landroid/graphics/text/LineBreaker$Builder;
    .locals 0
    .param p1, "hyphenationFrequency"    # I

    .line 220
    iput p1, p0, Landroid/graphics/text/LineBreaker$Builder;->mHyphenationFrequency:I

    .line 221
    return-object p0
.end method

.method public setIndents([I)Landroid/graphics/text/LineBreaker$Builder;
    .locals 0
    .param p1, "indents"    # [I

    .line 244
    iput-object p1, p0, Landroid/graphics/text/LineBreaker$Builder;->mIndents:[I

    .line 245
    return-object p0
.end method

.method public setJustificationMode(I)Landroid/graphics/text/LineBreaker$Builder;
    .locals 0
    .param p1, "justificationMode"    # I

    .line 232
    iput p1, p0, Landroid/graphics/text/LineBreaker$Builder;->mJustificationMode:I

    .line 233
    return-object p0
.end method

.method public setUseBoundsForWidth(Z)Landroid/graphics/text/LineBreaker$Builder;
    .locals 0
    .param p1, "useBoundsForWidth"    # Z

    .line 266
    iput-boolean p1, p0, Landroid/graphics/text/LineBreaker$Builder;->mUseBoundsForWidth:Z

    .line 267
    return-object p0
.end method
