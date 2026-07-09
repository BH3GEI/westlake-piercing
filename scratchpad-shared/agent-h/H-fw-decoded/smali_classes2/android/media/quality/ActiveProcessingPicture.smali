.class public final Landroid/media/quality/ActiveProcessingPicture;
.super Ljava/lang/Object;
.source "ActiveProcessingPicture.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/quality/ActiveProcessingPicture;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mId:I

.field private final blacklist mProfileId:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Landroid/media/quality/ActiveProcessingPicture$1;

    invoke-direct {v0}, Landroid/media/quality/ActiveProcessingPicture$1;-><init>()V

    sput-object v0, Landroid/media/quality/ActiveProcessingPicture;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "profileId"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Landroid/media/quality/ActiveProcessingPicture;->mId:I

    .line 37
    iput-object p2, p0, Landroid/media/quality/ActiveProcessingPicture;->mProfileId:Ljava/lang/String;

    .line 38
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/quality/ActiveProcessingPicture;->mId:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/ActiveProcessingPicture;->mProfileId:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getId()I
    .locals 1

    .line 65
    iget v0, p0, Landroid/media/quality/ActiveProcessingPicture;->mId:I

    return v0
.end method

.method public whitelist getProfileId()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Landroid/media/quality/ActiveProcessingPicture;->mProfileId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 83
    iget v0, p0, Landroid/media/quality/ActiveProcessingPicture;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-object v0, p0, Landroid/media/quality/ActiveProcessingPicture;->mProfileId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    return-void
.end method
