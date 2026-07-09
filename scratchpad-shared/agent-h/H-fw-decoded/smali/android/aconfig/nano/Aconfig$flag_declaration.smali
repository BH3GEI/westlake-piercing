.class public final Landroid/aconfig/nano/Aconfig$flag_declaration;
.super Landroid/internal/framework/protobuf/nano/MessageNano;
.source "Aconfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/aconfig/nano/Aconfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "flag_declaration"
.end annotation


# static fields
.field private static volatile _emptyArray:[Landroid/aconfig/nano/Aconfig$flag_declaration;


# instance fields
.field public bug:[Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public isExported:Z

.field public isFixedReadOnly:Z

.field public metadata:Landroid/aconfig/nano/Aconfig$flag_metadata;

.field public name:Ljava/lang/String;

.field public namespace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Landroid/internal/framework/protobuf/nano/MessageNano;-><init>()V

    .line 55
    invoke-virtual {p0}, Landroid/aconfig/nano/Aconfig$flag_declaration;->clear()Landroid/aconfig/nano/Aconfig$flag_declaration;

    .line 56
    return-void
.end method

.method public static emptyArray()[Landroid/aconfig/nano/Aconfig$flag_declaration;
    .locals 2

    .line 22
    sget-object v0, Landroid/aconfig/nano/Aconfig$flag_declaration;->_emptyArray:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    if-nez v0, :cond_1

    .line 23
    sget-object v0, Landroid/internal/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Landroid/aconfig/nano/Aconfig$flag_declaration;->_emptyArray:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    if-nez v1, :cond_0

    .line 26
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/aconfig/nano/Aconfig$flag_declaration;

    sput-object v1, Landroid/aconfig/nano/Aconfig$flag_declaration;->_emptyArray:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    .line 28
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 30
    :cond_1
    :goto_0
    sget-object v0, Landroid/aconfig/nano/Aconfig$flag_declaration;->_emptyArray:[Landroid/aconfig/nano/Aconfig$flag_declaration;

    return-object v0
.end method

.method public static parseFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$flag_declaration;
    .locals 1
    .param p0, "input"    # Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    new-instance v0, Landroid/aconfig/nano/Aconfig$flag_declaration;

    invoke-direct {v0}, Landroid/aconfig/nano/Aconfig$flag_declaration;-><init>()V

    invoke-virtual {v0, p0}, Landroid/aconfig/nano/Aconfig$flag_declaration;->mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$flag_declaration;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Landroid/aconfig/nano/Aconfig$flag_declaration;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 211
    new-instance v0, Landroid/aconfig/nano/Aconfig$flag_declaration;

    invoke-direct {v0}, Landroid/aconfig/nano/Aconfig$flag_declaration;-><init>()V

    invoke-static {v0, p0}, Landroid/internal/framework/protobuf/nano/MessageNano;->mergeFrom(Landroid/internal/framework/protobuf/nano/MessageNano;[B)Landroid/internal/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Landroid/aconfig/nano/Aconfig$flag_declaration;

    return-object v0
.end method


# virtual methods
.method public clear()Landroid/aconfig/nano/Aconfig$flag_declaration;
    .locals 1

    .line 59
    const-string v0, ""

    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->name:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->namespace:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->description:Ljava/lang/String;

    .line 62
    sget-object v0, Landroid/internal/framework/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->bug:[Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->isFixedReadOnly:Z

    .line 64
    iput-boolean v0, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->isExported:Z

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->metadata:Landroid/aconfig/nano/Aconfig$flag_metadata;

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->cachedSize:I

    .line 67
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .line 104
    invoke-super {p0}, Landroid/internal/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 105
    .local v0, "size":I
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->name:Ljava/lang/String;

    .line 107
    const/4 v3, 0x1

    invoke-static {v3, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 109
    :cond_0
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->namespace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 110
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->namespace:Ljava/lang/String;

    .line 111
    const/4 v3, 0x2

    invoke-static {v3, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 113
    :cond_1
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 114
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->description:Ljava/lang/String;

    .line 115
    const/4 v2, 0x3

    invoke-static {v2, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    :cond_2
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->bug:[Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->bug:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 118
    const/4 v1, 0x0

    .line 119
    .local v1, "dataCount":I
    const/4 v2, 0x0

    .line 120
    .local v2, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->bug:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 121
    iget-object v4, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->bug:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 122
    .local v4, "element":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 123
    add-int/lit8 v1, v1, 0x1

    .line 124
    nop

    .line 125
    invoke-static {v4}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    .line 120
    .end local v4    # "element":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    .end local v3    # "i":I
    :cond_4
    add-int/2addr v0, v2

    .line 129
    mul-int/lit8 v3, v1, 0x1

    add-int/2addr v0, v3

    .line 131
    .end local v1    # "dataCount":I
    .end local v2    # "dataSize":I
    :cond_5
    iget-boolean v1, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->isFixedReadOnly:Z

    if-eqz v1, :cond_6

    .line 132
    iget-boolean v1, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->isFixedReadOnly:Z

    .line 133
    const/4 v2, 0x5

    invoke-static {v2, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 135
    :cond_6
    iget-boolean v1, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->isExported:Z

    if-eqz v1, :cond_7

    .line 136
    iget-boolean v1, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->isExported:Z

    .line 137
    const/4 v2, 0x6

    invoke-static {v2, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 139
    :cond_7
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->metadata:Landroid/aconfig/nano/Aconfig$flag_metadata;

    if-eqz v1, :cond_8

    .line 140
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->metadata:Landroid/aconfig/nano/Aconfig$flag_metadata;

    .line 141
    const/4 v2, 0x7

    invoke-static {v2, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILandroid/internal/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 143
    :cond_8
    return v0
.end method

.method public mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$flag_declaration;
    .locals 6
    .param p1, "input"    # Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    nop

    :goto_0
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 152
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 156
    invoke-static {p1, v0}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 157
    return-object p0

    .line 199
    :sswitch_0
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->metadata:Landroid/aconfig/nano/Aconfig$flag_metadata;

    if-nez v1, :cond_0

    .line 200
    new-instance v1, Landroid/aconfig/nano/Aconfig$flag_metadata;

    invoke-direct {v1}, Landroid/aconfig/nano/Aconfig$flag_metadata;-><init>()V

    iput-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->metadata:Landroid/aconfig/nano/Aconfig$flag_metadata;

    .line 202
    :cond_0
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->metadata:Landroid/aconfig/nano/Aconfig$flag_metadata;

    invoke-virtual {p1, v1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Landroid/internal/framework/protobuf/nano/MessageNano;)V

    goto :goto_3

    .line 195
    :sswitch_1
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->isExported:Z

    .line 196
    goto :goto_3

    .line 191
    :sswitch_2
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->isFixedReadOnly:Z

    .line 192
    goto :goto_3

    .line 174
    :sswitch_3
    nop

    .line 175
    const/16 v1, 0x22

    invoke-static {p1, v1}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 176
    .local v1, "arrayLength":I
    iget-object v2, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->bug:[Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->bug:[Ljava/lang/String;

    array-length v2, v2

    .line 177
    .local v2, "i":I
    :goto_1
    add-int v4, v2, v1

    new-array v4, v4, [Ljava/lang/String;

    .line 178
    .local v4, "newArray":[Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 179
    iget-object v5, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->bug:[Ljava/lang/String;

    invoke-static {v5, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    :cond_2
    :goto_2
    array-length v3, v4

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_3

    .line 182
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    .line 183
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 186
    :cond_3
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    .line 187
    iput-object v4, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->bug:[Ljava/lang/String;

    .line 188
    goto :goto_3

    .line 170
    .end local v1    # "arrayLength":I
    .end local v2    # "i":I
    .end local v4    # "newArray":[Ljava/lang/String;
    :sswitch_4
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->description:Ljava/lang/String;

    .line 171
    goto :goto_3

    .line 166
    :sswitch_5
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->namespace:Ljava/lang/String;

    .line 167
    goto :goto_3

    .line 162
    :sswitch_6
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->name:Ljava/lang/String;

    .line 163
    goto :goto_3

    .line 154
    :sswitch_7
    return-object p0

    .line 206
    .end local v0    # "tag":I
    :cond_4
    :goto_3
    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0xa -> :sswitch_6
        0x12 -> :sswitch_5
        0x1a -> :sswitch_4
        0x22 -> :sswitch_3
        0x28 -> :sswitch_2
        0x30 -> :sswitch_1
        0x3a -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/internal/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0, p1}, Landroid/aconfig/nano/Aconfig$flag_declaration;->mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$flag_declaration;

    move-result-object p1

    return-object p1
.end method

.method public writeTo(Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->name:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 76
    :cond_0
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->namespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    const/4 v0, 0x2

    iget-object v2, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->namespace:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 79
    :cond_1
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 80
    const/4 v0, 0x3

    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->description:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 82
    :cond_2
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->bug:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->bug:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->bug:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 84
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->bug:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 85
    .local v1, "element":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 86
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 83
    .end local v1    # "element":Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    .end local v0    # "i":I
    :cond_4
    iget-boolean v0, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->isFixedReadOnly:Z

    if-eqz v0, :cond_5

    .line 91
    const/4 v0, 0x5

    iget-boolean v1, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->isFixedReadOnly:Z

    invoke-virtual {p1, v0, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 93
    :cond_5
    iget-boolean v0, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->isExported:Z

    if-eqz v0, :cond_6

    .line 94
    const/4 v0, 0x6

    iget-boolean v1, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->isExported:Z

    invoke-virtual {p1, v0, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 96
    :cond_6
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->metadata:Landroid/aconfig/nano/Aconfig$flag_metadata;

    if-eqz v0, :cond_7

    .line 97
    const/4 v0, 0x7

    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_declaration;->metadata:Landroid/aconfig/nano/Aconfig$flag_metadata;

    invoke-virtual {p1, v0, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILandroid/internal/framework/protobuf/nano/MessageNano;)V

    .line 99
    :cond_7
    invoke-super {p0, p1}, Landroid/internal/framework/protobuf/nano/MessageNano;->writeTo(Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 100
    return-void
.end method
