.class public Landroid/app/AppCompatTaskInfo;
.super Ljava/lang/Object;
.source "AppCompatTaskInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppCompatTaskInfo$TopActivityFlag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppCompatTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLAGS_COMPAT_UI_INTERESTED:I = 0x3eb

.field private static final FLAGS_ORGANIZER_INTERESTED:I = 0x3e0

.field private static final FLAG_BASE:I = 0x1

.field private static final FLAG_ELIGIBLE_FOR_LETTERBOX_EDU:I = 0x2

.field private static final FLAG_ELIGIBLE_FOR_USER_ASPECT_RATIO_BUTTON:I = 0x40

.field private static final FLAG_FULLSCREEN_OVERRIDE_SYSTEM:I = 0x80

.field private static final FLAG_FULLSCREEN_OVERRIDE_USER:I = 0x100

.field public static final FLAG_HAS_MIN_ASPECT_RATIO_OVERRIDE:I = 0x200

.field private static final FLAG_IN_SIZE_COMPAT:I = 0x8

.field private static final FLAG_IS_FROM_LETTERBOX_DOUBLE_TAP:I = 0x20

.field private static final FLAG_LETTERBOXED:I = 0x4

.field private static final FLAG_LETTERBOX_DOUBLE_TAP_ENABLED:I = 0x10

.field private static final FLAG_LETTERBOX_EDU_ENABLED:I = 0x1

.field private static final FLAG_UNDEFINED:I


# instance fields
.field public cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

.field private mTopActivityFlags:I

.field public final topActivityAppBounds:Landroid/graphics/Rect;

.field public topActivityLetterboxBounds:Landroid/graphics/Rect;

.field public topActivityLetterboxHeight:I

.field public topActivityLetterboxHorizontalPosition:I

.field public topActivityLetterboxVerticalPosition:I

.field public topActivityLetterboxWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 156
    new-instance v0, Landroid/app/AppCompatTaskInfo$1;

    invoke-direct {v0}, Landroid/app/AppCompatTaskInfo$1;-><init>()V

    sput-object v0, Landroid/app/AppCompatTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    .line 47
    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    .line 53
    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    .line 59
    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    .line 79
    invoke-static {}, Landroid/app/CameraCompatTaskInfo;->create()Landroid/app/CameraCompatTaskInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    .line 140
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    .line 47
    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    .line 53
    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    .line 59
    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    .line 79
    invoke-static {}, Landroid/app/CameraCompatTaskInfo;->create()Landroid/app/CameraCompatTaskInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    .line 148
    invoke-virtual {p0, p1}, Landroid/app/AppCompatTaskInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 149
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/AppCompatTaskInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AppCompatTaskInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static create()Landroid/app/AppCompatTaskInfo;
    .locals 1

    .line 144
    new-instance v0, Landroid/app/AppCompatTaskInfo;

    invoke-direct {v0}, Landroid/app/AppCompatTaskInfo;-><init>()V

    return-object v0
.end method

.method private isTopActivityFlagEnabled(I)Z
    .locals 1
    .param p1, "flag"    # I

    .line 430
    iget v0, p0, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setTopActivityFlag(IZ)V
    .locals 2
    .param p1, "flag"    # I
    .param p2, "enable"    # Z

    .line 426
    iget v0, p0, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    if-eqz p2, :cond_0

    or-int/2addr v0, p1

    goto :goto_0

    :cond_0
    not-int v1, p1

    and-int/2addr v0, v1

    :goto_0
    iput v0, p0, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    .line 427
    return-void
.end method


# virtual methods
.method public clearTopActivityFlags()V
    .locals 1

    .line 333
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    .line 334
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public eligibleForLetterboxEducation()Z
    .locals 1

    .line 203
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result v0

    return v0
.end method

.method public eligibleForUserAspectRatioButton()Z
    .locals 1

    .line 218
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result v0

    return v0
.end method

.method public equalsForCompatUi(Landroid/app/AppCompatTaskInfo;)Z
    .locals 3
    .param p1, "that"    # Landroid/app/AppCompatTaskInfo;

    .line 359
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 360
    return v0

    .line 362
    :cond_0
    iget v1, p0, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    and-int/lit16 v1, v1, 0x3eb

    iget v2, p1, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    and-int/lit16 v2, v2, 0x3eb

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    iget v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    iget v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    iget v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    iget v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    .line 369
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    iget-object v2, p1, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    .line 370
    invoke-virtual {v1, v2}, Landroid/app/CameraCompatTaskInfo;->equalsForCompatUi(Landroid/app/CameraCompatTaskInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 362
    :goto_0
    return v0
.end method

.method public equalsForTaskOrganizer(Landroid/app/AppCompatTaskInfo;)Z
    .locals 3
    .param p1, "that"    # Landroid/app/AppCompatTaskInfo;

    .line 341
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 342
    return v0

    .line 344
    :cond_0
    iget v1, p0, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    and-int/lit16 v1, v1, 0x3e0

    iget v2, p1, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    and-int/lit16 v2, v2, 0x3e0

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    iget v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    iget v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    iget v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    .line 349
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    iget v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    iget-object v2, p1, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    .line 352
    invoke-virtual {v1, v2}, Landroid/app/CameraCompatTaskInfo;->equalsForTaskOrganizer(Landroid/app/CameraCompatTaskInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 344
    :goto_0
    return v0
.end method

.method public hasCompatUI()Z
    .locals 1

    .line 173
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isTopActivityInSizeCompat()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->eligibleForLetterboxEducation()Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isLetterboxDoubleTapEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->eligibleForUserAspectRatioButton()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 173
    :goto_1
    return v0
.end method

.method public hasMinAspectRatioOverride()Z
    .locals 1

    .line 320
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isFromLetterboxDoubleTap()Z
    .locals 1

    .line 246
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isLetterboxDoubleTapEnabled()Z
    .locals 1

    .line 232
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isLetterboxEducationEnabled()Z
    .locals 1

    .line 189
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isSystemFullscreenOverrideEnabled()Z
    .locals 1

    .line 277
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isTopActivityInSizeCompat()Z
    .locals 1

    .line 291
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isTopActivityLetterboxed()Z
    .locals 1

    .line 306
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isTopActivityPillarboxShaped()Z
    .locals 2

    .line 181
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isTopActivityLetterboxed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserFullscreenOverrideEnabled()Z
    .locals 1

    .line 262
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result v0

    return v0
.end method

.method readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    .line 382
    iget-object v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 383
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxBounds:Landroid/graphics/Rect;

    .line 384
    sget-object v0, Landroid/app/CameraCompatTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/CameraCompatTaskInfo;

    iput-object v0, p0, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    .line 385
    return-void
.end method

.method public setEligibleForLetterboxEducation(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 210
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    .line 211
    return-void
.end method

.method public setEligibleForUserAspectRatioButton(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 225
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    .line 226
    return-void
.end method

.method public setHasMinAspectRatioOverride(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 328
    const/16 v0, 0x200

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    .line 329
    return-void
.end method

.method public setIsFromLetterboxDoubleTap(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 254
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    .line 255
    return-void
.end method

.method public setLetterboxDoubleTapEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 239
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    .line 240
    return-void
.end method

.method public setLetterboxEducationEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 196
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    .line 197
    return-void
.end method

.method public setSystemFullscreenOverrideEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 284
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    .line 285
    return-void
.end method

.method public setTopActivityInSizeCompat(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 299
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    .line 300
    return-void
.end method

.method public setTopActivityLetterboxed(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 313
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    .line 314
    return-void
.end method

.method public setUserFullscreenOverrideEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 270
    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    .line 271
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppCompatTaskInfo { topActivityInSizeCompat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isTopActivityInSizeCompat()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " eligibleForLetterboxEducation= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 405
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->eligibleForLetterboxEducation()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isLetterboxEducationEnabled= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 406
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isLetterboxEducationEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isLetterboxDoubleTapEnabled= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 407
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isLetterboxDoubleTapEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " eligibleForUserAspectRatioButton= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 408
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->eligibleForUserAspectRatioButton()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topActivityBoundsLetterboxed= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 409
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isTopActivityLetterboxed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isFromLetterboxDoubleTap= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 410
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isFromLetterboxDoubleTap()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topActivityLetterboxVerticalPosition= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topActivityLetterboxHorizontalPosition= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topActivityLetterboxWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topActivityLetterboxHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topActivityAppBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isUserFullscreenOverrideEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 417
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isUserFullscreenOverrideEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isSystemFullscreenOverrideEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 418
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isSystemFullscreenOverrideEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hasMinAspectRatioOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 419
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->hasMinAspectRatioOverride()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topActivityLetterboxBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cameraCompatTaskInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    .line 421
    invoke-virtual {v1}, Landroid/app/CameraCompatTaskInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 404
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 392
    iget v0, p0, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    iget v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    iget v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    iget v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    iget v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    iget-object v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 398
    iget-object v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 399
    iget-object v0, p0, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 400
    return-void
.end method
