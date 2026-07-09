.class public Landroid/hardware/fingerprint/FingerprintCallback;
.super Ljava/lang/Object;
.source "FingerprintCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/FingerprintCallback$RemoveRequest;
    }
.end annotation


# static fields
.field public static final blacklist REMOVE_ALL:I = 0x2

.field public static final blacklist REMOVE_SINGLE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "FingerprintCallback"


# instance fields
.field private blacklist mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private blacklist mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

.field private blacklist mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

.field private blacklist mFingerprintDetectionCallback:Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;

.field private blacklist mGenerateChallengeCallback:Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;

.field private blacklist mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

.field private blacklist mRemoveFingerprint:Landroid/hardware/fingerprint/Fingerprint;

.field private blacklist mRemoveRequest:I


# direct methods
.method constructor blacklist <init>(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)V
    .locals 0
    .param p1, "authenticationCallback"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .param p2, "cryptoObject"    # Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    .line 75
    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    .line 76
    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;)V
    .locals 0
    .param p1, "enrollmentCallback"    # Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    .line 90
    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;)V
    .locals 0
    .param p1, "fingerprintDetectionCallback"    # Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mFingerprintDetectionCallback:Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;

    .line 83
    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V
    .locals 0
    .param p1, "generateChallengeCallback"    # Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mGenerateChallengeCallback:Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;

    .line 97
    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;ILandroid/hardware/fingerprint/Fingerprint;)V
    .locals 0
    .param p1, "removalCallback"    # Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
    .param p2, "removeRequest"    # I
    .param p3, "removeFingerprint"    # Landroid/hardware/fingerprint/Fingerprint;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    .line 105
    iput p2, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mRemoveRequest:I

    .line 106
    iput-object p3, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mRemoveFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    .line 107
    return-void
.end method


# virtual methods
.method public blacklist sendAcquiredResult(Landroid/content/Context;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "acquireInfo"    # I
    .param p3, "vendorCode"    # I

    .line 185
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    invoke-virtual {v0, p2}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationAcquired(I)V

    .line 188
    :cond_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    const/4 v1, 0x7

    if-eqz v0, :cond_2

    if-eq p2, v1, :cond_2

    .line 189
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    if-nez p2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onAcquired(Z)V

    .line 191
    :cond_2
    invoke-static {p1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "msg":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 193
    return-void

    .line 196
    :cond_3
    const/4 v2, 0x6

    if-ne p2, v2, :cond_4

    .line 197
    add-int/lit16 v2, p3, 0x3e8

    goto :goto_1

    :cond_4
    move v2, p2

    .line 198
    .local v2, "clientInfo":I
    :goto_1
    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    if-eqz v3, :cond_5

    .line 199
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    goto :goto_2

    .line 200
    :cond_5
    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    if-eqz v3, :cond_6

    .line 201
    if-eq p2, v1, :cond_6

    .line 202
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    .line 205
    :cond_6
    :goto_2
    return-void
.end method

.method public blacklist sendAuthenticatedFailed()V
    .locals 1

    .line 173
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationFailed()V

    .line 176
    :cond_0
    return-void
.end method

.method public blacklist sendAuthenticatedSucceeded(Landroid/hardware/fingerprint/Fingerprint;IZ)V
    .locals 2
    .param p1, "fingerprint"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "userId"    # I
    .param p3, "isStrongBiometric"    # Z

    .line 159
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    if-nez v0, :cond_0

    .line 160
    const-string v0, "FingerprintCallback"

    const-string v1, "Authentication succeeded but callback is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void

    .line 164
    :cond_0
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    invoke-direct {v0, v1, p1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;-><init>(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/hardware/fingerprint/Fingerprint;IZ)V

    .line 166
    .local v0, "result":Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    invoke-virtual {v1, v0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    .line 167
    return-void
.end method

.method public blacklist sendChallengeGenerated(JII)V
    .locals 2
    .param p1, "challenge"    # J
    .param p3, "sensorId"    # I
    .param p4, "userId"    # I

    .line 239
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mGenerateChallengeCallback:Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;

    if-nez v0, :cond_0

    .line 240
    const-string v0, "FingerprintCallback"

    const-string v1, "sendChallengeGenerated, callback null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mGenerateChallengeCallback:Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;

    invoke-interface {v0, p3, p4, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;->onChallengeGenerated(IIJ)V

    .line 244
    return-void
.end method

.method public blacklist sendEnrollResult(I)V
    .locals 1
    .param p1, "remaining"    # I

    .line 114
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentProgress(I)V

    .line 117
    :cond_0
    return-void
.end method

.method public blacklist sendErrorResult(Landroid/content/Context;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errMsgId"    # I
    .param p3, "vendorCode"    # I

    .line 215
    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    .line 216
    add-int/lit16 v0, p3, 0x3e8

    goto :goto_0

    :cond_0
    move v0, p2

    .line 217
    .local v0, "clientErrMsgId":I
    :goto_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    if-eqz v1, :cond_1

    .line 218
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    .line 219
    invoke-static {p1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-virtual {v1, v0, v2}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 220
    :cond_1
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    if-eqz v1, :cond_2

    .line 221
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    .line 222
    invoke-static {p1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    .line 221
    invoke-virtual {v1, v0, v2}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 223
    :cond_2
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    if-eqz v1, :cond_3

    .line 224
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mRemoveFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    .line 225
    invoke-static {p1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    .line 224
    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;->onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 226
    :cond_3
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mFingerprintDetectionCallback:Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;

    if-eqz v1, :cond_4

    .line 227
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mFingerprintDetectionCallback:Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;

    invoke-interface {v1, p2}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;->onDetectionError(I)V

    .line 228
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mFingerprintDetectionCallback:Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;

    .line 230
    :cond_4
    :goto_1
    return-void
.end method

.method public blacklist sendFingerprintDetected(IIZ)V
    .locals 2
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "isStrongBiometric"    # Z

    .line 253
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mFingerprintDetectionCallback:Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;

    if-nez v0, :cond_0

    .line 254
    const-string v0, "FingerprintCallback"

    const-string v1, "sendFingerprintDetected, callback null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mFingerprintDetectionCallback:Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;->onFingerprintDetected(IIZ)V

    .line 258
    return-void
.end method

.method public blacklist sendRemovedResult(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 5
    .param p1, "fingerprint"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "remaining"    # I

    .line 125
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    if-nez v0, :cond_0

    .line 126
    return-void

    .line 129
    :cond_0
    iget v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mRemoveRequest:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 130
    const-string v0, "FingerprintCallback"

    if-nez p1, :cond_1

    .line 131
    const-string v1, "Received MSG_REMOVED, but fingerprint is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void

    .line 135
    :cond_1
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mRemoveFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    if-nez v1, :cond_2

    .line 136
    const-string v1, "Missing fingerprint"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void

    .line 140
    :cond_2
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v1

    .line 141
    .local v1, "fingerId":I
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mRemoveFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v2

    .line 142
    .local v2, "reqFingerId":I
    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_3

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finger id didn\'t match: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void

    .line 148
    .end local v1    # "fingerId":I
    .end local v2    # "reqFingerId":I
    :cond_3
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;->onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;I)V

    .line 149
    return-void
.end method

.method public blacklist sendUdfpsOverlayShown()V
    .locals 1

    .line 295
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onUdfpsOverlayShown()V

    .line 298
    :cond_0
    return-void
.end method

.method public blacklist sendUdfpsPointerDown(I)V
    .locals 2
    .param p1, "sensorId"    # I

    .line 265
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    if-nez v0, :cond_0

    .line 266
    const-string v0, "FingerprintCallback"

    const-string v1, "sendUdfpsPointerDown, callback null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 268
    :cond_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onUdfpsPointerDown(I)V

    .line 271
    :goto_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onUdfpsPointerDown(I)V

    .line 274
    :cond_1
    return-void
.end method

.method public blacklist sendUdfpsPointerUp(I)V
    .locals 2
    .param p1, "sensorId"    # I

    .line 281
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    if-nez v0, :cond_0

    .line 282
    const-string v0, "FingerprintCallback"

    const-string v1, "sendUdfpsPointerUp, callback null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 284
    :cond_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onUdfpsPointerUp(I)V

    .line 286
    :goto_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCallback;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onUdfpsPointerUp(I)V

    .line 289
    :cond_1
    return-void
.end method
