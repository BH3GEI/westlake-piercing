.class public final Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;
.super Ljava/lang/Object;
.source "AuthenticationSucceededInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

.field private mBuilderFieldsSet:J

.field private mIsStrongBiometric:Z

.field private mRequestReason:I

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/hardware/biometrics/BiometricSourceType;IZI)V
    .locals 3
    .param p1, "biometricSourceType"    # Landroid/hardware/biometrics/BiometricSourceType;
    .param p2, "requestReason"    # I
    .param p3, "isStrongBiometric"    # Z
    .param p4, "userId"    # I

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;->mBuilderFieldsSet:J

    .line 247
    iput-object p1, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 248
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 250
    iput p2, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;->mRequestReason:I

    .line 251
    const-class v0, Landroid/hardware/biometrics/BiometricRequestConstants$RequestReason;

    iget v1, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;->mRequestReason:I

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 253
    iput-boolean p3, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;->mIsStrongBiometric:Z

    .line 254
    iput p4, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;->mUserId:I

    .line 255
    return-void
.end method

.method private checkNotUsed()V
    .locals 4

    .line 316
    iget-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 320
    return-void

    .line 317
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;
    .locals 5

    .line 304
    invoke-direct {p0}, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;->checkNotUsed()V

    .line 305
    iget-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;->mBuilderFieldsSet:J

    .line 307
    new-instance v0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;

    iget-object v1, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    iget v2, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;->mRequestReason:I

    iget-boolean v3, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;->mIsStrongBiometric:Z

    iget v4, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;->mUserId:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;-><init>(Landroid/hardware/biometrics/BiometricSourceType;IZI)V

    .line 312
    .local v0, "o":Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;
    return-object v0
.end method

.method public setBiometricSourceType(Landroid/hardware/biometrics/BiometricSourceType;)Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;
    .locals 4
    .param p1, "value"    # Landroid/hardware/biometrics/BiometricSourceType;

    .line 262
    invoke-direct {p0}, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;->checkNotUsed()V

    .line 263
    iget-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;->mBuilderFieldsSet:J

    .line 264
    iput-object p1, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 265
    return-object p0
.end method

.method public setIsStrongBiometric(Z)Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;
    .locals 4
    .param p1, "value"    # Z

    .line 285
    invoke-direct {p0}, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;->checkNotUsed()V

    .line 286
    iget-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;->mBuilderFieldsSet:J

    .line 287
    iput-boolean p1, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;->mIsStrongBiometric:Z

    .line 288
    return-object p0
.end method

.method public setRequestReason(I)Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;
    .locals 4
    .param p1, "value"    # I

    .line 274
    invoke-direct {p0}, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;->checkNotUsed()V

    .line 275
    iget-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;->mBuilderFieldsSet:J

    .line 276
    iput p1, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;->mRequestReason:I

    .line 277
    return-object p0
.end method

.method public setUserId(I)Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;
    .locals 4
    .param p1, "value"    # I

    .line 296
    invoke-direct {p0}, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;->checkNotUsed()V

    .line 297
    iget-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;->mBuilderFieldsSet:J

    .line 298
    iput p1, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;->mUserId:I

    .line 299
    return-object p0
.end method
