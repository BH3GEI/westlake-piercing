.class public final Landroid/aconfig/nano/Aconfig$flag_values;
.super Landroid/internal/framework/protobuf/nano/MessageNano;
.source "Aconfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/aconfig/nano/Aconfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "flag_values"
.end annotation


# static fields
.field private static volatile _emptyArray:[Landroid/aconfig/nano/Aconfig$flag_values;


# instance fields
.field public flagValue:[Landroid/aconfig/nano/Aconfig$flag_value;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 618
    invoke-direct {p0}, Landroid/internal/framework/protobuf/nano/MessageNano;-><init>()V

    .line 619
    invoke-virtual {p0}, Landroid/aconfig/nano/Aconfig$flag_values;->clear()Landroid/aconfig/nano/Aconfig$flag_values;

    .line 620
    return-void
.end method

.method public static emptyArray()[Landroid/aconfig/nano/Aconfig$flag_values;
    .locals 2

    .line 604
    sget-object v0, Landroid/aconfig/nano/Aconfig$flag_values;->_emptyArray:[Landroid/aconfig/nano/Aconfig$flag_values;

    if-nez v0, :cond_1

    .line 605
    sget-object v0, Landroid/internal/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 607
    :try_start_0
    sget-object v1, Landroid/aconfig/nano/Aconfig$flag_values;->_emptyArray:[Landroid/aconfig/nano/Aconfig$flag_values;

    if-nez v1, :cond_0

    .line 608
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/aconfig/nano/Aconfig$flag_values;

    sput-object v1, Landroid/aconfig/nano/Aconfig$flag_values;->_emptyArray:[Landroid/aconfig/nano/Aconfig$flag_values;

    .line 610
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 612
    :cond_1
    :goto_0
    sget-object v0, Landroid/aconfig/nano/Aconfig$flag_values;->_emptyArray:[Landroid/aconfig/nano/Aconfig$flag_values;

    return-object v0
.end method

.method public static parseFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$flag_values;
    .locals 1
    .param p0, "input"    # Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 704
    new-instance v0, Landroid/aconfig/nano/Aconfig$flag_values;

    invoke-direct {v0}, Landroid/aconfig/nano/Aconfig$flag_values;-><init>()V

    invoke-virtual {v0, p0}, Landroid/aconfig/nano/Aconfig$flag_values;->mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$flag_values;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Landroid/aconfig/nano/Aconfig$flag_values;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 698
    new-instance v0, Landroid/aconfig/nano/Aconfig$flag_values;

    invoke-direct {v0}, Landroid/aconfig/nano/Aconfig$flag_values;-><init>()V

    invoke-static {v0, p0}, Landroid/internal/framework/protobuf/nano/MessageNano;->mergeFrom(Landroid/internal/framework/protobuf/nano/MessageNano;[B)Landroid/internal/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Landroid/aconfig/nano/Aconfig$flag_values;

    return-object v0
.end method


# virtual methods
.method public clear()Landroid/aconfig/nano/Aconfig$flag_values;
    .locals 1

    .line 623
    invoke-static {}, Landroid/aconfig/nano/Aconfig$flag_value;->emptyArray()[Landroid/aconfig/nano/Aconfig$flag_value;

    move-result-object v0

    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_values;->flagValue:[Landroid/aconfig/nano/Aconfig$flag_value;

    .line 624
    const/4 v0, -0x1

    iput v0, p0, Landroid/aconfig/nano/Aconfig$flag_values;->cachedSize:I

    .line 625
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .line 644
    invoke-super {p0}, Landroid/internal/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 645
    .local v0, "size":I
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_values;->flagValue:[Landroid/aconfig/nano/Aconfig$flag_value;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_values;->flagValue:[Landroid/aconfig/nano/Aconfig$flag_value;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 646
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/aconfig/nano/Aconfig$flag_values;->flagValue:[Landroid/aconfig/nano/Aconfig$flag_value;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 647
    iget-object v2, p0, Landroid/aconfig/nano/Aconfig$flag_values;->flagValue:[Landroid/aconfig/nano/Aconfig$flag_value;

    aget-object v2, v2, v1

    .line 648
    .local v2, "element":Landroid/aconfig/nano/Aconfig$flag_value;
    if-eqz v2, :cond_0

    .line 649
    nop

    .line 650
    const/4 v3, 0x1

    invoke-static {v3, v2}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILandroid/internal/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    .line 646
    .end local v2    # "element":Landroid/aconfig/nano/Aconfig$flag_value;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 654
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$flag_values;
    .locals 6
    .param p1, "input"    # Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 662
    nop

    :goto_0
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 663
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 667
    invoke-static {p1, v0}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 668
    return-object p0

    .line 673
    :sswitch_0
    nop

    .line 674
    const/16 v1, 0xa

    invoke-static {p1, v1}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 675
    .local v1, "arrayLength":I
    iget-object v2, p0, Landroid/aconfig/nano/Aconfig$flag_values;->flagValue:[Landroid/aconfig/nano/Aconfig$flag_value;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    iget-object v2, p0, Landroid/aconfig/nano/Aconfig$flag_values;->flagValue:[Landroid/aconfig/nano/Aconfig$flag_value;

    array-length v2, v2

    .line 676
    .local v2, "i":I
    :goto_1
    add-int v4, v2, v1

    new-array v4, v4, [Landroid/aconfig/nano/Aconfig$flag_value;

    .line 678
    .local v4, "newArray":[Landroid/aconfig/nano/Aconfig$flag_value;
    if-eqz v2, :cond_1

    .line 679
    iget-object v5, p0, Landroid/aconfig/nano/Aconfig$flag_values;->flagValue:[Landroid/aconfig/nano/Aconfig$flag_value;

    invoke-static {v5, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 681
    :cond_1
    :goto_2
    array-length v3, v4

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 682
    new-instance v3, Landroid/aconfig/nano/Aconfig$flag_value;

    invoke-direct {v3}, Landroid/aconfig/nano/Aconfig$flag_value;-><init>()V

    aput-object v3, v4, v2

    .line 683
    aget-object v3, v4, v2

    invoke-virtual {p1, v3}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Landroid/internal/framework/protobuf/nano/MessageNano;)V

    .line 684
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 681
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 687
    :cond_2
    new-instance v3, Landroid/aconfig/nano/Aconfig$flag_value;

    invoke-direct {v3}, Landroid/aconfig/nano/Aconfig$flag_value;-><init>()V

    aput-object v3, v4, v2

    .line 688
    aget-object v3, v4, v2

    invoke-virtual {p1, v3}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Landroid/internal/framework/protobuf/nano/MessageNano;)V

    .line 689
    iput-object v4, p0, Landroid/aconfig/nano/Aconfig$flag_values;->flagValue:[Landroid/aconfig/nano/Aconfig$flag_value;

    .line 690
    goto :goto_3

    .line 665
    .end local v1    # "arrayLength":I
    .end local v2    # "i":I
    .end local v4    # "newArray":[Landroid/aconfig/nano/Aconfig$flag_value;
    :sswitch_1
    return-object p0

    .line 693
    .end local v0    # "tag":I
    :cond_3
    :goto_3
    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xa -> :sswitch_0
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

    .line 598
    invoke-virtual {p0, p1}, Landroid/aconfig/nano/Aconfig$flag_values;->mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$flag_values;

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

    .line 631
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_values;->flagValue:[Landroid/aconfig/nano/Aconfig$flag_value;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$flag_values;->flagValue:[Landroid/aconfig/nano/Aconfig$flag_value;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 632
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_values;->flagValue:[Landroid/aconfig/nano/Aconfig$flag_value;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 633
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$flag_values;->flagValue:[Landroid/aconfig/nano/Aconfig$flag_value;

    aget-object v1, v1, v0

    .line 634
    .local v1, "element":Landroid/aconfig/nano/Aconfig$flag_value;
    if-eqz v1, :cond_0

    .line 635
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILandroid/internal/framework/protobuf/nano/MessageNano;)V

    .line 632
    .end local v1    # "element":Landroid/aconfig/nano/Aconfig$flag_value;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 639
    .end local v0    # "i":I
    :cond_1
    invoke-super {p0, p1}, Landroid/internal/framework/protobuf/nano/MessageNano;->writeTo(Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 640
    return-void
.end method
