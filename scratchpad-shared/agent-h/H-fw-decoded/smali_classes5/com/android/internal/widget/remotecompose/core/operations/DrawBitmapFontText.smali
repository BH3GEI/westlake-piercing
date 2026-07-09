.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "DrawBitmapFontText.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "DrawBitmapFontText"

.field private static final blacklist OP_CODE:I = 0x30


# instance fields
.field blacklist mBitmapFontID:I

.field blacklist mEnd:I

.field blacklist mOutX:F

.field blacklist mOutY:F

.field blacklist mStart:I

.field blacklist mTextID:I

.field blacklist mX:F

.field blacklist mY:F


# direct methods
.method public constructor blacklist <init>(IIIIFF)V
    .locals 0
    .param p1, "textID"    # I
    .param p2, "bitmapFontID"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "x"    # F
    .param p6, "y"    # F

    .line 47
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 48
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mTextID:I

    .line 49
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mBitmapFontID:I

    .line 50
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mStart:I

    .line 51
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mEnd:I

    .line 52
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mX:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mOutX:F

    .line 53
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mY:F

    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mOutY:F

    .line 54
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIFF)V
    .locals 1
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "textID"    # I
    .param p2, "bitmapFontID"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "x"    # F
    .param p6, "y"    # F

    .line 150
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 152
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 153
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 154
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 155
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 156
    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 157
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .locals 4
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 165
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->id()I

    move-result v0

    const-string v1, "DrawBitmapFontText"

    const-string v2, "Draw Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 166
    const-string v1, "Draw a run of bitmap font text, all in a single direction"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 167
    const/4 v1, 0x0

    const-string/jumbo v2, "textId"

    const-string v3, "id of bitmap"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 168
    const-string v2, "bitmapFontId"

    const-string v3, "id of the bitmap font"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 169
    const-string/jumbo v2, "start"

    const-string v3, "The start of the text to render. -1=end of string"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 173
    const-string v2, "end"

    const-string v3, "The end of the text to render"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 174
    const-string v2, "contextStart"

    const-string/jumbo v3, "the index of the start of the shaping context"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 178
    const-string v2, "contextEnd"

    const-string/jumbo v3, "the index of the end of the shaping context"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 182
    const/4 v1, 0x1

    const-string/jumbo v2, "x"

    const-string v3, "The x position at which to draw the text"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 183
    const-string/jumbo v2, "y"

    const-string v3, "The y position at which to draw the text"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 184
    const/4 v1, 0x2

    const-string v2, "RTL"

    const-string v3, "Whether the run is in RTL direction"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 185
    return-void
.end method

.method public static blacklist id()I
    .locals 1

    .line 128
    const/16 v0, 0x30

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .locals 1

    .line 119
    const-string v0, "DrawBitmapFontText"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 7
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 101
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 102
    .local v1, "text":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 103
    .local v2, "bitmapFont":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    .line 104
    .local v3, "start":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v4

    .line 105
    .local v4, "end":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v5

    .line 106
    .local v5, "x":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v6

    .line 107
    .local v6, "y":F
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;-><init>(IIIIFF)V

    .line 109
    .local v0, "op":Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 14
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 189
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    .line 190
    .local v0, "remoteContext":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mTextID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "textToPaint":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 192
    return-void

    .line 194
    :cond_0
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mEnd:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 195
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mStart:I

    if-eqz v2, :cond_3

    .line 196
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mStart:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 198
    :cond_1
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mEnd:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v2, v4, :cond_2

    .line 199
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mStart:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 201
    :cond_2
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mStart:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mEnd:I

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 204
    :cond_3
    :goto_0
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mBitmapFontID:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;

    .line 205
    .local v2, "bitmapFont":Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;
    if-nez v2, :cond_4

    .line 206
    return-void

    .line 209
    :cond_4
    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mX:F

    .line 210
    .local v4, "xPos":F
    const/4 v5, 0x0

    .line 211
    .local v5, "pos":I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 212
    invoke-virtual {v2, v1, v5}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->lookupGlyph(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;

    move-result-object v6

    .line 213
    .local v6, "glyph":Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;
    if-nez v6, :cond_5

    .line 214
    add-int/lit8 v5, v5, 0x1

    .line 215
    goto :goto_1

    .line 218
    :cond_5
    iget-object v7, v6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mChars:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v5, v7

    .line 219
    iget v7, v6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapId:I

    if-ne v7, v3, :cond_6

    .line 221
    iget-short v7, v6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginLeft:S

    iget-short v8, v6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginRight:S

    add-int/2addr v7, v8

    int-to-float v7, v7

    add-float/2addr v4, v7

    .line 222
    goto :goto_1

    .line 225
    :cond_6
    iget-short v7, v6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginLeft:S

    int-to-float v7, v7

    add-float v10, v4, v7

    .line 226
    .end local v4    # "xPos":F
    .local v10, "xPos":F
    iget-short v4, v6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapWidth:S

    int-to-float v4, v4

    add-float v12, v10, v4

    .line 227
    .local v12, "xPos2":F
    iget v9, v6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapId:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mY:F

    iget-short v7, v6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginTop:S

    int-to-float v7, v7

    add-float v11, v4, v7

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mY:F

    iget-short v7, v6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapHeight:S

    int-to-float v7, v7

    add-float v13, v4, v7

    move-object v8, p1

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .local v8, "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawBitmap(IFFFF)V

    .line 229
    iget-short p1, v6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginRight:S

    int-to-float p1, p1

    add-float v4, v12, p1

    .line 230
    .end local v6    # "glyph":Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;
    .end local v10    # "xPos":F
    .end local v12    # "xPos2":F
    .restart local v4    # "xPos":F
    move-object p1, v8

    goto :goto_1

    .line 231
    .end local v8    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .restart local p1    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    :cond_7
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 1
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 64
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mX:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 67
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mY:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 70
    :cond_1
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrawBitmapFontText ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mTextID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mBitmapFontID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mStart:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mEnd:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mX:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mOutX:F

    .line 89
    invoke-static {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mY:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mOutY:F

    .line 91
    invoke-static {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 1
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 58
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mX:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mX:F

    :goto_0
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mOutX:F

    .line 59
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mY:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mY:F

    :goto_1
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mOutY:F

    .line 60
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 7
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 74
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mTextID:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mBitmapFontID:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mStart:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mEnd:I

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mX:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->mY:F

    move-object v0, p1

    .end local p1    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .local v0, "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    invoke-static/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIFF)V

    .line 75
    return-void
.end method
