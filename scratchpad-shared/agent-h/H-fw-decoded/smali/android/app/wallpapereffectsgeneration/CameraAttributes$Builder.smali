.class public final Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;
.super Ljava/lang/Object;
.source "CameraAttributes.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wallpapereffectsgeneration/CameraAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAnchorPointInOutputUvSpace:[F

.field private mAnchorPointInWorldSpace:[F

.field private mCameraOrbitPitchDegrees:F

.field private mCameraOrbitYawDegrees:F

.field private mDollyDistanceInWorldSpace:F

.field private mFrustumFarInWorldSpace:F

.field private mFrustumNearInWorldSpace:F

.field private mVerticalFovDegrees:F


# direct methods
.method public constructor <init>([F[F)V
    .locals 0
    .param p1, "anchorPointInWorldSpace"    # [F
    .param p2, "anchorPointInOutputUvSpace"    # [F
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;->mAnchorPointInWorldSpace:[F

    .line 229
    iput-object p2, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;->mAnchorPointInOutputUvSpace:[F

    .line 230
    return-void
.end method


# virtual methods
.method public build()Landroid/app/wallpapereffectsgeneration/CameraAttributes;
    .locals 10

    .line 297
    new-instance v0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;

    iget-object v1, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;->mAnchorPointInWorldSpace:[F

    iget-object v2, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;->mAnchorPointInOutputUvSpace:[F

    iget v3, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;->mCameraOrbitYawDegrees:F

    iget v4, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;->mCameraOrbitPitchDegrees:F

    iget v5, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;->mDollyDistanceInWorldSpace:F

    iget v6, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;->mVerticalFovDegrees:F

    iget v7, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;->mFrustumNearInWorldSpace:F

    iget v8, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;->mFrustumFarInWorldSpace:F

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/app/wallpapereffectsgeneration/CameraAttributes;-><init>([F[FFFFFFFLandroid/app/wallpapereffectsgeneration/CameraAttributes-IA;)V

    return-object v0
.end method

.method public setCameraOrbitPitchDegrees(F)Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;
    .locals 0
    .param p1, "cameraOrbitPitchDegrees"    # F

    .line 248
    iput p1, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;->mCameraOrbitPitchDegrees:F

    .line 249
    return-object p0
.end method

.method public setCameraOrbitYawDegrees(F)Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;
    .locals 0
    .param p1, "cameraOrbitYawDegrees"    # F

    .line 238
    iput p1, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;->mCameraOrbitYawDegrees:F

    .line 239
    return-object p0
.end method

.method public setDollyDistanceInWorldSpace(F)Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;
    .locals 0
    .param p1, "dollyDistanceInWorldSpace"    # F

    .line 257
    iput p1, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;->mDollyDistanceInWorldSpace:F

    .line 258
    return-object p0
.end method

.method public setFrustumFarInWorldSpace(F)Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;
    .locals 0
    .param p1, "frustumFarInWorldSpace"    # F

    .line 288
    iput p1, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;->mFrustumFarInWorldSpace:F

    .line 289
    return-object p0
.end method

.method public setFrustumNearInWorldSpace(F)Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;
    .locals 0
    .param p1, "frustumNearInWorldSpace"    # F

    .line 278
    iput p1, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;->mFrustumNearInWorldSpace:F

    .line 279
    return-object p0
.end method

.method public setVerticalFovDegrees(F)Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;
    .locals 0
    .param p1, "verticalFovDegrees"    # F

    .line 268
    iput p1, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;->mVerticalFovDegrees:F

    .line 269
    return-object p0
.end method
