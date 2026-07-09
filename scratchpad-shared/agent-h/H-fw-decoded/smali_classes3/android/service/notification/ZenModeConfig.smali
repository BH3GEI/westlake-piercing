.class public Landroid/service/notification/ZenModeConfig;
.super Ljava/lang/Object;
.source "ZenModeConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/ZenModeConfig$ZenRule;,
        Landroid/service/notification/ZenModeConfig$ScheduleInfo;,
        Landroid/service/notification/ZenModeConfig$EventInfo;,
        Landroid/service/notification/ZenModeConfig$ConfigOrigin;
    }
.end annotation


# static fields
.field private static final greylist-max-o ALLOW_ATT_ALARMS:Ljava/lang/String; = "alarms"

.field private static final greylist-max-o ALLOW_ATT_CALLS:Ljava/lang/String; = "calls"

.field private static final greylist-max-o ALLOW_ATT_CALLS_FROM:Ljava/lang/String; = "callsFrom"

.field private static final blacklist ALLOW_ATT_CHANNELS:Ljava/lang/String; = "priorityChannelsAllowed"

.field private static final blacklist ALLOW_ATT_CONV:Ljava/lang/String; = "convos"

.field private static final blacklist ALLOW_ATT_CONV_FROM:Ljava/lang/String; = "convosFrom"

.field private static final greylist-max-o ALLOW_ATT_EVENTS:Ljava/lang/String; = "events"

.field private static final greylist-max-o ALLOW_ATT_FROM:Ljava/lang/String; = "from"

.field private static final greylist-max-o ALLOW_ATT_MEDIA:Ljava/lang/String; = "media"

.field private static final greylist-max-o ALLOW_ATT_MESSAGES:Ljava/lang/String; = "messages"

.field private static final greylist-max-o ALLOW_ATT_MESSAGES_FROM:Ljava/lang/String; = "messagesFrom"

.field private static final greylist-max-o ALLOW_ATT_REMINDERS:Ljava/lang/String; = "reminders"

.field private static final greylist-max-o ALLOW_ATT_REPEAT_CALLERS:Ljava/lang/String; = "repeatCallers"

.field private static final greylist-max-o ALLOW_ATT_SCREEN_OFF:Ljava/lang/String; = "visualScreenOff"

.field private static final greylist-max-o ALLOW_ATT_SCREEN_ON:Ljava/lang/String; = "visualScreenOn"

.field private static final greylist-max-o ALLOW_ATT_SYSTEM:Ljava/lang/String; = "system"

.field private static final greylist-max-o ALLOW_TAG:Ljava/lang/String; = "allow"

.field public static final greylist-max-o ALL_DAYS:[I

.field private static final blacklist AUTOMATIC_DELETED_TAG:Ljava/lang/String; = "deleted"

.field private static final greylist-max-o AUTOMATIC_TAG:Ljava/lang/String; = "automatic"

.field private static final greylist-max-o CONDITION_ATT_FLAGS:Ljava/lang/String; = "flags"

.field private static final greylist-max-o CONDITION_ATT_ICON:Ljava/lang/String; = "icon"

.field private static final greylist-max-o CONDITION_ATT_ID:Ljava/lang/String; = "id"

.field private static final greylist-max-o CONDITION_ATT_LINE1:Ljava/lang/String; = "line1"

.field private static final greylist-max-o CONDITION_ATT_LINE2:Ljava/lang/String; = "line2"

.field private static final blacklist CONDITION_ATT_SOURCE:Ljava/lang/String; = "source"

.field private static final greylist-max-o CONDITION_ATT_STATE:Ljava/lang/String; = "state"

.field private static final greylist-max-o CONDITION_ATT_SUMMARY:Ljava/lang/String; = "summary"

.field public static final greylist-max-o COUNTDOWN_PATH:Ljava/lang/String; = "countdown"

.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/ZenModeConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist CUSTOM_MANUAL_CONDITION_ID:Landroid/net/Uri;

.field public static final blacklist CUSTOM_MANUAL_PATH:Ljava/lang/String; = "custom_manual"

.field private static final greylist-max-o DAY_MINUTES:I = 0x5a0

.field private static final greylist-max-o DEFAULT_ALLOW_ALARMS:Z = true

.field private static final greylist-max-o DEFAULT_ALLOW_CALLS:Z = true

.field private static final blacklist DEFAULT_ALLOW_CONV:Z = true

.field private static final blacklist DEFAULT_ALLOW_CONV_FROM:I = 0x2

.field private static final greylist-max-o DEFAULT_ALLOW_EVENTS:Z = false

.field private static final greylist-max-o DEFAULT_ALLOW_MEDIA:Z = true

.field private static final greylist-max-o DEFAULT_ALLOW_MESSAGES:Z = true

.field private static final blacklist DEFAULT_ALLOW_PRIORITY_CHANNELS:Z = true

.field private static final greylist-max-o DEFAULT_ALLOW_REMINDERS:Z = false

.field private static final greylist-max-o DEFAULT_ALLOW_REPEAT_CALLERS:Z = true

.field private static final greylist-max-o DEFAULT_ALLOW_SYSTEM:Z = false

.field private static final greylist-max-o DEFAULT_CALLS_SOURCE:I = 0x2

.field private static final blacklist DEFAULT_HAS_PRIORITY_CHANNELS:Z = false

.field private static final greylist-max-o DEFAULT_SOURCE:I = 0x2

.field private static final greylist-max-o DEFAULT_SUPPRESSED_VISUAL_EFFECTS:I = 0x9d

.field private static final blacklist DEVICE_EFFECT_DIM_WALLPAPER:Ljava/lang/String; = "zdeDimWallpaper"

.field private static final blacklist DEVICE_EFFECT_DISABLE_AUTO_BRIGHTNESS:Ljava/lang/String; = "zdeDisableAutoBrightness"

.field private static final blacklist DEVICE_EFFECT_DISABLE_TAP_TO_WAKE:Ljava/lang/String; = "zdeDisableTapToWake"

.field private static final blacklist DEVICE_EFFECT_DISABLE_TILT_TO_WAKE:Ljava/lang/String; = "zdeDisableTiltToWake"

.field private static final blacklist DEVICE_EFFECT_DISABLE_TOUCH:Ljava/lang/String; = "zdeDisableTouch"

.field private static final blacklist DEVICE_EFFECT_DISPLAY_GRAYSCALE:Ljava/lang/String; = "zdeDisplayGrayscale"

.field private static final blacklist DEVICE_EFFECT_EXTRAS:Ljava/lang/String; = "zdeExtraEffects"

.field private static final blacklist DEVICE_EFFECT_MAXIMIZE_DOZE:Ljava/lang/String; = "zdeMaximizeDoze"

.field private static final blacklist DEVICE_EFFECT_MINIMIZE_RADIO_USAGE:Ljava/lang/String; = "zdeMinimizeRadioUsage"

.field private static final blacklist DEVICE_EFFECT_SUPPRESS_AMBIENT_DISPLAY:Ljava/lang/String; = "zdeSuppressAmbientDisplay"

.field private static final blacklist DEVICE_EFFECT_USER_MODIFIED_FIELDS:Ljava/lang/String; = "zdeUserModifiedFields"

.field private static final blacklist DEVICE_EFFECT_USE_NIGHT_LIGHT:Ljava/lang/String; = "zdeUseNightLight"

.field private static final blacklist DEVICE_EFFECT_USE_NIGHT_MODE:Ljava/lang/String; = "zdeUseNightMode"

.field private static final greylist-max-o DISALLOW_ATT_VISUAL_EFFECTS:Ljava/lang/String; = "visualEffects"

.field private static final greylist-max-o DISALLOW_TAG:Ljava/lang/String; = "disallow"

.field public static final blacklist EVENTS_OBSOLETE_RULE_ID:Ljava/lang/String; = "EVENTS_DEFAULT_RULE"

.field public static final greylist-max-o EVENT_PATH:Ljava/lang/String; = "event"

.field public static final greylist-max-o EVERY_NIGHT_DEFAULT_RULE_ID:Ljava/lang/String; = "EVERY_NIGHT_DEFAULT_RULE"

.field private static final blacklist IMPLICIT_RULE_ID_PREFIX:Ljava/lang/String; = "implicit_"

.field public static final greylist-max-o IS_ALARM_PATH:Ljava/lang/String; = "alarm"

.field private static final blacklist ITEM_SEPARATOR:Ljava/lang/String; = ","

.field private static final blacklist ITEM_SEPARATOR_ESCAPE:Ljava/lang/String; = "\\"

.field private static final blacklist ITEM_SPLITTER_REGEX:Ljava/util/regex/Pattern;

.field private static final blacklist LEGACY_SUPPRESSED_EFFECTS:I = 0x3

.field public static final blacklist MANUAL_RULE_ID:Ljava/lang/String; = "MANUAL_RULE"

.field private static final greylist-max-o MANUAL_TAG:Ljava/lang/String; = "manual"

.field private static final greylist-max-o MAX_SOURCE:I = 0x2

.field private static final greylist-max-o MINUTES_MS:I = 0xea60

.field public static final greylist-max-o MINUTE_BUCKETS:[I

.field public static final blacklist ORIGIN_APP:I = 0x4

.field public static final blacklist ORIGIN_INIT:I = 0x1

.field public static final blacklist ORIGIN_INIT_USER:I = 0x2

.field public static final blacklist ORIGIN_RESTORE_BACKUP:I = 0x6

.field public static final blacklist ORIGIN_SYSTEM:I = 0x5

.field public static final blacklist ORIGIN_UNKNOWN:I = 0x0

.field public static final blacklist ORIGIN_USER_IN_APP:I = 0x7

.field public static final blacklist ORIGIN_USER_IN_SYSTEMUI:I = 0x3

.field private static final blacklist POLICY_USER_MODIFIED_FIELDS:Ljava/lang/String; = "policyUserModifiedFields"

.field private static final blacklist RULE_ATT_ALLOW_MANUAL:Ljava/lang/String; = "userInvokable"

.field private static final greylist-max-o RULE_ATT_COMPONENT:Ljava/lang/String; = "component"

.field private static final greylist-max-o RULE_ATT_CONDITION_ID:Ljava/lang/String; = "conditionId"

.field private static final blacklist RULE_ATT_CONDITION_OVERRIDE:Ljava/lang/String; = "conditionOverride"

.field private static final blacklist RULE_ATT_CONFIG_ACTIVITY:Ljava/lang/String; = "configActivity"

.field private static final greylist-max-o RULE_ATT_CREATION_TIME:Ljava/lang/String; = "creationTime"

.field private static final blacklist RULE_ATT_DELETION_INSTANT:Ljava/lang/String; = "deletionInstant"

.field private static final blacklist RULE_ATT_DISABLED_ORIGIN:Ljava/lang/String; = "disabledOrigin"

.field private static final greylist-max-o RULE_ATT_ENABLED:Ljava/lang/String; = "enabled"

.field private static final greylist-max-o RULE_ATT_ENABLER:Ljava/lang/String; = "enabler"

.field private static final blacklist RULE_ATT_ICON:Ljava/lang/String; = "rule_icon"

.field private static final greylist-max-o RULE_ATT_ID:Ljava/lang/String; = "ruleId"

.field private static final blacklist RULE_ATT_LAST_ACTIVATION:Ljava/lang/String; = "lastActivation"

.field private static final blacklist RULE_ATT_LEGACY_SUPPRESSED_EFFECTS:Ljava/lang/String; = "legacySuppressedEffects"

.field private static final greylist-max-o RULE_ATT_NAME:Ljava/lang/String; = "name"

.field private static final blacklist RULE_ATT_PKG:Ljava/lang/String; = "pkg"

.field private static final blacklist RULE_ATT_TRIGGER_DESC:Ljava/lang/String; = "triggerDesc"

.field private static final blacklist RULE_ATT_TYPE:Ljava/lang/String; = "type"

.field private static final blacklist RULE_ATT_USER_MODIFIED_FIELDS:Ljava/lang/String; = "userModifiedFields"

.field private static final greylist-max-o RULE_ATT_ZEN:Ljava/lang/String; = "zen"

.field public static final greylist-max-o SCHEDULE_PATH:Ljava/lang/String; = "schedule"

.field private static final greylist-max-o SECONDS_MS:I = 0x3e8

.field private static final blacklist SHOW_ATT_AMBIENT:Ljava/lang/String; = "showAmbient"

.field private static final blacklist SHOW_ATT_BADGES:Ljava/lang/String; = "showBadges"

.field private static final blacklist SHOW_ATT_FULL_SCREEN_INTENT:Ljava/lang/String; = "showFullScreenIntent"

.field private static final blacklist SHOW_ATT_LIGHTS:Ljava/lang/String; = "showLights"

.field private static final blacklist SHOW_ATT_NOTIFICATION_LIST:Ljava/lang/String; = "showNotificationList"

.field private static final blacklist SHOW_ATT_PEEK:Ljava/lang/String; = "shoePeek"

.field private static final blacklist SHOW_ATT_STATUS_BAR_ICONS:Ljava/lang/String; = "showStatusBarIcons"

.field public static final greylist-max-o SOURCE_ANYONE:I = 0x0

.field public static final greylist-max-o SOURCE_CONTACT:I = 0x1

.field public static final greylist-max-o SOURCE_STAR:I = 0x2

.field private static final blacklist STATE_HAS_PRIORITY_CHANNELS:Ljava/lang/String; = "areChannelsBypassingDnd"

.field private static final greylist-max-o STATE_TAG:Ljava/lang/String; = "state"

.field public static final greylist-max-o SYSTEM_AUTHORITY:Ljava/lang/String; = "android"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ZenModeConfig"

.field public static final blacklist XML_VERSION_MODES_API:I = 0xb

.field public static final blacklist XML_VERSION_MODES_UI:I = 0xc

.field public static final blacklist XML_VERSION_ZEN_UPGRADE:I = 0x8

.field private static final greylist-max-o ZEN_ATT_USER:Ljava/lang/String; = "user"

.field private static final greylist-max-o ZEN_ATT_VERSION:Ljava/lang/String; = "version"

.field public static final greylist-max-o ZEN_TAG:Ljava/lang/String; = "zen"

.field private static final greylist-max-o ZERO_VALUE_MS:I = 0x2710


# instance fields
.field public greylist allowAlarms:Z

.field public greylist-max-o allowCalls:Z

.field public greylist-max-o allowCallsFrom:I

.field public blacklist allowConversations:Z

.field public blacklist allowConversationsFrom:I

.field public greylist-max-o allowEvents:Z

.field public greylist-max-o allowMedia:Z

.field public greylist-max-o allowMessages:Z

.field public greylist-max-o allowMessagesFrom:I

.field public blacklist allowPriorityChannels:Z

.field public greylist-max-o allowReminders:Z

.field public greylist-max-o allowRepeatCallers:Z

.field public greylist-max-o allowSystem:Z

.field public greylist automaticRules:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist deletedRules:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist hasPriorityChannels:Z

.field public greylist-max-o manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

.field public greylist-max-o suppressedVisualEffects:I

.field public greylist-max-o user:I

.field public greylist-max-o version:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smtoDayList([I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->toDayList([I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 209
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    .line 212
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->generateMinuteBuckets()[I

    move-result-object v0

    sput-object v0, Landroid/service/notification/ZenModeConfig;->MINUTE_BUCKETS:[I

    .line 331
    const-string v0, "(?<!\\\\),"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/service/notification/ZenModeConfig;->ITEM_SPLITTER_REGEX:Ljava/util/regex/Pattern;

    .line 1639
    new-instance v0, Landroid/service/notification/ZenModeConfig$1;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$1;-><init>()V

    sput-object v0, Landroid/service/notification/ZenModeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2462
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 2463
    const-string v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2464
    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2465
    const-string v1, "custom_manual"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2466
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/service/notification/ZenModeConfig;->CUSTOM_MANUAL_CONDITION_ID:Landroid/net/Uri;

    .line 2462
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public constructor greylist <init>()V
    .locals 3

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    .line 335
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    .line 336
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    .line 337
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 338
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 339
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 340
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 341
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 342
    const/4 v2, 0x2

    iput v2, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 343
    iput v2, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 344
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    .line 345
    iput v2, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    .line 346
    iput v1, p0, Landroid/service/notification/ZenModeConfig;->user:I

    .line 347
    const/16 v2, 0x9d

    iput v2, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    .line 352
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    .line 353
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    .line 357
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 362
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    .line 366
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->ensureManualZenRule()V

    .line 369
    :cond_0
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    .line 335
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    .line 336
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    .line 337
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 338
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 339
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 340
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 341
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 342
    const/4 v2, 0x2

    iput v2, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 343
    iput v2, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 344
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    .line 345
    iput v2, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    .line 346
    iput v1, p0, Landroid/service/notification/ZenModeConfig;->user:I

    .line 347
    const/16 v2, 0x9d

    iput v2, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    .line 352
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    .line 353
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    .line 357
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 362
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    .line 372
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v2

    if-nez v2, :cond_5

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_4

    move v2, v0

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 381
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/service/notification/ZenModeConfig;->user:I

    .line 382
    const/4 v2, 0x0

    const-class v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-object v2, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 383
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {v2, p1}, Landroid/service/notification/ZenModeConfig;->readRulesFromParcel(Landroid/util/ArrayMap;Landroid/os/Parcel;)V

    .line 384
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-static {v2, p1}, Landroid/service/notification/ZenModeConfig;->readRulesFromParcel(Landroid/util/ArrayMap;Landroid/os/Parcel;)V

    .line 385
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v2

    if-nez v2, :cond_9

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_6

    move v2, v0

    goto :goto_5

    :cond_6
    move v2, v1

    :goto_5
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_7

    move v2, v0

    goto :goto_6

    :cond_7
    move v2, v1

    :goto_6
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_8

    move v2, v0

    goto :goto_7

    :cond_8
    move v2, v1

    :goto_7
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    .line 391
    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_a

    goto :goto_8

    :cond_a
    move v0, v1

    :goto_8
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    .line 392
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_b

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    .line 397
    :cond_b
    return-void
.end method

.method public static blacklist areAllPriorityOnlyRingerSoundsMuted(Landroid/app/NotificationManager$Policy;)Z
    .locals 10
    .param p0, "policy"    # Landroid/app/NotificationManager$Policy;

    .line 3043
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3045
    .local v0, "allowReminders":Z
    :goto_0
    iget v3, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 3047
    .local v3, "allowCalls":Z
    :goto_1
    iget v4, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    .line 3049
    .local v4, "allowMessages":Z
    :goto_2
    iget v5, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    move v5, v1

    goto :goto_3

    :cond_3
    move v5, v2

    .line 3051
    .local v5, "allowEvents":Z
    :goto_3
    iget v6, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_4

    move v6, v1

    goto :goto_4

    :cond_4
    move v6, v2

    .line 3053
    .local v6, "allowRepeatCallers":Z
    :goto_4
    iget v7, p0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    and-int/lit16 v7, v7, 0x100

    if-eqz v7, :cond_5

    move v7, v1

    goto :goto_5

    :cond_5
    move v7, v2

    .line 3055
    .local v7, "allowConversations":Z
    :goto_5
    nop

    .line 3056
    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->hasPriorityChannels()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->allowPriorityChannels()Z

    move-result v8

    if-eqz v8, :cond_6

    move v8, v1

    goto :goto_6

    :cond_6
    move v8, v2

    .line 3057
    .local v8, "areChannelsBypassingDnd":Z
    :goto_6
    iget v9, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_7

    move v9, v1

    goto :goto_7

    :cond_7
    move v9, v2

    .line 3058
    .local v9, "allowSystem":Z
    :goto_7
    if-nez v0, :cond_8

    if-nez v3, :cond_8

    if-nez v4, :cond_8

    if-nez v5, :cond_8

    if-nez v6, :cond_8

    if-nez v8, :cond_8

    if-nez v9, :cond_8

    if-nez v7, :cond_8

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    return v1
.end method

.method public static blacklist areAllPriorityOnlyRingerSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z
    .locals 4
    .param p0, "config"    # Landroid/service/notification/ZenModeConfig;

    .line 3088
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 3089
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 3090
    .local v0, "policy":Landroid/service/notification/ZenPolicy;
    invoke-virtual {v0, v2, v2}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3091
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3092
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3093
    invoke-virtual {v0, v1, v2}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3094
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3095
    const/4 v3, 0x7

    invoke-virtual {v0, v3, v2}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    if-eqz v3, :cond_0

    .line 3096
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    move-result v3

    if-eq v3, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    move v1, v2

    .line 3090
    :goto_0
    return v1

    .line 3100
    .end local v0    # "policy":Landroid/service/notification/ZenPolicy;
    :cond_2
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    if-eqz v0, :cond_3

    .line 3101
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->isAllowPriorityChannels()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    .line 3102
    .local v0, "areChannelsBypassingDnd":Z
    :goto_1
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->isAllowReminders()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->isAllowCalls()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->isAllowMessages()Z

    move-result v3

    if-nez v3, :cond_4

    .line 3103
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->isAllowEvents()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->isAllowRepeatCallers()Z

    move-result v3

    if-nez v3, :cond_4

    if-nez v0, :cond_4

    .line 3104
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->isAllowSystem()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    .line 3102
    :goto_2
    return v1
.end method

.method public static blacklist areAllZenBehaviorSoundsMuted(Landroid/app/NotificationManager$Policy;)Z
    .locals 5
    .param p0, "policy"    # Landroid/app/NotificationManager$Policy;

    .line 3068
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3069
    .local v0, "allowAlarms":Z
    :goto_0
    iget v3, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 3070
    .local v3, "allowMedia":Z
    :goto_1
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method public static greylist-max-o areAllZenBehaviorSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z
    .locals 4
    .param p0, "config"    # Landroid/service/notification/ZenModeConfig;

    .line 3112
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3113
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 3114
    .local v0, "policy":Landroid/service/notification/ZenPolicy;
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3115
    const/4 v3, 0x6

    invoke-virtual {v0, v3, v2}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3116
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 3114
    :goto_0
    return v1

    .line 3118
    .end local v0    # "policy":Landroid/service/notification/ZenPolicy;
    :cond_1
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->isAllowAlarms()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->isAllowMedia()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3119
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 3118
    :goto_1
    return v1
.end method

.method public static blacklist deletedRuleKey(Landroid/service/notification/ZenModeConfig$ZenRule;)Ljava/lang/String;
    .locals 2
    .param p0, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1082
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 1083
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1085
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static greylist-max-o generateMinuteBuckets()[I
    .locals 5

    .line 811
    const/16 v0, 0xc

    .line 812
    .local v0, "maxHrs":I
    const/16 v1, 0xf

    new-array v2, v1, [I

    .line 813
    .local v2, "buckets":[I
    const/4 v3, 0x0

    aput v1, v2, v3

    .line 814
    const/4 v1, 0x1

    const/16 v3, 0x1e

    aput v3, v2, v1

    .line 815
    const/4 v1, 0x2

    const/16 v3, 0x2d

    aput v3, v2, v1

    .line 816
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v3, 0xc

    if-gt v1, v3, :cond_0

    .line 817
    add-int/lit8 v3, v1, 0x2

    mul-int/lit8 v4, v1, 0x3c

    aput v4, v2, v3

    .line 816
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 819
    .end local v1    # "i":I
    :cond_0
    return-object v2
.end method

.method public static blacklist getCurrentXmlVersion()I
    .locals 1

    .line 926
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    const/16 v0, 0xc

    return v0

    .line 929
    :cond_0
    const/16 v0, 0xb

    return v0
.end method

.method public static blacklist getCustomManualConditionProvider()Landroid/content/ComponentName;
    .locals 3

    .line 2483
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-string v2, "CustomManualConditionProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist getDefaultConfig()Landroid/service/notification/ZenModeConfig;
    .locals 6

    .line 422
    new-instance v0, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig;-><init>()V

    .line 424
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    new-instance v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v1}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 425
    .local v1, "scheduleInfo":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    const/4 v2, 0x7

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    iput-object v3, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 426
    const/16 v3, 0x16

    iput v3, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 427
    iput v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 428
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    .line 429
    new-instance v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 430
    .local v3, "sleeping":Landroid/service/notification/ZenModeConfig$ZenRule;
    const-string v4, "EVERY_NIGHT_DEFAULT_RULE"

    iput-object v4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 431
    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 432
    const-string v5, "android/com.android.server.notification.ScheduleConditionProvider"

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 434
    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 435
    iput v2, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 436
    const-string v2, "android"

    iput-object v2, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 437
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    return-object v0

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public static blacklist getDefaultRuleIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 444
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    const-string v1, "EVERY_NIGHT_DEFAULT_RULE"

    if-eqz v0, :cond_0

    .line 445
    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 446
    :cond_0
    const-string v0, "EVENTS_DEFAULT_RULE"

    invoke-static {v1, v0}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 444
    :goto_0
    return-object v0
.end method

.method public static blacklist getDefaultZenPolicy()Landroid/service/notification/ZenPolicy;
    .locals 4

    .line 400
    new-instance v0, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {v0}, Landroid/service/notification/ZenPolicy$Builder;-><init>()V

    .line 401
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowAlarms(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 402
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowMedia(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 403
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/service/notification/ZenPolicy$Builder;->allowSystem(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 404
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/service/notification/ZenPolicy$Builder;->allowCalls(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 405
    invoke-virtual {v0, v3}, Landroid/service/notification/ZenPolicy$Builder;->allowMessages(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 406
    invoke-virtual {v0, v2}, Landroid/service/notification/ZenPolicy$Builder;->allowReminders(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 407
    invoke-virtual {v0, v2}, Landroid/service/notification/ZenPolicy$Builder;->allowEvents(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 408
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowRepeatCallers(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 409
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/service/notification/ZenPolicy$Builder;->allowConversations(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 410
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->showAllVisualEffects()Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 411
    invoke-virtual {v0, v2, v2}, Landroid/service/notification/ZenPolicy$Builder;->showVisualEffect(IZ)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 412
    invoke-virtual {v0, v1, v2}, Landroid/service/notification/ZenPolicy$Builder;->showVisualEffect(IZ)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 413
    invoke-virtual {v0, v3, v2}, Landroid/service/notification/ZenPolicy$Builder;->showVisualEffect(IZ)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 414
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Landroid/service/notification/ZenPolicy$Builder;->showVisualEffect(IZ)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 415
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowPriorityChannels(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    .line 417
    .local v0, "policy":Landroid/service/notification/ZenPolicy;
    return-object v0
.end method

.method public static greylist-max-o getDescription(Landroid/content/Context;ZLandroid/service/notification/ZenModeConfig;Z)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "zenOn"    # Z
    .param p2, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p3, "describeForeverCondition"    # Z

    .line 3137
    const/4 v0, 0x0

    if-eqz p1, :cond_d

    if-nez p2, :cond_0

    goto/16 :goto_4

    .line 3141
    :cond_0
    const-string v1, ""

    .line 3142
    .local v1, "secondaryText":Ljava/lang/String;
    const-wide/16 v2, -0x1

    .line 3145
    .local v2, "latestEndTime":J
    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig;->isManualActive()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3146
    iget-object v4, p2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 3147
    .local v4, "id":Landroid/net/Uri;
    iget-object v5, p2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 3149
    iget-object v5, p2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-static {p0, v5}, Landroid/service/notification/ZenModeConfig;->getOwnerCaption(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3150
    .local v5, "appName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 3151
    move-object v1, v5

    .line 3153
    .end local v5    # "appName":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 3154
    :cond_2
    if-eqz v4, :cond_4

    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v5, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    .line 3162
    :cond_3
    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 3163
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-lez v5, :cond_6

    .line 3164
    nop

    .line 3165
    invoke-static {v2, v3}, Landroid/service/notification/ZenModeConfig;->isToday(J)Z

    move-result v5

    .line 3166
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v6

    .line 3164
    invoke-static {p0, v2, v3, v5, v6}, Landroid/service/notification/ZenModeConfig;->getFormattedTime(Landroid/content/Context;JZI)Ljava/lang/CharSequence;

    move-result-object v5

    .line 3167
    .local v5, "formattedTime":Ljava/lang/CharSequence;
    const v6, 0x1040afc

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 3156
    .end local v5    # "formattedTime":Ljava/lang/CharSequence;
    :cond_4
    :goto_0
    if-eqz p3, :cond_5

    .line 3157
    const v0, 0x1040af0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3159
    :cond_5
    return-object v0

    .line 3174
    .end local v4    # "id":Landroid/net/Uri;
    :cond_6
    :goto_1
    iget-object v4, p2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 3175
    .local v5, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v5}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 3176
    iget-object v6, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v6}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 3177
    invoke-static {v6}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_3

    .line 3186
    :cond_7
    iget-object v0, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    return-object v0

    .line 3179
    :cond_8
    :goto_3
    iget-object v6, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {p0, v6}, Landroid/service/notification/ZenModeConfig;->parseAutomaticRuleEndTime(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v6

    .line 3180
    .local v6, "endTime":J
    cmp-long v8, v6, v2

    if-lez v8, :cond_9

    .line 3181
    move-wide v2, v6

    .line 3182
    iget-object v1, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 3184
    .end local v6    # "endTime":J
    :cond_9
    nop

    .line 3189
    .end local v5    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_a
    goto :goto_2

    .line 3191
    :cond_b
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    move-object v0, v1

    :cond_c
    return-object v0

    .line 3138
    .end local v1    # "secondaryText":Ljava/lang/String;
    .end local v2    # "latestEndTime":J
    :cond_d
    :goto_4
    return-object v0
.end method

.method public static greylist-max-o getEventConditionProvider()Landroid/content/ComponentName;
    .locals 3

    .line 2417
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-string v2, "EventConditionProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static greylist-max-o getFormattedTime(Landroid/content/Context;JZI)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J
    .param p3, "isSameDay"    # Z
    .param p4, "userHandle"    # I

    .line 2150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p3, :cond_0

    const-string v1, "EEE "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2151
    invoke-static {p0, p4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Hm"

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "hma"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2152
    .local v0, "skeleton":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2153
    .local v1, "pattern":Ljava/lang/String;
    invoke-static {v1, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method private static greylist-max-o getNextAlarm(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 3220
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 3221
    .local v0, "alarms":Landroid/app/AlarmManager;
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v1

    .line 3222
    .local v1, "info":Landroid/app/AlarmManager$AlarmClockInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2
.end method

.method public static greylist-max-o getOwnerCaption(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "owner"    # Ljava/lang/String;

    .line 2520
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2522
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2523
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 2524
    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2525
    .local v2, "seq":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 2526
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 2527
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v4, :cond_0

    .line 2528
    return-object v3

    .line 2534
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "seq":Ljava/lang/CharSequence;
    .end local v3    # "str":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 2532
    :catchall_0
    move-exception v1

    .line 2533
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "ZenModeConfig"

    const-string v3, "Error loading owner caption"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2535
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    const-string v1, ""

    return-object v1
.end method

.method public static greylist-max-o getScheduleConditionProvider()Landroid/content/ComponentName;
    .locals 3

    .line 2306
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-string v2, "ScheduleConditionProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist implicitRuleId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "forPackage"    # Ljava/lang/String;

    .line 2490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "implicit_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isImplicitRuleId(Ljava/lang/String;)Z
    .locals 1
    .param p0, "ruleId"    # Ljava/lang/String;

    .line 2495
    if-eqz p0, :cond_0

    const-string/jumbo v0, "implicit_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z
    .locals 1
    .param p1, "categoryType"    # I
    .param p2, "policy"    # Landroid/app/NotificationManager$Policy;

    .line 1831
    iget v0, p2, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static greylist-max-o isToday(J)Z
    .locals 5
    .param p0, "time"    # J

    .line 2160
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 2161
    .local v0, "now":Ljava/util/GregorianCalendar;
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 2162
    .local v1, "endTime":Ljava/util/GregorianCalendar;
    invoke-virtual {v1, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 2163
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 2164
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    if-ne v4, v3, :cond_0

    .line 2165
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    if-ne v4, v3, :cond_0

    .line 2166
    return v2

    .line 2168
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private static greylist-max-o isValidAutomaticRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 1
    .param p0, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 797
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 798
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->sameCondition(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 797
    :goto_0
    return v0
.end method

.method public static greylist-max-o isValidCountdownConditionId(Landroid/net/Uri;)Z
    .locals 4
    .param p0, "conditionId"    # Landroid/net/Uri;

    .line 2210
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static greylist-max-o isValidCountdownToAlarmConditionId(Landroid/net/Uri;)Z
    .locals 4
    .param p0, "conditionId"    # Landroid/net/Uri;

    .line 2217
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2218
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_1

    .line 2219
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "alarm"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2223
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2224
    :catch_0
    move-exception v0

    .line 2225
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing countdown alarm condition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ZenModeConfig"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2226
    return v1

    .line 2220
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return v1

    .line 2229
    :cond_2
    return v1
.end method

.method public static blacklist isValidCustomManualConditionId(Landroid/net/Uri;)Z
    .locals 1
    .param p0, "conditionId"    # Landroid/net/Uri;

    .line 2478
    sget-object v0, Landroid/service/notification/ZenModeConfig;->CUSTOM_MANUAL_CONDITION_ID:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isValidEventConditionId(Landroid/net/Uri;)Z
    .locals 1
    .param p0, "conditionId"    # Landroid/net/Uri;

    .line 2390
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static greylist-max-o isValidHour(I)Z
    .locals 1
    .param p0, "val"    # I

    .line 1541
    if-ltz p0, :cond_0

    const/16 v0, 0x18

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static greylist-max-o isValidManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 1
    .param p0, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 793
    if-eqz p0, :cond_1

    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->sameCondition(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static greylist-max-o isValidMinute(I)Z
    .locals 1
    .param p0, "val"    # I

    .line 1545
    if-ltz p0, :cond_0

    const/16 v0, 0x3c

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static greylist-max-o isValidScheduleConditionId(Landroid/net/Uri;)Z
    .locals 3
    .param p0, "conditionId"    # Landroid/net/Uri;

    .line 2250
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2253
    .local v1, "info":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    nop

    .line 2255
    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    array-length v2, v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 2258
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2256
    :cond_1
    :goto_0
    return v0

    .line 2251
    .end local v1    # "info":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    :catch_0
    move-exception v1

    .line 2252
    .local v1, "e":Ljava/lang/RuntimeException;
    return v0
.end method

.method public static blacklist isValidScheduleConditionId(Landroid/net/Uri;Z)Z
    .locals 3
    .param p0, "conditionId"    # Landroid/net/Uri;
    .param p1, "allowNever"    # Z

    .line 2268
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2271
    .local v1, "info":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    nop

    .line 2273
    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    array-length v2, v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 2276
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2274
    :cond_1
    :goto_0
    return v0

    .line 2269
    .end local v1    # "info":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    :catch_0
    move-exception v1

    .line 2270
    .local v1, "e":Ljava/lang/RuntimeException;
    return v0
.end method

.method private static greylist-max-o isValidSource(I)Z
    .locals 1
    .param p0, "source"    # I

    .line 1549
    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isVisualEffectAllowed(II)Z
    .locals 1
    .param p1, "suppressedVisualEffects"    # I
    .param p2, "visualEffect"    # I

    .line 1839
    and-int v0, p1, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z
    .locals 1
    .param p1, "visualEffect"    # I
    .param p2, "policy"    # Landroid/app/NotificationManager$Policy;

    .line 1835
    iget v0, p2, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isZenOverridingRinger(ILandroid/app/NotificationManager$Policy;)Z
    .locals 2
    .param p0, "zen"    # I
    .param p1, "consolidatedPolicy"    # Landroid/app/NotificationManager$Policy;

    .line 3077
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    if-ne p0, v1, :cond_0

    .line 3080
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    .line 3077
    :goto_1
    return v1
.end method

.method public static greylist-max-o newRuleId()Ljava/lang/String;
    .locals 3

    .line 2513
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist normalizeConversationSenders(ZII)I
    .locals 2
    .param p0, "allowed"    # Z
    .param p1, "senders"    # I
    .param p2, "def"    # I

    .line 2030
    const/4 v0, 0x3

    if-nez p0, :cond_0

    .line 2031
    return v0

    .line 2033
    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_1

    .line 2036
    return p2

    .line 2038
    :cond_1
    return p1
.end method

.method private static blacklist normalizePrioritySenders(II)I
    .locals 1
    .param p0, "prioritySenders"    # I
    .param p1, "def"    # I

    .line 2021
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    .line 2024
    return p1

    .line 2026
    :cond_0
    return p0
.end method

.method private static greylist-max-o parseAutomaticRuleEndTime(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Landroid/net/Uri;

    .line 3195
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3197
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 3200
    :cond_0
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3201
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->toScheduleCalendar(Landroid/net/Uri;)Landroid/service/notification/ScheduleCalendar;

    move-result-object v0

    .line 3202
    .local v0, "schedule":Landroid/service/notification/ScheduleCalendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/service/notification/ScheduleCalendar;->getNextChangeTime(J)J

    move-result-wide v1

    .line 3205
    .local v1, "endTimeMs":J
    invoke-virtual {v0}, Landroid/service/notification/ScheduleCalendar;->exitAtAlarm()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3206
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->getNextAlarm(Landroid/content/Context;)J

    move-result-wide v3

    .line 3207
    .local v3, "nextAlarm":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/service/notification/ScheduleCalendar;->maybeSetNextAlarm(JJ)V

    .line 3208
    invoke-virtual {v0, v1, v2}, Landroid/service/notification/ScheduleCalendar;->shouldExitForAlarm(J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3209
    return-wide v3

    .line 3213
    .end local v3    # "nextAlarm":J
    :cond_1
    return-wide v1

    .line 3216
    .end local v0    # "schedule":Landroid/service/notification/ScheduleCalendar;
    .end local v1    # "endTimeMs":J
    :cond_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static blacklist readConditionXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/service/notification/Condition;
    .locals 11
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;

    .line 1274
    const-string/jumbo v0, "id"

    invoke-static {p0, v0}, Landroid/service/notification/ZenModeConfig;->safeUri(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1275
    .local v2, "id":Landroid/net/Uri;
    const/4 v10, 0x0

    if-nez v2, :cond_0

    return-object v10

    .line 1276
    :cond_0
    const-string/jumbo v0, "summary"

    invoke-interface {p0, v10, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1277
    .local v3, "summary":Ljava/lang/String;
    const-string/jumbo v0, "line1"

    invoke-interface {p0, v10, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1278
    .local v4, "line1":Ljava/lang/String;
    const-string/jumbo v0, "line2"

    invoke-interface {p0, v10, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1279
    .local v5, "line2":Ljava/lang/String;
    const-string/jumbo v0, "icon"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v6

    .line 1280
    .local v6, "icon":I
    const-string/jumbo v0, "state"

    invoke-static {p0, v0, v1}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 1281
    .local v7, "state":I
    const-string v0, "flags"

    invoke-static {p0, v0, v1}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v9

    .line 1283
    .local v9, "flags":I
    :try_start_0
    const-string/jumbo v0, "source"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v8

    .line 1284
    .local v8, "source":I
    new-instance v1, Landroid/service/notification/Condition;

    invoke-direct/range {v1 .. v9}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1285
    .end local v8    # "source":I
    :catch_0
    move-exception v0

    .line 1286
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "ZenModeConfig"

    const-string v8, "Unable to read condition xml"

    invoke-static {v1, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1287
    return-object v10
.end method

.method public static blacklist readRuleXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/service/notification/ZenModeConfig$ZenRule;
    .locals 6
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;

    .line 1165
    new-instance v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 1166
    .local v0, "rt":Landroid/service/notification/ZenModeConfig$ZenRule;
    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 1167
    const-string/jumbo v1, "name"

    const/4 v3, 0x0

    invoke-interface {p0, v3, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 1168
    const-string/jumbo v1, "zen"

    invoke-interface {p0, v3, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1169
    .local v1, "zen":Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/service/notification/ZenModeConfig;->tryParseZenMode(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 1170
    const-string v2, "conditionId"

    invoke-static {p0, v2}, Landroid/service/notification/ZenModeConfig;->safeUri(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 1171
    const-string v2, "component"

    invoke-static {p0, v2}, Landroid/service/notification/ZenModeConfig;->safeComponentName(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 1172
    const-string v2, "configActivity"

    invoke-static {p0, v2}, Landroid/service/notification/ZenModeConfig;->safeComponentName(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 1173
    const-string/jumbo v2, "pkg"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 1174
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 1176
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 1178
    :cond_1
    const-string v2, "creationTime"

    const-wide/16 v4, 0x0

    invoke-static {p0, v2, v4, v5}, Landroid/service/notification/ZenModeConfig;->safeLong(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 1179
    const-string v2, "enabler"

    invoke-interface {p0, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    .line 1180
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->readConditionXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/service/notification/Condition;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 1181
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->readZenPolicyXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/service/notification/ZenPolicy;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1182
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->readZenDeviceEffectsXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/service/notification/ZenDeviceEffects;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 1183
    const-string/jumbo v2, "userInvokable"

    const/4 v4, 0x0

    invoke-static {p0, v2, v4}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    .line 1184
    const-string/jumbo v2, "rule_icon"

    invoke-interface {p0, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    .line 1185
    const-string/jumbo v2, "triggerDesc"

    invoke-interface {p0, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    .line 1186
    const-string/jumbo v2, "type"

    const/4 v5, -0x1

    invoke-static {p0, v2, v5}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 1187
    const-string/jumbo v2, "userModifiedFields"

    invoke-static {p0, v2, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    .line 1188
    const-string/jumbo v2, "policyUserModifiedFields"

    invoke-static {p0, v2, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    .line 1189
    const-string/jumbo v2, "zdeUserModifiedFields"

    invoke-static {p0, v2, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    .line 1191
    const-string v2, "deletionInstant"

    invoke-static {p0, v2, v3}, Landroid/service/notification/ZenModeConfig;->safeInstant(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/time/Instant;)Ljava/time/Instant;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    .line 1192
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1193
    const-string v2, "disabledOrigin"

    invoke-static {p0, v2, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->disabledOrigin:I

    .line 1195
    const-string/jumbo v2, "legacySuppressedEffects"

    invoke-static {p0, v2, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->legacySuppressedEffects:I

    .line 1197
    const-string v2, "conditionOverride"

    invoke-static {p0, v2, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    .line 1199
    invoke-static {}, Landroid/app/Flags;->modesCleanupImplicit()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1200
    const-string/jumbo v2, "lastActivation"

    invoke-static {p0, v2, v3}, Landroid/service/notification/ZenModeConfig;->safeInstant(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/time/Instant;)Ljava/time/Instant;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->lastActivation:Ljava/time/Instant;

    .line 1204
    :cond_2
    return-object v0
.end method

.method private static blacklist readRulesFromParcel(Landroid/util/ArrayMap;Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .line 463
    .local p0, "ruleMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 464
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 465
    new-array v1, v0, [Ljava/lang/String;

    .line 466
    .local v1, "ids":[Ljava/lang/String;
    new-array v2, v0, [Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 467
    .local v2, "rules":[Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 468
    sget-object v3, Landroid/service/notification/ZenModeConfig$ZenRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 469
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 470
    aget-object v4, v1, v3

    aget-object v5, v2, v3

    invoke-virtual {p0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 473
    .end local v1    # "ids":[Ljava/lang/String;
    .end local v2    # "rules":[Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method public static blacklist readXml(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/app/backup/BackupRestoreEventLogger;)Landroid/service/notification/ZenModeConfig;
    .locals 18
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "logger"    # Landroid/app/backup/BackupRestoreEventLogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 935
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 936
    .local v2, "readRuleCount":I
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v3

    .line 937
    .local v3, "type":I
    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    return-object v4

    .line 938
    :cond_0
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 939
    .local v6, "tag":Ljava/lang/String;
    const-string/jumbo v7, "zen"

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    return-object v4

    .line 940
    :cond_1
    new-instance v8, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v8}, Landroid/service/notification/ZenModeConfig;-><init>()V

    .line 941
    .local v8, "rt":Landroid/service/notification/ZenModeConfig;
    const-string/jumbo v9, "version"

    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getCurrentXmlVersion()I

    move-result v10

    invoke-static {v0, v9, v10}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v9

    iput v9, v8, Landroid/service/notification/ZenModeConfig;->version:I

    .line 942
    const-string/jumbo v9, "user"

    iget v10, v8, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {v0, v9, v10}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v9

    iput v9, v8, Landroid/service/notification/ZenModeConfig;->user:I

    .line 943
    const/4 v9, 0x0

    .line 944
    .local v9, "readSuppressedEffects":Z
    const/4 v10, 0x0

    .line 945
    .local v10, "readManualRule":Z
    const/4 v11, 0x0

    .line 946
    .local v11, "readManualRuleWithoutPolicy":Z
    :goto_0
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v12

    move v3, v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_1a

    .line 947
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 948
    const/4 v12, 0x0

    if-ne v3, v5, :cond_13

    .line 949
    const-string v14, "allow"

    invoke-virtual {v14, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 950
    const-string v14, "calls"

    invoke-static {v0, v14, v13}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v8, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 952
    const-string/jumbo v14, "repeatCallers"

    invoke-static {v0, v14, v13}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v8, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 954
    const-string/jumbo v14, "messages"

    invoke-static {v0, v14, v13}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v8, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 956
    const-string/jumbo v14, "reminders"

    invoke-static {v0, v14, v12}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v8, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 958
    const-string v14, "convos"

    invoke-static {v0, v14, v13}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v8, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    .line 959
    const-string v14, "events"

    invoke-static {v0, v14, v12}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v8, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 960
    const-string v14, "from"

    const/4 v15, -0x1

    invoke-static {v0, v14, v15}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v14

    .line 961
    .local v14, "from":I
    const-string v4, "callsFrom"

    invoke-static {v0, v4, v15}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v4

    .line 962
    .local v4, "callsFrom":I
    const-string/jumbo v12, "messagesFrom"

    invoke-static {v0, v12, v15}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v12

    .line 963
    .local v12, "messagesFrom":I
    const-string v15, "convosFrom"

    invoke-static {v0, v15, v5}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v15

    iput v15, v8, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    .line 965
    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->isValidSource(I)Z

    move-result v15

    const-string v13, "ZenModeConfig"

    if-eqz v15, :cond_2

    invoke-static {v12}, Landroid/service/notification/ZenModeConfig;->isValidSource(I)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 966
    iput v4, v8, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 967
    iput v12, v8, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    goto :goto_1

    .line 968
    :cond_2
    invoke-static {v14}, Landroid/service/notification/ZenModeConfig;->isValidSource(I)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 969
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Migrating existing shared \'from\': "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v14}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    iput v14, v8, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 971
    iput v14, v8, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    const/4 v5, 0x2

    goto :goto_1

    .line 973
    :cond_3
    const/4 v5, 0x2

    iput v5, v8, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 974
    iput v5, v8, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 976
    :goto_1
    const-string v15, "alarms"

    const/4 v5, 0x1

    invoke-static {v0, v15, v5}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v15

    iput-boolean v15, v8, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    .line 977
    const-string/jumbo v15, "media"

    invoke-static {v0, v15, v5}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v15

    iput-boolean v15, v8, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    .line 979
    const-string/jumbo v15, "system"

    const/4 v5, 0x0

    invoke-static {v0, v15, v5}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v15

    iput-boolean v15, v8, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    .line 980
    const-string/jumbo v5, "priorityChannelsAllowed"

    const/4 v15, 0x1

    invoke-static {v0, v5, v15}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v8, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    .line 984
    const-string/jumbo v5, "visualScreenOff"

    invoke-static {v0, v5}, Landroid/service/notification/ZenModeConfig;->unsafeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    .line 985
    .local v5, "allowWhenScreenOff":Ljava/lang/Boolean;
    const-string/jumbo v15, "visualScreenOn"

    invoke-static {v0, v15}, Landroid/service/notification/ZenModeConfig;->unsafeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v15

    .line 986
    .local v15, "allowWhenScreenOn":Ljava/lang/Boolean;
    if-nez v5, :cond_5

    if-eqz v15, :cond_4

    goto :goto_2

    :cond_4
    move/from16 v16, v2

    goto :goto_3

    .line 990
    :cond_5
    :goto_2
    const/4 v9, 0x1

    .line 991
    move/from16 v16, v2

    const/4 v2, 0x0

    .end local v2    # "readRuleCount":I
    .local v16, "readRuleCount":I
    iput v2, v8, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    .line 993
    :goto_3
    if-eqz v5, :cond_6

    .line 994
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    .line 995
    iget v2, v8, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    or-int/lit16 v2, v2, 0x8c

    iput v2, v8, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    .line 1000
    :cond_6
    if-eqz v15, :cond_7

    .line 1001
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1002
    iget v2, v8, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v8, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    .line 1005
    :cond_7
    if-eqz v9, :cond_8

    .line 1006
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v4

    .end local v4    # "callsFrom":I
    .local v17, "callsFrom":I
    const-string v4, "Migrated visual effects to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v8, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1005
    .end local v17    # "callsFrom":I
    .restart local v4    # "callsFrom":I
    :cond_8
    move/from16 v17, v4

    .line 1008
    .end local v4    # "callsFrom":I
    .end local v5    # "allowWhenScreenOff":Ljava/lang/Boolean;
    .end local v12    # "messagesFrom":I
    .end local v14    # "from":I
    .end local v15    # "allowWhenScreenOn":Ljava/lang/Boolean;
    :goto_4
    move/from16 v2, v16

    const/4 v12, 0x0

    goto/16 :goto_9

    .end local v16    # "readRuleCount":I
    .restart local v2    # "readRuleCount":I
    :cond_9
    move/from16 v16, v2

    .end local v2    # "readRuleCount":I
    .restart local v16    # "readRuleCount":I
    const-string v2, "disallow"

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-nez v9, :cond_a

    .line 1011
    const-string/jumbo v2, "visualEffects"

    const/16 v4, 0x9d

    invoke-static {v0, v2, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, v8, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    const/4 v12, 0x0

    goto/16 :goto_8

    .line 1013
    :cond_a
    const-string/jumbo v2, "manual"

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1014
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->readRuleXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v2

    iput-object v2, v8, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1016
    iget-object v2, v8, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v15, 0x1

    iput-boolean v15, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 1020
    const/4 v2, 0x1

    .line 1021
    .end local v10    # "readManualRule":Z
    .local v2, "readManualRule":Z
    iget-object v4, v8, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-nez v4, :cond_b

    .line 1022
    const/4 v4, 0x1

    move v10, v2

    move v11, v4

    move/from16 v2, v16

    const/4 v12, 0x0

    .end local v11    # "readManualRuleWithoutPolicy":Z
    .local v4, "readManualRuleWithoutPolicy":Z
    goto/16 :goto_9

    .line 1024
    .end local v4    # "readManualRuleWithoutPolicy":Z
    .restart local v11    # "readManualRuleWithoutPolicy":Z
    :cond_b
    add-int/lit8 v4, v16, 0x1

    move v10, v2

    move v2, v4

    const/4 v12, 0x0

    .end local v16    # "readRuleCount":I
    .local v4, "readRuleCount":I
    goto :goto_9

    .line 1026
    .end local v2    # "readManualRule":Z
    .end local v4    # "readRuleCount":I
    .restart local v10    # "readManualRule":Z
    .restart local v16    # "readRuleCount":I
    :cond_c
    const-string v2, "automatic"

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "deleted"

    if-nez v4, :cond_f

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_5

    .line 1041
    :cond_d
    const-string/jumbo v2, "state"

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1042
    const-string v2, "areChannelsBypassingDnd"

    const/4 v5, 0x0

    invoke-static {v0, v2, v5}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v8, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    const/4 v12, 0x0

    goto :goto_8

    .line 1041
    :cond_e
    const/4 v12, 0x0

    goto :goto_8

    .line 1027
    :cond_f
    :goto_5
    const-string/jumbo v4, "ruleId"

    const/4 v12, 0x0

    invoke-interface {v0, v12, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1028
    .local v4, "id":Ljava/lang/String;
    if-eqz v4, :cond_12

    .line 1029
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->readRuleXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v13

    .line 1030
    .local v13, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iput-object v4, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 1031
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1032
    invoke-static {v13}, Landroid/service/notification/ZenModeConfig;->deletedRuleKey(Landroid/service/notification/ZenModeConfig$ZenRule;)Ljava/lang/String;

    move-result-object v2

    .line 1033
    .local v2, "deletedRuleKey":Ljava/lang/String;
    if-eqz v2, :cond_11

    .line 1034
    iget-object v5, v8, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 1036
    .end local v2    # "deletedRuleKey":Ljava/lang/String;
    :cond_10
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1037
    iget-object v2, v8, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, v4, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    add-int/lit8 v2, v16, 0x1

    .end local v16    # "readRuleCount":I
    .local v2, "readRuleCount":I
    goto :goto_7

    .line 1036
    .end local v2    # "readRuleCount":I
    .restart local v16    # "readRuleCount":I
    :cond_11
    :goto_6
    nop

    .line 1041
    .end local v4    # "id":Ljava/lang/String;
    .end local v13    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_12
    move/from16 v2, v16

    .end local v16    # "readRuleCount":I
    .restart local v2    # "readRuleCount":I
    :goto_7
    goto :goto_9

    .line 948
    :cond_13
    move/from16 v16, v2

    move-object v12, v4

    .line 1046
    .end local v2    # "readRuleCount":I
    .restart local v16    # "readRuleCount":I
    :goto_8
    move/from16 v2, v16

    .end local v16    # "readRuleCount":I
    .restart local v2    # "readRuleCount":I
    :goto_9
    const/4 v4, 0x3

    if-ne v3, v4, :cond_19

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1047
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v4

    if-eqz v4, :cond_16

    if-eqz v10, :cond_14

    if-eqz v11, :cond_16

    .line 1049
    :cond_14
    iget-object v4, v8, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v8}, Landroid/service/notification/ZenModeConfig;->toZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v5

    iput-object v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1050
    if-eqz v11, :cond_16

    .line 1054
    iget-object v4, v8, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const-string v5, "android"

    iput-object v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 1055
    iget-object v4, v8, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v5, 0x0

    iput v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 1057
    iget-object v4, v8, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-nez v4, :cond_15

    .line 1058
    iget-object v4, v8, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 1060
    :cond_15
    iget-object v4, v8, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    new-instance v5, Landroid/service/notification/Condition;

    iget-object v7, v8, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    const-string v12, ""

    const/4 v15, 0x1

    invoke-direct {v5, v7, v12, v15}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;I)V

    iput-object v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 1062
    add-int/lit8 v2, v2, 0x1

    .line 1066
    :cond_16
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v4

    if-nez v4, :cond_17

    .line 1067
    add-int/lit8 v2, v2, 0x1

    .line 1070
    :cond_17
    if-eqz v1, :cond_18

    .line 1071
    const-string/jumbo v4, "notifications:zen_rules"

    invoke-virtual {v1, v4, v2}, Landroid/app/backup/BackupRestoreEventLogger;->logItemsRestored(Ljava/lang/String;I)V

    .line 1073
    :cond_18
    return-object v8

    .line 946
    :cond_19
    move-object v4, v12

    const/4 v5, 0x2

    goto/16 :goto_0

    .line 1076
    :cond_1a
    move/from16 v16, v2

    .end local v2    # "readRuleCount":I
    .restart local v16    # "readRuleCount":I
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to reach END_DOCUMENT"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static blacklist readZenDeviceEffectsXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/service/notification/ZenDeviceEffects;
    .locals 3
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;

    .line 1461
    new-instance v0, Landroid/service/notification/ZenDeviceEffects$Builder;

    invoke-direct {v0}, Landroid/service/notification/ZenDeviceEffects$Builder;-><init>()V

    .line 1464
    const-string/jumbo v1, "zdeDisplayGrayscale"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .line 1463
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisplayGrayscale(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    .line 1466
    const-string/jumbo v1, "zdeSuppressAmbientDisplay"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .line 1465
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldSuppressAmbientDisplay(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    .line 1468
    const-string/jumbo v1, "zdeDimWallpaper"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .line 1467
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDimWallpaper(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    .line 1470
    const-string/jumbo v1, "zdeUseNightMode"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .line 1469
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldUseNightMode(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    .line 1472
    const-string/jumbo v1, "zdeDisableAutoBrightness"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .line 1471
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableAutoBrightness(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    .line 1474
    const-string/jumbo v1, "zdeDisableTapToWake"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .line 1473
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableTapToWake(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    .line 1476
    const-string/jumbo v1, "zdeDisableTiltToWake"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .line 1475
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableTiltToWake(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    .line 1478
    const-string/jumbo v1, "zdeDisableTouch"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .line 1477
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableTouch(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    .line 1480
    const-string/jumbo v1, "zdeMinimizeRadioUsage"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .line 1479
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldMinimizeRadioUsage(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    .line 1482
    const-string/jumbo v1, "zdeMaximizeDoze"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .line 1481
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldMaximizeDoze(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    .line 1484
    const-string/jumbo v1, "zdeUseNightLight"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .line 1483
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldUseNightLight(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    .line 1485
    const-string/jumbo v1, "zdeExtraEffects"

    invoke-static {p0, v1}, Landroid/service/notification/ZenModeConfig;->safeStringSet(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setExtraEffects(Ljava/util/Set;)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    .line 1486
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects$Builder;->build()Landroid/service/notification/ZenDeviceEffects;

    move-result-object v0

    .line 1488
    .local v0, "deviceEffects":Landroid/service/notification/ZenDeviceEffects;
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->hasEffects()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static blacklist readZenPolicyXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/service/notification/ZenPolicy;
    .locals 21
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;

    .line 1307
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1309
    .local v1, "policySet":Z
    new-instance v2, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {v2}, Landroid/service/notification/ZenPolicy$Builder;-><init>()V

    .line 1310
    .local v2, "builder":Landroid/service/notification/ZenPolicy$Builder;
    const-string v3, "callsFrom"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    .line 1311
    .local v3, "calls":I
    const-string/jumbo v5, "messagesFrom"

    invoke-static {v0, v5, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v5

    .line 1312
    .local v5, "messages":I
    const-string/jumbo v6, "repeatCallers"

    invoke-static {v0, v6, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v6

    .line 1313
    .local v6, "repeatCallers":I
    const-string v7, "convosFrom"

    invoke-static {v0, v7, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 1315
    .local v7, "conversations":I
    const-string v8, "alarms"

    invoke-static {v0, v8, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v8

    .line 1316
    .local v8, "alarms":I
    const-string/jumbo v9, "media"

    invoke-static {v0, v9, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v9

    .line 1317
    .local v9, "media":I
    const-string/jumbo v10, "system"

    invoke-static {v0, v10, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v10

    .line 1318
    .local v10, "system":I
    const-string v11, "events"

    invoke-static {v0, v11, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v11

    .line 1319
    .local v11, "events":I
    const-string/jumbo v12, "reminders"

    invoke-static {v0, v12, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v12

    .line 1320
    .local v12, "reminders":I
    const-string/jumbo v13, "priorityChannelsAllowed"

    invoke-static {v0, v13, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v13

    .line 1322
    .local v13, "channels":I
    const/4 v14, 0x1

    if-eqz v13, :cond_1

    .line 1323
    if-ne v13, v14, :cond_0

    move v15, v14

    goto :goto_0

    :cond_0
    move v15, v4

    :goto_0
    invoke-virtual {v2, v15}, Landroid/service/notification/ZenPolicy$Builder;->allowPriorityChannels(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1324
    const/4 v1, 0x1

    .line 1327
    :cond_1
    if-eqz v3, :cond_2

    .line 1328
    invoke-virtual {v2, v3}, Landroid/service/notification/ZenPolicy$Builder;->allowCalls(I)Landroid/service/notification/ZenPolicy$Builder;

    .line 1329
    const/4 v1, 0x1

    .line 1331
    :cond_2
    if-eqz v5, :cond_3

    .line 1332
    invoke-virtual {v2, v5}, Landroid/service/notification/ZenPolicy$Builder;->allowMessages(I)Landroid/service/notification/ZenPolicy$Builder;

    .line 1333
    const/4 v1, 0x1

    .line 1335
    :cond_3
    if-eqz v6, :cond_5

    .line 1336
    if-ne v6, v14, :cond_4

    move v15, v14

    goto :goto_1

    :cond_4
    move v15, v4

    :goto_1
    invoke-virtual {v2, v15}, Landroid/service/notification/ZenPolicy$Builder;->allowRepeatCallers(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1337
    const/4 v1, 0x1

    .line 1339
    :cond_5
    if-eqz v7, :cond_6

    .line 1340
    invoke-virtual {v2, v7}, Landroid/service/notification/ZenPolicy$Builder;->allowConversations(I)Landroid/service/notification/ZenPolicy$Builder;

    .line 1341
    const/4 v1, 0x1

    .line 1343
    :cond_6
    if-eqz v8, :cond_8

    .line 1344
    if-ne v8, v14, :cond_7

    move v15, v14

    goto :goto_2

    :cond_7
    move v15, v4

    :goto_2
    invoke-virtual {v2, v15}, Landroid/service/notification/ZenPolicy$Builder;->allowAlarms(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1345
    const/4 v1, 0x1

    .line 1347
    :cond_8
    if-eqz v9, :cond_a

    .line 1348
    if-ne v9, v14, :cond_9

    move v15, v14

    goto :goto_3

    :cond_9
    move v15, v4

    :goto_3
    invoke-virtual {v2, v15}, Landroid/service/notification/ZenPolicy$Builder;->allowMedia(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1349
    const/4 v1, 0x1

    .line 1351
    :cond_a
    if-eqz v10, :cond_c

    .line 1352
    if-ne v10, v14, :cond_b

    move v15, v14

    goto :goto_4

    :cond_b
    move v15, v4

    :goto_4
    invoke-virtual {v2, v15}, Landroid/service/notification/ZenPolicy$Builder;->allowSystem(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1353
    const/4 v1, 0x1

    .line 1355
    :cond_c
    if-eqz v11, :cond_e

    .line 1356
    if-ne v11, v14, :cond_d

    move v15, v14

    goto :goto_5

    :cond_d
    move v15, v4

    :goto_5
    invoke-virtual {v2, v15}, Landroid/service/notification/ZenPolicy$Builder;->allowEvents(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1357
    const/4 v1, 0x1

    .line 1359
    :cond_e
    if-eqz v12, :cond_10

    .line 1360
    if-ne v12, v14, :cond_f

    move v15, v14

    goto :goto_6

    :cond_f
    move v15, v4

    :goto_6
    invoke-virtual {v2, v15}, Landroid/service/notification/ZenPolicy$Builder;->allowReminders(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1361
    const/4 v1, 0x1

    .line 1364
    :cond_10
    const-string/jumbo v15, "showFullScreenIntent"

    invoke-static {v0, v15, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v15

    .line 1366
    .local v15, "fullScreenIntent":I
    const-string/jumbo v14, "showLights"

    invoke-static {v0, v14, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v14

    .line 1367
    .local v14, "lights":I
    move/from16 v16, v1

    .end local v1    # "policySet":Z
    .local v16, "policySet":Z
    const-string/jumbo v1, "shoePeek"

    invoke-static {v0, v1, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v1

    .line 1368
    .local v1, "peek":I
    move/from16 v17, v3

    .end local v3    # "calls":I
    .local v17, "calls":I
    const-string/jumbo v3, "showStatusBarIcons"

    invoke-static {v0, v3, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    .line 1369
    .local v3, "statusBar":I
    move/from16 v18, v5

    .end local v5    # "messages":I
    .local v18, "messages":I
    const-string/jumbo v5, "showBadges"

    invoke-static {v0, v5, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v5

    .line 1370
    .local v5, "badges":I
    move/from16 v19, v6

    .end local v6    # "repeatCallers":I
    .local v19, "repeatCallers":I
    const-string/jumbo v6, "showAmbient"

    invoke-static {v0, v6, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v6

    .line 1371
    .local v6, "ambient":I
    move/from16 v20, v7

    .end local v7    # "conversations":I
    .local v20, "conversations":I
    const-string/jumbo v7, "showNotificationList"

    invoke-static {v0, v7, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 1374
    .local v7, "notificationList":I
    if-eqz v15, :cond_12

    .line 1375
    const/4 v4, 0x1

    if-ne v15, v4, :cond_11

    const/4 v4, 0x1

    goto :goto_7

    :cond_11
    const/4 v4, 0x0

    :goto_7
    invoke-virtual {v2, v4}, Landroid/service/notification/ZenPolicy$Builder;->showFullScreenIntent(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1376
    const/4 v4, 0x1

    move/from16 v16, v4

    .line 1378
    :cond_12
    if-eqz v14, :cond_14

    .line 1379
    const/4 v4, 0x1

    if-ne v14, v4, :cond_13

    const/4 v4, 0x1

    goto :goto_8

    :cond_13
    const/4 v4, 0x0

    :goto_8
    invoke-virtual {v2, v4}, Landroid/service/notification/ZenPolicy$Builder;->showLights(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1380
    const/16 v16, 0x1

    .line 1382
    :cond_14
    if-eqz v1, :cond_16

    .line 1383
    const/4 v4, 0x1

    if-ne v1, v4, :cond_15

    const/4 v4, 0x1

    goto :goto_9

    :cond_15
    const/4 v4, 0x0

    :goto_9
    invoke-virtual {v2, v4}, Landroid/service/notification/ZenPolicy$Builder;->showPeeking(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1384
    const/16 v16, 0x1

    .line 1386
    :cond_16
    if-eqz v3, :cond_18

    .line 1387
    const/4 v4, 0x1

    if-ne v3, v4, :cond_17

    const/4 v4, 0x1

    goto :goto_a

    :cond_17
    const/4 v4, 0x0

    :goto_a
    invoke-virtual {v2, v4}, Landroid/service/notification/ZenPolicy$Builder;->showStatusBarIcons(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1388
    const/16 v16, 0x1

    .line 1390
    :cond_18
    if-eqz v5, :cond_1a

    .line 1391
    const/4 v4, 0x1

    if-ne v5, v4, :cond_19

    const/4 v4, 0x1

    goto :goto_b

    :cond_19
    const/4 v4, 0x0

    :goto_b
    invoke-virtual {v2, v4}, Landroid/service/notification/ZenPolicy$Builder;->showBadges(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1392
    const/16 v16, 0x1

    .line 1394
    :cond_1a
    if-eqz v6, :cond_1c

    .line 1395
    const/4 v4, 0x1

    if-ne v6, v4, :cond_1b

    const/4 v4, 0x1

    goto :goto_c

    :cond_1b
    const/4 v4, 0x0

    :goto_c
    invoke-virtual {v2, v4}, Landroid/service/notification/ZenPolicy$Builder;->showInAmbientDisplay(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1396
    const/16 v16, 0x1

    .line 1398
    :cond_1c
    if-eqz v7, :cond_1e

    .line 1399
    const/4 v4, 0x1

    if-ne v7, v4, :cond_1d

    goto :goto_d

    :cond_1d
    const/4 v4, 0x0

    :goto_d
    invoke-virtual {v2, v4}, Landroid/service/notification/ZenPolicy$Builder;->showInNotificationList(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1400
    const/16 v16, 0x1

    .line 1403
    :cond_1e
    if-eqz v16, :cond_1f

    .line 1404
    invoke-virtual {v2}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v4

    return-object v4

    .line 1406
    :cond_1f
    const/4 v4, 0x0

    return-object v4
.end method

.method private static blacklist rulesToString(Landroid/util/ArrayMap;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 766
    .local p0, "ruleList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    const-string/jumbo v0, "{}"

    return-object v0

    .line 770
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 771
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 773
    if-lez v1, :cond_1

    .line 774
    const-string v2, ",\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    :cond_1
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 777
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 772
    .end local v2    # "value":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 779
    .end local v1    # "i":I
    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 780
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .line 1561
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o safeBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "val"    # Ljava/lang/String;
    .param p1, "defValue"    # Z

    .line 1565
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    .line 1566
    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist safeComponentName(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 3
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "att"    # Ljava/lang/String;

    .line 1574
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1575
    .local v1, "val":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 1576
    :cond_0
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist safeInstant(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/time/Instant;)Ljava/time/Instant;
    .locals 4
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/time/Instant;

    .line 1613
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1614
    .local v1, "strValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1615
    invoke-static {v1, v0}, Landroid/service/notification/ZenModeConfig;->tryParseLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    .line 1616
    .local v0, "longValue":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 1617
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v2

    return-object v2

    .line 1620
    .end local v0    # "longValue":Ljava/lang/Long;
    :cond_0
    return-object p2
.end method

.method private static blacklist safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I
    .locals 1
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .line 1570
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static blacklist safeLong(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J
    .locals 3
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .line 1586
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1587
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0, p2, p3}, Landroid/service/notification/ZenModeConfig;->tryParseLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method private static blacklist safeStringSet(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/Set;
    .locals 9
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlPullParser;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1592
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1594
    .local v0, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1595
    .local v1, "serialized":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1598
    sget-object v2, Landroid/service/notification/ZenModeConfig;->ITEM_SPLITTER_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 1599
    .local v2, "escapedItems":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 1600
    .local v5, "escapedItem":Ljava/lang/String;
    nop

    .line 1601
    const-string v6, "\\\\"

    const-string v7, "\\"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1603
    const-string v7, "\\,"

    const-string v8, ","

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1600
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1599
    .end local v5    # "escapedItem":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1607
    .end local v2    # "escapedItems":[Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static blacklist safeUri(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "att"    # Ljava/lang/String;

    .line 1580
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1581
    .local v1, "val":Ljava/lang/String;
    if-nez v1, :cond_0

    return-object v0

    .line 1582
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o sameCondition(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 4
    .param p0, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 802
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 803
    :cond_0
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 804
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-nez v1, :cond_1

    move v0, v2

    :cond_1
    return v0

    .line 806
    :cond_2
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget-object v3, v3, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move v0, v2

    :cond_4
    return v0
.end method

.method private static greylist-max-o sourceToPrioritySenders(II)I
    .locals 1
    .param p0, "source"    # I
    .param p1, "def"    # I

    .line 2012
    packed-switch p0, :pswitch_data_0

    .line 2016
    return p1

    .line 2015
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 2014
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 2013
    :pswitch_2
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-o sourceToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # I

    .line 823
    packed-switch p0, :pswitch_data_0

    .line 831
    const-string v0, "UNKNOWN"

    return-object v0

    .line 829
    :pswitch_0
    const-string/jumbo v0, "stars"

    return-object v0

    .line 827
    :pswitch_1
    const-string v0, "contacts"

    return-object v0

    .line 825
    :pswitch_2
    const-string v0, "anyone"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-o toCountdownConditionId(JZ)Landroid/net/Uri;
    .locals 2
    .param p0, "time"    # J
    .param p2, "alarm"    # Z

    .line 2185
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2186
    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2187
    const-string v1, "countdown"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2188
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2189
    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2190
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2191
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 2185
    return-object v0
.end method

.method public static blacklist toCustomManualConditionId()Landroid/net/Uri;
    .locals 1

    .line 2470
    sget-object v0, Landroid/service/notification/ZenModeConfig;->CUSTOM_MANUAL_CONDITION_ID:Landroid/net/Uri;

    return-object v0
.end method

.method private static greylist-max-o toDayList([I)Ljava/lang/String;
    .locals 3
    .param p0, "days"    # [I

    .line 876
    if-eqz p0, :cond_3

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 877
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 878
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 879
    if-lez v1, :cond_1

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 880
    :cond_1
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 878
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 882
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 876
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :goto_1
    const-string v0, ""

    return-object v0
.end method

.method public static greylist-max-o toEventConditionId(Landroid/service/notification/ZenModeConfig$EventInfo;)Landroid/net/Uri;
    .locals 4
    .param p0, "event"    # Landroid/service/notification/ZenModeConfig$EventInfo;

    .line 2378
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2379
    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2380
    const-string v1, "event"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    int-to-long v1, v1

    .line 2381
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2382
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    const-string v2, ""

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "calendar"

    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2383
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 2384
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    nop

    .line 2383
    :goto_1
    const-string v1, "calendarId"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    .line 2385
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "reply"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2386
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 2378
    return-object v0
.end method

.method public static greylist-max-o toNextAlarmCondition(Landroid/content/Context;JI)Landroid/service/notification/Condition;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarm"    # J
    .param p3, "userHandle"    # I

    .line 2136
    move-wide/from16 v0, p1

    invoke-static {v0, v1}, Landroid/service/notification/ZenModeConfig;->isToday(J)Z

    move-result v2

    .line 2137
    .local v2, "isSameDay":Z
    move-object/from16 v3, p0

    move/from16 v4, p3

    invoke-static {v3, v0, v1, v2, v4}, Landroid/service/notification/ZenModeConfig;->getFormattedTime(Landroid/content/Context;JZI)Ljava/lang/CharSequence;

    move-result-object v5

    .line 2138
    .local v5, "formattedTime":Ljava/lang/CharSequence;
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 2139
    .local v6, "res":Landroid/content/res/Resources;
    const v7, 0x1040afc

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 2140
    .local v12, "line1":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-static {v0, v1, v7}, Landroid/service/notification/ZenModeConfig;->toCountdownConditionId(JZ)Landroid/net/Uri;

    move-result-object v10

    .line 2141
    .local v10, "id":Landroid/net/Uri;
    new-instance v9, Landroid/service/notification/Condition;

    const/4 v15, 0x1

    const/16 v16, 0x1

    const-string v11, ""

    const-string v13, ""

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v16}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v9
.end method

.method public static greylist-max-o toScheduleCalendar(Landroid/net/Uri;)Landroid/service/notification/ScheduleCalendar;
    .locals 3
    .param p0, "conditionId"    # Landroid/net/Uri;

    .line 2003
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    .line 2004
    .local v0, "schedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2005
    :cond_0
    new-instance v1, Landroid/service/notification/ScheduleCalendar;

    invoke-direct {v1}, Landroid/service/notification/ScheduleCalendar;-><init>()V

    .line 2006
    .local v1, "sc":Landroid/service/notification/ScheduleCalendar;
    invoke-virtual {v1, v0}, Landroid/service/notification/ScheduleCalendar;->setSchedule(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)V

    .line 2007
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ScheduleCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2008
    return-object v1

    .line 2004
    .end local v1    # "sc":Landroid/service/notification/ScheduleCalendar;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static greylist-max-o toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;
    .locals 4
    .param p0, "schedule"    # Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .line 2237
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2238
    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2239
    const-string/jumbo v1, "schedule"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 2240
    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->toDayList([I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "days"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2241
    const-string/jumbo v3, "start"

    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2242
    const-string v2, "end"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    .line 2243
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "exitAtAlarm"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2244
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 2237
    return-object v0
.end method

.method public static greylist-max-o toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minutesFromNow"    # I
    .param p2, "userHandle"    # I

    .line 2079
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minutesFromNow"    # I
    .param p2, "userHandle"    # I
    .param p3, "shortVersion"    # Z

    .line 2084
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2085
    .local v0, "now":J
    if-nez p1, :cond_0

    const-wide/16 v2, 0x2710

    goto :goto_0

    :cond_0
    const v2, 0xea60

    mul-int/2addr v2, p1

    int-to-long v2, v2

    .line 2086
    .local v2, "millis":J
    :goto_0
    add-long v5, v0, v2

    move-object v4, p0

    move v7, p1

    move v8, p2

    move v9, p3

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "minutesFromNow":I
    .end local p2    # "userHandle":I
    .end local p3    # "shortVersion":Z
    .local v4, "context":Landroid/content/Context;
    .local v7, "minutesFromNow":I
    .local v8, "userHandle":I
    .local v9, "shortVersion":Z
    invoke-static/range {v4 .. v9}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J
    .param p3, "minutes"    # I
    .param p4, "userHandle"    # I
    .param p5, "shortVersion"    # Z

    .line 2093
    move-wide/from16 v0, p1

    move/from16 v2, p3

    .line 2094
    invoke-static {v0, v1}, Landroid/service/notification/ZenModeConfig;->isToday(J)Z

    move-result v3

    move-object/from16 v4, p0

    move/from16 v5, p4

    invoke-static {v4, v0, v1, v3, v5}, Landroid/service/notification/ZenModeConfig;->getFormattedTime(Landroid/content/Context;JZI)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2095
    .local v3, "formattedTime":Ljava/lang/CharSequence;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 2096
    .local v6, "res":Landroid/content/res/Resources;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2097
    .local v7, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v8, 0x3c

    const v9, 0x1040afc

    const-string v10, "formattedTime"

    const-string v11, "count"

    if-ge v2, v8, :cond_2

    .line 2099
    move/from16 v8, p3

    .line 2100
    .local v8, "num":I
    if-eqz p5, :cond_0

    const v12, 0x1040aee

    goto :goto_0

    .line 2101
    :cond_0
    const v12, 0x1040aed

    :goto_0
    nop

    .line 2102
    .local v12, "summaryResId":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v7, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2103
    invoke-interface {v7, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2104
    invoke-static {v6, v7, v12}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v10

    .line 2105
    .local v10, "summary":Ljava/lang/String;
    if-eqz p5, :cond_1

    const v11, 0x1040aec

    goto :goto_1

    .line 2106
    :cond_1
    const v11, 0x1040aeb

    :goto_1
    nop

    .line 2107
    .local v11, "line1ResId":I
    invoke-static {v6, v7, v11}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v13

    .line 2108
    .local v13, "line1":Ljava/lang/String;
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v6, v9, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 2109
    .end local v11    # "line1ResId":I
    .end local v12    # "summaryResId":I
    .local v9, "line2":Ljava/lang/String;
    move-object/from16 v18, v9

    move-object/from16 v16, v10

    move-object/from16 v17, v13

    goto :goto_4

    .end local v8    # "num":I
    .end local v9    # "line2":Ljava/lang/String;
    .end local v10    # "summary":Ljava/lang/String;
    .end local v13    # "line1":Ljava/lang/String;
    :cond_2
    const/16 v8, 0x5a0

    if-ge v2, v8, :cond_5

    .line 2111
    int-to-float v8, v2

    const/high16 v12, 0x42700000    # 60.0f

    div-float/2addr v8, v12

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 2112
    .restart local v8    # "num":I
    if-eqz p5, :cond_3

    const v12, 0x1040aea

    goto :goto_2

    .line 2113
    :cond_3
    const v12, 0x1040ae9

    :goto_2
    nop

    .line 2114
    .restart local v12    # "summaryResId":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v7, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2115
    invoke-interface {v7, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2116
    invoke-static {v6, v7, v12}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v10

    .line 2117
    .restart local v10    # "summary":Ljava/lang/String;
    if-eqz p5, :cond_4

    const v11, 0x1040ae8

    goto :goto_3

    .line 2118
    :cond_4
    const v11, 0x1040ae7

    :goto_3
    nop

    .line 2119
    .restart local v11    # "line1ResId":I
    invoke-static {v6, v7, v11}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v13

    .line 2120
    .restart local v13    # "line1":Ljava/lang/String;
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v6, v9, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 2121
    .end local v11    # "line1ResId":I
    .end local v12    # "summaryResId":I
    .restart local v9    # "line2":Ljava/lang/String;
    move-object/from16 v18, v9

    move-object/from16 v16, v10

    move-object/from16 v17, v13

    goto :goto_4

    .line 2123
    .end local v8    # "num":I
    .end local v9    # "line2":Ljava/lang/String;
    .end local v10    # "summary":Ljava/lang/String;
    .end local v13    # "line1":Ljava/lang/String;
    :cond_5
    const v8, 0x1040afd

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .restart local v9    # "line2":Ljava/lang/String;
    move-object v13, v8

    .restart local v13    # "line1":Ljava/lang/String;
    move-object v10, v8

    move-object/from16 v18, v9

    move-object/from16 v16, v10

    move-object/from16 v17, v13

    .line 2126
    .end local v9    # "line2":Ljava/lang/String;
    .end local v13    # "line1":Ljava/lang/String;
    .local v16, "summary":Ljava/lang/String;
    .local v17, "line1":Ljava/lang/String;
    .local v18, "line2":Ljava/lang/String;
    :goto_4
    const/4 v8, 0x0

    invoke-static {v0, v1, v8}, Landroid/service/notification/ZenModeConfig;->toCountdownConditionId(JZ)Landroid/net/Uri;

    move-result-object v15

    .line 2127
    .local v15, "id":Landroid/net/Uri;
    new-instance v14, Landroid/service/notification/Condition;

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v21}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v14
.end method

.method public static greylist-max-o tryParseCountdownConditionId(Landroid/net/Uri;)J
    .locals 5
    .param p0, "conditionId"    # Landroid/net/Uri;

    .line 2195
    const-string v0, "android"

    invoke-static {p0, v0}, Landroid/service/notification/Condition;->isValidId(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 2196
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_2

    .line 2197
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "countdown"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 2199
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 2200
    :catch_0
    move-exception v0

    .line 2201
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing countdown condition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ZenModeConfig"

    invoke-static {v4, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2202
    return-wide v1

    .line 2197
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_2
    :goto_0
    return-wide v1
.end method

.method private static greylist-max-o tryParseDayList(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 6
    .param p0, "dayList"    # Ljava/lang/String;
    .param p1, "sep"    # Ljava/lang/String;

    .line 886
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 887
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 888
    .local v1, "tokens":[Ljava/lang/String;
    array-length v2, v1

    if-nez v2, :cond_1

    return-object v0

    .line 889
    :cond_1
    array-length v2, v1

    new-array v2, v2, [I

    .line 890
    .local v2, "rt":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_3

    .line 891
    aget-object v4, v1, v3

    const/4 v5, -0x1

    invoke-static {v4, v5}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v4

    .line 892
    .local v4, "day":I
    if-ne v4, v5, :cond_2

    return-object v0

    .line 893
    :cond_2
    aput v4, v2, v3

    .line 890
    .end local v4    # "day":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 895
    .end local v3    # "i":I
    :cond_3
    return-object v2
.end method

.method public static greylist-max-o tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;
    .locals 6
    .param p0, "conditionId"    # Landroid/net/Uri;

    .line 2399
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 2400
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "condition"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2401
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2402
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2403
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "event"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    .line 2404
    .local v2, "isEvent":Z
    :goto_0
    const/4 v1, 0x0

    if-nez v2, :cond_1

    return-object v1

    .line 2405
    :cond_1
    new-instance v3, Landroid/service/notification/ZenModeConfig$EventInfo;

    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig$EventInfo;-><init>()V

    .line 2406
    .local v3, "rt":Landroid/service/notification/ZenModeConfig$EventInfo;
    const-string/jumbo v4, "userId"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, -0x2710

    invoke-static {v4, v5}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    .line 2407
    const-string v4, "calendar"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    .line 2408
    iget-object v4, v3, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2409
    iput-object v1, v3, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    .line 2411
    :cond_2
    const-string v4, "calendarId"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/service/notification/ZenModeConfig;->tryParseLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v3, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    .line 2412
    const-string/jumbo v1, "reply"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v3, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    .line 2413
    return-object v3
.end method

.method private static greylist-max-o tryParseHourAndMinute(Ljava/lang/String;)[I
    .locals 7
    .param p0, "value"    # Ljava/lang/String;

    .line 2499
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2500
    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2501
    .local v0, "i":I
    const/4 v2, 0x1

    if-lt v0, v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    if-lt v0, v3, :cond_1

    goto :goto_0

    .line 2502
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v4, v5}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v4

    .line 2503
    .local v4, "hour":I
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v5

    .line 2504
    .local v5, "minute":I
    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v5}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v4, v1, v3

    aput v5, v1, v2

    :cond_2
    return-object v1

    .line 2501
    .end local v4    # "hour":I
    .end local v5    # "minute":I
    :cond_3
    :goto_0
    return-object v1
.end method

.method private static greylist-max-o tryParseInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # I

    .line 899
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    .line 901
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 902
    :catch_0
    move-exception v0

    .line 903
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p1
.end method

.method private static greylist-max-o tryParseLong(Ljava/lang/String;J)J
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # J

    .line 908
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide p1

    .line 910
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 911
    :catch_0
    move-exception v0

    .line 912
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-wide p1
.end method

.method private static blacklist tryParseLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # Ljava/lang/Long;

    .line 917
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 919
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 920
    :catch_0
    move-exception v0

    .line 921
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-object p1
.end method

.method public static greylist tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .locals 8
    .param p0, "conditionId"    # Landroid/net/Uri;

    .line 2286
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 2287
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "condition"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2288
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2289
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 2290
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "schedule"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 2291
    .local v2, "isSchedule":Z
    :goto_0
    const/4 v3, 0x0

    if-nez v2, :cond_1

    return-object v3

    .line 2292
    :cond_1
    const-string/jumbo v4, "start"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->tryParseHourAndMinute(Ljava/lang/String;)[I

    move-result-object v4

    .line 2293
    .local v4, "start":[I
    const-string v5, "end"

    invoke-virtual {p0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/service/notification/ZenModeConfig;->tryParseHourAndMinute(Ljava/lang/String;)[I

    move-result-object v5

    .line 2294
    .local v5, "end":[I
    if-eqz v4, :cond_3

    if-nez v5, :cond_2

    goto :goto_1

    .line 2295
    :cond_2
    new-instance v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 2296
    .local v3, "rt":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    const-string v6, "days"

    invoke-virtual {p0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\."

    invoke-static {v6, v7}, Landroid/service/notification/ZenModeConfig;->tryParseDayList(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v6

    iput-object v6, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 2297
    aget v6, v4, v1

    iput v6, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 2298
    aget v6, v4, v0

    iput v6, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    .line 2299
    aget v6, v5, v1

    iput v6, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 2300
    aget v0, v5, v0

    iput v0, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    .line 2301
    const-string v0, "exitAtAlarm"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    .line 2302
    return-object v3

    .line 2294
    .end local v3    # "rt":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    :cond_3
    :goto_1
    return-object v3
.end method

.method private static greylist-max-o tryParseZenMode(Ljava/lang/String;I)I
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # I

    .line 2508
    invoke-static {p0, p1}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v0

    .line 2509
    .local v0, "rt":I
    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    return v1
.end method

.method private static blacklist unsafeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "att"    # Ljava/lang/String;

    .line 1554
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1555
    :catch_0
    move-exception v1

    .line 1556
    .local v1, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method private static blacklist writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1515
    if-eqz p2, :cond_0

    .line 1516
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, v0, p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1518
    :cond_0
    return-void
.end method

.method public static blacklist writeConditionXml(Landroid/service/notification/Condition;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 3
    .param p0, "c"    # Landroid/service/notification/Condition;
    .param p1, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1292
    iget-object v0, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "id"

    invoke-interface {p1, v1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1293
    const-string/jumbo v0, "summary"

    iget-object v2, p0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1294
    const-string/jumbo v0, "line1"

    iget-object v2, p0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1295
    const-string/jumbo v0, "line2"

    iget-object v2, p0, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1296
    const-string/jumbo v0, "icon"

    iget v2, p0, Landroid/service/notification/Condition;->icon:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1297
    const-string/jumbo v0, "state"

    iget v2, p0, Landroid/service/notification/Condition;->state:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1298
    const-string/jumbo v0, "source"

    iget v2, p0, Landroid/service/notification/Condition;->source:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1299
    const-string v0, "flags"

    iget v2, p0, Landroid/service/notification/Condition;->flags:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1300
    return-void
.end method

.method public static blacklist writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Lcom/android/modules/utils/TypedXmlSerializer;Z)V
    .locals 5
    .param p0, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;
    .param p1, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .param p2, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1209
    const-string v0, "enabled"

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1210
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1211
    const-string/jumbo v0, "name"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1213
    :cond_0
    const-string/jumbo v0, "zen"

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1214
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1215
    const-string/jumbo v0, "pkg"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1217
    :cond_1
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    .line 1218
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "component"

    invoke-interface {p1, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1220
    :cond_2
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_3

    .line 1221
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 1222
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 1221
    const-string v1, "configActivity"

    invoke-interface {p1, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1224
    :cond_3
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 1225
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "conditionId"

    invoke-interface {p1, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1227
    :cond_4
    const-string v0, "creationTime"

    iget-wide v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    invoke-interface {p1, v2, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1228
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1229
    const-string v0, "enabler"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1231
    :cond_5
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v0, :cond_6

    .line 1232
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-static {v0, p1}, Landroid/service/notification/ZenModeConfig;->writeConditionXml(Landroid/service/notification/Condition;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1234
    :cond_6
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-eqz v0, :cond_7

    .line 1235
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyXml(Landroid/service/notification/ZenPolicy;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1237
    :cond_7
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    if-eqz v0, :cond_8

    .line 1238
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-static {v0, p1}, Landroid/service/notification/ZenModeConfig;->writeZenDeviceEffectsXml(Landroid/service/notification/ZenDeviceEffects;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1240
    :cond_8
    const-string/jumbo v0, "userInvokable"

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1241
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 1242
    const-string/jumbo v0, "rule_icon"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1244
    :cond_9
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 1245
    const-string/jumbo v0, "triggerDesc"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1247
    :cond_a
    const-string/jumbo v0, "type"

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1248
    const-string/jumbo v0, "userModifiedFields"

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1249
    const-string/jumbo v0, "policyUserModifiedFields"

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1250
    const-string/jumbo v0, "zdeUserModifiedFields"

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1252
    const-string v0, "deletionInstant"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    invoke-static {p1, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeXmlAttributeInstant(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/time/Instant;)V

    .line 1253
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1254
    const-string v0, "disabledOrigin"

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->disabledOrigin:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1255
    const-string/jumbo v0, "legacySuppressedEffects"

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->legacySuppressedEffects:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1257
    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    if-nez p2, :cond_b

    .line 1258
    const-string v0, "conditionOverride"

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1260
    :cond_b
    invoke-static {}, Landroid/app/Flags;->modesCleanupImplicit()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1261
    const-string/jumbo v0, "lastActivation"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->lastActivation:Ljava/time/Instant;

    invoke-static {p1, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeXmlAttributeInstant(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/time/Instant;)V

    .line 1264
    :cond_c
    return-void
.end method

.method private static blacklist writeRulesToParcel(Landroid/util/ArrayMap;Landroid/os/Parcel;)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .line 505
    .local p0, "ruleMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 506
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 507
    .local v0, "len":I
    new-array v2, v0, [Ljava/lang/String;

    .line 508
    .local v2, "ids":[Ljava/lang/String;
    new-array v3, v0, [Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 509
    .local v3, "rules":[Landroid/service/notification/ZenModeConfig$ZenRule;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 510
    invoke-virtual {p0, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v2, v4

    .line 511
    invoke-virtual {p0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    aput-object v5, v3, v4

    .line 509
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 513
    .end local v4    # "i":I
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 515
    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 516
    .end local v0    # "len":I
    .end local v2    # "ids":[Ljava/lang/String;
    .end local v3    # "rules":[Landroid/service/notification/ZenModeConfig$ZenRule;
    goto :goto_1

    .line 517
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    :goto_1
    return-void
.end method

.method private static blacklist writeStringSet(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/util/Set;)V
    .locals 6
    .param p0, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .param p1, "att"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1522
    .local p2, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1523
    return-void

    .line 1527
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1528
    .local v0, "escapedItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ","

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1529
    .local v2, "item":Ljava/lang/String;
    nop

    .line 1531
    const-string v4, "\\"

    const-string v5, "\\\\"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1533
    const-string v5, "\\,"

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1529
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1535
    .end local v2    # "item":Ljava/lang/String;
    goto :goto_0

    .line 1536
    :cond_1
    invoke-static {v3, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 1537
    .local v1, "serialized":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {p0, v2, p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1538
    return-void
.end method

.method private static blacklist writeXmlAttributeInstant(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/time/Instant;)V
    .locals 3
    .param p0, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "instant"    # Ljava/time/Instant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1268
    if-eqz p2, :cond_0

    .line 1269
    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-interface {p0, v0, p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1271
    :cond_0
    return-void
.end method

.method private static blacklist writeZenDeviceEffectsXml(Landroid/service/notification/ZenDeviceEffects;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 2
    .param p0, "deviceEffects"    # Landroid/service/notification/ZenDeviceEffects;
    .param p1, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1493
    nop

    .line 1494
    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisplayGrayscale()Z

    move-result v0

    .line 1493
    const-string/jumbo v1, "zdeDisplayGrayscale"

    invoke-static {p1, v1, v0}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1495
    nop

    .line 1496
    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldSuppressAmbientDisplay()Z

    move-result v0

    .line 1495
    const-string/jumbo v1, "zdeSuppressAmbientDisplay"

    invoke-static {p1, v1, v0}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1497
    const-string/jumbo v0, "zdeDimWallpaper"

    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldDimWallpaper()Z

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1498
    const-string/jumbo v0, "zdeUseNightMode"

    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightMode()Z

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1499
    nop

    .line 1500
    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableAutoBrightness()Z

    move-result v0

    .line 1499
    const-string/jumbo v1, "zdeDisableAutoBrightness"

    invoke-static {p1, v1, v0}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1501
    nop

    .line 1502
    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTapToWake()Z

    move-result v0

    .line 1501
    const-string/jumbo v1, "zdeDisableTapToWake"

    invoke-static {p1, v1, v0}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1503
    nop

    .line 1504
    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTiltToWake()Z

    move-result v0

    .line 1503
    const-string/jumbo v1, "zdeDisableTiltToWake"

    invoke-static {p1, v1, v0}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1505
    const-string/jumbo v0, "zdeDisableTouch"

    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTouch()Z

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1506
    nop

    .line 1507
    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldMinimizeRadioUsage()Z

    move-result v0

    .line 1506
    const-string/jumbo v1, "zdeMinimizeRadioUsage"

    invoke-static {p1, v1, v0}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1508
    const-string/jumbo v0, "zdeMaximizeDoze"

    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldMaximizeDoze()Z

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1509
    const-string/jumbo v0, "zdeUseNightLight"

    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightLight()Z

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1510
    const-string/jumbo v0, "zdeExtraEffects"

    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->getExtraEffects()Ljava/util/Set;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeStringSet(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/util/Set;)V

    .line 1511
    return-void
.end method

.method private static blacklist writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 2
    .param p0, "attr"    # Ljava/lang/String;
    .param p1, "val"    # I
    .param p2, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1439
    const-string v0, "callsFrom"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 1440
    const-string/jumbo v0, "messagesFrom"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1444
    :cond_0
    const-string v0, "convosFrom"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1445
    if-eqz p1, :cond_4

    .line 1446
    invoke-interface {p2, v1, p0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 1448
    :cond_1
    const-string/jumbo v0, "priorityChannelsAllowed"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1449
    if-eqz p1, :cond_4

    .line 1450
    invoke-interface {p2, v1, p0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 1453
    :cond_2
    if-eqz p1, :cond_4

    .line 1454
    invoke-interface {p2, v1, p0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 1441
    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    .line 1442
    invoke-interface {p2, v1, p0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1457
    :cond_4
    :goto_1
    return-void
.end method

.method public static blacklist writeZenPolicyXml(Landroid/service/notification/ZenPolicy;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 2
    .param p0, "policy"    # Landroid/service/notification/ZenPolicy;
    .param p1, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1414
    const-string v0, "callsFrom"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1415
    const-string/jumbo v0, "messagesFrom"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1416
    const-string/jumbo v0, "repeatCallers"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryRepeatCallers()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1418
    const-string v0, "convosFrom"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1419
    const-string v0, "alarms"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryAlarms()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1420
    const-string/jumbo v0, "media"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMedia()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1421
    const-string/jumbo v0, "system"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategorySystem()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1422
    const-string/jumbo v0, "reminders"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryReminders()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1423
    const-string v0, "events"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryEvents()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1425
    const-string/jumbo v0, "showFullScreenIntent"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectFullScreenIntent()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1427
    const-string/jumbo v0, "showLights"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectLights()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1428
    const-string/jumbo v0, "shoePeek"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectPeek()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1429
    const-string/jumbo v0, "showStatusBarIcons"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectStatusBar()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1430
    const-string/jumbo v0, "showBadges"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectBadge()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1431
    const-string/jumbo v0, "showAmbient"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectAmbient()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1432
    const-string/jumbo v0, "showNotificationList"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectNotificationList()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1434
    const-string/jumbo v0, "priorityChannelsAllowed"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1435
    return-void
.end method


# virtual methods
.method public greylist-max-o applyNotificationPolicy(Landroid/app/NotificationManager$Policy;)V
    .locals 6
    .param p1, "policy"    # Landroid/app/NotificationManager$Policy;

    .line 2042
    if-nez p1, :cond_0

    return-void

    .line 2043
    :cond_0
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 2044
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {p1}, Landroid/service/notification/ZenAdapters;->notificationPolicyToZenPolicy(Landroid/app/NotificationManager$Policy;)Landroid/service/notification/ZenPolicy;

    move-result-object v4

    iput-object v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 2045
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v4, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v4, v4, 0x3

    iput v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->legacySuppressedEffects:I

    goto/16 :goto_9

    .line 2048
    :cond_1
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Landroid/service/notification/ZenModeConfig;->setAllowAlarms(Z)V

    .line 2049
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    .line 2050
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    .line 2051
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    move v0, v3

    goto :goto_3

    :cond_5
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 2052
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_6

    move v0, v3

    goto :goto_4

    :cond_6
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 2053
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_7

    move v0, v3

    goto :goto_5

    :cond_7
    move v0, v2

    :goto_5
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 2054
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    move v0, v3

    goto :goto_6

    :cond_8
    move v0, v2

    :goto_6
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 2055
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    move v0, v3

    goto :goto_7

    :cond_9
    move v0, v2

    :goto_7
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 2058
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v0, v4}, Landroid/service/notification/ZenModeConfig;->normalizePrioritySenders(II)I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 2059
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v0, v4}, Landroid/service/notification/ZenModeConfig;->normalizePrioritySenders(II)I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 2061
    iget v0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    if-eq v0, v1, :cond_a

    .line 2062
    iget v0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    .line 2064
    :cond_a
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_b

    move v0, v3

    goto :goto_8

    :cond_b
    move v0, v2

    :goto_8
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    .line 2066
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    iget v4, p1, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    iget v5, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    invoke-static {v0, v4, v5}, Landroid/service/notification/ZenModeConfig;->normalizeConversationSenders(ZII)I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    .line 2069
    iget v0, p1, Landroid/app/NotificationManager$Policy;->state:I

    if-eq v0, v1, :cond_c

    .line 2070
    invoke-virtual {p1}, Landroid/app/NotificationManager$Policy;->allowPriorityChannels()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/service/notification/ZenModeConfig;->setAllowPriorityChannels(Z)V

    .line 2073
    :cond_c
    :goto_9
    iget v0, p1, Landroid/app/NotificationManager$Policy;->state:I

    if-eq v0, v1, :cond_e

    .line 2074
    iget v0, p1, Landroid/app/NotificationManager$Policy;->state:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_d

    move v2, v3

    :cond_d
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    .line 2076
    :cond_e
    return-void
.end method

.method public greylist-max-o copy()Landroid/service/notification/ZenModeConfig;
    .locals 2

    .line 1629
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1631
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1632
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1633
    new-instance v1, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v1, v0}, Landroid/service/notification/ZenModeConfig;-><init>(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1635
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1633
    return-object v1

    .line 1635
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1636
    throw v1
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 1625
    const/4 v0, 0x0

    return v0
.end method

.method blacklist ensureManualZenRule()V
    .locals 3

    .line 450
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-nez v0, :cond_0

    .line 451
    new-instance v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 452
    .local v0, "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const/4 v1, 0x0

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 453
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 454
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 455
    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    .line 456
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getDefaultZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 457
    const-string v1, "android"

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 458
    iput-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 460
    .end local v0    # "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_0
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 837
    instance-of v0, p1, Landroid/service/notification/ZenModeConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 838
    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 839
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/service/notification/ZenModeConfig;

    .line 842
    .local v2, "other":Landroid/service/notification/ZenModeConfig;
    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/service/notification/ZenModeConfig;->user:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->user:I

    if-ne v3, v4, :cond_2

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 853
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 854
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v2, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    if-ne v3, v4, :cond_2

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    .line 859
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    if-ne v3, v4, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    nop

    .line 842
    :goto_0
    return v1
.end method

.method public blacklist getAllowCallsFrom()I
    .locals 2

    .line 636
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 638
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v0

    .line 637
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/service/notification/ZenAdapters;->peopleTypeToPrioritySenders(II)I

    move-result v0

    return v0

    .line 640
    :cond_0
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    return v0
.end method

.method public blacklist getAllowConversationsFrom()I
    .locals 1

    .line 583
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v0

    return v0

    .line 586
    :cond_0
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    return v0
.end method

.method public blacklist getAllowMessagesFrom()I
    .locals 2

    .line 614
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 617
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    return v0

    .line 615
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getSuppressedVisualEffects()I
    .locals 2

    .line 567
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 570
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    return v0

    .line 568
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getZenPolicy()Landroid/service/notification/ZenPolicy;
    .locals 1

    .line 1653
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->toZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 20

    .line 867
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 868
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget v1, v0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 869
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v1, v0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget v1, v0, Landroid/service/notification/ZenModeConfig;->user:I

    .line 870
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v13, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v14, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v1, v0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    .line 871
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    iget v1, v0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    .line 872
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    filled-new-array/range {v2 .. v19}, [Ljava/lang/Object;

    move-result-object v1

    .line 867
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public blacklist isAllowAlarms()Z
    .locals 2

    .line 744
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 747
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    return v0

    .line 745
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isAllowCalls()Z
    .locals 2

    .line 759
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 762
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    return v0

    .line 760
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isAllowConversations()Z
    .locals 2

    .line 607
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 610
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    return v0

    .line 608
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isAllowEvents()Z
    .locals 3

    .line 661
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v0

    return v0

    .line 665
    :cond_0
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    return v0
.end method

.method public blacklist isAllowMedia()Z
    .locals 2

    .line 729
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 732
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    return v0

    .line 730
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isAllowMessages()Z
    .locals 2

    .line 692
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 695
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    return v0

    .line 693
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isAllowPriorityChannels()Z
    .locals 2

    .line 552
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    return v0

    .line 553
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isAllowReminders()Z
    .locals 2

    .line 677
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 680
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    return v0

    .line 678
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isAllowRepeatCallers()Z
    .locals 2

    .line 699
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 702
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    return v0

    .line 700
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isAllowSystem()Z
    .locals 2

    .line 714
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 717
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    return v0

    .line 715
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isManualActive()Z
    .locals 3

    .line 2539
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 2540
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 2542
    :cond_1
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public greylist-max-o isValid()Z
    .locals 4

    .line 784
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 785
    :cond_0
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 786
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 787
    iget-object v3, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->isValidAutomaticRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    .line 786
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 789
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist setAllowAlarms(Z)V
    .locals 2
    .param p1, "allowAlarms"    # Z

    .line 751
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 754
    iput-boolean p1, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    .line 756
    return-void

    .line 752
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAllowCalls(Z)V
    .locals 2
    .param p1, "allowCalls"    # Z

    .line 654
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 657
    iput-boolean p1, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 658
    return-void

    .line 655
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAllowCallsFrom(I)V
    .locals 3
    .param p1, "allowCallsFrom"    # I

    .line 644
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    new-instance v1, Landroid/service/notification/ZenPolicy$Builder;

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-direct {v1, v2}, Landroid/service/notification/ZenPolicy$Builder;-><init>(Landroid/service/notification/ZenPolicy;)V

    .line 646
    invoke-static {p1}, Landroid/service/notification/ZenAdapters;->prioritySendersToPeopleType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ZenPolicy$Builder;->allowCalls(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v1

    .line 647
    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    goto :goto_0

    .line 649
    :cond_0
    iput p1, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 651
    :goto_0
    return-void
.end method

.method public blacklist setAllowConversations(Z)V
    .locals 2
    .param p1, "allowConversations"    # Z

    .line 599
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 602
    iput-boolean p1, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    .line 604
    return-void

    .line 600
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAllowConversationsFrom(I)V
    .locals 2
    .param p1, "allowConversationsFrom"    # I

    .line 591
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 594
    iput p1, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    .line 596
    return-void

    .line 592
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAllowEvents(Z)V
    .locals 2
    .param p1, "allowEvents"    # Z

    .line 669
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 672
    iput-boolean p1, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 674
    return-void

    .line 670
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAllowMedia(Z)V
    .locals 2
    .param p1, "allowMedia"    # Z

    .line 736
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 739
    iput-boolean p1, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    .line 741
    return-void

    .line 737
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAllowMessages(Z)V
    .locals 2
    .param p1, "allowMessages"    # Z

    .line 629
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 632
    iput-boolean p1, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 633
    return-void

    .line 630
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAllowMessagesFrom(I)V
    .locals 2
    .param p1, "allowMessagesFrom"    # I

    .line 621
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 624
    iput p1, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 626
    return-void

    .line 622
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAllowPriorityChannels(Z)V
    .locals 2
    .param p1, "allowPriorityChannels"    # Z

    .line 559
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 562
    iput-boolean p1, p0, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    .line 564
    return-void

    .line 560
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAllowReminders(Z)V
    .locals 2
    .param p1, "allowReminders"    # Z

    .line 684
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 687
    iput-boolean p1, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 689
    return-void

    .line 685
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAllowRepeatCallers(Z)V
    .locals 2
    .param p1, "allowRepeatCallers"    # Z

    .line 706
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 709
    iput-boolean p1, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 711
    return-void

    .line 707
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAllowSystem(Z)V
    .locals 2
    .param p1, "allowSystem"    # Z

    .line 721
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 724
    iput-boolean p1, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    .line 726
    return-void

    .line 722
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setSuppressedVisualEffects(I)V
    .locals 2
    .param p1, "suppressedVisualEffects"    # I

    .line 575
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 578
    iput p1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    .line 580
    return-void

    .line 576
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o toNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .locals 17

    .line 1843
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1844
    .local v1, "priorityCategories":I
    const/4 v2, 0x1

    .line 1845
    .local v2, "priorityCallSenders":I
    const/4 v3, 0x1

    .line 1846
    .local v3, "priorityMessageSenders":I
    const/4 v4, 0x2

    .line 1847
    .local v4, "priorityConversationSenders":I
    const/4 v5, 0x0

    .line 1848
    .local v5, "state":I
    const/4 v6, 0x0

    .line 1850
    .local v6, "suppressedVisualEffects":I
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1851
    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1852
    or-int/lit8 v1, v1, 0x2

    .line 1854
    :cond_0
    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {v7, v9, v9}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1856
    or-int/lit8 v1, v1, 0x1

    .line 1858
    :cond_1
    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    const/4 v10, 0x4

    invoke-virtual {v7, v10, v9}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1860
    or-int/lit8 v1, v1, 0x10

    .line 1862
    :cond_2
    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    const/4 v11, 0x5

    invoke-virtual {v7, v11, v9}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1863
    or-int/lit8 v1, v1, 0x20

    .line 1865
    :cond_3
    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    const/4 v12, 0x6

    invoke-virtual {v7, v12, v9}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1866
    or-int/lit8 v1, v1, 0x40

    .line 1868
    :cond_4
    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    const/4 v13, 0x7

    invoke-virtual {v7, v13, v9}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1869
    or-int/lit16 v1, v1, 0x80

    .line 1872
    :cond_5
    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {v7}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryConversations()I

    move-result v7

    if-ne v7, v8, :cond_6

    .line 1873
    or-int/lit16 v1, v1, 0x100

    .line 1875
    :cond_6
    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1876
    invoke-virtual {v7}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v7

    .line 1875
    const/4 v13, 0x3

    invoke-static {v7, v13}, Landroid/service/notification/ZenAdapters;->zenPolicyConversationSendersToNotificationPolicy(II)I

    move-result v4

    .line 1878
    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {v7}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryCalls()I

    move-result v7

    if-ne v7, v8, :cond_7

    .line 1879
    or-int/lit8 v1, v1, 0x8

    .line 1881
    :cond_7
    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1882
    invoke-virtual {v7}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v7

    .line 1881
    const/4 v14, 0x2

    invoke-static {v7, v14}, Landroid/service/notification/ZenAdapters;->peopleTypeToPrioritySenders(II)I

    move-result v2

    .line 1883
    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {v7}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMessages()I

    move-result v7

    if-ne v7, v8, :cond_8

    .line 1884
    or-int/lit8 v1, v1, 0x4

    .line 1886
    :cond_8
    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1887
    invoke-virtual {v7}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v7

    .line 1886
    invoke-static {v7, v14}, Landroid/service/notification/ZenAdapters;->peopleTypeToPrioritySenders(II)I

    move-result v3

    .line 1889
    iget-boolean v7, v0, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    iget-object v15, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v15, v15, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1890
    invoke-virtual {v15}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    move-result v15

    if-eq v15, v14, :cond_9

    move v15, v8

    goto :goto_0

    :cond_9
    move v15, v9

    .line 1889
    :goto_0
    invoke-static {v7, v15}, Landroid/app/NotificationManager$Policy;->policyState(ZZ)I

    move-result v5

    .line 1892
    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1894
    const/16 v15, 0x9d

    invoke-direct {v0, v15, v9}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(II)Z

    move-result v12

    .line 1892
    invoke-virtual {v7, v9, v12}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v7

    xor-int/2addr v7, v8

    .line 1897
    .local v7, "suppressFullScreenIntent":Z
    iget-object v9, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v9, v9, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1899
    invoke-direct {v0, v15, v8}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(II)Z

    move-result v12

    .line 1897
    invoke-virtual {v9, v8, v12}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v9

    xor-int/2addr v9, v8

    .line 1902
    .local v9, "suppressLights":Z
    iget-object v12, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v12, v12, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1904
    move/from16 v16, v8

    invoke-direct {v0, v15, v11}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(II)Z

    move-result v8

    .line 1902
    invoke-virtual {v12, v11, v8}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    .line 1907
    .local v8, "suppressAmbient":Z
    if-eqz v7, :cond_a

    if-eqz v9, :cond_a

    if-eqz v8, :cond_a

    .line 1908
    or-int/lit8 v6, v6, 0x1

    .line 1911
    :cond_a
    if-eqz v7, :cond_b

    .line 1912
    or-int/lit8 v6, v6, 0x4

    .line 1915
    :cond_b
    if-eqz v9, :cond_c

    .line 1916
    or-int/lit8 v6, v6, 0x8

    .line 1919
    :cond_c
    iget-object v11, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v11, v11, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1920
    invoke-direct {v0, v15, v14}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(II)Z

    move-result v12

    .line 1919
    invoke-virtual {v11, v14, v12}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v11

    if-nez v11, :cond_d

    .line 1922
    or-int/lit8 v6, v6, 0x10

    .line 1923
    or-int/2addr v6, v14

    .line 1926
    :cond_d
    iget-object v11, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v11, v11, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1927
    invoke-direct {v0, v15, v13}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(II)Z

    move-result v12

    .line 1926
    invoke-virtual {v11, v13, v12}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v11

    if-nez v11, :cond_e

    .line 1929
    or-int/lit8 v6, v6, 0x20

    .line 1932
    :cond_e
    iget-object v11, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v11, v11, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1933
    invoke-direct {v0, v15, v10}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(II)Z

    move-result v12

    .line 1932
    invoke-virtual {v11, v10, v12}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v10

    if-nez v10, :cond_f

    .line 1935
    or-int/lit8 v6, v6, 0x40

    .line 1938
    :cond_f
    if-eqz v8, :cond_10

    .line 1939
    or-int/lit16 v6, v6, 0x80

    .line 1942
    :cond_10
    iget-object v10, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v10, v10, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1944
    const/4 v11, 0x6

    invoke-direct {v0, v15, v11}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(II)Z

    move-result v12

    .line 1942
    invoke-virtual {v10, v11, v12}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v10

    if-nez v10, :cond_11

    .line 1946
    or-int/lit16 v6, v6, 0x100

    .line 1952
    :cond_11
    and-int/lit8 v6, v6, -0x4

    .line 1953
    iget-object v10, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v10, v10, Landroid/service/notification/ZenModeConfig$ZenRule;->legacySuppressedEffects:I

    and-int/2addr v10, v13

    or-int/2addr v6, v10

    .line 1955
    .end local v7    # "suppressFullScreenIntent":Z
    .end local v8    # "suppressAmbient":Z
    .end local v9    # "suppressLights":Z
    move v8, v1

    move v9, v2

    move v10, v3

    move v13, v4

    move v12, v5

    move v11, v6

    goto/16 :goto_1

    .line 1956
    :cond_12
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->isAllowConversations()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1957
    or-int/lit16 v1, v1, 0x100

    .line 1959
    :cond_13
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->isAllowCalls()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 1960
    or-int/lit8 v1, v1, 0x8

    .line 1962
    :cond_14
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->isAllowMessages()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1963
    or-int/lit8 v1, v1, 0x4

    .line 1965
    :cond_15
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->isAllowEvents()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 1966
    or-int/lit8 v1, v1, 0x2

    .line 1968
    :cond_16
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->isAllowReminders()Z

    move-result v7

    if-eqz v7, :cond_17

    .line 1969
    or-int/lit8 v1, v1, 0x1

    .line 1971
    :cond_17
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->isAllowRepeatCallers()Z

    move-result v7

    if-eqz v7, :cond_18

    .line 1972
    or-int/lit8 v1, v1, 0x10

    .line 1974
    :cond_18
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->isAllowAlarms()Z

    move-result v7

    if-eqz v7, :cond_19

    .line 1975
    or-int/lit8 v1, v1, 0x20

    .line 1977
    :cond_19
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->isAllowMedia()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 1978
    or-int/lit8 v1, v1, 0x40

    .line 1980
    :cond_1a
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->isAllowSystem()Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 1981
    or-int/lit16 v1, v1, 0x80

    .line 1983
    :cond_1b
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->getAllowCallsFrom()I

    move-result v7

    invoke-static {v7, v2}, Landroid/service/notification/ZenModeConfig;->sourceToPrioritySenders(II)I

    move-result v2

    .line 1984
    nop

    .line 1985
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->getAllowMessagesFrom()I

    move-result v7

    .line 1984
    invoke-static {v7, v3}, Landroid/service/notification/ZenModeConfig;->sourceToPrioritySenders(II)I

    move-result v3

    .line 1986
    nop

    .line 1987
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->getAllowConversationsFrom()I

    move-result v7

    .line 1986
    invoke-static {v7, v4}, Landroid/service/notification/ZenAdapters;->zenPolicyConversationSendersToNotificationPolicy(II)I

    move-result v4

    .line 1989
    iget-boolean v7, v0, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    iget-boolean v8, v0, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    invoke-static {v7, v8}, Landroid/app/NotificationManager$Policy;->policyState(ZZ)I

    move-result v5

    .line 1990
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->getSuppressedVisualEffects()I

    move-result v6

    move v8, v1

    move v9, v2

    move v10, v3

    move v13, v4

    move v12, v5

    move v11, v6

    .line 1993
    .end local v1    # "priorityCategories":I
    .end local v2    # "priorityCallSenders":I
    .end local v3    # "priorityMessageSenders":I
    .end local v4    # "priorityConversationSenders":I
    .end local v5    # "state":I
    .end local v6    # "suppressedVisualEffects":I
    .local v8, "priorityCategories":I
    .local v9, "priorityCallSenders":I
    .local v10, "priorityMessageSenders":I
    .local v11, "suppressedVisualEffects":I
    .local v12, "state":I
    .local v13, "priorityConversationSenders":I
    :goto_1
    new-instance v7, Landroid/app/NotificationManager$Policy;

    invoke-direct/range {v7 .. v13}, Landroid/app/NotificationManager$Policy;-><init>(IIIIII)V

    return-object v7
.end method

.method public blacklist toNotificationPolicy(Landroid/service/notification/ZenPolicy;)Landroid/app/NotificationManager$Policy;
    .locals 19
    .param p1, "zenPolicy"    # Landroid/service/notification/ZenPolicy;

    .line 1705
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v2

    .line 1706
    .local v2, "defaultPolicy":Landroid/app/NotificationManager$Policy;
    const/4 v3, 0x0

    .line 1707
    .local v3, "priorityCategories":I
    const/4 v4, 0x0

    .line 1708
    .local v4, "suppressedVisualEffects":I
    iget v5, v2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    .line 1709
    .local v5, "callSenders":I
    iget v6, v2, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    .line 1710
    .local v6, "messageSenders":I
    iget v7, v2, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    .line 1712
    .local v7, "conversationSenders":I
    nop

    .line 1713
    const/4 v8, 0x1

    invoke-direct {v0, v8, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v9

    .line 1712
    const/4 v10, 0x0

    invoke-virtual {v1, v10, v9}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1714
    or-int/lit8 v3, v3, 0x1

    .line 1717
    :cond_0
    nop

    .line 1718
    const/4 v9, 0x2

    invoke-direct {v0, v9, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v11

    .line 1717
    invoke-virtual {v1, v8, v11}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1719
    or-int/lit8 v3, v3, 0x2

    .line 1722
    :cond_1
    nop

    .line 1723
    const/4 v11, 0x4

    invoke-direct {v0, v11, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v12

    .line 1722
    invoke-virtual {v1, v9, v12}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1724
    or-int/lit8 v3, v3, 0x4

    .line 1725
    nop

    .line 1726
    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v12

    .line 1725
    invoke-static {v12, v6}, Landroid/service/notification/ZenAdapters;->peopleTypeToPrioritySenders(II)I

    move-result v6

    move v15, v6

    goto :goto_0

    .line 1722
    :cond_2
    move v15, v6

    .line 1729
    .end local v6    # "messageSenders":I
    .local v15, "messageSenders":I
    :goto_0
    nop

    .line 1730
    const/16 v6, 0x100

    invoke-direct {v0, v6, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v12

    .line 1729
    const/16 v13, 0x8

    invoke-virtual {v1, v13, v12}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1731
    or-int/lit16 v3, v3, 0x100

    .line 1732
    nop

    .line 1733
    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v12

    .line 1732
    invoke-static {v12, v7}, Landroid/service/notification/ZenAdapters;->zenPolicyConversationSendersToNotificationPolicy(II)I

    move-result v7

    move/from16 v18, v7

    goto :goto_1

    .line 1735
    :cond_3
    const/4 v7, 0x3

    move/from16 v18, v7

    .line 1738
    .end local v7    # "conversationSenders":I
    .local v18, "conversationSenders":I
    :goto_1
    nop

    .line 1739
    invoke-direct {v0, v13, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v7

    .line 1738
    const/4 v12, 0x3

    invoke-virtual {v1, v12, v7}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1740
    or-int/lit8 v3, v3, 0x8

    .line 1741
    nop

    .line 1742
    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v7

    .line 1741
    invoke-static {v7, v5}, Landroid/service/notification/ZenAdapters;->peopleTypeToPrioritySenders(II)I

    move-result v5

    move v14, v5

    goto :goto_2

    .line 1738
    :cond_4
    move v14, v5

    .line 1745
    .end local v5    # "callSenders":I
    .local v14, "callSenders":I
    :goto_2
    nop

    .line 1746
    const/16 v5, 0x10

    invoke-direct {v0, v5, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v7

    .line 1745
    invoke-virtual {v1, v11, v7}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1748
    or-int/lit8 v3, v3, 0x10

    .line 1751
    :cond_5
    nop

    .line 1752
    const/16 v7, 0x20

    invoke-direct {v0, v7, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v6

    .line 1751
    const/4 v12, 0x5

    invoke-virtual {v1, v12, v6}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1753
    or-int/lit8 v3, v3, 0x20

    .line 1756
    :cond_6
    nop

    .line 1757
    const/16 v6, 0x40

    invoke-direct {v0, v6, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v7

    .line 1756
    const/4 v6, 0x6

    invoke-virtual {v1, v6, v7}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1758
    or-int/lit8 v3, v3, 0x40

    .line 1761
    :cond_7
    nop

    .line 1762
    const/16 v7, 0x80

    invoke-direct {v0, v7, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v6

    .line 1761
    const/4 v9, 0x7

    invoke-virtual {v1, v9, v6}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1763
    or-int/lit16 v3, v3, 0x80

    .line 1766
    :cond_8
    nop

    .line 1768
    invoke-direct {v0, v11, v2}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z

    move-result v6

    .line 1766
    invoke-virtual {v1, v10, v6}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v6

    xor-int/2addr v6, v8

    .line 1771
    .local v6, "suppressFullScreenIntent":Z
    nop

    .line 1773
    invoke-direct {v0, v13, v2}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z

    move-result v9

    .line 1771
    invoke-virtual {v1, v8, v9}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v9

    xor-int/2addr v9, v8

    .line 1776
    .local v9, "suppressLights":Z
    nop

    .line 1778
    invoke-direct {v0, v7, v2}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z

    move-result v7

    .line 1776
    invoke-virtual {v1, v12, v7}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v7

    xor-int/2addr v7, v8

    .line 1781
    .local v7, "suppressAmbient":Z
    if-eqz v6, :cond_9

    if-eqz v9, :cond_9

    if-eqz v7, :cond_9

    .line 1782
    or-int/lit8 v4, v4, 0x1

    .line 1785
    :cond_9
    if-eqz v6, :cond_a

    .line 1786
    or-int/lit8 v4, v4, 0x4

    .line 1789
    :cond_a
    if-eqz v9, :cond_b

    .line 1790
    or-int/lit8 v4, v4, 0x8

    .line 1793
    :cond_b
    nop

    .line 1794
    invoke-direct {v0, v5, v2}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z

    move-result v5

    .line 1793
    const/4 v10, 0x2

    invoke-virtual {v1, v10, v5}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v5

    if-nez v5, :cond_c

    .line 1796
    or-int/lit8 v4, v4, 0x10

    .line 1797
    or-int/2addr v4, v10

    .line 1800
    :cond_c
    nop

    .line 1801
    const/16 v5, 0x20

    invoke-direct {v0, v5, v2}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z

    move-result v5

    .line 1800
    const/4 v10, 0x3

    invoke-virtual {v1, v10, v5}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v5

    if-nez v5, :cond_d

    .line 1803
    or-int/lit8 v4, v4, 0x20

    .line 1806
    :cond_d
    nop

    .line 1807
    const/16 v5, 0x40

    invoke-direct {v0, v5, v2}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z

    move-result v5

    .line 1806
    invoke-virtual {v1, v11, v5}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v5

    if-nez v5, :cond_e

    .line 1809
    or-int/lit8 v4, v4, 0x40

    .line 1812
    :cond_e
    if-eqz v7, :cond_f

    .line 1813
    or-int/lit16 v4, v4, 0x80

    .line 1816
    :cond_f
    nop

    .line 1817
    const/16 v5, 0x100

    invoke-direct {v0, v5, v2}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z

    move-result v5

    .line 1816
    const/4 v10, 0x6

    invoke-virtual {v1, v10, v5}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v5

    if-nez v5, :cond_10

    .line 1819
    or-int/lit16 v4, v4, 0x100

    move/from16 v16, v4

    goto :goto_3

    .line 1816
    :cond_10
    move/from16 v16, v4

    .line 1822
    .end local v4    # "suppressedVisualEffects":I
    .local v16, "suppressedVisualEffects":I
    :goto_3
    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->hasPriorityChannels()Z

    move-result v4

    .line 1823
    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    move-result v5

    invoke-static {v5, v8}, Landroid/service/notification/ZenPolicy;->stateToBoolean(IZ)Z

    move-result v5

    .line 1822
    invoke-static {v4, v5}, Landroid/app/NotificationManager$Policy;->policyState(ZZ)I

    move-result v17

    .line 1826
    .local v17, "state":I
    new-instance v12, Landroid/app/NotificationManager$Policy;

    move v13, v3

    .end local v3    # "priorityCategories":I
    .local v13, "priorityCategories":I
    invoke-direct/range {v12 .. v18}, Landroid/app/NotificationManager$Policy;-><init>(IIIIII)V

    return-object v12
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 524
    const-string/jumbo v1, "user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 525
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v1

    if-nez v1, :cond_0

    .line 526
    const-string v1, ",allowAlarms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 527
    const-string v2, ",allowMedia="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 528
    const-string v2, ",allowSystem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 529
    const-string v2, ",allowReminders="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 530
    const-string v2, ",allowEvents="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 531
    const-string v2, ",allowCalls="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 532
    const-string v2, ",allowRepeatCallers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 533
    const-string v2, ",allowMessages="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 534
    const-string v2, ",allowConversations="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 535
    const-string v2, ",allowCallsFrom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 536
    const-string v2, ",allowMessagesFrom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 537
    const-string v2, ",allowConvFrom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    .line 538
    invoke-static {v2}, Landroid/service/notification/ZenPolicy;->conversationTypeToString(I)Ljava/lang/String;

    move-result-object v2

    .line 537
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 539
    const-string v2, "\nsuppressedVisualEffects="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 542
    :cond_0
    const-string v1, "\nhasPriorityChannels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 543
    const-string v1, ",allowPriorityChannels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 544
    const-string v1, ",\nautomaticRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->rulesToString(Landroid/util/ArrayMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    const-string v1, ",\nmanualRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 546
    const-string v1, ",\ndeletedRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->rulesToString(Landroid/util/ArrayMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method blacklist toZenPolicy()Landroid/service/notification/ZenPolicy;
    .locals 4

    .line 1661
    new-instance v0, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {v0}, Landroid/service/notification/ZenPolicy$Builder;-><init>()V

    .line 1662
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    .line 1663
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v1}, Landroid/service/notification/ZenAdapters;->prioritySendersToPeopleType(I)I

    move-result v1

    goto :goto_0

    .line 1664
    :cond_0
    move v1, v2

    .line 1662
    :goto_0
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowCalls(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 1665
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowRepeatCallers(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 1666
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v1, :cond_1

    .line 1667
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v1}, Landroid/service/notification/ZenAdapters;->prioritySendersToPeopleType(I)I

    move-result v1

    goto :goto_1

    .line 1668
    :cond_1
    move v1, v2

    .line 1666
    :goto_1
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowMessages(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 1669
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowReminders(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 1670
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowEvents(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    .line 1671
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowAlarms(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    .line 1672
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowMedia(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    .line 1673
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowSystem(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 1674
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    goto :goto_2

    .line 1675
    :cond_2
    const/4 v1, 0x3

    .line 1674
    :goto_2
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowConversations(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 1676
    .local v0, "builder":Landroid/service/notification/ZenPolicy$Builder;
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    if-nez v1, :cond_3

    .line 1677
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->showAllVisualEffects()Landroid/service/notification/ZenPolicy$Builder;

    goto/16 :goto_a

    .line 1680
    :cond_3
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    and-int/2addr v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_3

    :cond_4
    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->showFullScreenIntent(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1682
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_4

    :cond_5
    move v1, v3

    :goto_4
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->showLights(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1684
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_5

    :cond_6
    move v1, v3

    :goto_5
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->showPeeking(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1686
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_6

    :cond_7
    move v1, v3

    :goto_6
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->showStatusBarIcons(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1688
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_8

    move v1, v2

    goto :goto_7

    :cond_8
    move v1, v3

    :goto_7
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->showBadges(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1690
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_9

    move v1, v2

    goto :goto_8

    :cond_9
    move v1, v3

    :goto_8
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->showInAmbientDisplay(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1692
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_a

    goto :goto_9

    :cond_a
    move v2, v3

    :goto_9
    invoke-virtual {v0, v2}, Landroid/service/notification/ZenPolicy$Builder;->showInNotificationList(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1696
    :goto_a
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowPriorityChannels(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1697
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 477
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    :cond_0
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 488
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {v0, p1}, Landroid/service/notification/ZenModeConfig;->writeRulesToParcel(Landroid/util/ArrayMap;Landroid/os/Parcel;)V

    .line 489
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-static {v0, p1}, Landroid/service/notification/ZenModeConfig;->writeRulesToParcel(Landroid/util/ArrayMap;Landroid/os/Parcel;)V

    .line 490
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_1

    .line 491
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 496
    :cond_1
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_2

    .line 498
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 499
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 502
    :cond_2
    return-void
.end method

.method public blacklist writeXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/Integer;ZLandroid/app/backup/BackupRestoreEventLogger;)V
    .locals 10
    .param p1, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .param p2, "version"    # Ljava/lang/Integer;
    .param p3, "forBackup"    # Z
    .param p4, "logger"    # Landroid/app/backup/BackupRestoreEventLogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1098
    const/4 v0, 0x0

    .line 1099
    .local v0, "writtenRuleCount":I
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getCurrentXmlVersion()I

    move-result v1

    .line 1100
    .local v1, "xmlVersion":I
    const/4 v2, 0x0

    const-string/jumbo v3, "zen"

    invoke-interface {p1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1101
    if-nez p2, :cond_0

    .line 1102
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1101
    :goto_0
    const-string/jumbo v5, "version"

    invoke-interface {p1, v2, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1103
    const-string/jumbo v4, "user"

    iget v5, p0, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-interface {p1, v2, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1104
    const-string v4, "allow"

    invoke-interface {p1, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1108
    const-string v5, "calls"

    iget-boolean v6, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-interface {p1, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1109
    const-string/jumbo v5, "repeatCallers"

    iget-boolean v6, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-interface {p1, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1110
    const-string/jumbo v5, "messages"

    iget-boolean v6, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-interface {p1, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1111
    const-string/jumbo v5, "reminders"

    iget-boolean v6, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-interface {p1, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1112
    const-string v5, "events"

    iget-boolean v6, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-interface {p1, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1113
    const-string v5, "callsFrom"

    iget v6, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-interface {p1, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1114
    const-string/jumbo v5, "messagesFrom"

    iget v6, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-interface {p1, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1115
    const-string v5, "alarms"

    iget-boolean v6, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    invoke-interface {p1, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1116
    const-string/jumbo v5, "media"

    iget-boolean v6, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    invoke-interface {p1, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1117
    const-string/jumbo v5, "system"

    iget-boolean v6, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    invoke-interface {p1, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1118
    const-string v5, "convos"

    iget-boolean v6, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    invoke-interface {p1, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1119
    const-string v5, "convosFrom"

    iget v6, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    invoke-interface {p1, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1120
    const-string/jumbo v5, "priorityChannelsAllowed"

    iget-boolean v6, p0, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    invoke-interface {p1, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1121
    invoke-interface {p1, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1123
    const-string v4, "disallow"

    invoke-interface {p1, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1124
    const-string/jumbo v5, "visualEffects"

    iget v6, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    invoke-interface {p1, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1125
    invoke-interface {p1, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1127
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v4, :cond_1

    .line 1128
    const-string/jumbo v4, "manual"

    invoke-interface {p1, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1129
    iget-object v5, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v5, p1, p3}, Landroid/service/notification/ZenModeConfig;->writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Lcom/android/modules/utils/TypedXmlSerializer;Z)V

    .line 1130
    invoke-interface {p1, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1132
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1133
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1134
    .local v4, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    const-string/jumbo v6, "ruleId"

    if-ge v5, v4, :cond_2

    .line 1135
    iget-object v7, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1136
    .local v7, "id":Ljava/lang/String;
    iget-object v8, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1137
    .local v8, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const-string v9, "automatic"

    invoke-interface {p1, v2, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1138
    invoke-interface {p1, v2, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1139
    invoke-static {v8, p1, p3}, Landroid/service/notification/ZenModeConfig;->writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Lcom/android/modules/utils/TypedXmlSerializer;Z)V

    .line 1140
    invoke-interface {p1, v2, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1141
    nop

    .end local v7    # "id":Ljava/lang/String;
    .end local v8    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    add-int/lit8 v0, v0, 0x1

    .line 1134
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1143
    .end local v5    # "i":I
    :cond_2
    if-nez p3, :cond_3

    .line 1144
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    iget-object v7, p0, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v5, v7, :cond_3

    .line 1145
    iget-object v7, p0, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1146
    .local v7, "deletedRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const-string v8, "deleted"

    invoke-interface {p1, v2, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1147
    iget-object v9, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-interface {p1, v2, v6, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1148
    invoke-static {v7, p1, p3}, Landroid/service/notification/ZenModeConfig;->writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Lcom/android/modules/utils/TypedXmlSerializer;Z)V

    .line 1149
    invoke-interface {p1, v2, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1144
    .end local v7    # "deletedRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1153
    .end local v5    # "i":I
    :cond_3
    const-string/jumbo v5, "state"

    invoke-interface {p1, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1154
    const-string v6, "areChannelsBypassingDnd"

    iget-boolean v7, p0, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    invoke-interface {p1, v2, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1155
    invoke-interface {p1, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1157
    invoke-interface {p1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1158
    if-eqz p4, :cond_4

    .line 1159
    const-string/jumbo v2, "notifications:zen_rules"

    invoke-virtual {p4, v2, v0}, Landroid/app/backup/BackupRestoreEventLogger;->logItemsBackedUp(Ljava/lang/String;I)V

    .line 1161
    :cond_4
    return-void
.end method
