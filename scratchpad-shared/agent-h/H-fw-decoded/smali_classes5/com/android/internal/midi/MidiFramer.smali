.class public Lcom/android/internal/midi/MidiFramer;
.super Landroid/media/midi/MidiReceiver;
.source "MidiFramer.java"


# instance fields
.field public blacklist TAG:Ljava/lang/String;

.field private blacklist mBuffer:[B

.field private blacklist mCount:I

.field private blacklist mInSysEx:Z

.field private blacklist mNeeded:I

.field private blacklist mReceiver:Landroid/media/midi/MidiReceiver;

.field private blacklist mRunningStatus:B


# direct methods
.method public constructor blacklist <init>(Landroid/media/midi/MidiReceiver;)V
    .locals 1
    .param p1, "receiver"    # Landroid/media/midi/MidiReceiver;

    .line 44
    invoke-direct {p0}, Landroid/media/midi/MidiReceiver;-><init>()V

    .line 36
    const-string v0, "MidiFramer"

    iput-object v0, p0, Lcom/android/internal/midi/MidiFramer;->TAG:Ljava/lang/String;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    .line 45
    iput-object p1, p0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    .line 46
    return-void
.end method

.method public static blacklist formatMidiData([BII)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIDI+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "text":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int v3, p1, v1

    aget-byte v3, p0, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "0x%02X, "

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public whitelist onSend([BIIJ)V
    .locals 14
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "timestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-boolean v0, p0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    if-eqz v0, :cond_0

    move/from16 v0, p2

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 64
    .local v0, "sysExStartOffset":I
    :goto_0
    const/4 v1, 0x0

    move/from16 v4, p2

    move v7, v0

    .end local v0    # "sysExStartOffset":I
    .end local p2    # "offset":I
    .local v1, "i":I
    .local v4, "offset":I
    .local v7, "sysExStartOffset":I
    :goto_1
    move/from16 v0, p3

    if-ge v1, v0, :cond_b

    .line 65
    aget-byte v11, p1, v4

    .line 66
    .local v11, "currentByte":B
    and-int/lit16 v12, v11, 0xff

    .line 67
    .local v12, "currentInt":I
    const/16 v2, 0x80

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-lt v12, v2, :cond_7

    .line 68
    const/16 v2, 0xf0

    if-ge v12, v2, :cond_1

    .line 69
    iput-byte v11, p0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    .line 70
    iput v5, p0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    .line 71
    invoke-static {v11}, Lcom/android/internal/midi/MidiConstants;->getBytesPerMessage(B)I

    move-result v2

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    move v13, v7

    goto/16 :goto_3

    .line 72
    :cond_1
    const/16 v6, 0xf8

    if-ge v12, v6, :cond_5

    .line 73
    if-ne v12, v2, :cond_2

    .line 75
    iput-boolean v5, p0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    .line 76
    move v2, v4

    move v7, v2

    .end local v7    # "sysExStartOffset":I
    .local v2, "sysExStartOffset":I
    goto/16 :goto_4

    .line 77
    .end local v2    # "sysExStartOffset":I
    .restart local v7    # "sysExStartOffset":I
    :cond_2
    const/16 v2, 0xf7

    if-ne v12, v2, :cond_4

    .line 79
    iget-boolean v2, p0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    if-eqz v2, :cond_3

    .line 80
    move v2, v5

    iget-object v5, p0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    sub-int v6, v4, v7

    add-int/lit8 v8, v6, 0x1

    move-object v6, p1

    move-wide/from16 v9, p4

    invoke-virtual/range {v5 .. v10}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 82
    iput-boolean v3, p0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    .line 83
    const/4 v2, -0x1

    move v7, v2

    .end local v7    # "sysExStartOffset":I
    .restart local v2    # "sysExStartOffset":I
    goto/16 :goto_4

    .line 79
    .end local v2    # "sysExStartOffset":I
    .restart local v7    # "sysExStartOffset":I
    :cond_3
    move v13, v7

    goto/16 :goto_3

    .line 86
    :cond_4
    move v2, v5

    iget-object v5, p0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    aput-byte v11, v5, v3

    .line 87
    iput-byte v3, p0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    .line 88
    iput v2, p0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    .line 89
    invoke-static {v11}, Lcom/android/internal/midi/MidiConstants;->getBytesPerMessage(B)I

    move-result v3

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    move v13, v7

    goto :goto_3

    .line 93
    :cond_5
    iget-boolean v2, p0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    if-eqz v2, :cond_6

    .line 94
    iget-object v5, p0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    sub-int v8, v4, v7

    move-object v6, p1

    move-wide/from16 v9, p4

    invoke-virtual/range {v5 .. v10}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 96
    move v13, v7

    .end local v7    # "sysExStartOffset":I
    .local v13, "sysExStartOffset":I
    add-int/lit8 v7, v4, 0x1

    move v13, v7

    .end local v13    # "sysExStartOffset":I
    .restart local v7    # "sysExStartOffset":I
    goto :goto_2

    .line 93
    :cond_6
    move v13, v7

    .line 98
    .end local v7    # "sysExStartOffset":I
    .restart local v13    # "sysExStartOffset":I
    :goto_2
    iget-object v2, p0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    const/4 v5, 0x1

    move-object v3, p1

    move-wide/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    move v7, v13

    goto :goto_4

    .line 101
    .end local v13    # "sysExStartOffset":I
    .restart local v7    # "sysExStartOffset":I
    :cond_7
    move v2, v5

    move v13, v7

    .end local v7    # "sysExStartOffset":I
    .restart local v13    # "sysExStartOffset":I
    iget-boolean v5, p0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    if-nez v5, :cond_a

    .line 104
    iget v5, p0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    if-gtz v5, :cond_8

    .line 105
    goto :goto_5

    .line 108
    :cond_8
    iget-object v5, p0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    iget v6, p0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    aput-byte v11, v5, v6

    .line 109
    iget v5, p0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    sub-int/2addr v5, v2

    iput v5, p0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    if-nez v5, :cond_a

    .line 110
    iget-byte v5, p0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    if-eqz v5, :cond_9

    .line 111
    iget-object v5, p0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    iget-byte v6, p0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    aput-byte v6, v5, v3

    .line 113
    :cond_9
    iget-object v5, p0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    iget-object v6, p0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    move-wide/from16 v9, p4

    invoke-virtual/range {v5 .. v10}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 114
    iget-object v5, p0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    aget-byte v3, v5, v3

    invoke-static {v3}, Lcom/android/internal/midi/MidiConstants;->getBytesPerMessage(B)I

    move-result v3

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    .line 115
    iput v2, p0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    .line 119
    :cond_a
    :goto_3
    move v7, v13

    .end local v13    # "sysExStartOffset":I
    .restart local v7    # "sysExStartOffset":I
    :goto_4
    nop

    .end local v11    # "currentByte":B
    .end local v12    # "currentInt":I
    add-int/lit8 v4, v4, 0x1

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_b
    move v13, v7

    .line 123
    .end local v1    # "i":I
    .end local v7    # "sysExStartOffset":I
    .restart local v13    # "sysExStartOffset":I
    :goto_5
    if-ltz v13, :cond_c

    if-ge v13, v4, :cond_c

    .line 124
    iget-object v5, p0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    sub-int v8, v4, v13

    move-object v6, p1

    move-wide/from16 v9, p4

    move v7, v13

    .end local v13    # "sysExStartOffset":I
    .restart local v7    # "sysExStartOffset":I
    invoke-virtual/range {v5 .. v10}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    goto :goto_6

    .line 123
    .end local v7    # "sysExStartOffset":I
    .restart local v13    # "sysExStartOffset":I
    :cond_c
    move v7, v13

    .line 127
    .end local v13    # "sysExStartOffset":I
    .restart local v7    # "sysExStartOffset":I
    :goto_6
    return-void
.end method
