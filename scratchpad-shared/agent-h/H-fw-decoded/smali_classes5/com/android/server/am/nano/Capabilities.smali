.class public final Lcom/android/server/am/nano/Capabilities;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "Capabilities.java"


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/server/am/nano/Capabilities;


# instance fields
.field public blacklist frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

.field public blacklist values:[Lcom/android/server/am/nano/Capability;

.field public blacklist vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

.field public blacklist vmInfo:Lcom/android/server/am/nano/VMInfo;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 36
    invoke-virtual {p0}, Lcom/android/server/am/nano/Capabilities;->clear()Lcom/android/server/am/nano/Capabilities;

    .line 37
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/am/nano/Capabilities;
    .locals 2

    .line 12
    sget-object v0, Lcom/android/server/am/nano/Capabilities;->_emptyArray:[Lcom/android/server/am/nano/Capabilities;

    if-nez v0, :cond_1

    .line 13
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_0
    sget-object v1, Lcom/android/server/am/nano/Capabilities;->_emptyArray:[Lcom/android/server/am/nano/Capabilities;

    if-nez v1, :cond_0

    .line 16
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/am/nano/Capabilities;

    sput-object v1, Lcom/android/server/am/nano/Capabilities;->_emptyArray:[Lcom/android/server/am/nano/Capabilities;

    .line 18
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 20
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/am/nano/Capabilities;->_emptyArray:[Lcom/android/server/am/nano/Capabilities;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/am/nano/Capabilities;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    new-instance v0, Lcom/android/server/am/nano/Capabilities;

    invoke-direct {v0}, Lcom/android/server/am/nano/Capabilities;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/am/nano/Capabilities;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/am/nano/Capabilities;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/am/nano/Capabilities;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 206
    new-instance v0, Lcom/android/server/am/nano/Capabilities;

    invoke-direct {v0}, Lcom/android/server/am/nano/Capabilities;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/nano/Capabilities;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/am/nano/Capabilities;
    .locals 1

    .line 40
    invoke-static {}, Lcom/android/server/am/nano/Capability;->emptyArray()[Lcom/android/server/am/nano/Capability;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    .line 41
    invoke-static {}, Lcom/android/server/am/nano/VMCapability;->emptyArray()[Lcom/android/server/am/nano/VMCapability;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    .line 42
    invoke-static {}, Lcom/android/server/am/nano/FrameworkCapability;->emptyArray()[Lcom/android/server/am/nano/FrameworkCapability;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/nano/Capabilities;->vmInfo:Lcom/android/server/am/nano/VMInfo;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/nano/Capabilities;->cachedSize:I

    .line 45
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 4

    .line 83
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 84
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 85
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 86
    iget-object v2, p0, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    aget-object v2, v2, v1

    .line 87
    .local v2, "element":Lcom/android/server/am/nano/Capability;
    if-eqz v2, :cond_0

    .line 88
    nop

    .line 89
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    .line 85
    .end local v2    # "element":Lcom/android/server/am/nano/Capability;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 94
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 95
    iget-object v2, p0, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    aget-object v2, v2, v1

    .line 96
    .local v2, "element":Lcom/android/server/am/nano/VMCapability;
    if-eqz v2, :cond_2

    .line 97
    nop

    .line 98
    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    .line 94
    .end local v2    # "element":Lcom/android/server/am/nano/VMCapability;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 102
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 103
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 104
    iget-object v2, p0, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    aget-object v2, v2, v1

    .line 105
    .local v2, "element":Lcom/android/server/am/nano/FrameworkCapability;
    if-eqz v2, :cond_4

    .line 106
    nop

    .line 107
    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    .line 103
    .end local v2    # "element":Lcom/android/server/am/nano/FrameworkCapability;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 111
    .end local v1    # "i":I
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->vmInfo:Lcom/android/server/am/nano/VMInfo;

    if-eqz v1, :cond_6

    .line 112
    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->vmInfo:Lcom/android/server/am/nano/VMInfo;

    .line 113
    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 115
    :cond_6
    return v0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
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

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/am/nano/Capabilities;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/am/nano/Capabilities;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/am/nano/Capabilities;
    .locals 6
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    nop

    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 124
    .local v0, "tag":I
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 128
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_a

    .line 129
    return-object p0

    .line 194
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->vmInfo:Lcom/android/server/am/nano/VMInfo;

    if-nez v1, :cond_0

    .line 195
    new-instance v1, Lcom/android/server/am/nano/VMInfo;

    invoke-direct {v1}, Lcom/android/server/am/nano/VMInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/nano/Capabilities;->vmInfo:Lcom/android/server/am/nano/VMInfo;

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->vmInfo:Lcom/android/server/am/nano/VMInfo;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto/16 :goto_7

    .line 174
    :sswitch_1
    nop

    .line 175
    const/16 v2, 0x1a

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 176
    .local v2, "arrayLength":I
    iget-object v3, p0, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    array-length v3, v3

    .line 177
    .local v3, "i":I
    :goto_1
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/am/nano/FrameworkCapability;

    .line 179
    .local v4, "newArray":[Lcom/android/server/am/nano/FrameworkCapability;
    if-eqz v3, :cond_2

    .line 180
    iget-object v5, p0, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    :cond_2
    :goto_2
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_3

    .line 183
    new-instance v1, Lcom/android/server/am/nano/FrameworkCapability;

    invoke-direct {v1}, Lcom/android/server/am/nano/FrameworkCapability;-><init>()V

    aput-object v1, v4, v3

    .line 184
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 185
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 182
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 188
    :cond_3
    new-instance v1, Lcom/android/server/am/nano/FrameworkCapability;

    invoke-direct {v1}, Lcom/android/server/am/nano/FrameworkCapability;-><init>()V

    aput-object v1, v4, v3

    .line 189
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 190
    iput-object v4, p0, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    .line 191
    goto/16 :goto_7

    .line 154
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/am/nano/FrameworkCapability;
    :sswitch_2
    nop

    .line 155
    const/16 v2, 0x12

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 156
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    array-length v3, v3

    .line 157
    .restart local v3    # "i":I
    :goto_3
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/am/nano/VMCapability;

    .line 159
    .local v4, "newArray":[Lcom/android/server/am/nano/VMCapability;
    if-eqz v3, :cond_5

    .line 160
    iget-object v5, p0, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    :cond_5
    :goto_4
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_6

    .line 163
    new-instance v1, Lcom/android/server/am/nano/VMCapability;

    invoke-direct {v1}, Lcom/android/server/am/nano/VMCapability;-><init>()V

    aput-object v1, v4, v3

    .line 164
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 165
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 162
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 168
    :cond_6
    new-instance v1, Lcom/android/server/am/nano/VMCapability;

    invoke-direct {v1}, Lcom/android/server/am/nano/VMCapability;-><init>()V

    aput-object v1, v4, v3

    .line 169
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 170
    iput-object v4, p0, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    .line 171
    goto :goto_7

    .line 134
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/am/nano/VMCapability;
    :sswitch_3
    nop

    .line 135
    const/16 v2, 0xa

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 136
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    if-nez v3, :cond_7

    move v3, v1

    goto :goto_5

    :cond_7
    iget-object v3, p0, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    array-length v3, v3

    .line 137
    .restart local v3    # "i":I
    :goto_5
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/am/nano/Capability;

    .line 139
    .local v4, "newArray":[Lcom/android/server/am/nano/Capability;
    if-eqz v3, :cond_8

    .line 140
    iget-object v5, p0, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    :cond_8
    :goto_6
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_9

    .line 143
    new-instance v1, Lcom/android/server/am/nano/Capability;

    invoke-direct {v1}, Lcom/android/server/am/nano/Capability;-><init>()V

    aput-object v1, v4, v3

    .line 144
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 145
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 142
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 148
    :cond_9
    new-instance v1, Lcom/android/server/am/nano/Capability;

    invoke-direct {v1}, Lcom/android/server/am/nano/Capability;-><init>()V

    aput-object v1, v4, v3

    .line 149
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 150
    iput-object v4, p0, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    .line 151
    goto :goto_7

    .line 126
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/am/nano/Capability;
    :sswitch_4
    return-object p0

    .line 201
    .end local v0    # "tag":I
    :cond_a
    :goto_7
    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0xa -> :sswitch_3
        0x12 -> :sswitch_2
        0x1a -> :sswitch_1
        0x22 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    aget-object v1, v1, v0

    .line 54
    .local v1, "element":Lcom/android/server/am/nano/Capability;
    if-eqz v1, :cond_0

    .line 55
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 52
    .end local v1    # "element":Lcom/android/server/am/nano/Capability;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 60
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 61
    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    aget-object v1, v1, v0

    .line 62
    .local v1, "element":Lcom/android/server/am/nano/VMCapability;
    if-eqz v1, :cond_2

    .line 63
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 60
    .end local v1    # "element":Lcom/android/server/am/nano/VMCapability;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 67
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 68
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 69
    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    aget-object v1, v1, v0

    .line 70
    .local v1, "element":Lcom/android/server/am/nano/FrameworkCapability;
    if-eqz v1, :cond_4

    .line 71
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 68
    .end local v1    # "element":Lcom/android/server/am/nano/FrameworkCapability;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 75
    .end local v0    # "i":I
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/nano/Capabilities;->vmInfo:Lcom/android/server/am/nano/VMInfo;

    if-eqz v0, :cond_6

    .line 76
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->vmInfo:Lcom/android/server/am/nano/VMInfo;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 78
    :cond_6
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 79
    return-void
.end method
