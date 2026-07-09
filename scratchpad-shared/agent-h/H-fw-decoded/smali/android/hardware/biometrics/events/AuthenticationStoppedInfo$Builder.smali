.class public final Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;
.super Ljava/lang/Object;
.source "AuthenticationStoppedInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

.field private mBuilderFieldsSet:J

.field private mRequestReason:I


# direct methods
.method public constructor <init>(Landroid/hardware/biometrics/BiometricSourceType;I)V
    .locals 3
    .param p1, "biometricSourceType"    # Landroid/hardware/biometrics/BiometricSourceType;
    .param p2, "requestReason"    # I

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->mBuilderFieldsSet:J

    .line 196
    iput-object p1, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 197
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 199
    iput p2, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->mRequestReason:I

    .line 200
    const-class v0, Landroid/hardware/biometrics/BiometricRequestConstants$RequestReason;

    iget v1, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->mRequestReason:I

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 202
    return-void
.end method

.method private checkNotUsed()V
    .locals 4

    .line 239
    iget-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 243
    return-void

    .line 240
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;
    .locals 4

    .line 229
    invoke-direct {p0}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->checkNotUsed()V

    .line 230
    iget-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->mBuilderFieldsSet:J

    .line 232
    new-instance v0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;

    iget-object v1, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    iget v2, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->mRequestReason:I

    invoke-direct {v0, v1, v2}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;-><init>(Landroid/hardware/biometrics/BiometricSourceType;I)V

    .line 235
    .local v0, "o":Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;
    return-object v0
.end method

.method public setBiometricSourceType(Landroid/hardware/biometrics/BiometricSourceType;)Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;
    .locals 4
    .param p1, "value"    # Landroid/hardware/biometrics/BiometricSourceType;

    .line 209
    invoke-direct {p0}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->checkNotUsed()V

    .line 210
    iget-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->mBuilderFieldsSet:J

    .line 211
    iput-object p1, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 212
    return-object p0
.end method

.method public setRequestReason(I)Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;
    .locals 4
    .param p1, "value"    # I

    .line 221
    invoke-direct {p0}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->checkNotUsed()V

    .line 222
    iget-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->mBuilderFieldsSet:J

    .line 223
    iput p1, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->mRequestReason:I

    .line 224
    return-object p0
.end method
