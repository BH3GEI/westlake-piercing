.class public final Landroid/media/quality/SoundProfileHandle;
.super Ljava/lang/Object;
.source "SoundProfileHandle.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/quality/SoundProfileHandle;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist NONE:Landroid/media/quality/SoundProfileHandle;


# instance fields
.field private final blacklist mId:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Landroid/media/quality/SoundProfileHandle;

    const-wide/16 v1, -0x3e8

    invoke-direct {v0, v1, v2}, Landroid/media/quality/SoundProfileHandle;-><init>(J)V

    sput-object v0, Landroid/media/quality/SoundProfileHandle;->NONE:Landroid/media/quality/SoundProfileHandle;

    .line 56
    new-instance v0, Landroid/media/quality/SoundProfileHandle$1;

    invoke-direct {v0}, Landroid/media/quality/SoundProfileHandle$1;-><init>()V

    sput-object v0, Landroid/media/quality/SoundProfileHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(J)V
    .locals 0
    .param p1, "id"    # J

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p1, p0, Landroid/media/quality/SoundProfileHandle;->mId:J

    .line 36
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/quality/SoundProfileHandle;->mId:J

    .line 71
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/quality/SoundProfileHandle-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/quality/SoundProfileHandle;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getId()J
    .locals 2

    .line 40
    iget-wide v0, p0, Landroid/media/quality/SoundProfileHandle;->mId:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 46
    iget-wide v0, p0, Landroid/media/quality/SoundProfileHandle;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 47
    return-void
.end method
