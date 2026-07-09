.class public abstract Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EnrollmentCallback"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAcquired(Z)V
    .locals 0
    .param p1, "isAcquiredGood"    # Z

    .line 482
    return-void
.end method

.method public greylist-max-o onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .line 458
    return-void
.end method

.method public greylist-max-o onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "helpMsgId"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .line 468
    return-void
.end method

.method public greylist-max-o onEnrollmentProgress(I)V
    .locals 0
    .param p1, "remaining"    # I

    .line 476
    return-void
.end method

.method public blacklist onUdfpsOverlayShown()V
    .locals 0

    .line 497
    return-void
.end method

.method public blacklist onUdfpsPointerDown(I)V
    .locals 0
    .param p1, "sensorId"    # I

    .line 487
    return-void
.end method

.method public blacklist onUdfpsPointerUp(I)V
    .locals 0
    .param p1, "sensorId"    # I

    .line 492
    return-void
.end method
