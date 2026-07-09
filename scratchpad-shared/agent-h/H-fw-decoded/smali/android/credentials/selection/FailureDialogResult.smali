.class public final Landroid/credentials/selection/FailureDialogResult;
.super Landroid/credentials/selection/BaseDialogResult;
.source "FailureDialogResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/credentials/selection/FailureDialogResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXTRA_FAILURE_RESULT:Ljava/lang/String; = "android.credentials.selection.extra.FAILURE_RESULT"


# instance fields
.field private final mErrorMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    new-instance v0, Landroid/credentials/selection/FailureDialogResult$1;

    invoke-direct {v0}, Landroid/credentials/selection/FailureDialogResult$1;-><init>()V

    sput-object v0, Landroid/credentials/selection/FailureDialogResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0
    .param p1, "requestToken"    # Landroid/os/IBinder;
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 65
    invoke-direct {p0, p1}, Landroid/credentials/selection/BaseDialogResult;-><init>(Landroid/os/IBinder;)V

    .line 66
    iput-object p2, p0, Landroid/credentials/selection/FailureDialogResult;->mErrorMessage:Ljava/lang/String;

    .line 67
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 76
    invoke-direct {p0, p1}, Landroid/credentials/selection/BaseDialogResult;-><init>(Landroid/os/Parcel;)V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/credentials/selection/FailureDialogResult;->mErrorMessage:Ljava/lang/String;

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/credentials/selection/FailureDialogResult-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/credentials/selection/FailureDialogResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static addToBundle(Landroid/credentials/selection/FailureDialogResult;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "result"    # Landroid/credentials/selection/FailureDialogResult;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 51
    const-string v0, "android.credentials.selection.extra.FAILURE_RESULT"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 52
    return-void
.end method

.method public static fromResultData(Landroid/os/Bundle;)Landroid/credentials/selection/FailureDialogResult;
    .locals 2
    .param p0, "resultData"    # Landroid/os/Bundle;

    .line 41
    const-string v0, "android.credentials.selection.extra.FAILURE_RESULT"

    const-class v1, Landroid/credentials/selection/FailureDialogResult;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/credentials/selection/FailureDialogResult;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Landroid/credentials/selection/FailureDialogResult;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 82
    invoke-super {p0, p1, p2}, Landroid/credentials/selection/BaseDialogResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 83
    iget-object v0, p0, Landroid/credentials/selection/FailureDialogResult;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 84
    return-void
.end method
