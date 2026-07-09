.class public final Lcom/android/tradeinmode/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/tradeinmode/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ENABLE_TRADE_IN_MODE:Ljava/lang/String; = "com.android.tradeinmode.flags.enable_trade_in_mode"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/android/tradeinmode/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/tradeinmode/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/tradeinmode/flags/Flags;->FEATURE_FLAGS:Lcom/android/tradeinmode/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist enableTradeInMode()Z
    .locals 1

    .line 12
    sget-object v0, Lcom/android/tradeinmode/flags/Flags;->FEATURE_FLAGS:Lcom/android/tradeinmode/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/tradeinmode/flags/FeatureFlags;->enableTradeInMode()Z

    move-result v0

    return v0
.end method
