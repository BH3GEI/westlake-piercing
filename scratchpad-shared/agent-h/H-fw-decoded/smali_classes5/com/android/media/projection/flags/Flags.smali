.class public final Lcom/android/media/projection/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/media/projection/flags/FeatureFlags; = null

.field public static final blacklist FLAG_MEDIA_PROJECTION_CONNECTED_DISPLAY:Ljava/lang/String; = "com.android.media.projection.flags.media_projection_connected_display"

.field public static final blacklist FLAG_MEDIA_PROJECTION_CONNECTED_DISPLAY_NO_VIRTUAL_DEVICE:Ljava/lang/String; = "com.android.media.projection.flags.media_projection_connected_display_no_virtual_device"

.field public static final blacklist FLAG_SHOW_STOP_DIALOG_POST_CALL_END:Ljava/lang/String; = "com.android.media.projection.flags.show_stop_dialog_post_call_end"

.field public static final blacklist FLAG_STOP_MEDIA_PROJECTION_ON_CALL_END:Ljava/lang/String; = "com.android.media.projection.flags.stop_media_projection_on_call_end"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/android/media/projection/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/media/projection/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/media/projection/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/projection/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist mediaProjectionConnectedDisplay()Z
    .locals 1

    .line 18
    sget-object v0, Lcom/android/media/projection/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/projection/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/media/projection/flags/FeatureFlags;->mediaProjectionConnectedDisplay()Z

    move-result v0

    return v0
.end method

.method public static greylist mediaProjectionConnectedDisplayNoVirtualDevice()Z
    .locals 1

    .line 24
    sget-object v0, Lcom/android/media/projection/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/projection/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/media/projection/flags/FeatureFlags;->mediaProjectionConnectedDisplayNoVirtualDevice()Z

    move-result v0

    return v0
.end method

.method public static greylist showStopDialogPostCallEnd()Z
    .locals 1

    .line 30
    sget-object v0, Lcom/android/media/projection/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/projection/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/media/projection/flags/FeatureFlags;->showStopDialogPostCallEnd()Z

    move-result v0

    return v0
.end method

.method public static greylist stopMediaProjectionOnCallEnd()Z
    .locals 1

    .line 36
    sget-object v0, Lcom/android/media/projection/flags/Flags;->FEATURE_FLAGS:Lcom/android/media/projection/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/media/projection/flags/FeatureFlags;->stopMediaProjectionOnCallEnd()Z

    move-result v0

    return v0
.end method
