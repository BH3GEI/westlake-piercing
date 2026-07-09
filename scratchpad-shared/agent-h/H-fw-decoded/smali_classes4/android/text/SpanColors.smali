.class public Landroid/text/SpanColors;
.super Ljava/lang/Object;
.source "SpanColors.java"


# static fields
.field public static final blacklist NO_COLOR_FOUND:I


# instance fields
.field private final blacklist mCharacterStyleSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/SpanColors;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    .line 37
    return-void
.end method

.method private blacklist calculateFinalColor(Landroid/text/TextPaint;)I
    .locals 1
    .param p1, "workPaint"    # Landroid/text/TextPaint;

    .line 87
    invoke-virtual {p1}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist getColorAt(I)I
    .locals 4
    .param p1, "index"    # I

    .line 68
    const/4 v0, 0x0

    .line 71
    .local v0, "finalColor":I
    iget-object v1, p0, Landroid/text/SpanColors;->mWorkPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 72
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    iget-object v2, p0, Landroid/text/SpanColors;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v2, v2, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v1, v2, :cond_1

    .line 73
    iget-object v2, p0, Landroid/text/SpanColors;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanStarts:[I

    aget v2, v2, v1

    if-lt p1, v2, :cond_0

    iget-object v2, p0, Landroid/text/SpanColors;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanEnds:[I

    aget v2, v2, v1

    if-gt p1, v2, :cond_0

    .line 75
    iget-object v2, p0, Landroid/text/SpanColors;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v2, [Landroid/text/style/CharacterStyle;

    aget-object v2, v2, v1

    .line 76
    .local v2, "span":Landroid/text/style/CharacterStyle;
    iget-object v3, p0, Landroid/text/SpanColors;->mWorkPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    .line 78
    iget-object v3, p0, Landroid/text/SpanColors;->mWorkPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v3}, Landroid/text/SpanColors;->calculateFinalColor(Landroid/text/TextPaint;)I

    move-result v0

    .line 72
    .end local v2    # "span":Landroid/text/style/CharacterStyle;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    .end local v1    # "k":I
    :cond_1
    return v0
.end method

.method public blacklist init(Landroid/text/TextPaint;Landroid/text/Spanned;II)V
    .locals 1
    .param p1, "workPaint"    # Landroid/text/TextPaint;
    .param p2, "spanned"    # Landroid/text/Spanned;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 50
    iput-object p1, p0, Landroid/text/SpanColors;->mWorkPaint:Landroid/text/TextPaint;

    .line 51
    iget-object v0, p0, Landroid/text/SpanColors;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v0, p2, p3, p4}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 52
    return-void
.end method

.method public blacklist recycle()V
    .locals 1

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/SpanColors;->mWorkPaint:Landroid/text/TextPaint;

    .line 59
    iget-object v0, p0, Landroid/text/SpanColors;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v0}, Landroid/text/SpanSet;->recycle()V

    .line 60
    return-void
.end method
