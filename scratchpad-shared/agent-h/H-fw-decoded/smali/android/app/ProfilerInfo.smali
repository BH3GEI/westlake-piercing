.class public Landroid/app/ProfilerInfo;
.super Ljava/lang/Object;
.source "ProfilerInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CLOCK_TYPE_DEFAULT:I = 0x0

.field public static final CLOCK_TYPE_DUAL:I = 0x110

.field public static final CLOCK_TYPE_THREAD_CPU:I = 0x100

.field public static final CLOCK_TYPE_WALL:I = 0x10

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ProfilerInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final OUTPUT_VERSION_DEFAULT:I = 0x1

.field public static final PROFILE_TYPE_LOW_OVERHEAD:I = 0x1

.field public static final PROFILE_TYPE_REGULAR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ProfilerInfo"

.field public static final TRACE_FORMAT_VERSION_SHIFT:I = 0x1


# instance fields
.field public final agent:Ljava/lang/String;

.field public final attachAgentDuringBind:Z

.field public final autoStopProfiler:Z

.field public final clockType:I

.field public profileFd:Landroid/os/ParcelFileDescriptor;

.field public final profileFile:Ljava/lang/String;

.field public final profilerOutputVersion:I

.field public final samplingInterval:I

.field public final streamingOutput:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 228
    new-instance v0, Landroid/app/ProfilerInfo$1;

    invoke-direct {v0}, Landroid/app/ProfilerInfo$1;-><init>()V

    sput-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/app/ProfilerInfo;)V
    .locals 1
    .param p1, "in"    # Landroid/app/ProfilerInfo;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iget-object v0, p1, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    .line 117
    iget-object v0, p1, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 118
    iget v0, p1, Landroid/app/ProfilerInfo;->samplingInterval:I

    iput v0, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    .line 119
    iget-boolean v0, p1, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    iput-boolean v0, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    .line 120
    iget-boolean v0, p1, Landroid/app/ProfilerInfo;->streamingOutput:Z

    iput-boolean v0, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    .line 121
    iget-object v0, p1, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    .line 122
    iget-boolean v0, p1, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    iput-boolean v0, p0, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    .line 123
    iget v0, p1, Landroid/app/ProfilerInfo;->clockType:I

    iput v0, p0, Landroid/app/ProfilerInfo;->clockType:I

    .line 124
    iget v0, p1, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    iput v0, p0, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    .line 125
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ProfilerInfo;->clockType:I

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    .line 251
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ProfilerInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ProfilerInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;ZII)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "interval"    # I
    .param p4, "autoStop"    # Z
    .param p5, "streaming"    # Z
    .param p6, "agent"    # Ljava/lang/String;
    .param p7, "attachAgentDuringBind"    # Z
    .param p8, "clockType"    # I
    .param p9, "profilerOutputVersion"    # I

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    .line 105
    iput-object p2, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 106
    iput p3, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    .line 107
    iput-boolean p4, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    .line 108
    iput-boolean p5, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    .line 109
    iput p8, p0, Landroid/app/ProfilerInfo;->clockType:I

    .line 110
    iput-object p6, p0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    .line 111
    iput-boolean p7, p0, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    .line 112
    iput p9, p0, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    .line 113
    return-void
.end method

.method public static getClockTypeFromString(Ljava/lang/String;)I
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .line 134
    const-string/jumbo v0, "thread-cpu"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const/16 v0, 0x100

    return v0

    .line 136
    :cond_0
    const-string/jumbo v0, "wall"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    const/16 v0, 0x10

    return v0

    .line 138
    :cond_1
    const-string v0, "dual"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    const/16 v0, 0x110

    return v0

    .line 141
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static getFlagsForOutputVersion(I)I
    .locals 2
    .param p0, "version"    # I

    .line 152
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    .line 153
    :cond_0
    const/4 p0, 0x1

    .line 158
    :cond_1
    add-int/lit8 v1, p0, -0x1

    shl-int/lit8 v0, v1, 0x1

    return v0
.end method


# virtual methods
.method public closeFd()V
    .locals 3

    .line 175
    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 177
    :try_start_0
    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ProfilerInfo"

    const-string v2, "Failure closing profile fd"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 183
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 187
    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->describeContents()I

    move-result v0

    return v0

    .line 190
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 214
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 215
    .local v0, "token":J
    const-wide v2, 0x10900000001L

    iget-object v4, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 216
    iget-object v2, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_0

    .line 217
    iget-object v2, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 219
    :cond_0
    const-wide v2, 0x10500000003L

    iget v4, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 220
    const-wide v2, 0x10800000004L

    iget-boolean v4, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 221
    const-wide v2, 0x10800000005L

    iget-boolean v4, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 222
    const-wide v2, 0x10900000006L

    iget-object v4, p0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 223
    const-wide v2, 0x10500000007L

    iget v4, p0, Landroid/app/ProfilerInfo;->clockType:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 224
    const-wide v2, 0x10500000008L

    iget v4, p0, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 225
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 226
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 255
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 256
    return v0

    .line 258
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 261
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/ProfilerInfo;

    .line 263
    .local v2, "other":Landroid/app/ProfilerInfo;
    iget-object v3, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    iget-boolean v4, v2, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    iget v4, v2, Landroid/app/ProfilerInfo;->samplingInterval:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    iget-boolean v4, v2, Landroid/app/ProfilerInfo;->streamingOutput:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    .line 266
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/app/ProfilerInfo;->clockType:I

    iget v4, v2, Landroid/app/ProfilerInfo;->clockType:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    iget v4, v2, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 263
    :goto_0
    return v0

    .line 259
    .end local v2    # "other":Landroid/app/ProfilerInfo;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 273
    const/16 v0, 0x11

    .line 274
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 275
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    add-int/2addr v0, v2

    .line 276
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    add-int/2addr v1, v2

    .line 277
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    add-int/2addr v0, v2

    .line 278
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 279
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/ProfilerInfo;->clockType:I

    add-int/2addr v0, v2

    .line 280
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    add-int/2addr v1, v2

    .line 281
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public setAgent(Ljava/lang/String;Z)Landroid/app/ProfilerInfo;
    .locals 10
    .param p1, "agent"    # Ljava/lang/String;
    .param p2, "attachAgentDuringBind"    # Z

    .line 166
    new-instance v0, Landroid/app/ProfilerInfo;

    iget-object v1, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    iget v3, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    iget-boolean v4, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    iget-boolean v5, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    iget v8, p0, Landroid/app/ProfilerInfo;->clockType:I

    iget v9, p0, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    move-object v6, p1

    move v7, p2

    .end local p1    # "agent":Ljava/lang/String;
    .end local p2    # "attachAgentDuringBind":Z
    .local v6, "agent":Ljava/lang/String;
    .local v7, "attachAgentDuringBind":Z
    invoke-direct/range {v0 .. v9}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;ZII)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 196
    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 198
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 201
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    :goto_0
    iget v0, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget-boolean v0, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget-boolean v0, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget-object v0, p0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget-boolean v0, p0, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 208
    iget v0, p0, Landroid/app/ProfilerInfo;->clockType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget v0, p0, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    return-void
.end method
