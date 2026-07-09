.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "DrawBitmapInt.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "DrawBitmapInt"

.field private static final blacklist OP_CODE:I = 0x42


# instance fields
.field blacklist mContentDescId:I

.field blacklist mDstBottom:I

.field blacklist mDstLeft:I

.field blacklist mDstRight:I

.field blacklist mDstTop:I

.field blacklist mImageId:I

.field blacklist mSrcBottom:I

.field blacklist mSrcLeft:I

.field blacklist mSrcRight:I

.field blacklist mSrcTop:I


# direct methods
.method public constructor blacklist <init>(IIIIIIIIII)V
    .locals 1
    .param p1, "imageId"    # I
    .param p2, "srcLeft"    # I
    .param p3, "srcTop"    # I
    .param p4, "srcRight"    # I
    .param p5, "srcBottom"    # I
    .param p6, "dstLeft"    # I
    .param p7, "dstTop"    # I
    .param p8, "dstRight"    # I
    .param p9, "dstBottom"    # I
    .param p10, "cdId"    # I

    .line 56
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mContentDescId:I

    .line 57
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mImageId:I

    .line 58
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mSrcLeft:I

    .line 59
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mSrcTop:I

    .line 60
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mSrcRight:I

    .line 61
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mSrcBottom:I

    .line 62
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mDstLeft:I

    .line 63
    iput p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mDstTop:I

    .line 64
    iput p8, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mDstRight:I

    .line 65
    iput p9, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mDstBottom:I

    .line 66
    iput p10, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mContentDescId:I

    .line 67
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIIIIIII)V
    .locals 1
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "imageId"    # I
    .param p2, "srcLeft"    # I
    .param p3, "srcTop"    # I
    .param p4, "srcRight"    # I
    .param p5, "srcBottom"    # I
    .param p6, "dstLeft"    # I
    .param p7, "dstTop"    # I
    .param p8, "dstRight"    # I
    .param p9, "dstBottom"    # I
    .param p10, "cdId"    # I

    .line 161
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 162
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 163
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 164
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 165
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 166
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 167
    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 168
    invoke-virtual {p0, p7}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 169
    invoke-virtual {p0, p8}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 170
    invoke-virtual {p0, p9}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 171
    invoke-virtual {p0, p10}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 172
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .locals 7
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 205
    const/16 v0, 0x42

    const-string v1, "DrawBitmapInt"

    const-string v2, "Draw Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 206
    const-string v1, "Draw a bitmap using integer coordinates"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 207
    const/4 v1, 0x0

    const-string v2, "id"

    const-string v3, "id of bitmap"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 208
    const-string/jumbo v2, "srcLeft"

    const-string v3, "The left side of the image"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 209
    const-string/jumbo v2, "srcTop"

    const-string v4, "The top of the image"

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 210
    const-string/jumbo v2, "srcRight"

    const-string v5, "The right side of the image"

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 211
    const-string/jumbo v2, "srcBottom"

    const-string v6, "The bottom of the image"

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 212
    const-string v2, "dstLeft"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 213
    const-string v2, "dstTop"

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 214
    const-string v2, "dstRight"

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 215
    const-string v2, "dstBottom"

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 216
    const-string v2, "cdId"

    const-string v3, "id of string"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 217
    return-void
.end method

.method public static blacklist id()I
    .locals 1

    .line 131
    const/16 v0, 0x42

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .locals 1

    .line 122
    const-string v0, "DrawBitmapInt"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 11
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

    .line 181
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 182
    .local v1, "imageId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 183
    .local v2, "sLeft":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    .line 184
    .local v3, "srcTop":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v4

    .line 185
    .local v4, "srcRight":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v5

    .line 186
    .local v5, "srcBottom":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v6

    .line 187
    .local v6, "dstLeft":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v7

    .line 188
    .local v7, "dstTop":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v8

    .line 189
    .local v8, "dstRight":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v9

    .line 190
    .local v9, "dstBottom":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v10

    .line 191
    .local v10, "cdId":I
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;-><init>(IIIIIIIIII)V

    .line 196
    .local v0, "op":Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    return-void
.end method


# virtual methods
.method public blacklist getContentDescriptionId()Ljava/lang/Integer;
    .locals 1

    .line 112
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mContentDescId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 11
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 221
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mImageId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mSrcLeft:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mSrcTop:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mSrcRight:I

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mSrcBottom:I

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mDstLeft:I

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mDstTop:I

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mDstRight:I

    iget v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mDstBottom:I

    iget v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mContentDescId:I

    move-object v0, p1

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .local v0, "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawBitmap(IIIIIIIIII)V

    .line 232
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DRAW_BITMAP_INT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mImageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mSrcLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mSrcTop:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mSrcRight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mSrcBottom:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mDstLeft:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mDstTop:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mDstRight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mDstBottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 11
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 71
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mImageId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mSrcLeft:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mSrcTop:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mSrcRight:I

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mSrcBottom:I

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mDstLeft:I

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mDstTop:I

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mDstRight:I

    iget v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mDstBottom:I

    iget v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->mContentDescId:I

    move-object v0, p1

    .end local p1    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .local v0, "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    invoke-static/range {v0 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIIIIIII)V

    .line 83
    return-void
.end method
