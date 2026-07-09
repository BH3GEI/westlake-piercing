.class public final Landroid/credentials/selection/CancelSelectionRequest;
.super Ljava/lang/Object;
.source "CancelSelectionRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/credentials/selection/CancelSelectionRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_CANCEL_UI_REQUEST:Ljava/lang/String; = "android.credentials.selection.extra.CANCEL_UI_REQUEST"


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mShouldShowCancellationExplanation:Z

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 138
    new-instance v0, Landroid/credentials/selection/CancelSelectionRequest$1;

    invoke-direct {v0}, Landroid/credentials/selection/CancelSelectionRequest$1;-><init>()V

    sput-object v0, Landroid/credentials/selection/CancelSelectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/credentials/selection/RequestToken;ZLjava/lang/String;)V
    .locals 1
    .param p1, "requestToken"    # Landroid/credentials/selection/RequestToken;
    .param p2, "shouldShowCancellationExplanation"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-virtual {p1}, Landroid/credentials/selection/RequestToken;->getToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/credentials/selection/CancelSelectionRequest;->mToken:Landroid/os/IBinder;

    .line 113
    iput-boolean p2, p0, Landroid/credentials/selection/CancelSelectionRequest;->mShouldShowCancellationExplanation:Z

    .line 114
    iput-object p3, p0, Landroid/credentials/selection/CancelSelectionRequest;->mPackageName:Ljava/lang/String;

    .line 115
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/credentials/selection/CancelSelectionRequest;->mToken:Landroid/os/IBinder;

    .line 119
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/credentials/selection/CancelSelectionRequest;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/credentials/selection/CancelSelectionRequest;->mShouldShowCancellationExplanation:Z

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/credentials/selection/CancelSelectionRequest;->mPackageName:Ljava/lang/String;

    .line 122
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/credentials/selection/CancelSelectionRequest;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/credentials/selection/CancelSelectionRequest-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/credentials/selection/CancelSelectionRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Landroid/credentials/selection/CancelSelectionRequest;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestToken()Landroid/credentials/selection/RequestToken;
    .locals 2

    .line 79
    new-instance v0, Landroid/credentials/selection/RequestToken;

    iget-object v1, p0, Landroid/credentials/selection/CancelSelectionRequest;->mToken:Landroid/os/IBinder;

    invoke-direct {v0, v1}, Landroid/credentials/selection/RequestToken;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 1

    .line 73
    iget-object v0, p0, Landroid/credentials/selection/CancelSelectionRequest;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public shouldShowCancellationExplanation()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Landroid/credentials/selection/CancelSelectionRequest;->mShouldShowCancellationExplanation:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 127
    iget-object v0, p0, Landroid/credentials/selection/CancelSelectionRequest;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 128
    iget-boolean v0, p0, Landroid/credentials/selection/CancelSelectionRequest;->mShouldShowCancellationExplanation:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 129
    iget-object v0, p0, Landroid/credentials/selection/CancelSelectionRequest;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 130
    return-void
.end method
