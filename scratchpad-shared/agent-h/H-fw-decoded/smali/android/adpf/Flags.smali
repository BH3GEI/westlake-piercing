.class public final Landroid/adpf/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static FEATURE_FLAGS:Landroid/adpf/FeatureFlags; = null

.field public static final FLAG_ADPF_VIEWROOTIMPL_ACTION_DOWN_BOOST:Ljava/lang/String; = "android.adpf.adpf_viewrootimpl_action_down_boost"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Landroid/adpf/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/adpf/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/adpf/Flags;->FEATURE_FLAGS:Landroid/adpf/FeatureFlags;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adpfViewrootimplActionDownBoost()Z
    .locals 1

    .line 12
    sget-object v0, Landroid/adpf/Flags;->FEATURE_FLAGS:Landroid/adpf/FeatureFlags;

    invoke-interface {v0}, Landroid/adpf/FeatureFlags;->adpfViewrootimplActionDownBoost()Z

    move-result v0

    return v0
.end method
