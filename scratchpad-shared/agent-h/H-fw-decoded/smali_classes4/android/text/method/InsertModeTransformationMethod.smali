.class public Landroid/text/method/InsertModeTransformationMethod;
.super Ljava/lang/Object;
.source "InsertModeTransformationMethod.java"

# interfaces
.implements Landroid/text/method/TransformationMethod;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/InsertModeTransformationMethod$SingleLinePlaceholderSpan;,
        Landroid/text/method/InsertModeTransformationMethod$TransformedText;
    }
.end annotation


# instance fields
.field private blacklist mEnd:I

.field private final blacklist mOldTransformationMethod:Landroid/text/method/TransformationMethod;

.field private final blacklist mSingleLine:Z

.field private blacklist mStart:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I
    .locals 0

    iget p0, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStart(Landroid/text/method/InsertModeTransformationMethod;)I
    .locals 0

    iget p0, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smintersect(IIII)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/text/method/InsertModeTransformationMethod;->intersect(IIII)Z

    move-result p0

    return p0
.end method

.method private constructor blacklist <init>(IIZLandroid/text/method/TransformationMethod;)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "singleLine"    # Z
    .param p4, "oldTransformationMethod"    # Landroid/text/method/TransformationMethod;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput p1, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    .line 92
    iput p2, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    .line 93
    iput-boolean p3, p0, Landroid/text/method/InsertModeTransformationMethod;->mSingleLine:Z

    .line 94
    iput-object p4, p0, Landroid/text/method/InsertModeTransformationMethod;->mOldTransformationMethod:Landroid/text/method/TransformationMethod;

    .line 95
    return-void
.end method

.method public constructor blacklist <init>(IZLandroid/text/method/TransformationMethod;)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "singleLine"    # Z
    .param p3, "oldTransformationMethod"    # Landroid/text/method/TransformationMethod;

    .line 86
    invoke-direct {p0, p1, p1, p2, p3}, Landroid/text/method/InsertModeTransformationMethod;-><init>(IIZLandroid/text/method/TransformationMethod;)V

    .line 87
    return-void
.end method

.method private blacklist getPlaceholderText(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .line 119
    iget-boolean v0, p0, Landroid/text/method/InsertModeTransformationMethod;->mSingleLine:Z

    if-nez v0, :cond_0

    .line 120
    const-string v0, "\n\n"

    return-object v0

    .line 122
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    const-string/jumbo v1, "\ufffd"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 123
    .local v0, "singleLinePlaceholder":Landroid/text/SpannableString;
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 124
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    nop

    .line 125
    const/4 v2, 0x1

    const/high16 v3, 0x42d80000    # 108.0f

    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-double v3, v3

    .line 124
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 127
    .local v3, "widthPx":I
    new-instance v4, Landroid/text/method/InsertModeTransformationMethod$SingleLinePlaceholderSpan;

    invoke-direct {v4, v3}, Landroid/text/method/InsertModeTransformationMethod$SingleLinePlaceholderSpan;-><init>(I)V

    const/4 v5, 0x0

    const/16 v6, 0x21

    invoke-virtual {v0, v4, v5, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 129
    return-object v0
.end method

.method private static blacklist intersect(IIII)Z
    .locals 1
    .param p0, "s1"    # I
    .param p1, "e1"    # I
    .param p2, "s2"    # I
    .param p3, "e2"    # I

    .line 497
    const/4 v0, 0x0

    if-le p0, p3, :cond_0

    return v0

    .line 498
    :cond_0
    if-ge p1, p2, :cond_1

    return v0

    .line 499
    :cond_1
    if-eq p0, p1, :cond_3

    if-eq p2, p3, :cond_3

    .line 500
    if-ne p0, p3, :cond_2

    return v0

    .line 501
    :cond_2
    if-ne p1, p2, :cond_3

    return v0

    .line 503
    :cond_3
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .line 204
    return-void
.end method

.method public whitelist beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 160
    return-void
.end method

.method public blacklist getOldTransformationMethod()Landroid/text/method/TransformationMethod;
    .locals 1

    .line 115
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod;->mOldTransformationMethod:Landroid/text/method/TransformationMethod;

    return-object v0
.end method

.method public whitelist getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "view"    # Landroid/view/View;

    .line 135
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod;->mOldTransformationMethod:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod;->mOldTransformationMethod:Landroid/text/method/TransformationMethod;

    invoke-interface {v0, p1, p2}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 137
    .local v0, "charSequence":Ljava/lang/CharSequence;
    instance-of v1, p1, Landroid/text/Spannable;

    if-eqz v1, :cond_1

    .line 138
    move-object v1, p1

    check-cast v1, Landroid/text/Spannable;

    .line 139
    .local v1, "spannable":Landroid/text/Spannable;
    iget-object v2, p0, Landroid/text/method/InsertModeTransformationMethod;->mOldTransformationMethod:Landroid/text/method/TransformationMethod;

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v3

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-interface {v1, v2, v5, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 141
    .end local v1    # "spannable":Landroid/text/Spannable;
    goto :goto_0

    .line 143
    .end local v0    # "charSequence":Ljava/lang/CharSequence;
    :cond_0
    move-object v0, p1

    .line 146
    .restart local v0    # "charSequence":Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Landroid/text/method/InsertModeTransformationMethod;->getPlaceholderText(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 147
    .local v1, "placeholderText":Ljava/lang/CharSequence;
    new-instance v2, Landroid/text/method/InsertModeTransformationMethod$TransformedText;

    invoke-direct {v2, p0, v0, v1}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;-><init>(Landroid/text/method/InsertModeTransformationMethod;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v2
.end method

.method public whitelist onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sourceText"    # Ljava/lang/CharSequence;
    .param p3, "focused"    # Z
    .param p4, "direction"    # I
    .param p5, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 153
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod;->mOldTransformationMethod:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_0

    .line 154
    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod;->mOldTransformationMethod:Landroid/text/method/TransformationMethod;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "sourceText":Ljava/lang/CharSequence;
    .end local p3    # "focused":Z
    .end local p4    # "direction":I
    .end local p5    # "previouslyFocusedRect":Landroid/graphics/Rect;
    .local v2, "view":Landroid/view/View;
    .local v3, "sourceText":Ljava/lang/CharSequence;
    .local v4, "focused":Z
    .local v5, "direction":I
    .local v6, "previouslyFocusedRect":Landroid/graphics/Rect;
    invoke-interface/range {v1 .. v6}, Landroid/text/method/TransformationMethod;->onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V

    goto :goto_0

    .line 153
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "sourceText":Ljava/lang/CharSequence;
    .end local v4    # "focused":Z
    .end local v5    # "direction":I
    .end local v6    # "previouslyFocusedRect":Landroid/graphics/Rect;
    .restart local p1    # "view":Landroid/view/View;
    .restart local p2    # "sourceText":Ljava/lang/CharSequence;
    .restart local p3    # "focused":Z
    .restart local p4    # "direction":I
    .restart local p5    # "previouslyFocusedRect":Landroid/graphics/Rect;
    :cond_0
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 157
    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "sourceText":Ljava/lang/CharSequence;
    .end local p3    # "focused":Z
    .end local p4    # "direction":I
    .end local p5    # "previouslyFocusedRect":Landroid/graphics/Rect;
    .restart local v2    # "view":Landroid/view/View;
    .restart local v3    # "sourceText":Ljava/lang/CharSequence;
    .restart local v4    # "focused":Z
    .restart local v5    # "direction":I
    .restart local v6    # "previouslyFocusedRect":Landroid/graphics/Rect;
    :goto_0
    return-void
.end method

.method public whitelist onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 165
    iget v0, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    if-le p2, v0, :cond_0

    return-void

    .line 166
    :cond_0
    sub-int v0, p4, p3

    .line 170
    .local v0, "diff":I
    iget v1, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    if-ge p2, v1, :cond_3

    .line 171
    add-int v1, p2, p3

    iget v2, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    if-gt v1, v2, :cond_1

    .line 173
    iget v1, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    goto :goto_0

    .line 175
    :cond_1
    invoke-static {}, Lcom/android/text/flags/Flags;->insertModeHighlightRange()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    iget v1, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    goto :goto_0

    .line 182
    :cond_2
    iput p2, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    .line 187
    :cond_3
    :goto_0
    add-int v1, p2, p3

    iget v2, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    if-gt v1, v2, :cond_4

    .line 189
    iget v1, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    goto :goto_1

    .line 190
    :cond_4
    iget v1, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    if-ge p2, v1, :cond_6

    .line 191
    invoke-static {}, Lcom/android/text/flags/Flags;->insertModeHighlightRange()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 194
    iget v1, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    goto :goto_1

    .line 198
    :cond_5
    add-int v1, p2, p4

    iput v1, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    .line 201
    :cond_6
    :goto_1
    return-void
.end method

.method public blacklist update(Landroid/text/method/TransformationMethod;Z)Landroid/text/method/InsertModeTransformationMethod;
    .locals 3
    .param p1, "oldTransformationMethod"    # Landroid/text/method/TransformationMethod;
    .param p2, "singleLine"    # Z

    .line 110
    new-instance v0, Landroid/text/method/InsertModeTransformationMethod;

    iget v1, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    iget v2, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    invoke-direct {v0, v1, v2, p2, p1}, Landroid/text/method/InsertModeTransformationMethod;-><init>(IIZLandroid/text/method/TransformationMethod;)V

    return-object v0
.end method
