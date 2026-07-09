.class public final Landroid/app/usage/StorageStats;
.super Ljava/lang/Object;
.source "StorageStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/StorageStats$AppDataType;
    }
.end annotation


# static fields
.field public static final APP_DATA_TYPE_FILE_TYPE_APK:I = 0x3

.field public static final APP_DATA_TYPE_FILE_TYPE_CURRENT_PROFILE:I = 0x2

.field public static final APP_DATA_TYPE_FILE_TYPE_DEXOPT_ARTIFACT:I = 0x0

.field public static final APP_DATA_TYPE_FILE_TYPE_DM:I = 0x4

.field public static final APP_DATA_TYPE_FILE_TYPE_REFERENCE_PROFILE:I = 0x1

.field public static final APP_DATA_TYPE_LIB:I = 0x5

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/usage/StorageStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public apkBytes:J

.field public cacheBytes:J

.field public codeBytes:J

.field public curProfBytes:J

.field public dataBytes:J

.field public dexoptBytes:J

.field public dmBytes:J

.field public externalCacheBytes:J

.field public libBytes:J

.field public refProfBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 249
    new-instance v0, Landroid/app/usage/StorageStats$1;

    invoke-direct {v0}, Landroid/app/usage/StorageStats$1;-><init>()V

    sput-object v0, Landroid/app/usage/StorageStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/StorageStats;->codeBytes:J

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/StorageStats;->dataBytes:J

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/StorageStats;->cacheBytes:J

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/StorageStats;->dexoptBytes:J

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/StorageStats;->refProfBytes:J

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/StorageStats;->curProfBytes:J

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/StorageStats;->apkBytes:J

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/StorageStats;->libBytes:J

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/StorageStats;->dmBytes:J

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/StorageStats;->externalCacheBytes:J

    .line 228
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public getAppBytes()J
    .locals 2

    .line 143
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->codeBytes:J

    return-wide v0
.end method

.method public getAppBytesByDataType(I)J
    .locals 2
    .param p1, "dataType"    # I

    .line 159
    packed-switch p1, :pswitch_data_0

    .line 166
    const-wide/16 v0, 0x0

    return-wide v0

    .line 164
    :pswitch_0
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->libBytes:J

    return-wide v0

    .line 165
    :pswitch_1
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->dmBytes:J

    return-wide v0

    .line 163
    :pswitch_2
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->apkBytes:J

    return-wide v0

    .line 162
    :pswitch_3
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->curProfBytes:J

    return-wide v0

    .line 161
    :pswitch_4
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->refProfBytes:J

    return-wide v0

    .line 160
    :pswitch_5
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->dexoptBytes:J

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCacheBytes()J
    .locals 2

    .line 198
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->cacheBytes:J

    return-wide v0
.end method

.method public getDataBytes()J
    .locals 2

    .line 184
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->dataBytes:J

    return-wide v0
.end method

.method public getExternalCacheBytes()J
    .locals 2

    .line 209
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->externalCacheBytes:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 237
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->codeBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 238
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->dataBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 239
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->cacheBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 240
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->dexoptBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 241
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->refProfBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 242
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->curProfBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 243
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->apkBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 244
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->libBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 245
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->dmBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 246
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->externalCacheBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 247
    return-void
.end method
