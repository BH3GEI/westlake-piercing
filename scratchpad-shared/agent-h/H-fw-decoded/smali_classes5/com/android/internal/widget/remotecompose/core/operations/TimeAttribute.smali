.class public Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "TimeAttribute.java"


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "TimeAttribute"

.field private static final blacklist OP_CODE:I = 0xac

.field public static final blacklist TIME_DAY_OF_MONTH:S = 0x9s

.field public static final blacklist TIME_DAY_OF_WEEK:S = 0xbs

.field public static final blacklist TIME_FROM_ARG_HR:S = 0x5s

.field public static final blacklist TIME_FROM_ARG_MIN:S = 0x4s

.field public static final blacklist TIME_FROM_ARG_SEC:S = 0x3s

.field public static final blacklist TIME_FROM_NOW_HR:S = 0x2s

.field public static final blacklist TIME_FROM_NOW_MIN:S = 0x1s

.field public static final blacklist TIME_FROM_NOW_SEC:S = 0x0s

.field public static final blacklist TIME_IN_HR:S = 0x8s

.field public static final blacklist TIME_IN_MIN:S = 0x7s

.field public static final blacklist TIME_IN_SEC:S = 0x6s

.field public static final blacklist TIME_MONTH_VALUE:S = 0xas

.field public static final blacklist TIME_YEAR:S = 0xcs


# instance fields
.field private final blacklist mArgs:[I

.field blacklist mBounds:[F

.field public blacklist mId:I

.field public blacklist mTimeId:I

.field public blacklist mType:S


# direct methods
.method public constructor blacklist <init>(IIS[I)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "longId"    # I
    .param p3, "type"    # S
    .param p4, "args"    # [I

    .line 94
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 220
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mBounds:[F

    .line 95
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    .line 96
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mTimeId:I

    .line 97
    iput-short p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mType:S

    .line 98
    iput-object p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mArgs:[I

    .line 99
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS)V
    .locals 1
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "id"    # I
    .param p2, "textId"    # I
    .param p3, "type"    # S

    .line 150
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS[I)V

    .line 151
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS[I)V
    .locals 3
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "id"    # I
    .param p2, "textId"    # I
    .param p3, "type"    # S
    .param p4, "args"    # [I

    .line 164
    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 165
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 166
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 167
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 168
    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 169
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    goto :goto_1

    .line 171
    :cond_0
    array-length v1, p4

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 172
    array-length v1, p4

    :goto_0
    if-ge v0, v1, :cond_1

    aget v2, p4, v0

    .line 173
    .local v2, "arg":I
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 172
    .end local v2    # "arg":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_1
    :goto_1
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .locals 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 205
    const/16 v0, 0xac

    const-string v1, "TimeAttribute"

    const-string v2, "Time Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 206
    const-string v1, "Calculate Information about time"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 207
    const/4 v1, 0x0

    const-string v2, "id"

    const-string v3, "id to output"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 208
    const-string v2, "longId"

    const-string v3, "id of time to calculate on"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 209
    const/16 v2, 0x9

    const-string/jumbo v3, "type"

    const-string/jumbo v4, "the type of calculation"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 210
    const-string v3, "argsLength"

    const-string v4, "The number of additional args"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 211
    const-string v2, "args"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 212
    return-void
.end method

.method public static blacklist id()I
    .locals 1

    .line 138
    const/16 v0, 0xac

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .locals 1

    .line 129
    const-string v0, "TimeAttribute"

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

    .line 185
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 186
    .local v0, "id":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 187
    .local v1, "textId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readShort()I

    move-result v2

    int-to-short v2, v2

    .line 188
    .local v2, "type":S
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readShort()I

    move-result v3

    int-to-short v3, v3

    .line 189
    .local v3, "len":S
    const/4 v4, 0x0

    .line 190
    .local v4, "args":[I
    if-eqz v3, :cond_0

    .line 191
    new-array v4, v3, [I

    .line 192
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v6

    aput v6, v4, v5

    .line 192
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 196
    .end local v5    # "i":I
    :cond_0
    new-instance v5, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;

    invoke-direct {v5, v0, v1, v2, v4}, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;-><init>(IIS[I)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    return-void
.end method


# virtual methods
.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "indent"    # Ljava/lang/String;

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 14
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 224
    iget-short v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mType:S

    and-int/lit16 v0, v0, 0xff

    .line 225
    .local v0, "val":I
    iget-short v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mType:S

    shr-int/lit8 v1, v1, 0x8

    .line 226
    .local v1, "flags":I
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v2

    .line 227
    .local v2, "ctx":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mTimeId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;

    .line 228
    .local v3, "longConstant":Lcom/android/internal/widget/remotecompose/core/types/LongConstant;
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->getValue()J

    move-result-wide v4

    .line 229
    .local v4, "value":J
    const-wide/16 v6, 0x0

    .line 230
    .local v6, "delta":J
    const/4 v8, 0x0

    .line 232
    .local v8, "time":Ljava/time/LocalDateTime;
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 251
    :pswitch_0
    nop

    .line 253
    invoke-static {v4, v5}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v9

    .line 254
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v9

    .line 255
    invoke-virtual {v9}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v8

    goto :goto_0

    .line 241
    :pswitch_1
    iget-object v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mArgs:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    invoke-virtual {v2, v9}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getObject(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;

    .line 242
    .local v9, "lc2":Lcom/android/internal/widget/remotecompose/core/types/LongConstant;
    invoke-virtual {v9}, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->getValue()J

    move-result-wide v10

    sub-long v6, v4, v10

    .line 243
    goto :goto_0

    .line 236
    .end local v9    # "lc2":Lcom/android/internal/widget/remotecompose/core/types/LongConstant;
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v6, v4, v9

    .line 237
    nop

    .line 259
    :goto_0
    const-wide v9, 0x3f50624dd2f1a9fcL    # 0.001

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    .line 291
    :pswitch_3
    iget v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    invoke-virtual {v8}, Ljava/time/LocalDateTime;->getYear()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v2, v9, v10}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    goto/16 :goto_1

    .line 288
    :pswitch_4
    iget v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    invoke-virtual {v8}, Ljava/time/LocalDateTime;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/DayOfWeek;->ordinal()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v2, v9, v10}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 289
    goto :goto_1

    .line 285
    :pswitch_5
    iget v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    invoke-virtual {v8}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    int-to-float v10, v10

    invoke-virtual {v2, v9, v10}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 286
    goto :goto_1

    .line 282
    :pswitch_6
    iget v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    invoke-virtual {v8}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v2, v9, v10}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 283
    goto :goto_1

    .line 279
    :pswitch_7
    iget v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    invoke-virtual {v8}, Ljava/time/LocalDateTime;->getHour()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v2, v9, v10}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 280
    goto :goto_1

    .line 276
    :pswitch_8
    iget v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    invoke-virtual {v8}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v2, v9, v10}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 277
    goto :goto_1

    .line 273
    :pswitch_9
    iget v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    invoke-virtual {v8}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v2, v9, v10}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 274
    goto :goto_1

    .line 270
    :pswitch_a
    iget v11, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    long-to-double v12, v6

    mul-double/2addr v12, v9

    const-wide v9, 0x40ac200000000000L    # 3600.0

    div-double/2addr v12, v9

    double-to-float v9, v12

    invoke-virtual {v2, v11, v9}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 271
    goto :goto_1

    .line 266
    :pswitch_b
    iget v11, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    long-to-double v12, v6

    mul-double/2addr v12, v9

    const-wide/high16 v9, 0x404e000000000000L    # 60.0

    div-double/2addr v12, v9

    double-to-float v9, v12

    invoke-virtual {v2, v11, v9}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 267
    goto :goto_1

    .line 262
    :pswitch_c
    iget v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    long-to-float v10, v6

    const v11, 0x3a83126f    # 0.001f

    mul-float/2addr v10, v11

    invoke-virtual {v2, v9, v10}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 263
    nop

    .line 294
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mArgs:[I

    const-string v1, "] = "

    const-string v2, "TimeAttribute["

    const-string v3, " "

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mTimeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mType:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mTimeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mType:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mArgs:[I

    .line 119
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 3
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 103
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mTimeId:I

    iget-short v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mType:S

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS)V

    .line 104
    return-void
.end method
