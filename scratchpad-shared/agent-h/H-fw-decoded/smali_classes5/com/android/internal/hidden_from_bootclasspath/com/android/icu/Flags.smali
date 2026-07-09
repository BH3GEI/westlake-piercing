.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/icu/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/icu/FeatureFlags; = null

.field public static final blacklist FLAG_ICU_25Q2_API:Ljava/lang/String; = "com.android.icu.icu_25q2_api"

.field public static final blacklist FLAG_ICU_V_API:Ljava/lang/String; = "com.android.icu.icu_v_api"

.field public static final blacklist FLAG_TELEPHONY_LOOKUP_MCC_EXTENSION:Ljava/lang/String; = "com.android.icu.telephony_lookup_mcc_extension"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/icu/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/icu/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/icu/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/icu/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist icu25q2Api()Z
    .locals 1

    .line 12
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/icu/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/icu/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/icu/FeatureFlags;->icu25q2Api()Z

    move-result v0

    return v0
.end method

.method public static blacklist icuVApi()Z
    .locals 1

    .line 15
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/icu/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/icu/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/icu/FeatureFlags;->icuVApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist telephonyLookupMccExtension()Z
    .locals 1

    .line 18
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/icu/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/icu/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/icu/FeatureFlags;->telephonyLookupMccExtension()Z

    move-result v0

    return v0
.end method
