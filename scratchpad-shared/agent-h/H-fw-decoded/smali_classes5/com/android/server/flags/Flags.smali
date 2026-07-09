.class public final Lcom/android/server/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/server/flags/FeatureFlags; = null

.field public static final blacklist FLAG_CERTPININSTALLER_REMOVAL:Ljava/lang/String; = "com.android.server.flags.certpininstaller_removal"

.field public static final blacklist FLAG_CONSOLIDATE_BATTERY_CHANGE_EVENTS:Ljava/lang/String; = "com.android.server.flags.consolidate_battery_change_events"

.field public static final blacklist FLAG_DATETIME_NOTIFICATIONS:Ljava/lang/String; = "com.android.server.flags.datetime_notifications"

.field public static final blacklist FLAG_DISABLE_SYSTEM_COMPACTION:Ljava/lang/String; = "com.android.server.flags.disable_system_compaction"

.field public static final blacklist FLAG_EARLY_DATA_MANAGER_INIT:Ljava/lang/String; = "com.android.server.flags.early_data_manager_init"

.field public static final blacklist FLAG_ENABLE_ODP_FEATURE_GUARD:Ljava/lang/String; = "com.android.server.flags.enable_odp_feature_guard"

.field public static final blacklist FLAG_MODIFIER_SHORTCUT_MANAGER_MULTIUSER:Ljava/lang/String; = "com.android.server.flags.modifier_shortcut_manager_multiuser"

.field public static final blacklist FLAG_NEW_BUGREPORT_KEYBOARD_SHORTCUT:Ljava/lang/String; = "com.android.server.flags.new_bugreport_keyboard_shortcut"

.field public static final blacklist FLAG_OPTIONAL_BACKGROUND_INSTALL_CONTROL:Ljava/lang/String; = "com.android.server.flags.optional_background_install_control"

.field public static final blacklist FLAG_PIN_GLOBAL_QUOTA:Ljava/lang/String; = "com.android.server.flags.pin_global_quota"

.field public static final blacklist FLAG_PIN_WEBVIEW:Ljava/lang/String; = "com.android.server.flags.pin_webview"

.field public static final blacklist FLAG_PKG_TARGETED_BATTERY_CHANGED_NOT_STICKY:Ljava/lang/String; = "com.android.server.flags.pkg_targeted_battery_changed_not_sticky"

.field public static final blacklist FLAG_RATE_LIMIT_BATTERY_CHANGED_BROADCAST:Ljava/lang/String; = "com.android.server.flags.rate_limit_battery_changed_broadcast"

.field public static final blacklist FLAG_TRACE_BATTERY_CHANGED_BROADCAST_EVENT:Ljava/lang/String; = "com.android.server.flags.trace_battery_changed_broadcast_event"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 119
    new-instance v0, Lcom/android/server/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/server/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/server/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist certpininstallerRemoval()Z
    .locals 1

    .line 38
    sget-object v0, Lcom/android/server/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/flags/FeatureFlags;->certpininstallerRemoval()Z

    move-result v0

    return v0
.end method

.method public static greylist consolidateBatteryChangeEvents()Z
    .locals 1

    .line 44
    sget-object v0, Lcom/android/server/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/flags/FeatureFlags;->consolidateBatteryChangeEvents()Z

    move-result v0

    return v0
.end method

.method public static greylist datetimeNotifications()Z
    .locals 1

    .line 50
    sget-object v0, Lcom/android/server/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/flags/FeatureFlags;->datetimeNotifications()Z

    move-result v0

    return v0
.end method

.method public static greylist disableSystemCompaction()Z
    .locals 1

    .line 56
    sget-object v0, Lcom/android/server/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/flags/FeatureFlags;->disableSystemCompaction()Z

    move-result v0

    return v0
.end method

.method public static greylist earlyDataManagerInit()Z
    .locals 1

    .line 62
    sget-object v0, Lcom/android/server/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/flags/FeatureFlags;->earlyDataManagerInit()Z

    move-result v0

    return v0
.end method

.method public static greylist enableOdpFeatureGuard()Z
    .locals 1

    .line 68
    sget-object v0, Lcom/android/server/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/flags/FeatureFlags;->enableOdpFeatureGuard()Z

    move-result v0

    return v0
.end method

.method public static greylist modifierShortcutManagerMultiuser()Z
    .locals 1

    .line 74
    sget-object v0, Lcom/android/server/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/flags/FeatureFlags;->modifierShortcutManagerMultiuser()Z

    move-result v0

    return v0
.end method

.method public static greylist newBugreportKeyboardShortcut()Z
    .locals 1

    .line 80
    sget-object v0, Lcom/android/server/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/flags/FeatureFlags;->newBugreportKeyboardShortcut()Z

    move-result v0

    return v0
.end method

.method public static greylist optionalBackgroundInstallControl()Z
    .locals 1

    .line 86
    sget-object v0, Lcom/android/server/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/flags/FeatureFlags;->optionalBackgroundInstallControl()Z

    move-result v0

    return v0
.end method

.method public static greylist pinGlobalQuota()Z
    .locals 1

    .line 92
    sget-object v0, Lcom/android/server/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/flags/FeatureFlags;->pinGlobalQuota()Z

    move-result v0

    return v0
.end method

.method public static greylist pinWebview()Z
    .locals 1

    .line 98
    sget-object v0, Lcom/android/server/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/flags/FeatureFlags;->pinWebview()Z

    move-result v0

    return v0
.end method

.method public static greylist pkgTargetedBatteryChangedNotSticky()Z
    .locals 1

    .line 104
    sget-object v0, Lcom/android/server/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/flags/FeatureFlags;->pkgTargetedBatteryChangedNotSticky()Z

    move-result v0

    return v0
.end method

.method public static greylist rateLimitBatteryChangedBroadcast()Z
    .locals 1

    .line 110
    sget-object v0, Lcom/android/server/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/flags/FeatureFlags;->rateLimitBatteryChangedBroadcast()Z

    move-result v0

    return v0
.end method

.method public static greylist traceBatteryChangedBroadcastEvent()Z
    .locals 1

    .line 116
    sget-object v0, Lcom/android/server/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/flags/FeatureFlags;->traceBatteryChangedBroadcastEvent()Z

    move-result v0

    return v0
.end method
