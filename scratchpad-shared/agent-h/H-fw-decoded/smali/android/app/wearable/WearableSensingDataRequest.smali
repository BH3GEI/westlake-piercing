.class public final Landroid/app/wearable/WearableSensingDataRequest;
.super Ljava/lang/Object;
.source "WearableSensingDataRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/wearable/WearableSensingDataRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/wearable/WearableSensingDataRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_REQUEST_SIZE:I = 0xc8

.field private static final RATE_LIMIT:I = 0x1e

.field private static final RATE_LIMIT_WINDOW_SIZE:Ljava/time/Duration;

.field public static final REQUEST_BUNDLE_KEY:Ljava/lang/String; = "android.app.wearable.WearableSensingDataRequestBundleKey"

.field public static final REQUEST_STATUS_CALLBACK_BUNDLE_KEY:Ljava/lang/String; = "android.app.wearable.WearableSensingDataRequestStatusCallbackBundleKey"


# instance fields
.field private final mDataType:I

.field private final mRequestDetails:Landroid/os/PersistableBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Landroid/app/wearable/WearableSensingDataRequest;->RATE_LIMIT_WINDOW_SIZE:Ljava/time/Duration;

    .line 122
    new-instance v0, Landroid/app/wearable/WearableSensingDataRequest$1;

    invoke-direct {v0}, Landroid/app/wearable/WearableSensingDataRequest$1;-><init>()V

    sput-object v0, Landroid/app/wearable/WearableSensingDataRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ILandroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "dataType"    # I
    .param p2, "requestDetails"    # Landroid/os/PersistableBundle;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Landroid/app/wearable/WearableSensingDataRequest;->mDataType:I

    .line 43
    iput-object p2, p0, Landroid/app/wearable/WearableSensingDataRequest;->mRequestDetails:Landroid/os/PersistableBundle;

    .line 44
    return-void
.end method

.method synthetic constructor <init>(ILandroid/os/PersistableBundle;Landroid/app/wearable/WearableSensingDataRequest-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/wearable/WearableSensingDataRequest;-><init>(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method public static getMaxRequestSize()I
    .locals 1

    .line 144
    const/16 v0, 0xc8

    return v0
.end method

.method public static getRateLimit()I
    .locals 1

    .line 161
    const/16 v0, 0x1e

    return v0
.end method

.method public static getRateLimitWindowSize()Ljava/time/Duration;
    .locals 1

    .line 153
    sget-object v0, Landroid/app/wearable/WearableSensingDataRequest;->RATE_LIMIT_WINDOW_SIZE:Ljava/time/Duration;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public getDataSize()I
    .locals 2

    .line 59
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 61
    .local v0, "parcel":Landroid/os/Parcel;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/wearable/WearableSensingDataRequest;->describeContents()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/app/wearable/WearableSensingDataRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 62
    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 62
    return v1

    .line 64
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 65
    throw v1
.end method

.method public getDataType()I
    .locals 1

    .line 48
    iget v0, p0, Landroid/app/wearable/WearableSensingDataRequest;->mDataType:I

    return v0
.end method

.method public getRequestDetails()Landroid/os/PersistableBundle;
    .locals 1

    .line 54
    iget-object v0, p0, Landroid/app/wearable/WearableSensingDataRequest;->mRequestDetails:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public toExpandedString()Ljava/lang/String;
    .locals 2

    .line 96
    iget-object v0, p0, Landroid/app/wearable/WearableSensingDataRequest;->mRequestDetails:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Landroid/app/wearable/WearableSensingDataRequest;->mRequestDetails:Landroid/os/PersistableBundle;

    .line 99
    const-string v1, "PlaceholderForWearableSensingDataRequest#toExpandedString()"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    .line 102
    :cond_0
    invoke-virtual {p0}, Landroid/app/wearable/WearableSensingDataRequest;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WearableSensingDataRequest { dataType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/wearable/WearableSensingDataRequest;->mDataType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestDetails = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/wearable/WearableSensingDataRequest;->mRequestDetails:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 70
    iget v0, p0, Landroid/app/wearable/WearableSensingDataRequest;->mDataType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-object v0, p0, Landroid/app/wearable/WearableSensingDataRequest;->mRequestDetails:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 72
    return-void
.end method
