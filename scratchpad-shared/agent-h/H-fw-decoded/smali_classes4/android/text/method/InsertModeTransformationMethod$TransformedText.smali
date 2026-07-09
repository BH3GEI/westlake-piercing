.class public Landroid/text/method/InsertModeTransformationMethod$TransformedText;
.super Ljava/lang/Object;
.source "InsertModeTransformationMethod.java"

# interfaces
.implements Landroid/text/method/OffsetMapping;
.implements Landroid/text/Spanned;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/InsertModeTransformationMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransformedText"
.end annotation


# instance fields
.field private final blacklist mOriginal:Ljava/lang/CharSequence;

.field private final blacklist mPlaceholder:Ljava/lang/CharSequence;

.field private final blacklist mSpannedOriginal:Landroid/text/Spanned;

.field private final blacklist mSpannedPlaceholder:Landroid/text/Spanned;

.field final synthetic blacklist this$0:Landroid/text/method/InsertModeTransformationMethod;


# direct methods
.method public static synthetic blacklist $r8$lambda$phgDzRUXrz8jvNiuhYcA1J1pMBE(Landroid/text/method/InsertModeTransformationMethod$TransformedText;IILjava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->lambda$getSpans$1(IILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method constructor blacklist <init>(Landroid/text/method/InsertModeTransformationMethod;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "this$0"    # Landroid/text/method/InsertModeTransformationMethod;
    .param p2, "original"    # Ljava/lang/CharSequence;
    .param p3, "placeholder"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 215
    iput-object p1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p2, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mOriginal:Ljava/lang/CharSequence;

    .line 217
    instance-of v0, p2, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 218
    move-object v0, p2

    check-cast v0, Landroid/text/Spanned;

    iput-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedOriginal:Landroid/text/Spanned;

    goto :goto_0

    .line 220
    :cond_0
    iput-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedOriginal:Landroid/text/Spanned;

    .line 222
    :goto_0
    iput-object p3, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    .line 223
    instance-of v0, p3, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    .line 224
    move-object v0, p3

    check-cast v0, Landroid/text/Spanned;

    iput-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedPlaceholder:Landroid/text/Spanned;

    goto :goto_1

    .line 226
    :cond_1
    iput-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedPlaceholder:Landroid/text/Spanned;

    .line 228
    :goto_1
    return-void
.end method

.method static synthetic blacklist lambda$getSpans$0(Ljava/lang/Class;I)[Ljava/lang/Object;
    .locals 1
    .param p0, "type"    # Ljava/lang/Class;
    .param p1, "size"    # I

    .line 361
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private synthetic blacklist lambda$getSpans$1(IILjava/lang/Object;)Z
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "span"    # Ljava/lang/Object;

    .line 362
    invoke-virtual {p0, p3}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p3}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1, p1, p2}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$smintersect(IIII)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist test-api charAt(I)C
    .locals 3
    .param p1, "index"    # I

    .line 277
    invoke-virtual {p0}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "index"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 278
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v0}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 279
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mOriginal:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0

    .line 281
    :cond_0
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v0}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v0

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    .line 282
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v1}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0

    .line 284
    :cond_1
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mOriginal:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public blacklist getHighlightEnd()I
    .locals 2

    .line 469
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v0}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v0

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist getHighlightStart()I
    .locals 1

    .line 462
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v0}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmStart(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v0

    return v0
.end method

.method public whitelist getSpanEnd(Ljava/lang/Object;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/Object;

    .line 406
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedOriginal:Landroid/text/Spanned;

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedOriginal:Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 408
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 409
    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v1}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 410
    return v0

    .line 412
    :cond_0
    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v1, v0

    return v1

    .line 417
    .end local v0    # "index":I
    :cond_1
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedPlaceholder:Landroid/text/Spanned;

    if-eqz v0, :cond_2

    .line 418
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedPlaceholder:Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 419
    .restart local v0    # "index":I
    if-ltz v0, :cond_2

    .line 421
    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v1}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v1

    add-int/2addr v1, v0

    return v1

    .line 424
    .end local v0    # "index":I
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getSpanFlags(Ljava/lang/Object;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .line 429
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedOriginal:Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedOriginal:Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 431
    .local v0, "flags":I
    if-eqz v0, :cond_0

    .line 432
    return v0

    .line 435
    .end local v0    # "flags":I
    :cond_0
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedPlaceholder:Landroid/text/Spanned;

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedPlaceholder:Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 438
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSpanStart(Ljava/lang/Object;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/Object;

    .line 380
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedOriginal:Landroid/text/Spanned;

    if-eqz v0, :cond_2

    .line 381
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedOriginal:Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 382
    .local v0, "index":I
    if-ltz v0, :cond_2

    .line 385
    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v1}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v1}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedOriginal:Landroid/text/Spanned;

    .line 386
    invoke-interface {v1, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 389
    :cond_0
    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v1, v0

    return v1

    .line 387
    :cond_1
    :goto_0
    return v0

    .line 394
    .end local v0    # "index":I
    :cond_2
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedPlaceholder:Landroid/text/Spanned;

    if-eqz v0, :cond_3

    .line 395
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedPlaceholder:Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 396
    .restart local v0    # "index":I
    if-ltz v0, :cond_3

    .line 398
    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v1}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v1

    add-int/2addr v1, v0

    return v1

    .line 401
    .end local v0    # "index":I
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 323
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-ge p2, p1, :cond_0

    .line 324
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 327
    :cond_0
    const/4 v0, 0x0

    .line 328
    .local v0, "spansOriginal":[Ljava/lang/Object;, "[TT;"
    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedOriginal:Landroid/text/Spanned;

    if-eqz v1, :cond_1

    .line 329
    nop

    .line 330
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->transformedToOriginal(II)I

    move-result v2

    .line 331
    .local v2, "originalStart":I
    nop

    .line 332
    invoke-virtual {p0, p2, v1}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->transformedToOriginal(II)I

    move-result v1

    .line 359
    .local v1, "originalEnd":I
    iget-object v3, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedOriginal:Landroid/text/Spanned;

    invoke-interface {v3, v2, v1, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 360
    new-instance v3, Landroid/text/method/InsertModeTransformationMethod$TransformedText$$ExternalSyntheticLambda0;

    invoke-direct {v3, p3}, Landroid/text/method/InsertModeTransformationMethod$TransformedText$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    new-instance v4, Landroid/text/method/InsertModeTransformationMethod$TransformedText$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p1, p2}, Landroid/text/method/InsertModeTransformationMethod$TransformedText$$ExternalSyntheticLambda1;-><init>(Landroid/text/method/InsertModeTransformationMethod$TransformedText;II)V

    invoke-static {v0, v3, v4}, Lcom/android/internal/util/ArrayUtils;->filter([Ljava/lang/Object;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;)[Ljava/lang/Object;

    move-result-object v0

    .line 365
    .end local v1    # "originalEnd":I
    .end local v2    # "originalStart":I
    :cond_1
    const/4 v1, 0x0

    .line 366
    .local v1, "spansPlaceholder":[Ljava/lang/Object;, "[TT;"
    iget-object v2, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedPlaceholder:Landroid/text/Spanned;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v2}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v2

    iget-object v3, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v3}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v3

    iget-object v4, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    .line 367
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {p1, p2, v2, v3}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$smintersect(IIII)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 368
    iget-object v2, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v2}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v2

    sub-int v2, p1, v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 369
    .local v2, "placeholderStart":I
    iget-object v3, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v3}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v3

    sub-int v3, p2, v3

    iget-object v4, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 370
    .local v3, "placeholderEnd":I
    iget-object v4, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedPlaceholder:Landroid/text/Spanned;

    .line 371
    invoke-interface {v4, v2, v3, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 375
    .end local v2    # "placeholderStart":I
    .end local v3    # "placeholderEnd":I
    :cond_2
    filled-new-array {v0, v1}, [[Ljava/lang/Object;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/android/internal/util/ArrayUtils;->concat(Ljava/lang/Class;[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api length()I
    .locals 2

    .line 272
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mOriginal:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist nextSpanTransition(IILjava/lang/Class;)I
    .locals 4
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "type"    # Ljava/lang/Class;

    .line 443
    if-gt p2, p1, :cond_0

    return p2

    .line 444
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 445
    .local v0, "spans":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 446
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 447
    .local v2, "spanStart":I
    aget-object v3, v0, v1

    invoke-virtual {p0, v3}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 448
    .local v3, "spanEnd":I
    if-ge p1, v2, :cond_1

    if-ge v2, p2, :cond_1

    .line 449
    move p2, v2

    .line 451
    :cond_1
    if-ge p1, v3, :cond_2

    if-ge v3, p2, :cond_2

    .line 452
    move p2, v3

    .line 445
    .end local v2    # "spanStart":I
    .end local v3    # "spanEnd":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 455
    .end local v1    # "i":I
    :cond_3
    return p2
.end method

.method public blacklist originalToTransformed(II)I
    .locals 3
    .param p1, "offset"    # I
    .param p2, "strategy"    # I

    .line 232
    if-gez p1, :cond_0

    return p1

    .line 233
    :cond_0
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mOriginal:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-string v1, "offset"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 234
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v0}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 237
    return p1

    .line 239
    :cond_1
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v0}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 240
    return p1

    .line 242
    :cond_2
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public blacklist originalToTransformed(Landroid/text/method/OffsetMapping$TextUpdate;)V
    .locals 2
    .param p1, "textUpdate"    # Landroid/text/method/OffsetMapping$TextUpdate;

    .line 261
    iget v0, p1, Landroid/text/method/OffsetMapping$TextUpdate;->where:I

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v1}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 262
    iget v0, p1, Landroid/text/method/OffsetMapping$TextUpdate;->where:I

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/text/method/OffsetMapping$TextUpdate;->where:I

    goto :goto_0

    .line 263
    :cond_0
    iget v0, p1, Landroid/text/method/OffsetMapping$TextUpdate;->where:I

    iget v1, p1, Landroid/text/method/OffsetMapping$TextUpdate;->before:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v1}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 265
    iget v0, p1, Landroid/text/method/OffsetMapping$TextUpdate;->before:I

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/text/method/OffsetMapping$TextUpdate;->before:I

    .line 266
    iget v0, p1, Landroid/text/method/OffsetMapping$TextUpdate;->after:I

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/text/method/OffsetMapping$TextUpdate;->after:I

    .line 268
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 289
    if-lt p2, p1, :cond_1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->length()I

    move-result v0

    if-gt p2, v0, :cond_1

    .line 292
    if-ne p1, p2, :cond_0

    .line 293
    const-string v0, ""

    return-object v0

    .line 296
    :cond_0
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 298
    .local v0, "placeholderLength":I
    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v1}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 299
    .local v1, "seg1Start":I
    iget-object v2, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v2}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 301
    .local v2, "seg1End":I
    iget-object v3, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v3}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v3

    sub-int v3, p1, v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result v3

    .line 302
    .local v3, "seg2Start":I
    iget-object v5, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v5}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v5

    sub-int v5, p2, v5

    invoke-static {v5, v4, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result v5

    .line 304
    .local v5, "seg2End":I
    sub-int v6, p1, v0

    iget-object v7, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v7}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 305
    .local v6, "seg3Start":I
    sub-int v7, p2, v0

    iget-object v8, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v8}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 307
    .local v7, "seg3End":I
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/CharSequence;

    iget-object v9, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mOriginal:Ljava/lang/CharSequence;

    .line 308
    invoke-interface {v9, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v8, v4

    iget-object v4, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    .line 309
    invoke-interface {v4, v3, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v9, 0x1

    aput-object v4, v8, v9

    iget-object v4, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mOriginal:Ljava/lang/CharSequence;

    .line 310
    invoke-interface {v4, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v9, 0x2

    aput-object v4, v8, v9

    .line 307
    invoke-static {v8}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4

    .line 290
    .end local v0    # "placeholderLength":I
    .end local v1    # "seg1Start":I
    .end local v2    # "seg1End":I
    .end local v3    # "seg2Start":I
    .end local v5    # "seg2End":I
    .end local v6    # "seg3Start":I
    .end local v7    # "seg3End":I
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mOriginal:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v2}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mOriginal:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v2}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v2

    iget-object v3, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mOriginal:Ljava/lang/CharSequence;

    .line 317
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {v1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    return-object v0
.end method

.method public blacklist transformedToOriginal(II)I
    .locals 3
    .param p1, "offset"    # I
    .param p2, "strategy"    # I

    .line 247
    if-gez p1, :cond_0

    return p1

    .line 248
    :cond_0
    invoke-virtual {p0}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->length()I

    move-result v0

    const-string v1, "offset"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 252
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v0}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v0

    if-ge p1, v0, :cond_1

    return p1

    .line 253
    :cond_1
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v0}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v0

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_2

    .line 254
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v0}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v0

    return v0

    .line 256
    :cond_2
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method
