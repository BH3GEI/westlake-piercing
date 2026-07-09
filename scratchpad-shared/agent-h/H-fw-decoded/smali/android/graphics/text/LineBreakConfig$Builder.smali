.class public final Landroid/graphics/text/LineBreakConfig$Builder;
.super Ljava/lang/Object;
.source "LineBreakConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/text/LineBreakConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mHyphenation:I

.field private mLineBreakStyle:I

.field private mLineBreakWordStyle:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakStyle:I

    .line 279
    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakWordStyle:I

    .line 282
    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mHyphenation:I

    .line 288
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/text/LineBreakConfig$Builder;->reset(Landroid/graphics/text/LineBreakConfig;)Landroid/graphics/text/LineBreakConfig$Builder;

    .line 289
    return-void
.end method


# virtual methods
.method public build()Landroid/graphics/text/LineBreakConfig;
    .locals 4

    .line 424
    new-instance v0, Landroid/graphics/text/LineBreakConfig;

    iget v1, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakStyle:I

    iget v2, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakWordStyle:I

    iget v3, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mHyphenation:I

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/text/LineBreakConfig;-><init>(III)V

    return-object v0
.end method

.method public merge(Landroid/graphics/text/LineBreakConfig;)Landroid/graphics/text/LineBreakConfig$Builder;
    .locals 2
    .param p1, "config"    # Landroid/graphics/text/LineBreakConfig;

    .line 321
    invoke-static {p1}, Landroid/graphics/text/LineBreakConfig;->-$$Nest$fgetmLineBreakStyle(Landroid/graphics/text/LineBreakConfig;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 322
    invoke-static {p1}, Landroid/graphics/text/LineBreakConfig;->-$$Nest$fgetmLineBreakStyle(Landroid/graphics/text/LineBreakConfig;)I

    move-result v0

    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakStyle:I

    .line 324
    :cond_0
    invoke-static {p1}, Landroid/graphics/text/LineBreakConfig;->-$$Nest$fgetmLineBreakWordStyle(Landroid/graphics/text/LineBreakConfig;)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 325
    invoke-static {p1}, Landroid/graphics/text/LineBreakConfig;->-$$Nest$fgetmLineBreakWordStyle(Landroid/graphics/text/LineBreakConfig;)I

    move-result v0

    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakWordStyle:I

    .line 327
    :cond_1
    invoke-static {p1}, Landroid/graphics/text/LineBreakConfig;->-$$Nest$fgetmHyphenation(Landroid/graphics/text/LineBreakConfig;)I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 328
    invoke-static {p1}, Landroid/graphics/text/LineBreakConfig;->-$$Nest$fgetmHyphenation(Landroid/graphics/text/LineBreakConfig;)I

    move-result v0

    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mHyphenation:I

    .line 330
    :cond_2
    return-object p0
.end method

.method public reset(Landroid/graphics/text/LineBreakConfig;)Landroid/graphics/text/LineBreakConfig$Builder;
    .locals 1
    .param p1, "config"    # Landroid/graphics/text/LineBreakConfig;

    .line 342
    if-nez p1, :cond_0

    .line 343
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakStyle:I

    .line 344
    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakWordStyle:I

    .line 345
    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mHyphenation:I

    goto :goto_0

    .line 347
    :cond_0
    invoke-static {p1}, Landroid/graphics/text/LineBreakConfig;->-$$Nest$fgetmLineBreakStyle(Landroid/graphics/text/LineBreakConfig;)I

    move-result v0

    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakStyle:I

    .line 348
    invoke-static {p1}, Landroid/graphics/text/LineBreakConfig;->-$$Nest$fgetmLineBreakWordStyle(Landroid/graphics/text/LineBreakConfig;)I

    move-result v0

    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakWordStyle:I

    .line 349
    invoke-static {p1}, Landroid/graphics/text/LineBreakConfig;->-$$Nest$fgetmHyphenation(Landroid/graphics/text/LineBreakConfig;)I

    move-result v0

    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mHyphenation:I

    .line 351
    :goto_0
    return-object p0
.end method

.method public setHyphenation(I)Landroid/graphics/text/LineBreakConfig$Builder;
    .locals 0
    .param p1, "hyphenation"    # I

    .line 411
    iput p1, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mHyphenation:I

    .line 412
    return-object p0
.end method

.method public setLineBreakStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;
    .locals 0
    .param p1, "lineBreakStyle"    # I

    .line 370
    iput p1, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakStyle:I

    .line 371
    return-object p0
.end method

.method public setLineBreakWordStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;
    .locals 0
    .param p1, "lineBreakWordStyle"    # I

    .line 390
    iput p1, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakWordStyle:I

    .line 391
    return-object p0
.end method
