.class Landroid/text/Layout$1;
.super Ljava/lang/Object;
.source "Layout.java"

# interfaces
.implements Landroid/text/Layout$CharacterBoundsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/text/Layout;->drawHighContrastBackground(Landroid/graphics/Canvas;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist mLastColor:I

.field blacklist mLastLineNum:I

.field final blacklist mLineBackground:Landroid/graphics/RectF;

.field final synthetic blacklist this$0:Landroid/text/Layout;

.field final synthetic blacklist val$bgPaint:Landroid/graphics/Paint;

.field final synthetic blacklist val$black:I

.field final synthetic blacklist val$canvas:Landroid/graphics/Canvas;

.field final synthetic blacklist val$cornerRadius:F

.field final synthetic blacklist val$originalTextColor:I

.field final synthetic blacklist val$padding:F

.field final synthetic blacklist val$white:I


# direct methods
.method constructor blacklist <init>(Landroid/text/Layout;ILandroid/graphics/Paint;FLandroid/graphics/Canvas;FII)V
    .locals 0
    .param p1, "this$0"    # Landroid/text/Layout;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1061
    iput-object p1, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    iput p2, p0, Landroid/text/Layout$1;->val$originalTextColor:I

    iput-object p3, p0, Landroid/text/Layout$1;->val$bgPaint:Landroid/graphics/Paint;

    iput p4, p0, Landroid/text/Layout$1;->val$padding:F

    iput-object p5, p0, Landroid/text/Layout$1;->val$canvas:Landroid/graphics/Canvas;

    iput p6, p0, Landroid/text/Layout$1;->val$cornerRadius:F

    iput p7, p0, Landroid/text/Layout$1;->val$white:I

    iput p8, p0, Landroid/text/Layout$1;->val$black:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1062
    const/4 p2, -0x1

    iput p2, p0, Landroid/text/Layout$1;->mLastLineNum:I

    .line 1063
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Landroid/text/Layout$1;->mLineBackground:Landroid/graphics/RectF;

    .line 1065
    iget p2, p0, Landroid/text/Layout$1;->val$originalTextColor:I

    iput p2, p0, Landroid/text/Layout$1;->mLastColor:I

    return-void
.end method

.method private blacklist determineContrastingBackgroundColor(I)I
    .locals 3
    .param p1, "index"    # I

    .line 1136
    iget-object v0, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {v0}, Landroid/text/Layout;->-$$Nest$fgetmSpannedText(Landroid/text/Layout;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {v0}, Landroid/text/Layout;->-$$Nest$fgetmSpanColors(Landroid/text/Layout;)Landroid/text/SpanColors;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1145
    :cond_0
    iget-object v0, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {v0}, Landroid/text/Layout;->-$$Nest$fgetmSpanColors(Landroid/text/Layout;)Landroid/text/SpanColors;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/SpanColors;->getColorAt(I)I

    move-result v0

    .line 1146
    .local v0, "textColor":I
    if-nez v0, :cond_1

    .line 1147
    iget v0, p0, Landroid/text/Layout$1;->val$originalTextColor:I

    .line 1149
    :cond_1
    iget v1, p0, Landroid/text/Layout$1;->mLastColor:I

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 1150
    .local v1, "hasColorChanged":Z
    :goto_0
    if-eqz v1, :cond_4

    .line 1151
    iput v0, p0, Landroid/text/Layout$1;->mLastColor:I

    .line 1153
    iget-object v2, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {v2, v0}, Landroid/text/Layout;->-$$Nest$misHighContrastTextDark(Landroid/text/Layout;I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/text/Layout$1;->val$white:I

    goto :goto_1

    :cond_3
    iget v2, p0, Landroid/text/Layout$1;->val$black:I

    :goto_1
    return v2

    .line 1156
    :cond_4
    iget-object v2, p0, Landroid/text/Layout$1;->val$bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    return v2

    .line 1138
    .end local v0    # "textColor":I
    .end local v1    # "hasColorChanged":Z
    :cond_5
    :goto_2
    iget-object v0, p0, Landroid/text/Layout$1;->val$bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method private blacklist drawRect()V
    .locals 5

    .line 1124
    iget-object v0, p0, Landroid/text/Layout$1;->mLineBackground:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1125
    iget-object v0, p0, Landroid/text/Layout$1;->mLineBackground:Landroid/graphics/RectF;

    iget v1, p0, Landroid/text/Layout$1;->val$padding:F

    neg-float v1, v1

    iget v2, p0, Landroid/text/Layout$1;->val$padding:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 1126
    iget-object v0, p0, Landroid/text/Layout$1;->val$canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/text/Layout$1;->mLineBackground:Landroid/graphics/RectF;

    iget v2, p0, Landroid/text/Layout$1;->val$cornerRadius:F

    iget v3, p0, Landroid/text/Layout$1;->val$cornerRadius:F

    iget-object v4, p0, Landroid/text/Layout$1;->val$bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1133
    :cond_0
    return-void
.end method

.method private blacklist isStandardNumber(I)Z
    .locals 6
    .param p1, "index"    # I

    .line 1114
    iget-object v0, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {v0}, Landroid/text/Layout;->-$$Nest$fgetmText(Landroid/text/Layout;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1115
    .local v0, "codePoint":I
    const/16 v1, 0x30

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_0

    const/16 v1, 0x39

    if-le v0, v1, :cond_2

    :cond_0
    const/16 v1, 0x23

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    .line 1117
    .local v1, "isNumberSignOrAsterisk":Z
    :goto_1
    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {v5}, Landroid/text/Layout;->-$$Nest$fgetmText(Landroid/text/Layout;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    iget-object v4, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {v4}, Landroid/text/Layout;->-$$Nest$fgetmText(Landroid/text/Layout;)Ljava/lang/CharSequence;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    .line 1118
    invoke-static {v4, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    const v5, 0xfe0f

    if-ne v4, v5, :cond_3

    move v4, v3

    goto :goto_2

    :cond_3
    move v4, v2

    .line 1120
    .local v4, "isColoredGlyph":Z
    :goto_2
    if-eqz v1, :cond_4

    if-nez v4, :cond_4

    move v2, v3

    :cond_4
    return v2
.end method


# virtual methods
.method public blacklist onCharacterBounds(IIFFFF)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "lineNum"    # I
    .param p3, "left"    # F
    .param p4, "top"    # F
    .param p5, "right"    # F
    .param p6, "bottom"    # F

    .line 1071
    invoke-direct {p0, p1}, Landroid/text/Layout$1;->determineContrastingBackgroundColor(I)I

    move-result v0

    .line 1072
    .local v0, "newBackground":I
    iget-object v1, p0, Landroid/text/Layout$1;->val$bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 1076
    .local v1, "hasBgColorChanged":Z
    :goto_0
    iget-object v4, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {v4}, Landroid/text/Layout;->-$$Nest$fgetmText(Landroid/text/Layout;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/text/TextLine;->isLineEndSpace(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1077
    return-void

    .line 1087
    :cond_1
    iget-object v4, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {v4}, Landroid/text/Layout;->-$$Nest$fgetmText(Landroid/text/Layout;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 1088
    .local v4, "codePoint":I
    invoke-static {v4}, Ljava/lang/Character;->isEmojiComponent(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1089
    invoke-static {v4}, Ljava/lang/Character;->isExtendedPictographic(I)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    :goto_1
    nop

    .line 1090
    .local v2, "isEmoji":Z
    :goto_2
    if-eqz v2, :cond_4

    invoke-direct {p0, p1}, Landroid/text/Layout$1;->isStandardNumber(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1091
    return-void

    .line 1094
    :cond_4
    iget v3, p0, Landroid/text/Layout$1;->mLastLineNum:I

    if-ne p2, v3, :cond_6

    if-eqz v1, :cond_5

    goto :goto_3

    .line 1104
    :cond_5
    iget-object v3, p0, Landroid/text/Layout$1;->mLineBackground:Landroid/graphics/RectF;

    invoke-virtual {v3, p3, p4, p5, p6}, Landroid/graphics/RectF;->union(FFFF)V

    goto :goto_4

    .line 1096
    :cond_6
    :goto_3
    invoke-direct {p0}, Landroid/text/Layout$1;->drawRect()V

    .line 1097
    iget-object v3, p0, Landroid/text/Layout$1;->mLineBackground:Landroid/graphics/RectF;

    invoke-virtual {v3, p3, p4, p5, p6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1098
    iput p2, p0, Landroid/text/Layout$1;->mLastLineNum:I

    .line 1100
    if-eqz v1, :cond_7

    .line 1101
    iget-object v3, p0, Landroid/text/Layout$1;->val$bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1106
    :cond_7
    :goto_4
    return-void
.end method

.method public blacklist onEnd()V
    .locals 0

    .line 1110
    invoke-direct {p0}, Landroid/text/Layout$1;->drawRect()V

    .line 1111
    return-void
.end method
