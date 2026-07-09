.class public Landroid/app/CameraCompatTaskInfo;
.super Ljava/lang/Object;
.source "CameraCompatTaskInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/CameraCompatTaskInfo$FreeformCameraCompatMode;
    }
.end annotation


# static fields
.field public static final CAMERA_COMPAT_FREEFORM_LANDSCAPE_DEVICE_IN_LANDSCAPE:I = 0x3

.field public static final CAMERA_COMPAT_FREEFORM_LANDSCAPE_DEVICE_IN_PORTRAIT:I = 0x5

.field public static final CAMERA_COMPAT_FREEFORM_NONE:I = 0x1

.field public static final CAMERA_COMPAT_FREEFORM_PORTRAIT_DEVICE_IN_LANDSCAPE:I = 0x2

.field public static final CAMERA_COMPAT_FREEFORM_PORTRAIT_DEVICE_IN_PORTRAIT:I = 0x4

.field public static final CAMERA_COMPAT_FREEFORM_UNSPECIFIED:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/CameraCompatTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public freeformCameraCompatMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 111
    new-instance v0, Landroid/app/CameraCompatTaskInfo$1;

    invoke-direct {v0}, Landroid/app/CameraCompatTaskInfo$1;-><init>()V

    sput-object v0, Landroid/app/CameraCompatTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-virtual {p0, p1}, Landroid/app/CameraCompatTaskInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 104
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/CameraCompatTaskInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/CameraCompatTaskInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static create()Landroid/app/CameraCompatTaskInfo;
    .locals 1

    .line 99
    new-instance v0, Landroid/app/CameraCompatTaskInfo;

    invoke-direct {v0}, Landroid/app/CameraCompatTaskInfo;-><init>()V

    return-object v0
.end method

.method public static freeformCameraCompatModeToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "freeformCameraCompatMode"    # I

    .line 192
    packed-switch p0, :pswitch_data_0

    .line 203
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected camera compat mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 202
    :pswitch_0
    const-string v0, "app-landscape-device-portrait"

    goto :goto_0

    .line 200
    :pswitch_1
    const-string v0, "app-portrait-device-portrait"

    goto :goto_0

    .line 198
    :pswitch_2
    const-string v0, "app-landscape-device-landscape"

    goto :goto_0

    .line 196
    :pswitch_3
    const-string v0, "app-portrait-device-landscape"

    goto :goto_0

    .line 194
    :pswitch_4
    const-string/jumbo v0, "inactive"

    goto :goto_0

    .line 193
    :pswitch_5
    const-string/jumbo v0, "undefined"

    .line 192
    :goto_0
    return-object v0

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

.method public static getDisplayRotationFromCameraCompatMode(I)I
    .locals 1
    .param p0, "cameraCompatMode"    # I

    .line 179
    packed-switch p0, :pswitch_data_0

    .line 184
    const/4 v0, -0x1

    goto :goto_0

    .line 183
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 181
    :pswitch_1
    const/4 v0, 0x0

    .line 179
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public equalsForCompatUi(Landroid/app/CameraCompatTaskInfo;)Z
    .locals 3
    .param p1, "that"    # Landroid/app/CameraCompatTaskInfo;

    .line 154
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 155
    return v0

    .line 157
    :cond_0
    iget v1, p0, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatMode:I

    iget v2, p1, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatMode:I

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public equalsForTaskOrganizer(Landroid/app/CameraCompatTaskInfo;)Z
    .locals 3
    .param p1, "that"    # Landroid/app/CameraCompatTaskInfo;

    .line 144
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 145
    return v0

    .line 147
    :cond_0
    iget v1, p0, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatMode:I

    iget v2, p1, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatMode:I

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatMode:I

    .line 129
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraCompatTaskInfo { freeformCameraCompatMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatMode:I

    .line 163
    invoke-static {v1}, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 136
    iget v0, p0, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    return-void
.end method
