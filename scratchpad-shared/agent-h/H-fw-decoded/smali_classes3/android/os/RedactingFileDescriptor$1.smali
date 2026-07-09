.class Landroid/os/RedactingFileDescriptor$1;
.super Landroid/os/ProxyFileDescriptorCallback;
.source "RedactingFileDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/RedactingFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/RedactingFileDescriptor;


# direct methods
.method constructor blacklist <init>(Landroid/os/RedactingFileDescriptor;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/RedactingFileDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 149
    iput-object p1, p0, Landroid/os/RedactingFileDescriptor$1;->this$0:Landroid/os/RedactingFileDescriptor;

    invoke-direct {p0}, Landroid/os/ProxyFileDescriptorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onFsync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Landroid/os/RedactingFileDescriptor$1;->this$0:Landroid/os/RedactingFileDescriptor;

    invoke-static {v0}, Landroid/os/RedactingFileDescriptor;->-$$Nest$fgetmInner(Landroid/os/RedactingFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V

    .line 217
    return-void
.end method

.method public whitelist onGetSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Landroid/os/RedactingFileDescriptor$1;->this$0:Landroid/os/RedactingFileDescriptor;

    invoke-static {v0}, Landroid/os/RedactingFileDescriptor;->-$$Nest$fgetmInner(Landroid/os/RedactingFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    iget-wide v0, v0, Landroid/system/StructStat;->st_size:J

    return-wide v0
.end method

.method public whitelist onRead(JI[B)I
    .locals 28
    .param p1, "offset"    # J
    .param p3, "size"    # I
    .param p4, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 157
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    const/4 v0, 0x0

    move v7, v0

    .line 158
    .local v7, "n":I
    :goto_0
    if-ge v7, v4, :cond_1

    .line 160
    :try_start_0
    iget-object v0, v1, Landroid/os/RedactingFileDescriptor$1;->this$0:Landroid/os/RedactingFileDescriptor;

    invoke-static {v0}, Landroid/os/RedactingFileDescriptor;->-$$Nest$fgetmInner(Landroid/os/RedactingFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v5

    sub-int v8, v4, v7

    int-to-long v9, v7

    add-long/2addr v9, v2

    move-object/from16 v6, p4

    invoke-static/range {v5 .. v10}, Landroid/system/Os;->pread(Ljava/io/FileDescriptor;[BIIJ)I

    move-result v0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .local v0, "res":I
    if-nez v0, :cond_0

    .line 162
    goto :goto_2

    .line 164
    :cond_0
    add-int/2addr v7, v0

    .end local v0    # "res":I
    goto :goto_1

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/io/InterruptedIOException;
    iget v5, v0, Ljava/io/InterruptedIOException;->bytesTransferred:I

    add-int/2addr v7, v5

    .line 168
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    :goto_1
    goto :goto_0

    .line 172
    :cond_1
    :goto_2
    iget-object v0, v1, Landroid/os/RedactingFileDescriptor$1;->this$0:Landroid/os/RedactingFileDescriptor;

    invoke-static {v0}, Landroid/os/RedactingFileDescriptor;->-$$Nest$fgetmRedactRanges(Landroid/os/RedactingFileDescriptor;)[J

    move-result-object v0

    .line 173
    .local v0, "ranges":[J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    array-length v6, v0

    if-ge v5, v6, :cond_5

    .line 174
    aget-wide v8, v0, v5

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 175
    .local v8, "start":J
    int-to-long v10, v4

    add-long/2addr v10, v2

    add-int/lit8 v6, v5, 0x1

    aget-wide v12, v0, v6

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 176
    .local v10, "end":J
    move-wide v12, v8

    .local v12, "j":J
    :goto_4
    cmp-long v6, v12, v10

    const/16 v16, 0x0

    if-gez v6, :cond_2

    .line 177
    const-wide/16 v17, 0x1

    sub-long v14, v12, v2

    long-to-int v6, v14

    aput-byte v16, p4, v6

    .line 176
    add-long v12, v12, v17

    goto :goto_4

    :cond_2
    const-wide/16 v17, 0x1

    .line 180
    .end local v12    # "j":J
    iget-object v6, v1, Landroid/os/RedactingFileDescriptor$1;->this$0:Landroid/os/RedactingFileDescriptor;

    invoke-static {v6}, Landroid/os/RedactingFileDescriptor;->-$$Nest$fgetmFreeOffsets(Landroid/os/RedactingFileDescriptor;)[J

    move-result-object v6

    array-length v12, v6

    move/from16 v13, v16

    :goto_5
    if-ge v13, v12, :cond_4

    aget-wide v14, v6, v13

    .line 181
    .local v14, "freeOffset":J
    const-wide/16 v19, 0x4

    move-object/from16 v16, v0

    .end local v0    # "ranges":[J
    .local v16, "ranges":[J
    add-long v0, v14, v19

    .line 182
    .local v0, "freeEnd":J
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v19

    .line 183
    .local v19, "redactFreeStart":J
    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v21

    .line 184
    .local v21, "redactFreeEnd":J
    move-wide/from16 v23, v19

    .local v23, "j":J
    :goto_6
    cmp-long v25, v23, v21

    if-gez v25, :cond_3

    .line 185
    move-wide/from16 v25, v0

    .end local v0    # "freeEnd":J
    .local v25, "freeEnd":J
    sub-long v0, v23, v2

    long-to-int v0, v0

    move/from16 v27, v0

    sub-long v0, v23, v14

    long-to-int v0, v0

    const-string v1, "free"

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, p4, v27

    .line 184
    add-long v23, v23, v17

    move-wide/from16 v0, v25

    goto :goto_6

    .end local v25    # "freeEnd":J
    .restart local v0    # "freeEnd":J
    :cond_3
    move-wide/from16 v25, v0

    .line 180
    .end local v0    # "freeEnd":J
    .end local v14    # "freeOffset":J
    .end local v19    # "redactFreeStart":J
    .end local v21    # "redactFreeEnd":J
    .end local v23    # "j":J
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    goto :goto_5

    .end local v16    # "ranges":[J
    .local v0, "ranges":[J
    :cond_4
    move-object/from16 v16, v0

    .line 173
    .end local v0    # "ranges":[J
    .end local v8    # "start":J
    .end local v10    # "end":J
    .restart local v16    # "ranges":[J
    add-int/lit8 v5, v5, 0x2

    move-object/from16 v1, p0

    goto :goto_3

    .line 189
    .end local v5    # "i":I
    .end local v16    # "ranges":[J
    .restart local v0    # "ranges":[J
    :cond_5
    return v7
.end method

.method public whitelist onRelease()V
    .locals 2

    .line 221
    const-string v0, "RedactingFileDescriptor"

    const-string/jumbo v1, "onRelease()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Landroid/os/RedactingFileDescriptor$1;->this$0:Landroid/os/RedactingFileDescriptor;

    invoke-static {v0}, Landroid/os/RedactingFileDescriptor;->-$$Nest$fgetmInner(Landroid/os/RedactingFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 223
    return-void
.end method

.method public whitelist onWrite(JI[B)I
    .locals 7
    .param p1, "offset"    # J
    .param p3, "size"    # I
    .param p4, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 194
    const/4 v0, 0x0

    move v3, v0

    .line 195
    .local v3, "n":I
    :goto_0
    if-ge v3, p3, :cond_1

    .line 197
    :try_start_0
    iget-object v0, p0, Landroid/os/RedactingFileDescriptor$1;->this$0:Landroid/os/RedactingFileDescriptor;

    invoke-static {v0}, Landroid/os/RedactingFileDescriptor;->-$$Nest$fgetmInner(Landroid/os/RedactingFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1

    sub-int v4, p3, v3

    int-to-long v5, v3

    add-long/2addr v5, p1

    move-object v2, p4

    .end local p4    # "data":[B
    .local v2, "data":[B
    :try_start_1
    invoke-static/range {v1 .. v6}, Landroid/system/Os;->pwrite(Ljava/io/FileDescriptor;[BIIJ)I

    move-result p4
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 198
    .local p4, "res":I
    if-nez p4, :cond_0

    .line 199
    goto :goto_3

    .line 201
    :cond_0
    add-int/2addr v3, p4

    .end local p4    # "res":I
    goto :goto_2

    .line 203
    :catch_0
    move-exception v0

    move-object p4, v0

    goto :goto_1

    .end local v2    # "data":[B
    .local p4, "data":[B
    :catch_1
    move-exception v0

    move-object v2, p4

    move-object p4, v0

    .line 204
    .restart local v2    # "data":[B
    .local p4, "e":Ljava/io/InterruptedIOException;
    :goto_1
    iget v0, p4, Ljava/io/InterruptedIOException;->bytesTransferred:I

    add-int/2addr v3, v0

    .line 205
    .end local p4    # "e":Ljava/io/InterruptedIOException;
    :goto_2
    move-object p4, v2

    goto :goto_0

    .line 195
    .end local v2    # "data":[B
    .local p4, "data":[B
    :cond_1
    move-object v2, p4

    .line 210
    .end local p4    # "data":[B
    .restart local v2    # "data":[B
    :goto_3
    iget-object p4, p0, Landroid/os/RedactingFileDescriptor$1;->this$0:Landroid/os/RedactingFileDescriptor;

    iget-object v0, p0, Landroid/os/RedactingFileDescriptor$1;->this$0:Landroid/os/RedactingFileDescriptor;

    invoke-static {v0}, Landroid/os/RedactingFileDescriptor;->-$$Nest$fgetmRedactRanges(Landroid/os/RedactingFileDescriptor;)[J

    move-result-object v0

    int-to-long v4, v3

    add-long/2addr v4, p1

    invoke-static {v0, p1, p2, v4, v5}, Landroid/os/RedactingFileDescriptor;->removeRange([JJJ)[J

    move-result-object v0

    invoke-static {p4, v0}, Landroid/os/RedactingFileDescriptor;->-$$Nest$fputmRedactRanges(Landroid/os/RedactingFileDescriptor;[J)V

    .line 211
    return v3
.end method
