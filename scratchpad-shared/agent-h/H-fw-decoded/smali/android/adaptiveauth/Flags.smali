.class public final Landroid/adaptiveauth/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static FEATURE_FLAGS:Landroid/adaptiveauth/FeatureFlags; = null

.field public static final FLAG_ENABLE_ADAPTIVE_AUTH:Ljava/lang/String; = "android.adaptiveauth.enable_adaptive_auth"

.field public static final FLAG_REPORT_BIOMETRIC_AUTH_ATTEMPTS:Ljava/lang/String; = "android.adaptiveauth.report_biometric_auth_attempts"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Landroid/adaptiveauth/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/adaptiveauth/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/adaptiveauth/Flags;->FEATURE_FLAGS:Landroid/adaptiveauth/FeatureFlags;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableAdaptiveAuth()Z
    .locals 1

    .line 14
    sget-object v0, Landroid/adaptiveauth/Flags;->FEATURE_FLAGS:Landroid/adaptiveauth/FeatureFlags;

    invoke-interface {v0}, Landroid/adaptiveauth/FeatureFlags;->enableAdaptiveAuth()Z

    move-result v0

    return v0
.end method

.method public static reportBiometricAuthAttempts()Z
    .locals 1

    .line 20
    sget-object v0, Landroid/adaptiveauth/Flags;->FEATURE_FLAGS:Landroid/adaptiveauth/FeatureFlags;

    invoke-interface {v0}, Landroid/adaptiveauth/FeatureFlags;->reportBiometricAuthAttempts()Z

    move-result v0

    return v0
.end method
