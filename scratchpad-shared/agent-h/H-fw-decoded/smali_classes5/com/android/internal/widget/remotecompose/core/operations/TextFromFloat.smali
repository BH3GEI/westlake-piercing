.class public Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "TextFromFloat.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "TextFromFloat"

.field public static final blacklist MAX_STRING_SIZE:I = 0xfa0

.field private static final blacklist OP_CODE:I = 0x87

.field public static final blacklist PAD_AFTER_NONE:I = 0x1

.field public static final blacklist PAD_AFTER_SPACE:I = 0x0

.field public static final blacklist PAD_AFTER_ZERO:I = 0x3

.field public static final blacklist PAD_PRE_NONE:I = 0x4

.field public static final blacklist PAD_PRE_SPACE:I = 0x0

.field public static final blacklist PAD_PRE_ZERO:I = 0xc


# instance fields
.field blacklist mAfter:C

.field public blacklist mDigitsAfter:S

.field public blacklist mDigitsBefore:S

.field public blacklist mFlags:I

.field public blacklist mOutValue:F

.field blacklist mPre:C

.field public blacklist mTextId:I

.field public blacklist mValue:F


# direct methods
.method public constructor blacklist <init>(IFSSI)V
    .locals 4
    .param p1, "textId"    # I
    .param p2, "value"    # F
    .param p3, "digitsBefore"    # S
    .param p4, "digitsAfter"    # S
    .param p5, "flags"    # I

    .line 62
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 51
    const/16 v0, 0x20

    iput-char v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mPre:C

    .line 52
    iput-char v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mAfter:C

    .line 63
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mTextId:I

    .line 64
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mValue:F

    .line 65
    iput-short p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mDigitsAfter:S

    .line 66
    iput-short p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mDigitsBefore:S

    .line 67
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mFlags:I

    .line 68
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mValue:F

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mOutValue:F

    .line 69
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mFlags:I

    and-int/lit8 v1, v1, 0x3

    const/16 v2, 0x30

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 77
    :pswitch_1
    iput-char v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mAfter:C

    goto :goto_0

    .line 74
    :pswitch_2
    iput-char v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mAfter:C

    .line 75
    goto :goto_0

    .line 71
    :pswitch_3
    iput-char v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mAfter:C

    .line 72
    nop

    .line 80
    :goto_0
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mFlags:I

    and-int/lit8 v1, v1, 0xc

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    .line 88
    :sswitch_0
    iput-char v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mPre:C

    goto :goto_1

    .line 85
    :sswitch_1
    iput-char v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mPre:C

    .line 86
    goto :goto_1

    .line 82
    :sswitch_2
    iput-char v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mPre:C

    .line 83
    nop

    .line 91
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x4 -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFSSI)V
    .locals 1
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "textId"    # I
    .param p2, "value"    # F
    .param p3, "digitsBefore"    # S
    .param p4, "digitsAfter"    # S
    .param p5, "flags"    # I

    .line 163
    const/16 v0, 0x87

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 164
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 165
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 166
    shl-int/lit8 v0, p3, 0x10

    or-int/2addr v0, p4

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 167
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 168
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .locals 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 193
    const/16 v0, 0x87

    const-string v1, "TextFromFloat"

    const-string v2, "Expressions Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 194
    const-string v1, "Draw text along path object"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 195
    const/4 v1, 0x0

    const-string/jumbo v2, "textId"

    const-string v3, "id of the text generated"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 196
    const-string/jumbo v2, "value"

    const-string v3, "Value to add"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 197
    const/16 v2, 0x9

    const-string v3, "prePoint"

    const-string v4, "digits before the decimal point"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 198
    const-string/jumbo v3, "pstPoint"

    const-string v4, "digit after the decimal point"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 199
    const-string v2, "flags"

    const-string v3, "options on padding"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 200
    return-void
.end method

.method public static blacklist id()I
    .locals 1

    .line 143
    const/16 v0, 0x87

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .locals 1

    .line 134
    const-string v0, "TextFromFloat"

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

    .line 177
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 178
    .local v1, "textId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v2

    .line 179
    .local v2, "value":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v6

    .line 180
    .local v6, "tmp":I
    const v0, 0xffff

    and-int v3, v6, v0

    int-to-short v4, v3

    .line 181
    .local v4, "post":S
    shr-int/lit8 v3, v6, 0x10

    and-int/2addr v0, v3

    int-to-short v3, v0

    .line 183
    .local v3, "pre":S
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v5

    .line 184
    .local v5, "flags":I
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;-><init>(IFSSI)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 5
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 204
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mOutValue:F

    .line 205
    .local v0, "v":F
    iget-short v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mDigitsBefore:S

    iget-short v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mDigitsAfter:S

    iget-char v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mPre:C

    iget-char v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mAfter:C

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringUtils;->floatToString(FIICC)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "s":Ljava/lang/String;
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mTextId:I

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadText(ILjava/lang/String;)V

    .line 207
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "indent"    # Ljava/lang/String;

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 1
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 122
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mValue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mValue:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 125
    :cond_0
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 4
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 217
    nop

    .line 218
    const-string/jumbo v0, "type"

    const-string v1, "TextFromFloat"

    invoke-interface {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mTextId:I

    .line 219
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "textId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mValue:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mOutValue:F

    .line 220
    const-string/jumbo v3, "value"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-short v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mDigitsBefore:S

    .line 221
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "digitsBefore"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Short;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-short v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mDigitsAfter:S

    .line 222
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "digitsAfter"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Short;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mFlags:I

    .line 223
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "flags"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 224
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextFromFloat["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mTextId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mValue:F

    .line 104
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mDigitsBefore:S

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mDigitsAfter:S

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 1
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 115
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mValue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mValue:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mOutValue:F

    .line 118
    :cond_0
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 6
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 95
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mTextId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mValue:F

    iget-short v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mDigitsBefore:S

    iget-short v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mDigitsAfter:S

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mFlags:I

    move-object v0, p1

    .end local p1    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .local v0, "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFSSI)V

    .line 96
    return-void
.end method
