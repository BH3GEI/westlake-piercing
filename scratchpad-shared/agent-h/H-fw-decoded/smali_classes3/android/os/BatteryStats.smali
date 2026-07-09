.class public abstract Landroid/os/BatteryStats;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryStats$Uid;,
        Landroid/os/BatteryStats$Timer;,
        Landroid/os/BatteryStats$ControllerActivityCounter;,
        Landroid/os/BatteryStats$LongCounter;,
        Landroid/os/BatteryStats$BatteryStatsDumpHelper;,
        Landroid/os/BatteryStats$ProportionalAttributionCalculator;,
        Landroid/os/BatteryStats$Counter;,
        Landroid/os/BatteryStats$TimerEntry;,
        Landroid/os/BatteryStats$UidMobileRadioStats;,
        Landroid/os/BatteryStats$BitDescription;,
        Landroid/os/BatteryStats$HistoryItem;,
        Landroid/os/BatteryStats$HistoryTag;,
        Landroid/os/BatteryStats$LevelStepTracker;,
        Landroid/os/BatteryStats$HistoryPrinter;,
        Landroid/os/BatteryStats$HistoryEventTracker;,
        Landroid/os/BatteryStats$PackageChange;,
        Landroid/os/BatteryStats$DailyItem;,
        Landroid/os/BatteryStats$IntToString;,
        Landroid/os/BatteryStats$RadioAccessTechnology;,
        Landroid/os/BatteryStats$ProcessStateChange;,
        Landroid/os/BatteryStats$HistoryStepDetails;,
        Landroid/os/BatteryStats$LongCounterArray;,
        Landroid/os/BatteryStats$StatName;
    }
.end annotation


# static fields
.field private static final greylist-max-o AGGREGATED_WAKELOCK_DATA:Ljava/lang/String; = "awl"

.field public static final greylist-max-o AGGREGATED_WAKE_TYPE_PARTIAL:I = 0x14

.field private static final greylist-max-o APK_DATA:Ljava/lang/String; = "apk"

.field private static final greylist-max-o AUDIO_DATA:Ljava/lang/String; = "aud"

.field public static final greylist-max-o AUDIO_TURNED_ON:I = 0xf

.field private static final greylist-max-o BATTERY_DATA:Ljava/lang/String; = "bt"

.field private static final greylist-max-o BATTERY_DISCHARGE_DATA:Ljava/lang/String; = "dc"

.field private static final greylist-max-o BATTERY_LEVEL_DATA:Ljava/lang/String; = "lv"

.field private static final greylist-max-o BATTERY_STATS_CHECKIN_VERSION:I = 0x9

.field private static final greylist-max-o BLUETOOTH_CONTROLLER_DATA:Ljava/lang/String; = "ble"

.field private static final greylist-max-o BLUETOOTH_MISC_DATA:Ljava/lang/String; = "blem"

.field public static final greylist-max-o BLUETOOTH_SCAN_ON:I = 0x13

.field public static final greylist-max-o BLUETOOTH_UNOPTIMIZED_SCAN_ON:I = 0x15

.field private static final greylist-max-o BYTES_PER_GB:J = 0x40000000L

.field private static final greylist-max-o BYTES_PER_KB:J = 0x400L

.field private static final greylist-max-o BYTES_PER_MB:J = 0x100000L

.field private static final greylist-max-o CAMERA_DATA:Ljava/lang/String; = "cam"

.field public static final greylist-max-o CAMERA_TURNED_ON:I = 0x11

.field private static final greylist-max-o CELLULAR_CONTROLLER_NAME:Ljava/lang/String; = "Cellular"

.field private static final greylist-max-o CHARGE_STEP_DATA:Ljava/lang/String; = "csd"

.field private static final greylist-max-o CHARGE_TIME_REMAIN_DATA:Ljava/lang/String; = "ctr"

.field private static final blacklist CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

.field static final greylist-max-o CHECKIN_VERSION:I = 0x24

.field private static final greylist-max-o CPU_DATA:Ljava/lang/String; = "cpu"

.field private static final greylist-max-o CPU_TIMES_AT_FREQ_DATA:Ljava/lang/String; = "ctf"

.field private static final greylist-max-o DATA_CONNECTION_COUNT_DATA:Ljava/lang/String; = "dcc"

.field public static final blacklist DATA_CONNECTION_EMERGENCY_SERVICE:I

.field static final greylist-max-o DATA_CONNECTION_NAMES:[Ljava/lang/String;

.field public static final greylist-max-o DATA_CONNECTION_OTHER:I

.field public static final blacklist DATA_CONNECTION_OUT_OF_SERVICE:I = 0x0

.field private static final greylist-max-o DATA_CONNECTION_TIME_DATA:Ljava/lang/String; = "dct"

.field public static final greylist-max-o DEVICE_IDLE_MODE_DEEP:I = 0x2

.field public static final greylist-max-o DEVICE_IDLE_MODE_LIGHT:I = 0x1

.field public static final greylist-max-o DEVICE_IDLE_MODE_OFF:I = 0x0

.field private static final greylist-max-o DISCHARGE_STEP_DATA:Ljava/lang/String; = "dsd"

.field private static final greylist-max-o DISCHARGE_TIME_REMAIN_DATA:Ljava/lang/String; = "dtr"

.field private static final blacklist DISPLAY_TRANSPORT_PRIORITIES:[I

.field public static final greylist-max-o DUMP_CHARGED_ONLY:I = 0x2

.field public static final greylist-max-o DUMP_DAILY_ONLY:I = 0x4

.field public static final greylist-max-o DUMP_DEVICE_WIFI_ONLY:I = 0x40

.field public static final greylist-max-o DUMP_HISTORY_ONLY:I = 0x8

.field public static final greylist-max-o DUMP_INCLUDE_HISTORY:I = 0x10

.field public static final greylist-max-o DUMP_VERBOSE:I = 0x20

.field public static final blacklist DURATION_UNAVAILABLE:J = -0x1L

.field private static final greylist-max-o FLASHLIGHT_DATA:Ljava/lang/String; = "fla"

.field public static final greylist-max-o FLASHLIGHT_TURNED_ON:I = 0x10

.field public static final greylist-max-o FOREGROUND_ACTIVITY:I = 0xa

.field private static final greylist-max-o FOREGROUND_ACTIVITY_DATA:Ljava/lang/String; = "fg"

.field public static final greylist-max-o FOREGROUND_SERVICE:I = 0x16

.field private static final greylist-max-o FOREGROUND_SERVICE_DATA:Ljava/lang/String; = "fgs"

.field public static final greylist-max-o FULL_WIFI_LOCK:I = 0x5

.field private static final greylist-max-o GLOBAL_BLUETOOTH_CONTROLLER_DATA:Ljava/lang/String; = "gble"

.field private static final greylist-max-o GLOBAL_CPU_FREQ_DATA:Ljava/lang/String; = "gcf"

.field private static final greylist-max-o GLOBAL_MODEM_CONTROLLER_DATA:Ljava/lang/String; = "gmcd"

.field private static final greylist-max-o GLOBAL_NETWORK_DATA:Ljava/lang/String; = "gn"

.field private static final greylist-max-o GLOBAL_WIFI_CONTROLLER_DATA:Ljava/lang/String; = "gwfcd"

.field private static final greylist-max-o GLOBAL_WIFI_DATA:Ljava/lang/String; = "gwfl"

.field private static final greylist-max-o HISTORY_DATA:Ljava/lang/String; = "h"

.field public static final greylist-max-o HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

.field public static final greylist-max-o HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

.field public static final greylist-max-o HISTORY_EVENT_NAMES:[Ljava/lang/String;

.field public static final greylist-max-o HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

.field public static final greylist-max-o HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

.field private static final greylist-max-o HISTORY_STRING_POOL:Ljava/lang/String; = "hsp"

.field public static final greylist-max-o JOB:I = 0xe

.field private static final greylist-max-o JOBS_DEFERRED_DATA:Ljava/lang/String; = "jbd"

.field private static final greylist-max-o JOB_COMPLETION_DATA:Ljava/lang/String; = "jbc"

.field private static final greylist-max-o JOB_DATA:Ljava/lang/String; = "jb"

.field public static final greylist-max-o JOB_FRESHNESS_BUCKETS:[J

.field private static final greylist-max-o KERNEL_WAKELOCK_DATA:Ljava/lang/String; = "kwl"

.field private static final greylist-max-o LOCAL_LOGV:Z = false

.field public static final greylist-max-o MAX_TRACKED_SCREEN_STATE:I = 0x4

.field public static final blacklist MILLISECONDS_IN_HOUR:D = 3600000.0

.field private static final greylist-max-o MISC_DATA:Ljava/lang/String; = "m"

.field private static final greylist-max-o MODEM_CONTROLLER_DATA:Ljava/lang/String; = "mcd"

.field public static final greylist-max-o NETWORK_BT_RX_DATA:I = 0x4

.field public static final greylist-max-o NETWORK_BT_TX_DATA:I = 0x5

.field private static final greylist-max-o NETWORK_DATA:Ljava/lang/String; = "nt"

.field public static final greylist-max-o NETWORK_MOBILE_BG_RX_DATA:I = 0x6

.field public static final greylist-max-o NETWORK_MOBILE_BG_TX_DATA:I = 0x7

.field public static final greylist-max-o NETWORK_MOBILE_RX_DATA:I = 0x0

.field public static final greylist-max-o NETWORK_MOBILE_TX_DATA:I = 0x1

.field public static final greylist-max-o NETWORK_WIFI_BG_RX_DATA:I = 0x8

.field public static final greylist-max-o NETWORK_WIFI_BG_TX_DATA:I = 0x9

.field public static final greylist-max-o NETWORK_WIFI_RX_DATA:I = 0x2

.field public static final greylist-max-o NETWORK_WIFI_TX_DATA:I = 0x3

.field public static final blacklist NUM_ALL_NETWORK_TYPES:I

.field public static final greylist NUM_DATA_CONNECTION_TYPES:I

.field public static final greylist-max-o NUM_NETWORK_ACTIVITY_TYPES:I = 0xa

.field public static final greylist NUM_SCREEN_BRIGHTNESS_BINS:I = 0x5

.field public static final greylist-max-o NUM_WIFI_SIGNAL_STRENGTH_BINS:I = 0x5

.field public static final blacklist POWER_DATA_UNAVAILABLE:J = -0x1L

.field private static final greylist-max-o POWER_USE_ITEM_DATA:Ljava/lang/String; = "pwi"

.field private static final greylist-max-o POWER_USE_SUMMARY_DATA:Ljava/lang/String; = "pws"

.field private static final greylist-max-o PROCESS_DATA:Ljava/lang/String; = "pr"

.field public static final greylist-max-o PROCESS_STATE:I = 0xc

.field public static final blacklist RADIO_ACCESS_TECHNOLOGY_COUNT:I = 0x3

.field public static final blacklist RADIO_ACCESS_TECHNOLOGY_LTE:I = 0x1

.field public static final blacklist RADIO_ACCESS_TECHNOLOGY_NAMES:[Ljava/lang/String;

.field public static final blacklist RADIO_ACCESS_TECHNOLOGY_NR:I = 0x2

.field public static final blacklist RADIO_ACCESS_TECHNOLOGY_OTHER:I = 0x0

.field private static final greylist-max-o RESOURCE_POWER_MANAGER_DATA:Ljava/lang/String; = "rpm"

.field public static final greylist-max-o RESULT_RECEIVER_CONTROLLER_KEY:Ljava/lang/String; = "controller_activity"

.field public static final greylist-max-o SCREEN_BRIGHTNESS_BRIGHT:I = 0x4

.field public static final greylist-max-o SCREEN_BRIGHTNESS_DARK:I = 0x0

.field private static final greylist-max-o SCREEN_BRIGHTNESS_DATA:Ljava/lang/String; = "br"

.field public static final greylist-max-o SCREEN_BRIGHTNESS_DIM:I = 0x1

.field public static final greylist-max-o SCREEN_BRIGHTNESS_LIGHT:I = 0x3

.field public static final greylist-max-o SCREEN_BRIGHTNESS_MEDIUM:I = 0x2

.field public static final greylist-max-o SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

.field static final greylist-max-o SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

.field protected static final greylist-max-o SCREEN_OFF_RPM_STATS_ENABLED:Z = false

.field public static final greylist-max-o SENSOR:I = 0x3

.field private static final greylist-max-o SENSOR_DATA:Ljava/lang/String; = "sr"

.field public static final greylist-max-o SERVICE_NAME:Ljava/lang/String; = "batterystats"

.field private static final greylist-max-o SIGNAL_SCANNING_TIME_DATA:Ljava/lang/String; = "sst"

.field private static final greylist-max-o SIGNAL_STRENGTH_COUNT_DATA:Ljava/lang/String; = "sgc"

.field private static final greylist-max-o SIGNAL_STRENGTH_TIME_DATA:Ljava/lang/String; = "sgt"

.field private static final greylist-max-o STATE_TIME_DATA:Ljava/lang/String; = "st"

.field public static final greylist STATS_CURRENT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o STATS_SINCE_CHARGED:I = 0x0

.field public static final greylist-max-o STATS_SINCE_UNPLUGGED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o STAT_NAMES:[Ljava/lang/String;

.field public static final greylist-max-o STEP_LEVEL_INITIAL_MODE_MASK:J = 0xff000000000000L

.field public static final greylist-max-o STEP_LEVEL_INITIAL_MODE_SHIFT:I = 0x30

.field public static final greylist-max-o STEP_LEVEL_LEVEL_MASK:J = 0xff0000000000L

.field public static final greylist-max-o STEP_LEVEL_LEVEL_SHIFT:I = 0x28

.field public static final greylist-max-o STEP_LEVEL_MODES_OF_INTEREST:[I

.field public static final greylist-max-o STEP_LEVEL_MODE_DEVICE_IDLE:I = 0x8

.field public static final greylist-max-o STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

.field public static final greylist-max-o STEP_LEVEL_MODE_POWER_SAVE:I = 0x4

.field public static final greylist-max-o STEP_LEVEL_MODE_SCREEN_STATE:I = 0x3

.field public static final greylist-max-o STEP_LEVEL_MODE_VALUES:[I

.field public static final greylist-max-o STEP_LEVEL_MODIFIED_MODE_MASK:J = -0x100000000000000L

.field public static final greylist-max-o STEP_LEVEL_MODIFIED_MODE_SHIFT:I = 0x38

.field public static final greylist-max-o STEP_LEVEL_TIME_MASK:J = 0xffffffffffL

.field public static final greylist-max-o SYNC:I = 0xd

.field private static final greylist-max-o SYNC_DATA:Ljava/lang/String; = "sy"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "BatteryStats"

.field private static final greylist-max-o UID_DATA:Ljava/lang/String; = "uid"

.field public static final greylist-max-o UID_TIMES_TYPE_ALL:Ljava/lang/String; = "A"

.field private static final greylist-max-o USER_ACTIVITY_DATA:Ljava/lang/String; = "ua"

.field private static final greylist-max-o VERSION_DATA:Ljava/lang/String; = "vers"

.field private static final greylist-max-o VIBRATOR_DATA:Ljava/lang/String; = "vib"

.field public static final greylist-max-o VIBRATOR_ON:I = 0x9

.field private static final greylist-max-o VIDEO_DATA:Ljava/lang/String; = "vid"

.field public static final greylist-max-o VIDEO_TURNED_ON:I = 0x8

.field private static final greylist-max-o WAKELOCK_DATA:Ljava/lang/String; = "wl"

.field private static final greylist-max-o WAKEUP_ALARM_DATA:Ljava/lang/String; = "wua"

.field private static final greylist-max-o WAKEUP_REASON_DATA:Ljava/lang/String; = "wr"

.field public static final greylist-max-o WAKE_TYPE_DRAW:I = 0x12

.field public static final greylist-max-o WAKE_TYPE_FULL:I = 0x1

.field public static final greylist-max-r WAKE_TYPE_PARTIAL:I = 0x0

.field public static final greylist-max-o WAKE_TYPE_WINDOW:I = 0x2

.field public static final greylist-max-o WIFI_AGGREGATE_MULTICAST_ENABLED:I = 0x17

.field public static final greylist-max-o WIFI_BATCHED_SCAN:I = 0xb

.field private static final greylist-max-o WIFI_CONTROLLER_DATA:Ljava/lang/String; = "wfcd"

.field private static final greylist-max-o WIFI_CONTROLLER_NAME:Ljava/lang/String; = "WiFi"

.field private static final greylist-max-o WIFI_DATA:Ljava/lang/String; = "wfl"

.field private static final greylist-max-o WIFI_MULTICAST_DATA:Ljava/lang/String; = "wmc"

.field public static final greylist-max-o WIFI_MULTICAST_ENABLED:I = 0x7

.field private static final greylist-max-o WIFI_MULTICAST_TOTAL_DATA:Ljava/lang/String; = "wmct"

.field public static final greylist-max-o WIFI_RUNNING:I = 0x4

.field public static final greylist-max-o WIFI_SCAN:I = 0x6

.field private static final greylist-max-o WIFI_SIGNAL_STRENGTH_COUNT_DATA:Ljava/lang/String; = "wsgc"

.field private static final greylist-max-o WIFI_SIGNAL_STRENGTH_TIME_DATA:Ljava/lang/String; = "wsgt"

.field private static final greylist-max-o WIFI_STATE_COUNT_DATA:Ljava/lang/String; = "wsc"

.field static final greylist-max-o WIFI_STATE_NAMES:[Ljava/lang/String;

.field private static final greylist-max-o WIFI_STATE_TIME_DATA:Ljava/lang/String; = "wst"

.field private static final greylist-max-o WIFI_SUPPL_STATE_COUNT_DATA:Ljava/lang/String; = "wssc"

.field static final greylist-max-o WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

.field static final greylist-max-o WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

.field private static final greylist-max-o WIFI_SUPPL_STATE_TIME_DATA:Ljava/lang/String; = "wsst"

.field private static final greylist-max-o sIntToString:Landroid/os/BatteryStats$IntToString;

.field private static final greylist-max-o sUidToString:Landroid/os/BatteryStats$IntToString;


# instance fields
.field private final greylist-max-o mFormatBuilder:Ljava/lang/StringBuilder;

.field private final greylist-max-o mFormatter:Ljava/util/Formatter;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsUidToString()Landroid/os/BatteryStats$IntToString;
    .locals 1

    sget-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 56

    .line 264
    const-string v0, "c"

    const-string/jumbo v1, "u"

    const-string/jumbo v2, "l"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    .line 439
    const/4 v0, 0x5

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sput-object v1, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    .line 2504
    const-string/jumbo v1, "light"

    const-string v2, "bright"

    const-string v3, "dark"

    const-string v4, "dim"

    const-string/jumbo v5, "medium"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    .line 2508
    const-string v1, "0"

    const-string v2, "1"

    const-string v3, "2"

    const-string v4, "3"

    const-string v5, "4"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v6

    sput-object v6, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

    .line 2753
    const-string v28, "emngcy"

    const-string/jumbo v29, "other"

    const-string/jumbo v7, "oos"

    const-string/jumbo v8, "gprs"

    const-string v9, "edge"

    const-string/jumbo v10, "umts"

    const-string v11, "cdma"

    const-string v12, "evdo_0"

    const-string v13, "evdo_A"

    const-string v14, "1xrtt"

    const-string/jumbo v15, "hsdpa"

    const-string/jumbo v16, "hsupa"

    const-string/jumbo v17, "hspa"

    const-string/jumbo v18, "iden"

    const-string v19, "evdo_b"

    const-string/jumbo v20, "lte"

    const-string v21, "ehrpd"

    const-string/jumbo v22, "hspap"

    const-string/jumbo v23, "gsm"

    const-string/jumbo v24, "td_scdma"

    const-string/jumbo v25, "iwlan"

    const-string/jumbo v26, "lte_ca"

    const-string/jumbo v27, "nr"

    filled-new-array/range {v7 .. v29}, [Ljava/lang/String;

    move-result-object v6

    sput-object v6, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    .line 2760
    invoke-static {}, Landroid/os/BatteryStats;->getAllNetworkTypesCount()I

    move-result v6

    sput v6, Landroid/os/BatteryStats;->NUM_ALL_NETWORK_TYPES:I

    .line 2762
    sget v6, Landroid/os/BatteryStats;->NUM_ALL_NETWORK_TYPES:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    sput v6, Landroid/os/BatteryStats;->DATA_CONNECTION_EMERGENCY_SERVICE:I

    .line 2763
    sget v6, Landroid/os/BatteryStats;->NUM_ALL_NETWORK_TYPES:I

    const/4 v8, 0x2

    add-int/2addr v6, v8

    sput v6, Landroid/os/BatteryStats;->DATA_CONNECTION_OTHER:I

    .line 2766
    sget v6, Landroid/os/BatteryStats;->NUM_ALL_NETWORK_TYPES:I

    const/4 v9, 0x3

    add-int/2addr v6, v9

    sput v6, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    .line 2832
    const-string v6, "LTE"

    const-string v10, "NR"

    const-string v11, "Other"

    filled-new-array {v11, v6, v10}, [Ljava/lang/String;

    move-result-object v6

    sput-object v6, Landroid/os/BatteryStats;->RADIO_ACCESS_TECHNOLOGY_NAMES:[Ljava/lang/String;

    .line 2894
    const-string v21, "dormant"

    const-string/jumbo v22, "uninit"

    const-string/jumbo v10, "invalid"

    const-string v11, "disconn"

    const-string v12, "disabled"

    const-string/jumbo v13, "inactive"

    const-string/jumbo v14, "scanning"

    const-string v15, "authenticating"

    const-string v16, "associating"

    const-string v17, "associated"

    const-string v18, "4-way-handshake"

    const-string/jumbo v19, "group-handshake"

    const-string v20, "completed"

    filled-new-array/range {v10 .. v22}, [Ljava/lang/String;

    move-result-object v6

    sput-object v6, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    .line 2900
    const-string v21, "dorm"

    const-string/jumbo v22, "uninit"

    const-string/jumbo v10, "inv"

    const-string v11, "dsc"

    const-string v12, "dis"

    const-string/jumbo v13, "inact"

    const-string/jumbo v14, "scan"

    const-string v15, "auth"

    const-string v16, "ascing"

    const-string v17, "asced"

    const-string v18, "4-way"

    const-string/jumbo v19, "group"

    const-string v20, "compl"

    filled-new-array/range {v10 .. v22}, [Ljava/lang/String;

    move-result-object v6

    sput-object v6, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

    .line 3022
    const/16 v6, 0x12

    new-array v6, v6, [Landroid/os/BatteryStats$BitDescription;

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v11, "running"

    const-string/jumbo v12, "r"

    const/high16 v13, -0x80000000

    invoke-direct {v10, v13, v11, v12}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    aput-object v10, v6, v11

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v12, "wake_lock"

    const-string/jumbo v13, "w"

    const/high16 v14, 0x40000000    # 2.0f

    invoke-direct {v10, v14, v12, v13}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v10, v6, v7

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v12, "sensor"

    const-string/jumbo v13, "s"

    const/high16 v14, 0x800000

    invoke-direct {v10, v14, v12, v13}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v10, v6, v8

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v12, "gps"

    const-string v13, "g"

    const/high16 v14, 0x20000000

    invoke-direct {v10, v14, v12, v13}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v10, v6, v9

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v12, "wifi_full_lock"

    const-string v13, "Wl"

    const/high16 v14, 0x10000000

    invoke-direct {v10, v14, v12, v13}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x4

    aput-object v10, v6, v12

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v13, "wifi_scan"

    const-string v14, "Ws"

    const/high16 v15, 0x8000000

    invoke-direct {v10, v15, v13, v14}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v10, v6, v0

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v13, "wifi_multicast"

    const-string v14, "Wm"

    const/high16 v15, 0x10000

    invoke-direct {v10, v15, v13, v14}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x6

    aput-object v10, v6, v13

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v14, "wifi_radio"

    const-string v15, "Wr"

    move/from16 v16, v0

    const/high16 v0, 0x4000000

    invoke-direct {v10, v0, v14, v15}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x7

    aput-object v10, v6, v0

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v14, "mobile_radio"

    const-string v15, "Pr"

    move/from16 v17, v7

    const/high16 v7, 0x2000000

    invoke-direct {v10, v7, v14, v15}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x8

    aput-object v10, v6, v7

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v14, "phone_scanning"

    const-string v15, "Psc"

    move/from16 v18, v7

    const/high16 v7, 0x200000

    invoke-direct {v10, v7, v14, v15}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x9

    aput-object v10, v6, v7

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string v14, "audio"

    const-string v15, "a"

    move/from16 v19, v7

    const/high16 v7, 0x400000

    invoke-direct {v10, v7, v14, v15}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0xa

    aput-object v10, v6, v7

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v14, "screen"

    const-string v15, "S"

    move/from16 v20, v8

    const/high16 v8, 0x100000

    invoke-direct {v10, v8, v14, v15}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0xb

    aput-object v10, v6, v8

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v14, "plugged"

    const-string v15, "BP"

    move/from16 v21, v8

    const/high16 v8, 0x80000

    invoke-direct {v10, v8, v14, v15}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0xc

    aput-object v10, v6, v8

    new-instance v8, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v10, "screen_doze"

    const-string v14, "Sd"

    const/high16 v15, 0x40000

    invoke-direct {v8, v15, v10, v14}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0xd

    aput-object v8, v6, v10

    new-instance v22, Landroid/os/BatteryStats$BitDescription;

    sget-object v27, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    sget-object v28, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    const/16 v23, 0x3e00

    const/16 v24, 0x9

    const-string v25, "data_conn"

    const-string v26, "Pcn"

    invoke-direct/range {v22 .. v28}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v8, 0xe

    aput-object v22, v6, v8

    new-instance v23, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v14, "in"

    const-string/jumbo v15, "out"

    move/from16 v22, v8

    const-string v8, "emergency"

    move/from16 v30, v9

    const-string/jumbo v9, "off"

    filled-new-array {v14, v15, v8, v9}, [Ljava/lang/String;

    move-result-object v28

    const-string/jumbo v8, "out"

    const-string v14, "em"

    const-string/jumbo v15, "in"

    filled-new-array {v15, v8, v14, v9}, [Ljava/lang/String;

    move-result-object v29

    const/16 v24, 0x1c0

    const/16 v25, 0x6

    const-string/jumbo v26, "phone_state"

    const-string v27, "Pst"

    invoke-direct/range {v23 .. v29}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v8, 0xf

    aput-object v23, v6, v8

    new-instance v31, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v14, "good"

    const-string/jumbo v15, "great"

    move/from16 v23, v8

    const-string/jumbo v8, "none"

    move/from16 v24, v10

    const-string/jumbo v10, "poor"

    move/from16 v25, v11

    const-string/jumbo v11, "moderate"

    filled-new-array {v8, v10, v11, v14, v15}, [Ljava/lang/String;

    move-result-object v36

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v37

    const/16 v32, 0x38

    const/16 v33, 0x3

    const-string/jumbo v34, "phone_signal_strength"

    const-string v35, "Pss"

    invoke-direct/range {v31 .. v37}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v8, 0x10

    aput-object v31, v6, v8

    new-instance v32, Landroid/os/BatteryStats$BitDescription;

    sget-object v37, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    sget-object v38, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

    const/16 v33, 0x7

    const/16 v34, 0x0

    const-string v35, "brightness"

    const-string v36, "Sb"

    invoke-direct/range {v32 .. v38}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v10, 0x11

    aput-object v32, v6, v10

    sput-object v6, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    .line 3053
    const/16 v6, 0x11

    new-array v6, v6, [Landroid/os/BatteryStats$BitDescription;

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v11, "power_save"

    const-string/jumbo v14, "ps"

    const/high16 v15, -0x80000000

    invoke-direct {v10, v15, v11, v14}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v10, v6, v25

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v11, "video"

    const-string/jumbo v14, "v"

    const/high16 v15, 0x40000000    # 2.0f

    invoke-direct {v10, v15, v11, v14}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v10, v6, v17

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v11, "wifi_running"

    const-string v14, "Ww"

    const/high16 v15, 0x20000000

    invoke-direct {v10, v15, v11, v14}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v10, v6, v20

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v11, "wifi"

    const-string v14, "W"

    const/high16 v15, 0x10000000

    invoke-direct {v10, v15, v11, v14}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v10, v6, v30

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string v11, "flashlight"

    const-string v14, "fl"

    const/high16 v15, 0x8000000

    invoke-direct {v10, v15, v11, v14}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v10, v6, v12

    new-instance v31, Landroid/os/BatteryStats$BitDescription;

    const-string v10, "full"

    const-string v11, "???"

    const-string/jumbo v14, "light"

    filled-new-array {v9, v14, v10, v11}, [Ljava/lang/String;

    move-result-object v36

    const-string v10, "full"

    const-string v11, "???"

    const-string/jumbo v14, "light"

    filled-new-array {v9, v14, v10, v11}, [Ljava/lang/String;

    move-result-object v37

    const/high16 v32, 0x6000000

    const/16 v33, 0x19

    const-string v34, "device_idle"

    const-string v35, "di"

    invoke-direct/range {v31 .. v37}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v31, v6, v16

    new-instance v9, Landroid/os/BatteryStats$BitDescription;

    const-string v10, "charging"

    const-string v11, "ch"

    const/high16 v14, 0x1000000

    invoke-direct {v9, v14, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v9, v6, v13

    new-instance v9, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v10, "usb_data"

    const-string v11, "Ud"

    const/high16 v14, 0x40000

    invoke-direct {v9, v14, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v9, v6, v0

    new-instance v9, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v10, "phone_in_call"

    const-string v11, "Pcl"

    const/high16 v14, 0x800000

    invoke-direct {v9, v14, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v9, v6, v18

    new-instance v9, Landroid/os/BatteryStats$BitDescription;

    const-string v10, "bluetooth"

    const-string v11, "b"

    const/high16 v14, 0x400000

    invoke-direct {v9, v14, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v9, v6, v19

    new-instance v31, Landroid/os/BatteryStats$BitDescription;

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v36

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v37

    const/16 v32, 0x70

    const/16 v33, 0x4

    const-string/jumbo v34, "wifi_signal_strength"

    const-string v35, "Wss"

    invoke-direct/range {v31 .. v37}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v31, v6, v7

    new-instance v32, Landroid/os/BatteryStats$BitDescription;

    sget-object v37, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    sget-object v38, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

    const/16 v33, 0xf

    const/16 v34, 0x0

    const-string/jumbo v35, "wifi_suppl"

    const-string v36, "Wsp"

    invoke-direct/range {v32 .. v38}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v32, v6, v21

    new-instance v5, Landroid/os/BatteryStats$BitDescription;

    const-string v9, "camera"

    const-string v10, "ca"

    const/high16 v11, 0x200000

    invoke-direct {v5, v11, v9, v10}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0xc

    aput-object v5, v6, v9

    new-instance v5, Landroid/os/BatteryStats$BitDescription;

    const-string v9, "ble_scan"

    const-string v10, "bles"

    const/high16 v11, 0x100000

    invoke-direct {v5, v11, v9, v10}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v5, v6, v24

    new-instance v5, Landroid/os/BatteryStats$BitDescription;

    const-string v9, "cellular_high_tx_power"

    const-string v10, "Chtp"

    const/high16 v11, 0x80000

    invoke-direct {v5, v11, v9, v10}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v5, v6, v22

    new-instance v31, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v5, "good"

    const-string/jumbo v9, "none"

    const-string/jumbo v10, "poor"

    filled-new-array {v10, v5, v9}, [Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v5, "good"

    const-string/jumbo v9, "none"

    const-string/jumbo v10, "poor"

    filled-new-array {v10, v5, v9}, [Ljava/lang/String;

    move-result-object v37

    const/16 v32, 0x180

    const/16 v33, 0x7

    const-string/jumbo v34, "gps_signal_quality"

    const-string v35, "Gss"

    invoke-direct/range {v31 .. v37}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v31, v6, v23

    new-instance v32, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v5, "not_restricted"

    const-string v9, "connected"

    const-string/jumbo v10, "none"

    const-string/jumbo v11, "restricted"

    filled-new-array {v10, v11, v5, v9}, [Ljava/lang/String;

    move-result-object v37

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v38

    const/16 v33, 0x600

    const/16 v34, 0x9

    const-string/jumbo v35, "nr_state"

    const-string/jumbo v36, "nrs"

    invoke-direct/range {v32 .. v38}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v32, v6, v8

    sput-object v6, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    .line 3087
    const-string/jumbo v54, "state"

    const-string v55, "display_state_changed"

    const-string/jumbo v33, "null"

    const-string/jumbo v34, "proc"

    const-string v35, "fg"

    const-string/jumbo v36, "top"

    const-string/jumbo v37, "sync"

    const-string/jumbo v38, "wake_lock_in"

    const-string/jumbo v39, "job"

    const-string/jumbo v40, "user"

    const-string/jumbo v41, "userfg"

    const-string v42, "conn"

    const-string v43, "active"

    const-string/jumbo v44, "pkginst"

    const-string/jumbo v45, "pkgunin"

    const-string v46, "alarm"

    const-string/jumbo v47, "stats"

    const-string/jumbo v48, "pkginactive"

    const-string/jumbo v49, "pkgactive"

    const-string/jumbo v50, "tmpwhitelist"

    const-string/jumbo v51, "screenwake"

    const-string/jumbo v52, "wakeupap"

    const-string/jumbo v53, "longwake"

    filled-new-array/range {v33 .. v55}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    .line 3094
    const-string v52, "Esc"

    const-string v53, "Eds"

    const-string v31, "Enl"

    const-string v32, "Epr"

    const-string v33, "Efg"

    const-string v34, "Etp"

    const-string v35, "Esy"

    const-string v36, "Ewl"

    const-string v37, "Ejb"

    const-string v38, "Eur"

    const-string v39, "Euf"

    const-string v40, "Ecn"

    const-string v41, "Eac"

    const-string v42, "Epi"

    const-string v43, "Epu"

    const-string v44, "Eal"

    const-string v45, "Est"

    const-string v46, "Eai"

    const-string v47, "Eaa"

    const-string v48, "Etw"

    const-string v49, "Esw"

    const-string v50, "Ewa"

    const-string v51, "Elw"

    filled-new-array/range {v31 .. v53}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

    .line 3106
    new-instance v1, Landroid/os/BatteryStats$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/os/BatteryStats$$ExternalSyntheticLambda0;-><init>()V

    sput-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    .line 3107
    new-instance v1, Landroid/os/BatteryStats$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/os/BatteryStats$$ExternalSyntheticLambda1;-><init>()V

    sput-object v1, Landroid/os/BatteryStats;->sIntToString:Landroid/os/BatteryStats$IntToString;

    .line 3109
    const/16 v1, 0x17

    new-array v1, v1, [Landroid/os/BatteryStats$IntToString;

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v25

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v17

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v20

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v30

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v12

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v16

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v13

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v0

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v18

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v19

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v7

    sget-object v2, Landroid/os/BatteryStats;->sIntToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v21

    const/16 v2, 0xc

    sget-object v3, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v3, v1, v2

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v24

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v22

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v23

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v8

    const/16 v2, 0x11

    sget-object v3, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    sget-object v3, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    sget-object v3, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v3, v1, v2

    const/16 v2, 0x14

    sget-object v3, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v3, v1, v2

    const/16 v2, 0x15

    sget-object v3, Landroid/os/BatteryStats;->sIntToString:Landroid/os/BatteryStats$IntToString;

    aput-object v3, v1, v2

    const/16 v2, 0x16

    sget-object v3, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v3, v1, v2

    sput-object v1, Landroid/os/BatteryStats;->HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

    .line 3158
    const-string/jumbo v37, "sta_p2p"

    const-string/jumbo v38, "soft_ap"

    const-string/jumbo v31, "off"

    const-string/jumbo v32, "scanning"

    const-string/jumbo v33, "no_net"

    const-string v34, "disconn"

    const-string/jumbo v35, "sta"

    const-string/jumbo v36, "p2p"

    filled-new-array/range {v31 .. v38}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->WIFI_STATE_NAMES:[Ljava/lang/String;

    .line 3543
    new-array v1, v7, [I

    fill-array-data v1, :array_1

    sput-object v1, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    .line 3555
    new-array v1, v7, [I

    fill-array-data v1, :array_2

    sput-object v1, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    .line 3567
    const-string/jumbo v39, "screen doze-suspend power save"

    const-string/jumbo v40, "screen doze-suspend device idle"

    const-string/jumbo v31, "screen off"

    const-string/jumbo v32, "screen off power save"

    const-string/jumbo v33, "screen off device idle"

    const-string/jumbo v34, "screen on"

    const-string/jumbo v35, "screen on power save"

    const-string/jumbo v36, "screen doze"

    const-string/jumbo v37, "screen doze power save"

    const-string/jumbo v38, "screen doze-suspend"

    filled-new-array/range {v31 .. v40}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    .line 4440
    const/16 v1, 0x13

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    .line 4444
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string/jumbo v2, "scrn"

    aput-object v2, v1, v25

    .line 4445
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string v2, "cpu"

    aput-object v2, v1, v17

    .line 4446
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string v2, "blue"

    aput-object v2, v1, v20

    .line 4447
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string v2, "camera"

    aput-object v2, v1, v30

    .line 4448
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string v2, "audio"

    aput-object v2, v1, v12

    .line 4449
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string/jumbo v2, "video"

    aput-object v2, v1, v16

    .line 4450
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string v2, "flashlight"

    aput-object v2, v1, v13

    .line 4451
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string v2, "cell"

    aput-object v2, v1, v18

    .line 4452
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string/jumbo v2, "sensors"

    aput-object v2, v1, v19

    .line 4453
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string/jumbo v2, "gnss"

    aput-object v2, v1, v7

    .line 4454
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string/jumbo v2, "wifi"

    aput-object v2, v1, v21

    .line 4455
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string/jumbo v2, "memory"

    aput-object v2, v1, v24

    .line 4456
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string/jumbo v2, "phone"

    aput-object v2, v1, v22

    .line 4457
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string v2, "ambi"

    aput-object v2, v1, v23

    .line 4458
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string/jumbo v2, "idle"

    aput-object v2, v1, v8

    .line 9174
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/os/BatteryStats;->DISPLAY_TRANSPORT_PRIORITIES:[I

    return-void

    nop

    :array_0
    .array-data 8
        0x36ee80
        0x6ddd00
        0xdbba00
        0x1b77400
        0x7fffffffffffffffL
    .end array-data

    :array_1
    .array-data 4
        0x7
        0xf
        0xb
        0x7
        0x7
        0x7
        0x7
        0x7
        0xf
        0xb
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x4
        0x8
        0x1
        0x5
        0x2
        0x6
        0x3
        0x7
        0xb
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x0
        0x5
        0x2
        0x1
        0x3
        0x8
    .end array-data
.end method

.method public constructor greylist-max-p <init>()V
    .locals 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 420
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    .line 96
    return-void
.end method

.method public static blacklist checkWifiOnly(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 8977
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 8978
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_0

    .line 8979
    const/4 v1, 0x0

    return v1

    .line 8981
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private static greylist-max-o computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J
    .locals 6
    .param p0, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .line 3820
    if-eqz p0, :cond_0

    .line 3822
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    .line 3823
    .local v0, "totalTimeMicros":J
    const-wide/16 v2, 0x1f4

    add-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 3824
    .local v2, "totalTimeMillis":J
    return-wide v2

    .line 3826
    .end local v0    # "totalTimeMicros":J
    .end local v2    # "totalTimeMillis":J
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static greylist-max-o controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z
    .locals 10
    .param p0, "counter"    # Landroid/os/BatteryStats$ControllerActivityCounter;
    .param p1, "which"    # I

    .line 4075
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 4076
    return v0

    .line 4079
    :cond_0
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-nez v1, :cond_4

    .line 4080
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-nez v1, :cond_4

    .line 4081
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-nez v1, :cond_4

    .line 4082
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getMonitoredRailChargeConsumedMaMs()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-eqz v1, :cond_1

    goto :goto_1

    .line 4086
    :cond_1
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    array-length v5, v1

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v1, v6

    .line 4087
    .local v7, "c":Landroid/os/BatteryStats$LongCounter;
    invoke-virtual {v7, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v8

    cmp-long v8, v8, v3

    if-eqz v8, :cond_2

    .line 4088
    return v2

    .line 4086
    .end local v7    # "c":Landroid/os/BatteryStats$LongCounter;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 4091
    :cond_3
    return v0

    .line 4083
    :cond_4
    :goto_1
    return v2
.end method

.method private blacklist dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;ILandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p4, "flags"    # I
    .param p5, "dumpHelper"    # Landroid/os/BatteryStats$BatteryStatsDumpHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;I",
            "Landroid/os/BatteryStats$BatteryStatsDumpHelper;",
            ")V"
        }
    .end annotation

    .line 7961
    .local p3, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v7, p3

    const-string/jumbo v1, "i"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v7, :cond_3

    .line 7962
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 7963
    .local v5, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_1

    .line 7964
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    .line 7965
    .local v8, "ai":Landroid/content/pm/ApplicationInfo;
    iget v9, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 7966
    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    .line 7965
    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    .line 7967
    .local v9, "pkgs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;"
    if-nez v9, :cond_0

    .line 7968
    new-instance v10, Landroid/util/Pair;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Landroid/util/MutableBoolean;

    invoke-direct {v12, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v9, v10

    .line 7969
    iget v10, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    invoke-virtual {v5, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7971
    :cond_0
    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/util/ArrayList;

    iget-object v11, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7963
    .end local v8    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "pkgs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;"
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 7973
    .end local v6    # "i":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v6

    .line 7974
    .local v6, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 7975
    .local v8, "NU":I
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    .line 7976
    .local v9, "lineArgs":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v8, :cond_3

    .line 7977
    invoke-virtual {v6, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    .line 7978
    .local v11, "uid":I
    invoke-virtual {v5, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    .line 7979
    .local v12, "pkgs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;"
    if-eqz v12, :cond_2

    iget-object v13, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Landroid/util/MutableBoolean;

    iget-boolean v13, v13, Landroid/util/MutableBoolean;->value:Z

    if-nez v13, :cond_2

    .line 7980
    iget-object v13, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Landroid/util/MutableBoolean;

    iput-boolean v4, v13, Landroid/util/MutableBoolean;->value:Z

    .line 7981
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_2
    iget-object v14, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_2

    .line 7982
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v9, v3

    .line 7983
    iget-object v14, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    aput-object v14, v9, v4

    .line 7984
    const-string/jumbo v14, "uid"

    move-object v15, v9

    check-cast v15, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v14, v15}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7981
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 7976
    .end local v11    # "uid":I
    .end local v12    # "pkgs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;"
    .end local v13    # "j":I
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 7990
    .end local v5    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;>;"
    .end local v6    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v8    # "NU":I
    .end local v9    # "lineArgs":[Ljava/lang/String;
    .end local v10    # "i":I
    :cond_3
    and-int/lit8 v5, p4, 0x4

    if-nez v5, :cond_7

    .line 7991
    const-string v5, "dsd"

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v6

    const-string v8, ""

    invoke-static {v2, v8, v5, v6, v4}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    .line 7992
    new-array v9, v4, [Ljava/lang/String;

    .line 7993
    .restart local v9    # "lineArgs":[Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v10, 0x3e8

    mul-long/2addr v5, v10

    invoke-virtual {v0, v5, v6}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v5

    .line 7994
    .local v5, "timeRemaining":J
    const-wide/16 v12, 0x0

    cmp-long v14, v5, v12

    if-ltz v14, :cond_4

    .line 7995
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v9, v3

    .line 7996
    const-string v14, "dtr"

    move-object v15, v9

    check-cast v15, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v14, v15}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7999
    :cond_4
    const-string v14, "csd"

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v15

    invoke-static {v2, v8, v14, v15, v4}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    .line 8000
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    mul-long/2addr v14, v10

    invoke-virtual {v0, v14, v15}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v10

    .line 8001
    .end local v5    # "timeRemaining":J
    .local v10, "timeRemaining":J
    cmp-long v5, v10, v12

    if-ltz v5, :cond_5

    .line 8002
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v3

    .line 8003
    const-string v5, "ctr"

    move-object v6, v9

    check-cast v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v5, v6}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8006
    :cond_5
    and-int/lit8 v1, p4, 0x40

    if-eqz v1, :cond_6

    move v5, v4

    goto :goto_3

    :cond_6
    move v5, v3

    :goto_3
    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object/from16 v1, p1

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V

    .line 8009
    .end local v9    # "lineArgs":[Ljava/lang/String;
    .end local v10    # "timeRemaining":J
    :cond_7
    return-void
.end method

.method private static final greylist-max-o dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .locals 7
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "uid"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "counter"    # Landroid/os/BatteryStats$ControllerActivityCounter;
    .param p5, "which"    # I

    .line 4117
    invoke-static {p4, p5}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4118
    return-void

    .line 4121
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/os/BatteryStats;->dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 4122
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4123
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 4124
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4125
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 4126
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4127
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x414b774000000000L    # 3600000.0

    div-double/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(D)V

    .line 4128
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4129
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getMonitoredRailChargeConsumedMaMs()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v1

    long-to-double v1, v1

    div-double/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(D)V

    .line 4131
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 4132
    .local v4, "c":Landroid/os/BatteryStats$LongCounter;
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4133
    invoke-virtual {v4, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 4131
    .end local v4    # "c":Landroid/os/BatteryStats$LongCounter;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4135
    :cond_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 4136
    return-void
.end method

.method private static greylist-max-o dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V
    .locals 11
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "counter"    # Landroid/os/BatteryStats$ControllerActivityCounter;
    .param p4, "which"    # I

    .line 4144
    invoke-static {p3, p4}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4145
    return-void

    .line 4148
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 4150
    .local v0, "cToken":J
    nop

    .line 4151
    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    .line 4150
    const-wide v4, 0x10300000001L

    invoke-virtual {p0, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4152
    nop

    .line 4153
    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    .line 4152
    const-wide v4, 0x10300000002L

    invoke-virtual {p0, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4154
    nop

    .line 4155
    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v6, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v6

    .line 4154
    const-wide v8, 0x10300000003L

    invoke-virtual {p0, v8, v9, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 4156
    nop

    .line 4157
    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getMonitoredRailChargeConsumedMaMs()Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v6

    .line 4156
    const-wide v6, 0x10100000005L

    invoke-virtual {p0, v6, v7, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 4161
    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    .line 4162
    .local v2, "txCounters":[Landroid/os/BatteryStats$LongCounter;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v2

    if-ge v3, v6, :cond_1

    .line 4163
    aget-object v6, v2, v3

    .line 4164
    .local v6, "c":Landroid/os/BatteryStats$LongCounter;
    const-wide v7, 0x20b00000004L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 4165
    .local v7, "tToken":J
    const-wide v9, 0x10500000001L

    invoke-virtual {p0, v9, v10, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4166
    invoke-virtual {v6, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v9

    invoke-virtual {p0, v4, v5, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4167
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4162
    .end local v6    # "c":Landroid/os/BatteryStats$LongCounter;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4170
    .end local v3    # "i":I
    .end local v7    # "tToken":J
    :cond_1
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4171
    return-void
.end method

.method private greylist-max-o dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V
    .locals 18
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "steps"    # Landroid/os/BatteryStats$LevelStepTracker;
    .param p5, "tmpSb"    # Ljava/lang/StringBuilder;
    .param p6, "tmpOutInt"    # [I

    .line 7719
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    if-nez p4, :cond_0

    .line 7720
    return-void

    .line 7722
    :cond_0
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v3, p4

    move-object/from16 v8, p6

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v4

    .line 7723
    .local v4, "timeRemaining":J
    const-wide/16 v12, 0x0

    cmp-long v3, v4, v12

    const-string v14, " steps)"

    const-string v15, " (from "

    const/4 v6, 0x0

    if-ltz v3, :cond_1

    .line 7724
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " total time: "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7725
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 7726
    invoke-static {v2, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 7727
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 7728
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v3, p6, v6

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 7729
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7731
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v7, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    array-length v7, v7

    if-ge v3, v7, :cond_3

    .line 7732
    sget-object v7, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    aget v7, v7, v3

    int-to-long v7, v7

    sget-object v9, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    aget v9, v9, v3

    int-to-long v9, v9

    move-object/from16 v11, p6

    move-wide/from16 v16, v12

    move v12, v6

    move-object/from16 v6, p4

    invoke-virtual/range {v6 .. v11}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v7

    .line 7734
    .local v7, "estimatedTime":J
    cmp-long v6, v7, v16

    if-lez v6, :cond_2

    .line 7735
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7736
    sget-object v6, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7737
    const-string v6, " time: "

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7738
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 7739
    invoke-static {v2, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 7740
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 7741
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v6, p6, v12

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 7742
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7731
    .end local v7    # "estimatedTime":J
    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v6, v12

    move-wide/from16 v12, v16

    goto :goto_0

    .line 7745
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method private greylist-max-o dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;)V"
        }
    .end annotation

    .line 7749
    .local p3, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$PackageChange;>;"
    if-nez p3, :cond_0

    .line 7750
    return-void

    .line 7752
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Package changes:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7753
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 7754
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$PackageChange;

    .line 7755
    .local v1, "pc":Landroid/os/BatteryStats$PackageChange;
    iget-boolean v2, v1, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    if-eqz v2, :cond_1

    .line 7756
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Update "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7757
    const-string v2, " vers="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Landroid/os/BatteryStats$PackageChange;->mVersionCode:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    goto :goto_1

    .line 7759
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Uninstall "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7753
    .end local v1    # "pc":Landroid/os/BatteryStats$PackageChange;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7762
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private static greylist-max-o dumpDurationSteps(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$LevelStepTracker;)V
    .locals 21
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "steps"    # Landroid/os/BatteryStats$LevelStepTracker;

    .line 7518
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    if-nez v1, :cond_0

    .line 7519
    return-void

    .line 7521
    :cond_0
    iget v2, v1, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 7522
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_6

    .line 7523
    invoke-virtual/range {p0 .. p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 7524
    .local v4, "token":J
    const-wide v6, 0x10300000001L

    invoke-virtual {v1, v3}, Landroid/os/BatteryStats$LevelStepTracker;->getDurationAt(I)J

    move-result-wide v8

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7525
    const-wide v6, 0x10500000002L

    invoke-virtual {v1, v3}, Landroid/os/BatteryStats$LevelStepTracker;->getLevelAt(I)I

    move-result v8

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7527
    invoke-virtual {v1, v3}, Landroid/os/BatteryStats$LevelStepTracker;->getInitModeAt(I)I

    move-result v6

    int-to-long v6, v6

    .line 7528
    .local v6, "initMode":J
    invoke-virtual {v1, v3}, Landroid/os/BatteryStats$LevelStepTracker;->getModModeAt(I)I

    move-result v8

    int-to-long v8, v8

    .line 7530
    .local v8, "modMode":J
    const/4 v10, 0x0

    .line 7531
    .local v10, "ds":I
    const-wide/16 v11, 0x3

    and-long v13, v8, v11

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    const/4 v14, 0x1

    if-nez v13, :cond_1

    .line 7532
    and-long/2addr v11, v6

    long-to-int v11, v11

    add-int/2addr v11, v14

    packed-switch v11, :pswitch_data_0

    .line 7546
    const/4 v10, 0x5

    goto :goto_1

    .line 7543
    :pswitch_0
    const/4 v10, 0x4

    .line 7544
    goto :goto_1

    .line 7540
    :pswitch_1
    const/4 v10, 0x3

    .line 7541
    goto :goto_1

    .line 7537
    :pswitch_2
    const/4 v10, 0x1

    .line 7538
    goto :goto_1

    .line 7534
    :pswitch_3
    const/4 v10, 0x2

    .line 7535
    nop

    .line 7550
    :cond_1
    :goto_1
    const-wide v11, 0x10e00000003L

    invoke-virtual {v0, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7552
    const/4 v11, 0x0

    .line 7553
    .local v11, "psm":I
    const-wide/16 v12, 0x4

    and-long v17, v8, v12

    cmp-long v17, v17, v15

    const/16 v18, 0x2

    if-nez v17, :cond_3

    .line 7554
    and-long/2addr v12, v6

    cmp-long v12, v12, v15

    if-eqz v12, :cond_2

    .line 7555
    goto :goto_2

    :cond_2
    move/from16 v14, v18

    :goto_2
    move v11, v14

    .line 7557
    :cond_3
    const-wide v12, 0x10e00000004L

    invoke-virtual {v0, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7559
    const/4 v12, 0x0

    .line 7560
    .local v12, "im":I
    const-wide/16 v13, 0x8

    and-long v19, v8, v13

    cmp-long v17, v19, v15

    if-nez v17, :cond_5

    .line 7561
    and-long/2addr v13, v6

    cmp-long v13, v13, v15

    if-eqz v13, :cond_4

    .line 7562
    goto :goto_3

    :cond_4
    const/16 v18, 0x3

    :goto_3
    move/from16 v12, v18

    .line 7564
    :cond_5
    const-wide v13, 0x10e00000005L

    invoke-virtual {v0, v13, v14, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7566
    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 7522
    .end local v4    # "token":J
    .end local v6    # "initMode":J
    .end local v8    # "modMode":J
    .end local v10    # "ds":I
    .end local v11    # "psm":I
    .end local v12    # "im":I
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 7568
    .end local v3    # "i":I
    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static greylist-max-o dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z
    .locals 28
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "steps"    # Landroid/os/BatteryStats$LevelStepTracker;
    .param p4, "checkin"    # Z

    .line 7437
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 7438
    return v3

    .line 7440
    :cond_0
    iget v4, v2, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 7441
    .local v4, "count":I
    if-gtz v4, :cond_1

    .line 7442
    return v3

    .line 7444
    :cond_1
    if-nez p4, :cond_2

    .line 7445
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7447
    :cond_2
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    .line 7448
    .local v5, "lineArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/4 v7, 0x1

    if-ge v6, v4, :cond_11

    .line 7449
    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getDurationAt(I)J

    move-result-wide v8

    .line 7450
    .local v8, "duration":J
    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getLevelAt(I)I

    move-result v10

    .line 7451
    .local v10, "level":I
    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getInitModeAt(I)I

    move-result v11

    int-to-long v11, v11

    .line 7452
    .local v11, "initMode":J
    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getModModeAt(I)I

    move-result v13

    int-to-long v13, v13

    .line 7453
    .local v13, "modMode":J
    const-wide/16 v15, 0x8

    const-wide/16 v17, 0x4

    const-wide/16 v19, 0x3

    const-wide/16 v21, 0x0

    if-eqz p4, :cond_8

    .line 7454
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v5, v3

    .line 7455
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v5, v7

    .line 7456
    and-long v23, v13, v19

    cmp-long v23, v23, v21

    const-string v24, ""

    const/16 v25, 0x2

    if-nez v23, :cond_3

    .line 7457
    move/from16 v23, v7

    move-wide/from16 v26, v8

    .end local v8    # "duration":J
    .local v26, "duration":J
    and-long v7, v11, v19

    long-to-int v7, v7

    add-int/lit8 v7, v7, 0x1

    packed-switch v7, :pswitch_data_0

    .line 7462
    const-string v7, "?"

    aput-object v7, v5, v25

    goto :goto_1

    .line 7461
    :pswitch_0
    const-string/jumbo v7, "sds"

    aput-object v7, v5, v25

    goto :goto_1

    .line 7460
    :pswitch_1
    const-string/jumbo v7, "sd"

    aput-object v7, v5, v25

    goto :goto_1

    .line 7459
    :pswitch_2
    const-string/jumbo v7, "s+"

    aput-object v7, v5, v25

    goto :goto_1

    .line 7458
    :pswitch_3
    const-string/jumbo v7, "s-"

    aput-object v7, v5, v25

    goto :goto_1

    .line 7465
    .end local v26    # "duration":J
    .restart local v8    # "duration":J
    :cond_3
    move-wide/from16 v26, v8

    .end local v8    # "duration":J
    .restart local v26    # "duration":J
    aput-object v24, v5, v25

    .line 7467
    :goto_1
    and-long v7, v13, v17

    cmp-long v7, v7, v21

    const/4 v8, 0x3

    if-nez v7, :cond_5

    .line 7468
    and-long v17, v11, v17

    cmp-long v7, v17, v21

    if-eqz v7, :cond_4

    const-string/jumbo v7, "p+"

    goto :goto_2

    :cond_4
    const-string/jumbo v7, "p-"

    :goto_2
    aput-object v7, v5, v8

    goto :goto_3

    .line 7470
    :cond_5
    aput-object v24, v5, v8

    .line 7472
    :goto_3
    and-long v7, v13, v15

    cmp-long v7, v7, v21

    const/4 v8, 0x4

    if-nez v7, :cond_7

    .line 7473
    and-long/2addr v15, v11

    cmp-long v7, v15, v21

    if-eqz v7, :cond_6

    const-string/jumbo v7, "i+"

    goto :goto_4

    :cond_6
    const-string/jumbo v7, "i-"

    :goto_4
    aput-object v7, v5, v8

    goto :goto_5

    .line 7475
    :cond_7
    aput-object v24, v5, v8

    .line 7477
    :goto_5
    const-string/jumbo v7, "i"

    move-object v8, v5

    check-cast v8, [Ljava/lang/Object;

    invoke-static {v0, v3, v7, v1, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 7479
    .end local v26    # "duration":J
    .restart local v8    # "duration":J
    :cond_8
    move/from16 v23, v7

    move-wide/from16 v26, v8

    .end local v8    # "duration":J
    .restart local v26    # "duration":J
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7480
    const-string v7, "#"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7481
    move-wide/from16 v7, v26

    .end local v26    # "duration":J
    .local v7, "duration":J
    invoke-static {v7, v8, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 7482
    const-string v9, " to "

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 7483
    const/4 v9, 0x0

    .line 7484
    .local v9, "haveModes":Z
    and-long v24, v13, v19

    cmp-long v24, v24, v21

    const-string v3, " ("

    if-nez v24, :cond_9

    .line 7485
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7486
    and-long v1, v11, v19

    long-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    packed-switch v1, :pswitch_data_1

    .line 7491
    const-string/jumbo v1, "screen-?"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    .line 7490
    :pswitch_4
    const-string/jumbo v1, "screen-doze-suspend"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    .line 7489
    :pswitch_5
    const-string/jumbo v1, "screen-doze"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    .line 7488
    :pswitch_6
    const-string/jumbo v1, "screen-on"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    .line 7487
    :pswitch_7
    const-string/jumbo v1, "screen-off"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7493
    :goto_6
    const/4 v9, 0x1

    .line 7495
    :cond_9
    and-long v1, v13, v17

    cmp-long v1, v1, v21

    const-string v2, ", "

    if-nez v1, :cond_c

    .line 7496
    if-eqz v9, :cond_a

    move-object v1, v2

    goto :goto_7

    :cond_a
    move-object v1, v3

    :goto_7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7497
    and-long v17, v11, v17

    cmp-long v1, v17, v21

    if-eqz v1, :cond_b

    .line 7498
    const-string/jumbo v1, "power-save-on"

    goto :goto_8

    :cond_b
    const-string/jumbo v1, "power-save-off"

    .line 7497
    :goto_8
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7499
    const/4 v9, 0x1

    .line 7501
    :cond_c
    and-long v17, v13, v15

    cmp-long v1, v17, v21

    if-nez v1, :cond_f

    .line 7502
    if-eqz v9, :cond_d

    move-object v3, v2

    :cond_d
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7503
    and-long v1, v11, v15

    cmp-long v1, v1, v21

    if-eqz v1, :cond_e

    .line 7504
    const-string v1, "device-idle-on"

    goto :goto_9

    :cond_e
    const-string v1, "device-idle-off"

    .line 7503
    :goto_9
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7505
    const/4 v9, 0x1

    .line 7507
    :cond_f
    if-eqz v9, :cond_10

    .line 7508
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7510
    :cond_10
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 7448
    .end local v7    # "duration":J
    .end local v9    # "haveModes":Z
    .end local v10    # "level":I
    .end local v11    # "initMode":J
    .end local v13    # "modMode":J
    :goto_a
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_11
    move/from16 v23, v7

    .line 7513
    .end local v6    # "i":I
    return v23

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private blacklist dumpHistory(Ljava/io/PrintWriter;IJZ)V
    .locals 23
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "flags"    # I
    .param p3, "histStart"    # J
    .param p5, "checkin"    # Z

    .line 7578
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v7, p5

    new-instance v2, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    .line 7579
    .local v2, "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    monitor-enter p0

    .line 7580
    const/4 v0, 0x1

    if-nez v7, :cond_1

    .line 7581
    :try_start_0
    invoke-virtual {v1}, Landroid/os/BatteryStats;->getHistoryTotalSize()I

    move-result v4

    int-to-long v4, v4

    .line 7582
    .local v4, "historyTotalSize":J
    invoke-virtual {v1}, Landroid/os/BatteryStats;->getHistoryUsedSize()I

    move-result v6

    int-to-long v8, v6

    .line 7583
    .local v8, "historyUsedSize":J
    const-string v6, "Battery History"

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7584
    invoke-static {v2}, Landroid/os/BatteryStats$HistoryPrinter;->-$$Nest$fgetmFormatVersion(Landroid/os/BatteryStats$HistoryPrinter;)I

    move-result v6

    if-eq v6, v0, :cond_0

    .line 7585
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " [Format: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Landroid/os/BatteryStats$HistoryPrinter;->-$$Nest$fgetmFormatVersion(Landroid/os/BatteryStats$HistoryPrinter;)I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "]"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7587
    :cond_0
    const-string v6, " ("

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7588
    const-wide/16 v10, 0x64

    mul-long/2addr v10, v8

    div-long/2addr v10, v4

    invoke-virtual {v3, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    .line 7589
    const-string v6, "% used, "

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7590
    invoke-direct {v1, v3, v8, v9}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 7591
    const-string v6, " used of "

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7592
    invoke-direct {v1, v3, v4, v5}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 7593
    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7594
    invoke-virtual {v1}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 7595
    const-string v6, " strings using "

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7596
    invoke-virtual {v1}, Landroid/os/BatteryStats;->getHistoryStringPoolBytes()I

    move-result v6

    int-to-long v10, v6

    invoke-direct {v1, v3, v10, v11}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 7597
    const-string v6, "):"

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7598
    .end local v4    # "historyTotalSize":J
    .end local v8    # "historyUsedSize":J
    goto :goto_0

    .line 7599
    :cond_1
    invoke-direct {v1, v3, v7}, Landroid/os/BatteryStats;->dumpHistoryTagPoolLocked(Ljava/io/PrintWriter;Z)V

    .line 7601
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_e

    .line 7603
    const-wide/16 v4, -0x1

    .line 7604
    .local v4, "lastTime":J
    const-wide/16 v8, -0x1

    .line 7605
    .local v8, "baseTime":J
    const/4 v6, 0x0

    .line 7606
    .local v6, "printed":Z
    const/4 v10, 0x0

    .line 7607
    .local v10, "tracker":Landroid/os/BatteryStats$HistoryEventTracker;
    nop

    .line 7608
    const-wide/16 v11, 0x0

    const-wide/16 v13, -0x1

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/os/BatteryStats;->iterateBatteryStatsHistory(JJ)Lcom/android/internal/os/BatteryStatsHistoryIterator;

    move-result-object v13

    .line 7610
    .local v13, "iterator":Lcom/android/internal/os/BatteryStatsHistoryIterator;
    :goto_1
    :try_start_1
    invoke-virtual {v13}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->next()Landroid/os/BatteryStats$HistoryItem;

    move-result-object v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    move-wide v15, v4

    .end local v4    # "lastTime":J
    .local v15, "lastTime":J
    move-object v4, v14

    .local v4, "rec":Landroid/os/BatteryStats$HistoryItem;
    if-eqz v14, :cond_14

    .line 7612
    :try_start_2
    iget-wide v0, v4, Landroid/os/BatteryStats$HistoryItem;->time:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    move-wide v15, v0

    .line 7613
    cmp-long v0, v8, v11

    if-gez v0, :cond_2

    .line 7614
    move-wide v8, v15

    .line 7616
    :cond_2
    :try_start_3
    iget-wide v0, v4, Landroid/os/BatteryStats$HistoryItem;->time:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    cmp-long v0, v0, p3

    if-ltz v0, :cond_13

    .line 7617
    cmp-long v0, p3, v11

    const/4 v1, 0x0

    if-ltz v0, :cond_11

    if-nez v6, :cond_11

    .line 7618
    :try_start_4
    iget-byte v0, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    const/4 v5, 0x5

    if-eq v0, v5, :cond_6

    :try_start_5
    iget-byte v0, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-wide/from16 v17, v11

    const/4 v11, 0x7

    if-eq v0, v11, :cond_7

    :try_start_6
    iget-byte v0, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v11, 0x4

    if-eq v0, v11, :cond_7

    iget-byte v0, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v11, 0x8

    if-ne v0, v11, :cond_3

    goto :goto_4

    .line 7626
    :cond_3
    iget-wide v11, v4, Landroid/os/BatteryStats$HistoryItem;->currentTime:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    cmp-long v0, v11, v17

    if-eqz v0, :cond_5

    .line 7627
    const/4 v11, 0x1

    .line 7628
    .end local v6    # "printed":Z
    .local v11, "printed":Z
    :try_start_7
    iget-byte v0, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 7629
    .local v0, "cmd":B
    iput-byte v5, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 7630
    and-int/lit8 v5, p2, 0x20

    if-eqz v5, :cond_4

    move-wide v5, v8

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    move-wide v5, v8

    move v8, v1

    .end local v8    # "baseTime":J
    .local v5, "baseTime":J
    :goto_2
    :try_start_8
    invoke-virtual/range {v2 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-wide v8, v5

    .line 7632
    .end local v5    # "baseTime":J
    .restart local v8    # "baseTime":J
    :try_start_9
    iput-byte v0, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-wide v5, v8

    goto :goto_6

    .line 7681
    .end local v0    # "cmd":B
    .end local v8    # "baseTime":J
    .restart local v5    # "baseTime":J
    :catchall_0
    move-exception v0

    move-wide v8, v5

    move-object/from16 v3, p1

    move v6, v11

    .end local v5    # "baseTime":J
    .restart local v8    # "baseTime":J
    goto/16 :goto_13

    :catchall_1
    move-exception v0

    move-object/from16 v3, p1

    move v6, v11

    goto/16 :goto_13

    .line 7626
    .end local v11    # "printed":Z
    .restart local v6    # "printed":Z
    :cond_5
    move v11, v6

    move-wide v5, v8

    goto :goto_6

    .line 7681
    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-wide/from16 v17, v11

    :goto_3
    move-object/from16 v3, p1

    goto/16 :goto_13

    .line 7618
    :cond_6
    move-wide/from16 v17, v11

    .line 7622
    :cond_7
    :goto_4
    const/4 v11, 0x1

    .line 7623
    .end local v6    # "printed":Z
    .restart local v11    # "printed":Z
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_8

    move-wide v5, v8

    const/4 v8, 0x1

    goto :goto_5

    :cond_8
    move-wide v5, v8

    move v8, v1

    .end local v8    # "baseTime":J
    .restart local v5    # "baseTime":J
    :goto_5
    move-object/from16 v3, p1

    move/from16 v7, p5

    :try_start_a
    invoke-virtual/range {v2 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    .line 7625
    iput-byte v1, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 7634
    :goto_6
    if-eqz v10, :cond_10

    .line 7635
    iget-byte v0, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    if-eqz v0, :cond_a

    .line 7636
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_9

    const/4 v8, 0x1

    goto :goto_7

    :cond_9
    move v8, v1

    :goto_7
    move-object/from16 v3, p1

    move/from16 v7, p5

    :try_start_b
    invoke-virtual/range {v2 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    .line 7638
    iput-byte v1, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_8

    .line 7681
    :catchall_4
    move-exception v0

    move-object/from16 v3, p1

    move-wide v8, v5

    move v6, v11

    goto/16 :goto_13

    .line 7640
    :cond_a
    :goto_8
    :try_start_c
    iget v0, v4, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 7641
    .local v0, "oldEventCode":I
    iget-object v3, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object v9, v3

    .line 7642
    .local v9, "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    new-instance v3, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v3}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v3, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 7643
    const/4 v3, 0x0

    move v12, v3

    .local v12, "i":I
    :goto_9
    const/16 v3, 0x17

    if-ge v12, v3, :cond_f

    .line 7644
    nop

    .line 7645
    invoke-virtual {v10, v12}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v19, v3

    .line 7646
    .local v19, "active":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-nez v19, :cond_b

    .line 7647
    move-wide v7, v5

    goto/16 :goto_d

    .line 7650
    :cond_b
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_a
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    move-object/from16 v21, v3

    .line 7651
    .local v21, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    .line 7652
    .local v3, "uids":Landroid/util/SparseIntArray;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_b
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_d

    .line 7653
    iput v12, v4, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 7654
    iget-object v8, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v1, v22

    check-cast v1, Ljava/lang/String;

    iput-object v1, v8, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 7655
    iget-object v1, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v3, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    iput v8, v1, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 7656
    iget-object v1, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v3, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    iput v8, v1, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 7657
    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_c

    const/4 v8, 0x1

    goto :goto_c

    :cond_c
    const/4 v8, 0x0

    :goto_c
    move-object v1, v3

    move/from16 v22, v7

    move-object/from16 v3, p1

    move/from16 v7, p5

    .end local v3    # "uids":Landroid/util/SparseIntArray;
    .end local v7    # "j":I
    .local v1, "uids":Landroid/util/SparseIntArray;
    .local v22, "j":I
    invoke-virtual/range {v2 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    move-wide v7, v5

    .line 7659
    .end local v5    # "baseTime":J
    .local v7, "baseTime":J
    const/4 v3, 0x0

    :try_start_d
    iput-object v3, v4, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 7660
    iput-object v3, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 7652
    add-int/lit8 v3, v22, 0x1

    move-wide v5, v7

    move v7, v3

    move-object v3, v1

    const/4 v1, 0x0

    .end local v22    # "j":I
    .local v3, "j":I
    goto :goto_b

    .end local v1    # "uids":Landroid/util/SparseIntArray;
    .local v3, "uids":Landroid/util/SparseIntArray;
    .restart local v5    # "baseTime":J
    .local v7, "j":I
    :cond_d
    move-object v1, v3

    move/from16 v22, v7

    move-wide v7, v5

    .line 7662
    .end local v3    # "uids":Landroid/util/SparseIntArray;
    .end local v5    # "baseTime":J
    .end local v21    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .local v7, "baseTime":J
    const/4 v1, 0x0

    goto :goto_a

    .line 7650
    .end local v7    # "baseTime":J
    .restart local v5    # "baseTime":J
    :cond_e
    move-wide v7, v5

    .line 7643
    .end local v5    # "baseTime":J
    .end local v19    # "active":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v7    # "baseTime":J
    :goto_d
    add-int/lit8 v12, v12, 0x1

    move-wide v5, v7

    const/4 v1, 0x0

    goto :goto_9

    .end local v7    # "baseTime":J
    .restart local v5    # "baseTime":J
    :cond_f
    move-wide v7, v5

    .line 7664
    .end local v5    # "baseTime":J
    .end local v12    # "i":I
    .restart local v7    # "baseTime":J
    iput v0, v4, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 7665
    iput-object v9, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 7666
    const/4 v10, 0x0

    goto :goto_e

    .line 7681
    .end local v0    # "oldEventCode":I
    .end local v9    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    :catchall_5
    move-exception v0

    move-object/from16 v3, p1

    move-wide v8, v7

    move v6, v11

    goto/16 :goto_13

    .line 7634
    .end local v7    # "baseTime":J
    .restart local v5    # "baseTime":J
    :cond_10
    move-wide v7, v5

    .end local v5    # "baseTime":J
    .restart local v7    # "baseTime":J
    goto :goto_e

    .line 7681
    .end local v7    # "baseTime":J
    .restart local v5    # "baseTime":J
    :catchall_6
    move-exception v0

    move-wide v7, v5

    move-object/from16 v3, p1

    goto :goto_10

    .end local v5    # "baseTime":J
    .end local v11    # "printed":Z
    .restart local v6    # "printed":Z
    .restart local v8    # "baseTime":J
    :catchall_7
    move-exception v0

    move-wide v7, v8

    move-wide/from16 v17, v11

    move-object/from16 v3, p1

    goto :goto_12

    .line 7617
    :cond_11
    move-wide v7, v8

    move-wide/from16 v17, v11

    .line 7669
    .end local v8    # "baseTime":J
    .restart local v7    # "baseTime":J
    move v11, v6

    .end local v6    # "printed":Z
    .restart local v11    # "printed":Z
    :goto_e
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_12

    const/4 v1, 0x1

    goto :goto_f

    :cond_12
    const/4 v1, 0x0

    :goto_f
    move-object/from16 v3, p1

    move-wide v5, v7

    move/from16 v7, p5

    move v8, v1

    .end local v7    # "baseTime":J
    .restart local v5    # "baseTime":J
    :try_start_e
    invoke-virtual/range {v2 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    move-wide v7, v5

    .end local v5    # "baseTime":J
    .restart local v7    # "baseTime":J
    move v6, v11

    goto :goto_11

    .line 7681
    .end local v7    # "baseTime":J
    .restart local v5    # "baseTime":J
    :catchall_8
    move-exception v0

    move-wide v7, v5

    :goto_10
    move-wide v8, v7

    move v6, v11

    .end local v5    # "baseTime":J
    .restart local v7    # "baseTime":J
    goto :goto_13

    .line 7616
    .end local v7    # "baseTime":J
    .end local v11    # "printed":Z
    .restart local v6    # "printed":Z
    .restart local v8    # "baseTime":J
    :cond_13
    move-wide v7, v8

    move-wide/from16 v17, v11

    .line 7685
    .end local v8    # "baseTime":J
    .restart local v7    # "baseTime":J
    :goto_11
    move-object/from16 v1, p0

    move-wide v8, v7

    move-wide v4, v15

    move-wide/from16 v11, v17

    const/4 v0, 0x1

    move/from16 v7, p5

    goto/16 :goto_1

    .line 7681
    .end local v7    # "baseTime":J
    .restart local v8    # "baseTime":J
    :catchall_9
    move-exception v0

    move-wide v7, v8

    move-wide/from16 v17, v11

    :goto_12
    move-wide v8, v7

    .end local v8    # "baseTime":J
    .restart local v7    # "baseTime":J
    goto :goto_13

    .end local v7    # "baseTime":J
    .restart local v8    # "baseTime":J
    :catchall_a
    move-exception v0

    move-wide/from16 v17, v11

    .line 7682
    .local v0, "t":Ljava/lang/Throwable;
    :goto_13
    :try_start_f
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 7683
    const-string v1, "BatteryStats"

    const-string v5, "Corrupted battery history"

    invoke-static {v1, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    .line 7684
    move-wide v4, v15

    goto :goto_14

    .line 7607
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v4    # "rec":Landroid/os/BatteryStats$HistoryItem;
    :catchall_b
    move-exception v0

    move-object v1, v0

    move-wide v4, v15

    goto :goto_16

    .line 7610
    .restart local v4    # "rec":Landroid/os/BatteryStats$HistoryItem;
    :cond_14
    move-wide/from16 v17, v11

    move-wide v4, v15

    .line 7687
    .end local v15    # "lastTime":J
    .local v4, "lastTime":J
    :goto_14
    if-eqz v13, :cond_15

    invoke-virtual {v13}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V

    .line 7688
    .end local v13    # "iterator":Lcom/android/internal/os/BatteryStatsHistoryIterator;
    :cond_15
    cmp-long v0, p3, v17

    if-ltz v0, :cond_17

    .line 7689
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->commitCurrentHistoryBatchLocked()V

    .line 7690
    if-eqz p5, :cond_16

    const-string v0, "NEXT: "

    goto :goto_15

    :cond_16
    const-string v0, "  NEXT: "

    :goto_15
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v0, 0x1

    add-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 7692
    :cond_17
    return-void

    .line 7607
    .restart local v13    # "iterator":Lcom/android/internal/os/BatteryStatsHistoryIterator;
    :catchall_c
    move-exception v0

    move-wide v15, v4

    move-object v1, v0

    :goto_16
    if-eqz v13, :cond_18

    :try_start_10
    invoke-virtual {v13}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_d

    goto :goto_17

    :catchall_d
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_18
    :goto_17
    throw v1

    .line 7601
    .end local v4    # "lastTime":J
    .end local v6    # "printed":Z
    .end local v8    # "baseTime":J
    .end local v10    # "tracker":Landroid/os/BatteryStats$HistoryEventTracker;
    .end local v13    # "iterator":Lcom/android/internal/os/BatteryStatsHistoryIterator;
    :catchall_e
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_e

    throw v0
.end method

.method private blacklist dumpHistoryTagPoolLocked(Ljava/io/PrintWriter;Z)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "checkin"    # Z

    .line 7695
    if-eqz p2, :cond_1

    .line 7696
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 7697
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 7698
    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 7699
    const-string/jumbo v2, "hsp"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7700
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 7701
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7702
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7703
    invoke-virtual {p0, v0}, Landroid/os/BatteryStats;->getHistoryTagPoolUid(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 7704
    const-string v1, ",\""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7705
    invoke-virtual {p0, v0}, Landroid/os/BatteryStats;->getHistoryTagPoolString(I)Ljava/lang/String;

    move-result-object v1

    .line 7706
    .local v1, "str":Ljava/lang/String;
    const-string v2, "\""

    if-eqz v1, :cond_0

    .line 7707
    const-string v3, "\\"

    const-string v4, "\\\\"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 7708
    const-string v3, "\\\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 7709
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7711
    :cond_0
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7712
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7696
    .end local v1    # "str":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7715
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private static final varargs greylist dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "uid"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 4001
    invoke-static {p0, p1, p2, p3}, Landroid/os/BatteryStats;->dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 4002
    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p4, v1

    .line 4003
    .local v2, "arg":Ljava/lang/Object;
    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 4004
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4002
    .end local v2    # "arg":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4006
    :cond_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 4007
    return-void
.end method

.method private static final greylist-max-o dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "uid"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .line 3981
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3982
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 3983
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 3984
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 3985
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3986
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 3987
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3988
    return-void
.end method

.method private blacklist dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "flags"    # I
    .param p4, "reqUid"    # I
    .param p5, "filtering"    # Z
    .param p6, "dumpHelper"    # Landroid/os/BatteryStats$BatteryStatsDumpHelper;

    .line 7795
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-nez p5, :cond_5

    .line 7796
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v2

    .line 7797
    .local v2, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 7798
    .local v3, "NU":I
    const/4 v4, 0x0

    .line 7799
    .local v4, "didPid":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 7800
    .local v5, "nowRealtime":J
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v3, :cond_4

    .line 7801
    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/BatteryStats$Uid;

    .line 7802
    .local v10, "uid":Landroid/os/BatteryStats$Uid;
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getPidStats()Landroid/util/SparseArray;

    move-result-object v11

    .line 7803
    .local v11, "pids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Pid;>;"
    if-eqz v11, :cond_3

    .line 7804
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_1
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v12, v13, :cond_2

    .line 7805
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/BatteryStats$Uid$Pid;

    .line 7806
    .local v13, "pid":Landroid/os/BatteryStats$Uid$Pid;
    if-nez v4, :cond_0

    .line 7807
    const-string v14, "Per-PID Stats:"

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7808
    const/4 v4, 0x1

    .line 7810
    :cond_0
    iget-wide v14, v13, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    const-wide/16 v16, 0x0

    iget v7, v13, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-lez v7, :cond_1

    .line 7811
    iget-wide v7, v13, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    sub-long v7, v5, v7

    goto :goto_2

    :cond_1
    move-wide/from16 v7, v16

    :goto_2
    add-long/2addr v14, v7

    .line 7812
    .local v14, "time":J
    const-string v7, "  PID "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 7813
    const-string v7, " wake time: "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7814
    invoke-static {v14, v15, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 7815
    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7804
    .end local v13    # "pid":Landroid/os/BatteryStats$Uid$Pid;
    .end local v14    # "time":J
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    const-wide/16 v16, 0x0

    goto :goto_3

    .line 7803
    .end local v12    # "j":I
    :cond_3
    const-wide/16 v16, 0x0

    .line 7800
    .end local v10    # "uid":Landroid/os/BatteryStats$Uid;
    .end local v11    # "pids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Pid;>;"
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_4
    const-wide/16 v16, 0x0

    .line 7819
    .end local v9    # "i":I
    if-eqz v4, :cond_6

    .line 7820
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    goto :goto_4

    .line 7795
    .end local v2    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v3    # "NU":I
    .end local v4    # "didPid":Z
    .end local v5    # "nowRealtime":J
    :cond_5
    const-wide/16 v16, 0x0

    .line 7824
    :cond_6
    :goto_4
    const/4 v7, 0x0

    if-eqz p5, :cond_7

    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_c

    .line 7825
    :cond_7
    nop

    .line 7826
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v2

    .line 7825
    const-string v8, "  "

    const-string v3, "Discharge step durations:"

    invoke-static {v1, v8, v3, v2, v7}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v2

    const-wide/16 v9, 0x3e8

    if-eqz v2, :cond_a

    .line 7827
    nop

    .line 7828
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    mul-long/2addr v2, v9

    .line 7827
    invoke-virtual {v0, v2, v3}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v11

    .line 7829
    .local v11, "timeRemaining":J
    cmp-long v2, v11, v16

    if-ltz v2, :cond_8

    .line 7830
    const-string v2, "  Estimated discharge time remaining: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7831
    div-long v2, v11, v9

    invoke-static {v2, v3, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 7832
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 7834
    :cond_8
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v18

    .line 7835
    .local v18, "steps":Landroid/os/BatteryStats$LevelStepTracker;
    const/4 v2, 0x0

    move v13, v2

    .local v13, "i":I
    :goto_5
    sget-object v2, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    array-length v2, v2

    if-ge v13, v2, :cond_9

    .line 7836
    sget-object v2, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    aget-object v3, v2, v13

    sget-object v2, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    aget v2, v2, v13

    int-to-long v4, v2

    sget-object v2, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    aget v2, v2, v13

    int-to-long v14, v2

    .line 7837
    const/16 v23, 0x0

    move-wide/from16 v19, v4

    move-wide/from16 v21, v14

    invoke-virtual/range {v18 .. v23}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v5

    .line 7836
    const-string v2, "  Estimated "

    const-string v4, " time: "

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpTimeEstimate(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    .line 7835
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 7840
    .end local v13    # "i":I
    :cond_9
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 7842
    .end local v11    # "timeRemaining":J
    .end local v18    # "steps":Landroid/os/BatteryStats$LevelStepTracker;
    :cond_a
    nop

    .line 7843
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v2

    .line 7842
    const-string v3, "Charge step durations:"

    invoke-static {v1, v8, v3, v2, v7}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 7844
    nop

    .line 7845
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    mul-long/2addr v2, v9

    .line 7844
    invoke-virtual {v0, v2, v3}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v2

    .line 7846
    .local v2, "timeRemaining":J
    cmp-long v4, v2, v16

    if-ltz v4, :cond_b

    .line 7847
    const-string v4, "  Estimated charge time remaining: "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7848
    div-long v4, v2, v9

    invoke-static {v4, v5, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 7849
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 7851
    :cond_b
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 7854
    .end local v2    # "timeRemaining":J
    :cond_c
    const/4 v8, 0x1

    if-eqz p5, :cond_d

    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_1a

    .line 7855
    :cond_d
    const-string v2, "Daily stats:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7856
    const-string v2, "  Current start time: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7857
    nop

    .line 7858
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getCurrentDailyStartTime()J

    move-result-wide v2

    .line 7857
    const-string/jumbo v9, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {v9, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    .line 7858
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7857
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7859
    const-string v2, "  Next min deadline: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7860
    nop

    .line 7861
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getNextMinDailyDeadline()J

    move-result-wide v2

    .line 7860
    invoke-static {v9, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    .line 7861
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7860
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7862
    const-string v2, "  Next max deadline: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7863
    nop

    .line 7864
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getNextMaxDailyDeadline()J

    move-result-wide v2

    .line 7863
    invoke-static {v9, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    .line 7864
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7863
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7865
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7866
    .local v5, "sb":Ljava/lang/StringBuilder;
    new-array v6, v8, [I

    .line 7867
    .local v6, "outInt":[I
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v4

    .line 7868
    .local v4, "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v10

    .line 7869
    .local v10, "csteps":Landroid/os/BatteryStats$LevelStepTracker;
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDailyPackageChanges()Ljava/util/ArrayList;

    move-result-object v11

    .line 7870
    .local v11, "pkgc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$PackageChange;>;"
    iget v2, v4, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    const-string v12, "    "

    if-gtz v2, :cond_f

    iget v2, v10, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-gtz v2, :cond_f

    if-eqz v11, :cond_e

    goto :goto_6

    :cond_e
    move-object v13, v4

    goto :goto_9

    .line 7871
    :cond_f
    :goto_6
    and-int/lit8 v2, p3, 0x4

    if-nez v2, :cond_11

    if-nez p5, :cond_10

    move-object v13, v4

    goto :goto_7

    .line 7884
    :cond_10
    const-string v2, "  Current daily steps:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7885
    const-string v2, "    "

    const-string v3, "Discharge"

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    .line 7887
    move-object v13, v4

    .end local v4    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    .local v13, "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    const-string v2, "    "

    const-string v3, "Charge"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v4, v10

    .end local v10    # "csteps":Landroid/os/BatteryStats$LevelStepTracker;
    .local v4, "csteps":Landroid/os/BatteryStats$LevelStepTracker;
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    .end local v4    # "csteps":Landroid/os/BatteryStats$LevelStepTracker;
    .restart local v10    # "csteps":Landroid/os/BatteryStats$LevelStepTracker;
    goto :goto_9

    .line 7871
    .end local v13    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    .local v4, "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    :cond_11
    move-object v13, v4

    .line 7872
    .end local v4    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    .restart local v13    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    :goto_7
    const-string v0, "  Current daily discharge step durations:"

    invoke-static {v1, v12, v0, v13, v7}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 7874
    const-string v2, "      "

    const-string v3, "Discharge"

    move-object/from16 v0, p0

    move-object v4, v13

    .end local v13    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    .restart local v4    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    .line 7877
    .end local v4    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    .restart local v13    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    :cond_12
    const-string v0, "  Current daily charge step durations:"

    invoke-static {v1, v12, v0, v10, v7}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 7879
    const-string v2, "      "

    const-string v3, "Charge"

    move-object/from16 v0, p0

    move-object v4, v10

    .end local v10    # "csteps":Landroid/os/BatteryStats$LevelStepTracker;
    .local v4, "csteps":Landroid/os/BatteryStats$LevelStepTracker;
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    .end local v4    # "csteps":Landroid/os/BatteryStats$LevelStepTracker;
    .restart local v10    # "csteps":Landroid/os/BatteryStats$LevelStepTracker;
    goto :goto_8

    .line 7877
    :cond_13
    move-object/from16 v0, p0

    .line 7882
    :goto_8
    invoke-direct {v0, v1, v12, v11}, Landroid/os/BatteryStats;->dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 7892
    :goto_9
    const/4 v2, 0x0

    .line 7893
    .local v2, "curIndex":I
    :goto_a
    invoke-virtual {v0, v2}, Landroid/os/BatteryStats;->getDailyItemLocked(I)Landroid/os/BatteryStats$DailyItem;

    move-result-object v3

    move-object v14, v3

    .local v14, "dit":Landroid/os/BatteryStats$DailyItem;
    if-eqz v3, :cond_19

    .line 7894
    add-int/lit8 v15, v2, 0x1

    .line 7895
    .end local v2    # "curIndex":I
    .local v15, "curIndex":I
    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_14

    .line 7896
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 7898
    :cond_14
    const-string v2, "  Daily from "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7899
    iget-wide v2, v14, Landroid/os/BatteryStats$DailyItem;->mStartTime:J

    invoke-static {v9, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7900
    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7901
    iget-wide v2, v14, Landroid/os/BatteryStats$DailyItem;->mEndTime:J

    invoke-static {v9, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7902
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7903
    and-int/lit8 v2, p3, 0x4

    if-nez v2, :cond_16

    if-nez p5, :cond_15

    goto :goto_b

    .line 7916
    :cond_15
    const-string v3, "Discharge"

    iget-object v4, v14, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v2, "    "

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    .line 7918
    const-string v3, "Charge"

    iget-object v4, v14, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v2, "    "

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto :goto_e

    .line 7904
    :cond_16
    :goto_b
    const-string v0, "    Discharge step durations:"

    iget-object v2, v14, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v3, "      "

    invoke-static {v1, v3, v0, v2, v7}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 7906
    move-object v0, v3

    const-string v3, "Discharge"

    iget-object v4, v14, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v2, "        "

    move-object v8, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto :goto_c

    .line 7904
    :cond_17
    move-object v8, v3

    .line 7909
    :goto_c
    const-string v0, "    Charge step durations:"

    iget-object v2, v14, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-static {v1, v8, v0, v2, v7}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 7911
    const-string v3, "Charge"

    iget-object v4, v14, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v2, "        "

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto :goto_d

    .line 7909
    :cond_18
    move-object/from16 v0, p0

    .line 7914
    :goto_d
    iget-object v2, v14, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v12, v2}, Landroid/os/BatteryStats;->dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 7893
    .end local v14    # "dit":Landroid/os/BatteryStats$DailyItem;
    :goto_e
    move v2, v15

    const/4 v8, 0x1

    goto/16 :goto_a

    .line 7922
    .end local v15    # "curIndex":I
    .restart local v2    # "curIndex":I
    .restart local v14    # "dit":Landroid/os/BatteryStats$DailyItem;
    :cond_19
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 7924
    .end local v2    # "curIndex":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "outInt":[I
    .end local v10    # "csteps":Landroid/os/BatteryStats$LevelStepTracker;
    .end local v11    # "pkgc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$PackageChange;>;"
    .end local v13    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    .end local v14    # "dit":Landroid/os/BatteryStats$DailyItem;
    :cond_1a
    if-eqz p5, :cond_1b

    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_1d

    .line 7925
    :cond_1b
    const-string v2, "Statistics since last charge:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7926
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  System starts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", currently on battery: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 7927
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getIsOnBattery()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7926
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7928
    and-int/lit8 v2, p3, 0x40

    if-eqz v2, :cond_1c

    const/4 v6, 0x1

    goto :goto_f

    :cond_1c
    move v6, v7

    :goto_f
    const-string v3, ""

    const/4 v4, 0x0

    move/from16 v5, p4

    move-object/from16 v7, p6

    move-object v2, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V

    .line 7930
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 7932
    :cond_1d
    return-void
.end method

.method private blacklist dumpProtoAppsLocked(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryUsageStats;Ljava/util/List;Landroid/os/BatteryStats$ProportionalAttributionCalculator;)V
    .locals 62
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "stats"    # Landroid/os/BatteryUsageStats;
    .param p4, "proportionalAttributionCalculator"    # Landroid/os/BatteryStats$ProportionalAttributionCalculator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "Landroid/os/BatteryUsageStats;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;",
            "Landroid/os/BatteryStats$ProportionalAttributionCalculator;",
            ")V"
        }
    .end annotation

    .line 8050
    .local p3, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    move-object/from16 v0, p1

    move-object/from16 v7, p3

    const/4 v9, 0x0

    .line 8051
    .local v9, "which":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v10, v1, v3

    .line 8052
    .local v10, "rawUptimeUs":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 8053
    .local v12, "rawRealtimeMs":J
    mul-long v4, v12, v3

    .line 8054
    .local v4, "rawRealtimeUs":J
    move-object/from16 v14, p0

    invoke-virtual {v14, v10, v11}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v1

    .line 8056
    .local v1, "batteryUptimeUs":J
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    move-object v15, v3

    .line 8057
    .local v15, "aidToPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-eqz v7, :cond_2

    .line 8058
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 8059
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 8060
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    move/from16 v16, v3

    .end local v3    # "i":I
    .local v16, "i":I
    iget v3, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 8061
    .local v3, "aid":I
    invoke-virtual {v15, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 8062
    .local v17, "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v17, :cond_0

    .line 8063
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v18

    .line 8064
    move-wide/from16 v18, v4

    move-object/from16 v4, v17

    .end local v17    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v4, "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v18, "rawRealtimeUs":J
    invoke-virtual {v15, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 8062
    .end local v18    # "rawRealtimeUs":J
    .local v4, "rawRealtimeUs":J
    .restart local v17    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    move-wide/from16 v18, v4

    .end local v4    # "rawRealtimeUs":J
    .restart local v18    # "rawRealtimeUs":J
    move-object/from16 v4, v17

    .line 8066
    .end local v17    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v4, "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    iget-object v5, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8058
    .end local v3    # "aid":I
    .end local v4    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    add-int/lit8 v3, v16, 0x1

    move-wide/from16 v4, v18

    .end local v16    # "i":I
    .local v3, "i":I
    goto :goto_0

    .end local v18    # "rawRealtimeUs":J
    .local v4, "rawRealtimeUs":J
    :cond_1
    move/from16 v16, v3

    move-wide/from16 v18, v4

    .end local v3    # "i":I
    .end local v4    # "rawRealtimeUs":J
    .restart local v16    # "i":I
    .restart local v18    # "rawRealtimeUs":J
    goto :goto_2

    .line 8057
    .end local v16    # "i":I
    .end local v18    # "rawRealtimeUs":J
    .restart local v4    # "rawRealtimeUs":J
    :cond_2
    move-wide/from16 v18, v4

    .line 8070
    .end local v4    # "rawRealtimeUs":J
    .restart local v18    # "rawRealtimeUs":J
    :goto_2
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 8071
    .local v3, "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v4

    .line 8072
    .local v4, "consumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .local v5, "i":I
    :goto_3
    if-ltz v5, :cond_3

    .line 8073
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v6

    move-object/from16 v6, v16

    check-cast v6, Landroid/os/UidBatteryConsumer;

    .line 8074
    .local v6, "bs":Landroid/os/UidBatteryConsumer;
    move-object/from16 v16, v4

    .end local v4    # "consumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    .local v16, "consumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    invoke-virtual {v6}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v4

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8072
    .end local v6    # "bs":Landroid/os/UidBatteryConsumer;
    add-int/lit8 v5, v5, -0x1

    move-object/from16 v4, v16

    move/from16 v6, v17

    goto :goto_3

    .end local v16    # "consumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    .restart local v4    # "consumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    :cond_3
    move-object/from16 v16, v4

    move/from16 v17, v6

    .line 8077
    .end local v4    # "consumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    .end local v5    # "i":I
    .restart local v16    # "consumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    invoke-virtual {v14}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v4

    .line 8078
    .local v4, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 8079
    .local v5, "n":I
    const/4 v6, 0x0

    .local v6, "iu":I
    :goto_4
    if-ge v6, v5, :cond_2a

    .line 8080
    move/from16 v20, v9

    move-wide/from16 v21, v10

    .end local v9    # "which":I
    .end local v10    # "rawUptimeUs":J
    .local v20, "which":I
    .local v21, "rawUptimeUs":J
    const-wide v9, 0x20b00000005L

    invoke-virtual {v0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 8081
    .local v9, "uTkn":J
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Uid;

    .line 8083
    .local v11, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 8084
    .local v7, "uid":I
    move-wide/from16 v23, v9

    .end local v9    # "uTkn":J
    .local v23, "uTkn":J
    const-wide v9, 0x10500000001L

    invoke-virtual {v0, v9, v10, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8087
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    invoke-virtual {v15, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 8088
    .local v9, "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v9, :cond_4

    .line 8089
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v10

    .line 8091
    :cond_4
    nop

    .line 8092
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v10

    .line 8093
    .local v10, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    move-object/from16 v28, v3

    move/from16 v3, v27

    .local v3, "ipkg":I
    .local v28, "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    :goto_5
    move/from16 v27, v6

    move/from16 v29, v7

    .end local v6    # "iu":I
    .end local v7    # "uid":I
    .local v27, "iu":I
    .local v29, "uid":I
    const-wide/16 v30, 0x0

    if-ltz v3, :cond_8

    .line 8094
    invoke-virtual {v10, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v8, v36

    check-cast v8, Ljava/lang/String;

    .line 8095
    .local v8, "pkg":Ljava/lang/String;
    nop

    .line 8096
    invoke-virtual {v10, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/BatteryStats$Uid$Pkg;

    invoke-virtual/range {v36 .. v36}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v6

    .line 8097
    .local v6, "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-nez v7, :cond_5

    .line 8102
    move-wide/from16 v43, v1

    move/from16 v36, v3

    move-object/from16 v41, v4

    move/from16 v40, v5

    move-object/from16 v46, v9

    move-object/from16 v47, v10

    move-object/from16 v39, v15

    goto/16 :goto_8

    .line 8105
    :cond_5
    move/from16 v36, v3

    move-object v7, v4

    move-object/from16 v39, v15

    const-wide v3, 0x20b00000002L

    .end local v3    # "ipkg":I
    .end local v4    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v15    # "aidToPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v7, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v36, "ipkg":I
    .local v39, "aidToPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 8106
    .local v14, "pToken":J
    const-wide v3, 0x10900000001L

    invoke-virtual {v0, v3, v4, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8108
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8110
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "isvc":I
    :goto_6
    if-ltz v3, :cond_7

    .line 8111
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    .line 8113
    .local v4, "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    move/from16 v40, v5

    const/4 v5, 0x0

    .end local v5    # "n":I
    .local v40, "n":I
    invoke-virtual {v4, v1, v2, v5}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v41

    move-wide/from16 v43, v1

    .end local v1    # "batteryUptimeUs":J
    .local v43, "batteryUptimeUs":J
    invoke-static/range {v41 .. v42}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v1

    .line 8114
    .local v1, "startTimeMs":J
    move-object/from16 v41, v7

    .end local v7    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v41, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v7

    .line 8115
    .local v7, "starts":I
    move-object/from16 v42, v8

    .end local v8    # "pkg":Ljava/lang/String;
    .local v42, "pkg":Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v8

    .line 8116
    .local v8, "launches":I
    cmp-long v5, v1, v30

    if-nez v5, :cond_6

    if-nez v7, :cond_6

    if-nez v8, :cond_6

    .line 8117
    move-object/from16 v48, v6

    move-object/from16 v46, v9

    move-object/from16 v47, v10

    goto :goto_7

    .line 8120
    :cond_6
    move-object/from16 v45, v4

    move-object/from16 v46, v9

    move-object/from16 v47, v10

    const-wide v4, 0x20b00000002L

    .end local v4    # "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    .end local v9    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .local v45, "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    .local v46, "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v47, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 8122
    .local v9, "sToken":J
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v48, v6

    const-wide v5, 0x10900000001L

    .end local v6    # "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    .local v48, "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    invoke-virtual {v0, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8123
    const-wide v4, 0x10300000002L

    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8124
    const-wide v4, 0x10500000003L

    invoke-virtual {v0, v4, v5, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8125
    const-wide v4, 0x10500000004L

    invoke-virtual {v0, v4, v5, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8127
    invoke-virtual {v0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8110
    .end local v1    # "startTimeMs":J
    .end local v7    # "starts":I
    .end local v8    # "launches":I
    .end local v9    # "sToken":J
    .end local v45    # "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    :goto_7
    add-int/lit8 v3, v3, -0x1

    move/from16 v5, v40

    move-object/from16 v7, v41

    move-object/from16 v8, v42

    move-wide/from16 v1, v43

    move-object/from16 v9, v46

    move-object/from16 v10, v47

    move-object/from16 v6, v48

    goto :goto_6

    .end local v40    # "n":I
    .end local v41    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v42    # "pkg":Ljava/lang/String;
    .end local v43    # "batteryUptimeUs":J
    .end local v46    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v47    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v48    # "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    .local v1, "batteryUptimeUs":J
    .restart local v5    # "n":I
    .restart local v6    # "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    .local v7, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v8, "pkg":Ljava/lang/String;
    .local v9, "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    :cond_7
    move-wide/from16 v43, v1

    move/from16 v40, v5

    move-object/from16 v48, v6

    move-object/from16 v41, v7

    move-object/from16 v42, v8

    move-object/from16 v46, v9

    move-object/from16 v47, v10

    .line 8129
    .end local v1    # "batteryUptimeUs":J
    .end local v3    # "isvc":I
    .end local v5    # "n":I
    .end local v6    # "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    .end local v7    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v8    # "pkg":Ljava/lang/String;
    .end local v9    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v40    # "n":I
    .restart local v41    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v42    # "pkg":Ljava/lang/String;
    .restart local v43    # "batteryUptimeUs":J
    .restart local v46    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v47    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v48    # "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8093
    .end local v14    # "pToken":J
    .end local v42    # "pkg":Ljava/lang/String;
    .end local v48    # "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    :goto_8
    add-int/lit8 v3, v36, -0x1

    move-object/from16 v14, p0

    move/from16 v6, v27

    move/from16 v7, v29

    move-object/from16 v15, v39

    move/from16 v5, v40

    move-object/from16 v4, v41

    move-wide/from16 v1, v43

    move-object/from16 v9, v46

    move-object/from16 v10, v47

    .end local v36    # "ipkg":I
    .local v3, "ipkg":I
    goto/16 :goto_5

    .end local v39    # "aidToPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v40    # "n":I
    .end local v41    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v43    # "batteryUptimeUs":J
    .end local v46    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v47    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v1    # "batteryUptimeUs":J
    .local v4, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v5    # "n":I
    .restart local v9    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v15    # "aidToPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_8
    move-wide/from16 v43, v1

    move/from16 v36, v3

    move-object/from16 v41, v4

    move/from16 v40, v5

    move-object/from16 v46, v9

    move-object/from16 v47, v10

    move-object/from16 v39, v15

    .line 8134
    .end local v1    # "batteryUptimeUs":J
    .end local v3    # "ipkg":I
    .end local v4    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v5    # "n":I
    .end local v9    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v15    # "aidToPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v39    # "aidToPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v40    # "n":I
    .restart local v41    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v43    # "batteryUptimeUs":J
    .restart local v46    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v47    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8135
    .local v2, "p":Ljava/lang/String;
    const-wide v3, 0x20b00000002L

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 8136
    .local v5, "pToken":J
    const-wide v3, 0x10900000001L

    invoke-virtual {v0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8137
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8138
    .end local v2    # "p":Ljava/lang/String;
    .end local v5    # "pToken":J
    goto :goto_9

    .line 8141
    :cond_9
    const-wide v3, 0x10900000001L

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    const-wide v7, 0x10300000001L

    if-eqz v1, :cond_b

    .line 8142
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    .line 8144
    .local v1, "timer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v1, v12, v13}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v5

    .line 8145
    .local v5, "totTimeMs":J
    invoke-virtual {v1}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    .line 8146
    .local v2, "bgTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v2, :cond_a

    .line 8147
    invoke-virtual {v2, v12, v13}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v9

    goto :goto_a

    :cond_a
    move-wide/from16 v9, v30

    .line 8148
    .local v9, "bgTimeMs":J
    :goto_a
    const-wide v14, 0x10b00000018L

    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 8149
    .local v14, "awToken":J
    invoke-virtual {v0, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8150
    const-wide v3, 0x10300000002L

    invoke-virtual {v0, v3, v4, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8151
    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_b

    .line 8141
    .end local v1    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v2    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v5    # "totTimeMs":J
    .end local v9    # "bgTimeMs":J
    .end local v14    # "awToken":J
    :cond_b
    const-wide v3, 0x10300000002L

    .line 8155
    :goto_b
    move-wide/from16 v34, v3

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    const-wide v1, 0x10b00000008L

    move/from16 v10, v17

    move-wide/from16 v4, v18

    move-object/from16 v9, v28

    move-wide/from16 v14, v34

    .end local v18    # "rawRealtimeUs":J
    .end local v28    # "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    .local v4, "rawRealtimeUs":J
    .local v9, "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8158
    nop

    .line 8159
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v1

    .line 8158
    const-wide v2, 0x10b00000003L

    const/4 v6, 0x0

    invoke-static {v0, v2, v3, v1, v6}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 8162
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 8163
    .local v3, "bleTimer":Landroid/os/BatteryStats$Timer;
    const-wide v14, 0x10500000005L

    if-eqz v3, :cond_e

    .line 8164
    const-wide v1, 0x10b00000006L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 8166
    .local v1, "bmToken":J
    move-wide/from16 v37, v1

    .end local v1    # "bmToken":J
    .local v37, "bmToken":J
    const-wide v1, 0x10b00000001L

    const/4 v6, 0x0

    move/from16 v18, v10

    move-object/from16 v17, v11

    move-wide/from16 v7, v37

    const-wide v10, 0x10500000006L

    .end local v11    # "u":Landroid/os/BatteryStats$Uid;
    .end local v37    # "bmToken":J
    .local v7, "bmToken":J
    .local v17, "u":Landroid/os/BatteryStats$Uid;
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8168
    move-object/from16 v19, v3

    .line 8169
    .end local v3    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .local v19, "bleTimer":Landroid/os/BatteryStats$Timer;
    invoke-virtual/range {v17 .. v17}, Landroid/os/BatteryStats$Uid;->getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 8168
    const-wide v1, 0x10b00000002L

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8171
    nop

    .line 8172
    invoke-virtual/range {v17 .. v17}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 8171
    const-wide v1, 0x10b00000003L

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8174
    nop

    .line 8175
    invoke-virtual/range {v17 .. v17}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 8174
    const-wide v1, 0x10b00000004L

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8177
    nop

    .line 8178
    invoke-virtual/range {v17 .. v17}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 8179
    invoke-virtual/range {v17 .. v17}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v1

    goto :goto_c

    :cond_c
    const/4 v1, 0x0

    .line 8177
    :goto_c
    invoke-virtual {v0, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8180
    nop

    .line 8181
    invoke-virtual/range {v17 .. v17}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 8182
    invoke-virtual/range {v17 .. v17}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v1

    goto :goto_d

    :cond_d
    const/4 v1, 0x0

    .line 8180
    :goto_d
    invoke-virtual {v0, v10, v11, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8184
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_e

    .line 8163
    .end local v7    # "bmToken":J
    .end local v17    # "u":Landroid/os/BatteryStats$Uid;
    .end local v19    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .restart local v3    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .restart local v11    # "u":Landroid/os/BatteryStats$Uid;
    :cond_e
    move-object/from16 v19, v3

    move/from16 v18, v10

    move-object/from16 v17, v11

    const-wide v10, 0x10500000006L

    .line 8188
    .end local v3    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .end local v11    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v17    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v19    # "bleTimer":Landroid/os/BatteryStats$Timer;
    :goto_e
    invoke-virtual/range {v17 .. v17}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    const-wide v1, 0x10b00000009L

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8191
    const-wide v1, 0x10b00000007L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 8192
    .local v7, "cpuToken":J
    move-object/from16 v1, v17

    const/4 v6, 0x0

    .end local v17    # "u":Landroid/os/BatteryStats$Uid;
    .local v1, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v2

    const-wide v10, 0x10300000001L

    invoke-virtual {v0, v10, v11, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8193
    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v2

    const-wide v10, 0x10300000002L

    invoke-virtual {v0, v10, v11, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8195
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v10

    .line 8196
    .local v10, "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    if-eqz v10, :cond_13

    .line 8197
    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v11

    .line 8200
    .local v11, "cpuFreqTimeMs":[J
    if-eqz v11, :cond_12

    array-length v14, v11

    .line 8201
    invoke-virtual {v10}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v15

    if-ne v14, v15, :cond_11

    .line 8202
    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(I)[J

    move-result-object v14

    .line 8203
    .local v14, "screenOffCpuFreqTimeMs":[J
    if-nez v14, :cond_f

    .line 8204
    array-length v6, v11

    new-array v14, v6, [J

    .line 8206
    :cond_f
    const/4 v6, 0x0

    .local v6, "ic":I
    :goto_f
    array-length v15, v11

    if-ge v6, v15, :cond_10

    .line 8207
    const-wide v2, 0x20b00000003L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 8208
    .local v2, "cToken":J
    add-int/lit8 v15, v6, 0x1

    move-wide/from16 v55, v4

    const-wide v4, 0x10500000001L

    .end local v4    # "rawRealtimeUs":J
    .local v55, "rawRealtimeUs":J
    invoke-virtual {v0, v4, v5, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8209
    aget-wide v4, v11, v6

    move-object v15, v10

    move-object/from16 v17, v11

    const-wide v10, 0x10300000002L

    .end local v10    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .end local v11    # "cpuFreqTimeMs":[J
    .local v15, "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .local v17, "cpuFreqTimeMs":[J
    invoke-virtual {v0, v10, v11, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8211
    aget-wide v4, v14, v6

    const-wide v10, 0x10300000003L

    invoke-virtual {v0, v10, v11, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8213
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8206
    .end local v2    # "cToken":J
    add-int/lit8 v6, v6, 0x1

    move-object v10, v15

    move-object/from16 v11, v17

    move-wide/from16 v4, v55

    goto :goto_f

    .end local v15    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .end local v17    # "cpuFreqTimeMs":[J
    .end local v55    # "rawRealtimeUs":J
    .restart local v4    # "rawRealtimeUs":J
    .restart local v10    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .restart local v11    # "cpuFreqTimeMs":[J
    :cond_10
    move-wide/from16 v55, v4

    move-object v15, v10

    move-object/from16 v17, v11

    .end local v4    # "rawRealtimeUs":J
    .end local v10    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .end local v11    # "cpuFreqTimeMs":[J
    .restart local v15    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .restart local v17    # "cpuFreqTimeMs":[J
    .restart local v55    # "rawRealtimeUs":J
    goto :goto_10

    .line 8201
    .end local v6    # "ic":I
    .end local v14    # "screenOffCpuFreqTimeMs":[J
    .end local v15    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .end local v17    # "cpuFreqTimeMs":[J
    .end local v55    # "rawRealtimeUs":J
    .restart local v4    # "rawRealtimeUs":J
    .restart local v10    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .restart local v11    # "cpuFreqTimeMs":[J
    :cond_11
    move-wide/from16 v55, v4

    move-object v15, v10

    move-object/from16 v17, v11

    .end local v4    # "rawRealtimeUs":J
    .end local v10    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .end local v11    # "cpuFreqTimeMs":[J
    .restart local v15    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .restart local v17    # "cpuFreqTimeMs":[J
    .restart local v55    # "rawRealtimeUs":J
    goto :goto_10

    .line 8200
    .end local v15    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .end local v17    # "cpuFreqTimeMs":[J
    .end local v55    # "rawRealtimeUs":J
    .restart local v4    # "rawRealtimeUs":J
    .restart local v10    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .restart local v11    # "cpuFreqTimeMs":[J
    :cond_12
    move-wide/from16 v55, v4

    move-object v15, v10

    move-object/from16 v17, v11

    .end local v4    # "rawRealtimeUs":J
    .end local v10    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .end local v11    # "cpuFreqTimeMs":[J
    .restart local v15    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .restart local v17    # "cpuFreqTimeMs":[J
    .restart local v55    # "rawRealtimeUs":J
    goto :goto_10

    .line 8196
    .end local v15    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .end local v17    # "cpuFreqTimeMs":[J
    .end local v55    # "rawRealtimeUs":J
    .restart local v4    # "rawRealtimeUs":J
    .restart local v10    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    :cond_13
    move-wide/from16 v55, v4

    move-object v15, v10

    .line 8218
    .end local v4    # "rawRealtimeUs":J
    .end local v10    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .restart local v15    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .restart local v55    # "rawRealtimeUs":J
    :goto_10
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v10

    .line 8219
    .local v10, "stepCount":I
    new-array v11, v10, [J

    .line 8220
    .local v11, "timesInFreqMs":[J
    new-array v14, v10, [J

    .line 8221
    .local v14, "timesInFreqScreenOffMs":[J
    const/4 v2, 0x0

    .local v2, "procState":I
    :goto_11
    const-wide v3, 0x10e00000001L

    const/4 v5, 0x7

    if-ge v2, v5, :cond_17

    .line 8222
    invoke-virtual {v1, v11, v2}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes([JI)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 8223
    invoke-virtual {v1, v14, v2}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes([JI)Z

    move-result v5

    if-nez v5, :cond_14

    .line 8224
    const-wide/16 v5, 0x0

    invoke-static {v14, v5, v6}, Ljava/util/Arrays;->fill([JJ)V

    .line 8226
    :cond_14
    const-wide v5, 0x20b00000004L

    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 8227
    .local v5, "procToken":J
    invoke-virtual {v0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8228
    const/4 v3, 0x0

    .local v3, "ic":I
    :goto_12
    array-length v4, v11

    if-ge v3, v4, :cond_15

    .line 8229
    move-object/from16 v17, v1

    move/from16 v28, v2

    move/from16 v36, v3

    const-wide v1, 0x20b00000002L

    .end local v1    # "u":Landroid/os/BatteryStats$Uid;
    .end local v2    # "procState":I
    .end local v3    # "ic":I
    .local v17, "u":Landroid/os/BatteryStats$Uid;
    .local v28, "procState":I
    .local v36, "ic":I
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 8230
    .local v3, "cToken":J
    add-int/lit8 v1, v36, 0x1

    move/from16 v42, v10

    move-object/from16 v45, v11

    const-wide v10, 0x10500000001L

    .end local v10    # "stepCount":I
    .end local v11    # "timesInFreqMs":[J
    .local v42, "stepCount":I
    .local v45, "timesInFreqMs":[J
    invoke-virtual {v0, v10, v11, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8231
    aget-wide v1, v45, v36

    const-wide v10, 0x10300000002L

    invoke-virtual {v0, v10, v11, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8233
    aget-wide v1, v14, v36

    const-wide v10, 0x10300000003L

    invoke-virtual {v0, v10, v11, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8235
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8228
    .end local v3    # "cToken":J
    add-int/lit8 v3, v36, 0x1

    move-object/from16 v1, v17

    move/from16 v2, v28

    move/from16 v10, v42

    move-object/from16 v11, v45

    .end local v36    # "ic":I
    .local v3, "ic":I
    goto :goto_12

    .end local v17    # "u":Landroid/os/BatteryStats$Uid;
    .end local v28    # "procState":I
    .end local v42    # "stepCount":I
    .end local v45    # "timesInFreqMs":[J
    .restart local v1    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v2    # "procState":I
    .restart local v10    # "stepCount":I
    .restart local v11    # "timesInFreqMs":[J
    :cond_15
    move-object/from16 v17, v1

    move/from16 v28, v2

    move/from16 v36, v3

    move/from16 v42, v10

    move-object/from16 v45, v11

    const-wide v10, 0x10300000003L

    .line 8237
    .end local v1    # "u":Landroid/os/BatteryStats$Uid;
    .end local v2    # "procState":I
    .end local v3    # "ic":I
    .end local v10    # "stepCount":I
    .end local v11    # "timesInFreqMs":[J
    .restart local v17    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v28    # "procState":I
    .restart local v42    # "stepCount":I
    .restart local v45    # "timesInFreqMs":[J
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_13

    .line 8222
    .end local v5    # "procToken":J
    .end local v17    # "u":Landroid/os/BatteryStats$Uid;
    .end local v28    # "procState":I
    .end local v42    # "stepCount":I
    .end local v45    # "timesInFreqMs":[J
    .restart local v1    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v2    # "procState":I
    .restart local v10    # "stepCount":I
    .restart local v11    # "timesInFreqMs":[J
    :cond_16
    move-object/from16 v17, v1

    move/from16 v28, v2

    move/from16 v42, v10

    move-object/from16 v45, v11

    const-wide v10, 0x10300000003L

    .line 8221
    .end local v1    # "u":Landroid/os/BatteryStats$Uid;
    .end local v2    # "procState":I
    .end local v10    # "stepCount":I
    .end local v11    # "timesInFreqMs":[J
    .restart local v17    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v28    # "procState":I
    .restart local v42    # "stepCount":I
    .restart local v45    # "timesInFreqMs":[J
    :goto_13
    add-int/lit8 v2, v28, 0x1

    move-object/from16 v1, v17

    move/from16 v10, v42

    move-object/from16 v11, v45

    .end local v28    # "procState":I
    .restart local v2    # "procState":I
    goto/16 :goto_11

    .end local v17    # "u":Landroid/os/BatteryStats$Uid;
    .end local v42    # "stepCount":I
    .end local v45    # "timesInFreqMs":[J
    .restart local v1    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v10    # "stepCount":I
    .restart local v11    # "timesInFreqMs":[J
    :cond_17
    move-object/from16 v17, v1

    move/from16 v28, v2

    move/from16 v42, v10

    move-object/from16 v45, v11

    const-wide v10, 0x10300000003L

    .line 8240
    .end local v1    # "u":Landroid/os/BatteryStats$Uid;
    .end local v2    # "procState":I
    .end local v10    # "stepCount":I
    .end local v11    # "timesInFreqMs":[J
    .restart local v17    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v42    # "stepCount":I
    .restart local v45    # "timesInFreqMs":[J
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8243
    move-wide v1, v3

    invoke-virtual/range {v17 .. v17}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    move-wide/from16 v53, v1

    const-wide v1, 0x10b0000000aL

    move-wide/from16 v10, v53

    move-wide/from16 v53, v7

    move-wide v7, v10

    move v11, v5

    move-object/from16 v10, v17

    move-wide/from16 v4, v55

    .end local v7    # "cpuToken":J
    .end local v17    # "u":Landroid/os/BatteryStats$Uid;
    .end local v55    # "rawRealtimeUs":J
    .restart local v4    # "rawRealtimeUs":J
    .local v10, "u":Landroid/os/BatteryStats$Uid;
    .local v53, "cpuToken":J
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8247
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const-wide v1, 0x10b0000000bL

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8251
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const-wide v1, 0x10b0000000cL

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8255
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getJobCompletionStats()Landroid/util/ArrayMap;

    move-result-object v1

    .line 8256
    .local v1, "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    const/4 v2, 0x0

    .local v2, "ic":I
    :goto_14
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    move-wide/from16 v57, v12

    .end local v12    # "rawRealtimeMs":J
    .local v57, "rawRealtimeMs":J
    if-ge v2, v3, :cond_1a

    .line 8257
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    .line 8258
    .local v3, "types":Landroid/util/SparseIntArray;
    if-eqz v3, :cond_19

    .line 8259
    move-object/from16 v17, v14

    .end local v14    # "timesInFreqScreenOffMs":[J
    .local v17, "timesInFreqScreenOffMs":[J
    const-wide v13, 0x20b00000010L

    invoke-virtual {v0, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 8261
    .local v13, "jcToken":J
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v36, v1

    move/from16 v48, v2

    const-wide v1, 0x10900000001L

    .end local v1    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v2    # "ic":I
    .local v36, "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .local v48, "ic":I
    invoke-virtual {v0, v1, v2, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8263
    invoke-static {}, Landroid/app/job/JobParameters;->getJobStopReasonCodes()[I

    move-result-object v6

    array-length v1, v6

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_18

    aget v11, v6, v2

    .line 8264
    .local v11, "r":I
    move v12, v1

    move/from16 v32, v2

    const-wide v7, 0x20b00000002L

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 8265
    .local v1, "rToken":J
    const-wide v7, 0x10e00000001L

    invoke-virtual {v0, v7, v8, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8266
    const/4 v7, 0x0

    invoke-virtual {v3, v11, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    move-wide/from16 v59, v4

    move-object v5, v3

    const-wide v3, 0x10500000002L

    .end local v3    # "types":Landroid/util/SparseIntArray;
    .end local v4    # "rawRealtimeUs":J
    .local v5, "types":Landroid/util/SparseIntArray;
    .local v59, "rawRealtimeUs":J
    invoke-virtual {v0, v3, v4, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8267
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8263
    .end local v1    # "rToken":J
    .end local v11    # "r":I
    add-int/lit8 v2, v32, 0x1

    move-object v3, v5

    move v1, v12

    move-wide/from16 v4, v59

    const-wide v7, 0x10e00000001L

    goto :goto_15

    .line 8270
    .end local v5    # "types":Landroid/util/SparseIntArray;
    .end local v59    # "rawRealtimeUs":J
    .restart local v3    # "types":Landroid/util/SparseIntArray;
    .restart local v4    # "rawRealtimeUs":J
    :cond_18
    move-wide/from16 v59, v4

    move-object v5, v3

    .end local v3    # "types":Landroid/util/SparseIntArray;
    .end local v4    # "rawRealtimeUs":J
    .restart local v5    # "types":Landroid/util/SparseIntArray;
    .restart local v59    # "rawRealtimeUs":J
    invoke-virtual {v0, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_16

    .line 8258
    .end local v5    # "types":Landroid/util/SparseIntArray;
    .end local v13    # "jcToken":J
    .end local v17    # "timesInFreqScreenOffMs":[J
    .end local v36    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v48    # "ic":I
    .end local v59    # "rawRealtimeUs":J
    .local v1, "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v2    # "ic":I
    .restart local v3    # "types":Landroid/util/SparseIntArray;
    .restart local v4    # "rawRealtimeUs":J
    .restart local v14    # "timesInFreqScreenOffMs":[J
    :cond_19
    move-object/from16 v36, v1

    move/from16 v48, v2

    move-wide/from16 v59, v4

    move-object/from16 v17, v14

    move-object v5, v3

    .line 8256
    .end local v1    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v2    # "ic":I
    .end local v3    # "types":Landroid/util/SparseIntArray;
    .end local v4    # "rawRealtimeUs":J
    .end local v14    # "timesInFreqScreenOffMs":[J
    .restart local v17    # "timesInFreqScreenOffMs":[J
    .restart local v36    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v48    # "ic":I
    .restart local v59    # "rawRealtimeUs":J
    :goto_16
    add-int/lit8 v2, v48, 0x1

    move-object/from16 v14, v17

    move-object/from16 v1, v36

    move-wide/from16 v12, v57

    move-wide/from16 v4, v59

    const-wide v7, 0x10e00000001L

    const/4 v11, 0x7

    .end local v48    # "ic":I
    .restart local v2    # "ic":I
    goto/16 :goto_14

    .end local v17    # "timesInFreqScreenOffMs":[J
    .end local v36    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v59    # "rawRealtimeUs":J
    .restart local v1    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v4    # "rawRealtimeUs":J
    .restart local v14    # "timesInFreqScreenOffMs":[J
    :cond_1a
    move-object/from16 v36, v1

    move/from16 v48, v2

    move-wide/from16 v59, v4

    move-object/from16 v17, v14

    .line 8275
    .end local v1    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v2    # "ic":I
    .end local v4    # "rawRealtimeUs":J
    .end local v14    # "timesInFreqScreenOffMs":[J
    .restart local v17    # "timesInFreqScreenOffMs":[J
    .restart local v36    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v59    # "rawRealtimeUs":J
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v7

    .line 8276
    .local v7, "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v8, v1

    .local v8, "ij":I
    :goto_17
    if-ltz v8, :cond_1b

    .line 8277
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/os/BatteryStats$Timer;

    .line 8278
    .local v3, "timer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v3}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v11

    .line 8279
    .local v11, "bgTimer":Landroid/os/BatteryStats$Timer;
    const-wide v1, 0x20b0000000fL

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 8281
    .local v12, "jToken":J
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide v5, 0x10900000001L

    invoke-virtual {v0, v5, v6, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8283
    const-wide v1, 0x10b00000002L

    move-wide/from16 v49, v5

    const/4 v6, 0x0

    move-object v14, v7

    move/from16 v32, v8

    move-wide/from16 v7, v49

    move-wide/from16 v4, v59

    .end local v7    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v8    # "ij":I
    .end local v59    # "rawRealtimeUs":J
    .restart local v4    # "rawRealtimeUs":J
    .local v14, "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v32, "ij":I
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8284
    move-object/from16 v33, v3

    .end local v3    # "timer":Landroid/os/BatteryStats$Timer;
    .local v33, "timer":Landroid/os/BatteryStats$Timer;
    const-wide v1, 0x10b00000003L

    move-object/from16 v0, p1

    move-object v3, v11

    .end local v11    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .local v3, "bgTimer":Landroid/os/BatteryStats$Timer;
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8286
    invoke-virtual {v0, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8276
    .end local v3    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v12    # "jToken":J
    .end local v33    # "timer":Landroid/os/BatteryStats$Timer;
    add-int/lit8 v1, v32, -0x1

    move-object v7, v14

    move v8, v1

    .end local v32    # "ij":I
    .local v1, "ij":I
    goto :goto_17

    .end local v1    # "ij":I
    .end local v4    # "rawRealtimeUs":J
    .end local v14    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v7    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v8    # "ij":I
    .restart local v59    # "rawRealtimeUs":J
    :cond_1b
    move-object v14, v7

    move/from16 v32, v8

    move-wide/from16 v4, v59

    const-wide v7, 0x10900000001L

    .line 8290
    .end local v7    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v8    # "ij":I
    .end local v59    # "rawRealtimeUs":J
    .restart local v4    # "rawRealtimeUs":J
    .restart local v14    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    nop

    .line 8291
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v1

    .line 8290
    const-wide v2, 0x10b00000004L

    const/4 v6, 0x0

    invoke-static {v0, v2, v3, v1, v6}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 8294
    const-wide v1, 0x10b00000011L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 8295
    .local v11, "nToken":J
    nop

    .line 8296
    invoke-virtual {v10, v6, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v1

    .line 8295
    const-wide v7, 0x10300000001L

    invoke-virtual {v0, v7, v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8297
    nop

    .line 8298
    move/from16 v1, v18

    invoke-virtual {v10, v1, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v2

    .line 8297
    const-wide v7, 0x10300000002L

    invoke-virtual {v0, v7, v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8299
    nop

    .line 8300
    const/4 v7, 0x2

    invoke-virtual {v10, v7, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v1

    .line 8299
    const-wide v7, 0x10300000003L

    invoke-virtual {v0, v7, v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8301
    nop

    .line 8302
    const/4 v1, 0x3

    invoke-virtual {v10, v1, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v2

    .line 8301
    const-wide v7, 0x10300000004L

    invoke-virtual {v0, v7, v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8303
    nop

    .line 8304
    const/4 v2, 0x4

    invoke-virtual {v10, v2, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v2

    .line 8303
    const-wide v7, 0x10300000005L

    invoke-virtual {v0, v7, v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8305
    nop

    .line 8306
    const/4 v2, 0x5

    invoke-virtual {v10, v2, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v2

    .line 8305
    const-wide v7, 0x10300000006L

    invoke-virtual {v0, v7, v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8307
    nop

    .line 8308
    invoke-virtual {v10, v6, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v2

    .line 8307
    const-wide v7, 0x10300000007L

    invoke-virtual {v0, v7, v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8309
    nop

    .line 8310
    const/4 v2, 0x1

    invoke-virtual {v10, v2, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v7

    .line 8309
    const-wide v2, 0x10300000008L

    invoke-virtual {v0, v2, v3, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8311
    nop

    .line 8312
    const/4 v2, 0x2

    invoke-virtual {v10, v2, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v7

    .line 8311
    const-wide v2, 0x10300000009L

    invoke-virtual {v0, v2, v3, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8313
    nop

    .line 8314
    invoke-virtual {v10, v1, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v1

    .line 8313
    const-wide v7, 0x1030000000aL

    invoke-virtual {v0, v7, v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8315
    nop

    .line 8316
    invoke-virtual {v10, v6}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v1

    .line 8315
    const-wide v7, 0x1030000000bL

    invoke-virtual {v0, v7, v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8317
    nop

    .line 8318
    invoke-virtual {v10, v6}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v1

    .line 8317
    const-wide v2, 0x1050000000cL

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8319
    nop

    .line 8320
    invoke-virtual {v10, v6}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v1

    .line 8319
    const-wide v7, 0x1050000000dL

    invoke-virtual {v0, v7, v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8321
    nop

    .line 8322
    invoke-virtual {v10, v6}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    move-result-wide v1

    .line 8321
    const-wide v7, 0x1050000000eL

    invoke-virtual {v0, v7, v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8323
    nop

    .line 8324
    const/4 v1, 0x6

    invoke-virtual {v10, v1, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v2

    .line 8323
    const-wide v7, 0x1030000000fL

    invoke-virtual {v0, v7, v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8325
    nop

    .line 8326
    const/4 v13, 0x7

    invoke-virtual {v10, v13, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v2

    .line 8325
    const-wide v7, 0x10300000010L

    invoke-virtual {v0, v7, v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8327
    nop

    .line 8328
    const/16 v2, 0x8

    invoke-virtual {v10, v2, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v7

    .line 8327
    move-object/from16 v28, v14

    .end local v14    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v28, "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    const-wide v13, 0x10300000011L

    invoke-virtual {v0, v13, v14, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8329
    nop

    .line 8330
    const/16 v7, 0x9

    invoke-virtual {v10, v7, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v13

    .line 8329
    nop

    .end local v4    # "rawRealtimeUs":J
    .restart local v59    # "rawRealtimeUs":J
    const-wide v3, 0x10300000012L

    invoke-virtual {v0, v3, v4, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8331
    nop

    .line 8332
    invoke-virtual {v10, v1, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v3

    .line 8331
    const-wide v13, 0x10300000013L

    invoke-virtual {v0, v13, v14, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8333
    nop

    .line 8334
    const/4 v13, 0x7

    invoke-virtual {v10, v13, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v3

    .line 8333
    const-wide v13, 0x10300000014L

    invoke-virtual {v0, v13, v14, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8335
    nop

    .line 8336
    invoke-virtual {v10, v2, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v1

    .line 8335
    const-wide v3, 0x10300000015L

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8337
    nop

    .line 8338
    invoke-virtual {v10, v7, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v1

    .line 8337
    const-wide v3, 0x10300000016L

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8339
    invoke-virtual {v0, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8342
    move/from16 v7, v29

    .end local v29    # "uid":I
    .local v7, "uid":I
    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/os/UidBatteryConsumer;

    .line 8343
    .local v13, "consumer":Landroid/os/UidBatteryConsumer;
    if-eqz v13, :cond_1c

    .line 8344
    const-wide v1, 0x10b00000012L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 8345
    .local v1, "bsToken":J
    const-wide v3, 0x10100000001L

    invoke-virtual {v13}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide v5

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 8346
    nop

    .line 8347
    move-object/from16 v14, p4

    invoke-virtual {v14, v13}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->isSystemBatteryConsumer(Landroid/os/UidBatteryConsumer;)Z

    move-result v3

    .line 8346
    const-wide v4, 0x10800000002L

    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 8348
    nop

    .line 8349
    const/4 v6, 0x0

    invoke-virtual {v13, v6}, Landroid/os/UidBatteryConsumer;->getConsumedPower(I)D

    move-result-wide v3

    .line 8348
    const-wide v5, 0x10100000003L

    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 8350
    nop

    .line 8351
    invoke-virtual {v14, v13}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->getProportionalPowerMah(Landroid/os/UidBatteryConsumer;)D

    move-result-wide v3

    .line 8350
    const-wide v5, 0x10100000004L

    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 8352
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_18

    .line 8343
    .end local v1    # "bsToken":J
    :cond_1c
    move-object/from16 v14, p4

    .line 8356
    :goto_18
    nop

    .line 8357
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v1

    .line 8358
    .local v1, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/16 v18, 0x1

    add-int/lit8 v2, v2, -0x1

    .local v2, "ipr":I
    :goto_19
    if-ltz v2, :cond_1d

    .line 8359
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Proc;

    .line 8360
    .local v3, "ps":Landroid/os/BatteryStats$Uid$Proc;
    const-wide v4, 0x20b00000013L

    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 8362
    .local v4, "prToken":J
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v29, v9

    const-wide v8, 0x10900000001L

    .end local v9    # "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    .local v29, "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    invoke-virtual {v0, v8, v9, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8363
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v8

    move/from16 v48, v7

    const-wide v6, 0x10300000002L

    .end local v7    # "uid":I
    .local v48, "uid":I
    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8364
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v7

    move-object v9, v1

    move/from16 v61, v2

    const-wide v1, 0x10300000003L

    .end local v1    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v2    # "ipr":I
    .local v9, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .local v61, "ipr":I
    invoke-virtual {v0, v1, v2, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8365
    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v7

    const-wide v1, 0x10300000004L

    invoke-virtual {v0, v1, v2, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8366
    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v7

    const-wide v1, 0x10500000005L

    invoke-virtual {v0, v1, v2, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8367
    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v7

    const-wide v1, 0x10500000006L

    invoke-virtual {v0, v1, v2, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8368
    const-wide v7, 0x10500000007L

    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v1

    invoke-virtual {v0, v7, v8, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8370
    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8358
    .end local v3    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v4    # "prToken":J
    add-int/lit8 v2, v61, -0x1

    move-object v1, v9

    move-object/from16 v9, v29

    move/from16 v7, v48

    .end local v61    # "ipr":I
    .restart local v2    # "ipr":I
    goto :goto_19

    .end local v29    # "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    .end local v48    # "uid":I
    .restart local v1    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .restart local v7    # "uid":I
    .local v9, "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    :cond_1d
    move/from16 v61, v2

    move/from16 v48, v7

    move-object/from16 v29, v9

    move-object v9, v1

    .line 8374
    .end local v1    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v2    # "ipr":I
    .end local v7    # "uid":I
    .local v9, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .restart local v29    # "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    .restart local v48    # "uid":I
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v7

    .line 8375
    .local v7, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    const/4 v1, 0x0

    move v8, v1

    .local v8, "ise":I
    :goto_1a
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v8, v1, :cond_1f

    .line 8376
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v37, v1

    check-cast v37, Landroid/os/BatteryStats$Uid$Sensor;

    .line 8377
    .local v37, "se":Landroid/os/BatteryStats$Uid$Sensor;
    invoke-virtual/range {v37 .. v37}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 8378
    .local v3, "timer":Landroid/os/BatteryStats$Timer;
    if-nez v3, :cond_1e

    .line 8379
    move-object/from16 v25, v7

    move/from16 v26, v8

    move-wide/from16 v4, v59

    const-wide v55, 0x10500000001L

    goto :goto_1b

    .line 8381
    :cond_1e
    invoke-virtual/range {v37 .. v37}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;

    move-result-object v38

    .line 8382
    .local v38, "bgTimer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 8383
    .local v1, "sensorNumber":I
    const-wide v4, 0x20b00000015L

    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 8385
    .local v4, "seToken":J
    move-object v6, v3

    const-wide v2, 0x10500000001L

    .end local v3    # "timer":Landroid/os/BatteryStats$Timer;
    .local v6, "timer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8387
    move-wide/from16 v25, v2

    move v3, v1

    .end local v1    # "sensorNumber":I
    .local v3, "sensorNumber":I
    const-wide v1, 0x10b00000002L

    move/from16 v51, v3

    move-object v3, v6

    .end local v6    # "timer":Landroid/os/BatteryStats$Timer;
    .local v3, "timer":Landroid/os/BatteryStats$Timer;
    .local v51, "sensorNumber":I
    const/4 v6, 0x0

    move-wide/from16 v55, v25

    move-object/from16 v25, v7

    move/from16 v26, v8

    move-wide v7, v4

    move-wide/from16 v4, v59

    .end local v8    # "ise":I
    .end local v59    # "rawRealtimeUs":J
    .local v4, "rawRealtimeUs":J
    .local v7, "seToken":J
    .local v25, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .local v26, "ise":I
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8388
    move-object/from16 v52, v3

    .end local v3    # "timer":Landroid/os/BatteryStats$Timer;
    .local v52, "timer":Landroid/os/BatteryStats$Timer;
    const-wide v1, 0x10b00000003L

    move-object/from16 v0, p1

    move-object/from16 v3, v38

    .end local v38    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .local v3, "bgTimer":Landroid/os/BatteryStats$Timer;
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8390
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8375
    .end local v3    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v7    # "seToken":J
    .end local v37    # "se":Landroid/os/BatteryStats$Uid$Sensor;
    .end local v51    # "sensorNumber":I
    .end local v52    # "timer":Landroid/os/BatteryStats$Timer;
    :goto_1b
    add-int/lit8 v8, v26, 0x1

    move-wide/from16 v59, v4

    move-object/from16 v7, v25

    .end local v26    # "ise":I
    .restart local v8    # "ise":I
    goto :goto_1a

    .end local v4    # "rawRealtimeUs":J
    .end local v25    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .local v7, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .restart local v59    # "rawRealtimeUs":J
    :cond_1f
    move-object/from16 v25, v7

    move/from16 v26, v8

    move-wide/from16 v4, v59

    .line 8394
    .end local v7    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v8    # "ise":I
    .end local v59    # "rawRealtimeUs":J
    .restart local v4    # "rawRealtimeUs":J
    .restart local v25    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    const/4 v1, 0x0

    .local v1, "ips":I
    :goto_1c
    const/4 v3, 0x7

    if-ge v1, v3, :cond_21

    .line 8395
    const/4 v6, 0x0

    invoke-virtual {v10, v1, v4, v5, v6}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v6

    .line 8396
    .local v6, "durMs":J
    const-wide/16 v30, 0x0

    cmp-long v2, v6, v30

    if-nez v2, :cond_20

    .line 8397
    move-wide/from16 v55, v4

    goto :goto_1d

    .line 8399
    :cond_20
    move-wide/from16 v55, v4

    .end local v4    # "rawRealtimeUs":J
    .restart local v55    # "rawRealtimeUs":J
    const-wide v3, 0x20b00000014L

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 8400
    .local v2, "stToken":J
    move-wide/from16 v37, v6

    const-wide v5, 0x10e00000001L

    .end local v6    # "durMs":J
    .local v37, "durMs":J
    invoke-virtual {v0, v5, v6, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8401
    move-wide/from16 v4, v37

    const-wide v6, 0x10300000002L

    .end local v37    # "durMs":J
    .local v4, "durMs":J
    invoke-virtual {v0, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8402
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8394
    .end local v2    # "stToken":J
    .end local v4    # "durMs":J
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v4, v55

    goto :goto_1c

    .end local v55    # "rawRealtimeUs":J
    .local v4, "rawRealtimeUs":J
    :cond_21
    move-wide/from16 v55, v4

    .line 8406
    .end local v1    # "ips":I
    .end local v4    # "rawRealtimeUs":J
    .restart local v55    # "rawRealtimeUs":J
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v7

    .line 8407
    .local v7, "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/16 v18, 0x1

    add-int/lit8 v1, v1, -0x1

    move v8, v1

    .local v8, "isy":I
    :goto_1e
    if-ltz v8, :cond_22

    .line 8408
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/os/BatteryStats$Timer;

    .line 8409
    .local v3, "timer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v3}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v26

    .line 8410
    .local v26, "bgTimer":Landroid/os/BatteryStats$Timer;
    const-wide v1, 0x20b00000016L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 8412
    .local v1, "syToken":J
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-wide v5, 0x10900000001L

    invoke-virtual {v0, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8414
    move-wide v4, v1

    .end local v1    # "syToken":J
    .local v4, "syToken":J
    const-wide v1, 0x10b00000002L

    const/4 v6, 0x0

    move-object/from16 v30, v7

    move/from16 v31, v8

    move-wide v7, v4

    move-wide/from16 v4, v55

    .end local v8    # "isy":I
    .end local v55    # "rawRealtimeUs":J
    .local v4, "rawRealtimeUs":J
    .local v7, "syToken":J
    .local v30, "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v31, "isy":I
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8415
    move-object/from16 v33, v3

    .end local v3    # "timer":Landroid/os/BatteryStats$Timer;
    .restart local v33    # "timer":Landroid/os/BatteryStats$Timer;
    const-wide v1, 0x10b00000003L

    move-object/from16 v0, p1

    move-object/from16 v3, v26

    .end local v26    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .local v3, "bgTimer":Landroid/os/BatteryStats$Timer;
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8417
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8407
    .end local v3    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v7    # "syToken":J
    .end local v33    # "timer":Landroid/os/BatteryStats$Timer;
    add-int/lit8 v8, v31, -0x1

    move-object/from16 v7, v30

    .end local v31    # "isy":I
    .restart local v8    # "isy":I
    goto :goto_1e

    .end local v4    # "rawRealtimeUs":J
    .end local v30    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v7, "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v55    # "rawRealtimeUs":J
    :cond_22
    move-object/from16 v30, v7

    move/from16 v31, v8

    move-wide/from16 v4, v55

    .line 8421
    .end local v7    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v8    # "isy":I
    .end local v55    # "rawRealtimeUs":J
    .restart local v4    # "rawRealtimeUs":J
    .restart local v30    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 8422
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1f
    sget v2, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    if-ge v1, v2, :cond_24

    .line 8423
    const/4 v6, 0x0

    invoke-virtual {v10, v1, v6}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v2

    .line 8424
    .local v2, "val":I
    if-eqz v2, :cond_23

    .line 8425
    const-wide v6, 0x20b00000017L

    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 8426
    .local v6, "uaToken":J
    move-wide/from16 v55, v4

    const-wide v3, 0x10e00000001L

    .end local v4    # "rawRealtimeUs":J
    .restart local v55    # "rawRealtimeUs":J
    invoke-virtual {v0, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8427
    const-wide v3, 0x10500000002L

    invoke-virtual {v0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8428
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_20

    .line 8424
    .end local v6    # "uaToken":J
    .end local v55    # "rawRealtimeUs":J
    .restart local v4    # "rawRealtimeUs":J
    :cond_23
    move-wide/from16 v55, v4

    .line 8422
    .end local v2    # "val":I
    .end local v4    # "rawRealtimeUs":J
    .restart local v55    # "rawRealtimeUs":J
    :goto_20
    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v4, v55

    goto :goto_1f

    .end local v55    # "rawRealtimeUs":J
    .restart local v4    # "rawRealtimeUs":J
    :cond_24
    move-wide/from16 v55, v4

    .end local v4    # "rawRealtimeUs":J
    .restart local v55    # "rawRealtimeUs":J
    goto :goto_21

    .line 8421
    .end local v1    # "i":I
    .end local v55    # "rawRealtimeUs":J
    .restart local v4    # "rawRealtimeUs":J
    :cond_25
    move-wide/from16 v55, v4

    .line 8434
    .end local v4    # "rawRealtimeUs":J
    .restart local v55    # "rawRealtimeUs":J
    :goto_21
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    const-wide v1, 0x10b0000000dL

    move-wide/from16 v4, v55

    .end local v55    # "rawRealtimeUs":J
    .restart local v4    # "rawRealtimeUs":J
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8437
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const-wide v1, 0x10b0000000eL

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8440
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v7

    .line 8441
    .local v7, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/16 v18, 0x1

    add-int/lit8 v1, v1, -0x1

    move v8, v1

    .local v8, "iw":I
    :goto_22
    if-ltz v8, :cond_27

    .line 8442
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 8443
    .local v1, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    const-wide v2, 0x20b00000019L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 8444
    .local v2, "wToken":J
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-wide/from16 v37, v2

    const-wide v2, 0x10900000001L

    .end local v2    # "wToken":J
    .local v37, "wToken":J
    invoke-virtual {v0, v2, v3, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8445
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v26, v1

    .end local v1    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .local v26, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    const-wide v1, 0x10b00000002L

    move-object/from16 v31, v7

    move/from16 v33, v8

    move-object/from16 v7, v26

    move-object/from16 v26, v9

    move-wide/from16 v8, v37

    .end local v9    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v37    # "wToken":J
    .local v7, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .local v8, "wToken":J
    .local v26, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .local v31, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .local v33, "iw":I
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8447
    const/4 v6, 0x0

    invoke-virtual {v7, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 8448
    .local v3, "pTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v3, :cond_26

    .line 8449
    const-wide v1, 0x10b00000003L

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8450
    move-object/from16 v37, v3

    .end local v3    # "pTimer":Landroid/os/BatteryStats$Timer;
    .local v37, "pTimer":Landroid/os/BatteryStats$Timer;
    invoke-virtual/range {v37 .. v37}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const-wide v1, 0x10b00000004L

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    goto :goto_23

    .line 8448
    .end local v37    # "pTimer":Landroid/os/BatteryStats$Timer;
    .restart local v3    # "pTimer":Landroid/os/BatteryStats$Timer;
    :cond_26
    move-object/from16 v37, v3

    .line 8453
    .end local v3    # "pTimer":Landroid/os/BatteryStats$Timer;
    .restart local v37    # "pTimer":Landroid/os/BatteryStats$Timer;
    :goto_23
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    const-wide v1, 0x10b00000005L

    move/from16 v32, v0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8455
    invoke-virtual {v0, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8441
    .end local v7    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v8    # "wToken":J
    .end local v37    # "pTimer":Landroid/os/BatteryStats$Timer;
    add-int/lit8 v8, v33, -0x1

    move-object/from16 v9, v26

    move-object/from16 v7, v31

    .end local v33    # "iw":I
    .local v8, "iw":I
    goto :goto_22

    .end local v26    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v31    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .local v7, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .restart local v9    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    :cond_27
    move-object/from16 v31, v7

    move/from16 v33, v8

    move-object/from16 v26, v9

    .line 8459
    .end local v7    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v8    # "iw":I
    .end local v9    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .restart local v26    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .restart local v31    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    const-wide v1, 0x10b0000001cL

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8463
    invoke-virtual/range {v47 .. v47}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/16 v18, 0x1

    add-int/lit8 v1, v1, -0x1

    .local v1, "ipkg":I
    :goto_24
    if-ltz v1, :cond_29

    .line 8464
    move-object/from16 v7, v47

    .end local v47    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .local v7, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Uid$Pkg;

    .line 8465
    .local v2, "ps":Landroid/os/BatteryStats$Uid$Pkg;
    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v3

    .line 8466
    .local v3, "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "iwa":I
    :goto_25
    if-ltz v6, :cond_28

    .line 8467
    const-wide v8, 0x20b0000001aL

    invoke-virtual {v0, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 8468
    .local v8, "waToken":J
    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v32

    move/from16 v33, v1

    .end local v1    # "ipkg":I
    .local v33, "ipkg":I
    move-object/from16 v1, v32

    check-cast v1, Ljava/lang/String;

    move-wide/from16 v37, v11

    const-wide v11, 0x10900000001L

    .end local v11    # "nToken":J
    .local v37, "nToken":J
    invoke-virtual {v0, v11, v12, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8469
    nop

    .line 8470
    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Counter;

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v1

    .line 8469
    const-wide v11, 0x10500000002L

    invoke-virtual {v0, v11, v12, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8471
    invoke-virtual {v0, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8466
    .end local v8    # "waToken":J
    add-int/lit8 v6, v6, -0x1

    move/from16 v1, v33

    move-wide/from16 v11, v37

    goto :goto_25

    .end local v33    # "ipkg":I
    .end local v37    # "nToken":J
    .restart local v1    # "ipkg":I
    .restart local v11    # "nToken":J
    :cond_28
    move/from16 v33, v1

    move-wide/from16 v37, v11

    const-wide v11, 0x10500000002L

    .line 8463
    .end local v1    # "ipkg":I
    .end local v2    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .end local v3    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .end local v6    # "iwa":I
    .end local v11    # "nToken":J
    .restart local v33    # "ipkg":I
    .restart local v37    # "nToken":J
    add-int/lit8 v1, v33, -0x1

    move-object/from16 v47, v7

    move-wide/from16 v11, v37

    .end local v33    # "ipkg":I
    .restart local v1    # "ipkg":I
    goto :goto_24

    .end local v7    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v37    # "nToken":J
    .restart local v11    # "nToken":J
    .restart local v47    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    :cond_29
    move/from16 v33, v1

    move-wide/from16 v37, v11

    move-object/from16 v7, v47

    .line 8476
    .end local v1    # "ipkg":I
    .end local v11    # "nToken":J
    .end local v47    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v7    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v37    # "nToken":J
    nop

    .line 8477
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v1

    .line 8476
    const-wide v2, 0x10b00000005L

    const/4 v11, 0x0

    invoke-static {v0, v2, v3, v1, v11}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 8480
    const-wide v1, 0x10b0000001bL

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 8481
    .local v8, "wToken":J
    nop

    .line 8482
    invoke-virtual {v10, v4, v5, v11}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v1

    .line 8481
    const-wide v11, 0x10300000001L

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8483
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getWifiScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    const-wide v1, 0x10b00000003L

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8485
    nop

    .line 8486
    const/4 v6, 0x0

    invoke-virtual {v10, v4, v5, v6}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v1

    .line 8485
    const-wide v11, 0x10300000002L

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8487
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    const-wide v1, 0x10b00000004L

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8489
    invoke-virtual {v0, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8491
    move-wide/from16 v1, v23

    .end local v23    # "uTkn":J
    .local v1, "uTkn":J
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8079
    .end local v1    # "uTkn":J
    .end local v7    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v8    # "wToken":J
    .end local v10    # "u":Landroid/os/BatteryStats$Uid;
    .end local v13    # "consumer":Landroid/os/UidBatteryConsumer;
    .end local v15    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .end local v17    # "timesInFreqScreenOffMs":[J
    .end local v19    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .end local v25    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v26    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v28    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v30    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v31    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v36    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v37    # "nToken":J
    .end local v42    # "stepCount":I
    .end local v45    # "timesInFreqMs":[J
    .end local v46    # "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v48    # "uid":I
    .end local v53    # "cpuToken":J
    add-int/lit8 v6, v27, 0x1

    move-object/from16 v14, p0

    move-object/from16 v7, p3

    move/from16 v17, v18

    move/from16 v9, v20

    move-wide/from16 v10, v21

    move-object/from16 v3, v29

    move-object/from16 v15, v39

    move-wide/from16 v1, v43

    move-wide/from16 v12, v57

    move-wide/from16 v18, v4

    move/from16 v5, v40

    move-object/from16 v4, v41

    .end local v27    # "iu":I
    .local v6, "iu":I
    goto/16 :goto_4

    .line 8493
    .end local v6    # "iu":I
    .end local v20    # "which":I
    .end local v21    # "rawUptimeUs":J
    .end local v29    # "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    .end local v39    # "aidToPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v40    # "n":I
    .end local v41    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v43    # "batteryUptimeUs":J
    .end local v57    # "rawRealtimeMs":J
    .local v1, "batteryUptimeUs":J
    .local v3, "uidToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer;>;"
    .local v4, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v5, "n":I
    .local v9, "which":I
    .local v10, "rawUptimeUs":J
    .local v12, "rawRealtimeMs":J
    .local v15, "aidToPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v18    # "rawRealtimeUs":J
    :cond_2a
    return-void
.end method

.method private greylist-max-o dumpProtoHistoryLocked(Landroid/util/proto/ProtoOutputStream;IJ)V
    .locals 23
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "flags"    # I
    .param p3, "histStart"    # J

    .line 8496
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    const/16 v0, 0x24

    const-wide v4, 0x10500000001L

    invoke-virtual {v3, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8497
    const-wide v6, 0x10300000002L

    invoke-virtual {v1}, Landroid/os/BatteryStats;->getParcelVersion()I

    move-result v0

    invoke-virtual {v3, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8498
    nop

    .line 8499
    invoke-virtual {v1}, Landroid/os/BatteryStats;->getStartPlatformVersion()Ljava/lang/String;

    move-result-object v0

    .line 8498
    const-wide v6, 0x10900000003L

    invoke-virtual {v3, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8500
    nop

    .line 8501
    invoke-virtual {v1}, Landroid/os/BatteryStats;->getEndPlatformVersion()Ljava/lang/String;

    move-result-object v0

    .line 8500
    const-wide v8, 0x10900000004L

    invoke-virtual {v3, v8, v9, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8504
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 8505
    const-wide v8, 0x20b00000005L

    invoke-virtual {v3, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 8506
    .local v8, "token":J
    invoke-virtual {v3, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8507
    const-wide v10, 0x10500000002L

    invoke-virtual {v1, v0}, Landroid/os/BatteryStats;->getHistoryTagPoolUid(I)I

    move-result v2

    invoke-virtual {v3, v10, v11, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8508
    nop

    .line 8509
    invoke-virtual {v1, v0}, Landroid/os/BatteryStats;->getHistoryTagPoolString(I)Ljava/lang/String;

    move-result-object v2

    .line 8508
    invoke-virtual {v3, v6, v7, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8510
    invoke-virtual {v3, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8504
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8514
    .end local v0    # "i":I
    .end local v8    # "token":J
    :cond_0
    new-instance v2, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    .line 8515
    .local v2, "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    const-wide/16 v4, -0x1

    .line 8516
    .local v4, "lastTime":J
    const-wide/16 v6, -0x1

    .line 8517
    .local v6, "baseTime":J
    const/4 v0, 0x0

    .line 8518
    .local v0, "printed":Z
    const/4 v8, 0x0

    .line 8519
    .local v8, "tracker":Landroid/os/BatteryStats$HistoryEventTracker;
    nop

    .line 8520
    const-wide/16 v9, 0x0

    const-wide/16 v11, -0x1

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/os/BatteryStats;->iterateBatteryStatsHistory(JJ)Lcom/android/internal/os/BatteryStatsHistoryIterator;

    move-result-object v11

    move-object v12, v8

    move-wide v7, v6

    move-wide v5, v4

    move v4, v0

    .line 8522
    .end local v0    # "printed":Z
    .end local v6    # "baseTime":J
    .end local v8    # "tracker":Landroid/os/BatteryStats$HistoryEventTracker;
    .local v4, "printed":Z
    .local v5, "lastTime":J
    .local v7, "baseTime":J
    .local v11, "iterator":Lcom/android/internal/os/BatteryStatsHistoryIterator;
    .local v12, "tracker":Landroid/os/BatteryStats$HistoryEventTracker;
    :goto_1
    :try_start_0
    invoke-virtual {v11}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->next()Landroid/os/BatteryStats$HistoryItem;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move v13, v4

    .end local v4    # "printed":Z
    .local v13, "printed":Z
    move-object v4, v0

    .local v4, "rec":Landroid/os/BatteryStats$HistoryItem;
    if-eqz v0, :cond_13

    .line 8523
    :try_start_1
    iget-wide v14, v4, Landroid/os/BatteryStats$HistoryItem;->time:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 8524
    .end local v5    # "lastTime":J
    .local v14, "lastTime":J
    cmp-long v0, v7, v9

    if-gez v0, :cond_1

    .line 8525
    move-wide v7, v14

    move-wide v5, v7

    goto :goto_2

    .line 8524
    :cond_1
    move-wide v5, v7

    .line 8527
    .end local v7    # "baseTime":J
    .local v5, "baseTime":J
    :goto_2
    :try_start_2
    iget-wide v7, v4, Landroid/os/BatteryStats$HistoryItem;->time:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    cmp-long v0, v7, p3

    if-ltz v0, :cond_12

    .line 8528
    cmp-long v0, p3, v9

    const/4 v8, 0x0

    const/16 v16, 0x1

    if-ltz v0, :cond_f

    if-nez v13, :cond_f

    .line 8529
    :try_start_3
    iget-byte v0, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v7, 0x5

    if-eq v0, v7, :cond_5

    iget-byte v0, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move-wide/from16 v17, v9

    const/4 v9, 0x7

    if-eq v0, v9, :cond_6

    iget-byte v0, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v9, 0x4

    if-eq v0, v9, :cond_6

    iget-byte v0, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v9, 0x8

    if-ne v0, v9, :cond_2

    goto :goto_4

    .line 8537
    :cond_2
    iget-wide v9, v4, Landroid/os/BatteryStats$HistoryItem;->currentTime:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    cmp-long v0, v9, v17

    if-eqz v0, :cond_4

    .line 8538
    const/4 v9, 0x1

    .line 8539
    .end local v13    # "printed":Z
    .local v9, "printed":Z
    :try_start_4
    iget-byte v0, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 8540
    .local v0, "cmd":B
    iput-byte v7, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 8541
    and-int/lit8 v7, p2, 0x20

    if-eqz v7, :cond_3

    move/from16 v7, v16

    goto :goto_3

    :cond_3
    move v7, v8

    :goto_3
    invoke-virtual/range {v2 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    .line 8543
    iput-byte v0, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    goto :goto_6

    .line 8537
    .end local v0    # "cmd":B
    .end local v9    # "printed":Z
    .restart local v13    # "printed":Z
    :cond_4
    move v9, v13

    goto :goto_6

    .line 8529
    :cond_5
    move-wide/from16 v17, v9

    .line 8533
    :cond_6
    :goto_4
    const/4 v9, 0x1

    .line 8534
    .end local v13    # "printed":Z
    .restart local v9    # "printed":Z
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_7

    move/from16 v7, v16

    goto :goto_5

    :cond_7
    move v7, v8

    :goto_5
    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    .line 8536
    iput-byte v8, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 8545
    :goto_6
    if-eqz v12, :cond_10

    .line 8546
    iget-byte v0, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eqz v0, :cond_9

    .line 8547
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_8

    move/from16 v7, v16

    goto :goto_7

    :cond_8
    move v7, v8

    :goto_7
    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    .line 8549
    iput-byte v8, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 8551
    :cond_9
    iget v0, v4, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 8552
    .local v0, "oldEventCode":I
    iget-object v3, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object v10, v3

    .line 8553
    .local v10, "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    new-instance v3, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v3}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v3, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 8554
    const/4 v3, 0x0

    move v13, v3

    .local v13, "i":I
    :goto_8
    const/16 v3, 0x17

    if-ge v13, v3, :cond_e

    .line 8555
    nop

    .line 8556
    invoke-virtual {v12, v13}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v19, v3

    .line 8557
    .local v19, "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-nez v19, :cond_a

    .line 8558
    goto/16 :goto_c

    .line 8561
    :cond_a
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_9
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    move-object/from16 v21, v3

    .line 8562
    .local v21, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    .line 8563
    .local v3, "uids":Landroid/util/SparseIntArray;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_a
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_c

    .line 8564
    iput v13, v4, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 8565
    iget-object v8, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v1, v22

    check-cast v1, Ljava/lang/String;

    iput-object v1, v8, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 8566
    iget-object v1, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v3, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    iput v8, v1, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 8567
    iget-object v1, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v3, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    iput v8, v1, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 8568
    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_b

    move v1, v7

    move/from16 v7, v16

    goto :goto_b

    :cond_b
    move v1, v7

    const/4 v7, 0x0

    .end local v7    # "j":I
    .local v1, "j":I
    :goto_b
    move v8, v1

    move-object v1, v3

    move-object/from16 v3, p1

    .end local v3    # "uids":Landroid/util/SparseIntArray;
    .local v1, "uids":Landroid/util/SparseIntArray;
    .local v8, "j":I
    invoke-virtual/range {v2 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    .line 8570
    const/4 v3, 0x0

    iput-object v3, v4, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 8571
    iput-object v3, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 8563
    add-int/lit8 v7, v8, 0x1

    const/4 v8, 0x0

    move-object v3, v1

    move-object/from16 v1, p0

    .end local v8    # "j":I
    .restart local v7    # "j":I
    goto :goto_a

    .end local v1    # "uids":Landroid/util/SparseIntArray;
    .restart local v3    # "uids":Landroid/util/SparseIntArray;
    :cond_c
    move-object v1, v3

    move v8, v7

    .line 8573
    .end local v3    # "uids":Landroid/util/SparseIntArray;
    .end local v7    # "j":I
    .end local v21    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    const/4 v8, 0x0

    move-object/from16 v1, p0

    goto :goto_9

    .line 8554
    .end local v19    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    :cond_d
    :goto_c
    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x0

    move-object/from16 v1, p0

    goto :goto_8

    .line 8575
    .end local v13    # "i":I
    :cond_e
    iput v0, v4, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 8576
    iput-object v10, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 8577
    const/4 v1, 0x0

    move-object v12, v1

    .end local v12    # "tracker":Landroid/os/BatteryStats$HistoryEventTracker;
    .local v1, "tracker":Landroid/os/BatteryStats$HistoryEventTracker;
    goto :goto_d

    .line 8519
    .end local v0    # "oldEventCode":I
    .end local v1    # "tracker":Landroid/os/BatteryStats$HistoryEventTracker;
    .end local v4    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .end local v10    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    .restart local v12    # "tracker":Landroid/os/BatteryStats$HistoryEventTracker;
    :catchall_0
    move-exception v0

    move-object/from16 v3, p1

    move-object v1, v0

    move-wide v7, v5

    move v4, v9

    move-wide v5, v14

    goto/16 :goto_f

    .end local v9    # "printed":Z
    .local v13, "printed":Z
    :catchall_1
    move-exception v0

    move-object/from16 v3, p1

    move-object v1, v0

    move-wide v7, v5

    move v4, v13

    move-wide v5, v14

    goto/16 :goto_f

    .line 8528
    .restart local v4    # "rec":Landroid/os/BatteryStats$HistoryItem;
    :cond_f
    move-wide/from16 v17, v9

    .line 8580
    move v9, v13

    .end local v13    # "printed":Z
    .restart local v9    # "printed":Z
    :cond_10
    :goto_d
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_11

    move/from16 v7, v16

    goto :goto_e

    :cond_11
    const/4 v7, 0x0

    :goto_e
    move-object/from16 v3, p1

    :try_start_5
    invoke-virtual/range {v2 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v1, p0

    move-wide v7, v5

    move v4, v9

    move-wide v5, v14

    move-wide/from16 v9, v17

    goto/16 :goto_1

    .line 8519
    .end local v4    # "rec":Landroid/os/BatteryStats$HistoryItem;
    :catchall_2
    move-exception v0

    move-object v1, v0

    move-wide v7, v5

    move v4, v9

    move-wide v5, v14

    goto :goto_f

    .line 8527
    .end local v9    # "printed":Z
    .restart local v4    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .restart local v13    # "printed":Z
    :cond_12
    move-wide/from16 v17, v9

    move-object/from16 v1, p0

    move-wide v7, v5

    move v4, v13

    move-wide v5, v14

    goto/16 :goto_1

    .line 8519
    .end local v4    # "rec":Landroid/os/BatteryStats$HistoryItem;
    :catchall_3
    move-exception v0

    move-object v1, v0

    move-wide v7, v5

    move v4, v13

    move-wide v5, v14

    goto :goto_f

    .end local v14    # "lastTime":J
    .local v5, "lastTime":J
    .local v7, "baseTime":J
    :catchall_4
    move-exception v0

    move-object v1, v0

    move v4, v13

    goto :goto_f

    .line 8584
    .restart local v4    # "rec":Landroid/os/BatteryStats$HistoryItem;
    :cond_13
    move-wide/from16 v17, v9

    cmp-long v0, p3, v17

    if-ltz v0, :cond_14

    .line 8585
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->commitCurrentHistoryBatchLocked()V

    .line 8586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NEXT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v9, 0x1

    add-long/2addr v9, v5

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v9, 0x20900000006L

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 8589
    .end local v4    # "rec":Landroid/os/BatteryStats$HistoryItem;
    :cond_14
    if-eqz v11, :cond_15

    invoke-virtual {v11}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V

    .line 8590
    .end local v11    # "iterator":Lcom/android/internal/os/BatteryStatsHistoryIterator;
    :cond_15
    return-void

    .line 8519
    .end local v13    # "printed":Z
    .local v4, "printed":Z
    .restart local v11    # "iterator":Lcom/android/internal/os/BatteryStatsHistoryIterator;
    :catchall_5
    move-exception v0

    move v13, v4

    move-object v1, v0

    :goto_f
    if-eqz v11, :cond_16

    :try_start_7
    invoke-virtual {v11}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto :goto_10

    :catchall_6
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_16
    :goto_10
    throw v1
.end method

.method private blacklist dumpProtoSystemLocked(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryUsageStats;)V
    .locals 57
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "stats"    # Landroid/os/BatteryUsageStats;

    .line 8593
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide v2, 0x10b00000006L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 8594
    .local v8, "sToken":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v10, 0x3e8

    mul-long v12, v2, v10

    .line 8595
    .local v12, "rawUptimeUs":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 8596
    .local v14, "rawRealtimeMs":J
    mul-long v5, v14, v10

    .line 8597
    .local v5, "rawRealtimeUs":J
    const/16 v16, 0x0

    .line 8600
    .local v16, "which":I
    const-wide v2, 0x10b00000001L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 8601
    .local v2, "bToken":J
    move-wide/from16 v17, v10

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v10

    move-wide/from16 v19, v8

    .end local v8    # "sToken":J
    .local v19, "sToken":J
    const-wide v7, 0x10300000001L

    invoke-virtual {v1, v7, v8, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8602
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v4

    const-wide v9, 0x10300000002L

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8603
    nop

    .line 8604
    const/4 v11, 0x0

    invoke-virtual {v0, v5, v6, v11}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v21

    div-long v7, v21, v17

    .line 8603
    const-wide v9, 0x10300000003L

    invoke-virtual {v1, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8605
    nop

    .line 8606
    invoke-virtual {v0, v12, v13, v11}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v7

    div-long v7, v7, v17

    .line 8605
    const-wide v9, 0x10300000004L

    invoke-virtual {v1, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8607
    nop

    .line 8608
    invoke-virtual {v0, v5, v6, v11}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v7

    div-long v7, v7, v17

    .line 8607
    const-wide v9, 0x10300000005L

    invoke-virtual {v1, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8609
    nop

    .line 8610
    invoke-virtual {v0, v12, v13, v11}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v7

    div-long v7, v7, v17

    .line 8609
    const-wide v9, 0x10300000006L

    invoke-virtual {v1, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8611
    nop

    .line 8612
    invoke-virtual {v0, v5, v6, v11}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v7

    div-long v7, v7, v17

    .line 8611
    const-wide v9, 0x10300000007L

    invoke-virtual {v1, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8613
    nop

    .line 8614
    invoke-virtual {v0, v12, v13, v11}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v7

    div-long v7, v7, v17

    .line 8613
    const-wide v9, 0x10300000008L

    invoke-virtual {v1, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8615
    nop

    .line 8616
    invoke-virtual {v0, v5, v6, v11}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v7

    div-long v7, v7, v17

    .line 8615
    const-wide v9, 0x10300000009L

    invoke-virtual {v1, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8617
    nop

    .line 8618
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v4

    .line 8617
    const-wide v7, 0x1030000000aL

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8619
    nop

    .line 8620
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v4

    .line 8619
    const-wide v7, 0x1030000000bL

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8621
    nop

    .line 8622
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getMaxLearnedBatteryCapacity()I

    move-result v4

    .line 8621
    const-wide v7, 0x1030000000cL

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8623
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8626
    const-wide v7, 0x10b00000002L

    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 8627
    .local v7, "bdToken":J
    nop

    .line 8628
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v4

    .line 8627
    const-wide v9, 0x10500000001L

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8629
    nop

    .line 8630
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v4

    .line 8629
    const-wide v9, 0x10500000002L

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8631
    nop

    .line 8632
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v4

    .line 8631
    const-wide v9, 0x10500000003L

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8633
    nop

    .line 8634
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v4

    .line 8633
    const-wide v9, 0x10500000004L

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8635
    nop

    .line 8636
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDozeSinceCharge()I

    move-result v4

    .line 8635
    const-wide v9, 0x10500000005L

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8637
    nop

    .line 8638
    invoke-virtual {v0, v11}, Landroid/os/BatteryStats;->getUahDischarge(I)J

    move-result-wide v9

    div-long v9, v9, v17

    .line 8637
    move-wide/from16 v39, v12

    const-wide v11, 0x10300000006L

    .end local v12    # "rawUptimeUs":J
    .local v39, "rawUptimeUs":J
    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8639
    nop

    .line 8640
    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Landroid/os/BatteryStats;->getUahDischargeScreenOff(I)J

    move-result-wide v9

    div-long v9, v9, v17

    .line 8639
    const-wide v11, 0x10300000007L

    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8641
    nop

    .line 8642
    invoke-virtual {v0, v13}, Landroid/os/BatteryStats;->getUahDischargeScreenDoze(I)J

    move-result-wide v9

    div-long v9, v9, v17

    .line 8641
    const-wide v11, 0x10300000008L

    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8643
    nop

    .line 8644
    invoke-virtual {v0, v13}, Landroid/os/BatteryStats;->getUahDischargeLightDoze(I)J

    move-result-wide v9

    div-long v9, v9, v17

    .line 8643
    const-wide v11, 0x10300000009L

    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8645
    nop

    .line 8646
    invoke-virtual {v0, v13}, Landroid/os/BatteryStats;->getUahDischargeDeepDoze(I)J

    move-result-wide v9

    div-long v9, v9, v17

    .line 8645
    const-wide v11, 0x1030000000aL

    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8647
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8650
    invoke-virtual {v0, v5, v6}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v9

    .line 8652
    .local v9, "timeRemainingUs":J
    const-wide/16 v35, 0x0

    cmp-long v4, v9, v35

    if-ltz v4, :cond_0

    .line 8654
    div-long v11, v9, v17

    move-wide/from16 v43, v14

    const-wide v13, 0x10300000003L

    .end local v14    # "rawRealtimeMs":J
    .local v43, "rawRealtimeMs":J
    invoke-virtual {v1, v13, v14, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    goto :goto_0

    .line 8656
    .end local v43    # "rawRealtimeMs":J
    .restart local v14    # "rawRealtimeMs":J
    :cond_0
    move-wide/from16 v43, v14

    .end local v14    # "rawRealtimeMs":J
    .restart local v43    # "rawRealtimeMs":J
    invoke-virtual {v0, v5, v6}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v9

    .line 8658
    cmp-long v4, v9, v35

    if-ltz v4, :cond_1

    .line 8659
    div-long v11, v9, v17

    const-wide v13, 0x10300000004L

    invoke-virtual {v1, v13, v14, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    goto :goto_0

    .line 8661
    :cond_1
    const-wide v13, 0x10300000004L

    const/4 v4, -0x1

    invoke-virtual {v1, v13, v14, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8666
    :goto_0
    const-wide v11, 0x20b00000005L

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v4

    invoke-static {v1, v11, v12, v4}, Landroid/os/BatteryStats;->dumpDurationSteps(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$LevelStepTracker;)V

    .line 8669
    const/4 v4, 0x0

    move v11, v4

    .local v11, "i":I
    :goto_1
    sget v4, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    const/4 v14, 0x1

    if-ge v11, v4, :cond_6

    .line 8671
    if-nez v11, :cond_2

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    .line 8672
    .local v14, "isNone":Z
    :goto_2
    move v4, v11

    .line 8673
    .local v4, "telephonyNetworkType":I
    sget v15, Landroid/os/BatteryStats;->DATA_CONNECTION_OTHER:I

    if-eq v11, v15, :cond_4

    sget v15, Landroid/os/BatteryStats;->DATA_CONNECTION_EMERGENCY_SERVICE:I

    if-ne v11, v15, :cond_3

    goto :goto_3

    :cond_3
    move v15, v4

    goto :goto_4

    .line 8674
    :cond_4
    :goto_3
    const/4 v4, 0x0

    move v15, v4

    .line 8676
    .end local v4    # "telephonyNetworkType":I
    .local v15, "telephonyNetworkType":I
    :goto_4
    const-wide v12, 0x20b00000008L

    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 8677
    .local v12, "pdcToken":J
    if-eqz v14, :cond_5

    .line 8678
    move-wide/from16 v47, v2

    .end local v2    # "bToken":J
    .local v47, "bToken":J
    const-wide v2, 0x10800000002L

    invoke-virtual {v1, v2, v3, v14}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    goto :goto_5

    .line 8680
    .end local v47    # "bToken":J
    .restart local v2    # "bToken":J
    :cond_5
    move-wide/from16 v47, v2

    .end local v2    # "bToken":J
    .restart local v47    # "bToken":J
    const-wide v2, 0x10e00000001L

    invoke-virtual {v1, v2, v3, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8682
    :goto_5
    invoke-virtual {v0, v11}, Landroid/os/BatteryStats;->getPhoneDataConnectionTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    move-wide v2, v7

    .end local v7    # "bdToken":J
    .local v2, "bdToken":J
    const/4 v7, 0x0

    move-wide/from16 v45, v2

    .end local v2    # "bdToken":J
    .local v45, "bdToken":J
    const-wide v2, 0x10b00000003L

    move v8, v14

    move/from16 v23, v15

    const-wide v14, 0x10300000001L

    .end local v14    # "isNone":Z
    .end local v15    # "telephonyNetworkType":I
    .local v8, "isNone":Z
    .local v23, "telephonyNetworkType":I
    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8684
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8669
    .end local v8    # "isNone":Z
    .end local v12    # "pdcToken":J
    .end local v23    # "telephonyNetworkType":I
    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v7, v45

    move-wide/from16 v2, v47

    goto :goto_1

    .end local v45    # "bdToken":J
    .end local v47    # "bToken":J
    .local v2, "bToken":J
    .restart local v7    # "bdToken":J
    :cond_6
    move-wide/from16 v47, v2

    move-wide/from16 v45, v7

    move v8, v14

    const-wide v2, 0x10e00000001L

    const-wide v14, 0x10300000001L

    .line 8688
    .end local v2    # "bToken":J
    .end local v7    # "bdToken":J
    .end local v11    # "i":I
    .restart local v45    # "bdToken":J
    .restart local v47    # "bToken":J
    const-wide v11, 0x20b00000006L

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v4

    invoke-static {v1, v11, v12, v4}, Landroid/os/BatteryStats;->dumpDurationSteps(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$LevelStepTracker;)V

    .line 8691
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v11

    .line 8692
    .local v11, "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    if-eqz v11, :cond_8

    .line 8693
    invoke-virtual {v11}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v4

    array-length v7, v4

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v7, :cond_8

    aget v12, v4, v13

    .line 8694
    .local v12, "policy":I
    invoke-virtual {v11, v12}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v2

    array-length v3, v2

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v3, :cond_7

    aget v14, v2, v8

    .line 8695
    .local v14, "frequency":I
    move-object v15, v2

    move/from16 v41, v3

    const-wide v2, 0x20300000007L

    invoke-virtual {v1, v2, v3, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8694
    .end local v14    # "frequency":I
    add-int/lit8 v8, v8, 0x1

    move-object v2, v15

    move/from16 v3, v41

    const-wide v14, 0x10300000001L

    goto :goto_7

    .line 8693
    .end local v12    # "policy":I
    :cond_7
    add-int/lit8 v13, v13, 0x1

    const-wide v2, 0x10e00000001L

    const/4 v8, 0x1

    const-wide v14, 0x10300000001L

    goto :goto_6

    .line 8701
    :cond_8
    nop

    .line 8702
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v2

    .line 8701
    const-wide v3, 0x10b00000009L

    const/4 v13, 0x0

    invoke-static {v1, v3, v4, v2, v13}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 8705
    nop

    .line 8706
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v2

    .line 8705
    const-wide v3, 0x10b0000000aL

    invoke-static {v1, v3, v4, v2, v13}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 8709
    const-wide v2, 0x10b0000000cL

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 8710
    .local v14, "gnToken":J
    nop

    .line 8711
    invoke-virtual {v0, v13, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v2

    .line 8710
    const-wide v7, 0x10300000001L

    invoke-virtual {v1, v7, v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8712
    nop

    .line 8713
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v2

    .line 8712
    move-wide/from16 v41, v9

    const-wide v8, 0x10300000002L

    .end local v9    # "timeRemainingUs":J
    .local v41, "timeRemainingUs":J
    invoke-virtual {v1, v8, v9, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8714
    nop

    .line 8715
    invoke-virtual {v0, v13, v13}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v2

    .line 8714
    const-wide v7, 0x10300000005L

    invoke-virtual {v1, v7, v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8716
    nop

    .line 8717
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v13}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v2

    .line 8716
    const-wide v7, 0x10300000006L

    invoke-virtual {v1, v7, v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8718
    nop

    .line 8719
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v2

    .line 8718
    const-wide v9, 0x10300000003L

    invoke-virtual {v1, v9, v10, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8720
    nop

    .line 8721
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v3

    .line 8720
    const-wide v9, 0x10300000004L

    invoke-virtual {v1, v9, v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8722
    nop

    .line 8723
    invoke-virtual {v0, v8, v13}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v3

    .line 8722
    const-wide v9, 0x10300000007L

    invoke-virtual {v1, v9, v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8724
    nop

    .line 8725
    invoke-virtual {v0, v2, v13}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v2

    .line 8724
    const-wide v9, 0x10300000008L

    invoke-virtual {v1, v9, v10, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8726
    nop

    .line 8727
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v2

    .line 8726
    const-wide v9, 0x10300000009L

    invoke-virtual {v1, v9, v10, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8728
    nop

    .line 8729
    const/4 v9, 0x5

    invoke-virtual {v0, v9, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v2

    .line 8728
    const-wide v9, 0x1030000000aL

    invoke-virtual {v1, v9, v10, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8730
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8733
    nop

    .line 8734
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v2

    .line 8733
    const-wide v3, 0x10b0000000bL

    invoke-static {v1, v3, v4, v2, v13}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 8738
    const-wide v2, 0x10b0000000dL

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 8739
    .local v2, "gwToken":J
    nop

    .line 8740
    invoke-virtual {v0, v5, v6, v13}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v32

    div-long v8, v32, v17

    .line 8739
    const-wide v12, 0x10300000001L

    invoke-virtual {v1, v12, v13, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8741
    nop

    .line 8742
    const/4 v13, 0x0

    invoke-virtual {v0, v5, v6, v13}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v7

    move-object v9, v11

    const-wide v10, 0x10e00000001L

    .end local v11    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .local v9, "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    div-long v7, v7, v17

    .line 8741
    const-wide v12, 0x10300000002L

    invoke-virtual {v1, v12, v13, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8743
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8746
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v8

    .line 8747
    .local v8, "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    move-wide/from16 v32, v2

    .end local v2    # "gwToken":J
    .local v32, "gwToken":J
    const-wide v2, 0x10900000001L

    if-eqz v4, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Ljava/util/Map$Entry;

    .line 8748
    .local v13, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    const-wide v10, 0x20b0000000eL

    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 8749
    .local v10, "kwToken":J
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8750
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const/4 v7, 0x0

    const-wide v2, 0x10b00000002L

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8752
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8753
    .end local v10    # "kwToken":J
    .end local v13    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    move-wide/from16 v2, v32

    const-wide v10, 0x10e00000001L

    goto :goto_8

    .line 8757
    :cond_9
    const-wide/16 v10, 0x0

    .line 8758
    .local v10, "fullWakeLockTimeTotalUs":J
    const-wide/16 v12, 0x0

    .line 8760
    .local v12, "partialWakeLockTimeTotalUs":J
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v4

    .line 8761
    .local v4, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    const/4 v7, 0x0

    move-wide/from16 v51, v12

    .end local v12    # "partialWakeLockTimeTotalUs":J
    .local v7, "iu":I
    .local v51, "partialWakeLockTimeTotalUs":J
    :goto_9
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v7, v12, :cond_d

    .line 8762
    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/BatteryStats$Uid;

    .line 8764
    .local v12, "u":Landroid/os/BatteryStats$Uid;
    nop

    .line 8765
    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v13

    .line 8766
    .local v13, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v24

    const/4 v2, 0x1

    add-int/lit8 v24, v24, -0x1

    move/from16 v3, v24

    .local v3, "iw":I
    :goto_a
    if-ltz v3, :cond_c

    .line 8767
    invoke-virtual {v13, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    move/from16 v34, v3

    .end local v3    # "iw":I
    .local v34, "iw":I
    move-object/from16 v3, v24

    check-cast v3, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 8769
    .local v3, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    move-object/from16 v24, v4

    .end local v4    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v24, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual {v3, v2}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    .line 8770
    .local v4, "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v4, :cond_a

    .line 8771
    const/4 v2, 0x0

    invoke-virtual {v4, v5, v6, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v55

    add-long v10, v10, v55

    goto :goto_b

    .line 8770
    :cond_a
    const/4 v2, 0x0

    .line 8775
    :goto_b
    move-object/from16 v35, v4

    .end local v4    # "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    .local v35, "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v3, v2}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    .line 8776
    .local v4, "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v4, :cond_b

    .line 8777
    invoke-virtual {v4, v5, v6, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v55

    move-object v2, v13

    .end local v13    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .local v2, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    add-long v51, v51, v55

    goto :goto_c

    .line 8776
    .end local v2    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .restart local v13    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_b
    move-object v2, v13

    .line 8766
    .end local v3    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v4    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    .end local v13    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v35    # "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    .restart local v2    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :goto_c
    add-int/lit8 v3, v34, -0x1

    move-object v13, v2

    move-object/from16 v4, v24

    const/4 v2, 0x1

    .end local v34    # "iw":I
    .local v3, "iw":I
    goto :goto_a

    .end local v2    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v24    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v4, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v13    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_c
    move/from16 v34, v3

    move-object/from16 v24, v4

    move-object v2, v13

    .line 8761
    .end local v3    # "iw":I
    .end local v4    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v12    # "u":Landroid/os/BatteryStats$Uid;
    .end local v13    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .restart local v24    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    add-int/lit8 v7, v7, 0x1

    const-wide v2, 0x10900000001L

    goto :goto_9

    .end local v24    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v4    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    :cond_d
    move-object/from16 v24, v4

    .line 8782
    .end local v4    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v7    # "iu":I
    .restart local v24    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    const-wide v2, 0x10b0000000fL

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 8783
    .local v2, "mToken":J
    nop

    .line 8784
    const/4 v13, 0x0

    invoke-virtual {v0, v5, v6, v13}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v34

    move-wide/from16 v55, v14

    .end local v14    # "gnToken":J
    .local v55, "gnToken":J
    div-long v13, v34, v17

    .line 8783
    move-object/from16 v34, v8

    const-wide v7, 0x10300000001L

    .end local v8    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v34, "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v1, v7, v8, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8785
    nop

    .line 8786
    const/4 v13, 0x0

    invoke-virtual {v0, v5, v6, v13}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v7

    div-long v7, v7, v17

    .line 8785
    const-wide v14, 0x10300000002L

    invoke-virtual {v1, v14, v15, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8787
    div-long v7, v10, v17

    const-wide v14, 0x10300000003L

    invoke-virtual {v1, v14, v15, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8789
    div-long v7, v51, v17

    const-wide v14, 0x10300000004L

    invoke-virtual {v1, v14, v15, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8791
    nop

    .line 8792
    const/4 v13, 0x0

    invoke-virtual {v0, v5, v6, v13}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v7

    div-long v7, v7, v17

    .line 8791
    const-wide v14, 0x10300000005L

    invoke-virtual {v1, v14, v15, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8793
    nop

    .line 8794
    invoke-virtual {v0, v13}, Landroid/os/BatteryStats;->getMobileRadioActiveAdjustedTime(I)J

    move-result-wide v7

    div-long v7, v7, v17

    .line 8793
    const-wide v14, 0x10300000006L

    invoke-virtual {v1, v14, v15, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8795
    nop

    .line 8796
    invoke-virtual {v0, v13}, Landroid/os/BatteryStats;->getMobileRadioActiveCount(I)I

    move-result v4

    .line 8795
    const-wide v7, 0x10500000007L

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8797
    nop

    .line 8798
    invoke-virtual {v0, v13}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownTime(I)J

    move-result-wide v7

    div-long v7, v7, v17

    .line 8797
    const-wide v14, 0x10500000008L

    invoke-virtual {v1, v14, v15, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8799
    nop

    .line 8800
    invoke-virtual {v0, v5, v6, v13}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v7

    div-long v7, v7, v17

    .line 8799
    const-wide v14, 0x10300000009L

    invoke-virtual {v1, v14, v15, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8801
    nop

    .line 8802
    invoke-virtual {v0, v5, v6, v13}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v7

    div-long v7, v7, v17

    .line 8801
    const-wide v14, 0x1030000000aL

    invoke-virtual {v1, v14, v15, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8803
    nop

    .line 8804
    invoke-virtual {v0, v13}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v4

    .line 8803
    const-wide v7, 0x1050000000bL

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8805
    nop

    .line 8806
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v5, v6, v13}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v7

    div-long v7, v7, v17

    .line 8805
    const-wide v14, 0x1030000000cL

    invoke-virtual {v1, v14, v15, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8807
    nop

    .line 8808
    invoke-virtual {v0, v4, v13}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v7

    .line 8807
    const-wide v14, 0x1050000000dL

    invoke-virtual {v1, v14, v15, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8809
    nop

    .line 8810
    invoke-virtual {v0, v4, v5, v6, v13}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v7

    div-long v7, v7, v17

    .line 8809
    const-wide v14, 0x1030000000eL

    invoke-virtual {v1, v14, v15, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8811
    nop

    .line 8812
    invoke-virtual {v0, v4, v13}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v7

    .line 8811
    const-wide v14, 0x1050000000fL

    invoke-virtual {v1, v14, v15, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8813
    nop

    .line 8814
    invoke-virtual {v0, v4}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v7

    .line 8813
    const-wide v14, 0x10300000010L

    invoke-virtual {v1, v14, v15, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8815
    nop

    .line 8816
    const/4 v8, 0x1

    const/4 v13, 0x0

    invoke-virtual {v0, v8, v5, v6, v13}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v14

    div-long v14, v14, v17

    .line 8815
    move-object/from16 v21, v9

    .end local v9    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .local v21, "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    const-wide v8, 0x10300000011L

    invoke-virtual {v1, v8, v9, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8817
    nop

    .line 8818
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v13}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v4

    .line 8817
    const-wide v14, 0x10500000012L

    invoke-virtual {v1, v14, v15, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8819
    nop

    .line 8820
    invoke-virtual {v0, v8, v5, v6, v13}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v14

    div-long v14, v14, v17

    .line 8819
    const-wide v8, 0x10300000013L

    invoke-virtual {v1, v8, v9, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8821
    nop

    .line 8822
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v13}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v4

    .line 8821
    const-wide v14, 0x10500000014L

    invoke-virtual {v1, v14, v15, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8823
    nop

    .line 8824
    invoke-virtual {v0, v8}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v7

    .line 8823
    const-wide v14, 0x10300000015L

    invoke-virtual {v1, v14, v15, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8825
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8828
    nop

    .line 8829
    const/4 v13, 0x0

    invoke-virtual {v0, v5, v6, v13}, Landroid/os/BatteryStats;->getWifiMulticastWakelockTime(JI)J

    move-result-wide v8

    .line 8830
    .local v8, "multicastWakeLockTimeTotalUs":J
    invoke-virtual {v0, v13}, Landroid/os/BatteryStats;->getWifiMulticastWakelockCount(I)I

    move-result v14

    .line 8831
    .local v14, "multicastWakeLockCountTotal":I
    move v15, v14

    .end local v14    # "multicastWakeLockCountTotal":I
    .local v15, "multicastWakeLockCountTotal":I
    const-wide v13, 0x10b00000017L

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 8832
    .local v12, "wmctToken":J
    move-wide/from16 v25, v2

    .end local v2    # "mToken":J
    .local v25, "mToken":J
    div-long v2, v8, v17

    move-wide/from16 v17, v5

    const-wide v4, 0x10300000001L

    .end local v5    # "rawRealtimeUs":J
    .local v17, "rawRealtimeUs":J
    invoke-virtual {v1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8834
    const-wide v2, 0x10500000002L

    invoke-virtual {v1, v2, v3, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8836
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8838
    move-object/from16 v14, p2

    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/AggregateBatteryConsumer;

    move-result-object v3

    .line 8841
    move-wide/from16 v27, v12

    .end local v12    # "wmctToken":J
    .local v3, "deviceConsumer":Landroid/os/BatteryConsumer;
    .local v27, "wmctToken":J
    const/4 v2, 0x0

    .local v2, "powerComponent":I
    :goto_d
    const/16 v4, 0x13

    if-ge v2, v4, :cond_e

    .line 8843
    const/4 v4, 0x0

    .line 8844
    .local v4, "n":I
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_e

    .line 8849
    :pswitch_1
    const/4 v4, 0x1

    .line 8850
    goto :goto_e

    .line 8846
    :pswitch_2
    const/16 v4, 0xd

    .line 8847
    goto :goto_e

    .line 8855
    :pswitch_3
    const/4 v4, 0x3

    .line 8856
    goto :goto_e

    .line 8873
    :pswitch_4
    const/16 v4, 0xc

    goto :goto_e

    .line 8858
    :pswitch_5
    const/4 v4, 0x4

    .line 8859
    goto :goto_e

    .line 8852
    :pswitch_6
    const/4 v4, 0x2

    .line 8853
    goto :goto_e

    .line 8867
    :pswitch_7
    const/4 v4, 0x6

    .line 8868
    goto :goto_e

    .line 8870
    :pswitch_8
    const/16 v4, 0xb

    .line 8871
    goto :goto_e

    .line 8861
    :pswitch_9
    const/4 v4, 0x5

    .line 8862
    goto :goto_e

    .line 8864
    :pswitch_a
    const/4 v4, 0x7

    .line 8865
    nop

    .line 8876
    :goto_e
    const-wide v5, 0x20b00000011L

    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 8877
    .local v5, "puiToken":J
    const-wide v13, 0x10e00000001L

    invoke-virtual {v1, v13, v14, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8878
    move-wide/from16 v29, v8

    const-wide v7, 0x10500000002L

    const/4 v13, 0x0

    .end local v8    # "multicastWakeLockTimeTotalUs":J
    .local v29, "multicastWakeLockTimeTotalUs":J
    invoke-virtual {v1, v7, v8, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8879
    nop

    .line 8880
    invoke-virtual {v3, v2}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    move-result-wide v7

    .line 8879
    const-wide v13, 0x10100000003L

    invoke-virtual {v1, v13, v14, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 8881
    nop

    .line 8882
    invoke-direct {v0, v2}, Landroid/os/BatteryStats;->shouldHidePowerComponent(I)Z

    move-result v7

    .line 8881
    const-wide v8, 0x10800000004L

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 8883
    const-wide v7, 0x10100000005L

    const/4 v13, 0x0

    invoke-virtual {v1, v7, v8, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8884
    const-wide v7, 0x10100000006L

    invoke-virtual {v1, v7, v8, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8885
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8842
    .end local v4    # "n":I
    .end local v5    # "puiToken":J
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v14, p2

    move-wide/from16 v8, v29

    goto :goto_d

    .line 8841
    .end local v29    # "multicastWakeLockTimeTotalUs":J
    .restart local v8    # "multicastWakeLockTimeTotalUs":J
    :cond_e
    move-wide/from16 v29, v8

    .line 8889
    .end local v2    # "powerComponent":I
    .end local v8    # "multicastWakeLockTimeTotalUs":J
    .restart local v29    # "multicastWakeLockTimeTotalUs":J
    const-wide v4, 0x10b00000012L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 8890
    .local v8, "pusToken":J
    nop

    .line 8891
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getBatteryCapacity()D

    move-result-wide v4

    .line 8890
    const-wide v6, 0x10100000001L

    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 8892
    const-wide v4, 0x10100000002L

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getConsumedPower()D

    move-result-wide v6

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 8893
    nop

    .line 8894
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getDischargedPowerRange()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 8893
    const-wide v6, 0x10100000003L

    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 8895
    nop

    .line 8896
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getDischargedPowerRange()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 8895
    const-wide v6, 0x10100000004L

    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 8897
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8900
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getRpmStats()Ljava/util/Map;

    move-result-object v13

    .line 8901
    .local v13, "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getScreenOffRpmStats()Ljava/util/Map;

    move-result-object v14

    .line 8902
    .local v14, "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Ljava/util/Map$Entry;

    .line 8903
    .local v22, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    const-wide v4, 0x20b00000013L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 8904
    .local v4, "rpmToken":J
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-wide v6, 0x10900000001L

    invoke-virtual {v1, v6, v7, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8905
    nop

    .line 8906
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Timer;

    .line 8905
    move-object/from16 v31, v3

    move-wide/from16 v35, v4

    move-object v4, v2

    .end local v3    # "deviceConsumer":Landroid/os/BatteryConsumer;
    .end local v4    # "rpmToken":J
    .local v31, "deviceConsumer":Landroid/os/BatteryConsumer;
    .local v35, "rpmToken":J
    const-wide v2, 0x10b00000002L

    move-wide/from16 v53, v6

    const/4 v7, 0x0

    move-wide/from16 v5, v17

    move-wide/from16 v17, v8

    move-wide/from16 v8, v35

    move-wide/from16 v35, v10

    move-wide/from16 v10, v53

    .end local v10    # "fullWakeLockTimeTotalUs":J
    .local v5, "rawRealtimeUs":J
    .local v8, "rpmToken":J
    .local v17, "pusToken":J
    .local v35, "fullWakeLockTimeTotalUs":J
    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8907
    nop

    .line 8908
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/BatteryStats$Timer;

    .line 8907
    const-wide v2, 0x10b00000003L

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8909
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8910
    .end local v8    # "rpmToken":J
    .end local v22    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    move-wide/from16 v8, v17

    move-object/from16 v3, v31

    move-wide/from16 v10, v35

    move-wide/from16 v17, v5

    goto :goto_f

    .line 8913
    .end local v5    # "rawRealtimeUs":J
    .end local v31    # "deviceConsumer":Landroid/os/BatteryConsumer;
    .end local v35    # "fullWakeLockTimeTotalUs":J
    .restart local v3    # "deviceConsumer":Landroid/os/BatteryConsumer;
    .local v8, "pusToken":J
    .restart local v10    # "fullWakeLockTimeTotalUs":J
    .local v17, "rawRealtimeUs":J
    :cond_f
    move-object/from16 v31, v3

    move-wide/from16 v35, v10

    move-wide/from16 v5, v17

    const-wide v10, 0x10900000001L

    move-wide/from16 v17, v8

    .end local v3    # "deviceConsumer":Landroid/os/BatteryConsumer;
    .end local v8    # "pusToken":J
    .end local v10    # "fullWakeLockTimeTotalUs":J
    .restart local v5    # "rawRealtimeUs":J
    .local v17, "pusToken":J
    .restart local v31    # "deviceConsumer":Landroid/os/BatteryConsumer;
    .restart local v35    # "fullWakeLockTimeTotalUs":J
    const/4 v2, 0x0

    move v8, v2

    .local v8, "i":I
    :goto_10
    const/4 v12, 0x5

    if-ge v8, v12, :cond_10

    .line 8914
    const-wide v2, 0x20b00000014L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 8915
    .local v2, "sbToken":J
    move-object v9, v13

    const-wide v12, 0x10e00000001L

    .end local v13    # "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v9, "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v1, v12, v13, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8916
    invoke-virtual {v0, v8}, Landroid/os/BatteryStats;->getScreenBrightnessTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    move-wide v12, v2

    .end local v2    # "sbToken":J
    .local v12, "sbToken":J
    const-wide v2, 0x10b00000002L

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8918
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8913
    .end local v12    # "sbToken":J
    add-int/lit8 v8, v8, 0x1

    move-object v13, v9

    goto :goto_10

    .end local v9    # "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v13    # "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_10
    move-object v9, v13

    .line 8922
    .end local v8    # "i":I
    .end local v13    # "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v9    # "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getPhoneSignalScanningTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    const-wide v2, 0x10b00000015L

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8926
    const/4 v2, 0x0

    move v8, v2

    .restart local v8    # "i":I
    :goto_11
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v2

    if-ge v8, v2, :cond_11

    .line 8927
    const-wide v2, 0x20b00000010L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 8928
    .local v12, "pssToken":J
    const-wide v2, 0x10e00000001L

    invoke-virtual {v1, v2, v3, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8929
    invoke-virtual {v0, v8}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    const-wide v2, 0x10b00000002L

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8931
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8926
    .end local v12    # "pssToken":J
    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    .line 8935
    .end local v8    # "i":I
    :cond_11
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v8

    .line 8936
    .local v8, "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_12
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Ljava/util/Map$Entry;

    .line 8937
    .local v13, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    const-wide v2, 0x20b00000016L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 8938
    .local v2, "wrToken":J
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v10, v11, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8939
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const/4 v7, 0x0

    move-wide/from16 v37, v2

    .end local v2    # "wrToken":J
    .local v37, "wrToken":J
    const-wide v2, 0x10b00000002L

    move-wide/from16 v10, v37

    .end local v37    # "wrToken":J
    .local v10, "wrToken":J
    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8940
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8941
    .end local v10    # "wrToken":J
    .end local v13    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    const-wide v10, 0x10900000001L

    goto :goto_12

    .line 8944
    :cond_12
    const/4 v2, 0x0

    move v10, v2

    .local v10, "i":I
    :goto_13
    const/4 v12, 0x5

    if-ge v10, v12, :cond_13

    .line 8945
    const-wide v2, 0x20b00000018L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 8946
    .local v2, "wssToken":J
    const-wide v12, 0x10e00000001L

    invoke-virtual {v1, v12, v13, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8947
    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getWifiSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    move-wide v11, v2

    .end local v2    # "wssToken":J
    .local v11, "wssToken":J
    const-wide v2, 0x10b00000002L

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8949
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8944
    .end local v11    # "wssToken":J
    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    .line 8953
    .end local v10    # "i":I
    :cond_13
    const/4 v2, 0x0

    move v10, v2

    .restart local v10    # "i":I
    :goto_14
    const/16 v2, 0x8

    if-ge v10, v2, :cond_14

    .line 8954
    const-wide v2, 0x20b00000019L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 8955
    .local v11, "wsToken":J
    const-wide v2, 0x10e00000001L

    invoke-virtual {v1, v2, v3, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8956
    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getWifiStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    const-wide v2, 0x10b00000002L

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8958
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8953
    .end local v11    # "wsToken":J
    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    .line 8962
    .end local v10    # "i":I
    :cond_14
    const/4 v2, 0x0

    move v10, v2

    .restart local v10    # "i":I
    :goto_15
    const/16 v2, 0xd

    if-ge v10, v2, :cond_15

    .line 8963
    const-wide v2, 0x20b0000001aL

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 8964
    .local v11, "wssToken":J
    const-wide v2, 0x10e00000001L

    invoke-virtual {v1, v2, v3, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8965
    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getWifiSupplStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    move-wide/from16 v49, v2

    const-wide v2, 0x10b00000002L

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8967
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8962
    .end local v11    # "wssToken":J
    add-int/lit8 v10, v10, 0x1

    goto :goto_15

    .line 8970
    .end local v10    # "i":I
    :cond_15
    move-wide/from16 v2, v19

    .end local v19    # "sToken":J
    .local v2, "sToken":J
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8971
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static greylist-max-o dumpTimeEstimate(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "label1"    # Ljava/lang/String;
    .param p2, "label2"    # Ljava/lang/String;
    .param p3, "label3"    # Ljava/lang/String;
    .param p4, "estimatedTime"    # J

    .line 7422
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_0

    .line 7423
    const/4 v0, 0x0

    return v0

    .line 7425
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7426
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7427
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7428
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7429
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {v0, p4, p5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 7430
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 7431
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 7432
    const/4 v1, 0x1

    return v1
.end method

.method private static greylist-max-o dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V
    .locals 19
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p4, "rawRealtimeUs"    # J
    .param p6, "which"    # I

    .line 4043
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    if-nez v1, :cond_0

    .line 4044
    return-void

    .line 4047
    :cond_0
    invoke-virtual/range {p3 .. p6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v2

    .line 4048
    .local v2, "timeMs":J
    move/from16 v4, p6

    invoke-virtual {v1, v4}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    .line 4049
    .local v5, "count":I
    const-wide/16 v6, 0x3e8

    div-long v8, p4, v6

    invoke-virtual {v1, v8, v9}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v8

    .line 4050
    .local v8, "maxDurationMs":J
    div-long v10, p4, v6

    invoke-virtual {v1, v10, v11}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v10

    .line 4051
    .local v10, "curDurationMs":J
    div-long v6, p4, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v6

    .line 4052
    .local v6, "totalDurationMs":J
    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    const-wide/16 v13, -0x1

    if-nez v12, :cond_1

    if-nez v5, :cond_1

    cmp-long v12, v8, v13

    if-nez v12, :cond_1

    cmp-long v12, v10, v13

    if-nez v12, :cond_1

    cmp-long v12, v6, v13

    if-eqz v12, :cond_5

    .line 4054
    :cond_1
    move-wide v15, v13

    invoke-virtual/range {p0 .. p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 4055
    .local v13, "token":J
    move-wide/from16 v17, v13

    .end local v13    # "token":J
    .local v17, "token":J
    const-wide v12, 0x10300000001L

    invoke-virtual {v0, v12, v13, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4056
    const-wide v12, 0x10300000002L

    invoke-virtual {v0, v12, v13, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4058
    cmp-long v12, v8, v15

    if-eqz v12, :cond_2

    .line 4059
    const-wide v12, 0x10300000003L

    invoke-virtual {v0, v12, v13, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4061
    :cond_2
    cmp-long v12, v10, v15

    if-eqz v12, :cond_3

    .line 4062
    const-wide v12, 0x10300000004L

    invoke-virtual {v0, v12, v13, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4064
    :cond_3
    cmp-long v12, v6, v15

    if-eqz v12, :cond_4

    .line 4065
    const-wide v12, 0x10300000005L

    invoke-virtual {v0, v12, v13, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4067
    :cond_4
    move-wide/from16 v12, v17

    .end local v17    # "token":J
    .local v12, "token":J
    invoke-virtual {v0, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4069
    .end local v12    # "token":J
    :cond_5
    return-void
.end method

.method private static final greylist-max-o dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V
    .locals 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "uid"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p5, "rawRealtime"    # J
    .param p7, "which"    # I

    .line 4022
    if-eqz p4, :cond_1

    .line 4024
    invoke-virtual {p4, p5, p6, p7}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v0

    .line 4025
    .local v0, "totalTime":J
    invoke-virtual {p4, p7}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v2

    .line 4026
    .local v2, "count":I
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    .line 4027
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, p1, p2, p3, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4030
    .end local v0    # "totalTime":J
    .end local v2    # "count":I
    :cond_1
    return-void
.end method

.method public static blacklist formatCharge(D)Ljava/lang/String;
    .locals 1
    .param p0, "power"    # D

    .line 3781
    invoke-static {p0, p1}, Landroid/os/BatteryStats;->formatValue(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final greylist-max-o formatTimeMs(Ljava/lang/StringBuilder;J)V
    .locals 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "time"    # J

    .line 3737
    const-wide/16 v0, 0x3e8

    div-long v2, p1, v0

    .line 3738
    .local v2, "sec":J
    invoke-static {p0, v2, v3}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    .line 3739
    mul-long/2addr v0, v2

    sub-long v0, p1, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3740
    const-string/jumbo v0, "ms "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3741
    return-void
.end method

.method public static final greylist-max-o formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V
    .locals 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "time"    # J

    .line 3744
    const-wide/16 v0, 0x3e8

    div-long v2, p1, v0

    .line 3745
    .local v2, "sec":J
    invoke-static {p0, v2, v3}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    .line 3746
    mul-long/2addr v0, v2

    sub-long v0, p1, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3747
    const-string/jumbo v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3748
    return-void
.end method

.method private static final greylist-max-o formatTimeRaw(Ljava/lang/StringBuilder;J)V
    .locals 13
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "seconds"    # J

    .line 3709
    const-wide/32 v0, 0x15180

    div-long v0, p1, v0

    .line 3710
    .local v0, "days":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 3711
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3712
    const-string v4, "d "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3714
    :cond_0
    const-wide/16 v4, 0x3c

    mul-long v6, v0, v4

    mul-long/2addr v6, v4

    const-wide/16 v8, 0x18

    mul-long/2addr v6, v8

    .line 3716
    .local v6, "used":J
    sub-long v8, p1, v6

    const-wide/16 v10, 0xe10

    div-long/2addr v8, v10

    .line 3717
    .local v8, "hours":J
    cmp-long v10, v8, v2

    if-nez v10, :cond_1

    cmp-long v10, v6, v2

    if-eqz v10, :cond_2

    .line 3718
    :cond_1
    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3719
    const-string/jumbo v10, "h "

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3721
    :cond_2
    mul-long v10, v8, v4

    mul-long/2addr v10, v4

    add-long/2addr v6, v10

    .line 3723
    sub-long v10, p1, v6

    div-long/2addr v10, v4

    .line 3724
    .local v10, "mins":J
    cmp-long v12, v10, v2

    if-nez v12, :cond_3

    cmp-long v12, v6, v2

    if-eqz v12, :cond_4

    .line 3725
    :cond_3
    invoke-virtual {p0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3726
    const-string/jumbo v12, "m "

    invoke-virtual {p0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3728
    :cond_4
    mul-long/2addr v4, v10

    add-long/2addr v6, v4

    .line 3730
    cmp-long v4, p1, v2

    if-nez v4, :cond_5

    cmp-long v2, v6, v2

    if-eqz v2, :cond_6

    .line 3731
    :cond_5
    sub-long v2, p1, v6

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3732
    const-string/jumbo v2, "s "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3734
    :cond_6
    return-void
.end method

.method private static blacklist formatValue(D)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # D

    .line 3788
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_0

    const-string v0, "0"

    return-object v0

    .line 3791
    :cond_0
    const-wide v0, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    .line 3792
    const-string v0, "%.8f"

    .local v0, "format":Ljava/lang/String;
    goto :goto_0

    .line 3793
    .end local v0    # "format":Ljava/lang/String;
    :cond_1
    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, p0, v0

    if-gez v0, :cond_2

    .line 3794
    const-string v0, "%.7f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_0

    .line 3795
    .end local v0    # "format":Ljava/lang/String;
    :cond_2
    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, p0, v0

    if-gez v0, :cond_3

    .line 3796
    const-string v0, "%.6f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_0

    .line 3797
    .end local v0    # "format":Ljava/lang/String;
    :cond_3
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, p0, v0

    if-gez v0, :cond_4

    .line 3798
    const-string v0, "%.5f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_0

    .line 3799
    .end local v0    # "format":Ljava/lang/String;
    :cond_4
    const-wide v0, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, p0, v0

    if-gez v0, :cond_5

    .line 3800
    const-string v0, "%.4f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_0

    .line 3801
    .end local v0    # "format":Ljava/lang/String;
    :cond_5
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_6

    .line 3802
    const-string v0, "%.3f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_0

    .line 3803
    .end local v0    # "format":Ljava/lang/String;
    :cond_6
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_7

    .line 3804
    const-string v0, "%.2f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_0

    .line 3805
    .end local v0    # "format":Ljava/lang/String;
    :cond_7
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_8

    .line 3806
    const-string v0, "%.1f"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_0

    .line 3808
    .end local v0    # "format":Ljava/lang/String;
    :cond_8
    const-string v0, "%.0f"

    .line 3812
    .restart local v0    # "format":Ljava/lang/String;
    :goto_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getAllNetworkTypesCount()I
    .locals 4

    .line 2771
    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v0

    array-length v0, v0

    .line 2772
    .local v0, "count":I
    sget-object v1, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v2, v0, 0x3

    if-ne v1, v2, :cond_0

    .line 2777
    return v0

    .line 2773
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DATA_CONNECTION_NAMES length does not match network type count. Expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actual:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist getAllNetworkTypesCount$ravenwood()I
    .locals 1

    .line 2781
    sget-object v0, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x3

    return v0
.end method

.method protected static blacklist getCellSignalStrengthLevelCount()I
    .locals 1

    .line 9141
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v0

    return v0
.end method

.method protected static blacklist getCellSignalStrengthLevelCount$ravenwood()I
    .locals 1

    .line 9145
    const/4 v0, 0x5

    return v0
.end method

.method protected static blacklist getDisplayTransport([I)I
    .locals 1
    .param p0, "transports"    # [I

    .line 9170
    invoke-static {p0}, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->getDisplayTransport([I)I

    move-result v0

    return v0
.end method

.method protected static blacklist getDisplayTransport$ravenwood([I)I
    .locals 8
    .param p0, "transports"    # [I

    .line 9185
    sget-object v0, Landroid/os/BatteryStats;->DISPLAY_TRANSPORT_PRIORITIES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget v4, v0, v3

    .line 9186
    .local v4, "transport":I
    array-length v5, p0

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    aget v7, p0, v6

    .line 9187
    .local v7, "t":I
    if-ne v7, v4, :cond_0

    .line 9188
    return v4

    .line 9186
    .end local v7    # "t":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 9185
    .end local v4    # "transport":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9192
    :cond_2
    aget v0, p0, v2

    return v0
.end method

.method protected static blacklist getModemTxPowerLevelCount()I
    .locals 1

    .line 9151
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v0

    return v0
.end method

.method protected static blacklist getModemTxPowerLevelCount$ravenwood()I
    .locals 1

    .line 9155
    const/4 v0, 0x5

    return v0
.end method

.method private blacklist getUidMobileRadioStats(Ljava/util/List;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/UidBatteryConsumer;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/BatteryStats$UidMobileRadioStats;",
            ">;"
        }
    .end annotation

    .line 9092
    .local p1, "uidBatteryConsumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v0

    .line 9093
    .local v0, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 9094
    .local v1, "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 9095
    move-object/from16 v3, p1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UidBatteryConsumer;

    .line 9096
    .local v4, "consumer":Landroid/os/UidBatteryConsumer;
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/os/UidBatteryConsumer;->getConsumedPower(I)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_0

    .line 9097
    move v6, v2

    goto :goto_1

    .line 9100
    :cond_0
    invoke-virtual {v4}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v10

    .line 9101
    .local v10, "uid":I
    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid;

    .line 9102
    .local v5, "u":Landroid/os/BatteryStats$Uid;
    if-nez v5, :cond_1

    .line 9103
    move v6, v2

    goto :goto_1

    .line 9106
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v11

    .line 9108
    .local v11, "rxPackets":J
    const/4 v9, 0x1

    invoke-virtual {v5, v9, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v13

    .line 9110
    .local v13, "txPackets":J
    const-wide/16 v15, 0x0

    cmp-long v9, v11, v15

    if-nez v9, :cond_2

    cmp-long v9, v13, v15

    if-nez v9, :cond_2

    .line 9111
    move v6, v2

    goto :goto_1

    .line 9113
    :cond_2
    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v15

    const-wide/16 v17, 0x3e8

    move-wide/from16 v19, v7

    div-long v7, v15, v17

    .line 9114
    .local v7, "radioActiveMs":J
    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v17

    .line 9115
    .local v17, "radioActiveCount":I
    move v6, v2

    .end local v2    # "i":I
    .local v6, "i":I
    long-to-double v2, v7

    move-wide v15, v2

    add-long v2, v11, v13

    long-to-double v2, v2

    div-double v2, v15, v2

    .line 9116
    .local v2, "msPerPacket":D
    cmpl-double v9, v2, v19

    if-nez v9, :cond_3

    .line 9117
    goto :goto_1

    .line 9119
    :cond_3
    new-instance v9, Landroid/os/BatteryStats$UidMobileRadioStats;

    const/16 v20, 0x0

    move-wide/from16 v18, v2

    move-wide v15, v7

    .end local v2    # "msPerPacket":D
    .end local v7    # "radioActiveMs":J
    .local v15, "radioActiveMs":J
    .local v18, "msPerPacket":D
    invoke-direct/range {v9 .. v20}, Landroid/os/BatteryStats$UidMobileRadioStats;-><init>(IJJJIDLandroid/os/BatteryStats-IA;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9094
    .end local v4    # "consumer":Landroid/os/UidBatteryConsumer;
    .end local v5    # "u":Landroid/os/BatteryStats$Uid;
    .end local v10    # "uid":I
    .end local v11    # "rxPackets":J
    .end local v13    # "txPackets":J
    .end local v15    # "radioActiveMs":J
    .end local v17    # "radioActiveCount":I
    .end local v18    # "msPerPacket":D
    :goto_1
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "i":I
    .local v2, "i":I
    goto :goto_0

    :cond_4
    move v6, v2

    .line 9123
    .end local v2    # "i":I
    new-instance v2, Landroid/os/BatteryStats$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/os/BatteryStats$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 9125
    return-object v1
.end method

.method protected static blacklist isKernelStatsAvailable()Z
    .locals 1

    .line 9161
    const/4 v0, 0x1

    return v0
.end method

.method protected static blacklist isKernelStatsAvailable$ravenwood()Z
    .locals 1

    .line 9165
    const/4 v0, 0x0

    return v0
.end method

.method protected static blacklist isLowRamDevice()Z
    .locals 1

    .line 9131
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    return v0
.end method

.method protected static blacklist isLowRamDevice$ravenwood()Z
    .locals 1

    .line 9135
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic blacklist lambda$getUidMobileRadioStats$0(Landroid/os/BatteryStats$UidMobileRadioStats;Landroid/os/BatteryStats$UidMobileRadioStats;)I
    .locals 4
    .param p0, "lhs"    # Landroid/os/BatteryStats$UidMobileRadioStats;
    .param p1, "rhs"    # Landroid/os/BatteryStats$UidMobileRadioStats;

    .line 9124
    iget-wide v0, p1, Landroid/os/BatteryStats$UidMobileRadioStats;->millisecondsPerPacket:D

    iget-wide v2, p0, Landroid/os/BatteryStats$UidMobileRadioStats;->millisecondsPerPacket:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o mapToInternalProcessState(I)I
    .locals 5
    .param p0, "procState"    # I

    .line 663
    const/16 v0, 0x14

    if-ne p0, v0, :cond_0

    .line 664
    const/4 v0, 0x7

    return v0

    .line 665
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 666
    const/4 v0, 0x0

    return v0

    .line 667
    :cond_1
    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    .line 668
    return v1

    .line 669
    :cond_2
    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne p0, v3, :cond_3

    .line 670
    return v2

    .line 671
    :cond_3
    const/4 v4, 0x5

    if-ne p0, v4, :cond_4

    .line 672
    return v2

    .line 673
    :cond_4
    const/4 v2, 0x6

    if-gt p0, v2, :cond_5

    .line 675
    return v0

    .line 676
    :cond_5
    const/16 v0, 0xb

    if-gt p0, v0, :cond_6

    .line 677
    return v1

    .line 678
    :cond_6
    const/16 v0, 0xc

    if-gt p0, v0, :cond_7

    .line 679
    return v3

    .line 680
    :cond_7
    const/16 v0, 0xd

    if-gt p0, v0, :cond_8

    .line 681
    return v4

    .line 683
    :cond_8
    return v2
.end method

.method public static blacklist mapUidProcessStateToBatteryConsumerProcessState(I)I
    .locals 1
    .param p0, "processState"    # I

    .line 692
    packed-switch p0, :pswitch_data_0

    .line 704
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 702
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 698
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 700
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 695
    :pswitch_4
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static greylist-max-o printBitDescriptions(Ljava/lang/StringBuilder;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V
    .locals 10
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "oldval"    # I
    .param p2, "newval"    # I
    .param p3, "wakelockTag"    # Landroid/os/BatteryStats$HistoryTag;
    .param p4, "descriptions"    # [Landroid/os/BatteryStats$BitDescription;
    .param p5, "longNames"    # Z

    .line 6881
    xor-int v0, p1, p2

    .line 6882
    .local v0, "diff":I
    if-nez v0, :cond_0

    return-void

    .line 6883
    :cond_0
    const/4 v1, 0x0

    .line 6884
    .local v1, "didWake":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p4

    const/4 v4, -0x1

    const-string v5, ":\""

    const-string v6, "\""

    if-ge v2, v3, :cond_c

    .line 6885
    aget-object v3, p4, v2

    .line 6886
    .local v3, "bd":Landroid/os/BatteryStats$BitDescription;
    iget v7, v3, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v7, v0

    if-eqz v7, :cond_b

    .line 6887
    if-eqz p5, :cond_1

    const-string v7, " "

    goto :goto_1

    :cond_1
    const-string v7, ","

    :goto_1
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6888
    iget v7, v3, Landroid/os/BatteryStats$BitDescription;->shift:I

    const-string v8, "="

    if-gez v7, :cond_7

    .line 6889
    iget v7, v3, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v7, p2

    if-eqz v7, :cond_2

    const-string v7, "+"

    goto :goto_2

    :cond_2
    const-string v7, "-"

    :goto_2
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6890
    if-eqz p5, :cond_3

    iget-object v7, v3, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    goto :goto_3

    :cond_3
    iget-object v7, v3, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    :goto_3
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6891
    iget v7, v3, Landroid/os/BatteryStats$BitDescription;->mask:I

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v7, v9, :cond_b

    if-eqz p3, :cond_b

    .line 6892
    const/4 v1, 0x1

    .line 6893
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6894
    if-nez p5, :cond_5

    iget v7, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    if-ne v7, v4, :cond_4

    goto :goto_4

    .line 6903
    :cond_4
    iget v4, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 6896
    :cond_5
    :goto_4
    iget v4, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-static {p0, v4}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 6897
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6898
    iget-object v4, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 6899
    iget-object v4, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    const-string v5, "\"\""

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6901
    :cond_6
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 6907
    :cond_7
    if-eqz p5, :cond_8

    iget-object v4, v3, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    goto :goto_5

    :cond_8
    iget-object v4, v3, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    :goto_5
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6908
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6909
    iget v4, v3, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v4, p2

    iget v5, v3, Landroid/os/BatteryStats$BitDescription;->shift:I

    shr-int/2addr v4, v5

    .line 6910
    .local v4, "val":I
    iget-object v5, v3, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    if-eqz v5, :cond_a

    if-ltz v4, :cond_a

    iget-object v5, v3, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_a

    .line 6911
    if-eqz p5, :cond_9

    iget-object v5, v3, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    aget-object v5, v5, v4

    goto :goto_6

    :cond_9
    iget-object v5, v3, Landroid/os/BatteryStats$BitDescription;->shortValues:[Ljava/lang/String;

    aget-object v5, v5, v4

    :goto_6
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 6913
    :cond_a
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6884
    .end local v3    # "bd":Landroid/os/BatteryStats$BitDescription;
    .end local v4    # "val":I
    :cond_b
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 6918
    .end local v2    # "i":I
    :cond_c
    if-nez v1, :cond_10

    if-eqz p3, :cond_10

    .line 6919
    if-eqz p5, :cond_d

    const-string v2, " wake_lock="

    goto :goto_8

    :cond_d
    const-string v2, ",w="

    :goto_8
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6920
    if-nez p5, :cond_f

    iget v2, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    if-ne v2, v4, :cond_e

    goto :goto_9

    .line 6926
    :cond_e
    iget v2, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 6921
    :cond_f
    :goto_9
    iget v2, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-static {p0, v2}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 6922
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6923
    iget-object v2, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6924
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6929
    :cond_10
    :goto_a
    return-void
.end method

.method private blacklist printCellularPerRatBreakdown(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;J)V
    .locals 29
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "rawRealtimeMs"    # J

    .line 4332
    move-object/from16 v0, p0

    move-object/from16 v6, p2

    const-string v7, "    All frequencies:\n"

    .line 4334
    .local v7, "allFrequenciesHeader":Ljava/lang/String;
    const-string v1, "    High frequency (3GHz to 6GHz):\n"

    const-string v2, "    Mmwave frequency (greater than 6GHz):\n"

    const-string v3, "    Unknown frequency:\n"

    const-string v4, "    Low frequency (less than 1GHz):\n"

    const-string v5, "    Middle frequency (1GHz to 3GHz):\n"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    .line 4340
    .local v8, "nrFrequencyRangeDescription":[Ljava/lang/String;
    const-string v9, "      Signal Strength Time:\n"

    .line 4342
    .local v9, "signalStrengthHeader":Ljava/lang/String;
    const-string v10, "      Tx Time:\n"

    .line 4344
    .local v10, "txHeader":Ljava/lang/String;
    const-string v11, "      Rx Time: "

    .line 4346
    .local v11, "rxHeader":Ljava/lang/String;
    const-string v1, "        good:     "

    const-string v2, "        great:    "

    const-string v3, "        unknown:  "

    const-string v4, "        poor:     "

    const-string v5, "        moderate: "

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    .line 4353
    .local v12, "signalStrengthDescription":[Ljava/lang/String;
    const-wide/16 v1, 0x3e8

    mul-long v3, p4, v1

    const/4 v13, 0x0

    invoke-virtual {v0, v3, v4, v13}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v3

    div-long v14, v3, v1

    .line 4356
    .local v14, "totalActiveTimesMs":J
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4357
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4358
    const-string v1, "Active Cellular Radio Access Technology Breakdown:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4359
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4361
    const/4 v1, 0x0

    .line 4362
    .local v1, "hasData":Z
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v2

    .line 4363
    .local v2, "numSignalStrength":I
    const/4 v3, 0x2

    .local v3, "rat":I
    :goto_0
    if-ltz v3, :cond_8

    .line 4364
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4365
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4366
    const-string v4, "  "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4367
    sget-object v4, Landroid/os/BatteryStats;->RADIO_ACCESS_TECHNOLOGY_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4368
    const-string v4, ":\n"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4369
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4372
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    array-length v5, v8

    goto :goto_1

    :cond_0
    const/4 v5, 0x1

    :goto_1
    move/from16 v16, v5

    .line 4373
    .local v16, "numFreqLvl":I
    add-int/lit8 v5, v16, -0x1

    move/from16 v17, v1

    .end local v1    # "hasData":Z
    .local v5, "freqLvl":I
    .local v17, "hasData":Z
    :goto_2
    if-ltz v5, :cond_7

    .line 4374
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 4375
    .local v1, "freqDescriptionStart":I
    const/16 v18, 0x0

    .line 4376
    .local v18, "hasFreqData":Z
    if-ne v3, v4, :cond_1

    .line 4377
    aget-object v4, v8, v5

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 4379
    :cond_1
    const-string v4, "    All frequencies:\n"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4382
    :goto_3
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4383
    const-string v4, "      Signal Strength Time:\n"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4384
    const/4 v4, 0x0

    .local v4, "strength":I
    :goto_4
    const-wide/16 v20, 0x0

    const-string v13, ")\n"

    move-object/from16 v22, v7

    .end local v7    # "allFrequenciesHeader":Ljava/lang/String;
    .local v22, "allFrequenciesHeader":Ljava/lang/String;
    const-string v7, "("

    if-ge v4, v2, :cond_3

    .line 4385
    move-object/from16 v23, v8

    move-object/from16 v19, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    const/16 v24, 0x2

    move v9, v1

    move v8, v2

    move v1, v3

    move v3, v4

    move v2, v5

    move-wide/from16 v4, p4

    .end local v4    # "strength":I
    .end local v5    # "freqLvl":I
    .end local v10    # "txHeader":Ljava/lang/String;
    .end local v11    # "rxHeader":Ljava/lang/String;
    .local v1, "rat":I
    .local v2, "freqLvl":I
    .local v3, "strength":I
    .local v8, "numSignalStrength":I
    .local v9, "freqDescriptionStart":I
    .local v19, "signalStrengthHeader":Ljava/lang/String;
    .local v23, "nrFrequencyRangeDescription":[Ljava/lang/String;
    .local v25, "txHeader":Ljava/lang/String;
    .local v26, "rxHeader":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/os/BatteryStats;->getActiveRadioDurationMs(IIIJ)J

    move-result-wide v10

    .line 4387
    .local v10, "timeMs":J
    cmp-long v4, v10, v20

    if-gtz v4, :cond_2

    goto :goto_5

    .line 4388
    :cond_2
    const/4 v4, 0x1

    .line 4389
    .end local v18    # "hasFreqData":Z
    .local v4, "hasFreqData":Z
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4390
    aget-object v5, v12, v3

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4391
    invoke-static {v6, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4392
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4393
    invoke-virtual {v0, v10, v11, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4394
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v18, v4

    .line 4384
    .end local v4    # "hasFreqData":Z
    .end local v10    # "timeMs":J
    .restart local v18    # "hasFreqData":Z
    :goto_5
    add-int/lit8 v4, v3, 0x1

    move v3, v1

    move v5, v2

    move v2, v8

    move v1, v9

    move-object/from16 v9, v19

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    const/4 v13, 0x0

    .end local v3    # "strength":I
    .local v4, "strength":I
    goto :goto_4

    .end local v19    # "signalStrengthHeader":Ljava/lang/String;
    .end local v23    # "nrFrequencyRangeDescription":[Ljava/lang/String;
    .end local v25    # "txHeader":Ljava/lang/String;
    .end local v26    # "rxHeader":Ljava/lang/String;
    .local v1, "freqDescriptionStart":I
    .local v2, "numSignalStrength":I
    .local v3, "rat":I
    .restart local v5    # "freqLvl":I
    .local v8, "nrFrequencyRangeDescription":[Ljava/lang/String;
    .local v9, "signalStrengthHeader":Ljava/lang/String;
    .local v10, "txHeader":Ljava/lang/String;
    .restart local v11    # "rxHeader":Ljava/lang/String;
    :cond_3
    move-object/from16 v23, v8

    move-object/from16 v19, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    const/16 v24, 0x2

    move v9, v1

    move v8, v2

    move v1, v3

    move v3, v4

    move v2, v5

    .line 4397
    .end local v3    # "rat":I
    .end local v4    # "strength":I
    .end local v5    # "freqLvl":I
    .end local v10    # "txHeader":Ljava/lang/String;
    .end local v11    # "rxHeader":Ljava/lang/String;
    .local v1, "rat":I
    .local v2, "freqLvl":I
    .local v8, "numSignalStrength":I
    .local v9, "freqDescriptionStart":I
    .restart local v19    # "signalStrengthHeader":Ljava/lang/String;
    .restart local v23    # "nrFrequencyRangeDescription":[Ljava/lang/String;
    .restart local v25    # "txHeader":Ljava/lang/String;
    .restart local v26    # "rxHeader":Ljava/lang/String;
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4398
    const-string v3, "      Tx Time:\n"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4399
    const/4 v3, 0x0

    .local v3, "strength":I
    :goto_6
    if-ge v3, v8, :cond_5

    .line 4400
    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/BatteryStats;->getActiveTxRadioDurationMs(IIIJ)J

    move-result-wide v10

    .line 4402
    move/from16 v28, v3

    move v3, v1

    move/from16 v1, v28

    .local v1, "strength":I
    .local v3, "rat":I
    .local v10, "timeMs":J
    cmp-long v27, v10, v20

    if-gtz v27, :cond_4

    move/from16 v27, v1

    goto :goto_7

    .line 4403
    :cond_4
    const/16 v18, 0x1

    .line 4404
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4405
    move/from16 v27, v1

    .end local v1    # "strength":I
    .local v27, "strength":I
    aget-object v1, v12, v27

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4406
    invoke-static {v6, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4407
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4408
    invoke-virtual {v0, v10, v11, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4409
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4399
    .end local v10    # "timeMs":J
    :goto_7
    add-int/lit8 v1, v27, 0x1

    move/from16 v28, v3

    move v3, v1

    move/from16 v1, v28

    .end local v27    # "strength":I
    .restart local v1    # "strength":I
    goto :goto_6

    .local v1, "rat":I
    .local v3, "strength":I
    :cond_5
    move-wide/from16 v4, p4

    move/from16 v27, v3

    move v3, v1

    .line 4412
    .end local v1    # "rat":I
    .local v3, "rat":I
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4413
    const-string v1, "      Rx Time: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4414
    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/os/BatteryStats;->getActiveRxRadioDurationMs(IIJ)J

    move-result-wide v10

    .line 4415
    .local v10, "rxTimeMs":J
    invoke-static {v6, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4416
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4417
    invoke-virtual {v0, v10, v11, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4418
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4420
    if-eqz v18, :cond_6

    .line 4421
    const/16 v17, 0x1

    .line 4422
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4423
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4424
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 4427
    :cond_6
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4373
    .end local v9    # "freqDescriptionStart":I
    .end local v10    # "rxTimeMs":J
    .end local v18    # "hasFreqData":Z
    :goto_8
    add-int/lit8 v1, v2, -0x1

    move v5, v1

    move v2, v8

    move-object/from16 v9, v19

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move/from16 v4, v24

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    const/4 v13, 0x0

    .end local v2    # "freqLvl":I
    .local v1, "freqLvl":I
    goto/16 :goto_2

    .end local v1    # "freqLvl":I
    .end local v19    # "signalStrengthHeader":Ljava/lang/String;
    .end local v22    # "allFrequenciesHeader":Ljava/lang/String;
    .end local v23    # "nrFrequencyRangeDescription":[Ljava/lang/String;
    .end local v25    # "txHeader":Ljava/lang/String;
    .end local v26    # "rxHeader":Ljava/lang/String;
    .local v2, "numSignalStrength":I
    .restart local v5    # "freqLvl":I
    .restart local v7    # "allFrequenciesHeader":Ljava/lang/String;
    .local v8, "nrFrequencyRangeDescription":[Ljava/lang/String;
    .local v9, "signalStrengthHeader":Ljava/lang/String;
    .local v10, "txHeader":Ljava/lang/String;
    .restart local v11    # "rxHeader":Ljava/lang/String;
    :cond_7
    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v19, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move v8, v2

    move v2, v5

    move-wide/from16 v4, p4

    .line 4363
    .end local v2    # "numSignalStrength":I
    .end local v5    # "freqLvl":I
    .end local v7    # "allFrequenciesHeader":Ljava/lang/String;
    .end local v9    # "signalStrengthHeader":Ljava/lang/String;
    .end local v10    # "txHeader":Ljava/lang/String;
    .end local v11    # "rxHeader":Ljava/lang/String;
    .end local v16    # "numFreqLvl":I
    .local v8, "numSignalStrength":I
    .restart local v19    # "signalStrengthHeader":Ljava/lang/String;
    .restart local v22    # "allFrequenciesHeader":Ljava/lang/String;
    .restart local v23    # "nrFrequencyRangeDescription":[Ljava/lang/String;
    .restart local v25    # "txHeader":Ljava/lang/String;
    .restart local v26    # "rxHeader":Ljava/lang/String;
    add-int/lit8 v3, v3, -0x1

    move v2, v8

    move/from16 v1, v17

    move-object/from16 v8, v23

    const/4 v13, 0x0

    goto/16 :goto_0

    .end local v17    # "hasData":Z
    .end local v19    # "signalStrengthHeader":Ljava/lang/String;
    .end local v22    # "allFrequenciesHeader":Ljava/lang/String;
    .end local v23    # "nrFrequencyRangeDescription":[Ljava/lang/String;
    .end local v25    # "txHeader":Ljava/lang/String;
    .end local v26    # "rxHeader":Ljava/lang/String;
    .local v1, "hasData":Z
    .restart local v2    # "numSignalStrength":I
    .restart local v7    # "allFrequenciesHeader":Ljava/lang/String;
    .local v8, "nrFrequencyRangeDescription":[Ljava/lang/String;
    .restart local v9    # "signalStrengthHeader":Ljava/lang/String;
    .restart local v10    # "txHeader":Ljava/lang/String;
    .restart local v11    # "rxHeader":Ljava/lang/String;
    :cond_8
    move-wide/from16 v4, p4

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v19, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move v8, v2

    .line 4432
    .end local v2    # "numSignalStrength":I
    .end local v3    # "rat":I
    .end local v7    # "allFrequenciesHeader":Ljava/lang/String;
    .end local v9    # "signalStrengthHeader":Ljava/lang/String;
    .end local v10    # "txHeader":Ljava/lang/String;
    .end local v11    # "rxHeader":Ljava/lang/String;
    .local v8, "numSignalStrength":I
    .restart local v19    # "signalStrengthHeader":Ljava/lang/String;
    .restart local v22    # "allFrequenciesHeader":Ljava/lang/String;
    .restart local v23    # "nrFrequencyRangeDescription":[Ljava/lang/String;
    .restart local v25    # "txHeader":Ljava/lang/String;
    .restart local v26    # "rxHeader":Ljava/lang/String;
    if-nez v1, :cond_9

    .line 4433
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4434
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4435
    const-string v2, "  (no activity)"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4436
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4438
    :cond_9
    return-void
.end method

.method private final greylist-max-o printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .locals 32
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "controllerName"    # Ljava/lang/String;
    .param p5, "counter"    # Landroid/os/BatteryStats$ControllerActivityCounter;
    .param p6, "which"    # I

    .line 4185
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p6

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    .line 4186
    .local v5, "idleTimeMs":J
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v7

    .line 4187
    .local v7, "rxTimeMs":J
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v9

    .line 4188
    .local v9, "powerDrainMaMs":J
    nop

    .line 4189
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getMonitoredRailChargeConsumedMaMs()Landroid/os/BatteryStats$LongCounter;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v11

    .line 4191
    .local v11, "monitoredRailChargeConsumedMaMs":J
    nop

    .line 4192
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    invoke-virtual {v0, v13, v14, v4}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v13

    div-long/2addr v13, v15

    .line 4193
    .local v13, "totalControllerActivityTimeMs":J
    const-wide/16 v15, 0x0

    .line 4194
    .local v15, "totalTxTimeMs":J
    move-wide/from16 v17, v15

    .end local v15    # "totalTxTimeMs":J
    .local v17, "totalTxTimeMs":J
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v15

    move-wide/from16 v19, v11

    .end local v11    # "monitoredRailChargeConsumedMaMs":J
    .local v19, "monitoredRailChargeConsumedMaMs":J
    array-length v11, v15

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_0

    move/from16 v21, v11

    aget-object v11, v15, v12

    .line 4195
    .local v11, "txState":Landroid/os/BatteryStats$LongCounter;
    invoke-virtual {v11, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v22

    add-long v17, v17, v22

    .line 4194
    .end local v11    # "txState":Landroid/os/BatteryStats$LongCounter;
    add-int/lit8 v12, v12, 0x1

    move/from16 v11, v21

    goto :goto_0

    .line 4198
    :cond_0
    const-string v11, "WiFi"

    invoke-virtual {v3, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, " Sleep time:  "

    const-string v15, ")"

    move/from16 v21, v11

    const-string v11, "("

    move-wide/from16 v22, v9

    .end local v9    # "powerDrainMaMs":J
    .local v22, "powerDrainMaMs":J
    const-string v9, "     "

    if-eqz v21, :cond_1

    .line 4199
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getScanTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v10

    move-wide/from16 v24, v7

    .end local v7    # "rxTimeMs":J
    .local v24, "rxTimeMs":J
    invoke-virtual {v10, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v7

    .line 4200
    .local v7, "scanTimeMs":J
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4201
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4202
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4203
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4204
    const-string v10, " Scan time:  "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4205
    invoke-static {v2, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4206
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4207
    invoke-virtual {v0, v7, v8, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4208
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4209
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4211
    add-long v26, v5, v24

    add-long v26, v26, v17

    move-wide/from16 v28, v7

    .end local v7    # "scanTimeMs":J
    .local v28, "scanTimeMs":J
    sub-long v7, v13, v26

    .line 4213
    .local v7, "sleepTimeMs":J
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4214
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4215
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4216
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4217
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4218
    invoke-static {v2, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4219
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4220
    invoke-virtual {v0, v7, v8, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4221
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4222
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 4198
    .end local v24    # "rxTimeMs":J
    .end local v28    # "scanTimeMs":J
    .local v7, "rxTimeMs":J
    :cond_1
    move-wide/from16 v24, v7

    .line 4225
    .end local v7    # "rxTimeMs":J
    .restart local v24    # "rxTimeMs":J
    :goto_1
    const-string v7, "Cellular"

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 4226
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getSleepTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v8

    move-object v10, v7

    invoke-virtual {v8, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v7

    .line 4227
    .local v7, "sleepTimeMs":J
    move-object/from16 v21, v10

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4228
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4229
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4230
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4231
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4232
    invoke-static {v2, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4233
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4234
    invoke-virtual {v0, v7, v8, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4235
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4236
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 4225
    .end local v7    # "sleepTimeMs":J
    :cond_2
    move-object/from16 v21, v7

    .line 4239
    :goto_2
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4240
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4241
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4242
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4243
    const-string v7, " Idle time:   "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4244
    invoke-static {v2, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4245
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4246
    invoke-virtual {v0, v5, v6, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4247
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4248
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4250
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4251
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4252
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4253
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4254
    const-string v7, " Rx time:     "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4255
    move-wide/from16 v7, v24

    .end local v24    # "rxTimeMs":J
    .local v7, "rxTimeMs":J
    invoke-static {v2, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4256
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4257
    invoke-virtual {v0, v7, v8, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4258
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4259
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4261
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4262
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4263
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4264
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4265
    const-string v10, " Tx time:     "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4268
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    :cond_3
    goto :goto_3

    :pswitch_0
    move-object/from16 v10, v21

    invoke-virtual {v3, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x0

    goto :goto_4

    :goto_3
    const/4 v10, -0x1

    :goto_4
    packed-switch v10, :pswitch_data_1

    .line 4278
    move-wide/from16 v24, v5

    move-wide/from16 v26, v7

    .end local v5    # "idleTimeMs":J
    .end local v7    # "rxTimeMs":J
    .local v24, "idleTimeMs":J
    .local v26, "rxTimeMs":J
    const-string v5, "[3]"

    const-string v6, "[4]"

    const-string v7, "[0]"

    const-string v8, "[1]"

    const-string v10, "[2]"

    filled-new-array {v7, v8, v10, v5, v6}, [Ljava/lang/String;

    move-result-object v5

    .local v5, "powerLevel":[Ljava/lang/String;
    goto :goto_5

    .line 4270
    .end local v24    # "idleTimeMs":J
    .end local v26    # "rxTimeMs":J
    .local v5, "idleTimeMs":J
    .restart local v7    # "rxTimeMs":J
    :pswitch_1
    const-string v10, "   15dBm to 20dBm: "

    const-string v12, "   above 20dBm: "

    move-wide/from16 v24, v5

    .end local v5    # "idleTimeMs":J
    .restart local v24    # "idleTimeMs":J
    const-string v5, "   less than 0dBm: "

    const-string v6, "   0dBm to 8dBm: "

    move-wide/from16 v26, v7

    .end local v7    # "rxTimeMs":J
    .restart local v26    # "rxTimeMs":J
    const-string v7, "   8dBm to 15dBm: "

    filled-new-array {v5, v6, v7, v10, v12}, [Ljava/lang/String;

    move-result-object v5

    .line 4276
    .local v5, "powerLevel":[Ljava/lang/String;
    nop

    .line 4281
    :goto_5
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v6

    array-length v6, v6

    array-length v7, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 4282
    .local v6, "numTxLvls":I
    const/4 v7, 0x1

    if-le v6, v7, :cond_5

    .line 4283
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4284
    const/4 v7, 0x0

    .local v7, "lvl":I
    :goto_6
    if-ge v7, v6, :cond_4

    .line 4285
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v8

    aget-object v8, v8, v7

    move-object v10, v5

    move v12, v6

    .end local v5    # "powerLevel":[Ljava/lang/String;
    .end local v6    # "numTxLvls":I
    .local v10, "powerLevel":[Ljava/lang/String;
    .local v12, "numTxLvls":I
    invoke-virtual {v8, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    .line 4286
    .local v5, "txLvlTimeMs":J
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4287
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4288
    const-string v8, "    "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4289
    aget-object v8, v10, v7

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4290
    const-string v8, " "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4291
    invoke-static {v2, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4292
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4293
    invoke-virtual {v0, v5, v6, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4294
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4295
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4284
    .end local v5    # "txLvlTimeMs":J
    add-int/lit8 v7, v7, 0x1

    move-object v5, v10

    move v6, v12

    goto :goto_6

    .end local v10    # "powerLevel":[Ljava/lang/String;
    .end local v12    # "numTxLvls":I
    .local v5, "powerLevel":[Ljava/lang/String;
    .restart local v6    # "numTxLvls":I
    :cond_4
    move-object v10, v5

    move v12, v6

    .end local v5    # "powerLevel":[Ljava/lang/String;
    .end local v6    # "numTxLvls":I
    .end local v7    # "lvl":I
    .restart local v10    # "powerLevel":[Ljava/lang/String;
    .restart local v12    # "numTxLvls":I
    goto :goto_7

    .line 4298
    .end local v10    # "powerLevel":[Ljava/lang/String;
    .end local v12    # "numTxLvls":I
    .restart local v5    # "powerLevel":[Ljava/lang/String;
    .restart local v6    # "numTxLvls":I
    :cond_5
    move-object v10, v5

    move v12, v6

    .end local v5    # "powerLevel":[Ljava/lang/String;
    .end local v6    # "numTxLvls":I
    .restart local v10    # "powerLevel":[Ljava/lang/String;
    .restart local v12    # "numTxLvls":I
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v5

    const/16 v16, 0x0

    aget-object v5, v5, v16

    invoke-virtual {v5, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    .line 4299
    .local v5, "txLvlTimeMs":J
    invoke-static {v2, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4300
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4301
    invoke-virtual {v0, v5, v6, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4302
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4303
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4306
    .end local v5    # "txLvlTimeMs":J
    :goto_7
    const-wide/16 v5, 0x0

    cmp-long v7, v22, v5

    const-wide v28, 0x414b774000000000L    # 3600000.0

    if-lez v7, :cond_6

    .line 4307
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4308
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4309
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4310
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4311
    const-string v7, " Battery drain: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v30, v5

    move-object v8, v10

    move-wide/from16 v5, v22

    .end local v10    # "powerLevel":[Ljava/lang/String;
    .end local v22    # "powerDrainMaMs":J
    .local v5, "powerDrainMaMs":J
    .local v8, "powerLevel":[Ljava/lang/String;
    long-to-double v10, v5

    div-double v10, v10, v28

    .line 4312
    invoke-static {v10, v11}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v10

    .line 4311
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4313
    const-string/jumbo v7, "mAh"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4314
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 4306
    .end local v5    # "powerDrainMaMs":J
    .end local v8    # "powerLevel":[Ljava/lang/String;
    .restart local v10    # "powerLevel":[Ljava/lang/String;
    .restart local v22    # "powerDrainMaMs":J
    :cond_6
    move-wide/from16 v30, v5

    move-object v8, v10

    move-wide/from16 v5, v22

    .line 4317
    .end local v10    # "powerLevel":[Ljava/lang/String;
    .end local v22    # "powerDrainMaMs":J
    .restart local v5    # "powerDrainMaMs":J
    .restart local v8    # "powerLevel":[Ljava/lang/String;
    :goto_8
    cmp-long v7, v19, v30

    if-lez v7, :cond_7

    .line 4318
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4319
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4320
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4321
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4322
    const-string v7, " Monitored rail energy drain: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v9, Ljava/text/DecimalFormat;

    const-string v10, "#.##"

    invoke-direct {v9, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move-wide/from16 v10, v19

    .end local v19    # "monitoredRailChargeConsumedMaMs":J
    .local v10, "monitoredRailChargeConsumedMaMs":J
    long-to-double v3, v10

    div-double v3, v3, v28

    .line 4323
    invoke-virtual {v9, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    .line 4322
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4325
    const-string v3, " mAh"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4326
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    .line 4317
    .end local v10    # "monitoredRailChargeConsumedMaMs":J
    .restart local v19    # "monitoredRailChargeConsumedMaMs":J
    :cond_7
    move-wide/from16 v10, v19

    .line 4328
    .end local v19    # "monitoredRailChargeConsumedMaMs":J
    .restart local v10    # "monitoredRailChargeConsumedMaMs":J
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch -0x32c7c276
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private final greylist-max-o printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "controllerName"    # Ljava/lang/String;
    .param p5, "counter"    # Landroid/os/BatteryStats$ControllerActivityCounter;
    .param p6, "which"    # I

    .line 4177
    invoke-static {p5, p6}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4178
    invoke-direct/range {p0 .. p6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 4180
    :cond_0
    return-void
.end method

.method private greylist-max-o printSizeValue(Ljava/io/PrintWriter;J)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "size"    # J

    .line 7394
    long-to-float v0, p2

    .line 7395
    .local v0, "result":F
    const-string v1, ""

    .line 7396
    .local v1, "suffix":Ljava/lang/String;
    const/high16 v2, 0x46200000    # 10240.0f

    cmpl-float v3, v0, v2

    const/high16 v4, 0x44800000    # 1024.0f

    if-ltz v3, :cond_0

    .line 7397
    const-string v1, "KB"

    .line 7398
    div-float/2addr v0, v4

    .line 7400
    :cond_0
    cmpl-float v3, v0, v2

    if-ltz v3, :cond_1

    .line 7401
    const-string v1, "MB"

    .line 7402
    div-float/2addr v0, v4

    .line 7404
    :cond_1
    cmpl-float v3, v0, v2

    if-ltz v3, :cond_2

    .line 7405
    const-string v1, "GB"

    .line 7406
    div-float/2addr v0, v4

    .line 7408
    :cond_2
    cmpl-float v3, v0, v2

    if-ltz v3, :cond_3

    .line 7409
    const-string v1, "TB"

    .line 7410
    div-float/2addr v0, v4

    .line 7412
    :cond_3
    cmpl-float v2, v0, v2

    if-ltz v2, :cond_4

    .line 7413
    const-string v1, "PB"

    .line 7414
    div-float/2addr v0, v4

    .line 7416
    :cond_4
    float-to-int v2, v0

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 7417
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7418
    return-void
.end method

.method private static final greylist-max-o printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z
    .locals 15
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "which"    # I
    .param p6, "prefix"    # Ljava/lang/String;
    .param p7, "type"    # Ljava/lang/String;

    .line 3898
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 3900
    invoke-virtual/range {p2 .. p5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    const-wide/16 v5, 0x1f4

    add-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 3902
    .local v3, "totalTimeMs":J
    move/from16 v7, p5

    invoke-virtual {v1, v7}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v8

    .line 3903
    .local v8, "count":I
    const-wide/16 v9, 0x0

    cmp-long v11, v3, v9

    if-eqz v11, :cond_3

    .line 3904
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3905
    move-object/from16 v11, p6

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3906
    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3907
    move-object/from16 v12, p7

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3908
    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3909
    invoke-static {v0, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3910
    const-string/jumbo v2, "realtime ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3911
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3912
    const-string v2, " times)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3913
    div-long v13, p3, v5

    invoke-virtual {v1, v13, v14}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v13

    .line 3914
    .local v13, "maxDurationMs":J
    cmp-long v2, v13, v9

    if-ltz v2, :cond_0

    .line 3915
    const-string v2, " max="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3916
    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3918
    :cond_0
    invoke-virtual {v1}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3919
    div-long v5, p3, v5

    invoke-virtual {v1, v5, v6}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v5

    .line 3920
    .local v5, "currentMs":J
    cmp-long v2, v5, v9

    if-ltz v2, :cond_1

    .line 3921
    const-string v2, " (running for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3922
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3923
    const-string/jumbo v2, "ms)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3925
    :cond_1
    const-string v2, " (running)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3928
    .end local v5    # "currentMs":J
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3929
    const/4 v2, 0x1

    return v2

    .line 3903
    .end local v13    # "maxDurationMs":J
    :cond_3
    move-object/from16 v11, p6

    move-object/from16 v12, p7

    goto :goto_1

    .line 3898
    .end local v3    # "totalTimeMs":J
    .end local v8    # "count":I
    :cond_4
    move/from16 v7, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    .line 3932
    :goto_1
    return v2
.end method

.method private static final greylist-max-o printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "which"    # I
    .param p6, "linePrefix"    # Ljava/lang/String;

    .line 3842
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    if-eqz v1, :cond_5

    .line 3843
    invoke-static {v1, v2, v3, v5}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v7

    .line 3845
    .local v7, "totalTimeMillis":J
    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v9

    .line 3846
    .local v9, "count":I
    const-wide/16 v10, 0x0

    cmp-long v12, v7, v10

    if-eqz v12, :cond_5

    .line 3847
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3848
    invoke-static {v0, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3849
    if-eqz v4, :cond_0

    .line 3850
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3851
    const/16 v12, 0x20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3853
    :cond_0
    const/16 v12, 0x28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3854
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3855
    const-string v12, " times)"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3856
    const-wide/16 v12, 0x3e8

    div-long v14, v2, v12

    invoke-virtual {v1, v14, v15}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v14

    .line 3857
    .local v14, "maxDurationMs":J
    cmp-long v16, v14, v10

    if-ltz v16, :cond_1

    .line 3858
    move-wide/from16 v16, v10

    const-string v10, " max="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3859
    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3857
    :cond_1
    move-wide/from16 v16, v10

    .line 3862
    :goto_0
    div-long v10, v2, v12

    invoke-virtual {v1, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v10

    .line 3863
    .local v10, "totalDurMs":J
    cmp-long v18, v10, v7

    if-lez v18, :cond_2

    .line 3864
    move-wide/from16 v18, v12

    const-string v12, " actual="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3865
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3863
    :cond_2
    move-wide/from16 v18, v12

    .line 3867
    :goto_1
    invoke-virtual {v1}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 3868
    div-long v12, v2, v18

    invoke-virtual {v1, v12, v13}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v12

    .line 3869
    .local v12, "currentMs":J
    cmp-long v16, v12, v16

    if-ltz v16, :cond_3

    .line 3870
    const-string v1, " (running for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3871
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3872
    const-string/jumbo v1, "ms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3874
    :cond_3
    const-string v1, " (running)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3878
    .end local v12    # "currentMs":J
    :cond_4
    :goto_2
    const-string v1, ", "

    return-object v1

    .line 3881
    .end local v7    # "totalTimeMillis":J
    .end local v9    # "count":I
    .end local v10    # "totalDurMs":J
    .end local v14    # "maxDurationMs":J
    :cond_5
    return-object v6
.end method

.method private static final greylist-max-o printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "which"    # I
    .param p6, "linePrefix"    # Ljava/lang/String;

    .line 3948
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    const-wide/16 v6, 0x0

    .line 3949
    .local v6, "totalTimeMicros":J
    const/4 v8, 0x0

    .line 3950
    .local v8, "count":I
    const-wide/16 v9, 0x0

    .line 3951
    .local v9, "max":J
    const-wide/16 v11, 0x0

    .line 3952
    .local v11, "current":J
    const-wide/16 v13, 0x0

    .line 3953
    .local v13, "totalDuration":J
    const-wide/16 v15, 0x3e8

    if-eqz v1, :cond_0

    .line 3954
    invoke-virtual {v1, v2, v3, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    .line 3955
    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v8

    .line 3956
    div-long v2, p2, v15

    invoke-virtual {v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v11

    .line 3957
    div-long v2, p2, v15

    invoke-virtual {v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v9

    .line 3958
    div-long v2, p2, v15

    invoke-virtual {v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v13

    .line 3960
    :cond_0
    move-object/from16 v2, p6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3961
    const-wide/16 v17, 0x1f4

    add-long v17, v6, v17

    div-long v1, v17, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3962
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3963
    const-string v2, ","

    if-eqz v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, ""

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3964
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3965
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3966
    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3967
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3968
    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3972
    if-eqz v4, :cond_2

    .line 3973
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3974
    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3976
    :cond_2
    return-object v2
.end method

.method private greylist-max-o printmAh(Ljava/io/PrintWriter;D)V
    .locals 1
    .param p1, "printer"    # Ljava/io/PrintWriter;
    .param p2, "power"    # D

    .line 5195
    invoke-static {p2, p3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5196
    return-void
.end method

.method private greylist-max-o printmAh(Ljava/lang/StringBuilder;D)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "power"    # D

    .line 5199
    invoke-static {p2, p3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5200
    return-void
.end method

.method private static greylist-max-o roundUsToMs(J)J
    .locals 4
    .param p0, "timeUs"    # J

    .line 3816
    const-wide/16 v0, 0x1f4

    add-long/2addr v0, p0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private blacklist shouldHidePowerComponent(I)Z
    .locals 1
    .param p1, "powerComponent"    # I

    .line 8985
    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

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


# virtual methods
.method public abstract greylist-max-o commitCurrentHistoryBatchLocked()V
.end method

.method public abstract greylist computeBatteryRealtime(JI)J
.end method

.method public abstract greylist-max-o computeBatteryScreenOffRealtime(JI)J
.end method

.method public abstract greylist-max-o computeBatteryScreenOffUptime(JI)J
.end method

.method public abstract greylist computeBatteryTimeRemaining(J)J
.end method

.method public abstract greylist computeBatteryUptime(JI)J
.end method

.method public abstract greylist computeChargeTimeRemaining(J)J
.end method

.method public abstract greylist-max-o computeRealtime(JI)J
.end method

.method public abstract greylist-max-o computeUptime(JI)J
.end method

.method public blacklist dump(Landroid/content/Context;Ljava/io/PrintWriter;IIJLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "flags"    # I
    .param p4, "reqUid"    # I
    .param p5, "histStart"    # J
    .param p7, "dumpHelper"    # Landroid/os/BatteryStats$BatteryStatsDumpHelper;

    .line 7772
    monitor-enter p0

    .line 7773
    :try_start_0
    invoke-virtual {p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    .line 7774
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 7776
    and-int/lit8 v0, p3, 0xe

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    .line 7779
    .local v1, "filtering":Z
    and-int/lit8 v0, p3, 0x8

    if-nez v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p0

    move v4, p3

    move-wide v5, p5

    move-object p3, p2

    goto :goto_2

    .line 7780
    :cond_2
    :goto_1
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move-wide v5, p5

    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "flags":I
    .end local p5    # "histStart":J
    .local v3, "pw":Ljava/io/PrintWriter;
    .local v4, "flags":I
    .local v5, "histStart":J
    invoke-direct/range {v2 .. v7}, Landroid/os/BatteryStats;->dumpHistory(Ljava/io/PrintWriter;IJZ)V

    .line 7781
    move-object p3, v3

    .end local v3    # "pw":Ljava/io/PrintWriter;
    .local p3, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 7784
    :goto_2
    if-eqz v1, :cond_3

    and-int/lit8 p2, v4, 0x6

    if-nez p2, :cond_3

    .line 7785
    return-void

    .line 7788
    :cond_3
    monitor-enter p0

    .line 7789
    move-object p2, p1

    move p5, p4

    move p6, v1

    move-object p1, v2

    move p4, v4

    .end local v1    # "filtering":Z
    .end local v4    # "flags":I
    .end local p1    # "context":Landroid/content/Context;
    .local p2, "context":Landroid/content/Context;
    .local p4, "flags":I
    .local p5, "reqUid":I
    .local p6, "filtering":Z
    :try_start_1
    invoke-direct/range {p1 .. p7}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7790
    .end local p4    # "flags":I
    .restart local v4    # "flags":I
    :try_start_2
    monitor-exit p0

    .line 7791
    return-void

    .line 7790
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    .end local v4    # "flags":I
    .restart local p4    # "flags":I
    :catchall_1
    move-exception v0

    move-object v2, p1

    move v4, p4

    move-object p1, v0

    .end local p4    # "flags":I
    .restart local v4    # "flags":I
    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 7774
    .end local v4    # "flags":I
    .end local v5    # "histStart":J
    .end local p6    # "filtering":Z
    .restart local p1    # "context":Landroid/content/Context;
    .local p2, "pw":Ljava/io/PrintWriter;
    .local p3, "flags":I
    .local p4, "reqUid":I
    .local p5, "histStart":J
    :catchall_2
    move-exception v0

    move-object v2, p0

    move v4, p3

    move-wide v5, p5

    move-object p3, p2

    move p5, p4

    move-object p2, p1

    move-object p1, v0

    .end local p1    # "context":Landroid/content/Context;
    .end local p4    # "reqUid":I
    .restart local v4    # "flags":I
    .restart local v5    # "histStart":J
    .local p2, "context":Landroid/content/Context;
    .local p3, "pw":Ljava/io/PrintWriter;
    .local p5, "reqUid":I
    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p1

    :catchall_3
    move-exception v0

    move-object p1, v0

    goto :goto_4
.end method

.method public blacklist dumpCheckin(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p4, "flags"    # I
    .param p5, "histStart"    # J
    .param p7, "dumpHelper"    # Landroid/os/BatteryStats$BatteryStatsDumpHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;IJ",
            "Landroid/os/BatteryStats$BatteryStatsDumpHelper;",
            ")V"
        }
    .end annotation

    .line 7938
    .local p3, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    monitor-enter p0

    .line 7939
    :try_start_0
    invoke-virtual {p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    .line 7941
    const-string/jumbo v0, "i"

    const-string/jumbo v1, "vers"

    .line 7942
    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getParcelVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getStartPlatformVersion()Ljava/lang/String;

    move-result-object v4

    .line 7943
    invoke-virtual {p0}, Landroid/os/BatteryStats;->getEndPlatformVersion()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    .line 7941
    const/4 v3, 0x0

    invoke-static {p2, v3, v0, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7944
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 7946
    and-int/lit8 v0, p4, 0x18

    if-eqz v0, :cond_0

    .line 7947
    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p2

    move v3, p4

    move-wide v4, p5

    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p4    # "flags":I
    .end local p5    # "histStart":J
    .local v2, "pw":Ljava/io/PrintWriter;
    .local v3, "flags":I
    .local v4, "histStart":J
    invoke-direct/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpHistory(Ljava/io/PrintWriter;IJZ)V

    move p5, v3

    .end local v3    # "flags":I
    .local p5, "flags":I
    goto :goto_0

    .line 7946
    .end local v2    # "pw":Ljava/io/PrintWriter;
    .end local v4    # "histStart":J
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p4    # "flags":I
    .local p5, "histStart":J
    :cond_0
    move-object v1, p0

    move-object v2, p2

    move-wide v4, p5

    move p5, p4

    .line 7950
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p4    # "flags":I
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "histStart":J
    .local p5, "flags":I
    :goto_0
    and-int/lit8 p2, p5, 0x8

    if-eqz p2, :cond_1

    .line 7951
    return-void

    .line 7954
    :cond_1
    monitor-enter p0

    .line 7955
    move-object p2, p1

    move-object p4, p3

    move-object p6, p7

    move-object p1, v1

    move-object p3, v2

    .end local v2    # "pw":Ljava/io/PrintWriter;
    .end local p1    # "context":Landroid/content/Context;
    .end local p7    # "dumpHelper":Landroid/os/BatteryStats$BatteryStatsDumpHelper;
    .local p2, "context":Landroid/content/Context;
    .local p3, "pw":Ljava/io/PrintWriter;
    .local p4, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .local p6, "dumpHelper":Landroid/os/BatteryStats$BatteryStatsDumpHelper;
    :try_start_1
    invoke-direct/range {p1 .. p6}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;ILandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7956
    .end local p3    # "pw":Ljava/io/PrintWriter;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    :try_start_2
    monitor-exit p0

    .line 7957
    return-void

    .line 7956
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .end local v2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "pw":Ljava/io/PrintWriter;
    :catchall_1
    move-exception v0

    move-object v1, p1

    move-object v2, p3

    move-object p1, v0

    .end local p3    # "pw":Ljava/io/PrintWriter;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 7944
    .end local v2    # "pw":Ljava/io/PrintWriter;
    .end local v4    # "histStart":J
    .end local p6    # "dumpHelper":Landroid/os/BatteryStats$BatteryStatsDumpHelper;
    .restart local p1    # "context":Landroid/content/Context;
    .local p2, "pw":Ljava/io/PrintWriter;
    .local p3, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .local p4, "flags":I
    .local p5, "histStart":J
    .restart local p7    # "dumpHelper":Landroid/os/BatteryStats$BatteryStatsDumpHelper;
    :catchall_2
    move-exception v0

    move-object v1, p0

    move-object v2, p2

    move-wide v4, p5

    move-object p6, p7

    move-object p2, p1

    move p5, p4

    move-object p4, p3

    move-object p1, v0

    .end local p1    # "context":Landroid/content/Context;
    .end local p3    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local p7    # "dumpHelper":Landroid/os/BatteryStats$BatteryStatsDumpHelper;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "histStart":J
    .local p2, "context":Landroid/content/Context;
    .local p4, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .local p5, "flags":I
    .restart local p6    # "dumpHelper":Landroid/os/BatteryStats$BatteryStatsDumpHelper;
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p1

    :catchall_3
    move-exception v0

    move-object p1, v0

    goto :goto_2
.end method

.method public final blacklist dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    .locals 216
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "which"    # I
    .param p4, "reqUid"    # I
    .param p5, "wifiOnly"    # Z
    .param p6, "dumpHelper"    # Landroid/os/BatteryStats$BatteryStatsDumpHelper;

    .line 4469
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v6, p3

    move/from16 v9, p4

    const/4 v10, 0x0

    .line 4577
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 4469
    if-eqz v6, :cond_0

    .line 4470
    sget-object v2, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR: BatteryStats.dumpCheckin called for which type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but only STATS_SINCE_CHARGED is supported."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "err"

    invoke-static {v1, v10, v2, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4473
    return-void

    .line 4476
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v21, 0x3e8

    mul-long v11, v2, v21

    .line 4477
    .local v11, "rawUptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 4478
    .local v13, "rawRealtimeMs":J
    mul-long v7, v13, v21

    .line 4479
    .local v7, "rawRealtime":J
    invoke-virtual {v0, v11, v12}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v2

    .line 4480
    .local v2, "batteryUptime":J
    invoke-virtual {v0, v11, v12, v6}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v23

    .line 4481
    .local v23, "whichBatteryUptime":J
    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v25

    .line 4482
    .local v25, "whichBatteryRealtime":J
    invoke-virtual {v0, v11, v12, v6}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v27

    .line 4483
    .local v27, "whichBatteryScreenOffUptime":J
    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v29

    .line 4485
    .local v29, "whichBatteryScreenOffRealtime":J
    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v31

    .line 4486
    .local v31, "totalRealtime":J
    invoke-virtual {v0, v11, v12, v6}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v33

    .line 4487
    .local v33, "totalUptime":J
    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v35

    .line 4488
    .local v35, "screenOnTime":J
    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v37

    .line 4489
    .local v37, "screenDozeTime":J
    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v39

    .line 4490
    .local v39, "interactiveTime":J
    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v41

    .line 4491
    .local v41, "powerSaveModeEnabledTime":J
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v7, v8, v6}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v43

    .line 4493
    .local v43, "deviceIdleModeLightTime":J
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v7, v8, v6}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v45

    .line 4495
    .local v45, "deviceIdleModeFullTime":J
    invoke-virtual {v0, v4, v7, v8, v6}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v47

    .line 4497
    .local v47, "deviceLightIdlingTime":J
    invoke-virtual {v0, v5, v7, v8, v6}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v49

    .line 4499
    .local v49, "deviceIdlingTime":J
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v51

    .line 4500
    .local v51, "connChanges":I
    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v52

    .line 4501
    .local v52, "phoneOnTime":J
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getUahDischarge(I)J

    move-result-wide v54

    .line 4502
    .local v54, "dischargeCount":J
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getUahDischargeScreenOff(I)J

    move-result-wide v56

    .line 4503
    .local v56, "dischargeScreenOffCount":J
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getUahDischargeScreenDoze(I)J

    move-result-wide v58

    .line 4504
    .local v58, "dischargeScreenDozeCount":J
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getUahDischargeLightDoze(I)J

    move-result-wide v60

    .line 4505
    .local v60, "dischargeLightDozeCount":J
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getUahDischargeDeepDoze(I)J

    move-result-wide v62

    .line 4507
    .local v62, "dischargeDeepDozeCount":J
    new-instance v5, Ljava/lang/StringBuilder;

    move/from16 v17, v4

    const/16 v4, 0x80

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4509
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v4

    .line 4510
    .local v4, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    move-wide/from16 v18, v2

    .end local v2    # "batteryUptime":J
    .local v18, "batteryUptime":J
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 4512
    .local v2, "NU":I
    sget-object v3, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v6

    .line 4515
    .local v3, "category":Ljava/lang/String;
    nop

    .line 4516
    if-nez v6, :cond_1

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    goto :goto_0

    :cond_1
    const-string v20, "N/A"

    :goto_0
    move-object/from16 v64, v20

    div-long v65, v25, v21

    .line 4517
    invoke-static/range {v65 .. v66}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v65

    div-long v66, v23, v21

    invoke-static/range {v66 .. v67}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v66

    div-long v67, v31, v21

    .line 4518
    invoke-static/range {v67 .. v68}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v67

    div-long v68, v33, v21

    invoke-static/range {v68 .. v69}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v68

    .line 4519
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v69

    invoke-static/range {v69 .. v70}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v69

    div-long v70, v29, v21

    .line 4520
    invoke-static/range {v70 .. v71}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v70

    div-long v71, v27, v21

    invoke-static/range {v71 .. v72}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v71

    .line 4521
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    .line 4522
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    .line 4523
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getMaxLearnedBatteryCapacity()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v74

    div-long v75, v37, v21

    .line 4524
    invoke-static/range {v75 .. v76}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v75

    filled-new-array/range {v64 .. v75}, [Ljava/lang/Object;

    move-result-object v10

    .line 4515
    move-object/from16 v20, v5

    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .local v20, "sb":Ljava/lang/StringBuilder;
    const-string v5, "bt"

    move-wide/from16 v64, v11

    const/4 v11, 0x0

    .end local v11    # "rawUptime":J
    .local v64, "rawUptime":J
    invoke-static {v1, v11, v3, v5, v10}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4528
    const-wide/16 v10, 0x0

    .line 4529
    .local v10, "fullWakeLockTimeTotal":J
    const-wide/16 v66, 0x0

    .line 4531
    .local v66, "partialWakeLockTimeTotal":J
    const/4 v5, 0x0

    move-wide/from16 v68, v66

    move-wide/from16 v66, v10

    .end local v10    # "fullWakeLockTimeTotal":J
    .local v5, "iu":I
    .local v66, "fullWakeLockTimeTotal":J
    .local v68, "partialWakeLockTimeTotal":J
    :goto_1
    if-ge v5, v2, :cond_5

    .line 4532
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/BatteryStats$Uid;

    .line 4534
    .local v10, "u":Landroid/os/BatteryStats$Uid;
    nop

    .line 4535
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v11

    .line 4536
    .local v11, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    .local v12, "iw":I
    :goto_2
    if-ltz v12, :cond_4

    .line 4537
    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v70

    move/from16 v71, v2

    .end local v2    # "NU":I
    .local v71, "NU":I
    move-object/from16 v2, v70

    check-cast v2, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 4539
    .local v2, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    move-object/from16 v70, v4

    move/from16 v72, v5

    move/from16 v4, v17

    .end local v4    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v5    # "iu":I
    .local v70, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v72, "iu":I
    invoke-virtual {v2, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v5

    .line 4540
    .local v5, "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v5, :cond_2

    .line 4541
    invoke-virtual {v5, v7, v8, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v73

    add-long v66, v66, v73

    .line 4545
    :cond_2
    move-object/from16 v73, v5

    const/4 v4, 0x0

    .end local v5    # "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    .local v73, "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v2, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v5

    .line 4546
    .local v5, "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v5, :cond_3

    .line 4547
    invoke-virtual {v5, v7, v8, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v74

    add-long v68, v68, v74

    .line 4536
    .end local v2    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v5    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    .end local v73    # "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    :cond_3
    add-int/lit8 v12, v12, -0x1

    move-object/from16 v4, v70

    move/from16 v2, v71

    move/from16 v5, v72

    const/16 v17, 0x1

    goto :goto_2

    .end local v70    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v71    # "NU":I
    .end local v72    # "iu":I
    .local v2, "NU":I
    .restart local v4    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v5, "iu":I
    :cond_4
    move/from16 v71, v2

    move-object/from16 v70, v4

    move/from16 v72, v5

    .line 4531
    .end local v2    # "NU":I
    .end local v4    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v5    # "iu":I
    .end local v10    # "u":Landroid/os/BatteryStats$Uid;
    .end local v11    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v12    # "iw":I
    .restart local v70    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v71    # "NU":I
    .restart local v72    # "iu":I
    add-int/lit8 v5, v72, 0x1

    const/16 v17, 0x1

    .end local v72    # "iu":I
    .restart local v5    # "iu":I
    goto :goto_1

    .end local v70    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v71    # "NU":I
    .restart local v2    # "NU":I
    .restart local v4    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    :cond_5
    move/from16 v71, v2

    move-object/from16 v70, v4

    move/from16 v72, v5

    .line 4554
    .end local v2    # "NU":I
    .end local v4    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v5    # "iu":I
    .restart local v70    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v71    # "NU":I
    const/4 v11, 0x0

    invoke-virtual {v0, v11, v6}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v72

    .line 4555
    .local v72, "mobileRxTotalBytes":J
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v6}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v74

    .line 4556
    .local v74, "mobileTxTotalBytes":J
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v6}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v77

    .line 4557
    .local v77, "wifiRxTotalBytes":J
    const/4 v10, 0x3

    invoke-virtual {v0, v10, v6}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v79

    .line 4558
    .local v79, "wifiTxTotalBytes":J
    invoke-virtual {v0, v11, v6}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v81

    .line 4559
    .local v81, "mobileRxTotalPackets":J
    invoke-virtual {v0, v4, v6}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v83

    .line 4560
    .local v83, "mobileTxTotalPackets":J
    invoke-virtual {v0, v2, v6}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v85

    .line 4561
    .local v85, "wifiRxTotalPackets":J
    invoke-virtual {v0, v10, v6}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v87

    .line 4562
    .local v87, "wifiTxTotalPackets":J
    const/4 v11, 0x4

    invoke-virtual {v0, v11, v6}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v89

    .line 4563
    .local v89, "btRxTotalBytes":J
    const/4 v12, 0x5

    invoke-virtual {v0, v12, v6}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v91

    .line 4564
    .local v91, "btTxTotalBytes":J
    nop

    .line 4565
    invoke-static/range {v72 .. v73}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v93

    invoke-static/range {v74 .. v75}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v94

    invoke-static/range {v77 .. v78}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v95

    invoke-static/range {v79 .. v80}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v96

    .line 4566
    invoke-static/range {v81 .. v82}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v97

    invoke-static/range {v83 .. v84}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v98

    invoke-static/range {v85 .. v86}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v99

    invoke-static/range {v87 .. v88}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v100

    .line 4567
    invoke-static/range {v89 .. v90}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v101

    invoke-static/range {v91 .. v92}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v102

    filled-new-array/range {v93 .. v102}, [Ljava/lang/Object;

    move-result-object v5

    .line 4564
    const-string/jumbo v2, "gn"

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v2, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4570
    nop

    .line 4571
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    .line 4570
    const/4 v2, 0x0

    const-string/jumbo v4, "gmcd"

    move-wide/from16 v103, v18

    move-object/from16 v11, v20

    move-object/from16 v10, v70

    move/from16 v105, v71

    const/4 v12, 0x2

    .end local v18    # "batteryUptime":J
    .end local v20    # "sb":Ljava/lang/StringBuilder;
    .end local v70    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v71    # "NU":I
    .local v10, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v11, "sb":Ljava/lang/StringBuilder;
    .local v103, "batteryUptime":J
    .local v105, "NU":I
    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 4574
    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v93

    .line 4575
    .local v93, "wifiOnTime":J
    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v95

    .line 4576
    .local v95, "wifiRunningTime":J
    div-long v4, v93, v21

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    div-long v4, v95, v21

    .line 4577
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v2, v4, v15, v15, v15}, [Ljava/lang/Object;

    move-result-object v2

    .line 4576
    const-string/jumbo v4, "gwfl"

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v4, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4579
    nop

    .line 4580
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    .line 4579
    const/4 v2, 0x0

    const-string/jumbo v4, "gwfcd"

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 4583
    nop

    .line 4584
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    .line 4583
    const-string v4, "gble"

    move-object/from16 v1, p2

    move/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 4587
    move-object v2, v3

    .end local v3    # "category":Ljava/lang/String;
    .local v2, "category":Ljava/lang/String;
    div-long v3, v35, v21

    .line 4588
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v107

    div-long v3, v52, v21

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v108

    div-long v3, v66, v21

    .line 4589
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v109

    div-long v3, v68, v21

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v110

    .line 4590
    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v3

    div-long v3, v3, v21

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v111

    .line 4591
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getMobileRadioActiveAdjustedTime(I)J

    move-result-wide v3

    div-long v3, v3, v21

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v112

    div-long v3, v39, v21

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v113

    div-long v3, v41, v21

    .line 4592
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v114

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v115

    div-long v3, v45, v21

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v116

    .line 4593
    invoke-virtual {v0, v12, v6}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v117

    div-long v3, v49, v21

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v118

    .line 4594
    invoke-virtual {v0, v12, v6}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v119

    .line 4595
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getMobileRadioActiveCount(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v120

    .line 4596
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownTime(I)J

    move-result-wide v3

    div-long v3, v3, v21

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v121

    div-long v3, v43, v21

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v122

    .line 4597
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v6}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v123

    div-long v4, v47, v21

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v124

    .line 4598
    invoke-virtual {v0, v3, v6}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v125

    .line 4599
    invoke-virtual {v0, v3}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v126

    .line 4600
    invoke-virtual {v0, v12}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v127

    filled-new-array/range {v107 .. v127}, [Ljava/lang/Object;

    move-result-object v4

    .line 4587
    const-string/jumbo v5, "m"

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v5, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4603
    const/4 v3, 0x5

    new-array v4, v3, [Ljava/lang/Object;

    .line 4604
    .local v4, "args":[Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v3, :cond_6

    .line 4605
    invoke-virtual {v0, v5, v7, v8, v6}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v18

    div-long v18, v18, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v5

    .line 4604
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x5

    goto :goto_3

    .line 4607
    .end local v5    # "i":I
    :cond_6
    const-string v3, "br"

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v3, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4610
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Object;

    .line 4611
    .end local v4    # "args":[Ljava/lang/Object;
    .local v3, "args":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 4612
    invoke-virtual {v0, v4, v7, v8, v6}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v18

    div-long v18, v18, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 4611
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 4614
    .end local v4    # "i":I
    :cond_7
    const-string/jumbo v4, "sgt"

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4615
    nop

    .line 4616
    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    move-result-wide v18

    div-long v18, v18, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 4615
    const-string/jumbo v12, "sst"

    invoke-static {v1, v5, v2, v12, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4617
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_5
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 4618
    invoke-virtual {v0, v4, v6}, Landroid/os/BatteryStats;->getPhoneSignalStrengthCount(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 4617
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 4620
    .end local v4    # "i":I
    :cond_8
    const-string/jumbo v4, "sgc"

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4623
    sget v4, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    new-array v3, v4, [Ljava/lang/Object;

    .line 4624
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_6
    sget v5, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    if-ge v4, v5, :cond_9

    .line 4625
    invoke-virtual {v0, v4, v7, v8, v6}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    move-result-wide v19

    div-long v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 4624
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 4627
    .end local v4    # "i":I
    :cond_9
    const-string v4, "dct"

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4628
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_7
    sget v5, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    if-ge v4, v5, :cond_a

    .line 4629
    invoke-virtual {v0, v4, v6}, Landroid/os/BatteryStats;->getPhoneDataConnectionCount(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 4628
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 4631
    .end local v4    # "i":I
    :cond_a
    const-string v4, "dcc"

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4634
    const/16 v12, 0x8

    new-array v3, v12, [Ljava/lang/Object;

    .line 4635
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_8
    if-ge v4, v12, :cond_b

    .line 4636
    invoke-virtual {v0, v4, v7, v8, v6}, Landroid/os/BatteryStats;->getWifiStateTime(IJI)J

    move-result-wide v19

    div-long v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 4635
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 4638
    .end local v4    # "i":I
    :cond_b
    const-string/jumbo v4, "wst"

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4639
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_9
    if-ge v4, v12, :cond_c

    .line 4640
    invoke-virtual {v0, v4, v6}, Landroid/os/BatteryStats;->getWifiStateCount(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 4639
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 4642
    .end local v4    # "i":I
    :cond_c
    const-string/jumbo v4, "wsc"

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4645
    const/16 v4, 0xd

    new-array v3, v4, [Ljava/lang/Object;

    .line 4646
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_a
    if-ge v5, v4, :cond_d

    .line 4647
    invoke-virtual {v0, v5, v7, v8, v6}, Landroid/os/BatteryStats;->getWifiSupplStateTime(IJI)J

    move-result-wide v19

    div-long v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v3, v5

    .line 4646
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 4649
    .end local v5    # "i":I
    :cond_d
    const-string/jumbo v5, "wsst"

    const/4 v12, 0x0

    invoke-static {v1, v12, v2, v5, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4650
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_b
    if-ge v5, v4, :cond_e

    .line 4651
    invoke-virtual {v0, v5, v6}, Landroid/os/BatteryStats;->getWifiSupplStateCount(II)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v5

    .line 4650
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 4653
    .end local v5    # "i":I
    :cond_e
    const-string/jumbo v5, "wssc"

    const/4 v12, 0x0

    invoke-static {v1, v12, v2, v5, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4656
    const/4 v5, 0x5

    new-array v12, v5, [Ljava/lang/Object;

    .line 4657
    .end local v3    # "args":[Ljava/lang/Object;
    .local v12, "args":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v5, :cond_f

    .line 4658
    invoke-virtual {v0, v3, v7, v8, v6}, Landroid/os/BatteryStats;->getWifiSignalStrengthTime(IJI)J

    move-result-wide v97

    div-long v97, v97, v21

    invoke-static/range {v97 .. v98}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v12, v3

    .line 4657
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x5

    goto :goto_c

    .line 4660
    .end local v3    # "i":I
    :cond_f
    const-string/jumbo v3, "wsgt"

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v3, v12}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4661
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_d
    const/4 v5, 0x5

    if-ge v3, v5, :cond_10

    .line 4662
    invoke-virtual {v0, v3, v6}, Landroid/os/BatteryStats;->getWifiSignalStrengthCount(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v12, v3

    .line 4661
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 4664
    .end local v3    # "i":I
    :cond_10
    const-string/jumbo v3, "wsgc"

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v3, v12}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4667
    nop

    .line 4668
    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getWifiMulticastWakelockTime(JI)J

    move-result-wide v97

    .line 4669
    .local v97, "multicastWakeLockTimeTotalMicros":J
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getWifiMulticastWakelockCount(I)I

    move-result v71

    .line 4670
    .local v71, "multicastWakeLockCountTotal":I
    div-long v99, v97, v21

    .line 4671
    invoke-static/range {v99 .. v100}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 4672
    invoke-static/range {v71 .. v71}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 4670
    const-string/jumbo v5, "wmct"

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v5, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4674
    nop

    .line 4675
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v107

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v108

    .line 4676
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v109

    .line 4677
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v110

    div-long v3, v54, v21

    .line 4678
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v111

    div-long v3, v56, v21

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v112

    .line 4679
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDozeSinceCharge()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v113

    div-long v3, v58, v21

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v114

    div-long v3, v60, v21

    .line 4680
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v115

    div-long v3, v62, v21

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v116

    filled-new-array/range {v107 .. v116}, [Ljava/lang/Object;

    move-result-object v3

    .line 4674
    const-string v4, "dc"

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4682
    const-wide/16 v99, 0x1f4

    const-string v3, "\""

    if-gez v9, :cond_15

    .line 4683
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v101

    .line 4684
    .local v101, "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v101 .. v101}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_12

    .line 4685
    invoke-interface/range {v101 .. v101}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v102

    :goto_e
    invoke-interface/range {v102 .. v102}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface/range {v102 .. v102}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v107, v4

    check-cast v107, Ljava/util/Map$Entry;

    .line 4686
    .local v107, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4687
    invoke-interface/range {v107 .. v107}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const/4 v5, 0x0

    move-object/from16 v108, v3

    move-wide/from16 v213, v7

    move-object v8, v2

    move-object v2, v4

    move-wide/from16 v3, v213

    .end local v2    # "category":Ljava/lang/String;
    .end local v7    # "rawRealtime":J
    .local v3, "rawRealtime":J
    .local v8, "category":Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v20, v8

    move-object v8, v1

    move-object v1, v11

    move-object/from16 v11, v20

    move-object/from16 v20, v12

    move-object/from16 v12, v108

    move-wide/from16 v108, v13

    const/4 v13, 0x1

    .end local v8    # "category":Ljava/lang/String;
    .end local v12    # "args":[Ljava/lang/Object;
    .end local v13    # "rawRealtimeMs":J
    .local v1, "sb":Ljava/lang/StringBuilder;
    .local v11, "category":Ljava/lang/String;
    .local v20, "args":[Ljava/lang/Object;
    .local v108, "rawRealtimeMs":J
    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 4688
    move-object v7, v1

    move-wide v1, v3

    .end local v3    # "rawRealtime":J
    .local v1, "rawRealtime":J
    .local v7, "sb":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4689
    invoke-interface/range {v107 .. v107}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 4688
    const-string/jumbo v4, "kwl"

    const/4 v5, 0x0

    invoke-static {v8, v5, v11, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4690
    .end local v107    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    move-object v3, v12

    move-object/from16 v12, v20

    move-wide/from16 v13, v108

    move-object/from16 v213, v11

    move-object v11, v7

    move-wide/from16 v214, v1

    move-object v1, v8

    move-wide/from16 v7, v214

    move-object/from16 v2, v213

    goto :goto_e

    .line 4685
    .end local v1    # "rawRealtime":J
    .end local v20    # "args":[Ljava/lang/Object;
    .end local v108    # "rawRealtimeMs":J
    .restart local v2    # "category":Ljava/lang/String;
    .local v7, "rawRealtime":J
    .local v11, "sb":Ljava/lang/StringBuilder;
    .restart local v12    # "args":[Ljava/lang/Object;
    .restart local v13    # "rawRealtimeMs":J
    :cond_11
    move-object/from16 v20, v12

    move-wide/from16 v108, v13

    const/4 v13, 0x1

    move-object v12, v3

    move-wide/from16 v213, v7

    move-object v8, v1

    move-object v7, v11

    move-object v11, v2

    move-wide/from16 v1, v213

    .end local v2    # "category":Ljava/lang/String;
    .end local v12    # "args":[Ljava/lang/Object;
    .end local v13    # "rawRealtimeMs":J
    .restart local v1    # "rawRealtime":J
    .local v7, "sb":Ljava/lang/StringBuilder;
    .local v11, "category":Ljava/lang/String;
    .restart local v20    # "args":[Ljava/lang/Object;
    .restart local v108    # "rawRealtimeMs":J
    goto :goto_f

    .line 4684
    .end local v1    # "rawRealtime":J
    .end local v20    # "args":[Ljava/lang/Object;
    .end local v108    # "rawRealtimeMs":J
    .restart local v2    # "category":Ljava/lang/String;
    .local v7, "rawRealtime":J
    .local v11, "sb":Ljava/lang/StringBuilder;
    .restart local v12    # "args":[Ljava/lang/Object;
    .restart local v13    # "rawRealtimeMs":J
    :cond_12
    move-object/from16 v20, v12

    move-wide/from16 v108, v13

    const/4 v13, 0x1

    move-object v12, v3

    move-wide/from16 v213, v7

    move-object v8, v1

    move-object v7, v11

    move-object v11, v2

    move-wide/from16 v1, v213

    .line 4692
    .end local v2    # "category":Ljava/lang/String;
    .end local v12    # "args":[Ljava/lang/Object;
    .end local v13    # "rawRealtimeMs":J
    .restart local v1    # "rawRealtime":J
    .local v7, "sb":Ljava/lang/StringBuilder;
    .local v11, "category":Ljava/lang/String;
    .restart local v20    # "args":[Ljava/lang/Object;
    .restart local v108    # "rawRealtimeMs":J
    :goto_f
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v3

    .line 4693
    .local v3, "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_14

    .line 4694
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 4697
    .local v5, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v14, v1, v2, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v106

    .line 4698
    .local v106, "totalTimeMicros":J
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v14, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v14

    .line 4699
    .local v14, "count":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 4700
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v110

    move-object/from16 v111, v3

    .end local v3    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v111, "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    move-object/from16 v3, v110

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-long v112, v106, v99

    div-long v112, v112, v21

    invoke-static/range {v112 .. v113}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v110, v4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v13, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 4699
    const-string/jumbo v4, "wr"

    const/4 v13, 0x0

    invoke-static {v8, v13, v11, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4701
    .end local v5    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v14    # "count":I
    .end local v106    # "totalTimeMicros":J
    move-object/from16 v4, v110

    move-object/from16 v3, v111

    const/4 v13, 0x1

    goto :goto_10

    .line 4694
    .end local v111    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v3    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_13
    move-object/from16 v111, v3

    .end local v3    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v111    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    goto :goto_11

    .line 4693
    .end local v111    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v3    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_14
    move-object/from16 v111, v3

    .end local v3    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v111    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    goto :goto_11

    .line 4682
    .end local v1    # "rawRealtime":J
    .end local v20    # "args":[Ljava/lang/Object;
    .end local v101    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v108    # "rawRealtimeMs":J
    .end local v111    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v2    # "category":Ljava/lang/String;
    .local v7, "rawRealtime":J
    .local v11, "sb":Ljava/lang/StringBuilder;
    .restart local v12    # "args":[Ljava/lang/Object;
    .restart local v13    # "rawRealtimeMs":J
    :cond_15
    move-object/from16 v20, v12

    move-wide/from16 v108, v13

    move-object v12, v3

    move-wide/from16 v213, v7

    move-object v8, v1

    move-object v7, v11

    move-object v11, v2

    move-wide/from16 v1, v213

    .line 4705
    .end local v2    # "category":Ljava/lang/String;
    .end local v12    # "args":[Ljava/lang/Object;
    .end local v13    # "rawRealtimeMs":J
    .restart local v1    # "rawRealtime":J
    .local v7, "sb":Ljava/lang/StringBuilder;
    .local v11, "category":Ljava/lang/String;
    .restart local v20    # "args":[Ljava/lang/Object;
    .restart local v108    # "rawRealtimeMs":J
    :goto_11
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getRpmStats()Ljava/util/Map;

    move-result-object v101

    .line 4706
    .local v101, "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getScreenOffRpmStats()Ljava/util/Map;

    move-result-object v13

    .line 4707
    .local v13, "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v101 .. v101}, Ljava/util/Map;->size()I

    move-result v3

    const-wide/16 v106, 0x0

    if-lez v3, :cond_19

    .line 4708
    invoke-interface/range {v101 .. v101}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 4709
    .local v4, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4710
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Timer;

    .line 4711
    .local v5, "totalTimer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v5, v1, v2, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v110

    add-long v110, v110, v99

    div-long v110, v110, v21

    .line 4712
    .local v110, "timeMs":J
    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v14

    .line 4713
    .restart local v14    # "count":I
    move-object/from16 v112, v3

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Timer;

    .line 4714
    .local v3, "screenOffTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v3, :cond_16

    .line 4715
    invoke-virtual {v3, v1, v2, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v113

    add-long v113, v113, v99

    div-long v113, v113, v21

    goto :goto_13

    :cond_16
    move-wide/from16 v113, v106

    .line 4716
    .local v113, "screenOffTimeMs":J
    :goto_13
    if-eqz v3, :cond_17

    .line 4717
    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v115

    goto :goto_14

    :cond_17
    const/16 v115, 0x0

    .line 4723
    .local v115, "screenOffCount":I
    :goto_14
    move-wide/from16 v116, v1

    .end local v1    # "rawRealtime":J
    .local v116, "rawRealtime":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4724
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v110 .. v111}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v118, v3

    .end local v3    # "screenOffTimer":Landroid/os/BatteryStats$Timer;
    .local v118, "screenOffTimer":Landroid/os/BatteryStats$Timer;
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 4723
    const-string/jumbo v2, "rpm"

    const/4 v3, 0x0

    invoke-static {v8, v3, v11, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4726
    .end local v4    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v5    # "totalTimer":Landroid/os/BatteryStats$Timer;
    .end local v14    # "count":I
    .end local v110    # "timeMs":J
    .end local v113    # "screenOffTimeMs":J
    .end local v115    # "screenOffCount":I
    .end local v118    # "screenOffTimer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v3, v112

    move-wide/from16 v1, v116

    goto :goto_12

    .line 4708
    .end local v116    # "rawRealtime":J
    .restart local v1    # "rawRealtime":J
    :cond_18
    move-wide/from16 v116, v1

    .end local v1    # "rawRealtime":J
    .restart local v116    # "rawRealtime":J
    goto :goto_15

    .line 4707
    .end local v116    # "rawRealtime":J
    .restart local v1    # "rawRealtime":J
    :cond_19
    move-wide/from16 v116, v1

    .line 4729
    .end local v1    # "rawRealtime":J
    .restart local v116    # "rawRealtime":J
    :goto_15
    move-object/from16 v14, p6

    const/4 v4, 0x1

    invoke-interface {v14, v0, v4}, Landroid/os/BatteryStats$BatteryStatsDumpHelper;->getBatteryUsageStats(Landroid/os/BatteryStats;Z)Landroid/os/BatteryUsageStats;

    move-result-object v1

    .line 4730
    .local v1, "stats":Landroid/os/BatteryUsageStats;
    nop

    .line 4731
    invoke-virtual {v1}, Landroid/os/BatteryUsageStats;->getBatteryCapacity()D

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    .line 4732
    invoke-virtual {v1}, Landroid/os/BatteryUsageStats;->getConsumedPower()D

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v3

    .line 4733
    invoke-virtual {v1}, Landroid/os/BatteryUsageStats;->getDischargedPowerRange()Landroid/util/Range;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v4

    .line 4734
    invoke-virtual {v1}, Landroid/os/BatteryUsageStats;->getDischargedPowerRange()Landroid/util/Range;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v110

    invoke-static/range {v110 .. v111}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    .line 4730
    const-string/jumbo v3, "pws"

    const/4 v5, 0x0

    invoke-static {v8, v5, v11, v3, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4735
    invoke-virtual {v1, v5}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/AggregateBatteryConsumer;

    move-result-object v2

    .line 4737
    .local v2, "deviceConsumer":Landroid/os/BatteryConsumer;
    const/4 v3, 0x0

    .line 4738
    .local v3, "powerComponent":I
    :goto_16
    const/16 v4, 0x13

    const-string/jumbo v5, "pwi"

    if-ge v3, v4, :cond_1b

    .line 4739
    sget-object v4, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 4740
    .local v4, "label":Ljava/lang/String;
    if-nez v4, :cond_1a

    .line 4741
    const-string v4, "???"

    .line 4743
    :cond_1a
    nop

    .line 4744
    invoke-virtual {v2, v3}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    move-result-wide v110

    move-object/from16 v112, v2

    .end local v2    # "deviceConsumer":Landroid/os/BatteryConsumer;
    .local v112, "deviceConsumer":Landroid/os/BatteryConsumer;
    invoke-static/range {v110 .. v111}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    .line 4745
    invoke-direct {v0, v3}, Landroid/os/BatteryStats;->shouldHidePowerComponent(I)Z

    move-result v110

    invoke-static/range {v110 .. v110}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move/from16 v110, v3

    .end local v3    # "powerComponent":I
    .local v110, "powerComponent":I
    const-string v3, "0"

    filled-new-array {v4, v2, v0, v3, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 4743
    const/4 v3, 0x0

    invoke-static {v8, v3, v11, v5, v0}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4738
    .end local v4    # "label":Ljava/lang/String;
    add-int/lit8 v3, v110, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v112

    .end local v110    # "powerComponent":I
    .restart local v3    # "powerComponent":I
    goto :goto_16

    .end local v112    # "deviceConsumer":Landroid/os/BatteryConsumer;
    .restart local v2    # "deviceConsumer":Landroid/os/BatteryConsumer;
    :cond_1b
    move-object/from16 v112, v2

    move/from16 v110, v3

    .line 4748
    .end local v2    # "deviceConsumer":Landroid/os/BatteryConsumer;
    .end local v3    # "powerComponent":I
    .restart local v112    # "deviceConsumer":Landroid/os/BatteryConsumer;
    new-instance v0, Landroid/os/BatteryStats$ProportionalAttributionCalculator;

    move-object/from16 v2, p1

    invoke-direct {v0, v2, v1}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;-><init>(Landroid/content/Context;Landroid/os/BatteryUsageStats;)V

    .line 4750
    .local v0, "proportionalAttributionCalculator":Landroid/os/BatteryStats$ProportionalAttributionCalculator;
    invoke-virtual {v1}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v3

    .line 4751
    .local v3, "uidBatteryConsumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_17
    move-object/from16 v110, v1

    .end local v1    # "stats":Landroid/os/BatteryUsageStats;
    .local v110, "stats":Landroid/os/BatteryUsageStats;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_1c

    .line 4752
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UidBatteryConsumer;

    .line 4753
    .local v1, "consumer":Landroid/os/UidBatteryConsumer;
    invoke-virtual {v1}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v2

    .line 4754
    invoke-virtual {v1}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide v113

    move-object/from16 v111, v3

    .end local v3    # "uidBatteryConsumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    .local v111, "uidBatteryConsumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    invoke-static/range {v113 .. v114}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v3

    .line 4755
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->isSystemBatteryConsumer(Landroid/os/UidBatteryConsumer;)Z

    move-result v113

    move/from16 v114, v4

    .end local v4    # "i":I
    .local v114, "i":I
    invoke-static/range {v113 .. v113}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 4756
    move-object/from16 v113, v12

    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/os/UidBatteryConsumer;->getConsumedPower(I)D

    move-result-wide v118

    invoke-static/range {v118 .. v119}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v12

    .line 4758
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->getProportionalPowerMah(Landroid/os/UidBatteryConsumer;)D

    move-result-wide v118

    .line 4757
    move-object/from16 v115, v0

    .end local v0    # "proportionalAttributionCalculator":Landroid/os/BatteryStats$ProportionalAttributionCalculator;
    .local v115, "proportionalAttributionCalculator":Landroid/os/BatteryStats$ProportionalAttributionCalculator;
    invoke-static/range {v118 .. v119}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v118, v1

    .end local v1    # "consumer":Landroid/os/UidBatteryConsumer;
    .local v118, "consumer":Landroid/os/UidBatteryConsumer;
    const-string/jumbo v1, "uid"

    filled-new-array {v1, v3, v4, v12, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 4753
    invoke-static {v8, v2, v11, v5, v0}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4751
    .end local v118    # "consumer":Landroid/os/UidBatteryConsumer;
    add-int/lit8 v4, v114, 0x1

    move-object/from16 v2, p1

    move-object/from16 v1, v110

    move-object/from16 v3, v111

    move-object/from16 v12, v113

    move-object/from16 v0, v115

    .end local v114    # "i":I
    .restart local v4    # "i":I
    goto :goto_17

    .end local v111    # "uidBatteryConsumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    .end local v115    # "proportionalAttributionCalculator":Landroid/os/BatteryStats$ProportionalAttributionCalculator;
    .restart local v0    # "proportionalAttributionCalculator":Landroid/os/BatteryStats$ProportionalAttributionCalculator;
    .restart local v3    # "uidBatteryConsumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    :cond_1c
    move-object/from16 v115, v0

    move-object/from16 v111, v3

    move/from16 v114, v4

    move-object/from16 v113, v12

    .line 4761
    .end local v0    # "proportionalAttributionCalculator":Landroid/os/BatteryStats$ProportionalAttributionCalculator;
    .end local v3    # "uidBatteryConsumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    .end local v4    # "i":I
    .restart local v111    # "uidBatteryConsumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    .restart local v115    # "proportionalAttributionCalculator":Landroid/os/BatteryStats$ProportionalAttributionCalculator;
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v0

    .line 4762
    .local v0, "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    if-eqz v0, :cond_20

    .line 4763
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4764
    invoke-virtual {v0}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_1f

    aget v4, v1, v3

    .line 4765
    .local v4, "policy":I
    invoke-virtual {v0, v4}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v5

    array-length v12, v5

    move-object/from16 v118, v0

    const/4 v0, 0x0

    .end local v0    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .local v118, "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    :goto_19
    if-ge v0, v12, :cond_1e

    move/from16 v119, v0

    aget v0, v5, v119

    .line 4766
    .local v0, "frequency":I
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v120

    if-eqz v120, :cond_1d

    move/from16 v120, v12

    const/16 v12, 0x2c

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1a

    :cond_1d
    move/from16 v120, v12

    const/16 v12, 0x2c

    .line 4767
    :goto_1a
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4765
    .end local v0    # "frequency":I
    add-int/lit8 v0, v119, 0x1

    move/from16 v12, v120

    goto :goto_19

    :cond_1e
    const/16 v12, 0x2c

    .line 4764
    .end local v4    # "policy":I
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v118

    goto :goto_18

    .line 4770
    .end local v118    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .local v0, "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    :cond_1f
    move-object/from16 v118, v0

    const/16 v12, 0x2c

    .end local v0    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .restart local v118    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "gcf"

    const/4 v5, 0x0

    invoke-static {v8, v5, v11, v1, v0}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1b

    .line 4762
    .end local v118    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .restart local v0    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    :cond_20
    move-object/from16 v118, v0

    const/16 v12, 0x2c

    .line 4774
    .end local v0    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .restart local v118    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    :goto_1b
    const/4 v0, 0x0

    move-object/from16 v114, v20

    .end local v20    # "args":[Ljava/lang/Object;
    .local v0, "iu":I
    .local v114, "args":[Ljava/lang/Object;
    :goto_1c
    move/from16 v1, v105

    .end local v105    # "NU":I
    .local v1, "NU":I
    if-ge v0, v1, :cond_6a

    .line 4775
    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 4776
    .local v2, "uid":I
    if-ltz v9, :cond_21

    if-eq v2, v9, :cond_21

    .line 4777
    move/from16 v70, v1

    move-object/from16 v198, v7

    move-object v1, v8

    move-object/from16 v16, v10

    move-object v2, v11

    move-object/from16 v105, v13

    move-object/from16 v176, v15

    move-wide/from16 v9, v103

    move-wide/from16 v11, v108

    move-object/from16 v15, v113

    move-wide/from16 v189, v116

    const/16 v18, 0x2

    const/16 v113, 0x5

    const/16 v116, 0x3

    const/16 v128, 0xd

    const/16 v174, 0x1

    const/16 v175, 0x8

    const/16 v177, 0x4

    move/from16 v117, v0

    goto/16 :goto_55

    .line 4779
    :cond_21
    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid;

    .line 4782
    .local v3, "u":Landroid/os/BatteryStats$Uid;
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v119

    .line 4783
    .local v119, "mobileBytesRx":J
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v121

    .line 4784
    .local v121, "mobileBytesTx":J
    const/4 v12, 0x2

    invoke-virtual {v3, v12, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v123

    .line 4785
    .local v123, "wifiBytesRx":J
    const/4 v12, 0x3

    invoke-virtual {v3, v12, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v125

    .line 4786
    .local v125, "wifiBytesTx":J
    invoke-virtual {v3, v5, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v129

    .line 4787
    .local v129, "mobilePacketsRx":J
    invoke-virtual {v3, v4, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v131

    .line 4788
    .local v131, "mobilePacketsTx":J
    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v133

    .line 4789
    .local v133, "mobileActiveTime":J
    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v102

    .line 4790
    .local v102, "mobileActiveCount":I
    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v135

    .line 4791
    .local v135, "mobileWakeup":J
    const/4 v12, 0x2

    invoke-virtual {v3, v12, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v137

    .line 4792
    .local v137, "wifiPacketsRx":J
    const/4 v5, 0x3

    invoke-virtual {v3, v5, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v139

    .line 4793
    .local v139, "wifiPacketsTx":J
    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    move-result-wide v141

    .line 4794
    .local v141, "wifiWakeup":J
    const/4 v12, 0x4

    invoke-virtual {v3, v12, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v143

    .line 4795
    .local v143, "btBytesRx":J
    const/4 v12, 0x5

    invoke-virtual {v3, v12, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v145

    .line 4797
    .local v145, "btBytesTx":J
    const/4 v4, 0x6

    invoke-virtual {v3, v4, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v147

    .line 4799
    .local v147, "mobileBytesBgRx":J
    const/4 v4, 0x7

    invoke-virtual {v3, v4, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v149

    .line 4801
    .local v149, "mobileBytesBgTx":J
    const/16 v12, 0x8

    invoke-virtual {v3, v12, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v151

    .line 4802
    .local v151, "wifiBytesBgRx":J
    const/16 v5, 0x9

    invoke-virtual {v3, v5, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v153

    .line 4803
    .local v153, "wifiBytesBgTx":J
    const/4 v5, 0x6

    invoke-virtual {v3, v5, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v155

    .line 4805
    .local v155, "mobilePacketsBgRx":J
    invoke-virtual {v3, v4, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v157

    .line 4807
    .local v157, "mobilePacketsBgTx":J
    invoke-virtual {v3, v12, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v159

    .line 4809
    .local v159, "wifiPacketsBgRx":J
    const/16 v5, 0x9

    invoke-virtual {v3, v5, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v161

    .line 4812
    .local v161, "wifiPacketsBgTx":J
    cmp-long v5, v119, v106

    if-gtz v5, :cond_22

    cmp-long v5, v121, v106

    if-gtz v5, :cond_22

    cmp-long v5, v123, v106

    if-gtz v5, :cond_22

    cmp-long v5, v125, v106

    if-gtz v5, :cond_22

    cmp-long v5, v129, v106

    if-gtz v5, :cond_22

    cmp-long v5, v131, v106

    if-gtz v5, :cond_22

    cmp-long v5, v137, v106

    if-gtz v5, :cond_22

    cmp-long v5, v139, v106

    if-gtz v5, :cond_22

    cmp-long v5, v133, v106

    if-gtz v5, :cond_22

    if-gtz v102, :cond_22

    cmp-long v5, v143, v106

    if-gtz v5, :cond_22

    cmp-long v5, v145, v106

    if-gtz v5, :cond_22

    cmp-long v5, v135, v106

    if-gtz v5, :cond_22

    cmp-long v5, v141, v106

    if-gtz v5, :cond_22

    cmp-long v5, v147, v106

    if-gtz v5, :cond_22

    cmp-long v5, v149, v106

    if-gtz v5, :cond_22

    cmp-long v5, v151, v106

    if-gtz v5, :cond_22

    cmp-long v5, v153, v106

    if-gtz v5, :cond_22

    cmp-long v5, v155, v106

    if-gtz v5, :cond_22

    cmp-long v5, v157, v106

    if-gtz v5, :cond_22

    cmp-long v5, v159, v106

    if-gtz v5, :cond_22

    cmp-long v5, v161, v106

    if-lez v5, :cond_23

    .line 4820
    :cond_22
    invoke-static/range {v119 .. v120}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v163

    invoke-static/range {v121 .. v122}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v164

    .line 4821
    invoke-static/range {v123 .. v124}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v165

    invoke-static/range {v125 .. v126}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    .line 4822
    invoke-static/range {v129 .. v130}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v167

    invoke-static/range {v131 .. v132}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v168

    .line 4823
    invoke-static/range {v137 .. v138}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v169

    invoke-static/range {v139 .. v140}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v170

    .line 4824
    invoke-static/range {v133 .. v134}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v171

    invoke-static/range {v102 .. v102}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v172

    .line 4825
    invoke-static/range {v143 .. v144}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v173

    invoke-static/range {v145 .. v146}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v174

    invoke-static/range {v135 .. v136}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v175

    invoke-static/range {v141 .. v142}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v176

    .line 4826
    invoke-static/range {v147 .. v148}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v177

    invoke-static/range {v149 .. v150}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v178

    invoke-static/range {v151 .. v152}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v179

    invoke-static/range {v153 .. v154}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v180

    .line 4827
    invoke-static/range {v155 .. v156}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v181

    invoke-static/range {v157 .. v158}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v182

    invoke-static/range {v159 .. v160}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v183

    invoke-static/range {v161 .. v162}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v184

    filled-new-array/range {v163 .. v184}, [Ljava/lang/Object;

    move-result-object v5

    .line 4820
    const-string/jumbo v4, "nt"

    invoke-static {v8, v2, v11, v4, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4832
    :cond_23
    nop

    .line 4833
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    .line 4832
    const-string/jumbo v4, "mcd"

    move-object v9, v11

    move-object v11, v3

    move-object v3, v9

    move/from16 v70, v1

    move-object v1, v8

    move-wide/from16 v8, v116

    const/16 v17, 0x1

    const/16 v116, 0x3

    move/from16 v117, v0

    const/4 v0, 0x7

    .end local v0    # "iu":I
    .end local v1    # "NU":I
    .end local v116    # "rawRealtime":J
    .local v3, "category":Ljava/lang/String;
    .local v8, "rawRealtime":J
    .local v11, "u":Landroid/os/BatteryStats$Uid;
    .local v70, "NU":I
    .local v117, "iu":I
    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 4836
    invoke-virtual {v11, v8, v9, v6}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v163

    .line 4837
    .local v163, "fullWifiLockOnTime":J
    invoke-virtual {v11, v8, v9, v6}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v165

    .line 4838
    .local v165, "wifiScanTime":J
    invoke-virtual {v11, v6}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v127

    .line 4839
    .local v127, "wifiScanCount":I
    invoke-virtual {v11, v6}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundCount(I)I

    move-result v167

    .line 4841
    .local v167, "wifiScanCountBg":I
    invoke-virtual {v11, v8, v9}, Landroid/os/BatteryStats$Uid;->getWifiScanActualTime(J)J

    move-result-wide v4

    add-long v4, v4, v99

    div-long v168, v4, v21

    .line 4842
    .local v168, "wifiScanActualTimeMs":J
    invoke-virtual {v11, v8, v9}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundTime(J)J

    move-result-wide v4

    add-long v4, v4, v99

    div-long v170, v4, v21

    .line 4844
    .local v170, "wifiScanActualTimeMsBg":J
    invoke-virtual {v11, v8, v9, v6}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v172

    .line 4845
    .local v172, "uidWifiRunningTime":J
    cmp-long v4, v163, v106

    if-nez v4, :cond_25

    cmp-long v4, v165, v106

    if-nez v4, :cond_25

    if-nez v127, :cond_25

    if-nez v167, :cond_25

    cmp-long v4, v168, v106

    if-nez v4, :cond_25

    cmp-long v4, v170, v106

    if-nez v4, :cond_25

    cmp-long v4, v172, v106

    if-eqz v4, :cond_24

    goto :goto_1d

    :cond_24
    move-object v4, v11

    move/from16 v175, v12

    move-object/from16 v105, v13

    move/from16 v0, v17

    move-object/from16 v5, v113

    const/16 v113, 0x5

    const/16 v174, 0x2

    const/16 v176, 0x2c

    const/16 v177, 0x4

    goto :goto_1e

    .line 4848
    :cond_25
    :goto_1d
    move-object v4, v11

    .end local v11    # "u":Landroid/os/BatteryStats$Uid;
    .local v4, "u":Landroid/os/BatteryStats$Uid;
    invoke-static/range {v163 .. v164}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move/from16 v19, v12

    invoke-static/range {v165 .. v166}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 4849
    move-object v5, v13

    .end local v13    # "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v5, "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-static/range {v172 .. v173}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static/range {v127 .. v127}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 4850
    nop

    .line 4851
    const/16 v174, 0x2

    invoke-static/range {v167 .. v167}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move/from16 v175, v19

    invoke-static/range {v168 .. v169}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v176, 0x2c

    invoke-static/range {v170 .. v171}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const/16 v177, 0x4

    move-object/from16 v16, v15

    move/from16 v178, v17

    move-object/from16 v17, v15

    move-object/from16 v105, v5

    move-object/from16 v5, v113

    move/from16 v0, v178

    const/16 v113, 0x5

    .end local v5    # "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v105, "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    filled-new-array/range {v11 .. v20}, [Ljava/lang/Object;

    move-result-object v11

    .line 4848
    const-string/jumbo v12, "wfl"

    invoke-static {v1, v2, v3, v12, v11}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4854
    :goto_1e
    nop

    .line 4855
    move-object v12, v5

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    .line 4854
    move-object v11, v4

    .end local v4    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v11    # "u":Landroid/os/BatteryStats$Uid;
    const-string/jumbo v4, "wfcd"

    move-object v13, v11

    move-object/from16 v185, v12

    move-wide/from16 v11, v108

    move/from16 v14, v174

    .end local v108    # "rawRealtimeMs":J
    .local v11, "rawRealtimeMs":J
    .local v13, "u":Landroid/os/BatteryStats$Uid;
    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 4857
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    .line 4858
    .local v4, "bleTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v4, :cond_2f

    .line 4860
    invoke-virtual {v4, v8, v9, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v16

    add-long v16, v16, v99

    div-long v16, v16, v21

    .line 4862
    .local v16, "totalTime":J
    cmp-long v5, v16, v106

    if-eqz v5, :cond_2e

    .line 4863
    invoke-virtual {v4, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    .line 4864
    .local v5, "count":I
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v14

    .line 4865
    .local v14, "bleTimerBg":Landroid/os/BatteryStats$Timer;
    if-eqz v14, :cond_26

    invoke-virtual {v14, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v19

    goto :goto_1f

    :cond_26
    const/16 v19, 0x0

    .line 4867
    .local v19, "countBg":I
    :goto_1f
    invoke-virtual {v4, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v108

    .line 4868
    .local v108, "actualTime":J
    if-eqz v14, :cond_27

    .line 4869
    invoke-virtual {v14, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v179

    goto :goto_20

    :cond_27
    move-wide/from16 v179, v106

    .line 4871
    .local v179, "actualTimeBg":J
    :goto_20
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v174

    if-eqz v174, :cond_28

    .line 4872
    move/from16 v174, v0

    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v0

    goto :goto_21

    :cond_28
    move/from16 v174, v0

    const/4 v0, 0x0

    .line 4873
    .local v0, "resultCount":I
    :goto_21
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v176

    if-eqz v176, :cond_29

    .line 4874
    move/from16 v176, v0

    .end local v0    # "resultCount":I
    .local v176, "resultCount":I
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v0

    goto :goto_22

    .end local v176    # "resultCount":I
    .restart local v0    # "resultCount":I
    :cond_29
    move/from16 v176, v0

    .end local v0    # "resultCount":I
    .restart local v176    # "resultCount":I
    const/4 v0, 0x0

    .line 4876
    .local v0, "resultCountBg":I
    :goto_22
    move/from16 v181, v0

    .end local v0    # "resultCountBg":I
    .local v181, "resultCountBg":I
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    .line 4877
    .local v0, "unoptimizedScanTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v0, :cond_2a

    .line 4878
    invoke-virtual {v0, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v182

    goto :goto_23

    :cond_2a
    move-wide/from16 v182, v106

    .line 4879
    .local v182, "unoptimizedScanTotalTime":J
    :goto_23
    if-eqz v0, :cond_2b

    .line 4880
    invoke-virtual {v0, v11, v12}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v186

    goto :goto_24

    :cond_2b
    move-wide/from16 v186, v106

    .line 4882
    .local v186, "unoptimizedScanMaxTime":J
    :goto_24
    nop

    .line 4883
    move-object/from16 v184, v0

    .end local v0    # "unoptimizedScanTimer":Landroid/os/BatteryStats$Timer;
    .local v184, "unoptimizedScanTimer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    .line 4884
    .local v0, "unoptimizedScanTimerBg":Landroid/os/BatteryStats$Timer;
    if-eqz v0, :cond_2c

    .line 4885
    invoke-virtual {v0, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v188

    goto :goto_25

    :cond_2c
    move-wide/from16 v188, v106

    .line 4886
    .local v188, "unoptimizedScanTotalTimeBg":J
    :goto_25
    if-eqz v0, :cond_2d

    .line 4887
    invoke-virtual {v0, v11, v12}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v190

    goto :goto_26

    :cond_2d
    move-wide/from16 v190, v106

    .line 4889
    .local v190, "unoptimizedScanMaxTimeBg":J
    :goto_26
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v192

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v193

    .line 4890
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v194

    invoke-static/range {v108 .. v109}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v195

    invoke-static/range {v179 .. v180}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v196

    invoke-static/range {v176 .. v176}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v197

    invoke-static/range {v181 .. v181}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v198

    .line 4891
    invoke-static/range {v182 .. v183}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v199

    invoke-static/range {v188 .. v189}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v200

    .line 4892
    invoke-static/range {v186 .. v187}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v201

    invoke-static/range {v190 .. v191}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v202

    move-object/from16 v203, v0

    .end local v0    # "unoptimizedScanTimerBg":Landroid/os/BatteryStats$Timer;
    .local v203, "unoptimizedScanTimerBg":Landroid/os/BatteryStats$Timer;
    filled-new-array/range {v192 .. v202}, [Ljava/lang/Object;

    move-result-object v0

    .line 4889
    move-object/from16 v192, v4

    .end local v4    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .local v192, "bleTimer":Landroid/os/BatteryStats$Timer;
    const-string v4, "blem"

    invoke-static {v1, v2, v3, v4, v0}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_27

    .line 4862
    .end local v5    # "count":I
    .end local v14    # "bleTimerBg":Landroid/os/BatteryStats$Timer;
    .end local v19    # "countBg":I
    .end local v108    # "actualTime":J
    .end local v176    # "resultCount":I
    .end local v179    # "actualTimeBg":J
    .end local v181    # "resultCountBg":I
    .end local v182    # "unoptimizedScanTotalTime":J
    .end local v184    # "unoptimizedScanTimer":Landroid/os/BatteryStats$Timer;
    .end local v186    # "unoptimizedScanMaxTime":J
    .end local v188    # "unoptimizedScanTotalTimeBg":J
    .end local v190    # "unoptimizedScanMaxTimeBg":J
    .end local v192    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .end local v203    # "unoptimizedScanTimerBg":Landroid/os/BatteryStats$Timer;
    .restart local v4    # "bleTimer":Landroid/os/BatteryStats$Timer;
    :cond_2e
    move/from16 v174, v0

    move-object/from16 v192, v4

    .end local v4    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .restart local v192    # "bleTimer":Landroid/os/BatteryStats$Timer;
    goto :goto_27

    .line 4858
    .end local v16    # "totalTime":J
    .end local v192    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .restart local v4    # "bleTimer":Landroid/os/BatteryStats$Timer;
    :cond_2f
    move/from16 v174, v0

    move-object/from16 v192, v4

    .line 4896
    .end local v4    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .restart local v192    # "bleTimer":Landroid/os/BatteryStats$Timer;
    :goto_27
    nop

    .line 4897
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    .line 4896
    const-string v4, "ble"

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 4899
    move-object v0, v1

    move v1, v2

    move-object v14, v3

    .end local v2    # "uid":I
    .end local v3    # "category":Ljava/lang/String;
    .local v1, "uid":I
    .local v14, "category":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 4900
    sget v2, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 4901
    .end local v114    # "args":[Ljava/lang/Object;
    .local v2, "args":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 4902
    .local v3, "hasData":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_28
    sget v5, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    if-ge v4, v5, :cond_31

    .line 4903
    invoke-virtual {v13, v4, v6}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v5

    .line 4904
    .local v5, "val":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v2, v4

    .line 4905
    if-eqz v5, :cond_30

    const/4 v3, 0x1

    .line 4902
    .end local v5    # "val":I
    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 4907
    .end local v4    # "i":I
    :cond_31
    if-eqz v3, :cond_32

    .line 4908
    const-string/jumbo v4, "ua"

    invoke-static {v0, v1, v14, v4, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4912
    .end local v3    # "hasData":Z
    :cond_32
    move-object/from16 v114, v2

    .end local v2    # "args":[Ljava/lang/Object;
    .restart local v114    # "args":[Ljava/lang/Object;
    :cond_33
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 4913
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    .line 4915
    .local v2, "timer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v2, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v3

    .line 4916
    .local v3, "totTimeMs":J
    invoke-virtual {v2}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    .line 4917
    .local v5, "bgTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v5, :cond_34

    .line 4918
    invoke-virtual {v5, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v16

    goto :goto_29

    :cond_34
    move-wide/from16 v16, v106

    .line 4919
    .local v16, "bgTimeMs":J
    :goto_29
    move-object/from16 v19, v2

    .end local v2    # "timer":Landroid/os/BatteryStats$Timer;
    .local v19, "timer":Landroid/os/BatteryStats$Timer;
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-wide/from16 v108, v3

    .end local v3    # "totTimeMs":J
    .local v108, "totTimeMs":J
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "awl"

    invoke-static {v0, v1, v14, v3, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4922
    .end local v5    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v16    # "bgTimeMs":J
    .end local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v108    # "totTimeMs":J
    :cond_35
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v2

    .line 4923
    .local v2, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "iw":I
    :goto_2a
    const/16 v4, 0x5f

    if-ltz v3, :cond_3b

    .line 4924
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 4925
    .local v5, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    const-string v16, ""

    .line 4926
    .local v16, "linePrefix":Ljava/lang/String;
    move-wide/from16 v108, v8

    const/4 v8, 0x0

    .end local v8    # "rawRealtime":J
    .local v108, "rawRealtime":J
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4927
    move-object/from16 v17, v2

    move/from16 v9, v174

    .end local v2    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .local v17, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual {v5, v9}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v2

    move-object v9, v5

    .end local v5    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .local v9, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    const-string v5, "f"

    move-object v4, v9

    move v9, v1

    move-object v1, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v10

    move-object v10, v4

    move/from16 v205, v3

    move-object/from16 v204, v17

    move-wide/from16 v3, v108

    .end local v17    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v108    # "rawRealtime":J
    .local v1, "sb":Ljava/lang/StringBuilder;
    .local v3, "rawRealtime":J
    .local v7, "linePrefix":Ljava/lang/String;
    .local v9, "uid":I
    .local v10, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .local v16, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v204, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .local v205, "iw":I
    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4929
    invoke-virtual {v10, v8}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v2

    .line 4930
    .local v2, "pTimer":Landroid/os/BatteryStats$Timer;
    const-string/jumbo v5, "p"

    move/from16 v6, p3

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4932
    move-object v8, v2

    .end local v2    # "pTimer":Landroid/os/BatteryStats$Timer;
    .local v8, "pTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v8, :cond_36

    invoke-virtual {v8}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    goto :goto_2b

    :cond_36
    const/4 v2, 0x0

    :goto_2b
    const-string v5, "bp"

    move/from16 v6, p3

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4934
    const/4 v2, 0x2

    invoke-virtual {v10, v2}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move/from16 v18, v2

    move-object v2, v5

    const-string/jumbo v5, "w"

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4938
    .end local v7    # "linePrefix":Ljava/lang/String;
    .local v2, "linePrefix":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_3a

    .line 4939
    move-object/from16 v5, v204

    move/from16 v7, v205

    .end local v204    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v205    # "iw":I
    .local v5, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .local v7, "iw":I
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v19, v2

    .end local v2    # "linePrefix":Ljava/lang/String;
    .local v19, "linePrefix":Ljava/lang/String;
    move-object/from16 v2, v17

    check-cast v2, Ljava/lang/String;

    .line 4940
    .local v2, "name":Ljava/lang/String;
    move-object/from16 v17, v5

    const/16 v5, 0x2c

    .end local v5    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .restart local v17    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    if-ltz v20, :cond_37

    .line 4941
    move-object/from16 v108, v10

    const/16 v10, 0x5f

    .end local v10    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .local v108, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    invoke-virtual {v2, v5, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    goto :goto_2c

    .line 4940
    .end local v108    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .restart local v10    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_37
    move-object/from16 v108, v10

    const/16 v10, 0x5f

    .line 4943
    .end local v10    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .restart local v108    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    :goto_2c
    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v109

    if-ltz v109, :cond_38

    .line 4944
    invoke-virtual {v2, v5, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 4946
    :cond_38
    const/16 v5, 0xd

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v109

    if-ltz v109, :cond_39

    .line 4947
    invoke-virtual {v2, v5, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 4949
    :cond_39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    filled-new-array {v2, v10}, [Ljava/lang/Object;

    move-result-object v10

    const-string/jumbo v5, "wl"

    invoke-static {v0, v9, v14, v5, v10}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2d

    .line 4938
    .end local v7    # "iw":I
    .end local v17    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v19    # "linePrefix":Ljava/lang/String;
    .end local v108    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .local v2, "linePrefix":Ljava/lang/String;
    .restart local v10    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .restart local v204    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .restart local v205    # "iw":I
    :cond_3a
    move-object/from16 v19, v2

    move-object/from16 v108, v10

    move-object/from16 v17, v204

    move/from16 v7, v205

    .line 4923
    .end local v2    # "linePrefix":Ljava/lang/String;
    .end local v8    # "pTimer":Landroid/os/BatteryStats$Timer;
    .end local v10    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v204    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v205    # "iw":I
    .restart local v7    # "iw":I
    .restart local v17    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :goto_2d
    add-int/lit8 v2, v7, -0x1

    move-object v7, v1

    move v1, v9

    move-object/from16 v10, v16

    const/16 v174, 0x1

    move-wide v8, v3

    move v3, v2

    move-object/from16 v2, v17

    .end local v7    # "iw":I
    .local v2, "iw":I
    goto/16 :goto_2a

    .end local v9    # "uid":I
    .end local v16    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v17    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .local v1, "uid":I
    .local v2, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .local v3, "iw":I
    .local v7, "sb":Ljava/lang/StringBuilder;
    .local v8, "rawRealtime":J
    .local v10, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    :cond_3b
    move-object/from16 v17, v2

    move-object/from16 v16, v10

    const/16 v18, 0x2

    move v10, v4

    move-wide/from16 v213, v8

    move v9, v1

    move-object v1, v7

    move v7, v3

    move-wide/from16 v3, v213

    .line 4954
    .end local v2    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "rawRealtime":J
    .end local v10    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v1, "sb":Ljava/lang/StringBuilder;
    .local v3, "rawRealtime":J
    .restart local v9    # "uid":I
    .restart local v16    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v17    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    .line 4955
    .local v2, "mcTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v2, :cond_3d

    .line 4956
    nop

    .line 4957
    invoke-virtual {v2, v3, v4, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v7

    div-long v7, v7, v21

    .line 4958
    .local v7, "totalMcWakelockTimeMs":J
    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    .line 4959
    .local v5, "countMcWakelock":I
    cmp-long v19, v7, v106

    if-lez v19, :cond_3c

    .line 4960
    nop

    .line 4961
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v19, v2

    .end local v2    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .local v19, "mcTimer":Landroid/os/BatteryStats$Timer;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v10, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 4960
    const-string/jumbo v10, "wmc"

    invoke-static {v0, v9, v14, v10, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2e

    .line 4959
    .end local v19    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .restart local v2    # "mcTimer":Landroid/os/BatteryStats$Timer;
    :cond_3c
    move-object/from16 v19, v2

    .end local v2    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .restart local v19    # "mcTimer":Landroid/os/BatteryStats$Timer;
    goto :goto_2e

    .line 4955
    .end local v5    # "countMcWakelock":I
    .end local v7    # "totalMcWakelockTimeMs":J
    .end local v19    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .restart local v2    # "mcTimer":Landroid/os/BatteryStats$Timer;
    :cond_3d
    move-object/from16 v19, v2

    .line 4965
    .end local v2    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .restart local v19    # "mcTimer":Landroid/os/BatteryStats$Timer;
    :goto_2e
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v10

    .line 4966
    .local v10, "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/16 v174, 0x1

    add-int/lit8 v2, v2, -0x1

    .local v2, "isy":I
    :goto_2f
    if-ltz v2, :cond_41

    .line 4967
    invoke-virtual {v10, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v108

    move-object/from16 v5, v108

    check-cast v5, Landroid/os/BatteryStats$Timer;

    .line 4969
    .local v5, "timer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v5, v3, v4, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v179

    add-long v179, v179, v99

    div-long v179, v179, v21

    .line 4970
    .local v179, "totalTime":J
    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v108

    .line 4971
    .local v108, "count":I
    invoke-virtual {v5}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v7

    .line 4972
    .local v7, "bgTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v7, :cond_3e

    .line 4973
    invoke-virtual {v7, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v181

    goto :goto_30

    :cond_3e
    const-wide/16 v181, -0x1

    .line 4974
    .local v181, "bgTime":J
    :goto_30
    if-eqz v7, :cond_3f

    invoke-virtual {v7, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v8

    move/from16 v109, v8

    goto :goto_31

    :cond_3f
    const/16 v109, -0x1

    .line 4975
    .local v109, "bgCount":I
    :goto_31
    cmp-long v8, v179, v106

    if-eqz v8, :cond_40

    .line 4976
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v176, v15

    move-object/from16 v15, v185

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v10, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v183

    move/from16 v184, v2

    .end local v2    # "isy":I
    .local v184, "isy":I
    move-object/from16 v2, v183

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4977
    invoke-static/range {v179 .. v180}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v183, v5

    .end local v5    # "timer":Landroid/os/BatteryStats$Timer;
    .local v183, "timer":Landroid/os/BatteryStats$Timer;
    invoke-static/range {v108 .. v108}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v185, v7

    .end local v7    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .local v185, "bgTimer":Landroid/os/BatteryStats$Timer;
    invoke-static/range {v181 .. v182}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v186, v10

    .end local v10    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v186, "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-static/range {v109 .. v109}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v2, v8, v5, v7, v10}, [Ljava/lang/Object;

    move-result-object v2

    .line 4976
    const-string/jumbo v5, "sy"

    invoke-static {v0, v9, v14, v5, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_32

    .line 4975
    .end local v183    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v184    # "isy":I
    .end local v185    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v186    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v2    # "isy":I
    .restart local v5    # "timer":Landroid/os/BatteryStats$Timer;
    .restart local v7    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .restart local v10    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_40
    move/from16 v184, v2

    move-object/from16 v183, v5

    move-object/from16 v186, v10

    move-object/from16 v176, v15

    move-object/from16 v15, v185

    move-object/from16 v185, v7

    .line 4966
    .end local v2    # "isy":I
    .end local v5    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v7    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v10    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v108    # "count":I
    .end local v109    # "bgCount":I
    .end local v179    # "totalTime":J
    .end local v181    # "bgTime":J
    .restart local v184    # "isy":I
    .restart local v186    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :goto_32
    add-int/lit8 v2, v184, -0x1

    move-object/from16 v185, v15

    move-object/from16 v15, v176

    move-object/from16 v10, v186

    .end local v184    # "isy":I
    .restart local v2    # "isy":I
    goto/16 :goto_2f

    .end local v186    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v10    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_41
    move/from16 v184, v2

    move-object/from16 v186, v10

    move-object/from16 v176, v15

    move-object/from16 v15, v185

    .line 4981
    .end local v2    # "isy":I
    .end local v10    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v186    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v10

    .line 4982
    .local v10, "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/16 v174, 0x1

    add-int/lit8 v2, v2, -0x1

    .local v2, "ij":I
    :goto_33
    if-ltz v2, :cond_45

    .line 4983
    invoke-virtual {v10, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Timer;

    .line 4985
    .restart local v5    # "timer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v5, v3, v4, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v7

    add-long v7, v7, v99

    div-long v7, v7, v21

    .line 4986
    .local v7, "totalTime":J
    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v108

    .line 4987
    .restart local v108    # "count":I
    move-wide/from16 v179, v3

    .end local v3    # "rawRealtime":J
    .local v179, "rawRealtime":J
    invoke-virtual {v5}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 4988
    .local v3, "bgTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v3, :cond_42

    .line 4989
    invoke-virtual {v3, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v183

    goto :goto_34

    :cond_42
    const-wide/16 v183, -0x1

    .line 4990
    .local v183, "bgTime":J
    :goto_34
    if-eqz v3, :cond_43

    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v4

    goto :goto_35

    :cond_43
    const/4 v4, -0x1

    .line 4991
    .local v4, "bgCount":I
    :goto_35
    cmp-long v185, v7, v106

    if-eqz v185, :cond_44

    .line 4992
    move-object/from16 v185, v3

    .end local v3    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .restart local v185    # "bgTimer":Landroid/os/BatteryStats$Timer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v187

    move/from16 v188, v2

    .end local v2    # "ij":I
    .local v188, "ij":I
    move-object/from16 v2, v187

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4993
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move/from16 v187, v4

    .end local v4    # "bgCount":I
    .local v187, "bgCount":I
    invoke-static/range {v108 .. v108}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v189, v5

    .end local v5    # "timer":Landroid/os/BatteryStats$Timer;
    .local v189, "timer":Landroid/os/BatteryStats$Timer;
    invoke-static/range {v183 .. v184}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-wide/from16 v190, v7

    .end local v7    # "totalTime":J
    .local v190, "totalTime":J
    invoke-static/range {v187 .. v187}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v2, v3, v4, v5, v7}, [Ljava/lang/Object;

    move-result-object v2

    .line 4992
    const-string/jumbo v3, "jb"

    invoke-static {v0, v9, v14, v3, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_36

    .line 4991
    .end local v185    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v187    # "bgCount":I
    .end local v188    # "ij":I
    .end local v189    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v190    # "totalTime":J
    .restart local v2    # "ij":I
    .restart local v3    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .restart local v4    # "bgCount":I
    .restart local v5    # "timer":Landroid/os/BatteryStats$Timer;
    .restart local v7    # "totalTime":J
    :cond_44
    move/from16 v188, v2

    move-object/from16 v185, v3

    move/from16 v187, v4

    move-object/from16 v189, v5

    move-wide/from16 v190, v7

    .line 4982
    .end local v2    # "ij":I
    .end local v3    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v4    # "bgCount":I
    .end local v5    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v7    # "totalTime":J
    .end local v108    # "count":I
    .end local v183    # "bgTime":J
    .restart local v188    # "ij":I
    :goto_36
    add-int/lit8 v2, v188, -0x1

    move-wide/from16 v3, v179

    .end local v188    # "ij":I
    .restart local v2    # "ij":I
    goto :goto_33

    .end local v179    # "rawRealtime":J
    .local v3, "rawRealtime":J
    :cond_45
    move/from16 v188, v2

    move-wide/from16 v179, v3

    .line 4997
    .end local v2    # "ij":I
    .end local v3    # "rawRealtime":J
    .restart local v179    # "rawRealtime":J
    invoke-static {}, Landroid/app/job/JobParameters;->getJobStopReasonCodes()[I

    move-result-object v2

    .line 4998
    .local v2, "jobStopReasonCodes":[I
    array-length v3, v2

    const/16 v174, 0x1

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 5000
    .local v3, "jobCompletionArgs":[Ljava/lang/Object;
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getJobCompletionStats()Landroid/util/ArrayMap;

    move-result-object v4

    .line 5001
    .local v4, "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "ic":I
    :goto_37
    if-ltz v5, :cond_48

    .line 5002
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseIntArray;

    .line 5003
    .local v7, "types":Landroid/util/SparseIntArray;
    if-eqz v7, :cond_47

    .line 5004
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v108

    move-object/from16 v109, v4

    .end local v4    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .local v109, "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    move-object/from16 v4, v108

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    aput-object v4, v3, v8

    .line 5005
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_38
    array-length v8, v2

    if-ge v4, v8, :cond_46

    .line 5006
    add-int/lit8 v8, v4, 0x1

    move-object/from16 v108, v2

    .end local v2    # "jobStopReasonCodes":[I
    .local v108, "jobStopReasonCodes":[I
    aget v2, v108, v4

    move/from16 v181, v4

    const/4 v4, 0x0

    .end local v4    # "i":I
    .local v181, "i":I
    invoke-virtual {v7, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v8

    .line 5005
    add-int/lit8 v4, v181, 0x1

    move-object/from16 v2, v108

    const/4 v8, 0x0

    .end local v181    # "i":I
    .restart local v4    # "i":I
    goto :goto_38

    .end local v108    # "jobStopReasonCodes":[I
    .restart local v2    # "jobStopReasonCodes":[I
    :cond_46
    move-object/from16 v108, v2

    move/from16 v181, v4

    .line 5009
    .end local v2    # "jobStopReasonCodes":[I
    .end local v4    # "i":I
    .restart local v108    # "jobStopReasonCodes":[I
    const-string/jumbo v2, "jbc"

    invoke-static {v0, v9, v14, v2, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_39

    .line 5003
    .end local v108    # "jobStopReasonCodes":[I
    .end local v109    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v2    # "jobStopReasonCodes":[I
    .local v4, "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    :cond_47
    move-object/from16 v108, v2

    move-object/from16 v109, v4

    .line 5001
    .end local v2    # "jobStopReasonCodes":[I
    .end local v4    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v7    # "types":Landroid/util/SparseIntArray;
    .restart local v108    # "jobStopReasonCodes":[I
    .restart local v109    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    :goto_39
    add-int/lit8 v5, v5, -0x1

    move-object/from16 v2, v108

    move-object/from16 v4, v109

    goto :goto_37

    .end local v108    # "jobStopReasonCodes":[I
    .end local v109    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v2    # "jobStopReasonCodes":[I
    .restart local v4    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    :cond_48
    move-object/from16 v108, v2

    move-object/from16 v109, v4

    .line 5014
    .end local v2    # "jobStopReasonCodes":[I
    .end local v4    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v5    # "ic":I
    .restart local v108    # "jobStopReasonCodes":[I
    .restart local v109    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-virtual {v13, v1, v6}, Landroid/os/BatteryStats$Uid;->getDeferredJobsCheckinLineLocked(Ljava/lang/StringBuilder;I)V

    .line 5015
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_49

    .line 5016
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v4, "jbd"

    invoke-static {v0, v9, v14, v4, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5019
    :cond_49
    const-string v4, "fla"

    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    move v8, v6

    move v2, v9

    move-wide/from16 v6, v179

    const/16 v128, 0xd

    move-object v9, v3

    move-object v3, v14

    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v14    # "category":Ljava/lang/String;
    .end local v179    # "rawRealtime":J
    .local v0, "sb":Ljava/lang/StringBuilder;
    .local v2, "uid":I
    .local v3, "category":Ljava/lang/String;
    .local v6, "rawRealtime":J
    .local v9, "jobCompletionArgs":[Ljava/lang/Object;
    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 5021
    move-wide v3, v6

    .end local v3    # "category":Ljava/lang/String;
    .restart local v14    # "category":Ljava/lang/String;
    const-string v4, "cam"

    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move-object/from16 v1, p2

    move/from16 v8, p3

    move-object v3, v14

    .end local v14    # "category":Ljava/lang/String;
    .restart local v3    # "category":Ljava/lang/String;
    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 5023
    move-wide v3, v6

    .end local v3    # "category":Ljava/lang/String;
    .restart local v14    # "category":Ljava/lang/String;
    const-string/jumbo v4, "vid"

    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move-object v3, v14

    .end local v14    # "category":Ljava/lang/String;
    .restart local v3    # "category":Ljava/lang/String;
    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 5025
    move-wide v3, v6

    .end local v3    # "category":Ljava/lang/String;
    .restart local v14    # "category":Ljava/lang/String;
    const-string v4, "aud"

    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move-object v3, v14

    .end local v14    # "category":Ljava/lang/String;
    .restart local v3    # "category":Ljava/lang/String;
    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 5028
    move-wide v3, v6

    move v6, v8

    .end local v6    # "rawRealtime":J
    .local v3, "rawRealtime":J
    .restart local v14    # "category":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v5

    .line 5029
    .local v5, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 5030
    .local v7, "NSE":I
    const/4 v8, 0x0

    .local v8, "ise":I
    :goto_3a
    if-ge v8, v7, :cond_4e

    .line 5031
    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v179

    check-cast v179, Landroid/os/BatteryStats$Uid$Sensor;

    .line 5032
    .local v179, "se":Landroid/os/BatteryStats$Uid$Sensor;
    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v180

    .line 5033
    .local v180, "sensorNumber":I
    move-object/from16 v181, v5

    .end local v5    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .local v181, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual/range {v179 .. v179}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    .line 5034
    .local v5, "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v5, :cond_4d

    .line 5036
    invoke-virtual {v5, v3, v4, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v182

    add-long v182, v182, v99

    div-long v182, v182, v21

    .line 5038
    .local v182, "totalTime":J
    cmp-long v184, v182, v106

    if-eqz v184, :cond_4c

    .line 5039
    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v184

    .line 5040
    .local v184, "count":I
    move-wide/from16 v187, v3

    .end local v3    # "rawRealtime":J
    .local v187, "rawRealtime":J
    invoke-virtual/range {v179 .. v179}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 5041
    .local v3, "bgTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v3, :cond_4a

    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v4

    goto :goto_3b

    :cond_4a
    const/4 v4, 0x0

    .line 5043
    .local v4, "bgCount":I
    :goto_3b
    invoke-virtual {v5, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v189

    .line 5044
    .local v189, "actualTime":J
    if-eqz v3, :cond_4b

    .line 5045
    invoke-virtual {v3, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v193

    goto :goto_3c

    :cond_4b
    move-wide/from16 v193, v106

    .line 5046
    .local v193, "bgActualTime":J
    :goto_3c
    invoke-static/range {v180 .. v180}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v195

    invoke-static/range {v182 .. v183}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v196

    .line 5047
    invoke-static/range {v184 .. v184}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v197

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v198

    invoke-static/range {v189 .. v190}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v199

    invoke-static/range {v193 .. v194}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v200

    move-object/from16 v185, v3

    .end local v3    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .restart local v185    # "bgTimer":Landroid/os/BatteryStats$Timer;
    filled-new-array/range {v195 .. v200}, [Ljava/lang/Object;

    move-result-object v3

    .line 5046
    move/from16 v191, v4

    .end local v4    # "bgCount":I
    .local v191, "bgCount":I
    const-string/jumbo v4, "sr"

    invoke-static {v1, v2, v14, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3d

    .line 5038
    .end local v184    # "count":I
    .end local v185    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v187    # "rawRealtime":J
    .end local v189    # "actualTime":J
    .end local v191    # "bgCount":I
    .end local v193    # "bgActualTime":J
    .local v3, "rawRealtime":J
    :cond_4c
    move-wide/from16 v187, v3

    .end local v3    # "rawRealtime":J
    .restart local v187    # "rawRealtime":J
    goto :goto_3d

    .line 5034
    .end local v182    # "totalTime":J
    .end local v187    # "rawRealtime":J
    .restart local v3    # "rawRealtime":J
    :cond_4d
    move-wide/from16 v187, v3

    .line 5030
    .end local v3    # "rawRealtime":J
    .end local v5    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v179    # "se":Landroid/os/BatteryStats$Uid$Sensor;
    .end local v180    # "sensorNumber":I
    .restart local v187    # "rawRealtime":J
    :goto_3d
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v5, v181

    move-wide/from16 v3, v187

    goto :goto_3a

    .end local v181    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v187    # "rawRealtime":J
    .restart local v3    # "rawRealtime":J
    .local v5, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    :cond_4e
    move-wide/from16 v187, v3

    move-object/from16 v181, v5

    .line 5052
    .end local v3    # "rawRealtime":J
    .end local v5    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v8    # "ise":I
    .restart local v181    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .restart local v187    # "rawRealtime":J
    const-string/jumbo v4, "vib"

    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move v8, v6

    move-object v3, v14

    move v14, v7

    move-wide/from16 v6, v187

    .end local v7    # "NSE":I
    .end local v187    # "rawRealtime":J
    .local v3, "category":Ljava/lang/String;
    .restart local v6    # "rawRealtime":J
    .local v14, "NSE":I
    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 5055
    move v1, v2

    move-object v2, v3

    move-wide v3, v6

    .end local v3    # "category":Ljava/lang/String;
    .local v1, "uid":I
    .local v2, "category":Ljava/lang/String;
    const-string v4, "fg"

    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move/from16 v8, p3

    move-object v3, v2

    move v2, v1

    move-object/from16 v1, p2

    .end local v1    # "uid":I
    .local v2, "uid":I
    .restart local v3    # "category":Ljava/lang/String;
    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 5058
    move v1, v2

    move-object v2, v3

    move-wide v3, v6

    .end local v3    # "category":Ljava/lang/String;
    .restart local v1    # "uid":I
    .local v2, "category":Ljava/lang/String;
    const-string v4, "fgs"

    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move-object v3, v2

    move v2, v1

    move-object/from16 v1, p2

    .end local v1    # "uid":I
    .local v2, "uid":I
    .restart local v3    # "category":Ljava/lang/String;
    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 5061
    move v5, v2

    move-object v2, v3

    move-wide v3, v6

    move v6, v8

    .end local v6    # "rawRealtime":J
    .local v2, "category":Ljava/lang/String;
    .local v3, "rawRealtime":J
    .local v5, "uid":I
    const/4 v7, 0x7

    new-array v8, v7, [Ljava/lang/Object;

    .line 5062
    .local v8, "stateTimes":[Ljava/lang/Object;
    const-wide/16 v178, 0x0

    .line 5063
    .local v178, "totalStateTime":J
    const/16 v180, 0x0

    move-object/from16 v182, v9

    move/from16 v9, v180

    move-wide/from16 v179, v178

    .end local v178    # "totalStateTime":J
    .local v9, "ips":I
    .local v179, "totalStateTime":J
    .local v182, "jobCompletionArgs":[Ljava/lang/Object;
    :goto_3e
    if-ge v9, v7, :cond_4f

    .line 5064
    invoke-virtual {v13, v9, v3, v4, v6}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v183

    .line 5065
    .local v183, "time":J
    add-long v179, v179, v183

    .line 5066
    add-long v187, v183, v99

    div-long v187, v187, v21

    invoke-static/range {v187 .. v188}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v8, v9

    .line 5063
    .end local v183    # "time":J
    add-int/lit8 v9, v9, 0x1

    const/4 v7, 0x7

    goto :goto_3e

    .line 5068
    .end local v9    # "ips":I
    :cond_4f
    cmp-long v7, v179, v106

    if-lez v7, :cond_50

    .line 5069
    const-string/jumbo v7, "st"

    invoke-static {v1, v5, v2, v7, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5072
    :cond_50
    invoke-virtual {v13, v6}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v183

    .line 5073
    .local v183, "userCpuTimeUs":J
    invoke-virtual {v13, v6}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v187

    .line 5074
    .local v187, "systemCpuTimeUs":J
    cmp-long v7, v183, v106

    if-gtz v7, :cond_52

    cmp-long v7, v187, v106

    if-lez v7, :cond_51

    goto :goto_3f

    :cond_51
    move-wide/from16 v189, v3

    move-object/from16 v3, v176

    goto :goto_40

    .line 5075
    :cond_52
    :goto_3f
    div-long v189, v183, v21

    invoke-static/range {v189 .. v190}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    div-long v189, v187, v21

    invoke-static/range {v189 .. v190}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 5076
    move-wide/from16 v189, v3

    move-object/from16 v3, v176

    .end local v3    # "rawRealtime":J
    .local v189, "rawRealtime":J
    filled-new-array {v7, v9, v3}, [Ljava/lang/Object;

    move-result-object v4

    .line 5075
    const-string v7, "cpu"

    invoke-static {v1, v5, v2, v7, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5080
    :goto_40
    if-eqz v118, :cond_61

    .line 5081
    invoke-virtual {v13, v6}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v4

    .line 5084
    .local v4, "cpuFreqTimeMs":[J
    if-eqz v4, :cond_59

    array-length v7, v4

    .line 5085
    invoke-virtual/range {v118 .. v118}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v9

    if-ne v7, v9, :cond_58

    .line 5086
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5087
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_41
    array-length v9, v4

    if-ge v7, v9, :cond_54

    .line 5088
    if-eqz v7, :cond_53

    const/16 v9, 0x2c

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5089
    :cond_53
    move/from16 v176, v7

    move-object v9, v8

    .end local v7    # "i":I
    .end local v8    # "stateTimes":[Ljava/lang/Object;
    .local v9, "stateTimes":[Ljava/lang/Object;
    .local v176, "i":I
    aget-wide v7, v4, v176

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5087
    add-int/lit8 v7, v176, 0x1

    move-object v8, v9

    .end local v176    # "i":I
    .restart local v7    # "i":I
    goto :goto_41

    .end local v9    # "stateTimes":[Ljava/lang/Object;
    .restart local v8    # "stateTimes":[Ljava/lang/Object;
    :cond_54
    move/from16 v176, v7

    move-object v9, v8

    .line 5091
    .end local v7    # "i":I
    .end local v8    # "stateTimes":[Ljava/lang/Object;
    .restart local v9    # "stateTimes":[Ljava/lang/Object;
    invoke-virtual {v13, v6}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(I)[J

    move-result-object v7

    .line 5092
    .local v7, "screenOffCpuFreqTimeMs":[J
    if-eqz v7, :cond_56

    .line 5093
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_42
    move-object/from16 v176, v3

    array-length v3, v7

    if-ge v8, v3, :cond_55

    .line 5094
    move-object/from16 v185, v7

    const/16 v3, 0x2c

    .end local v7    # "screenOffCpuFreqTimeMs":[J
    .local v185, "screenOffCpuFreqTimeMs":[J
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v191, v8

    move-object v3, v9

    .end local v8    # "i":I
    .end local v9    # "stateTimes":[Ljava/lang/Object;
    .local v3, "stateTimes":[Ljava/lang/Object;
    .local v191, "i":I
    aget-wide v8, v185, v191

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5093
    add-int/lit8 v8, v191, 0x1

    move-object v9, v3

    move-object/from16 v3, v176

    move-object/from16 v7, v185

    .end local v191    # "i":I
    .restart local v8    # "i":I
    goto :goto_42

    .end local v3    # "stateTimes":[Ljava/lang/Object;
    .end local v185    # "screenOffCpuFreqTimeMs":[J
    .restart local v7    # "screenOffCpuFreqTimeMs":[J
    .restart local v9    # "stateTimes":[Ljava/lang/Object;
    :cond_55
    move-object/from16 v185, v7

    move/from16 v191, v8

    move-object v3, v9

    .end local v7    # "screenOffCpuFreqTimeMs":[J
    .end local v8    # "i":I
    .end local v9    # "stateTimes":[Ljava/lang/Object;
    .restart local v3    # "stateTimes":[Ljava/lang/Object;
    .restart local v185    # "screenOffCpuFreqTimeMs":[J
    goto :goto_44

    .line 5097
    .end local v3    # "stateTimes":[Ljava/lang/Object;
    .end local v185    # "screenOffCpuFreqTimeMs":[J
    .restart local v7    # "screenOffCpuFreqTimeMs":[J
    .restart local v9    # "stateTimes":[Ljava/lang/Object;
    :cond_56
    move-object/from16 v176, v3

    move-object/from16 v185, v7

    move-object v3, v9

    .end local v7    # "screenOffCpuFreqTimeMs":[J
    .end local v9    # "stateTimes":[Ljava/lang/Object;
    .restart local v3    # "stateTimes":[Ljava/lang/Object;
    .restart local v185    # "screenOffCpuFreqTimeMs":[J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_43
    array-length v8, v4

    if-ge v7, v8, :cond_57

    .line 5098
    const-string v8, ",0"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5097
    add-int/lit8 v7, v7, 0x1

    goto :goto_43

    .line 5101
    .end local v7    # "i":I
    :cond_57
    :goto_44
    array-length v7, v4

    .line 5102
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "A"

    filled-new-array {v9, v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    .line 5101
    const-string v8, "ctf"

    invoke-static {v1, v5, v2, v8, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_45

    .line 5085
    .end local v3    # "stateTimes":[Ljava/lang/Object;
    .end local v185    # "screenOffCpuFreqTimeMs":[J
    .local v8, "stateTimes":[Ljava/lang/Object;
    :cond_58
    move-object/from16 v176, v3

    move-object v3, v8

    .end local v8    # "stateTimes":[Ljava/lang/Object;
    .restart local v3    # "stateTimes":[Ljava/lang/Object;
    goto :goto_45

    .line 5084
    .end local v3    # "stateTimes":[Ljava/lang/Object;
    .restart local v8    # "stateTimes":[Ljava/lang/Object;
    :cond_59
    move-object/from16 v176, v3

    move-object v3, v8

    .line 5105
    .end local v8    # "stateTimes":[Ljava/lang/Object;
    .restart local v3    # "stateTimes":[Ljava/lang/Object;
    :goto_45
    nop

    .line 5106
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v7

    new-array v7, v7, [J

    .line 5107
    .local v7, "timesInFreqMs":[J
    const/4 v8, 0x0

    .local v8, "procState":I
    :goto_46
    const/4 v9, 0x7

    if-ge v8, v9, :cond_60

    .line 5108
    invoke-virtual {v13, v7, v8}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes([JI)Z

    move-result v178

    if-eqz v178, :cond_5f

    .line 5109
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5110
    const/16 v76, 0x0

    move/from16 v9, v76

    .local v9, "i":I
    :goto_47
    move-object/from16 v76, v3

    .end local v3    # "stateTimes":[Ljava/lang/Object;
    .local v76, "stateTimes":[Ljava/lang/Object;
    array-length v3, v7

    if-ge v9, v3, :cond_5b

    .line 5111
    if-eqz v9, :cond_5a

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5112
    :cond_5a
    move-object/from16 v191, v4

    .end local v4    # "cpuFreqTimeMs":[J
    .local v191, "cpuFreqTimeMs":[J
    aget-wide v3, v7, v9

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5110
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, v76

    move-object/from16 v4, v191

    goto :goto_47

    .end local v191    # "cpuFreqTimeMs":[J
    .restart local v4    # "cpuFreqTimeMs":[J
    :cond_5b
    move-object/from16 v191, v4

    .line 5114
    .end local v4    # "cpuFreqTimeMs":[J
    .end local v9    # "i":I
    .restart local v191    # "cpuFreqTimeMs":[J
    invoke-virtual {v13, v7, v8}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes([JI)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 5115
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_48
    array-length v4, v7

    if-ge v3, v4, :cond_5c

    .line 5116
    const/16 v9, 0x2c

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v193, v8

    .end local v8    # "procState":I
    .local v193, "procState":I
    aget-wide v8, v7, v3

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5115
    add-int/lit8 v3, v3, 0x1

    move/from16 v8, v193

    goto :goto_48

    .end local v193    # "procState":I
    .restart local v8    # "procState":I
    :cond_5c
    move/from16 v193, v8

    .end local v3    # "i":I
    .end local v8    # "procState":I
    .restart local v193    # "procState":I
    goto :goto_4a

    .line 5119
    .end local v193    # "procState":I
    .restart local v8    # "procState":I
    :cond_5d
    move/from16 v193, v8

    .end local v8    # "procState":I
    .restart local v193    # "procState":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_49
    array-length v4, v7

    if-ge v3, v4, :cond_5e

    .line 5120
    const-string v4, ",0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5119
    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    .line 5123
    .end local v3    # "i":I
    :cond_5e
    :goto_4a
    sget-object v3, Landroid/os/BatteryStats$Uid;->UID_PROCESS_TYPES:[Ljava/lang/String;

    aget-object v3, v3, v193

    array-length v4, v7

    .line 5124
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 5125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v3, v4, v8}, [Ljava/lang/Object;

    move-result-object v3

    .line 5123
    const-string v4, "ctf"

    invoke-static {v1, v5, v2, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4b

    .line 5108
    .end local v76    # "stateTimes":[Ljava/lang/Object;
    .end local v191    # "cpuFreqTimeMs":[J
    .end local v193    # "procState":I
    .local v3, "stateTimes":[Ljava/lang/Object;
    .restart local v4    # "cpuFreqTimeMs":[J
    .restart local v8    # "procState":I
    :cond_5f
    move-object/from16 v76, v3

    move-object/from16 v191, v4

    move/from16 v193, v8

    .line 5107
    .end local v3    # "stateTimes":[Ljava/lang/Object;
    .end local v4    # "cpuFreqTimeMs":[J
    .end local v8    # "procState":I
    .restart local v76    # "stateTimes":[Ljava/lang/Object;
    .restart local v191    # "cpuFreqTimeMs":[J
    .restart local v193    # "procState":I
    :goto_4b
    add-int/lit8 v8, v193, 0x1

    move-object/from16 v3, v76

    move-object/from16 v4, v191

    .end local v193    # "procState":I
    .restart local v8    # "procState":I
    goto :goto_46

    .end local v76    # "stateTimes":[Ljava/lang/Object;
    .end local v191    # "cpuFreqTimeMs":[J
    .restart local v3    # "stateTimes":[Ljava/lang/Object;
    .restart local v4    # "cpuFreqTimeMs":[J
    :cond_60
    move-object/from16 v76, v3

    move-object/from16 v191, v4

    move/from16 v193, v8

    .end local v3    # "stateTimes":[Ljava/lang/Object;
    .end local v4    # "cpuFreqTimeMs":[J
    .end local v8    # "procState":I
    .restart local v76    # "stateTimes":[Ljava/lang/Object;
    .restart local v191    # "cpuFreqTimeMs":[J
    .restart local v193    # "procState":I
    goto :goto_4c

    .line 5080
    .end local v7    # "timesInFreqMs":[J
    .end local v76    # "stateTimes":[Ljava/lang/Object;
    .end local v191    # "cpuFreqTimeMs":[J
    .end local v193    # "procState":I
    .local v8, "stateTimes":[Ljava/lang/Object;
    :cond_61
    move-object/from16 v176, v3

    move-object/from16 v76, v8

    .line 5130
    .end local v8    # "stateTimes":[Ljava/lang/Object;
    .restart local v76    # "stateTimes":[Ljava/lang/Object;
    :goto_4c
    nop

    .line 5131
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v3

    .line 5132
    .local v3, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/16 v174, 0x1

    add-int/lit8 v4, v4, -0x1

    .local v4, "ipr":I
    :goto_4d
    if-ltz v4, :cond_64

    .line 5133
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats$Uid$Proc;

    .line 5135
    .local v7, "ps":Landroid/os/BatteryStats$Uid$Proc;
    invoke-virtual {v7, v6}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v8

    .line 5136
    .local v8, "userMillis":J
    invoke-virtual {v7, v6}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v193

    .line 5137
    .local v193, "systemMillis":J
    invoke-virtual {v7, v6}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v195

    .line 5138
    .local v195, "foregroundMillis":J
    invoke-virtual {v7, v6}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v178

    .line 5139
    .local v178, "starts":I
    invoke-virtual {v7, v6}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v191

    .line 5140
    .local v191, "numCrashes":I
    invoke-virtual {v7, v6}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v197

    .line 5142
    .local v197, "numAnrs":I
    cmp-long v198, v8, v106

    if-nez v198, :cond_63

    cmp-long v198, v193, v106

    if-nez v198, :cond_63

    cmp-long v198, v195, v106

    if-nez v198, :cond_63

    if-nez v178, :cond_63

    if-nez v197, :cond_63

    if-eqz v191, :cond_62

    goto :goto_4e

    :cond_62
    move-object/from16 v198, v0

    move-object/from16 v200, v3

    goto :goto_4f

    .line 5144
    :cond_63
    :goto_4e
    move-object/from16 v198, v0

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .local v198, "sb":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v199

    move-object/from16 v200, v3

    .end local v3    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .local v200, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    move-object/from16 v3, v199

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v206

    .line 5145
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v207

    invoke-static/range {v193 .. v194}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v208

    invoke-static/range {v195 .. v196}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v209

    invoke-static/range {v178 .. v178}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v210

    invoke-static/range {v197 .. v197}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v211

    invoke-static/range {v191 .. v191}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v212

    filled-new-array/range {v206 .. v212}, [Ljava/lang/Object;

    move-result-object v0

    .line 5144
    const-string/jumbo v3, "pr"

    invoke-static {v1, v5, v2, v3, v0}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5132
    .end local v7    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v8    # "userMillis":J
    .end local v178    # "starts":I
    .end local v191    # "numCrashes":I
    .end local v193    # "systemMillis":J
    .end local v195    # "foregroundMillis":J
    .end local v197    # "numAnrs":I
    :goto_4f
    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v198

    move-object/from16 v3, v200

    goto/16 :goto_4d

    .end local v198    # "sb":Ljava/lang/StringBuilder;
    .end local v200    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    :cond_64
    move-object/from16 v198, v0

    move-object/from16 v200, v3

    .line 5149
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v4    # "ipr":I
    .restart local v198    # "sb":Ljava/lang/StringBuilder;
    .restart local v200    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    nop

    .line 5150
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v0

    .line 5151
    .local v0, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/16 v174, 0x1

    add-int/lit8 v3, v3, -0x1

    .local v3, "ipkg":I
    :goto_50
    if-ltz v3, :cond_69

    .line 5152
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Uid$Pkg;

    .line 5153
    .local v4, "ps":Landroid/os/BatteryStats$Uid$Pkg;
    const/4 v7, 0x0

    .line 5154
    .local v7, "wakeups":I
    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v8

    .line 5155
    .local v8, "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v9

    const/16 v174, 0x1

    add-int/lit8 v9, v9, -0x1

    .local v9, "iwa":I
    :goto_51
    if-ltz v9, :cond_65

    .line 5156
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v178

    move-object/from16 v191, v4

    .end local v4    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .local v191, "ps":Landroid/os/BatteryStats$Uid$Pkg;
    move-object/from16 v4, v178

    check-cast v4, Landroid/os/BatteryStats$Counter;

    invoke-virtual {v4, v6}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v4

    .line 5157
    .local v4, "count":I
    add-int/2addr v7, v4

    .line 5158
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v178

    move/from16 v193, v4

    .end local v4    # "count":I
    .local v193, "count":I
    move-object/from16 v4, v178

    check-cast v4, Ljava/lang/String;

    move/from16 v178, v7

    move-object/from16 v20, v8

    const/16 v7, 0x5f

    const/16 v8, 0x2c

    .end local v7    # "wakeups":I
    .end local v8    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .local v20, "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .local v178, "wakeups":I
    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 5159
    .local v4, "name":Ljava/lang/String;
    invoke-static/range {v193 .. v193}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v4, v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string/jumbo v8, "wua"

    invoke-static {v1, v5, v2, v8, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5155
    .end local v4    # "name":Ljava/lang/String;
    .end local v193    # "count":I
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v8, v20

    move/from16 v7, v178

    move-object/from16 v4, v191

    goto :goto_51

    .end local v20    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .end local v178    # "wakeups":I
    .end local v191    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .local v4, "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .restart local v7    # "wakeups":I
    .restart local v8    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    :cond_65
    move-object/from16 v191, v4

    move/from16 v178, v7

    move-object/from16 v20, v8

    .line 5161
    .end local v4    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .end local v7    # "wakeups":I
    .end local v8    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .end local v9    # "iwa":I
    .restart local v20    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .restart local v178    # "wakeups":I
    .restart local v191    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    invoke-virtual/range {v191 .. v191}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v4

    .line 5162
    .local v4, "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v7

    const/16 v174, 0x1

    add-int/lit8 v7, v7, -0x1

    .local v7, "isvc":I
    :goto_52
    if-ltz v7, :cond_68

    .line 5163
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    .line 5164
    .local v8, "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    move-object/from16 v193, v10

    move-wide/from16 v9, v103

    .end local v10    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v103    # "batteryUptime":J
    .local v9, "batteryUptime":J
    .local v193, "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v8, v9, v10, v6}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v103

    .line 5165
    .local v103, "startTime":J
    invoke-virtual {v8, v6}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v195

    .line 5166
    .local v195, "starts":I
    invoke-virtual {v8, v6}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v196

    .line 5167
    .local v196, "launches":I
    cmp-long v197, v103, v106

    if-nez v197, :cond_67

    if-nez v195, :cond_67

    if-eqz v196, :cond_66

    goto :goto_53

    :cond_66
    move-object/from16 v197, v0

    move/from16 v199, v3

    goto :goto_54

    .line 5168
    :cond_67
    :goto_53
    nop

    .line 5169
    invoke-static/range {v178 .. v178}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v206

    .line 5170
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v207

    .line 5171
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v208

    div-long v201, v103, v21

    .line 5172
    invoke-static/range {v201 .. v202}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v209

    .line 5173
    invoke-static/range {v195 .. v195}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v210

    .line 5174
    invoke-static/range {v196 .. v196}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v211

    move-object/from16 v197, v0

    .end local v0    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .local v197, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    filled-new-array/range {v206 .. v211}, [Ljava/lang/Object;

    move-result-object v0

    .line 5168
    move/from16 v199, v3

    .end local v3    # "ipkg":I
    .local v199, "ipkg":I
    const-string v3, "apk"

    invoke-static {v1, v5, v2, v3, v0}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5162
    .end local v8    # "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    .end local v103    # "startTime":J
    .end local v195    # "starts":I
    .end local v196    # "launches":I
    :goto_54
    add-int/lit8 v7, v7, -0x1

    move-wide/from16 v103, v9

    move-object/from16 v10, v193

    move-object/from16 v0, v197

    move/from16 v3, v199

    goto :goto_52

    .end local v9    # "batteryUptime":J
    .end local v193    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v197    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v199    # "ipkg":I
    .restart local v0    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v3    # "ipkg":I
    .restart local v10    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v103, "batteryUptime":J
    :cond_68
    move-object/from16 v197, v0

    move/from16 v199, v3

    move-object/from16 v193, v10

    move-wide/from16 v9, v103

    .line 5151
    .end local v0    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v3    # "ipkg":I
    .end local v4    # "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    .end local v7    # "isvc":I
    .end local v10    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v20    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .end local v103    # "batteryUptime":J
    .end local v178    # "wakeups":I
    .end local v191    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .restart local v9    # "batteryUptime":J
    .restart local v193    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v197    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v199    # "ipkg":I
    add-int/lit8 v3, v199, -0x1

    move-object/from16 v10, v193

    .end local v199    # "ipkg":I
    .restart local v3    # "ipkg":I
    goto/16 :goto_50

    .end local v9    # "batteryUptime":J
    .end local v193    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v197    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v0    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v10    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v103    # "batteryUptime":J
    :cond_69
    move-object/from16 v197, v0

    move/from16 v199, v3

    move-object/from16 v193, v10

    move-wide/from16 v9, v103

    const/16 v174, 0x1

    .line 4774
    .end local v0    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v3    # "ipkg":I
    .end local v5    # "uid":I
    .end local v10    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v13    # "u":Landroid/os/BatteryStats$Uid;
    .end local v14    # "NSE":I
    .end local v17    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v19    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .end local v76    # "stateTimes":[Ljava/lang/Object;
    .end local v102    # "mobileActiveCount":I
    .end local v103    # "batteryUptime":J
    .end local v108    # "jobStopReasonCodes":[I
    .end local v109    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v119    # "mobileBytesRx":J
    .end local v121    # "mobileBytesTx":J
    .end local v123    # "wifiBytesRx":J
    .end local v125    # "wifiBytesTx":J
    .end local v127    # "wifiScanCount":I
    .end local v129    # "mobilePacketsRx":J
    .end local v131    # "mobilePacketsTx":J
    .end local v133    # "mobileActiveTime":J
    .end local v135    # "mobileWakeup":J
    .end local v137    # "wifiPacketsRx":J
    .end local v139    # "wifiPacketsTx":J
    .end local v141    # "wifiWakeup":J
    .end local v143    # "btBytesRx":J
    .end local v145    # "btBytesTx":J
    .end local v147    # "mobileBytesBgRx":J
    .end local v149    # "mobileBytesBgTx":J
    .end local v151    # "wifiBytesBgRx":J
    .end local v153    # "wifiBytesBgTx":J
    .end local v155    # "mobilePacketsBgRx":J
    .end local v157    # "mobilePacketsBgTx":J
    .end local v159    # "wifiPacketsBgRx":J
    .end local v161    # "wifiPacketsBgTx":J
    .end local v163    # "fullWifiLockOnTime":J
    .end local v165    # "wifiScanTime":J
    .end local v167    # "wifiScanCountBg":I
    .end local v168    # "wifiScanActualTimeMs":J
    .end local v170    # "wifiScanActualTimeMsBg":J
    .end local v172    # "uidWifiRunningTime":J
    .end local v179    # "totalStateTime":J
    .end local v181    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v182    # "jobCompletionArgs":[Ljava/lang/Object;
    .end local v183    # "userCpuTimeUs":J
    .end local v186    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v187    # "systemCpuTimeUs":J
    .end local v192    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .end local v200    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .restart local v9    # "batteryUptime":J
    :goto_55
    add-int/lit8 v0, v117, 0x1

    move-object/from16 v14, p6

    move-object v8, v1

    move-wide/from16 v103, v9

    move-wide/from16 v108, v11

    move-object/from16 v113, v15

    move-object/from16 v10, v16

    move-object/from16 v13, v105

    move-object/from16 v15, v176

    move-wide/from16 v116, v189

    move-object/from16 v7, v198

    const/16 v12, 0x2c

    move/from16 v9, p4

    move-object v11, v2

    move/from16 v105, v70

    .end local v117    # "iu":I
    .local v0, "iu":I
    goto/16 :goto_1c

    .line 5179
    .end local v0    # "iu":I
    .end local v2    # "category":Ljava/lang/String;
    .end local v9    # "batteryUptime":J
    .end local v16    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v70    # "NU":I
    .end local v105    # "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v189    # "rawRealtime":J
    .end local v198    # "sb":Ljava/lang/StringBuilder;
    .local v1, "NU":I
    .local v7, "sb":Ljava/lang/StringBuilder;
    .local v10, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v11, "category":Ljava/lang/String;
    .local v13, "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v103    # "batteryUptime":J
    .local v108, "rawRealtimeMs":J
    .restart local v116    # "rawRealtime":J
    :cond_6a
    return-void
.end method

.method public final blacklist dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    .locals 227
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "which"    # I
    .param p5, "reqUid"    # I
    .param p6, "wifiOnly"    # Z
    .param p7, "dumpHelper"    # Landroid/os/BatteryStats$BatteryStatsDumpHelper;

    .line 5206
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v6, p3

    move/from16 v5, p4

    if-eqz v5, :cond_0

    .line 5207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR: BatteryStats.dump called for which type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but only STATS_SINCE_CHARGED is supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5209
    return-void

    .line 5212
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v9, 0x3e8

    mul-long v11, v2, v9

    .line 5213
    .local v11, "rawUptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    mul-long v13, v2, v9

    .line 5214
    .local v13, "rawRealtime":J
    const-wide/16 v15, 0x1f4

    add-long v2, v13, v15

    div-long v17, v2, v9

    .line 5215
    .local v17, "rawRealtimeMs":J
    invoke-virtual {v0, v11, v12}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v2

    .line 5217
    .local v2, "batteryUptime":J
    move-wide/from16 v19, v9

    invoke-virtual {v0, v11, v12, v5}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v9

    .line 5218
    .local v9, "whichBatteryUptime":J
    invoke-virtual {v0, v13, v14, v5}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v7

    .line 5219
    .local v7, "whichBatteryRealtime":J
    move-wide/from16 v21, v2

    .end local v2    # "batteryUptime":J
    .local v21, "batteryUptime":J
    invoke-virtual {v0, v13, v14, v5}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v2

    .line 5220
    .local v2, "totalRealtime":J
    invoke-virtual {v0, v11, v12, v5}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v23

    .line 5221
    .local v23, "totalUptime":J
    move-wide/from16 v25, v9

    .end local v9    # "whichBatteryUptime":J
    .local v25, "whichBatteryUptime":J
    invoke-virtual {v0, v11, v12, v5}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v9

    .line 5222
    .local v9, "whichBatteryScreenOffUptime":J
    move-wide/from16 v27, v11

    .end local v11    # "rawUptime":J
    .local v27, "rawUptime":J
    invoke-virtual {v0, v13, v14, v5}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v11

    .line 5224
    .local v11, "whichBatteryScreenOffRealtime":J
    invoke-virtual {v0, v13, v14}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v29

    .line 5225
    .local v29, "batteryTimeRemaining":J
    invoke-virtual {v0, v13, v14}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v31

    .line 5226
    .local v31, "chargeTimeRemaining":J
    move-wide/from16 v33, v9

    .end local v9    # "whichBatteryScreenOffUptime":J
    .local v33, "whichBatteryScreenOffUptime":J
    invoke-virtual {v0, v13, v14, v5}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v9

    .line 5228
    .local v9, "screenDozeTime":J
    new-instance v4, Ljava/lang/StringBuilder;

    move-wide/from16 v35, v15

    const/16 v15, 0x80

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5230
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v15

    .line 5231
    .local v15, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    move-object/from16 v16, v15

    .end local v15    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v16, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v15

    .line 5233
    .local v15, "NU":I
    move/from16 v37, v15

    .end local v15    # "NU":I
    .local v37, "NU":I
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v15

    .line 5234
    .local v15, "estimatedBatteryCapacity":I
    move-wide/from16 v38, v13

    .end local v13    # "rawRealtime":J
    .local v38, "rawRealtime":J
    const-string v13, " mAh"

    const/4 v14, 0x0

    if-lez v15, :cond_1

    .line 5235
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5236
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5237
    const-string v14, "  Estimated battery capacity: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5238
    move-wide/from16 v40, v9

    .end local v9    # "screenDozeTime":J
    .local v40, "screenDozeTime":J
    int-to-double v9, v15

    invoke-static {v9, v10}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5239
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5240
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 5234
    .end local v40    # "screenDozeTime":J
    .restart local v9    # "screenDozeTime":J
    :cond_1
    move-wide/from16 v40, v9

    .line 5243
    .end local v9    # "screenDozeTime":J
    .restart local v40    # "screenDozeTime":J
    :goto_0
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getLearnedBatteryCapacity()I

    move-result v9

    .line 5244
    .local v9, "lastLearnedBatteryCapacity":I
    if-lez v9, :cond_2

    .line 5245
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5246
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5247
    const-string v10, "  Last learned battery capacity: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5248
    div-int/lit16 v10, v9, 0x3e8

    move v14, v9

    .end local v9    # "lastLearnedBatteryCapacity":I
    .local v14, "lastLearnedBatteryCapacity":I
    int-to-double v9, v10

    invoke-static {v9, v10}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5249
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5250
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 5244
    .end local v14    # "lastLearnedBatteryCapacity":I
    .restart local v9    # "lastLearnedBatteryCapacity":I
    :cond_2
    move v14, v9

    .line 5252
    .end local v9    # "lastLearnedBatteryCapacity":I
    .restart local v14    # "lastLearnedBatteryCapacity":I
    :goto_1
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v9

    .line 5253
    .local v9, "minLearnedBatteryCapacity":I
    if-lez v9, :cond_3

    .line 5254
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5255
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5256
    const-string v10, "  Min learned battery capacity: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5257
    div-int/lit16 v10, v9, 0x3e8

    move/from16 v42, v9

    .end local v9    # "minLearnedBatteryCapacity":I
    .local v42, "minLearnedBatteryCapacity":I
    int-to-double v9, v10

    invoke-static {v9, v10}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5258
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5259
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 5253
    .end local v42    # "minLearnedBatteryCapacity":I
    .restart local v9    # "minLearnedBatteryCapacity":I
    :cond_3
    move/from16 v42, v9

    .line 5261
    .end local v9    # "minLearnedBatteryCapacity":I
    .restart local v42    # "minLearnedBatteryCapacity":I
    :goto_2
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getMaxLearnedBatteryCapacity()I

    move-result v9

    .line 5262
    .local v9, "maxLearnedBatteryCapacity":I
    if-lez v9, :cond_4

    .line 5263
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5264
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5265
    const-string v10, "  Max learned battery capacity: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5266
    div-int/lit16 v10, v9, 0x3e8

    move/from16 v43, v9

    .end local v9    # "maxLearnedBatteryCapacity":I
    .local v43, "maxLearnedBatteryCapacity":I
    int-to-double v9, v10

    invoke-static {v9, v10}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5267
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5268
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 5262
    .end local v43    # "maxLearnedBatteryCapacity":I
    .restart local v9    # "maxLearnedBatteryCapacity":I
    :cond_4
    move/from16 v43, v9

    .line 5271
    .end local v9    # "maxLearnedBatteryCapacity":I
    .restart local v43    # "maxLearnedBatteryCapacity":I
    :goto_3
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5272
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5273
    const-string v9, "  Time on battery: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5274
    div-long v9, v7, v19

    invoke-static {v4, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v9, "("

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5275
    invoke-virtual {v0, v7, v8, v2, v3}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5276
    const-string v10, ") realtime, "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5277
    move-wide/from16 v44, v2

    .end local v2    # "totalRealtime":J
    .local v44, "totalRealtime":J
    div-long v2, v25, v19

    invoke-static {v4, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5278
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v25

    .end local v25    # "whichBatteryUptime":J
    .local v2, "whichBatteryUptime":J
    invoke-virtual {v0, v2, v3, v7, v8}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5279
    const-string v10, ") uptime"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5280
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5282
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5283
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5284
    const-string v10, "  Time on battery screen off: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5285
    nop

    .end local v2    # "whichBatteryUptime":J
    .restart local v25    # "whichBatteryUptime":J
    div-long v2, v11, v19

    invoke-static {v4, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5286
    invoke-virtual {v0, v11, v12, v7, v8}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5287
    const-string v2, ") realtime, "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5288
    div-long v2, v33, v19

    invoke-static {v4, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5289
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5290
    move-wide/from16 v2, v33

    .end local v33    # "whichBatteryScreenOffUptime":J
    .local v2, "whichBatteryScreenOffUptime":J
    invoke-virtual {v0, v2, v3, v7, v8}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5291
    const-string v10, ") uptime"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5292
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5294
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5295
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5296
    const-string v10, "  Time on battery screen doze: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5297
    nop

    .end local v2    # "whichBatteryScreenOffUptime":J
    .restart local v33    # "whichBatteryScreenOffUptime":J
    div-long v2, v40, v19

    invoke-static {v4, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5298
    move-wide/from16 v2, v40

    .end local v40    # "screenDozeTime":J
    .local v2, "screenDozeTime":J
    invoke-virtual {v0, v2, v3, v7, v8}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5299
    const-string v10, ")"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5300
    nop

    .end local v2    # "screenDozeTime":J
    .restart local v40    # "screenDozeTime":J
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5302
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5303
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5304
    const-string v2, "  Total run time: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5305
    div-long v2, v44, v19

    invoke-static {v4, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5306
    const-string/jumbo v2, "realtime, "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5307
    div-long v2, v23, v19

    invoke-static {v4, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5308
    const-string/jumbo v2, "uptime"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5309
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5310
    const-wide/16 v46, 0x0

    cmp-long v2, v29, v46

    if-ltz v2, :cond_5

    .line 5311
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5312
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5313
    const-string v2, "  Battery time remaining: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5314
    div-long v2, v29, v19

    invoke-static {v4, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5315
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5317
    :cond_5
    cmp-long v2, v31, v46

    if-ltz v2, :cond_6

    .line 5318
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5319
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5320
    const-string v2, "  Charge time remaining: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5321
    div-long v2, v31, v19

    invoke-static {v4, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5322
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5325
    :cond_6
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getUahDischarge(I)J

    move-result-wide v2

    .line 5326
    .local v2, "dischargeCount":J
    cmp-long v48, v2, v46

    const-wide v49, 0x408f400000000000L    # 1000.0

    if-ltz v48, :cond_7

    .line 5327
    move-wide/from16 v51, v11

    const/4 v11, 0x0

    .end local v11    # "whichBatteryScreenOffRealtime":J
    .local v51, "whichBatteryScreenOffRealtime":J
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5328
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5329
    const-string v11, "  Discharge: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5330
    long-to-double v11, v2

    div-double v11, v11, v49

    invoke-static {v11, v12}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5331
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5332
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 5326
    .end local v51    # "whichBatteryScreenOffRealtime":J
    .restart local v11    # "whichBatteryScreenOffRealtime":J
    :cond_7
    move-wide/from16 v51, v11

    .line 5335
    .end local v11    # "whichBatteryScreenOffRealtime":J
    .restart local v51    # "whichBatteryScreenOffRealtime":J
    :goto_4
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getUahDischargeScreenOff(I)J

    move-result-wide v11

    .line 5336
    .local v11, "dischargeScreenOffCount":J
    cmp-long v48, v11, v46

    if-ltz v48, :cond_8

    .line 5337
    move-wide/from16 v53, v2

    const/4 v2, 0x0

    .end local v2    # "dischargeCount":J
    .local v53, "dischargeCount":J
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5338
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5339
    const-string v2, "  Screen off discharge: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5340
    long-to-double v2, v11

    div-double v2, v2, v49

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5341
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5342
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 5336
    .end local v53    # "dischargeCount":J
    .restart local v2    # "dischargeCount":J
    :cond_8
    move-wide/from16 v53, v2

    .line 5345
    .end local v2    # "dischargeCount":J
    .restart local v53    # "dischargeCount":J
    :goto_5
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getUahDischargeScreenDoze(I)J

    move-result-wide v2

    .line 5346
    .local v2, "dischargeScreenDozeCount":J
    cmp-long v48, v2, v46

    if-ltz v48, :cond_9

    .line 5347
    move-wide/from16 v55, v11

    const/4 v11, 0x0

    .end local v11    # "dischargeScreenOffCount":J
    .local v55, "dischargeScreenOffCount":J
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5348
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5349
    const-string v11, "  Screen doze discharge: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5350
    long-to-double v11, v2

    div-double v11, v11, v49

    invoke-static {v11, v12}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5351
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5352
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 5346
    .end local v55    # "dischargeScreenOffCount":J
    .restart local v11    # "dischargeScreenOffCount":J
    :cond_9
    move-wide/from16 v55, v11

    .line 5355
    .end local v11    # "dischargeScreenOffCount":J
    .restart local v55    # "dischargeScreenOffCount":J
    :goto_6
    sub-long v11, v53, v55

    .line 5356
    .local v11, "dischargeScreenOnCount":J
    cmp-long v48, v11, v46

    if-ltz v48, :cond_a

    .line 5357
    move-wide/from16 v57, v2

    const/4 v2, 0x0

    .end local v2    # "dischargeScreenDozeCount":J
    .local v57, "dischargeScreenDozeCount":J
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5358
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5359
    const-string v2, "  Screen on discharge: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5360
    long-to-double v2, v11

    div-double v2, v2, v49

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5361
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5362
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 5356
    .end local v57    # "dischargeScreenDozeCount":J
    .restart local v2    # "dischargeScreenDozeCount":J
    :cond_a
    move-wide/from16 v57, v2

    .line 5365
    .end local v2    # "dischargeScreenDozeCount":J
    .restart local v57    # "dischargeScreenDozeCount":J
    :goto_7
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getUahDischargeLightDoze(I)J

    move-result-wide v2

    .line 5366
    .local v2, "dischargeLightDozeCount":J
    cmp-long v48, v2, v46

    if-ltz v48, :cond_b

    .line 5367
    move-wide/from16 v59, v11

    const/4 v11, 0x0

    .end local v11    # "dischargeScreenOnCount":J
    .local v59, "dischargeScreenOnCount":J
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5368
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5369
    const-string v11, "  Device light doze discharge: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5370
    long-to-double v11, v2

    div-double v11, v11, v49

    invoke-static {v11, v12}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5371
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5372
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 5366
    .end local v59    # "dischargeScreenOnCount":J
    .restart local v11    # "dischargeScreenOnCount":J
    :cond_b
    move-wide/from16 v59, v11

    .line 5375
    .end local v11    # "dischargeScreenOnCount":J
    .restart local v59    # "dischargeScreenOnCount":J
    :goto_8
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getUahDischargeDeepDoze(I)J

    move-result-wide v11

    .line 5376
    .local v11, "dischargeDeepDozeCount":J
    cmp-long v48, v11, v46

    if-ltz v48, :cond_c

    .line 5377
    move-wide/from16 v61, v2

    const/4 v2, 0x0

    .end local v2    # "dischargeLightDozeCount":J
    .local v61, "dischargeLightDozeCount":J
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5378
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5379
    const-string v2, "  Device deep doze discharge: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5380
    long-to-double v2, v11

    div-double v2, v2, v49

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5381
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5382
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    .line 5376
    .end local v61    # "dischargeLightDozeCount":J
    .restart local v2    # "dischargeLightDozeCount":J
    :cond_c
    move-wide/from16 v61, v2

    .line 5385
    .end local v2    # "dischargeLightDozeCount":J
    .restart local v61    # "dischargeLightDozeCount":J
    :goto_9
    const-string v2, "  Start clock time: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5386
    const-string/jumbo v2, "yyyy-MM-dd-HH-mm-ss"

    move-wide/from16 v48, v11

    .end local v11    # "dischargeDeepDozeCount":J
    .local v48, "dischargeDeepDozeCount":J
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v11

    invoke-static {v2, v11, v12}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5388
    move-wide/from16 v11, v38

    .end local v38    # "rawRealtime":J
    .local v11, "rawRealtime":J
    invoke-virtual {v0, v11, v12, v5}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v2

    .line 5389
    .local v2, "screenOnTime":J
    move/from16 v38, v14

    .end local v14    # "lastLearnedBatteryCapacity":I
    .local v38, "lastLearnedBatteryCapacity":I
    invoke-virtual {v0, v11, v12, v5}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v13

    .line 5390
    .local v13, "interactiveTime":J
    move-wide/from16 v63, v13

    .end local v13    # "interactiveTime":J
    .local v63, "interactiveTime":J
    invoke-virtual {v0, v11, v12, v5}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v13

    .line 5391
    .local v13, "powerSaveModeEnabledTime":J
    move/from16 v39, v15

    .end local v15    # "estimatedBatteryCapacity":I
    .local v39, "estimatedBatteryCapacity":I
    const/4 v15, 0x1

    move-wide/from16 v65, v13

    .end local v13    # "powerSaveModeEnabledTime":J
    .local v65, "powerSaveModeEnabledTime":J
    invoke-virtual {v0, v15, v11, v12, v5}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v13

    .line 5393
    .local v13, "deviceIdleModeLightTime":J
    const/4 v15, 0x2

    move-wide/from16 v67, v13

    .end local v13    # "deviceIdleModeLightTime":J
    .local v67, "deviceIdleModeLightTime":J
    invoke-virtual {v0, v15, v11, v12, v5}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v13

    .line 5395
    .local v13, "deviceIdleModeFullTime":J
    move-wide/from16 v69, v13

    const/4 v15, 0x1

    .end local v13    # "deviceIdleModeFullTime":J
    .local v69, "deviceIdleModeFullTime":J
    invoke-virtual {v0, v15, v11, v12, v5}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v13

    .line 5397
    .local v13, "deviceLightIdlingTime":J
    move-wide/from16 v71, v13

    const/4 v15, 0x2

    .end local v13    # "deviceLightIdlingTime":J
    .local v71, "deviceLightIdlingTime":J
    invoke-virtual {v0, v15, v11, v12, v5}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v13

    .line 5399
    .local v13, "deviceIdlingTime":J
    move-wide/from16 v73, v13

    .end local v13    # "deviceIdlingTime":J
    .local v73, "deviceIdlingTime":J
    invoke-virtual {v0, v11, v12, v5}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v13

    .line 5400
    .local v13, "phoneOnTime":J
    invoke-virtual {v0, v11, v12, v5}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v75

    .line 5401
    .local v75, "wifiRunningTime":J
    invoke-virtual {v0, v11, v12, v5}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v77

    .line 5402
    .local v77, "wifiOnTime":J
    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5403
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5404
    const-string v15, "  Screen on: "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v79, v13

    .end local v13    # "phoneOnTime":J
    .local v79, "phoneOnTime":J
    div-long v13, v2, v19

    invoke-static {v4, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5405
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3, v7, v8}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5406
    const-string v13, ") "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getScreenOnCount(I)I

    move-result v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5407
    const-string/jumbo v14, "x, Interactive: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v14, v63, v19

    invoke-static {v4, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5408
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, v63

    move-object/from16 v63, v13

    .end local v63    # "interactiveTime":J
    .local v14, "interactiveTime":J
    invoke-virtual {v0, v14, v15, v7, v8}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5409
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5410
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5411
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5412
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5413
    const-string v13, "  Screen brightnesses:"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5414
    const/4 v13, 0x0

    .line 5415
    .local v13, "didOne":Z
    const/16 v64, 0x0

    move/from16 v224, v64

    move/from16 v64, v13

    move/from16 v13, v224

    .local v13, "i":I
    .local v64, "didOne":Z
    :goto_a
    move-wide/from16 v81, v14

    .end local v14    # "interactiveTime":J
    .local v81, "interactiveTime":J
    const/4 v14, 0x5

    const-string v15, " "

    if-ge v13, v14, :cond_e

    .line 5416
    move-wide/from16 v83, v7

    .end local v7    # "whichBatteryRealtime":J
    .local v83, "whichBatteryRealtime":J
    invoke-virtual {v0, v13, v11, v12, v5}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v7

    .line 5417
    .local v7, "time":J
    cmp-long v14, v7, v46

    if-nez v14, :cond_d

    .line 5418
    move/from16 v85, v13

    goto :goto_b

    .line 5420
    :cond_d
    const-string v14, "\n    "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5421
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5422
    const/4 v14, 0x1

    .line 5423
    .end local v64    # "didOne":Z
    .local v14, "didOne":Z
    sget-object v64, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    move/from16 v85, v13

    .end local v13    # "i":I
    .local v85, "i":I
    aget-object v13, v64, v85

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5424
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5425
    move/from16 v64, v14

    .end local v14    # "didOne":Z
    .restart local v64    # "didOne":Z
    div-long v13, v7, v19

    invoke-static {v4, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5426
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5427
    invoke-virtual {v0, v7, v8, v2, v3}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5428
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5415
    .end local v7    # "time":J
    :goto_b
    add-int/lit8 v13, v85, 0x1

    move-wide/from16 v14, v81

    move-wide/from16 v7, v83

    .end local v85    # "i":I
    .restart local v13    # "i":I
    goto :goto_a

    .end local v83    # "whichBatteryRealtime":J
    .local v7, "whichBatteryRealtime":J
    :cond_e
    move-wide/from16 v83, v7

    move/from16 v85, v13

    .line 5430
    .end local v7    # "whichBatteryRealtime":J
    .end local v13    # "i":I
    .restart local v83    # "whichBatteryRealtime":J
    const-string v7, " (no activity)"

    if-nez v64, :cond_f

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5431
    :cond_f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5432
    cmp-long v8, v65, v46

    if-eqz v8, :cond_10

    .line 5433
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5434
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5435
    const-string v8, "  Power save mode enabled: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5436
    move-object v13, v15

    div-long v14, v65, v19

    invoke-static {v4, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5437
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5438
    move-wide/from16 v14, v65

    move-object/from16 v65, v9

    move-wide v8, v14

    move-wide/from16 v14, v83

    move-wide/from16 v83, v2

    .end local v2    # "screenOnTime":J
    .end local v65    # "powerSaveModeEnabledTime":J
    .local v8, "powerSaveModeEnabledTime":J
    .local v14, "whichBatteryRealtime":J
    .local v83, "screenOnTime":J
    invoke-virtual {v0, v8, v9, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5439
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5440
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c

    .line 5432
    .end local v8    # "powerSaveModeEnabledTime":J
    .end local v14    # "whichBatteryRealtime":J
    .restart local v2    # "screenOnTime":J
    .restart local v65    # "powerSaveModeEnabledTime":J
    .local v83, "whichBatteryRealtime":J
    :cond_10
    move-wide/from16 v13, v65

    move-object/from16 v65, v9

    move-wide v8, v13

    move-object v13, v15

    move-wide/from16 v14, v83

    move-wide/from16 v83, v2

    .line 5442
    .end local v2    # "screenOnTime":J
    .end local v65    # "powerSaveModeEnabledTime":J
    .restart local v8    # "powerSaveModeEnabledTime":J
    .restart local v14    # "whichBatteryRealtime":J
    .local v83, "screenOnTime":J
    :goto_c
    cmp-long v2, v71, v46

    const-string/jumbo v3, "x"

    if-eqz v2, :cond_11

    .line 5443
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5444
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5445
    const-string v2, "  Device light idling: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5446
    move-wide/from16 v85, v8

    .end local v8    # "powerSaveModeEnabledTime":J
    .local v85, "powerSaveModeEnabledTime":J
    div-long v8, v71, v19

    invoke-static {v4, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5447
    move-object/from16 v8, v65

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5448
    move-object/from16 v65, v10

    move-wide/from16 v9, v71

    .end local v71    # "deviceLightIdlingTime":J
    .local v9, "deviceLightIdlingTime":J
    invoke-virtual {v0, v9, v10, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5449
    move-object/from16 v2, v63

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    .end local v9    # "deviceLightIdlingTime":J
    .restart local v71    # "deviceLightIdlingTime":J
    invoke-virtual {v0, v9, v5}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5450
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5451
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d

    .line 5442
    .end local v85    # "powerSaveModeEnabledTime":J
    .restart local v8    # "powerSaveModeEnabledTime":J
    :cond_11
    move-wide/from16 v85, v8

    move-object/from16 v2, v63

    move-object/from16 v8, v65

    move-object/from16 v65, v10

    .line 5453
    .end local v8    # "powerSaveModeEnabledTime":J
    .restart local v85    # "powerSaveModeEnabledTime":J
    :goto_d
    cmp-long v9, v67, v46

    if-eqz v9, :cond_12

    .line 5454
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5455
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5456
    const-string v9, "  Idle mode light time: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5457
    div-long v9, v67, v19

    invoke-static {v4, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5458
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5459
    move-object/from16 v63, v13

    move-wide/from16 v9, v67

    .end local v67    # "deviceIdleModeLightTime":J
    .local v9, "deviceIdleModeLightTime":J
    invoke-virtual {v0, v9, v10, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5460
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5461
    const/4 v13, 0x1

    .end local v9    # "deviceIdleModeLightTime":J
    .restart local v67    # "deviceIdleModeLightTime":J
    invoke-virtual {v0, v13, v5}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5462
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5463
    const-string v9, " -- longest "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5464
    invoke-virtual {v0, v13}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v9

    invoke-static {v4, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5465
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 5453
    :cond_12
    move-object/from16 v63, v13

    .line 5467
    :goto_e
    cmp-long v9, v73, v46

    if-eqz v9, :cond_13

    .line 5468
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5469
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5470
    const-string v9, "  Device full idling: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5471
    div-long v9, v73, v19

    invoke-static {v4, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5472
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5473
    move-wide/from16 v9, v73

    .end local v73    # "deviceIdlingTime":J
    .local v9, "deviceIdlingTime":J
    invoke-virtual {v0, v9, v10, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5474
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x2

    .end local v9    # "deviceIdlingTime":J
    .restart local v73    # "deviceIdlingTime":J
    invoke-virtual {v0, v13, v5}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5475
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5476
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5478
    :cond_13
    cmp-long v9, v69, v46

    if-eqz v9, :cond_14

    .line 5479
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5480
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5481
    const-string v9, "  Idle mode full time: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5482
    div-long v9, v69, v19

    invoke-static {v4, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5483
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5484
    move-wide/from16 v9, v69

    .end local v69    # "deviceIdleModeFullTime":J
    .local v9, "deviceIdleModeFullTime":J
    invoke-virtual {v0, v9, v10, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5485
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5486
    const/4 v13, 0x2

    .end local v9    # "deviceIdleModeFullTime":J
    .restart local v69    # "deviceIdleModeFullTime":J
    invoke-virtual {v0, v13, v5}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5487
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5488
    const-string v9, " -- longest "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5489
    invoke-virtual {v0, v13}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v9

    invoke-static {v4, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5490
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5492
    :cond_14
    cmp-long v9, v79, v46

    if-eqz v9, :cond_15

    .line 5493
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5494
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5495
    const-string v9, "  Active phone call: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v9, v79, v19

    invoke-static {v4, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5496
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, v79

    .end local v79    # "phoneOnTime":J
    .local v9, "phoneOnTime":J
    invoke-virtual {v0, v9, v10, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5497
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getPhoneOnCount(I)I

    move-result v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 5492
    .end local v9    # "phoneOnTime":J
    .restart local v79    # "phoneOnTime":J
    :cond_15
    move-wide/from16 v9, v79

    .line 5499
    .end local v79    # "phoneOnTime":J
    .restart local v9    # "phoneOnTime":J
    :goto_f
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v13

    .line 5500
    .local v13, "connChanges":I
    if-eqz v13, :cond_16

    .line 5501
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5502
    move-object/from16 v79, v3

    const-string v3, "  Connectivity changes: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_10

    .line 5500
    :cond_16
    move-object/from16 v79, v3

    .line 5506
    :goto_10
    const-wide/16 v87, 0x0

    .line 5507
    .local v87, "fullWakeLockTimeTotalMicros":J
    const-wide/16 v89, 0x0

    .line 5509
    .local v89, "partialWakeLockTimeTotalMicros":J
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5511
    .local v3, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    const/16 v80, 0x0

    move-wide/from16 v91, v9

    move/from16 v9, v80

    .local v9, "iu":I
    .local v91, "phoneOnTime":J
    :goto_11
    move/from16 v10, v37

    .end local v37    # "NU":I
    .local v10, "NU":I
    if-ge v9, v10, :cond_1c

    .line 5512
    move/from16 v37, v13

    move-object/from16 v13, v16

    .end local v16    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v13, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v37, "connChanges":I
    invoke-virtual {v13, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/BatteryStats$Uid;

    .line 5514
    .local v16, "u":Landroid/os/BatteryStats$Uid;
    nop

    .line 5515
    move/from16 v80, v9

    .end local v9    # "iu":I
    .local v80, "iu":I
    invoke-virtual/range {v16 .. v16}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v9

    .line 5516
    .local v9, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v93

    move-object/from16 v94, v13

    const/4 v13, 0x1

    .end local v13    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v94, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    add-int/lit8 v93, v93, -0x1

    move/from16 v13, v93

    .local v13, "iw":I
    :goto_12
    if-ltz v13, :cond_1b

    .line 5517
    invoke-virtual {v9, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v93

    move/from16 v95, v10

    .end local v10    # "NU":I
    .local v95, "NU":I
    move-object/from16 v10, v93

    check-cast v10, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 5519
    .local v10, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    move-object/from16 v96, v2

    move-object/from16 v93, v7

    const/4 v7, 0x1

    invoke-virtual {v10, v7}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v2

    .line 5520
    .local v2, "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v2, :cond_17

    .line 5521
    invoke-virtual {v2, v11, v12, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v97

    add-long v87, v87, v97

    .line 5525
    :cond_17
    move-object/from16 v103, v2

    const/4 v7, 0x0

    .end local v2    # "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    .local v103, "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v10, v7}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v2

    .line 5526
    .local v2, "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v2, :cond_1a

    .line 5527
    invoke-virtual {v2, v11, v12, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v101

    .line 5529
    .local v101, "totalTimeMicros":J
    cmp-long v7, v101, v46

    if-lez v7, :cond_19

    .line 5530
    if-gez p5, :cond_18

    .line 5534
    new-instance v97, Landroid/os/BatteryStats$TimerEntry;

    invoke-virtual {v9, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v98, v7

    check-cast v98, Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v99

    move-object/from16 v100, v2

    .end local v2    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    .local v100, "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    invoke-direct/range {v97 .. v102}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    move-object/from16 v2, v97

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 5530
    .end local v100    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    .restart local v2    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    :cond_18
    move-object/from16 v100, v2

    .line 5537
    .end local v2    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    .restart local v100    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    :goto_13
    add-long v89, v89, v101

    goto :goto_14

    .line 5529
    .end local v100    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    .restart local v2    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    :cond_19
    move-object/from16 v100, v2

    .end local v2    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    .restart local v100    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    goto :goto_14

    .line 5526
    .end local v100    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    .end local v101    # "totalTimeMicros":J
    .restart local v2    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    :cond_1a
    move-object/from16 v100, v2

    .line 5516
    .end local v2    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    .end local v10    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v103    # "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    :goto_14
    add-int/lit8 v13, v13, -0x1

    move-object/from16 v7, v93

    move/from16 v10, v95

    move-object/from16 v2, v96

    goto :goto_12

    .end local v95    # "NU":I
    .local v10, "NU":I
    :cond_1b
    move-object/from16 v96, v2

    move-object/from16 v93, v7

    move/from16 v95, v10

    .line 5511
    .end local v9    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v10    # "NU":I
    .end local v13    # "iw":I
    .end local v16    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v95    # "NU":I
    add-int/lit8 v9, v80, 0x1

    move/from16 v13, v37

    move-object/from16 v16, v94

    move/from16 v37, v95

    .end local v80    # "iu":I
    .local v9, "iu":I
    goto/16 :goto_11

    .end local v37    # "connChanges":I
    .end local v94    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v95    # "NU":I
    .restart local v10    # "NU":I
    .local v13, "connChanges":I
    .local v16, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    :cond_1c
    move-object/from16 v96, v2

    move-object/from16 v93, v7

    move/from16 v80, v9

    move/from16 v95, v10

    move/from16 v37, v13

    move-object/from16 v94, v16

    .line 5543
    .end local v9    # "iu":I
    .end local v10    # "NU":I
    .end local v13    # "connChanges":I
    .end local v16    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v37    # "connChanges":I
    .restart local v94    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v95    # "NU":I
    move-object v7, v3

    const/4 v10, 0x0

    .end local v3    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v7, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-virtual {v0, v10, v5}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v2

    .line 5544
    .local v2, "mobileRxTotalBytes":J
    move-wide/from16 v97, v11

    const/4 v13, 0x1

    .end local v11    # "rawRealtime":J
    .local v97, "rawRealtime":J
    invoke-virtual {v0, v13, v5}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v10

    .line 5545
    .local v10, "mobileTxTotalBytes":J
    move-wide/from16 v99, v14

    const/4 v9, 0x2

    .end local v14    # "whichBatteryRealtime":J
    .local v99, "whichBatteryRealtime":J
    invoke-virtual {v0, v9, v5}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v13

    .line 5546
    .local v13, "wifiRxTotalBytes":J
    const/4 v12, 0x3

    move-wide v15, v10

    .end local v10    # "mobileTxTotalBytes":J
    .local v15, "mobileTxTotalBytes":J
    invoke-virtual {v0, v12, v5}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v9

    .line 5547
    .local v9, "wifiTxTotalBytes":J
    move-wide/from16 v101, v9

    const/4 v11, 0x0

    .end local v9    # "wifiTxTotalBytes":J
    .local v101, "wifiTxTotalBytes":J
    invoke-virtual {v0, v11, v5}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v9

    .line 5548
    .local v9, "mobileRxTotalPackets":J
    move-wide/from16 v103, v13

    const/4 v11, 0x1

    .end local v13    # "wifiRxTotalBytes":J
    .local v103, "wifiRxTotalBytes":J
    invoke-virtual {v0, v11, v5}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v12

    .line 5549
    .local v12, "mobileTxTotalPackets":J
    move-wide/from16 v105, v15

    const/4 v11, 0x2

    .end local v15    # "mobileTxTotalBytes":J
    .local v105, "mobileTxTotalBytes":J
    invoke-virtual {v0, v11, v5}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v14

    .line 5550
    .local v14, "wifiRxTotalPackets":J
    const/4 v11, 0x3

    move-wide/from16 v107, v14

    .end local v14    # "wifiRxTotalPackets":J
    .local v107, "wifiRxTotalPackets":J
    invoke-virtual {v0, v11, v5}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v14

    .line 5551
    .local v14, "wifiTxTotalPackets":J
    const/4 v11, 0x4

    move-wide/from16 v109, v14

    .end local v14    # "wifiTxTotalPackets":J
    .local v109, "wifiTxTotalPackets":J
    invoke-virtual {v0, v11, v5}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v14

    .line 5552
    .local v14, "btRxTotalBytes":J
    move-wide/from16 v111, v14

    const/4 v11, 0x5

    .end local v14    # "btRxTotalBytes":J
    .local v111, "btRxTotalBytes":J
    invoke-virtual {v0, v11, v5}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v14

    .line 5554
    .local v14, "btTxTotalBytes":J
    cmp-long v16, v87, v46

    if-eqz v16, :cond_1d

    .line 5555
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5556
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5557
    const-string v11, "  Total full wakelock time: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v113, v87, v35

    move-wide/from16 v115, v2

    .end local v2    # "mobileRxTotalBytes":J
    .local v115, "mobileRxTotalBytes":J
    div-long v2, v113, v19

    invoke-static {v4, v2, v3}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 5559
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_15

    .line 5554
    .end local v115    # "mobileRxTotalBytes":J
    .restart local v2    # "mobileRxTotalBytes":J
    :cond_1d
    move-wide/from16 v115, v2

    .line 5562
    .end local v2    # "mobileRxTotalBytes":J
    .restart local v115    # "mobileRxTotalBytes":J
    :goto_15
    cmp-long v2, v89, v46

    if-eqz v2, :cond_1e

    .line 5563
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5564
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5565
    const-string v2, "  Total partial wakelock time: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v2, v89, v35

    div-long v2, v2, v19

    invoke-static {v4, v2, v3}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 5567
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5570
    :cond_1e
    nop

    .line 5571
    move-wide/from16 v2, v97

    .end local v97    # "rawRealtime":J
    .local v2, "rawRealtime":J
    invoke-virtual {v0, v2, v3, v5}, Landroid/os/BatteryStats;->getWifiMulticastWakelockTime(JI)J

    move-result-wide v97

    .line 5572
    .local v97, "multicastWakeLockTimeTotalMicros":J
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getWifiMulticastWakelockCount(I)I

    move-result v11

    .line 5573
    .local v11, "multicastWakeLockCountTotal":I
    cmp-long v16, v97, v46

    if-eqz v16, :cond_1f

    .line 5574
    move-object/from16 v16, v7

    const/4 v7, 0x0

    .end local v7    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v16, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5575
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5576
    const-string v7, "  Total WiFi Multicast wakelock Count: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5577
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5578
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5580
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5581
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5582
    const-string v7, "  Total WiFi Multicast wakelock time: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5583
    add-long v113, v97, v35

    move-wide/from16 v117, v14

    .end local v14    # "btTxTotalBytes":J
    .local v117, "btTxTotalBytes":J
    div-long v14, v113, v19

    invoke-static {v4, v14, v15}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 5584
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_16

    .line 5573
    .end local v16    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .end local v117    # "btTxTotalBytes":J
    .restart local v7    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .restart local v14    # "btTxTotalBytes":J
    :cond_1f
    move-object/from16 v16, v7

    move-wide/from16 v117, v14

    .line 5587
    .end local v7    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .end local v14    # "btTxTotalBytes":J
    .restart local v16    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .restart local v117    # "btTxTotalBytes":J
    :goto_16
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDisplayCount()I

    move-result v14

    .line 5588
    .local v14, "numDisplays":I
    const/4 v15, 0x1

    if-le v14, v15, :cond_24

    .line 5589
    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5590
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5591
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5592
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5593
    const-string v7, "  MULTI-DISPLAY POWER SUMMARY START"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5594
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5596
    const/4 v7, 0x0

    .local v7, "display":I
    :goto_17
    if-ge v7, v14, :cond_23

    .line 5597
    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5598
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5599
    const-string v15, "  Display "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5600
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5601
    const-string v15, " Statistics:"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5602
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5604
    move/from16 v80, v14

    .end local v14    # "numDisplays":I
    .local v80, "numDisplays":I
    invoke-virtual {v0, v7, v2, v3}, Landroid/os/BatteryStats;->getDisplayScreenOnTime(IJ)J

    move-result-wide v14

    .line 5605
    .local v14, "displayScreenOnTime":J
    move/from16 v113, v11

    const/4 v11, 0x0

    .end local v11    # "multicastWakeLockCountTotal":I
    .local v113, "multicastWakeLockCountTotal":I
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5606
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5607
    const-string v11, "    Screen on: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5608
    move-wide/from16 v119, v12

    .end local v12    # "mobileTxTotalPackets":J
    .local v119, "mobileTxTotalPackets":J
    div-long v11, v14, v19

    invoke-static {v4, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5609
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5610
    move-wide/from16 v11, v99

    .end local v99    # "whichBatteryRealtime":J
    .local v11, "whichBatteryRealtime":J
    invoke-virtual {v0, v14, v15, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5611
    move-object/from16 v13, v96

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5612
    move-wide/from16 v99, v9

    .end local v9    # "mobileRxTotalPackets":J
    .local v99, "mobileRxTotalPackets":J
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5614
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5615
    const-string v9, "    Screen brightness levels:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5616
    const/4 v9, 0x0

    .line 5617
    .end local v64    # "didOne":Z
    .local v9, "didOne":Z
    const/4 v10, 0x0

    move/from16 v64, v9

    .end local v9    # "didOne":Z
    .local v10, "bin":I
    .restart local v64    # "didOne":Z
    :goto_18
    const/4 v9, 0x5

    if-ge v10, v9, :cond_21

    .line 5618
    move-wide/from16 v121, v11

    .end local v11    # "whichBatteryRealtime":J
    .local v121, "whichBatteryRealtime":J
    invoke-virtual {v0, v7, v10, v2, v3}, Landroid/os/BatteryStats;->getDisplayScreenBrightnessTime(IIJ)J

    move-result-wide v11

    .line 5619
    .local v11, "timeUs":J
    cmp-long v9, v11, v46

    if-nez v9, :cond_20

    .line 5620
    move-object/from16 v96, v63

    move-object/from16 v9, v65

    move/from16 v63, v10

    goto :goto_19

    .line 5622
    :cond_20
    const/16 v64, 0x1

    .line 5623
    const-string v9, "\n      "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5624
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5625
    sget-object v9, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    aget-object v9, v9, v10

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5626
    move-object/from16 v9, v63

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5627
    move-object/from16 v96, v9

    move/from16 v63, v10

    .end local v10    # "bin":I
    .local v63, "bin":I
    div-long v9, v11, v19

    invoke-static {v4, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5628
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5629
    invoke-virtual {v0, v11, v12, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5630
    move-object/from16 v9, v65

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5617
    .end local v11    # "timeUs":J
    :goto_19
    add-int/lit8 v10, v63, 0x1

    move-object/from16 v65, v9

    move-object/from16 v63, v96

    move-wide/from16 v11, v121

    .end local v63    # "bin":I
    .restart local v10    # "bin":I
    goto :goto_18

    .end local v121    # "whichBatteryRealtime":J
    .local v11, "whichBatteryRealtime":J
    :cond_21
    move-wide/from16 v121, v11

    move-object/from16 v96, v63

    move-object/from16 v9, v65

    move/from16 v63, v10

    .line 5632
    .end local v10    # "bin":I
    .end local v11    # "whichBatteryRealtime":J
    .restart local v121    # "whichBatteryRealtime":J
    if-nez v64, :cond_22

    move-object/from16 v10, v93

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    :cond_22
    move-object/from16 v10, v93

    .line 5633
    :goto_1a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5635
    invoke-virtual {v0, v7, v2, v3}, Landroid/os/BatteryStats;->getDisplayScreenDozeTime(IJ)J

    move-result-wide v11

    .line 5636
    .local v11, "displayScreenDozeTimeUs":J
    move/from16 v63, v7

    const/4 v7, 0x0

    .end local v7    # "display":I
    .local v63, "display":I
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5637
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5638
    const-string v7, "    Screen Doze: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5639
    move-wide/from16 v123, v14

    .end local v14    # "displayScreenOnTime":J
    .local v123, "displayScreenOnTime":J
    div-long v14, v11, v19

    invoke-static {v4, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5640
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5641
    move-wide/from16 v14, v121

    .end local v121    # "whichBatteryRealtime":J
    .local v14, "whichBatteryRealtime":J
    invoke-virtual {v0, v11, v12, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5642
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5643
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5596
    .end local v11    # "displayScreenDozeTimeUs":J
    .end local v123    # "displayScreenOnTime":J
    add-int/lit8 v7, v63, 0x1

    move-object/from16 v65, v9

    move-object/from16 v93, v10

    move-object/from16 v63, v96

    move-wide/from16 v9, v99

    move/from16 v11, v113

    move-object/from16 v96, v13

    move-wide/from16 v99, v14

    move/from16 v14, v80

    move-wide/from16 v12, v119

    .end local v63    # "display":I
    .restart local v7    # "display":I
    goto/16 :goto_17

    .end local v80    # "numDisplays":I
    .end local v113    # "multicastWakeLockCountTotal":I
    .end local v119    # "mobileTxTotalPackets":J
    .local v9, "mobileRxTotalPackets":J
    .local v11, "multicastWakeLockCountTotal":I
    .restart local v12    # "mobileTxTotalPackets":J
    .local v14, "numDisplays":I
    .local v99, "whichBatteryRealtime":J
    :cond_23
    move/from16 v113, v11

    move-wide/from16 v119, v12

    move/from16 v80, v14

    move-object/from16 v13, v96

    move-wide/from16 v14, v99

    move-wide/from16 v99, v9

    move-object/from16 v96, v63

    move-object/from16 v9, v65

    move-object/from16 v10, v93

    move/from16 v63, v7

    .line 5645
    .end local v7    # "display":I
    .end local v9    # "mobileRxTotalPackets":J
    .end local v11    # "multicastWakeLockCountTotal":I
    .end local v12    # "mobileTxTotalPackets":J
    .local v14, "whichBatteryRealtime":J
    .restart local v80    # "numDisplays":I
    .local v99, "mobileRxTotalPackets":J
    .restart local v113    # "multicastWakeLockCountTotal":I
    .restart local v119    # "mobileTxTotalPackets":J
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5646
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5647
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5648
    const-string v7, "  MULTI-DISPLAY POWER SUMMARY END"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5649
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1b

    .line 5588
    .end local v80    # "numDisplays":I
    .end local v113    # "multicastWakeLockCountTotal":I
    .end local v119    # "mobileTxTotalPackets":J
    .restart local v9    # "mobileRxTotalPackets":J
    .restart local v11    # "multicastWakeLockCountTotal":I
    .restart local v12    # "mobileTxTotalPackets":J
    .local v14, "numDisplays":I
    .local v99, "whichBatteryRealtime":J
    :cond_24
    move/from16 v113, v11

    move-wide/from16 v119, v12

    move/from16 v80, v14

    move-object/from16 v13, v96

    move-wide/from16 v14, v99

    move-wide/from16 v99, v9

    move-object/from16 v96, v63

    move-object/from16 v9, v65

    move-object/from16 v10, v93

    .line 5652
    .end local v9    # "mobileRxTotalPackets":J
    .end local v11    # "multicastWakeLockCountTotal":I
    .end local v12    # "mobileTxTotalPackets":J
    .local v14, "whichBatteryRealtime":J
    .restart local v80    # "numDisplays":I
    .local v99, "mobileRxTotalPackets":J
    .restart local v113    # "multicastWakeLockCountTotal":I
    .restart local v119    # "mobileTxTotalPackets":J
    :goto_1b
    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5653
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5654
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5655
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5656
    const-string v7, "  CONNECTIVITY POWER SUMMARY START"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5657
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5659
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5660
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5661
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5662
    const-string v7, "  Logging duration for connectivity statistics: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5663
    div-long v11, v14, v19

    invoke-static {v4, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5664
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5666
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5667
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5668
    const-string v7, "  Cellular Statistics:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5669
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5671
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5672
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5673
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5674
    const-string v7, "     Cellular kernel active time: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5675
    invoke-virtual {v0, v2, v3, v5}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v11

    .line 5676
    .local v11, "mobileActiveTime":J
    move-wide/from16 v121, v2

    .end local v2    # "rawRealtime":J
    .local v121, "rawRealtime":J
    div-long v2, v11, v19

    invoke-static {v4, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5677
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5678
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5679
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5681
    nop

    .line 5682
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    .line 5681
    move-object v2, v4

    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v4, "Cellular"

    move-object v3, v6

    move-object/from16 v65, v9

    move-object/from16 v93, v10

    move-wide/from16 v123, v11

    move-wide/from16 v125, v21

    move-object/from16 v7, v79

    move-wide/from16 v9, v115

    move-wide/from16 v11, v121

    move/from16 v6, p4

    .end local v21    # "batteryUptime":J
    .end local v115    # "mobileRxTotalBytes":J
    .end local v121    # "rawRealtime":J
    .local v9, "mobileRxTotalBytes":J
    .local v11, "rawRealtime":J
    .local v123, "mobileActiveTime":J
    .local v125, "batteryUptime":J
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 5684
    move-object v0, v2

    move-object v6, v3

    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "     "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v1, p2

    move-object v2, v0

    move-wide/from16 v4, v17

    move-object/from16 v0, p0

    move/from16 v7, p4

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v17    # "rawRealtimeMs":J
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    .local v4, "rawRealtimeMs":J
    invoke-direct/range {v0 .. v5}, Landroid/os/BatteryStats;->printCellularPerRatBreakdown(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    .line 5686
    const-string v3, "     Cellular data received: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v9, v10}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5687
    const-string v3, "     Cellular data sent: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v9, v105

    .end local v105    # "mobileTxTotalBytes":J
    .local v9, "mobileTxTotalBytes":J
    .restart local v115    # "mobileRxTotalBytes":J
    invoke-virtual {v0, v9, v10}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5688
    const-string v3, "     Cellular packets received: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v9, v99

    .end local v99    # "mobileRxTotalPackets":J
    .local v9, "mobileRxTotalPackets":J
    .restart local v105    # "mobileTxTotalBytes":J
    invoke-virtual {v1, v9, v10}, Ljava/io/PrintWriter;->println(J)V

    .line 5689
    const-string v3, "     Cellular packets sent: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v9, v119

    .end local v119    # "mobileTxTotalPackets":J
    .local v9, "mobileTxTotalPackets":J
    .restart local v99    # "mobileRxTotalPackets":J
    invoke-virtual {v1, v9, v10}, Ljava/io/PrintWriter;->println(J)V

    .line 5691
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5692
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5693
    const-string v3, "     Cellular Radio Access Technology:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5694
    const/4 v3, 0x0

    .line 5695
    .end local v64    # "didOne":Z
    .local v3, "didOne":Z
    const/16 v17, 0x0

    move/from16 v224, v17

    move/from16 v17, v3

    move/from16 v3, v224

    .local v3, "connType":I
    .local v17, "didOne":Z
    :goto_1c
    move-wide/from16 v21, v4

    .end local v4    # "rawRealtimeMs":J
    .local v21, "rawRealtimeMs":J
    sget v4, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    if-ge v3, v4, :cond_29

    .line 5696
    invoke-virtual {v0, v3, v11, v12, v7}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    move-result-wide v4

    .line 5697
    .local v4, "time":J
    cmp-long v18, v4, v46

    if-nez v18, :cond_25

    .line 5698
    move/from16 v18, v3

    move-wide/from16 v119, v9

    move-object/from16 v3, v96

    goto/16 :goto_1e

    .line 5700
    :cond_25
    move-wide/from16 v119, v9

    .end local v9    # "mobileTxTotalPackets":J
    .restart local v119    # "mobileTxTotalPackets":J
    const-string v9, "\n       "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5701
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5702
    const/4 v9, 0x1

    .line 5703
    .end local v17    # "didOne":Z
    .local v9, "didOne":Z
    sget-object v10, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    array-length v10, v10

    if-ge v3, v10, :cond_26

    .line 5704
    sget-object v10, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    aget-object v10, v10, v3

    goto :goto_1d

    :cond_26
    const-string v10, "ERROR"

    .line 5703
    :goto_1d
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5705
    move-object/from16 v10, v96

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5706
    move/from16 v17, v9

    move-object/from16 v63, v10

    .end local v9    # "didOne":Z
    .restart local v17    # "didOne":Z
    div-long v9, v4, v19

    invoke-static {v2, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5707
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5708
    invoke-virtual {v0, v4, v5, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5709
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5711
    const/16 v9, 0xd

    if-ne v3, v9, :cond_28

    .line 5713
    invoke-virtual {v0, v11, v12}, Landroid/os/BatteryStats;->getNrNsaTime(J)J

    move-result-wide v9

    .line 5714
    .local v9, "nrNsaTime":J
    cmp-long v18, v9, v46

    if-eqz v18, :cond_27

    .line 5715
    move/from16 v18, v3

    .end local v3    # "connType":I
    .local v18, "connType":I
    const-string v3, "\n         "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5716
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5717
    const-string/jumbo v3, "nr_nsa"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5718
    move-object/from16 v3, v63

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5719
    move-wide/from16 v63, v4

    .end local v4    # "time":J
    .local v63, "time":J
    div-long v4, v9, v19

    invoke-static {v2, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5720
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5721
    invoke-virtual {v0, v9, v10, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5722
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 5714
    .end local v18    # "connType":I
    .end local v63    # "time":J
    .restart local v3    # "connType":I
    .restart local v4    # "time":J
    :cond_27
    move/from16 v18, v3

    move-object/from16 v3, v63

    move-wide/from16 v63, v4

    .end local v3    # "connType":I
    .end local v4    # "time":J
    .restart local v18    # "connType":I
    .restart local v63    # "time":J
    goto :goto_1e

    .line 5711
    .end local v9    # "nrNsaTime":J
    .end local v18    # "connType":I
    .end local v63    # "time":J
    .restart local v3    # "connType":I
    .restart local v4    # "time":J
    :cond_28
    move/from16 v18, v3

    move-object/from16 v3, v63

    move-wide/from16 v63, v4

    .line 5695
    .end local v3    # "connType":I
    .end local v4    # "time":J
    .restart local v18    # "connType":I
    :goto_1e
    add-int/lit8 v4, v18, 0x1

    move-object/from16 v96, v3

    move v3, v4

    move-wide/from16 v4, v21

    move-wide/from16 v9, v119

    .end local v18    # "connType":I
    .local v4, "connType":I
    goto/16 :goto_1c

    .end local v4    # "connType":I
    .end local v119    # "mobileTxTotalPackets":J
    .restart local v3    # "connType":I
    .local v9, "mobileTxTotalPackets":J
    :cond_29
    move/from16 v18, v3

    move-wide/from16 v119, v9

    move-object/from16 v3, v96

    .line 5726
    .end local v3    # "connType":I
    .end local v9    # "mobileTxTotalPackets":J
    .restart local v119    # "mobileTxTotalPackets":J
    if-nez v17, :cond_2a

    move-object/from16 v10, v93

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    :cond_2a
    move-object/from16 v10, v93

    .line 5727
    :goto_1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5729
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5730
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5731
    const-string v4, "     Cellular Rx signal strength (RSRP):"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5732
    const-string/jumbo v4, "good (-108dBm to -98dBm): "

    const-string/jumbo v5, "great (greater than -98dBm): "

    const-string/jumbo v9, "very poor (less than -128dBm): "

    const-string/jumbo v1, "poor (-128dBm to -118dBm): "

    move-object/from16 v93, v10

    const-string/jumbo v10, "moderate (-118dBm to -108dBm): "

    filled-new-array {v9, v1, v10, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    .line 5738
    .local v9, "cellularRxSignalStrengthDescription":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 5739
    .end local v17    # "didOne":Z
    .local v1, "didOne":Z
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v4

    array-length v5, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 5741
    .local v10, "numCellularRxBins":I
    const/4 v4, 0x0

    move/from16 v17, v1

    .end local v1    # "didOne":Z
    .local v4, "i":I
    .restart local v17    # "didOne":Z
    :goto_20
    if-ge v4, v10, :cond_2c

    .line 5742
    move-object/from16 v18, v9

    move/from16 v63, v10

    .end local v9    # "cellularRxSignalStrengthDescription":[Ljava/lang/String;
    .end local v10    # "numCellularRxBins":I
    .local v18, "cellularRxSignalStrengthDescription":[Ljava/lang/String;
    .local v63, "numCellularRxBins":I
    invoke-virtual {v0, v4, v11, v12, v7}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v9

    .line 5743
    .local v9, "time":J
    cmp-long v1, v9, v46

    if-nez v1, :cond_2b

    .line 5744
    move-object/from16 v96, v3

    move v5, v4

    goto :goto_21

    .line 5746
    :cond_2b
    const-string v1, "\n       "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5747
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5748
    const/4 v1, 0x1

    .line 5749
    .end local v17    # "didOne":Z
    .restart local v1    # "didOne":Z
    aget-object v5, v18, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5750
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5751
    move-object/from16 v96, v3

    move v5, v4

    .end local v4    # "i":I
    .local v5, "i":I
    div-long v3, v9, v19

    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5752
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5753
    invoke-virtual {v0, v9, v10, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5754
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v17, v1

    .line 5741
    .end local v1    # "didOne":Z
    .end local v9    # "time":J
    .restart local v17    # "didOne":Z
    :goto_21
    add-int/lit8 v4, v5, 0x1

    move-object/from16 v9, v18

    move/from16 v10, v63

    move-object/from16 v3, v96

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_20

    .end local v18    # "cellularRxSignalStrengthDescription":[Ljava/lang/String;
    .end local v63    # "numCellularRxBins":I
    .local v9, "cellularRxSignalStrengthDescription":[Ljava/lang/String;
    .restart local v10    # "numCellularRxBins":I
    :cond_2c
    move-object/from16 v96, v3

    move v5, v4

    move-object/from16 v18, v9

    move/from16 v63, v10

    .line 5756
    .end local v4    # "i":I
    .end local v9    # "cellularRxSignalStrengthDescription":[Ljava/lang/String;
    .end local v10    # "numCellularRxBins":I
    .restart local v18    # "cellularRxSignalStrengthDescription":[Ljava/lang/String;
    .restart local v63    # "numCellularRxBins":I
    if-nez v17, :cond_2d

    move-object/from16 v10, v93

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    :cond_2d
    move-object/from16 v10, v93

    .line 5757
    :goto_22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, p2

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5759
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5760
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5761
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5762
    const-string v1, "  Wifi Statistics:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5763
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5765
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5766
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5767
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5768
    const-string v1, "     Wifi kernel active time: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5769
    invoke-virtual {v0, v11, v12, v7}, Landroid/os/BatteryStats;->getWifiActiveTime(JI)J

    move-result-wide v4

    .line 5770
    .local v4, "wifiActiveTime":J
    div-long v6, v4, v19

    invoke-static {v2, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5771
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5772
    move-object/from16 v9, v65

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5773
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5775
    nop

    .line 5776
    move-wide v6, v4

    .end local v4    # "wifiActiveTime":J
    .local v6, "wifiActiveTime":J
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    .line 5775
    const-string v4, "WiFi"

    move-object v1, v3

    move-wide/from16 v127, v21

    move-object/from16 v3, p3

    move-wide/from16 v21, v6

    move-object/from16 v7, v96

    move/from16 v6, p4

    .end local v6    # "wifiActiveTime":J
    .local v21, "wifiActiveTime":J
    .local v127, "rawRealtimeMs":J
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 5778
    move v5, v6

    move-object v6, v3

    const-string v3, "     Wifi data received: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v103

    .end local v103    # "wifiRxTotalBytes":J
    .local v3, "wifiRxTotalBytes":J
    invoke-virtual {v0, v3, v4}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5779
    const-string v9, "     Wifi data sent: "

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v101

    .end local v101    # "wifiTxTotalBytes":J
    .local v3, "wifiTxTotalBytes":J
    .restart local v103    # "wifiRxTotalBytes":J
    invoke-virtual {v0, v3, v4}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5780
    const-string v9, "     Wifi packets received: "

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v107

    .end local v107    # "wifiRxTotalPackets":J
    .local v3, "wifiRxTotalPackets":J
    .restart local v101    # "wifiTxTotalBytes":J
    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 5781
    const-string v9, "     Wifi packets sent: "

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v109

    .end local v109    # "wifiTxTotalPackets":J
    .local v3, "wifiTxTotalPackets":J
    .restart local v107    # "wifiRxTotalPackets":J
    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 5783
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5784
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5785
    const-string v9, "     Wifi states:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5786
    const/4 v9, 0x0

    .line 5787
    .end local v17    # "didOne":Z
    .local v9, "didOne":Z
    const/16 v17, 0x0

    move/from16 v3, v17

    .local v3, "i":I
    .restart local v109    # "wifiTxTotalPackets":J
    :goto_23
    const/16 v4, 0x8

    if-ge v3, v4, :cond_2f

    .line 5788
    move v4, v9

    move-object/from16 v93, v10

    .end local v9    # "didOne":Z
    .local v4, "didOne":Z
    invoke-virtual {v0, v3, v11, v12, v5}, Landroid/os/BatteryStats;->getWifiStateTime(IJI)J

    move-result-wide v9

    .line 5789
    .local v9, "time":J
    cmp-long v17, v9, v46

    if-nez v17, :cond_2e

    .line 5790
    move/from16 v17, v3

    move v9, v4

    goto :goto_24

    .line 5792
    :cond_2e
    move/from16 v17, v3

    .end local v3    # "i":I
    .local v17, "i":I
    const-string v3, "\n       "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5793
    const/4 v3, 0x1

    .line 5794
    .end local v4    # "didOne":Z
    .local v3, "didOne":Z
    sget-object v4, Landroid/os/BatteryStats;->WIFI_STATE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v17

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5795
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5796
    move/from16 v64, v3

    .end local v3    # "didOne":Z
    .restart local v64    # "didOne":Z
    div-long v3, v9, v19

    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5797
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5798
    invoke-virtual {v0, v9, v10, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5799
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v64

    .line 5787
    .end local v64    # "didOne":Z
    .local v9, "didOne":Z
    :goto_24
    add-int/lit8 v3, v17, 0x1

    move-object/from16 v10, v93

    .end local v17    # "i":I
    .local v3, "i":I
    goto :goto_23

    :cond_2f
    move/from16 v17, v3

    move v4, v9

    move-object/from16 v93, v10

    .line 5801
    .end local v3    # "i":I
    .end local v9    # "didOne":Z
    .restart local v4    # "didOne":Z
    if-nez v4, :cond_30

    move-object/from16 v10, v93

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    :cond_30
    move-object/from16 v10, v93

    .line 5802
    :goto_25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5804
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5805
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5806
    const-string v3, "     Wifi supplicant states:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5807
    const/4 v3, 0x0

    .line 5808
    .end local v4    # "didOne":Z
    .local v3, "didOne":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_26
    const/16 v9, 0xd

    if-ge v4, v9, :cond_32

    .line 5809
    move-object/from16 v93, v10

    invoke-virtual {v0, v4, v11, v12, v5}, Landroid/os/BatteryStats;->getWifiSupplStateTime(IJI)J

    move-result-wide v9

    .line 5810
    .local v9, "time":J
    cmp-long v17, v9, v46

    if-nez v17, :cond_31

    .line 5811
    move/from16 v96, v4

    goto :goto_27

    .line 5813
    :cond_31
    move/from16 v17, v3

    .end local v3    # "didOne":Z
    .local v17, "didOne":Z
    const-string v3, "\n       "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5814
    const/4 v3, 0x1

    .line 5815
    .end local v17    # "didOne":Z
    .restart local v3    # "didOne":Z
    sget-object v17, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    move/from16 v64, v3

    .end local v3    # "didOne":Z
    .restart local v64    # "didOne":Z
    aget-object v3, v17, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5816
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5817
    move/from16 v96, v4

    .end local v4    # "i":I
    .local v96, "i":I
    div-long v3, v9, v19

    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5818
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5819
    invoke-virtual {v0, v9, v10, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5820
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v64

    .line 5808
    .end local v9    # "time":J
    .end local v64    # "didOne":Z
    .restart local v3    # "didOne":Z
    :goto_27
    add-int/lit8 v4, v96, 0x1

    move-object/from16 v10, v93

    .end local v96    # "i":I
    .restart local v4    # "i":I
    goto :goto_26

    :cond_32
    move/from16 v17, v3

    move/from16 v96, v4

    move-object/from16 v93, v10

    .line 5822
    .end local v3    # "didOne":Z
    .end local v4    # "i":I
    .restart local v17    # "didOne":Z
    if-nez v17, :cond_33

    move-object/from16 v10, v93

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_28

    :cond_33
    move-object/from16 v10, v93

    .line 5823
    :goto_28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5825
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5826
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5827
    const-string v3, "     Wifi Rx signal strength (RSSI):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5828
    const-string/jumbo v3, "good (-66.25dBm to -55dBm): "

    const-string/jumbo v4, "great (greater than -55dBm): "

    const-string/jumbo v9, "very poor (less than -88.75dBm): "

    move-object/from16 v96, v7

    const-string/jumbo v7, "poor (-88.75 to -77.5dBm): "

    const-string/jumbo v1, "moderate (-77.5dBm to -66.25dBm): "

    filled-new-array {v9, v7, v1, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    .line 5834
    .local v9, "wifiRxSignalStrengthDescription":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 5835
    .end local v17    # "didOne":Z
    .restart local v1    # "didOne":Z
    array-length v3, v9

    const/4 v4, 0x5

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 5837
    .local v7, "numWifiRxBins":I
    const/4 v3, 0x0

    move/from16 v17, v1

    .end local v1    # "didOne":Z
    .local v3, "i":I
    .restart local v17    # "didOne":Z
    :goto_29
    if-ge v3, v7, :cond_35

    .line 5838
    move-object/from16 v64, v9

    move-object/from16 v93, v10

    .end local v9    # "wifiRxSignalStrengthDescription":[Ljava/lang/String;
    .local v64, "wifiRxSignalStrengthDescription":[Ljava/lang/String;
    invoke-virtual {v0, v3, v11, v12, v5}, Landroid/os/BatteryStats;->getWifiSignalStrengthTime(IJI)J

    move-result-wide v9

    .line 5839
    .local v9, "time":J
    cmp-long v1, v9, v46

    if-nez v1, :cond_34

    .line 5840
    move/from16 v114, v3

    goto :goto_2a

    .line 5842
    :cond_34
    const-string v1, "\n    "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5843
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5844
    const/4 v1, 0x1

    .line 5845
    .end local v17    # "didOne":Z
    .restart local v1    # "didOne":Z
    const-string v4, "     "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5846
    aget-object v4, v64, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5847
    move/from16 v114, v3

    .end local v3    # "i":I
    .local v114, "i":I
    div-long v3, v9, v19

    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5848
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5849
    invoke-virtual {v0, v9, v10, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5850
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v17, v1

    .line 5837
    .end local v1    # "didOne":Z
    .end local v9    # "time":J
    .restart local v17    # "didOne":Z
    :goto_2a
    add-int/lit8 v3, v114, 0x1

    move-object/from16 v9, v64

    move-object/from16 v10, v93

    .end local v114    # "i":I
    .restart local v3    # "i":I
    goto :goto_29

    .end local v64    # "wifiRxSignalStrengthDescription":[Ljava/lang/String;
    .local v9, "wifiRxSignalStrengthDescription":[Ljava/lang/String;
    :cond_35
    move/from16 v114, v3

    move-object/from16 v64, v9

    move-object/from16 v93, v10

    .line 5852
    .end local v3    # "i":I
    .end local v9    # "wifiRxSignalStrengthDescription":[Ljava/lang/String;
    .restart local v64    # "wifiRxSignalStrengthDescription":[Ljava/lang/String;
    if-nez v17, :cond_36

    move-object/from16 v10, v93

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5853
    :cond_36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, p2

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5855
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5856
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5857
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5858
    const-string v1, "  GPS Statistics:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5859
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5861
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5862
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5863
    const-string v1, "     GPS signal quality (Top 4 Average CN0):"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5864
    const-string/jumbo v1, "poor (less than 20 dBHz): "

    const-string/jumbo v4, "good (greater than 20 dBHz): "

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    .line 5867
    .local v9, "gpsSignalQualityDescription":[Ljava/lang/String;
    array-length v1, v9

    const/4 v4, 0x2

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 5870
    .local v10, "numGpsSignalQualityBins":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2b
    if-ge v1, v10, :cond_37

    .line 5871
    move-object/from16 v93, v9

    move/from16 v114, v10

    .end local v9    # "gpsSignalQualityDescription":[Ljava/lang/String;
    .end local v10    # "numGpsSignalQualityBins":I
    .local v93, "gpsSignalQualityDescription":[Ljava/lang/String;
    .local v114, "numGpsSignalQualityBins":I
    invoke-virtual {v0, v1, v11, v12, v5}, Landroid/os/BatteryStats;->getGpsSignalQualityTime(IJI)J

    move-result-wide v9

    .line 5872
    .local v9, "time":J
    const-string v4, "\n    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5873
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5874
    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5875
    aget-object v4, v93, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5876
    div-long v4, v9, v19

    invoke-static {v2, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5877
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5878
    invoke-virtual {v0, v9, v10, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5879
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5870
    .end local v9    # "time":J
    add-int/lit8 v1, v1, 0x1

    move/from16 v5, p4

    move-object/from16 v9, v93

    move/from16 v10, v114

    goto :goto_2b

    .end local v93    # "gpsSignalQualityDescription":[Ljava/lang/String;
    .end local v114    # "numGpsSignalQualityBins":I
    .local v9, "gpsSignalQualityDescription":[Ljava/lang/String;
    .restart local v10    # "numGpsSignalQualityBins":I
    :cond_37
    move-object/from16 v93, v9

    move/from16 v114, v10

    .line 5881
    .end local v1    # "i":I
    .end local v9    # "gpsSignalQualityDescription":[Ljava/lang/String;
    .end local v10    # "numGpsSignalQualityBins":I
    .restart local v93    # "gpsSignalQualityDescription":[Ljava/lang/String;
    .restart local v114    # "numGpsSignalQualityBins":I
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5883
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getGpsBatteryDrainMaMs()J

    move-result-wide v9

    .line 5884
    .local v9, "gpsBatteryDrainMaMs":J
    cmp-long v1, v9, v46

    if-lez v1, :cond_38

    .line 5885
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5886
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5887
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5888
    const-string v1, "     GPS Battery Drain: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5889
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v4, "#.##"

    invoke-direct {v1, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-double v4, v9

    const-wide v121, 0x414b774000000000L    # 3600000.0

    div-double v4, v4, v121

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5891
    const-string/jumbo v1, "mAh"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5892
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5895
    :cond_38
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5896
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5897
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5898
    const-string v1, "  CONNECTIVITY POWER SUMMARY END"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5899
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5900
    const-string v1, ""

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5902
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5903
    const-string v1, "  Bluetooth total received: "

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v4, v111

    .end local v111    # "btRxTotalBytes":J
    .local v4, "btRxTotalBytes":J
    invoke-virtual {v0, v4, v5}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5904
    const-string v1, ", sent: "

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v111, v9

    move-wide/from16 v9, v117

    .end local v117    # "btTxTotalBytes":J
    .local v9, "btTxTotalBytes":J
    .local v111, "gpsBatteryDrainMaMs":J
    invoke-virtual {v0, v9, v10}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5906
    move/from16 v1, p4

    invoke-virtual {v0, v11, v12, v1}, Landroid/os/BatteryStats;->getBluetoothScanTime(JI)J

    move-result-wide v117

    move-wide/from16 v121, v9

    .end local v9    # "btTxTotalBytes":J
    .local v121, "btTxTotalBytes":J
    div-long v9, v117, v19

    .line 5907
    .local v9, "bluetoothScanTimeMs":J
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5908
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5909
    const-string v0, "  Bluetooth scan time: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5910
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5912
    move-wide/from16 v117, v4

    .end local v4    # "btRxTotalBytes":J
    .local v117, "btRxTotalBytes":J
    const-string v4, "Bluetooth"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    move-object v0, v6

    move v6, v1

    move-object v1, v3

    move-object v3, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 5915
    move-object v4, v2

    move-object v2, v3

    move v5, v6

    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5917
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  Device battery use since last full charge"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5918
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    Amount discharged (lower bound): "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5919
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 5920
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    Amount discharged (upper bound): "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5921
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 5922
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    Amount discharged while screen on: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5923
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 5924
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    Amount discharged while screen off: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5925
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 5926
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    Amount discharged while screen doze: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5927
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDozeSinceCharge()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 5928
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5931
    move-object/from16 v3, p7

    move-wide/from16 v129, v9

    const/4 v6, 0x1

    .end local v9    # "bluetoothScanTimeMs":J
    .local v129, "bluetoothScanTimeMs":J
    invoke-interface {v3, v0, v6}, Landroid/os/BatteryStats$BatteryStatsDumpHelper;->getBatteryUsageStats(Landroid/os/BatteryStats;Z)Landroid/os/BatteryUsageStats;

    move-result-object v9

    .line 5932
    .local v9, "stats":Landroid/os/BatteryUsageStats;
    invoke-virtual {v9, v1, v2}, Landroid/os/BatteryUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5934
    nop

    .line 5935
    invoke-virtual {v9}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/os/BatteryStats;->getUidMobileRadioStats(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 5936
    .local v10, "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    move-object/from16 v131, v9

    .end local v9    # "stats":Landroid/os/BatteryUsageStats;
    .local v131, "stats":Landroid/os/BatteryUsageStats;
    const-string v9, " ("

    move/from16 v132, v7

    .end local v7    # "numWifiRxBins":I
    .local v132, "numWifiRxBins":I
    const-string v7, ": "

    if-lez v6, :cond_3a

    .line 5937
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5938
    const-string v6, "  Per-app mobile ms per packet:"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5939
    const-wide/16 v133, 0x0

    .line 5940
    .local v133, "totalTime":J
    const/4 v6, 0x0

    move-wide/from16 v224, v133

    move-wide/from16 v133, v11

    move-wide/from16 v11, v224

    .local v6, "i":I
    .local v11, "totalTime":J
    .local v133, "rawRealtime":J
    :goto_2c
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-ge v6, v3, :cond_39

    .line 5941
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$UidMobileRadioStats;

    .line 5942
    .local v3, "mrs":Landroid/os/BatteryStats$UidMobileRadioStats;
    move/from16 v135, v6

    const/4 v6, 0x0

    .end local v6    # "i":I
    .local v135, "i":I
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5943
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5944
    const-string v6, "    Uid "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5945
    iget v6, v3, Landroid/os/BatteryStats$UidMobileRadioStats;->uid:I

    invoke-static {v4, v6}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 5946
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5947
    move-object/from16 v136, v7

    iget-wide v6, v3, Landroid/os/BatteryStats$UidMobileRadioStats;->millisecondsPerPacket:D

    invoke-static {v6, v7}, Landroid/os/BatteryStats;->formatValue(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5948
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5949
    iget-wide v6, v3, Landroid/os/BatteryStats$UidMobileRadioStats;->rxPackets:J

    move-wide/from16 v137, v6

    iget-wide v6, v3, Landroid/os/BatteryStats$UidMobileRadioStats;->txPackets:J

    add-long v6, v137, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5950
    const-string v6, " packets over "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5951
    iget-wide v6, v3, Landroid/os/BatteryStats$UidMobileRadioStats;->radioActiveMs:J

    invoke-static {v4, v6, v7}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 5952
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5953
    iget v6, v3, Landroid/os/BatteryStats$UidMobileRadioStats;->radioActiveCount:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5954
    move-object/from16 v7, v79

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5955
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5956
    iget-wide v6, v3, Landroid/os/BatteryStats$UidMobileRadioStats;->radioActiveMs:J

    add-long/2addr v11, v6

    .line 5940
    .end local v3    # "mrs":Landroid/os/BatteryStats$UidMobileRadioStats;
    add-int/lit8 v6, v135, 0x1

    move-object/from16 v3, p7

    move-object/from16 v7, v136

    .end local v135    # "i":I
    .restart local v6    # "i":I
    goto :goto_2c

    :cond_39
    move/from16 v135, v6

    move-object/from16 v136, v7

    .line 5958
    .end local v6    # "i":I
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5959
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5960
    const-string v3, "    TOTAL TIME: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5961
    invoke-static {v4, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5962
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5963
    invoke-virtual {v0, v11, v12, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5964
    move-object/from16 v7, v65

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5965
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5966
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    goto :goto_2d

    .line 5936
    .end local v133    # "rawRealtime":J
    .local v11, "rawRealtime":J
    :cond_3a
    move-object/from16 v136, v7

    move-wide/from16 v133, v11

    move-object/from16 v7, v65

    .line 5969
    .end local v11    # "rawRealtime":J
    .restart local v133    # "rawRealtime":J
    :goto_2d
    new-instance v3, Landroid/os/BatteryStats$1;

    invoke-direct {v3, v0}, Landroid/os/BatteryStats$1;-><init>(Landroid/os/BatteryStats;)V

    move-object v11, v3

    .line 5984
    .local v11, "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    const-string v12, " realtime"

    if-gez p5, :cond_45

    .line 5985
    nop

    .line 5986
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v65

    .line 5987
    .local v65, "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v65 .. v65}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_40

    .line 5988
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5990
    .local v3, "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-interface/range {v65 .. v65}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v135

    if-eqz v135, :cond_3c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v135

    check-cast v135, Ljava/util/Map$Entry;

    .line 5991
    .local v135, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v135 .. v135}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v137

    move-object/from16 v0, v137

    check-cast v0, Landroid/os/BatteryStats$Timer;

    .line 5992
    .local v0, "timer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v144, v6

    move-object/from16 v137, v7

    move-wide/from16 v6, v133

    .end local v133    # "rawRealtime":J
    .local v6, "rawRealtime":J
    invoke-static {v0, v6, v7, v5}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v142

    .line 5993
    .local v142, "totalTimeMillis":J
    cmp-long v133, v142, v46

    if-lez v133, :cond_3b

    .line 5994
    new-instance v138, Landroid/os/BatteryStats$TimerEntry;

    invoke-interface/range {v135 .. v135}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v133

    move-object/from16 v139, v133

    check-cast v139, Ljava/lang/String;

    const/16 v140, 0x0

    move-object/from16 v141, v0

    .end local v0    # "timer":Landroid/os/BatteryStats$Timer;
    .local v141, "timer":Landroid/os/BatteryStats$Timer;
    invoke-direct/range {v138 .. v143}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    move-object/from16 v0, v138

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 5993
    .end local v141    # "timer":Landroid/os/BatteryStats$Timer;
    .restart local v0    # "timer":Landroid/os/BatteryStats$Timer;
    :cond_3b
    move-object/from16 v141, v0

    .line 5996
    .end local v0    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v135    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v142    # "totalTimeMillis":J
    :goto_2f
    move-object/from16 v0, p0

    move-wide/from16 v133, v6

    move-object/from16 v7, v137

    move-object/from16 v6, v144

    goto :goto_2e

    .line 5997
    .end local v6    # "rawRealtime":J
    .restart local v133    # "rawRealtime":J
    :cond_3c
    move-object/from16 v137, v7

    move-wide/from16 v6, v133

    .end local v133    # "rawRealtime":J
    .restart local v6    # "rawRealtime":J
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3f

    .line 5998
    invoke-static {v3, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5999
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  All kernel wake locks:"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6000
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_30
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3e

    .line 6001
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$TimerEntry;

    .line 6002
    .local v1, "timer":Landroid/os/BatteryStats$TimerEntry;
    move-wide/from16 v133, v6

    .end local v6    # "rawRealtime":J
    .restart local v133    # "rawRealtime":J
    const-string v6, ": "

    .line 6003
    .local v6, "linePrefix":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6004
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6005
    const-string v7, "  Kernel Wake lock "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6006
    iget-object v7, v1, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6007
    move-object v7, v1

    .end local v1    # "timer":Landroid/os/BatteryStats$TimerEntry;
    .local v7, "timer":Landroid/os/BatteryStats$TimerEntry;
    iget-object v1, v7, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    move/from16 v135, v0

    move-object v0, v4

    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .local v0, "sb":Ljava/lang/StringBuilder;
    .local v135, "i":I
    const/4 v4, 0x0

    move-object/from16 v138, v7

    move-object/from16 v7, p2

    move-object/from16 v224, v10

    move-object v10, v2

    move-wide/from16 v225, v133

    move-object/from16 v134, v3

    move-object/from16 v133, v224

    move-wide/from16 v2, v225

    .end local v3    # "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .end local v7    # "timer":Landroid/os/BatteryStats$TimerEntry;
    .end local v10    # "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    .local v2, "rawRealtime":J
    .local v133, "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    .local v134, "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v138, "timer":Landroid/os/BatteryStats$TimerEntry;
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6009
    .end local v6    # "linePrefix":Ljava/lang/String;
    .local v1, "linePrefix":Ljava/lang/String;
    move-object/from16 v4, v136

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 6010
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6012
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6000
    .end local v1    # "linePrefix":Ljava/lang/String;
    .end local v138    # "timer":Landroid/os/BatteryStats$TimerEntry;
    :cond_3d
    add-int/lit8 v1, v135, 0x1

    move/from16 v5, p4

    move-object/from16 v136, v4

    move-object v4, v0

    move v0, v1

    move-object v1, v7

    move-wide v6, v2

    move-object v2, v10

    move-object/from16 v10, v133

    move-object/from16 v3, v134

    .end local v135    # "i":I
    .local v1, "i":I
    goto :goto_30

    .end local v1    # "i":I
    .end local v2    # "rawRealtime":J
    .end local v133    # "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    .end local v134    # "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v0, "i":I
    .restart local v3    # "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    .local v6, "rawRealtime":J
    .restart local v10    # "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    :cond_3e
    move/from16 v135, v0

    move-object/from16 v134, v3

    move-object v0, v4

    move-object/from16 v133, v10

    move-object/from16 v4, v136

    move-object v10, v2

    move-wide v2, v6

    move-object/from16 v7, p2

    .line 6015
    .end local v3    # "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "rawRealtime":J
    .end local v10    # "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    .local v0, "sb":Ljava/lang/StringBuilder;
    .restart local v2    # "rawRealtime":J
    .restart local v133    # "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    .restart local v134    # "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-virtual {v7}, Ljava/io/PrintWriter;->println()V

    goto :goto_31

    .line 5997
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "rawRealtime":J
    .end local v133    # "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    .end local v134    # "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .restart local v3    # "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v6    # "rawRealtime":J
    .restart local v10    # "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    :cond_3f
    move-object/from16 v134, v3

    move-object v0, v4

    move-object/from16 v133, v10

    move-object/from16 v4, v136

    move-object v10, v2

    move-wide v2, v6

    move-object v7, v1

    .end local v3    # "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "rawRealtime":J
    .end local v10    # "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    .restart local v2    # "rawRealtime":J
    .restart local v133    # "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    .restart local v134    # "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    goto :goto_31

    .line 5987
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "rawRealtime":J
    .end local v134    # "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v10    # "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    .local v133, "rawRealtime":J
    :cond_40
    move-object v0, v10

    move-object v10, v2

    move-wide/from16 v2, v133

    move-object/from16 v133, v0

    move-object v0, v4

    move-object/from16 v137, v7

    move-object/from16 v4, v136

    move-object v7, v1

    .line 6019
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v10    # "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    .restart local v2    # "rawRealtime":J
    .local v133, "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    :goto_31
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_42

    .line 6020
    move-object/from16 v1, v16

    .end local v16    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v1, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-static {v1, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 6021
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  All partial wake locks:"

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6022
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_32
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_41

    .line 6023
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$TimerEntry;

    .line 6024
    .local v6, "timer":Landroid/os/BatteryStats$TimerEntry;
    move-object/from16 v16, v1

    const/4 v1, 0x0

    .end local v1    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .restart local v16    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6025
    const-string v1, "  Wake lock "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6026
    iget v1, v6, Landroid/os/BatteryStats$TimerEntry;->mId:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 6027
    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6028
    iget-object v1, v6, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6029
    iget-object v1, v6, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    move-object/from16 v136, v4

    const/4 v4, 0x0

    move-object/from16 v134, v6

    .end local v6    # "timer":Landroid/os/BatteryStats$TimerEntry;
    .local v134, "timer":Landroid/os/BatteryStats$TimerEntry;
    const-string v6, ": "

    move-object/from16 v135, v96

    move/from16 v96, v5

    move/from16 v5, p4

    .end local v5    # "i":I
    .restart local v96    # "i":I
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 6030
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6031
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6022
    .end local v134    # "timer":Landroid/os/BatteryStats$TimerEntry;
    add-int/lit8 v1, v96, 0x1

    move v5, v1

    move-object/from16 v1, v16

    move-object/from16 v96, v135

    move-object/from16 v4, v136

    .end local v96    # "i":I
    .local v1, "i":I
    goto :goto_32

    .end local v16    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v1, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .restart local v5    # "i":I
    :cond_41
    move-object/from16 v16, v1

    move-object/from16 v136, v4

    move-object/from16 v135, v96

    move/from16 v96, v5

    move/from16 v5, p4

    .line 6033
    .end local v1    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .end local v5    # "i":I
    .restart local v16    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 6034
    invoke-virtual {v7}, Ljava/io/PrintWriter;->println()V

    goto :goto_33

    .line 6019
    :cond_42
    move/from16 v5, p4

    move-object/from16 v136, v4

    move-object/from16 v135, v96

    .line 6037
    :goto_33
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v96

    .line 6038
    .local v96, "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v96 .. v96}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_46

    .line 6039
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  All wakeup reasons:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6040
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6041
    .local v1, "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-interface/range {v96 .. v96}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_43

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 6042
    .local v6, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v134

    move-wide/from16 v144, v2

    .end local v2    # "rawRealtime":J
    .local v144, "rawRealtime":J
    move-object/from16 v2, v134

    check-cast v2, Landroid/os/BatteryStats$Timer;

    .line 6043
    .local v2, "timer":Landroid/os/BatteryStats$Timer;
    new-instance v138, Landroid/os/BatteryStats$TimerEntry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v139, v3

    check-cast v139, Ljava/lang/String;

    .line 6044
    invoke-virtual {v2, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v3

    move-object/from16 v141, v2

    .end local v2    # "timer":Landroid/os/BatteryStats$Timer;
    .restart local v141    # "timer":Landroid/os/BatteryStats$Timer;
    int-to-long v2, v3

    const/16 v140, 0x0

    move-wide/from16 v142, v2

    invoke-direct/range {v138 .. v143}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    .line 6043
    move-object/from16 v2, v138

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6045
    .end local v6    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v141    # "timer":Landroid/os/BatteryStats$Timer;
    move-wide/from16 v2, v144

    goto :goto_34

    .line 6046
    .end local v144    # "rawRealtime":J
    .local v2, "rawRealtime":J
    :cond_43
    move-wide/from16 v144, v2

    .end local v2    # "rawRealtime":J
    .restart local v144    # "rawRealtime":J
    invoke-static {v1, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 6047
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_35
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_44

    .line 6048
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$TimerEntry;

    .line 6049
    .local v3, "timer":Landroid/os/BatteryStats$TimerEntry;
    const-string v134, ": "

    .line 6050
    .local v134, "linePrefix":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6051
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6052
    const-string v4, "  Wakeup reason "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6053
    iget-object v4, v3, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6054
    move-object v4, v1

    .end local v1    # "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v4, "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    iget-object v1, v3, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    move-object v6, v4

    .end local v4    # "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v6, "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    const/4 v4, 0x0

    move-object/from16 v138, v6

    .end local v6    # "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v138, "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    const-string v6, ": "

    move/from16 v139, v2

    move-object/from16 v140, v3

    move-wide/from16 v2, v144

    .end local v3    # "timer":Landroid/os/BatteryStats$TimerEntry;
    .end local v144    # "rawRealtime":J
    .local v2, "rawRealtime":J
    .local v139, "i":I
    .local v140, "timer":Landroid/os/BatteryStats$TimerEntry;
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 6055
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6056
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6047
    .end local v134    # "linePrefix":Ljava/lang/String;
    .end local v140    # "timer":Landroid/os/BatteryStats$TimerEntry;
    add-int/lit8 v1, v139, 0x1

    move v2, v1

    move-object/from16 v1, v138

    .end local v139    # "i":I
    .local v1, "i":I
    goto :goto_35

    .end local v138    # "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v1, "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v2, "i":I
    .restart local v144    # "rawRealtime":J
    :cond_44
    move-object/from16 v138, v1

    move/from16 v139, v2

    move-wide/from16 v2, v144

    .line 6058
    .end local v1    # "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .end local v144    # "rawRealtime":J
    .local v2, "rawRealtime":J
    .restart local v138    # "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-virtual {v7}, Ljava/io/PrintWriter;->println()V

    goto :goto_36

    .line 5984
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "rawRealtime":J
    .end local v65    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v96    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v138    # "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v4, "sb":Ljava/lang/StringBuilder;
    .restart local v10    # "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    .local v133, "rawRealtime":J
    :cond_45
    move-object v0, v10

    move-object v10, v2

    move-wide/from16 v2, v133

    move-object/from16 v133, v0

    move-object v0, v4

    move-object/from16 v137, v7

    move-object/from16 v135, v96

    move-object v7, v1

    .line 6062
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v10    # "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    .restart local v2    # "rawRealtime":J
    .local v133, "uidMobileRadioStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryStats$UidMobileRadioStats;>;"
    :cond_46
    :goto_36
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelMemoryStats()Landroid/util/LongSparseArray;

    move-result-object v1

    .line 6063
    .local v1, "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-lez v4, :cond_48

    .line 6064
    const-string v4, "  Memory Stats"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6065
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_37
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_47

    .line 6066
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6067
    const-string v6, "  Bandwidth "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6068
    move-object/from16 v65, v11

    .end local v11    # "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    .local v65, "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-virtual {v1, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6069
    const-string v6, " Time "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6070
    invoke-virtual {v1, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v6, v2, v3, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6071
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6065
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v10, p3

    move-object/from16 v11, v65

    goto :goto_37

    .end local v65    # "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    .restart local v11    # "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    :cond_47
    move-object/from16 v65, v11

    .line 6073
    .end local v4    # "i":I
    .end local v11    # "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    .restart local v65    # "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-virtual {v7}, Ljava/io/PrintWriter;->println()V

    goto :goto_38

    .line 6063
    .end local v65    # "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    .restart local v11    # "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    :cond_48
    move-object/from16 v65, v11

    .line 6076
    .end local v11    # "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    .restart local v65    # "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    :goto_38
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getRpmStats()Ljava/util/Map;

    move-result-object v10

    .line 6077
    .local v10, "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_4b

    .line 6078
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  Resource Power Manager Stats"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6079
    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_4a

    .line 6080
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_39
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v96, v4

    check-cast v96, Ljava/util/Map$Entry;

    .line 6081
    .local v96, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v96 .. v96}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6082
    .local v4, "timerName":Ljava/lang/String;
    invoke-interface/range {v96 .. v96}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Timer;

    .line 6083
    .local v6, "timer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v134, v137

    move-object/from16 v137, v12

    move-object/from16 v12, v134

    move-object/from16 v134, v1

    move-object/from16 v146, v135

    move-object v1, v0

    move-object v0, v7

    move-object/from16 v135, v10

    move-object v7, v4

    move-wide v3, v2

    move-object v2, v6

    move-object/from16 v6, p3

    move-wide/from16 v224, v14

    move-object/from16 v14, p0

    move-object/from16 v15, v79

    move-object/from16 v79, v11

    move-wide/from16 v10, v224

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "timerName":Ljava/lang/String;
    .end local v6    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v14    # "whichBatteryRealtime":J
    .local v1, "sb":Ljava/lang/StringBuilder;
    .local v2, "timer":Landroid/os/BatteryStats$Timer;
    .local v3, "rawRealtime":J
    .local v7, "timerName":Ljava/lang/String;
    .local v10, "whichBatteryRealtime":J
    .local v134, "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .local v135, "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-static/range {v0 .. v7}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    .line 6084
    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    move-wide v2, v3

    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "rawRealtime":J
    .end local v7    # "timerName":Ljava/lang/String;
    .end local v96    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    .local v2, "rawRealtime":J
    move-object/from16 v7, v79

    move-object/from16 v79, v15

    move-wide v14, v10

    move-object v11, v7

    move-object/from16 v7, v137

    move-object/from16 v137, v12

    move-object v12, v7

    move-object v7, v1

    move-object/from16 v1, v134

    move-object/from16 v10, v135

    move-object/from16 v135, v146

    goto :goto_39

    .line 6080
    .end local v134    # "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .end local v135    # "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v1, "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .local v10, "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v14    # "whichBatteryRealtime":J
    :cond_49
    move-object/from16 v11, v137

    move-object/from16 v137, v12

    move-object v12, v11

    move-object/from16 v134, v1

    move-object v1, v7

    move-object/from16 v146, v135

    move-object/from16 v135, v10

    move-wide v10, v14

    move-object/from16 v15, v79

    move-object/from16 v14, p0

    .end local v1    # "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .end local v14    # "whichBatteryRealtime":J
    .local v10, "whichBatteryRealtime":J
    .restart local v134    # "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .restart local v135    # "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    goto :goto_3a

    .line 6079
    .end local v134    # "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .end local v135    # "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v1    # "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .local v10, "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v14    # "whichBatteryRealtime":J
    :cond_4a
    move-object/from16 v11, v137

    move-object/from16 v137, v12

    move-object v12, v11

    move-object/from16 v134, v1

    move-object v1, v7

    move-object/from16 v146, v135

    move-object/from16 v135, v10

    move-wide v10, v14

    move-object/from16 v15, v79

    move-object/from16 v14, p0

    .line 6086
    .end local v1    # "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .end local v14    # "whichBatteryRealtime":J
    .local v10, "whichBatteryRealtime":J
    .restart local v134    # "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .restart local v135    # "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :goto_3a
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    goto :goto_3b

    .line 6077
    .end local v134    # "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .end local v135    # "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v1    # "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .local v10, "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v14    # "whichBatteryRealtime":J
    :cond_4b
    move-object/from16 v11, v137

    move-object/from16 v137, v12

    move-object v12, v11

    move-object/from16 v134, v1

    move-object v1, v7

    move-object/from16 v146, v135

    move-object/from16 v135, v10

    move-wide v10, v14

    move-object/from16 v15, v79

    move-object/from16 v14, p0

    .line 6104
    .end local v1    # "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .end local v14    # "whichBatteryRealtime":J
    .local v10, "whichBatteryRealtime":J
    .restart local v134    # "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    .restart local v135    # "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :goto_3b
    invoke-virtual {v14}, Landroid/os/BatteryStats;->getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v4

    .line 6105
    .local v4, "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    if-eqz v4, :cond_4e

    .line 6106
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6107
    const-string v6, "  CPU scaling: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6108
    invoke-virtual {v4}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v6

    move-object/from16 v79, v12

    array-length v12, v6

    move-object/from16 v96, v6

    const/4 v6, 0x0

    :goto_3c
    if-ge v6, v12, :cond_4d

    move/from16 v138, v6

    aget v6, v96, v138

    .line 6109
    .local v6, "policy":I
    move/from16 v139, v12

    const-string v12, " policy"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v140, v9

    const/16 v9, 0x3a

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6110
    invoke-virtual {v4, v6}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v9

    array-length v12, v9

    move-object/from16 v141, v4

    const/4 v4, 0x0

    .end local v4    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .local v141, "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    :goto_3d
    if-ge v4, v12, :cond_4c

    move/from16 v142, v4

    aget v4, v9, v142

    .line 6111
    .local v4, "frequency":I
    move/from16 v143, v6

    .end local v6    # "policy":I
    .local v143, "policy":I
    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6110
    .end local v4    # "frequency":I
    add-int/lit8 v4, v142, 0x1

    move/from16 v6, v143

    goto :goto_3d

    .end local v143    # "policy":I
    .restart local v6    # "policy":I
    :cond_4c
    move/from16 v143, v6

    .line 6108
    .end local v6    # "policy":I
    add-int/lit8 v6, v138, 0x1

    move/from16 v12, v139

    move-object/from16 v9, v140

    move-object/from16 v4, v141

    goto :goto_3c

    .line 6115
    .end local v141    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .local v4, "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    :cond_4d
    move-object/from16 v141, v4

    move-object/from16 v140, v9

    .end local v4    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .restart local v141    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6116
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    goto :goto_3e

    .line 6105
    .end local v141    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .restart local v4    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    :cond_4e
    move-object/from16 v141, v4

    move-object/from16 v140, v9

    move-object/from16 v79, v12

    .line 6119
    .end local v4    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    .restart local v141    # "scalingPolicies":Lcom/android/internal/os/CpuScalingPolicies;
    :goto_3e
    const/4 v4, 0x0

    move v9, v4

    .local v9, "iu":I
    :goto_3f
    move/from16 v12, v95

    .end local v95    # "NU":I
    .local v12, "NU":I
    if-ge v9, v12, :cond_cb

    .line 6120
    move-object/from16 v4, v94

    .end local v94    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v4, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 6121
    .local v6, "uid":I
    if-ltz p5, :cond_4f

    move/from16 v95, v12

    move/from16 v12, p5

    .end local v12    # "NU":I
    .restart local v95    # "NU":I
    if-eq v6, v12, :cond_50

    const/16 v12, 0x3e8

    if-eq v6, v12, :cond_50

    .line 6122
    move-object/from16 v6, p3

    move-wide/from16 v209, v2

    move-object/from16 v94, v4

    move-object/from16 v163, v8

    move/from16 v145, v9

    move-wide/from16 v138, v10

    move-object/from16 v66, v13

    move-object/from16 v184, v15

    move-object/from16 v175, v79

    move-wide/from16 v182, v123

    move-wide/from16 v13, v125

    move-wide/from16 v206, v127

    move-object/from16 v9, v136

    move-object/from16 v215, v146

    const/16 v50, 0x1

    const/16 v152, 0x5

    move-object v2, v1

    move v11, v5

    goto/16 :goto_94

    .line 6121
    .end local v95    # "NU":I
    .restart local v12    # "NU":I
    :cond_4f
    move/from16 v95, v12

    .line 6125
    .end local v12    # "NU":I
    .restart local v95    # "NU":I
    :cond_50
    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/BatteryStats$Uid;

    .line 6127
    .local v12, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6128
    move-object/from16 v94, v4

    .end local v4    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v94    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    const-string v4, "  "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6129
    invoke-static {v1, v6}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 6130
    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6131
    const/16 v96, 0x0

    .line 6133
    .local v96, "uidActivity":Z
    move-wide/from16 v138, v10

    const/4 v4, 0x0

    move v11, v9

    .end local v9    # "iu":I
    .end local v10    # "whichBatteryRealtime":J
    .local v11, "iu":I
    .local v138, "whichBatteryRealtime":J
    invoke-virtual {v12, v4, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v9

    .line 6134
    .local v9, "mobileRxBytes":J
    move/from16 v142, v6

    const/4 v4, 0x1

    .end local v6    # "uid":I
    .local v142, "uid":I
    invoke-virtual {v12, v4, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v6

    .line 6135
    .local v6, "mobileTxBytes":J
    move-wide/from16 v143, v6

    const/4 v4, 0x2

    .end local v6    # "mobileTxBytes":J
    .local v143, "mobileTxBytes":J
    invoke-virtual {v12, v4, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v6

    .line 6136
    .local v6, "wifiRxBytes":J
    const/4 v4, 0x3

    move-wide/from16 v147, v6

    .end local v6    # "wifiRxBytes":J
    .local v147, "wifiRxBytes":J
    invoke-virtual {v12, v4, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v6

    .line 6137
    .local v6, "wifiTxBytes":J
    const/4 v4, 0x4

    move-wide/from16 v149, v6

    .end local v6    # "wifiTxBytes":J
    .local v149, "wifiTxBytes":J
    invoke-virtual {v12, v4, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v6

    .line 6138
    .local v6, "btRxBytes":J
    move-wide/from16 v151, v6

    const/4 v4, 0x5

    .end local v6    # "btRxBytes":J
    .local v151, "btRxBytes":J
    invoke-virtual {v12, v4, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v6

    .line 6140
    .local v6, "btTxBytes":J
    move-wide/from16 v153, v6

    const/4 v4, 0x0

    .end local v6    # "btTxBytes":J
    .local v153, "btTxBytes":J
    invoke-virtual {v12, v4, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v6

    .line 6141
    .local v6, "mobileRxPackets":J
    move-wide/from16 v155, v6

    const/4 v4, 0x1

    .end local v6    # "mobileRxPackets":J
    .local v155, "mobileRxPackets":J
    invoke-virtual {v12, v4, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v6

    .line 6142
    .local v6, "mobileTxPackets":J
    move-wide/from16 v157, v6

    const/4 v4, 0x2

    .end local v6    # "mobileTxPackets":J
    .local v157, "mobileTxPackets":J
    invoke-virtual {v12, v4, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v6

    .line 6143
    .local v6, "wifiRxPackets":J
    const/4 v4, 0x3

    move-wide/from16 v159, v6

    .end local v6    # "wifiRxPackets":J
    .local v159, "wifiRxPackets":J
    invoke-virtual {v12, v4, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v6

    .line 6145
    .local v6, "wifiTxPackets":J
    move-wide/from16 v161, v6

    .end local v6    # "wifiTxPackets":J
    .local v161, "wifiTxPackets":J
    invoke-virtual {v12, v5}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v6

    .line 6146
    .local v6, "uidMobileActiveTime":J
    invoke-virtual {v12, v5}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v4

    .line 6148
    .local v4, "uidMobileActiveCount":I
    move-wide/from16 v163, v6

    .end local v6    # "uidMobileActiveTime":J
    .local v163, "uidMobileActiveTime":J
    invoke-virtual {v12, v2, v3, v5}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v6

    .line 6149
    .local v6, "fullWifiLockOnTime":J
    move-wide/from16 v165, v6

    .end local v6    # "fullWifiLockOnTime":J
    .local v165, "fullWifiLockOnTime":J
    invoke-virtual {v12, v2, v3, v5}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v6

    .line 6150
    .local v6, "wifiScanTime":J
    move/from16 v145, v11

    .end local v11    # "iu":I
    .local v145, "iu":I
    invoke-virtual {v12, v5}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v11

    .line 6151
    .local v11, "wifiScanCount":I
    move-wide/from16 v167, v6

    .end local v6    # "wifiScanTime":J
    .local v167, "wifiScanTime":J
    invoke-virtual {v12, v5}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundCount(I)I

    move-result v7

    .line 6153
    .local v7, "wifiScanCountBg":I
    move/from16 v169, v7

    .end local v7    # "wifiScanCountBg":I
    .local v169, "wifiScanCountBg":I
    invoke-virtual {v12, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiScanActualTime(J)J

    move-result-wide v6

    .line 6154
    .local v6, "wifiScanActualTime":J
    move-wide/from16 v170, v6

    .end local v6    # "wifiScanActualTime":J
    .local v170, "wifiScanActualTime":J
    invoke-virtual {v12, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundTime(J)J

    move-result-wide v6

    .line 6155
    .local v6, "wifiScanActualTimeBg":J
    move-wide/from16 v172, v6

    .end local v6    # "wifiScanActualTimeBg":J
    .local v172, "wifiScanActualTimeBg":J
    invoke-virtual {v12, v2, v3, v5}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v6

    .line 6157
    .local v6, "uidWifiRunningTime":J
    move-wide/from16 v174, v2

    .end local v2    # "rawRealtime":J
    .local v174, "rawRealtime":J
    invoke-virtual {v12, v5}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v2

    .line 6158
    .local v2, "mobileWakeup":J
    move-wide/from16 v176, v6

    .end local v6    # "uidWifiRunningTime":J
    .local v176, "uidWifiRunningTime":J
    invoke-virtual {v12, v5}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    move-result-wide v6

    .line 6160
    .local v6, "wifiWakeup":J
    cmp-long v178, v9, v46

    if-gtz v178, :cond_52

    cmp-long v178, v143, v46

    if-gtz v178, :cond_52

    cmp-long v178, v155, v46

    if-gtz v178, :cond_52

    cmp-long v178, v157, v46

    if-lez v178, :cond_51

    goto :goto_40

    :cond_51
    move-wide/from16 v178, v6

    move-wide/from16 v5, v157

    goto :goto_41

    .line 6162
    :cond_52
    :goto_40
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "    Mobile network: "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6163
    invoke-virtual {v14, v9, v10}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " received, "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6164
    move-wide/from16 v178, v6

    move-wide/from16 v5, v143

    .end local v6    # "wifiWakeup":J
    .end local v143    # "mobileTxBytes":J
    .local v5, "mobileTxBytes":J
    .local v178, "wifiWakeup":J
    invoke-virtual {v14, v5, v6}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6165
    const-string v7, " sent (packets "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v5, v155

    .end local v155    # "mobileRxPackets":J
    .local v5, "mobileRxPackets":J
    .restart local v143    # "mobileTxBytes":J
    invoke-virtual {v1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 6166
    const-string v7, " received, "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v5, v157

    .end local v157    # "mobileTxPackets":J
    .local v5, "mobileTxPackets":J
    .restart local v155    # "mobileRxPackets":J
    invoke-virtual {v1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    const-string v7, " sent)"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6168
    :goto_41
    cmp-long v7, v163, v46

    if-gtz v7, :cond_54

    if-lez v4, :cond_53

    goto :goto_42

    :cond_53
    move-object/from16 v7, p3

    move-wide/from16 v157, v5

    move-wide/from16 v182, v123

    move-wide/from16 v180, v163

    move-wide/from16 v123, v9

    move-object/from16 v163, v12

    move v12, v4

    goto :goto_44

    .line 6169
    :cond_54
    :goto_42
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6170
    move-object/from16 v7, p3

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v157, v5

    .end local v5    # "mobileTxPackets":J
    .restart local v157    # "mobileTxPackets":J
    const-string v5, "    Mobile radio active: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6171
    div-long v5, v163, v19

    invoke-static {v0, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6172
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6173
    move-wide/from16 v5, v123

    move-wide/from16 v123, v9

    move-wide/from16 v9, v163

    move-object/from16 v163, v12

    .end local v12    # "u":Landroid/os/BatteryStats$Uid;
    .local v5, "mobileActiveTime":J
    .local v9, "uidMobileActiveTime":J
    .local v123, "mobileRxBytes":J
    .local v163, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual {v14, v9, v10, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6174
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6175
    add-long v180, v155, v157

    .line 6176
    .local v180, "packets":J
    cmp-long v12, v180, v46

    if-nez v12, :cond_55

    .line 6177
    const-wide/16 v180, 0x1

    move v12, v4

    move-wide/from16 v182, v5

    move-wide/from16 v4, v180

    goto :goto_43

    .line 6176
    :cond_55
    move v12, v4

    move-wide/from16 v182, v5

    move-wide/from16 v4, v180

    .line 6179
    .end local v5    # "mobileActiveTime":J
    .end local v180    # "packets":J
    .local v4, "packets":J
    .local v12, "uidMobileActiveCount":I
    .local v182, "mobileActiveTime":J
    :goto_43
    const-string v6, " @ "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6180
    move-wide/from16 v180, v9

    .end local v9    # "uidMobileActiveTime":J
    .local v180, "uidMobileActiveTime":J
    div-long v9, v180, v19

    long-to-double v9, v9

    move-wide/from16 v184, v9

    long-to-double v9, v4

    div-double v9, v184, v9

    invoke-static {v9, v10}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6181
    const-string v6, " mspp"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6185
    .end local v4    # "packets":J
    :goto_44
    cmp-long v4, v2, v46

    if-lez v4, :cond_56

    .line 6186
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6187
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6188
    const-string v4, "    Mobile radio AP wakeups: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6189
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6193
    :cond_56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6194
    invoke-virtual/range {v163 .. v163}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    .line 6193
    move-wide v9, v2

    move-object v3, v4

    .end local v2    # "mobileWakeup":J
    .local v9, "mobileWakeup":J
    const-string v4, "Cellular"

    move/from16 v6, p4

    move-object v2, v0

    move/from16 v66, v11

    move-object v0, v14

    move-wide/from16 v186, v151

    move-wide/from16 v188, v153

    move-wide/from16 v190, v165

    move-wide/from16 v192, v167

    move-wide/from16 v194, v170

    move-wide/from16 v196, v172

    move-wide/from16 v198, v176

    move-wide/from16 v200, v178

    const/16 v152, 0x5

    move-wide/from16 v224, v147

    move-object/from16 v148, v8

    move-object/from16 v147, v15

    move-wide/from16 v14, v224

    move-wide/from16 v7, v161

    move-wide/from16 v224, v149

    move/from16 v149, v12

    move-wide/from16 v150, v9

    move-wide/from16 v9, v224

    move-wide/from16 v11, v159

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v12    # "uidMobileActiveCount":I
    .end local v147    # "wifiRxBytes":J
    .end local v151    # "btRxBytes":J
    .end local v153    # "btTxBytes":J
    .end local v159    # "wifiRxPackets":J
    .end local v161    # "wifiTxPackets":J
    .end local v165    # "fullWifiLockOnTime":J
    .end local v167    # "wifiScanTime":J
    .end local v170    # "wifiScanActualTime":J
    .end local v172    # "wifiScanActualTimeBg":J
    .end local v176    # "uidWifiRunningTime":J
    .end local v178    # "wifiWakeup":J
    .local v2, "sb":Ljava/lang/StringBuilder;
    .local v7, "wifiTxPackets":J
    .local v9, "wifiTxBytes":J
    .local v11, "wifiRxPackets":J
    .local v14, "wifiRxBytes":J
    .local v66, "wifiScanCount":I
    .local v149, "uidMobileActiveCount":I
    .local v150, "mobileWakeup":J
    .local v186, "btRxBytes":J
    .local v188, "btTxBytes":J
    .local v190, "fullWifiLockOnTime":J
    .local v192, "wifiScanTime":J
    .local v194, "wifiScanActualTime":J
    .local v196, "wifiScanActualTimeBg":J
    .local v198, "uidWifiRunningTime":J
    .local v200, "wifiWakeup":J
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 6196
    cmp-long v3, v14, v46

    if-gtz v3, :cond_57

    cmp-long v3, v9, v46

    if-gtz v3, :cond_57

    cmp-long v3, v11, v46

    if-gtz v3, :cond_57

    cmp-long v3, v7, v46

    if-lez v3, :cond_58

    .line 6197
    :cond_57
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    Wi-Fi network: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6198
    invoke-virtual {v0, v14, v15}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " received, "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6199
    invoke-virtual {v0, v9, v10}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6200
    const-string v3, " sent (packets "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11, v12}, Ljava/io/PrintWriter;->print(J)V

    .line 6201
    const-string v3, " received, "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    const-string v3, " sent)"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6204
    :cond_58
    move-wide/from16 v3, v190

    .end local v190    # "fullWifiLockOnTime":J
    .local v3, "fullWifiLockOnTime":J
    cmp-long v5, v3, v46

    if-nez v5, :cond_5d

    move-wide/from16 v5, v192

    .end local v192    # "wifiScanTime":J
    .local v5, "wifiScanTime":J
    cmp-long v153, v5, v46

    if-nez v153, :cond_5c

    if-nez v66, :cond_5c

    if-nez v169, :cond_5c

    move-wide/from16 v161, v7

    move-wide/from16 v153, v9

    move-wide/from16 v8, v194

    .end local v7    # "wifiTxPackets":J
    .end local v9    # "wifiTxBytes":J
    .end local v194    # "wifiScanActualTime":J
    .local v8, "wifiScanActualTime":J
    .local v153, "wifiTxBytes":J
    .restart local v161    # "wifiTxPackets":J
    cmp-long v7, v8, v46

    if-nez v7, :cond_5b

    move-wide/from16 v159, v11

    move-wide/from16 v10, v196

    .end local v11    # "wifiRxPackets":J
    .end local v196    # "wifiScanActualTimeBg":J
    .local v10, "wifiScanActualTimeBg":J
    .restart local v159    # "wifiRxPackets":J
    cmp-long v7, v10, v46

    if-nez v7, :cond_5a

    move-wide/from16 v164, v14

    move-wide/from16 v14, v198

    .end local v198    # "uidWifiRunningTime":J
    .local v14, "uidWifiRunningTime":J
    .local v164, "wifiRxBytes":J
    cmp-long v7, v14, v46

    if-eqz v7, :cond_59

    goto :goto_45

    :cond_59
    move-object/from16 v7, p3

    move-wide/from16 v190, v3

    move-wide/from16 v167, v5

    move-wide/from16 v170, v8

    move-wide v5, v10

    move-wide/from16 v176, v14

    move/from16 v14, v66

    move-wide/from16 v11, v138

    move-object/from16 v15, v147

    move-object/from16 v10, v148

    move/from16 v8, v169

    move-wide/from16 v3, v174

    move-object v9, v1

    goto/16 :goto_46

    .end local v164    # "wifiRxBytes":J
    .local v14, "wifiRxBytes":J
    .restart local v198    # "uidWifiRunningTime":J
    :cond_5a
    move-wide/from16 v164, v14

    move-wide/from16 v14, v198

    .end local v198    # "uidWifiRunningTime":J
    .local v14, "uidWifiRunningTime":J
    .restart local v164    # "wifiRxBytes":J
    goto :goto_45

    .end local v10    # "wifiScanActualTimeBg":J
    .end local v159    # "wifiRxPackets":J
    .end local v164    # "wifiRxBytes":J
    .restart local v11    # "wifiRxPackets":J
    .local v14, "wifiRxBytes":J
    .restart local v196    # "wifiScanActualTimeBg":J
    .restart local v198    # "uidWifiRunningTime":J
    :cond_5b
    move-wide/from16 v159, v11

    move-wide/from16 v164, v14

    move-wide/from16 v10, v196

    move-wide/from16 v14, v198

    .end local v11    # "wifiRxPackets":J
    .end local v196    # "wifiScanActualTimeBg":J
    .end local v198    # "uidWifiRunningTime":J
    .restart local v10    # "wifiScanActualTimeBg":J
    .local v14, "uidWifiRunningTime":J
    .restart local v159    # "wifiRxPackets":J
    .restart local v164    # "wifiRxBytes":J
    goto :goto_45

    .end local v8    # "wifiScanActualTime":J
    .end local v10    # "wifiScanActualTimeBg":J
    .end local v153    # "wifiTxBytes":J
    .end local v159    # "wifiRxPackets":J
    .end local v161    # "wifiTxPackets":J
    .end local v164    # "wifiRxBytes":J
    .restart local v7    # "wifiTxPackets":J
    .restart local v9    # "wifiTxBytes":J
    .restart local v11    # "wifiRxPackets":J
    .local v14, "wifiRxBytes":J
    .restart local v194    # "wifiScanActualTime":J
    .restart local v196    # "wifiScanActualTimeBg":J
    .restart local v198    # "uidWifiRunningTime":J
    :cond_5c
    move-wide/from16 v161, v7

    move-wide/from16 v153, v9

    move-wide/from16 v159, v11

    move-wide/from16 v164, v14

    move-wide/from16 v8, v194

    move-wide/from16 v10, v196

    move-wide/from16 v14, v198

    .end local v7    # "wifiTxPackets":J
    .end local v9    # "wifiTxBytes":J
    .end local v11    # "wifiRxPackets":J
    .end local v194    # "wifiScanActualTime":J
    .end local v196    # "wifiScanActualTimeBg":J
    .end local v198    # "uidWifiRunningTime":J
    .restart local v8    # "wifiScanActualTime":J
    .restart local v10    # "wifiScanActualTimeBg":J
    .local v14, "uidWifiRunningTime":J
    .restart local v153    # "wifiTxBytes":J
    .restart local v159    # "wifiRxPackets":J
    .restart local v161    # "wifiTxPackets":J
    .restart local v164    # "wifiRxBytes":J
    goto :goto_45

    .end local v5    # "wifiScanTime":J
    .end local v8    # "wifiScanActualTime":J
    .end local v10    # "wifiScanActualTimeBg":J
    .end local v153    # "wifiTxBytes":J
    .end local v159    # "wifiRxPackets":J
    .end local v161    # "wifiTxPackets":J
    .end local v164    # "wifiRxBytes":J
    .restart local v7    # "wifiTxPackets":J
    .restart local v9    # "wifiTxBytes":J
    .restart local v11    # "wifiRxPackets":J
    .local v14, "wifiRxBytes":J
    .restart local v192    # "wifiScanTime":J
    .restart local v194    # "wifiScanActualTime":J
    .restart local v196    # "wifiScanActualTimeBg":J
    .restart local v198    # "uidWifiRunningTime":J
    :cond_5d
    move-wide/from16 v161, v7

    move-wide/from16 v153, v9

    move-wide/from16 v159, v11

    move-wide/from16 v164, v14

    move-wide/from16 v5, v192

    move-wide/from16 v8, v194

    move-wide/from16 v10, v196

    move-wide/from16 v14, v198

    .line 6207
    .end local v7    # "wifiTxPackets":J
    .end local v9    # "wifiTxBytes":J
    .end local v11    # "wifiRxPackets":J
    .end local v192    # "wifiScanTime":J
    .end local v194    # "wifiScanActualTime":J
    .end local v196    # "wifiScanActualTimeBg":J
    .end local v198    # "uidWifiRunningTime":J
    .restart local v5    # "wifiScanTime":J
    .restart local v8    # "wifiScanActualTime":J
    .restart local v10    # "wifiScanActualTimeBg":J
    .local v14, "uidWifiRunningTime":J
    .restart local v153    # "wifiTxBytes":J
    .restart local v159    # "wifiRxPackets":J
    .restart local v161    # "wifiTxPackets":J
    .restart local v164    # "wifiRxBytes":J
    :goto_45
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6208
    move-object/from16 v7, p3

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "    Wifi Running: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6209
    move-wide/from16 v172, v10

    .end local v10    # "wifiScanActualTimeBg":J
    .restart local v172    # "wifiScanActualTimeBg":J
    div-long v10, v14, v19

    invoke-static {v2, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6210
    move-object/from16 v10, v148

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, v138

    .end local v138    # "whichBatteryRealtime":J
    .local v11, "whichBatteryRealtime":J
    invoke-virtual {v0, v14, v15, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6211
    const-string v1, ")\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6212
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    Full Wifi Lock: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6213
    move-wide/from16 v176, v14

    .end local v14    # "uidWifiRunningTime":J
    .restart local v176    # "uidWifiRunningTime":J
    div-long v14, v3, v19

    invoke-static {v2, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6214
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6215
    const-string v1, ")\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6216
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    Wifi Scan (blamed): "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6217
    div-long v14, v5, v19

    invoke-static {v2, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6218
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6219
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6220
    move/from16 v14, v66

    .end local v66    # "wifiScanCount":I
    .local v14, "wifiScanCount":I
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6221
    const-string/jumbo v1, "x\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6223
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    Wifi Scan (actual): "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6224
    move-wide/from16 v190, v3

    .end local v3    # "fullWifiLockOnTime":J
    .restart local v190    # "fullWifiLockOnTime":J
    div-long v3, v8, v19

    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6225
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6226
    move-wide/from16 v167, v5

    move-wide/from16 v3, v174

    const/4 v15, 0x0

    .end local v5    # "wifiScanTime":J
    .end local v174    # "rawRealtime":J
    .local v3, "rawRealtime":J
    .restart local v167    # "wifiScanTime":J
    invoke-virtual {v0, v3, v4, v15}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v5

    .line 6225
    invoke-virtual {v0, v8, v9, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6227
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6228
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6229
    const-string/jumbo v1, "x\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6230
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    Background Wifi Scan: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6231
    div-long v5, v172, v19

    invoke-static {v2, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6232
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6233
    move-wide/from16 v170, v8

    const/4 v6, 0x0

    .end local v8    # "wifiScanActualTime":J
    .restart local v170    # "wifiScanActualTime":J
    invoke-virtual {v0, v3, v4, v6}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v8

    .line 6232
    move-wide/from16 v5, v172

    .end local v172    # "wifiScanActualTimeBg":J
    .local v5, "wifiScanActualTimeBg":J
    invoke-virtual {v0, v5, v6, v8, v9}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6234
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6235
    move/from16 v8, v169

    .end local v169    # "wifiScanCountBg":I
    .local v8, "wifiScanCountBg":I
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6236
    move-object/from16 v15, v147

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6237
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v9, p2

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6240
    :goto_46
    move-wide/from16 v138, v11

    move-wide/from16 v11, v200

    .end local v200    # "wifiWakeup":J
    .local v11, "wifiWakeup":J
    .restart local v138    # "whichBatteryRealtime":J
    cmp-long v1, v11, v46

    if-lez v1, :cond_5e

    .line 6241
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6242
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6243
    const-string v1, "    WiFi AP wakeups: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6244
    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6245
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6248
    :cond_5e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v0, "  "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6249
    move-wide/from16 v172, v5

    .end local v5    # "wifiScanActualTimeBg":J
    .restart local v172    # "wifiScanActualTimeBg":J
    invoke-virtual/range {v163 .. v163}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    .line 6248
    move-wide/from16 v174, v3

    .end local v3    # "rawRealtime":J
    .restart local v174    # "rawRealtime":J
    const-string v4, "WiFi"

    move/from16 v6, p4

    move-object v3, v0

    move/from16 v169, v8

    move-object v1, v9

    move-wide/from16 v8, v174

    move-object/from16 v0, p0

    .end local v174    # "rawRealtime":J
    .local v8, "rawRealtime":J
    .restart local v169    # "wifiScanCountBg":I
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 6251
    move v5, v6

    move-wide/from16 v3, v186

    .end local v186    # "btRxBytes":J
    .local v3, "btRxBytes":J
    cmp-long v6, v3, v46

    if-gtz v6, :cond_5f

    move-wide/from16 v178, v11

    move-wide/from16 v11, v188

    .end local v188    # "btTxBytes":J
    .local v11, "btTxBytes":J
    .restart local v178    # "wifiWakeup":J
    cmp-long v6, v11, v46

    if-lez v6, :cond_60

    goto :goto_47

    .end local v178    # "wifiWakeup":J
    .local v11, "wifiWakeup":J
    .restart local v188    # "btTxBytes":J
    :cond_5f
    move-wide/from16 v178, v11

    move-wide/from16 v11, v188

    .line 6252
    .end local v188    # "btTxBytes":J
    .local v11, "btTxBytes":J
    .restart local v178    # "wifiWakeup":J
    :goto_47
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "    Bluetooth network: "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6253
    invoke-virtual {v0, v3, v4}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " received, "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6254
    invoke-virtual {v0, v11, v12}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6255
    const-string v6, " sent"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6258
    :cond_60
    invoke-virtual/range {v163 .. v163}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v6

    .line 6259
    .local v6, "bleTimer":Landroid/os/BatteryStats$Timer;
    move-wide/from16 v188, v11

    .end local v11    # "btTxBytes":J
    .restart local v188    # "btTxBytes":J
    const-string v11, "\n"

    const-string v12, " times)"

    if-eqz v6, :cond_76

    .line 6261
    invoke-virtual {v6, v8, v9, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v147

    add-long v147, v147, v35

    move-wide/from16 v186, v3

    .end local v3    # "btRxBytes":J
    .restart local v186    # "btRxBytes":J
    div-long v3, v147, v19

    .line 6263
    .local v3, "totalTimeMs":J
    cmp-long v66, v3, v46

    if-eqz v66, :cond_75

    .line 6264
    invoke-virtual {v6, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v0

    .line 6265
    .local v0, "count":I
    move-wide/from16 v174, v8

    .end local v8    # "rawRealtime":J
    .restart local v174    # "rawRealtime":J
    invoke-virtual/range {v163 .. v163}, Landroid/os/BatteryStats$Uid;->getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v8

    .line 6266
    .local v8, "bleTimerBg":Landroid/os/BatteryStats$Timer;
    if-eqz v8, :cond_61

    invoke-virtual {v8, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v9

    goto :goto_48

    :cond_61
    const/4 v9, 0x0

    .line 6268
    .local v9, "countBg":I
    :goto_48
    move-object/from16 v148, v10

    move-object/from16 v66, v13

    move/from16 v147, v14

    move-wide/from16 v13, v127

    move/from16 v127, v9

    .end local v9    # "countBg":I
    .end local v14    # "wifiScanCount":I
    .local v13, "rawRealtimeMs":J
    .local v127, "countBg":I
    .local v147, "wifiScanCount":I
    invoke-virtual {v6, v13, v14}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v9

    .line 6269
    .local v9, "actualTimeMs":J
    if-eqz v8, :cond_62

    .line 6270
    invoke-virtual {v8, v13, v14}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v184

    goto :goto_49

    :cond_62
    move-wide/from16 v184, v46

    :goto_49
    move-wide/from16 v192, v184

    .line 6272
    .local v192, "actualTimeMsBg":J
    invoke-virtual/range {v163 .. v163}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v128

    if-eqz v128, :cond_63

    .line 6273
    move-object/from16 v128, v6

    .end local v6    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .local v128, "bleTimer":Landroid/os/BatteryStats$Timer;
    invoke-virtual/range {v163 .. v163}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v6

    goto :goto_4a

    .end local v128    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .restart local v6    # "bleTimer":Landroid/os/BatteryStats$Timer;
    :cond_63
    move-object/from16 v128, v6

    .end local v6    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .restart local v128    # "bleTimer":Landroid/os/BatteryStats$Timer;
    const/4 v6, 0x0

    .line 6274
    .local v6, "resultCount":I
    :goto_4a
    invoke-virtual/range {v163 .. v163}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v166

    if-eqz v166, :cond_64

    .line 6275
    move-object/from16 v166, v8

    .end local v8    # "bleTimerBg":Landroid/os/BatteryStats$Timer;
    .local v166, "bleTimerBg":Landroid/os/BatteryStats$Timer;
    invoke-virtual/range {v163 .. v163}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v8

    goto :goto_4b

    .end local v166    # "bleTimerBg":Landroid/os/BatteryStats$Timer;
    .restart local v8    # "bleTimerBg":Landroid/os/BatteryStats$Timer;
    :cond_64
    move-object/from16 v166, v8

    .end local v8    # "bleTimerBg":Landroid/os/BatteryStats$Timer;
    .restart local v166    # "bleTimerBg":Landroid/os/BatteryStats$Timer;
    const/4 v8, 0x0

    .line 6277
    .local v8, "resultCountBg":I
    :goto_4b
    move-object/from16 v184, v15

    invoke-virtual/range {v163 .. v163}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v15

    .line 6278
    .local v15, "unoptimizedScanTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v15, :cond_65

    .line 6279
    invoke-virtual {v15, v13, v14}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v194

    goto :goto_4c

    :cond_65
    move-wide/from16 v194, v46

    :goto_4c
    move-wide/from16 v196, v194

    .line 6280
    .local v196, "unoptimizedScanTotalTime":J
    if-eqz v15, :cond_66

    .line 6281
    invoke-virtual {v15, v13, v14}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v194

    goto :goto_4d

    :cond_66
    move-wide/from16 v194, v46

    :goto_4d
    move-wide/from16 v198, v194

    .line 6283
    .local v198, "unoptimizedScanMaxTime":J
    nop

    .line 6284
    move-object/from16 v185, v15

    .end local v15    # "unoptimizedScanTimer":Landroid/os/BatteryStats$Timer;
    .local v185, "unoptimizedScanTimer":Landroid/os/BatteryStats$Timer;
    invoke-virtual/range {v163 .. v163}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v15

    .line 6285
    .local v15, "unoptimizedScanTimerBg":Landroid/os/BatteryStats$Timer;
    if-eqz v15, :cond_67

    .line 6286
    invoke-virtual {v15, v13, v14}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v194

    goto :goto_4e

    :cond_67
    move-wide/from16 v194, v46

    :goto_4e
    move-wide/from16 v200, v194

    .line 6287
    .local v200, "unoptimizedScanTotalTimeBg":J
    if-eqz v15, :cond_68

    .line 6288
    invoke-virtual {v15, v13, v14}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v194

    goto :goto_4f

    :cond_68
    move-wide/from16 v194, v46

    :goto_4f
    move-wide/from16 v202, v194

    .line 6290
    .local v202, "unoptimizedScanMaxTimeBg":J
    move-object/from16 v194, v15

    const/4 v15, 0x0

    .end local v15    # "unoptimizedScanTimerBg":Landroid/os/BatteryStats$Timer;
    .local v194, "unoptimizedScanTimerBg":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6291
    cmp-long v15, v9, v3

    if-eqz v15, :cond_6a

    .line 6292
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6293
    const-string v15, "    Bluetooth Scan (total blamed realtime): "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6294
    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6295
    move-object/from16 v15, v140

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6296
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6297
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6298
    invoke-virtual/range {v128 .. v128}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v140

    if-eqz v140, :cond_69

    .line 6299
    move-wide/from16 v204, v3

    .end local v3    # "totalTimeMs":J
    .local v204, "totalTimeMs":J
    const-string v3, " (currently running)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_50

    .line 6298
    .end local v204    # "totalTimeMs":J
    .restart local v3    # "totalTimeMs":J
    :cond_69
    move-wide/from16 v204, v3

    .line 6301
    .end local v3    # "totalTimeMs":J
    .restart local v204    # "totalTimeMs":J
    :goto_50
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_51

    .line 6291
    .end local v204    # "totalTimeMs":J
    .restart local v3    # "totalTimeMs":J
    :cond_6a
    move-wide/from16 v204, v3

    move-object/from16 v15, v140

    .line 6304
    .end local v3    # "totalTimeMs":J
    .restart local v204    # "totalTimeMs":J
    :goto_51
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6305
    const-string v3, "    Bluetooth Scan (total actual realtime): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6306
    invoke-static {v2, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6307
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6308
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6309
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6310
    invoke-virtual/range {v128 .. v128}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 6311
    const-string v3, " (currently running)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6313
    :cond_6b
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6314
    cmp-long v3, v192, v46

    if-gtz v3, :cond_6d

    if-lez v127, :cond_6c

    goto :goto_52

    :cond_6c
    move/from16 v140, v0

    move-wide/from16 v3, v192

    goto :goto_54

    .line 6315
    :cond_6d
    :goto_52
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6316
    const-string v3, "    Bluetooth Scan (background realtime): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6317
    move-wide/from16 v3, v192

    .end local v192    # "actualTimeMsBg":J
    .local v3, "actualTimeMsBg":J
    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6318
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6319
    move/from16 v140, v0

    move/from16 v0, v127

    .end local v127    # "countBg":I
    .local v0, "countBg":I
    .local v140, "count":I
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6320
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6321
    if-eqz v166, :cond_6e

    invoke-virtual/range {v166 .. v166}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v127

    if-eqz v127, :cond_6e

    .line 6322
    move/from16 v127, v0

    .end local v0    # "countBg":I
    .restart local v127    # "countBg":I
    const-string v0, " (currently running in background)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_53

    .line 6321
    .end local v127    # "countBg":I
    .restart local v0    # "countBg":I
    :cond_6e
    move/from16 v127, v0

    .line 6324
    .end local v0    # "countBg":I
    .restart local v127    # "countBg":I
    :goto_53
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6327
    :goto_54
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6328
    const-string v0, "    Bluetooth Scan Results: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6329
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6330
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6331
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6332
    const-string v0, " in background)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6334
    cmp-long v0, v196, v46

    if-gtz v0, :cond_70

    cmp-long v0, v200, v46

    if-lez v0, :cond_6f

    goto :goto_55

    :cond_6f
    move-wide/from16 v192, v3

    move-wide/from16 v195, v196

    move-wide/from16 v197, v198

    move-wide/from16 v199, v200

    move-wide/from16 v3, v202

    goto/16 :goto_57

    .line 6335
    :cond_70
    :goto_55
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6336
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6337
    const-string v0, "    Unoptimized Bluetooth Scan (realtime): "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6338
    move-wide/from16 v192, v3

    move-wide/from16 v3, v196

    .end local v196    # "unoptimizedScanTotalTime":J
    .local v3, "unoptimizedScanTotalTime":J
    .restart local v192    # "actualTimeMsBg":J
    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6339
    const-string v0, " (max "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6340
    move-wide/from16 v195, v3

    move-wide/from16 v3, v198

    .end local v198    # "unoptimizedScanMaxTime":J
    .local v3, "unoptimizedScanMaxTime":J
    .local v195, "unoptimizedScanTotalTime":J
    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6341
    move-object/from16 v0, v79

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6342
    if-eqz v185, :cond_72

    .line 6343
    invoke-virtual/range {v185 .. v185}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v79

    if-eqz v79, :cond_71

    .line 6344
    move-wide/from16 v197, v3

    .end local v3    # "unoptimizedScanMaxTime":J
    .local v197, "unoptimizedScanMaxTime":J
    const-string v3, " (currently running unoptimized)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_56

    .line 6343
    .end local v197    # "unoptimizedScanMaxTime":J
    .restart local v3    # "unoptimizedScanMaxTime":J
    :cond_71
    move-wide/from16 v197, v3

    .end local v3    # "unoptimizedScanMaxTime":J
    .restart local v197    # "unoptimizedScanMaxTime":J
    goto :goto_56

    .line 6342
    .end local v197    # "unoptimizedScanMaxTime":J
    .restart local v3    # "unoptimizedScanMaxTime":J
    :cond_72
    move-wide/from16 v197, v3

    .line 6346
    .end local v3    # "unoptimizedScanMaxTime":J
    .restart local v197    # "unoptimizedScanMaxTime":J
    :goto_56
    if-eqz v194, :cond_74

    cmp-long v3, v200, v46

    if-lez v3, :cond_74

    .line 6347
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6348
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6349
    const-string v3, "    Unoptimized Bluetooth Scan (background realtime): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6350
    move-wide/from16 v3, v200

    .end local v200    # "unoptimizedScanTotalTimeBg":J
    .local v3, "unoptimizedScanTotalTimeBg":J
    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6351
    move-wide/from16 v199, v3

    .end local v3    # "unoptimizedScanTotalTimeBg":J
    .local v199, "unoptimizedScanTotalTimeBg":J
    const-string v3, " (max "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6352
    move-wide/from16 v3, v202

    .end local v202    # "unoptimizedScanMaxTimeBg":J
    .local v3, "unoptimizedScanMaxTimeBg":J
    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6353
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6354
    invoke-virtual/range {v194 .. v194}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v79

    if-eqz v79, :cond_73

    .line 6355
    move-object/from16 v79, v0

    const-string v0, " (currently running unoptimized in background)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_57

    .line 6354
    :cond_73
    move-object/from16 v79, v0

    goto :goto_57

    .line 6346
    .end local v3    # "unoptimizedScanMaxTimeBg":J
    .end local v199    # "unoptimizedScanTotalTimeBg":J
    .restart local v200    # "unoptimizedScanTotalTimeBg":J
    .restart local v202    # "unoptimizedScanMaxTimeBg":J
    :cond_74
    move-object/from16 v79, v0

    move-wide/from16 v199, v200

    move-wide/from16 v3, v202

    .line 6359
    .end local v200    # "unoptimizedScanTotalTimeBg":J
    .end local v202    # "unoptimizedScanMaxTimeBg":J
    .restart local v3    # "unoptimizedScanMaxTimeBg":J
    .restart local v199    # "unoptimizedScanTotalTimeBg":J
    :goto_57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6360
    const/16 v96, 0x1

    goto :goto_58

    .line 6263
    .end local v9    # "actualTimeMs":J
    .end local v13    # "rawRealtimeMs":J
    .end local v128    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .end local v140    # "count":I
    .end local v147    # "wifiScanCount":I
    .end local v166    # "bleTimerBg":Landroid/os/BatteryStats$Timer;
    .end local v174    # "rawRealtime":J
    .end local v185    # "unoptimizedScanTimer":Landroid/os/BatteryStats$Timer;
    .end local v192    # "actualTimeMsBg":J
    .end local v194    # "unoptimizedScanTimerBg":Landroid/os/BatteryStats$Timer;
    .end local v195    # "unoptimizedScanTotalTime":J
    .end local v197    # "unoptimizedScanMaxTime":J
    .end local v199    # "unoptimizedScanTotalTimeBg":J
    .end local v204    # "totalTimeMs":J
    .local v3, "totalTimeMs":J
    .local v6, "bleTimer":Landroid/os/BatteryStats$Timer;
    .local v8, "rawRealtime":J
    .restart local v14    # "wifiScanCount":I
    .local v127, "rawRealtimeMs":J
    :cond_75
    move-wide/from16 v204, v3

    move-wide/from16 v174, v8

    move-object/from16 v148, v10

    move-object/from16 v66, v13

    move/from16 v147, v14

    move-object/from16 v184, v15

    move-wide/from16 v13, v127

    move-object/from16 v15, v140

    move-object/from16 v128, v6

    .end local v3    # "totalTimeMs":J
    .end local v6    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .end local v8    # "rawRealtime":J
    .end local v14    # "wifiScanCount":I
    .end local v127    # "rawRealtimeMs":J
    .restart local v13    # "rawRealtimeMs":J
    .restart local v128    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .restart local v147    # "wifiScanCount":I
    .restart local v174    # "rawRealtime":J
    .restart local v204    # "totalTimeMs":J
    goto :goto_58

    .line 6259
    .end local v13    # "rawRealtimeMs":J
    .end local v128    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .end local v147    # "wifiScanCount":I
    .end local v174    # "rawRealtime":J
    .end local v186    # "btRxBytes":J
    .end local v204    # "totalTimeMs":J
    .local v3, "btRxBytes":J
    .restart local v6    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .restart local v8    # "rawRealtime":J
    .restart local v14    # "wifiScanCount":I
    .restart local v127    # "rawRealtimeMs":J
    :cond_76
    move-wide/from16 v186, v3

    move-wide/from16 v174, v8

    move-object/from16 v148, v10

    move-object/from16 v66, v13

    move/from16 v147, v14

    move-object/from16 v184, v15

    move-wide/from16 v13, v127

    move-object/from16 v15, v140

    move-object/from16 v128, v6

    .line 6366
    .end local v3    # "btRxBytes":J
    .end local v6    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .end local v8    # "rawRealtime":J
    .end local v14    # "wifiScanCount":I
    .end local v127    # "rawRealtimeMs":J
    .restart local v13    # "rawRealtimeMs":J
    .restart local v128    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .restart local v147    # "wifiScanCount":I
    .restart local v174    # "rawRealtime":J
    .restart local v186    # "btRxBytes":J
    :goto_58
    invoke-virtual/range {v163 .. v163}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v0

    const-string v8, ", "

    if-eqz v0, :cond_7a

    .line 6367
    const/4 v0, 0x0

    .line 6368
    .local v0, "hasData":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_59
    sget v4, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    if-ge v3, v4, :cond_79

    .line 6369
    move-object/from16 v9, v163

    .end local v163    # "u":Landroid/os/BatteryStats$Uid;
    .local v9, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual {v9, v3, v5}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v4

    .line 6370
    .local v4, "val":I
    if-eqz v4, :cond_78

    .line 6371
    if-nez v0, :cond_77

    .line 6372
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6373
    const-string v6, "    User activity: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6374
    const/4 v0, 0x1

    goto :goto_5a

    .line 6376
    :cond_77
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6378
    :goto_5a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6379
    move-object/from16 v10, v146

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6380
    sget-object v6, Landroid/os/BatteryStats$Uid;->USER_ACTIVITY_TYPES:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5b

    .line 6370
    :cond_78
    move-object/from16 v10, v146

    .line 6368
    .end local v4    # "val":I
    :goto_5b
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v163, v9

    move-object/from16 v146, v10

    goto :goto_59

    .end local v9    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v163    # "u":Landroid/os/BatteryStats$Uid;
    :cond_79
    move-object/from16 v10, v146

    move-object/from16 v9, v163

    .line 6383
    .end local v3    # "i":I
    .end local v163    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v9    # "u":Landroid/os/BatteryStats$Uid;
    if-eqz v0, :cond_7b

    .line 6384
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5c

    .line 6366
    .end local v0    # "hasData":Z
    .end local v9    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v163    # "u":Landroid/os/BatteryStats$Uid;
    :cond_7a
    move-object/from16 v10, v146

    move-object/from16 v9, v163

    .line 6388
    .end local v163    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v9    # "u":Landroid/os/BatteryStats$Uid;
    :cond_7b
    :goto_5c
    nop

    .line 6389
    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v0

    .line 6390
    .local v0, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    const-wide/16 v3, 0x0

    .local v3, "totalFullWakelock":J
    const-wide/16 v192, 0x0

    .local v192, "totalPartialWakelock":J
    const-wide/16 v194, 0x0

    .line 6391
    .local v194, "totalWindowWakelock":J
    const-wide/16 v196, 0x0

    .line 6392
    .local v196, "totalDrawWakelock":J
    const/4 v6, 0x0

    .line 6393
    .local v6, "countWakelock":I
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v127

    const/16 v50, 0x1

    add-int/lit8 v127, v127, -0x1

    move-object/from16 v163, v9

    move-object/from16 v146, v10

    move-object/from16 v166, v12

    move-object/from16 v140, v15

    move/from16 v15, v127

    move-wide/from16 v9, v192

    move-wide/from16 v192, v194

    move-object/from16 v127, v11

    move-wide/from16 v11, v196

    .end local v194    # "totalWindowWakelock":J
    .end local v196    # "totalDrawWakelock":J
    .local v9, "totalPartialWakelock":J
    .local v11, "totalDrawWakelock":J
    .local v15, "iw":I
    .restart local v163    # "u":Landroid/os/BatteryStats$Uid;
    .local v192, "totalWindowWakelock":J
    :goto_5d
    if-ltz v15, :cond_7d

    .line 6394
    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v185

    move-wide/from16 v194, v11

    .end local v11    # "totalDrawWakelock":J
    .local v194, "totalDrawWakelock":J
    move-object/from16 v11, v185

    check-cast v11, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 6395
    .local v11, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    move v12, v6

    .end local v6    # "countWakelock":I
    .local v12, "countWakelock":I
    const-string v6, ": "

    .line 6396
    .local v6, "linePrefix":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6397
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6398
    const-string v1, "    Wake lock "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6399
    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6400
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v185

    move-wide/from16 v196, v3

    .end local v3    # "totalFullWakelock":J
    .local v196, "totalFullWakelock":J
    const-string v4, "full"

    move-object/from16 v1, v79

    move-object/from16 v79, v0

    move-object v0, v2

    move-wide/from16 v2, v174

    move-object/from16 v175, v1

    move-wide/from16 v224, v196

    move-wide/from16 v196, v9

    move-wide/from16 v9, v224

    move/from16 v174, v15

    move-object/from16 v1, v185

    move v15, v12

    move-object/from16 v12, p2

    .end local v12    # "countWakelock":I
    .local v0, "sb":Ljava/lang/StringBuilder;
    .local v2, "rawRealtime":J
    .local v9, "totalFullWakelock":J
    .local v15, "countWakelock":I
    .local v79, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .local v174, "iw":I
    .local v196, "totalPartialWakelock":J
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6402
    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    .line 6403
    .local v1, "pTimer":Landroid/os/BatteryStats$Timer;
    const-string/jumbo v4, "partial"

    move/from16 v5, p4

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6405
    move-object/from16 v185, v1

    .end local v1    # "pTimer":Landroid/os/BatteryStats$Timer;
    .local v185, "pTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v185, :cond_7c

    invoke-virtual/range {v185 .. v185}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    goto :goto_5e

    :cond_7c
    const/4 v1, 0x0

    :goto_5e
    const-string v4, "background partial"

    move/from16 v5, p4

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6407
    const/4 v4, 0x2

    invoke-virtual {v11, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    const-string/jumbo v4, "window"

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6409
    const/16 v1, 0x12

    invoke-virtual {v11, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    const-string v4, "draw"

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6411
    .end local v6    # "linePrefix":Ljava/lang/String;
    .local v1, "linePrefix":Ljava/lang/String;
    move-object/from16 v4, v137

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6412
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6413
    const/16 v96, 0x1

    .line 6414
    add-int/lit8 v6, v15, 0x1

    .line 6416
    .end local v15    # "countWakelock":I
    .local v6, "countWakelock":I
    move-object/from16 v137, v1

    const/4 v15, 0x1

    .end local v1    # "linePrefix":Ljava/lang/String;
    .local v137, "linePrefix":Ljava/lang/String;
    invoke-virtual {v11, v15}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    invoke-static {v1, v2, v3, v5}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v198

    add-long v9, v9, v198

    .line 6418
    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    invoke-static {v1, v2, v3, v5}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v198

    add-long v196, v196, v198

    .line 6420
    const/4 v15, 0x2

    invoke-virtual {v11, v15}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    invoke-static {v1, v2, v3, v5}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v198

    add-long v192, v192, v198

    .line 6422
    const/16 v1, 0x12

    invoke-virtual {v11, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    invoke-static {v1, v2, v3, v5}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v198

    add-long v194, v194, v198

    .line 6393
    .end local v11    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v137    # "linePrefix":Ljava/lang/String;
    .end local v185    # "pTimer":Landroid/os/BatteryStats$Timer;
    add-int/lit8 v15, v174, -0x1

    move-wide/from16 v224, v2

    move-object v2, v0

    move-object/from16 v0, v79

    move-object/from16 v79, v175

    move-wide/from16 v174, v224

    move-object/from16 v137, v4

    move-wide v3, v9

    move-object v1, v12

    move-wide/from16 v11, v194

    move-wide/from16 v9, v196

    .end local v174    # "iw":I
    .local v15, "iw":I
    goto/16 :goto_5d

    .end local v79    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v194    # "totalDrawWakelock":J
    .end local v196    # "totalPartialWakelock":J
    .local v0, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .local v2, "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "totalFullWakelock":J
    .local v9, "totalPartialWakelock":J
    .local v11, "totalDrawWakelock":J
    .local v174, "rawRealtime":J
    :cond_7d
    move-wide/from16 v196, v9

    move-wide/from16 v194, v11

    move-object v12, v1

    move-wide v9, v3

    move-object/from16 v4, v137

    move-object/from16 v224, v79

    move-object/from16 v79, v0

    move-object v0, v2

    move-wide/from16 v2, v174

    move/from16 v174, v15

    move-object/from16 v175, v224

    move v15, v6

    .line 6425
    .end local v3    # "totalFullWakelock":J
    .end local v6    # "countWakelock":I
    .end local v11    # "totalDrawWakelock":J
    .end local v174    # "rawRealtime":J
    .local v0, "sb":Ljava/lang/StringBuilder;
    .local v2, "rawRealtime":J
    .local v9, "totalFullWakelock":J
    .local v15, "countWakelock":I
    .restart local v79    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .restart local v194    # "totalDrawWakelock":J
    .restart local v196    # "totalPartialWakelock":J
    const/4 v11, 0x1

    if-le v15, v11, :cond_8d

    .line 6428
    const-wide/16 v198, 0x0

    .line 6429
    .local v198, "actualTotalPartialWakelock":J
    const-wide/16 v200, 0x0

    .line 6430
    .local v200, "actualBgPartialWakelock":J
    invoke-virtual/range {v163 .. v163}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    if-eqz v1, :cond_7f

    .line 6431
    invoke-virtual/range {v163 .. v163}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    .line 6433
    .local v1, "aggTimer":Landroid/os/BatteryStats$Timer;
    nop

    .line 6434
    invoke-virtual {v1, v13, v14}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v198

    .line 6435
    invoke-virtual {v1}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v6

    .line 6436
    .local v6, "bgAggTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v6, :cond_7e

    .line 6437
    invoke-virtual {v6, v13, v14}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v202

    goto :goto_5f

    :cond_7e
    move-wide/from16 v202, v46

    :goto_5f
    move-wide/from16 v200, v202

    move-wide/from16 v202, v13

    move-wide/from16 v13, v198

    move-wide/from16 v198, v2

    move-wide/from16 v1, v200

    goto :goto_60

    .line 6430
    .end local v1    # "aggTimer":Landroid/os/BatteryStats$Timer;
    .end local v6    # "bgAggTimer":Landroid/os/BatteryStats$Timer;
    :cond_7f
    move-wide/from16 v202, v13

    move-wide/from16 v13, v198

    move-wide/from16 v198, v2

    move-wide/from16 v1, v200

    .line 6440
    .end local v2    # "rawRealtime":J
    .end local v200    # "actualBgPartialWakelock":J
    .local v1, "actualBgPartialWakelock":J
    .local v13, "actualTotalPartialWakelock":J
    .local v198, "rawRealtime":J
    .local v202, "rawRealtimeMs":J
    :goto_60
    cmp-long v3, v13, v46

    if-nez v3, :cond_81

    cmp-long v3, v1, v46

    if-nez v3, :cond_81

    cmp-long v3, v9, v46

    if-nez v3, :cond_81

    cmp-long v3, v196, v46

    if-nez v3, :cond_81

    cmp-long v3, v192, v46

    if-eqz v3, :cond_80

    goto :goto_61

    :cond_80
    move-wide/from16 v200, v9

    move-wide/from16 v9, v194

    goto/16 :goto_65

    .line 6443
    :cond_81
    :goto_61
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6444
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6445
    const-string v3, "    TOTAL wake: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6446
    const/4 v3, 0x0

    .line 6447
    .local v3, "needComma":Z
    cmp-long v6, v9, v46

    if-eqz v6, :cond_82

    .line 6448
    const/4 v3, 0x1

    .line 6449
    invoke-static {v0, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6450
    const-string v6, "full"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6452
    :cond_82
    cmp-long v6, v196, v46

    if-eqz v6, :cond_84

    .line 6453
    if-eqz v3, :cond_83

    .line 6454
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6456
    :cond_83
    const/4 v3, 0x1

    .line 6457
    move-wide/from16 v200, v9

    move-wide/from16 v9, v196

    .end local v196    # "totalPartialWakelock":J
    .local v9, "totalPartialWakelock":J
    .local v200, "totalFullWakelock":J
    invoke-static {v0, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6458
    const-string v6, "blamed partial"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_62

    .line 6452
    .end local v200    # "totalFullWakelock":J
    .local v9, "totalFullWakelock":J
    .restart local v196    # "totalPartialWakelock":J
    :cond_84
    move-wide/from16 v200, v9

    move-wide/from16 v9, v196

    .line 6460
    .end local v196    # "totalPartialWakelock":J
    .local v9, "totalPartialWakelock":J
    .restart local v200    # "totalFullWakelock":J
    :goto_62
    cmp-long v6, v13, v46

    if-eqz v6, :cond_86

    .line 6461
    if-eqz v3, :cond_85

    .line 6462
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6464
    :cond_85
    const/4 v3, 0x1

    .line 6465
    invoke-static {v0, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6466
    const-string v6, "actual partial"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6468
    :cond_86
    cmp-long v6, v1, v46

    if-eqz v6, :cond_88

    .line 6469
    if-eqz v3, :cond_87

    .line 6470
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6472
    :cond_87
    const/4 v3, 0x1

    .line 6473
    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6474
    const-string v6, "actual background partial"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6476
    :cond_88
    cmp-long v6, v192, v46

    if-eqz v6, :cond_8a

    .line 6477
    if-eqz v3, :cond_89

    .line 6478
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6480
    :cond_89
    const/4 v3, 0x1

    .line 6481
    move-wide/from16 v196, v9

    move-wide/from16 v9, v192

    .end local v192    # "totalWindowWakelock":J
    .local v9, "totalWindowWakelock":J
    .restart local v196    # "totalPartialWakelock":J
    invoke-static {v0, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6482
    const-string/jumbo v6, "window"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_63

    .line 6476
    .end local v196    # "totalPartialWakelock":J
    .local v9, "totalPartialWakelock":J
    .restart local v192    # "totalWindowWakelock":J
    :cond_8a
    move-wide/from16 v196, v9

    move-wide/from16 v9, v192

    .line 6484
    .end local v192    # "totalWindowWakelock":J
    .local v9, "totalWindowWakelock":J
    .restart local v196    # "totalPartialWakelock":J
    :goto_63
    cmp-long v6, v194, v46

    if-eqz v6, :cond_8c

    .line 6485
    if-eqz v3, :cond_8b

    .line 6486
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6488
    :cond_8b
    const/4 v3, 0x1

    .line 6489
    move-wide/from16 v192, v9

    move-wide/from16 v9, v194

    .end local v194    # "totalDrawWakelock":J
    .local v9, "totalDrawWakelock":J
    .restart local v192    # "totalWindowWakelock":J
    invoke-static {v0, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6490
    const-string v6, "draw"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_64

    .line 6484
    .end local v192    # "totalWindowWakelock":J
    .local v9, "totalWindowWakelock":J
    .restart local v194    # "totalDrawWakelock":J
    :cond_8c
    move-wide/from16 v192, v9

    move-wide/from16 v9, v194

    .line 6492
    .end local v194    # "totalDrawWakelock":J
    .local v9, "totalDrawWakelock":J
    .restart local v192    # "totalWindowWakelock":J
    :goto_64
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6493
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_65

    .line 6425
    .end local v1    # "actualBgPartialWakelock":J
    .end local v3    # "needComma":Z
    .end local v198    # "rawRealtime":J
    .end local v200    # "totalFullWakelock":J
    .end local v202    # "rawRealtimeMs":J
    .restart local v2    # "rawRealtime":J
    .local v9, "totalFullWakelock":J
    .local v13, "rawRealtimeMs":J
    .restart local v194    # "totalDrawWakelock":J
    :cond_8d
    move-wide/from16 v198, v2

    move-wide/from16 v200, v9

    move-wide/from16 v202, v13

    move-wide/from16 v9, v194

    .line 6498
    .end local v2    # "rawRealtime":J
    .end local v13    # "rawRealtimeMs":J
    .end local v194    # "totalDrawWakelock":J
    .local v9, "totalDrawWakelock":J
    .restart local v198    # "rawRealtime":J
    .restart local v200    # "totalFullWakelock":J
    .restart local v202    # "rawRealtimeMs":J
    :goto_65
    invoke-virtual/range {v163 .. v163}, Landroid/os/BatteryStats$Uid;->getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;

    move-result-object v11

    .line 6499
    .local v11, "mcTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v11, :cond_8f

    .line 6500
    move-wide/from16 v2, v198

    .end local v198    # "rawRealtime":J
    .restart local v2    # "rawRealtime":J
    invoke-virtual {v11, v2, v3, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v13

    .line 6501
    .local v13, "multicastWakeLockTimeMicros":J
    invoke-virtual {v11, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v1

    .line 6503
    .local v1, "multicastWakeLockCount":I
    cmp-long v6, v13, v46

    if-lez v6, :cond_8e

    .line 6504
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6505
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6506
    const-string v6, "    WiFi Multicast Wakelock"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6507
    const-string v6, " count = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6508
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6509
    const-string v6, " time = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6510
    add-long v194, v13, v35

    move-wide/from16 v198, v9

    .end local v9    # "totalDrawWakelock":J
    .local v198, "totalDrawWakelock":J
    div-long v9, v194, v19

    invoke-static {v0, v9, v10}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 6511
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_66

    .line 6503
    .end local v198    # "totalDrawWakelock":J
    .restart local v9    # "totalDrawWakelock":J
    :cond_8e
    move-wide/from16 v198, v9

    .end local v9    # "totalDrawWakelock":J
    .restart local v198    # "totalDrawWakelock":J
    goto :goto_66

    .line 6499
    .end local v1    # "multicastWakeLockCount":I
    .end local v2    # "rawRealtime":J
    .end local v13    # "multicastWakeLockTimeMicros":J
    .restart local v9    # "totalDrawWakelock":J
    .local v198, "rawRealtime":J
    :cond_8f
    move-wide/from16 v2, v198

    move-wide/from16 v198, v9

    .line 6515
    .end local v9    # "totalDrawWakelock":J
    .restart local v2    # "rawRealtime":J
    .local v198, "totalDrawWakelock":J
    :goto_66
    invoke-virtual/range {v163 .. v163}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v9

    .line 6516
    .local v9, "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/16 v50, 0x1

    add-int/lit8 v1, v1, -0x1

    .local v1, "isy":I
    :goto_67
    if-ltz v1, :cond_94

    .line 6517
    invoke-virtual {v9, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/BatteryStats$Timer;

    .line 6519
    .local v10, "timer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v10, v2, v3, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v13

    add-long v13, v13, v35

    div-long v13, v13, v19

    .line 6520
    .local v13, "totalTime":J
    invoke-virtual {v10, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v6

    .line 6521
    .local v6, "count":I
    move-object/from16 v174, v4

    invoke-virtual {v10}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    .line 6522
    .local v4, "bgTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v4, :cond_90

    .line 6523
    move-object/from16 v194, v10

    move-object/from16 v185, v11

    move-wide/from16 v10, v202

    .end local v11    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .end local v202    # "rawRealtimeMs":J
    .local v10, "rawRealtimeMs":J
    .local v185, "mcTimer":Landroid/os/BatteryStats$Timer;
    .local v194, "timer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v4, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v202

    goto :goto_68

    .end local v185    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .end local v194    # "timer":Landroid/os/BatteryStats$Timer;
    .local v10, "timer":Landroid/os/BatteryStats$Timer;
    .restart local v11    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .restart local v202    # "rawRealtimeMs":J
    :cond_90
    move-object/from16 v194, v10

    move-object/from16 v185, v11

    move-wide/from16 v10, v202

    .end local v11    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .end local v202    # "rawRealtimeMs":J
    .local v10, "rawRealtimeMs":J
    .restart local v185    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .restart local v194    # "timer":Landroid/os/BatteryStats$Timer;
    const-wide/16 v202, -0x1

    :goto_68
    move-wide/from16 v204, v202

    .line 6524
    .local v204, "bgTime":J
    if-eqz v4, :cond_91

    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v137

    goto :goto_69

    :cond_91
    const/16 v137, -0x1

    :goto_69
    move/from16 v195, v137

    .line 6525
    .local v195, "bgCount":I
    move-object/from16 v202, v4

    const/4 v4, 0x0

    .end local v4    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .local v202, "bgTimer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6526
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6527
    const-string v4, "    Sync "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6528
    invoke-virtual {v9, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6529
    move-object/from16 v4, v136

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6530
    cmp-long v136, v13, v46

    if-eqz v136, :cond_93

    .line 6531
    invoke-static {v0, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6532
    move/from16 v136, v1

    .end local v1    # "isy":I
    .local v136, "isy":I
    const-string/jumbo v1, "realtime ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6533
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6534
    move-object/from16 v1, v166

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6535
    cmp-long v137, v204, v46

    if-lez v137, :cond_92

    .line 6536
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6537
    move-wide/from16 v206, v13

    move-wide/from16 v13, v204

    .end local v204    # "bgTime":J
    .local v13, "bgTime":J
    .local v206, "totalTime":J
    invoke-static {v0, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6538
    move/from16 v166, v6

    .end local v6    # "count":I
    .local v166, "count":I
    const-string v6, "background ("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6539
    move/from16 v6, v195

    .end local v195    # "bgCount":I
    .local v6, "bgCount":I
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6540
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v137, v6

    goto :goto_6a

    .line 6535
    .end local v166    # "count":I
    .end local v206    # "totalTime":J
    .local v6, "count":I
    .local v13, "totalTime":J
    .restart local v195    # "bgCount":I
    .restart local v204    # "bgTime":J
    :cond_92
    move/from16 v166, v6

    move-wide/from16 v206, v13

    move/from16 v6, v195

    move-wide/from16 v13, v204

    .end local v195    # "bgCount":I
    .end local v204    # "bgTime":J
    .local v6, "bgCount":I
    .local v13, "bgTime":J
    .restart local v166    # "count":I
    .restart local v206    # "totalTime":J
    move/from16 v137, v6

    goto :goto_6a

    .line 6543
    .end local v136    # "isy":I
    .end local v166    # "count":I
    .end local v206    # "totalTime":J
    .restart local v1    # "isy":I
    .local v6, "count":I
    .local v13, "totalTime":J
    .restart local v195    # "bgCount":I
    .restart local v204    # "bgTime":J
    :cond_93
    move/from16 v136, v1

    move-wide/from16 v206, v13

    move-object/from16 v1, v166

    move-wide/from16 v13, v204

    move/from16 v166, v6

    move/from16 v6, v195

    .end local v1    # "isy":I
    .end local v195    # "bgCount":I
    .end local v204    # "bgTime":J
    .local v6, "bgCount":I
    .local v13, "bgTime":J
    .restart local v136    # "isy":I
    .restart local v166    # "count":I
    .restart local v206    # "totalTime":J
    move/from16 v137, v6

    .end local v6    # "bgCount":I
    .local v137, "bgCount":I
    const-string v6, "(not used)"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6545
    :goto_6a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6546
    const/16 v96, 0x1

    .line 6516
    .end local v13    # "bgTime":J
    .end local v137    # "bgCount":I
    .end local v166    # "count":I
    .end local v194    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v202    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v206    # "totalTime":J
    add-int/lit8 v6, v136, -0x1

    move-object/from16 v166, v1

    move-object/from16 v136, v4

    move v1, v6

    move-wide/from16 v202, v10

    move-object/from16 v4, v174

    move-object/from16 v11, v185

    .end local v136    # "isy":I
    .local v6, "isy":I
    goto/16 :goto_67

    .end local v6    # "isy":I
    .end local v10    # "rawRealtimeMs":J
    .end local v185    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .restart local v1    # "isy":I
    .restart local v11    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .local v202, "rawRealtimeMs":J
    :cond_94
    move-object/from16 v174, v4

    move-object/from16 v185, v11

    move-object/from16 v4, v136

    move-wide/from16 v10, v202

    move/from16 v136, v1

    move-object/from16 v1, v166

    .line 6549
    .end local v1    # "isy":I
    .end local v11    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .end local v202    # "rawRealtimeMs":J
    .restart local v10    # "rawRealtimeMs":J
    .restart local v185    # "mcTimer":Landroid/os/BatteryStats$Timer;
    invoke-virtual/range {v163 .. v163}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v13

    .line 6550
    .local v13, "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v6

    const/16 v50, 0x1

    add-int/lit8 v6, v6, -0x1

    .local v6, "ij":I
    :goto_6b
    if-ltz v6, :cond_99

    .line 6551
    invoke-virtual {v13, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/BatteryStats$Timer;

    .line 6553
    .local v14, "timer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v14, v2, v3, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v194

    add-long v194, v194, v35

    move-wide/from16 v202, v2

    .end local v2    # "rawRealtime":J
    .local v202, "rawRealtime":J
    div-long v2, v194, v19

    .line 6554
    .local v2, "totalTime":J
    move-object/from16 v136, v9

    .end local v9    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v136, "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v14, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v9

    .line 6555
    .local v9, "count":I
    move-object/from16 v166, v14

    .end local v14    # "timer":Landroid/os/BatteryStats$Timer;
    .local v166, "timer":Landroid/os/BatteryStats$Timer;
    invoke-virtual/range {v166 .. v166}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v14

    .line 6556
    .local v14, "bgTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v14, :cond_95

    .line 6557
    invoke-virtual {v14, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v194

    goto :goto_6c

    :cond_95
    const-wide/16 v194, -0x1

    :goto_6c
    move-wide/from16 v204, v194

    .line 6558
    .restart local v204    # "bgTime":J
    if-eqz v14, :cond_96

    invoke-virtual {v14, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v194

    goto :goto_6d

    :cond_96
    const/16 v194, -0x1

    :goto_6d
    move/from16 v195, v194

    .line 6559
    .restart local v195    # "bgCount":I
    move-object/from16 v194, v14

    const/4 v14, 0x0

    .end local v14    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .local v194, "bgTimer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6560
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6561
    const-string v14, "    Job "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6562
    invoke-virtual {v13, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6563
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6564
    cmp-long v14, v2, v46

    if-eqz v14, :cond_98

    .line 6565
    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6566
    const-string/jumbo v14, "realtime ("

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6567
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6568
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6569
    cmp-long v14, v204, v46

    if-lez v14, :cond_97

    .line 6570
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6571
    move-wide/from16 v206, v2

    move-wide/from16 v2, v204

    .end local v204    # "bgTime":J
    .local v2, "bgTime":J
    .restart local v206    # "totalTime":J
    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6572
    const-string v14, "background ("

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6573
    move/from16 v14, v195

    .end local v195    # "bgCount":I
    .local v14, "bgCount":I
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6574
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v195, v1

    goto :goto_6e

    .line 6569
    .end local v14    # "bgCount":I
    .end local v206    # "totalTime":J
    .local v2, "totalTime":J
    .restart local v195    # "bgCount":I
    .restart local v204    # "bgTime":J
    :cond_97
    move-wide/from16 v206, v2

    move/from16 v14, v195

    move-wide/from16 v2, v204

    .end local v195    # "bgCount":I
    .end local v204    # "bgTime":J
    .local v2, "bgTime":J
    .restart local v14    # "bgCount":I
    .restart local v206    # "totalTime":J
    move-object/from16 v195, v1

    goto :goto_6e

    .line 6577
    .end local v14    # "bgCount":I
    .end local v206    # "totalTime":J
    .local v2, "totalTime":J
    .restart local v195    # "bgCount":I
    .restart local v204    # "bgTime":J
    :cond_98
    move-wide/from16 v206, v2

    move/from16 v14, v195

    move-wide/from16 v2, v204

    .end local v195    # "bgCount":I
    .end local v204    # "bgTime":J
    .local v2, "bgTime":J
    .restart local v14    # "bgCount":I
    .restart local v206    # "totalTime":J
    move-object/from16 v195, v1

    const-string v1, "(not used)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6579
    :goto_6e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6580
    const/16 v96, 0x1

    .line 6550
    .end local v2    # "bgTime":J
    .end local v9    # "count":I
    .end local v14    # "bgCount":I
    .end local v166    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v194    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v206    # "totalTime":J
    add-int/lit8 v6, v6, -0x1

    move-object/from16 v9, v136

    move-object/from16 v1, v195

    move-wide/from16 v2, v202

    goto/16 :goto_6b

    .end local v136    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v202    # "rawRealtime":J
    .local v2, "rawRealtime":J
    .local v9, "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_99
    move-object/from16 v195, v1

    move-wide/from16 v202, v2

    move-object/from16 v136, v9

    .line 6583
    .end local v2    # "rawRealtime":J
    .end local v6    # "ij":I
    .end local v9    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v136    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v202    # "rawRealtime":J
    invoke-virtual/range {v163 .. v163}, Landroid/os/BatteryStats$Uid;->getJobCompletionStats()Landroid/util/ArrayMap;

    move-result-object v9

    .line 6584
    .local v9, "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/16 v50, 0x1

    add-int/lit8 v1, v1, -0x1

    .local v1, "ic":I
    :goto_6f
    if-ltz v1, :cond_9c

    .line 6585
    invoke-virtual {v9, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseIntArray;

    .line 6586
    .local v2, "types":Landroid/util/SparseIntArray;
    if-eqz v2, :cond_9b

    .line 6587
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6588
    const-string v3, "    Job Completions "

    invoke-virtual {v12, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6589
    invoke-virtual {v9, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6590
    const-string v3, ":"

    invoke-virtual {v12, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6591
    const/4 v3, 0x0

    .local v3, "it":I
    :goto_70
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_9a

    .line 6592
    move-object/from16 v14, v146

    invoke-virtual {v12, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6593
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6594
    move-object/from16 v6, v148

    invoke-virtual {v12, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6595
    move/from16 v137, v1

    .end local v1    # "ic":I
    .local v137, "ic":I
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 6596
    const-string/jumbo v1, "x)"

    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6591
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v137

    goto :goto_70

    .end local v137    # "ic":I
    .restart local v1    # "ic":I
    :cond_9a
    move/from16 v137, v1

    move-object/from16 v14, v146

    move-object/from16 v6, v148

    .line 6598
    .end local v1    # "ic":I
    .end local v3    # "it":I
    .restart local v137    # "ic":I
    invoke-virtual {v12}, Ljava/io/PrintWriter;->println()V

    goto :goto_71

    .line 6586
    .end local v137    # "ic":I
    .restart local v1    # "ic":I
    :cond_9b
    move/from16 v137, v1

    move-object/from16 v14, v146

    move-object/from16 v6, v148

    .line 6584
    .end local v1    # "ic":I
    .end local v2    # "types":Landroid/util/SparseIntArray;
    .restart local v137    # "ic":I
    :goto_71
    add-int/lit8 v1, v137, -0x1

    move-object/from16 v148, v6

    move-object/from16 v146, v14

    .end local v137    # "ic":I
    .restart local v1    # "ic":I
    goto :goto_6f

    :cond_9c
    move/from16 v137, v1

    move-object/from16 v14, v146

    move-object/from16 v6, v148

    .line 6602
    .end local v1    # "ic":I
    move-object/from16 v1, v163

    .end local v163    # "u":Landroid/os/BatteryStats$Uid;
    .local v1, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual {v1, v0, v5}, Landroid/os/BatteryStats$Uid;->getDeferredJobsLineLocked(Ljava/lang/StringBuilder;I)V

    .line 6603
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_9d

    .line 6604
    const-string v2, "    Jobs deferred on launch "

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6607
    :cond_9d
    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string v7, "Flashlight"

    move-object v3, v1

    move-object v1, v0

    move-object v0, v12

    move-object v12, v3

    move-object/from16 v163, v6

    move-object/from16 v146, v9

    move-object/from16 v148, v13

    move-object/from16 v137, v174

    move-object/from16 v13, v195

    move-object/from16 v6, p3

    move-object v9, v4

    move-wide/from16 v3, v202

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v9    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v13    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v202    # "rawRealtime":J
    .local v1, "sb":Ljava/lang/StringBuilder;
    .local v3, "rawRealtime":J
    .local v12, "u":Landroid/os/BatteryStats$Uid;
    .local v146, "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .local v148, "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-static/range {v0 .. v7}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move-object v0, v1

    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    or-int v96, v96, v2

    .line 6609
    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string v7, "Camera"

    move/from16 v5, p4

    move-object/from16 v0, p2

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    invoke-static/range {v0 .. v7}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move-object v0, v1

    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    or-int v96, v96, v2

    .line 6611
    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string v7, "Video"

    move-object/from16 v0, p2

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    invoke-static/range {v0 .. v7}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move-object v0, v1

    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    or-int v96, v96, v2

    .line 6613
    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string v7, "Audio"

    move-object/from16 v0, p2

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    invoke-static/range {v0 .. v7}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v224, v1

    move-object v1, v0

    move-object/from16 v0, v224

    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    or-int v2, v96, v2

    .line 6616
    .end local v96    # "uidActivity":Z
    .local v2, "uidActivity":Z
    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v7

    .line 6617
    .local v7, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    move/from16 v96, v15

    .end local v15    # "countWakelock":I
    .local v96, "countWakelock":I
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v15

    .line 6618
    .local v15, "NSE":I
    const/16 v166, 0x0

    move/from16 v224, v166

    move/from16 v166, v2

    move/from16 v2, v224

    .local v2, "ise":I
    .local v166, "uidActivity":Z
    :goto_72
    if-ge v2, v15, :cond_a6

    .line 6619
    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v174

    check-cast v174, Landroid/os/BatteryStats$Uid$Sensor;

    .line 6620
    .local v174, "se":Landroid/os/BatteryStats$Uid$Sensor;
    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v194

    .line 6621
    .local v194, "sensorNumber":I
    move/from16 v195, v2

    const/4 v2, 0x0

    .end local v2    # "ise":I
    .local v195, "ise":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6622
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6623
    const-string v2, "    Sensor "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6624
    invoke-virtual/range {v174 .. v174}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v2

    .line 6625
    .local v2, "handle":I
    const/16 v6, -0x2710

    if-ne v2, v6, :cond_9e

    .line 6626
    const-string v6, "GPS"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_73

    .line 6628
    :cond_9e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6630
    :goto_73
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6632
    invoke-virtual/range {v174 .. v174}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v6

    .line 6633
    .local v6, "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v6, :cond_a5

    .line 6635
    invoke-virtual {v6, v3, v4, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v202

    add-long v202, v202, v35

    move-wide/from16 v204, v3

    move v4, v2

    .end local v2    # "handle":I
    .end local v3    # "rawRealtime":J
    .local v4, "handle":I
    .local v204, "rawRealtime":J
    div-long v2, v202, v19

    .line 6637
    .local v2, "totalTime":J
    move/from16 v202, v4

    .end local v4    # "handle":I
    .local v202, "handle":I
    invoke-virtual {v6, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v4

    .line 6638
    .local v4, "count":I
    move-object/from16 v203, v7

    .end local v7    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .local v203, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual/range {v174 .. v174}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;

    move-result-object v7

    .line 6639
    .local v7, "bgTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v7, :cond_9f

    invoke-virtual {v7, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v206

    goto :goto_74

    :cond_9f
    const/16 v206, 0x0

    :goto_74
    move/from16 v207, v206

    .line 6641
    .local v207, "bgCount":I
    move-object/from16 v206, v14

    move/from16 v208, v15

    .end local v15    # "NSE":I
    .local v208, "NSE":I
    invoke-virtual {v6, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v14

    .line 6642
    .local v14, "actualTime":J
    if-eqz v7, :cond_a0

    .line 6643
    invoke-virtual {v7, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v209

    goto :goto_75

    :cond_a0
    move-wide/from16 v209, v46

    :goto_75
    move-wide/from16 v211, v209

    .line 6646
    .local v211, "bgActualTime":J
    cmp-long v209, v2, v46

    if-eqz v209, :cond_a3

    .line 6647
    cmp-long v209, v14, v2

    if-eqz v209, :cond_a1

    .line 6648
    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6649
    move-wide/from16 v209, v2

    .end local v2    # "totalTime":J
    .local v209, "totalTime":J
    const-string v2, "blamed realtime, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_76

    .line 6647
    .end local v209    # "totalTime":J
    .restart local v2    # "totalTime":J
    :cond_a1
    move-wide/from16 v209, v2

    .line 6652
    .end local v2    # "totalTime":J
    .restart local v209    # "totalTime":J
    :goto_76
    invoke-static {v0, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6653
    const-string/jumbo v2, "realtime ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6654
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6655
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6657
    cmp-long v2, v211, v46

    if-nez v2, :cond_a2

    if-lez v207, :cond_a4

    .line 6658
    :cond_a2
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6659
    move-wide/from16 v2, v211

    .end local v211    # "bgActualTime":J
    .local v2, "bgActualTime":J
    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6660
    nop

    .end local v2    # "bgActualTime":J
    .restart local v211    # "bgActualTime":J
    const-string v2, "background ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6661
    move/from16 v2, v207

    .end local v207    # "bgCount":I
    .local v2, "bgCount":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6662
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    .line 6665
    .end local v209    # "totalTime":J
    .local v2, "totalTime":J
    .restart local v207    # "bgCount":I
    :cond_a3
    move-wide/from16 v209, v2

    move/from16 v2, v207

    .end local v207    # "bgCount":I
    .local v2, "bgCount":I
    .restart local v209    # "totalTime":J
    const-string v3, "(not used)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6667
    .end local v2    # "bgCount":I
    .end local v4    # "count":I
    .end local v7    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v14    # "actualTime":J
    .end local v209    # "totalTime":J
    .end local v211    # "bgActualTime":J
    :cond_a4
    :goto_77
    goto :goto_78

    .line 6668
    .end local v202    # "handle":I
    .end local v203    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v204    # "rawRealtime":J
    .end local v208    # "NSE":I
    .local v2, "handle":I
    .restart local v3    # "rawRealtime":J
    .local v7, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .restart local v15    # "NSE":I
    :cond_a5
    move/from16 v202, v2

    move-wide/from16 v204, v3

    move-object/from16 v203, v7

    move-object/from16 v206, v14

    move/from16 v208, v15

    .end local v2    # "handle":I
    .end local v3    # "rawRealtime":J
    .end local v7    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v15    # "NSE":I
    .restart local v202    # "handle":I
    .restart local v203    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .restart local v204    # "rawRealtime":J
    .restart local v208    # "NSE":I
    const-string v2, "(not used)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6671
    :goto_78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6672
    const/16 v166, 0x1

    .line 6618
    .end local v6    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v174    # "se":Landroid/os/BatteryStats$Uid$Sensor;
    .end local v194    # "sensorNumber":I
    .end local v202    # "handle":I
    add-int/lit8 v2, v195, 0x1

    move-object/from16 v6, p3

    move-object/from16 v7, v203

    move-wide/from16 v3, v204

    move-object/from16 v14, v206

    move/from16 v15, v208

    .end local v195    # "ise":I
    .local v2, "ise":I
    goto/16 :goto_72

    .end local v203    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v204    # "rawRealtime":J
    .end local v208    # "NSE":I
    .restart local v3    # "rawRealtime":J
    .restart local v7    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .restart local v15    # "NSE":I
    :cond_a6
    move/from16 v195, v2

    move-wide/from16 v204, v3

    move-object/from16 v203, v7

    move-object/from16 v206, v14

    move/from16 v208, v15

    .line 6675
    .end local v2    # "ise":I
    .end local v3    # "rawRealtime":J
    .end local v7    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v15    # "NSE":I
    .restart local v203    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .restart local v204    # "rawRealtime":J
    .restart local v208    # "NSE":I
    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string v7, "Vibrator"

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    move-object/from16 v6, p3

    move-wide/from16 v3, v204

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v204    # "rawRealtime":J
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "rawRealtime":J
    invoke-static/range {v0 .. v7}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move-object v0, v1

    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    or-int v13, v166, v2

    .line 6677
    .end local v166    # "uidActivity":Z
    .local v13, "uidActivity":Z
    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string v7, "Foreground activities"

    move/from16 v5, p4

    move-object/from16 v0, p2

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    invoke-static/range {v0 .. v7}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move-object v0, v1

    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    or-int/2addr v13, v2

    .line 6679
    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string v7, "Foreground services"

    move-object/from16 v0, p2

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    invoke-static/range {v0 .. v7}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v224, v1

    move-object v1, v0

    move-object/from16 v0, v224

    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    or-int/2addr v2, v13

    .line 6682
    .end local v13    # "uidActivity":Z
    .local v2, "uidActivity":Z
    const-wide/16 v13, 0x0

    .line 6683
    .local v13, "totalStateTime":J
    const/4 v7, 0x0

    .local v7, "ips":I
    :goto_79
    const/4 v15, 0x7

    if-ge v7, v15, :cond_a8

    .line 6684
    invoke-virtual {v12, v7, v3, v4, v5}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v194

    .line 6685
    .local v194, "time":J
    cmp-long v15, v194, v46

    if-lez v15, :cond_a7

    .line 6686
    add-long v13, v13, v194

    .line 6687
    const/4 v15, 0x0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6688
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6689
    const-string v15, "    "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6690
    sget-object v15, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    aget-object v15, v15, v7

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6691
    const-string v15, " for: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6692
    add-long v204, v194, v35

    move-wide/from16 v209, v3

    move v4, v2

    .end local v2    # "uidActivity":Z
    .end local v3    # "rawRealtime":J
    .local v4, "uidActivity":Z
    .local v209, "rawRealtime":J
    div-long v2, v204, v19

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6693
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6694
    const/4 v2, 0x1

    .end local v4    # "uidActivity":Z
    .restart local v2    # "uidActivity":Z
    goto :goto_7a

    .line 6685
    .end local v209    # "rawRealtime":J
    .restart local v3    # "rawRealtime":J
    :cond_a7
    move-wide/from16 v209, v3

    move v4, v2

    .line 6683
    .end local v3    # "rawRealtime":J
    .end local v194    # "time":J
    .restart local v209    # "rawRealtime":J
    :goto_7a
    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v3, v209

    goto :goto_79

    .end local v209    # "rawRealtime":J
    .restart local v3    # "rawRealtime":J
    :cond_a8
    move-wide/from16 v209, v3

    move v4, v2

    .line 6697
    .end local v2    # "uidActivity":Z
    .end local v3    # "rawRealtime":J
    .end local v7    # "ips":I
    .restart local v4    # "uidActivity":Z
    .restart local v209    # "rawRealtime":J
    cmp-long v2, v13, v46

    if-lez v2, :cond_a9

    .line 6698
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6699
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6700
    const-string v2, "    Total running: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6701
    add-long v2, v13, v35

    div-long v2, v2, v19

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6702
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6705
    :cond_a9
    invoke-virtual {v12, v5}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v2

    .line 6706
    .local v2, "userCpuTimeUs":J
    invoke-virtual {v12, v5}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v194

    .line 6707
    .local v194, "systemCpuTimeUs":J
    cmp-long v7, v2, v46

    if-gtz v7, :cond_ab

    cmp-long v7, v194, v46

    if-lez v7, :cond_aa

    goto :goto_7b

    :cond_aa
    move-wide/from16 v204, v2

    goto :goto_7c

    .line 6708
    :cond_ab
    :goto_7b
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6709
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6710
    const-string v7, "    Total cpu time: u="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6711
    move-wide/from16 v204, v2

    .end local v2    # "userCpuTimeUs":J
    .local v204, "userCpuTimeUs":J
    div-long v2, v204, v19

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6712
    const-string/jumbo v2, "s="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6713
    div-long v2, v194, v19

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6714
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6717
    :goto_7c
    invoke-virtual {v12, v5}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v2

    .line 6718
    .local v2, "cpuFreqTimes":[J
    if-eqz v2, :cond_ad

    .line 6719
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6720
    const-string v3, "    Total cpu time per freq:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6721
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7d
    array-length v7, v2

    if-ge v3, v7, :cond_ac

    .line 6722
    const/16 v7, 0x20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v15, v2

    move/from16 v166, v3

    .end local v2    # "cpuFreqTimes":[J
    .end local v3    # "i":I
    .local v15, "cpuFreqTimes":[J
    .local v166, "i":I
    aget-wide v2, v15, v166

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6721
    add-int/lit8 v3, v166, 0x1

    move-object v2, v15

    .end local v166    # "i":I
    .restart local v3    # "i":I
    goto :goto_7d

    .end local v15    # "cpuFreqTimes":[J
    .restart local v2    # "cpuFreqTimes":[J
    :cond_ac
    move-object v15, v2

    move/from16 v166, v3

    .line 6724
    .end local v2    # "cpuFreqTimes":[J
    .end local v3    # "i":I
    .restart local v15    # "cpuFreqTimes":[J
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7e

    .line 6718
    .end local v15    # "cpuFreqTimes":[J
    .restart local v2    # "cpuFreqTimes":[J
    :cond_ad
    move-object v15, v2

    .line 6726
    .end local v2    # "cpuFreqTimes":[J
    .restart local v15    # "cpuFreqTimes":[J
    :goto_7e
    invoke-virtual {v12, v5}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(I)[J

    move-result-object v2

    .line 6727
    .local v2, "screenOffCpuFreqTimes":[J
    if-eqz v2, :cond_af

    .line 6728
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6729
    const-string v3, "    Total screen-off cpu time per freq:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6730
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_7f
    array-length v7, v2

    if-ge v3, v7, :cond_ae

    .line 6731
    const/16 v7, 0x20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v166, v2

    move/from16 v174, v3

    .end local v2    # "screenOffCpuFreqTimes":[J
    .end local v3    # "i":I
    .local v166, "screenOffCpuFreqTimes":[J
    .local v174, "i":I
    aget-wide v2, v166, v174

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6730
    add-int/lit8 v3, v174, 0x1

    move-object/from16 v2, v166

    .end local v174    # "i":I
    .restart local v3    # "i":I
    goto :goto_7f

    .end local v166    # "screenOffCpuFreqTimes":[J
    .restart local v2    # "screenOffCpuFreqTimes":[J
    :cond_ae
    move-object/from16 v166, v2

    move/from16 v174, v3

    .line 6733
    .end local v2    # "screenOffCpuFreqTimes":[J
    .end local v3    # "i":I
    .restart local v166    # "screenOffCpuFreqTimes":[J
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_80

    .line 6727
    .end local v166    # "screenOffCpuFreqTimes":[J
    .restart local v2    # "screenOffCpuFreqTimes":[J
    :cond_af
    move-object/from16 v166, v2

    .line 6736
    .end local v2    # "screenOffCpuFreqTimes":[J
    .restart local v166    # "screenOffCpuFreqTimes":[J
    :goto_80
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v2

    new-array v2, v2, [J

    .line 6737
    .local v2, "timesInFreqMs":[J
    const/4 v3, 0x0

    .local v3, "procState":I
    :goto_81
    const/4 v7, 0x7

    if-ge v3, v7, :cond_b4

    .line 6738
    invoke-virtual {v12, v2, v3}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes([JI)Z

    move-result v7

    if-eqz v7, :cond_b1

    .line 6739
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6740
    const-string v7, "    Cpu times per freq at state "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v174, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    move/from16 v202, v4

    .end local v4    # "uidActivity":Z
    .local v202, "uidActivity":Z
    aget-object v4, v174, v3

    .line 6741
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v7, 0x3a

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6742
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_82
    array-length v7, v2

    if-ge v4, v7, :cond_b0

    .line 6743
    move/from16 v174, v4

    move-object/from16 v7, v206

    .end local v4    # "i":I
    .restart local v174    # "i":I
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v206, v10

    .end local v10    # "rawRealtimeMs":J
    .local v206, "rawRealtimeMs":J
    aget-wide v10, v2, v174

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6742
    add-int/lit8 v4, v174, 0x1

    move-wide/from16 v10, v206

    move-object/from16 v206, v7

    .end local v174    # "i":I
    .restart local v4    # "i":I
    goto :goto_82

    .end local v206    # "rawRealtimeMs":J
    .restart local v10    # "rawRealtimeMs":J
    :cond_b0
    move/from16 v174, v4

    move-object/from16 v7, v206

    move-wide/from16 v206, v10

    .line 6745
    .end local v4    # "i":I
    .end local v10    # "rawRealtimeMs":J
    .restart local v206    # "rawRealtimeMs":J
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_83

    .line 6738
    .end local v202    # "uidActivity":Z
    .end local v206    # "rawRealtimeMs":J
    .local v4, "uidActivity":Z
    .restart local v10    # "rawRealtimeMs":J
    :cond_b1
    move/from16 v202, v4

    move-object/from16 v7, v206

    move-wide/from16 v206, v10

    .line 6748
    .end local v4    # "uidActivity":Z
    .end local v10    # "rawRealtimeMs":J
    .restart local v202    # "uidActivity":Z
    .restart local v206    # "rawRealtimeMs":J
    :goto_83
    invoke-virtual {v12, v2, v3}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes([JI)Z

    move-result v4

    if-eqz v4, :cond_b3

    .line 6749
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6750
    const-string v4, "   Screen-off cpu times per freq at state "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v10, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    aget-object v10, v10, v3

    .line 6751
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v10, 0x3a

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6752
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_84
    array-length v10, v2

    if-ge v4, v10, :cond_b2

    .line 6753
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v2

    move/from16 v174, v3

    .end local v2    # "timesInFreqMs":[J
    .end local v3    # "procState":I
    .local v11, "timesInFreqMs":[J
    .local v174, "procState":I
    aget-wide v2, v11, v4

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6752
    add-int/lit8 v4, v4, 0x1

    move-object v2, v11

    move/from16 v3, v174

    goto :goto_84

    .end local v11    # "timesInFreqMs":[J
    .end local v174    # "procState":I
    .restart local v2    # "timesInFreqMs":[J
    .restart local v3    # "procState":I
    :cond_b2
    move-object v11, v2

    move/from16 v174, v3

    .line 6755
    .end local v2    # "timesInFreqMs":[J
    .end local v3    # "procState":I
    .end local v4    # "i":I
    .restart local v11    # "timesInFreqMs":[J
    .restart local v174    # "procState":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_85

    .line 6748
    .end local v11    # "timesInFreqMs":[J
    .end local v174    # "procState":I
    .restart local v2    # "timesInFreqMs":[J
    .restart local v3    # "procState":I
    :cond_b3
    move-object v11, v2

    move/from16 v174, v3

    .line 6737
    .end local v2    # "timesInFreqMs":[J
    .end local v3    # "procState":I
    .restart local v11    # "timesInFreqMs":[J
    .restart local v174    # "procState":I
    :goto_85
    add-int/lit8 v3, v174, 0x1

    move-object v2, v11

    move/from16 v4, v202

    move-wide/from16 v10, v206

    move-object/from16 v206, v7

    .end local v174    # "procState":I
    .restart local v3    # "procState":I
    goto/16 :goto_81

    .end local v11    # "timesInFreqMs":[J
    .end local v202    # "uidActivity":Z
    .end local v206    # "rawRealtimeMs":J
    .restart local v2    # "timesInFreqMs":[J
    .local v4, "uidActivity":Z
    .restart local v10    # "rawRealtimeMs":J
    :cond_b4
    move/from16 v174, v3

    move/from16 v202, v4

    move-object/from16 v7, v206

    move-wide/from16 v206, v10

    move-object v11, v2

    .line 6759
    .end local v2    # "timesInFreqMs":[J
    .end local v3    # "procState":I
    .end local v4    # "uidActivity":Z
    .end local v10    # "rawRealtimeMs":J
    .restart local v11    # "timesInFreqMs":[J
    .restart local v202    # "uidActivity":Z
    .restart local v206    # "rawRealtimeMs":J
    nop

    .line 6760
    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v2

    .line 6761
    .local v2, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/16 v50, 0x1

    add-int/lit8 v3, v3, -0x1

    .local v3, "ipr":I
    :goto_86
    if-ltz v3, :cond_c3

    .line 6762
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Uid$Proc;

    .line 6769
    .local v4, "ps":Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v174, v11

    .end local v11    # "timesInFreqMs":[J
    .local v174, "timesInFreqMs":[J
    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v10

    .line 6770
    .local v10, "userTime":J
    move-object/from16 v211, v12

    move-wide/from16 v212, v13

    .end local v12    # "u":Landroid/os/BatteryStats$Uid;
    .end local v13    # "totalStateTime":J
    .local v211, "u":Landroid/os/BatteryStats$Uid;
    .local v212, "totalStateTime":J
    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v12

    .line 6771
    .local v12, "systemTime":J
    move-object/from16 v214, v15

    .end local v15    # "cpuFreqTimes":[J
    .local v214, "cpuFreqTimes":[J
    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v14

    .line 6772
    .local v14, "foregroundTime":J
    move-object/from16 v215, v7

    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v7

    .line 6773
    .local v7, "starts":I
    move-object/from16 v216, v9

    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v9

    .line 6774
    .local v9, "numCrashes":I
    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v1

    .line 6775
    .local v1, "numAnrs":I
    if-nez v5, :cond_b5

    .line 6776
    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid$Proc;->countExcessivePowers()I

    move-result v217

    goto :goto_87

    :cond_b5
    const/16 v217, 0x0

    :goto_87
    move/from16 v218, v217

    .line 6778
    .local v218, "numExcessive":I
    cmp-long v217, v10, v46

    if-nez v217, :cond_b7

    cmp-long v217, v12, v46

    if-nez v217, :cond_b7

    cmp-long v217, v14, v46

    if-nez v217, :cond_b7

    if-nez v7, :cond_b7

    if-nez v218, :cond_b7

    if-nez v9, :cond_b7

    if-eqz v1, :cond_b6

    goto :goto_88

    :cond_b6
    move/from16 v219, v3

    move-object/from16 v1, v127

    move-object/from16 v127, v2

    move-object/from16 v2, p2

    goto/16 :goto_8e

    .line 6780
    :cond_b7
    :goto_88
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6781
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "    Proc "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6782
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6783
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "      CPU: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6784
    invoke-static {v0, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v5, "usr + "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6785
    invoke-static {v0, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v5, "krn ; "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6786
    invoke-static {v0, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v5, "fg"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6787
    if-nez v7, :cond_b9

    if-nez v9, :cond_b9

    if-eqz v1, :cond_b8

    goto :goto_89

    :cond_b8
    move/from16 v217, v1

    move-object/from16 v5, v127

    move-object/from16 v127, v2

    goto :goto_8a

    .line 6788
    :cond_b9
    :goto_89
    move-object/from16 v5, v127

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v127, v2

    .end local v2    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .local v127, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    const-string v2, "      "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6789
    const/4 v2, 0x0

    .line 6790
    .local v2, "hasOne":Z
    if-eqz v7, :cond_ba

    .line 6791
    const/4 v2, 0x1

    .line 6792
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v217, v2

    .end local v2    # "hasOne":Z
    .local v217, "hasOne":Z
    const-string v2, " starts"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v217

    .line 6794
    .end local v217    # "hasOne":Z
    .restart local v2    # "hasOne":Z
    :cond_ba
    if-eqz v9, :cond_bc

    .line 6795
    if-eqz v2, :cond_bb

    .line 6796
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6798
    :cond_bb
    const/4 v2, 0x1

    .line 6799
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v217, v2

    .end local v2    # "hasOne":Z
    .restart local v217    # "hasOne":Z
    const-string v2, " crashes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v217

    .line 6801
    .end local v217    # "hasOne":Z
    .restart local v2    # "hasOne":Z
    :cond_bc
    if-eqz v1, :cond_be

    .line 6802
    if-eqz v2, :cond_bd

    .line 6803
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6805
    :cond_bd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v217, v1

    .end local v1    # "numAnrs":I
    .local v217, "numAnrs":I
    const-string v1, " anrs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8a

    .line 6801
    .end local v217    # "numAnrs":I
    .restart local v1    # "numAnrs":I
    :cond_be
    move/from16 v217, v1

    .line 6808
    .end local v1    # "numAnrs":I
    .end local v2    # "hasOne":Z
    .restart local v217    # "numAnrs":I
    :goto_8a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6809
    const/4 v1, 0x0

    .local v1, "e":I
    :goto_8b
    move/from16 v219, v3

    move/from16 v3, v218

    .end local v218    # "numExcessive":I
    .local v3, "numExcessive":I
    .local v219, "ipr":I
    if-ge v1, v3, :cond_c2

    .line 6810
    move/from16 v218, v3

    .end local v3    # "numExcessive":I
    .restart local v218    # "numExcessive":I
    invoke-virtual {v4, v1}, Landroid/os/BatteryStats$Uid$Proc;->getExcessivePower(I)Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    move-result-object v3

    .line 6811
    .local v3, "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    if-eqz v3, :cond_c0

    .line 6812
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v220, v1

    .end local v1    # "e":I
    .local v220, "e":I
    const-string v1, "      * Killed for "

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6813
    iget v1, v3, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    move-object/from16 v221, v4

    const/4 v4, 0x2

    .end local v4    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .local v221, "ps":Landroid/os/BatteryStats$Uid$Proc;
    if-ne v1, v4, :cond_bf

    .line 6814
    const-string v1, "cpu"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8c

    .line 6816
    :cond_bf
    const-string/jumbo v1, "unknown"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6818
    :goto_8c
    const-string v1, " use: "

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6819
    move-object v1, v5

    iget-wide v4, v3, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6820
    const-string v4, " over "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6821
    iget-wide v4, v3, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6822
    iget-wide v4, v3, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    cmp-long v4, v4, v46

    if-eqz v4, :cond_c1

    .line 6823
    move-object/from16 v4, v140

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6824
    iget-wide v4, v3, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    const-wide/16 v222, 0x64

    mul-long v4, v4, v222

    move-wide/from16 v222, v4

    iget-wide v4, v3, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    div-long v4, v222, v4

    invoke-virtual {v2, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 6825
    const-string v4, "%)"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8d

    .line 6811
    .end local v220    # "e":I
    .end local v221    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .restart local v1    # "e":I
    .restart local v4    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    :cond_c0
    move/from16 v220, v1

    move-object/from16 v221, v4

    move-object v1, v5

    .line 6809
    .end local v1    # "e":I
    .end local v3    # "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    .end local v4    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .restart local v220    # "e":I
    .restart local v221    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    :cond_c1
    :goto_8d
    add-int/lit8 v3, v220, 0x1

    move-object v5, v1

    move v1, v3

    move/from16 v3, v219

    move-object/from16 v4, v221

    .end local v220    # "e":I
    .local v3, "e":I
    goto :goto_8b

    .end local v218    # "numExcessive":I
    .end local v221    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .restart local v1    # "e":I
    .local v3, "numExcessive":I
    .restart local v4    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    :cond_c2
    move/from16 v220, v1

    move/from16 v218, v3

    move-object/from16 v221, v4

    move-object v1, v5

    .line 6829
    .end local v1    # "e":I
    .end local v3    # "numExcessive":I
    .end local v4    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .restart local v218    # "numExcessive":I
    .restart local v221    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    const/4 v3, 0x1

    move/from16 v202, v3

    .line 6761
    .end local v7    # "starts":I
    .end local v9    # "numCrashes":I
    .end local v10    # "userTime":J
    .end local v12    # "systemTime":J
    .end local v14    # "foregroundTime":J
    .end local v217    # "numAnrs":I
    .end local v218    # "numExcessive":I
    .end local v221    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    :goto_8e
    add-int/lit8 v3, v219, -0x1

    move-object/from16 v5, v127

    move-object/from16 v127, v1

    move-object v1, v2

    move-object v2, v5

    move/from16 v5, p4

    move-object/from16 v11, v174

    move-object/from16 v12, v211

    move-wide/from16 v13, v212

    move-object/from16 v15, v214

    move-object/from16 v7, v215

    move-object/from16 v9, v216

    .end local v219    # "ipr":I
    .local v3, "ipr":I
    goto/16 :goto_86

    .end local v127    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v174    # "timesInFreqMs":[J
    .end local v211    # "u":Landroid/os/BatteryStats$Uid;
    .end local v212    # "totalStateTime":J
    .end local v214    # "cpuFreqTimes":[J
    .local v2, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .restart local v11    # "timesInFreqMs":[J
    .local v12, "u":Landroid/os/BatteryStats$Uid;
    .restart local v13    # "totalStateTime":J
    .restart local v15    # "cpuFreqTimes":[J
    :cond_c3
    move-object/from16 v127, v2

    move/from16 v219, v3

    move-object/from16 v215, v7

    move-object/from16 v216, v9

    move-object/from16 v174, v11

    move-object/from16 v211, v12

    move-wide/from16 v212, v13

    move-object/from16 v214, v15

    move-object v2, v1

    .line 6833
    .end local v2    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v3    # "ipr":I
    .end local v11    # "timesInFreqMs":[J
    .end local v12    # "u":Landroid/os/BatteryStats$Uid;
    .end local v13    # "totalStateTime":J
    .end local v15    # "cpuFreqTimes":[J
    .restart local v127    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .restart local v174    # "timesInFreqMs":[J
    .restart local v211    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v212    # "totalStateTime":J
    .restart local v214    # "cpuFreqTimes":[J
    nop

    .line 6834
    invoke-virtual/range {v211 .. v211}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v1

    .line 6835
    .local v1, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/16 v50, 0x1

    add-int/lit8 v3, v3, -0x1

    .local v3, "ipkg":I
    :goto_8f
    if-ltz v3, :cond_c9

    .line 6836
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "    Apk "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6837
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6838
    const/4 v4, 0x0

    .line 6839
    .local v4, "apkActivity":Z
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid$Pkg;

    .line 6840
    .local v5, "ps":Landroid/os/BatteryStats$Uid$Pkg;
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v7

    .line 6841
    .local v7, "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/16 v50, 0x1

    add-int/lit8 v8, v8, -0x1

    .local v8, "iwa":I
    :goto_90
    if-ltz v8, :cond_c4

    .line 6842
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "      Wakeup alarm "

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6843
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v9, v216

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6844
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/BatteryStats$Counter;

    move/from16 v11, p4

    invoke-virtual {v10, v11}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 6845
    const-string v10, " times"

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6846
    const/4 v4, 0x1

    .line 6841
    add-int/lit8 v8, v8, -0x1

    goto :goto_90

    :cond_c4
    move/from16 v11, p4

    move-object/from16 v9, v216

    .line 6848
    .end local v8    # "iwa":I
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v8

    .line 6849
    .local v8, "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v10

    const/16 v50, 0x1

    add-int/lit8 v10, v10, -0x1

    .local v10, "isvc":I
    :goto_91
    if-ltz v10, :cond_c7

    .line 6850
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    .line 6851
    .local v12, "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    move-wide/from16 v13, v125

    .end local v125    # "batteryUptime":J
    .local v13, "batteryUptime":J
    invoke-virtual {v12, v13, v14, v11}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v125

    .line 6852
    .local v125, "startTime":J
    invoke-virtual {v12, v11}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v15

    .line 6853
    .local v15, "starts":I
    move-object/from16 v216, v1

    .end local v1    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .local v216, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual {v12, v11}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v1

    .line 6854
    .local v1, "launches":I
    cmp-long v217, v125, v46

    if-nez v217, :cond_c6

    if-nez v15, :cond_c6

    if-eqz v1, :cond_c5

    goto :goto_92

    :cond_c5
    move/from16 v217, v3

    goto :goto_93

    .line 6855
    :cond_c6
    :goto_92
    move/from16 v217, v3

    const/4 v3, 0x0

    .end local v3    # "ipkg":I
    .local v217, "ipkg":I
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6856
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "      Service "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6857
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6858
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "        Created for: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6859
    move/from16 v218, v4

    .end local v4    # "apkActivity":Z
    .local v218, "apkActivity":Z
    div-long v3, v125, v19

    invoke-static {v0, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6860
    const-string/jumbo v3, "uptime\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6861
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "        Starts: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6862
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6863
    const-string v3, ", launches: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6864
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6865
    const/4 v3, 0x1

    move v4, v3

    .line 6849
    .end local v1    # "launches":I
    .end local v12    # "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    .end local v15    # "starts":I
    .end local v125    # "startTime":J
    .end local v218    # "apkActivity":Z
    .restart local v4    # "apkActivity":Z
    :goto_93
    add-int/lit8 v10, v10, -0x1

    move-wide/from16 v125, v13

    move-object/from16 v1, v216

    move/from16 v3, v217

    goto :goto_91

    .end local v13    # "batteryUptime":J
    .end local v216    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v217    # "ipkg":I
    .local v1, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v3    # "ipkg":I
    .local v125, "batteryUptime":J
    :cond_c7
    move-object/from16 v216, v1

    move/from16 v217, v3

    move/from16 v218, v4

    move-wide/from16 v13, v125

    .line 6868
    .end local v1    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v3    # "ipkg":I
    .end local v4    # "apkActivity":Z
    .end local v10    # "isvc":I
    .end local v125    # "batteryUptime":J
    .restart local v13    # "batteryUptime":J
    .restart local v216    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v217    # "ipkg":I
    .restart local v218    # "apkActivity":Z
    if-nez v218, :cond_c8

    .line 6869
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "      (nothing executed)"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6871
    :cond_c8
    const/16 v202, 0x1

    .line 6835
    .end local v5    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .end local v7    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .end local v8    # "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    .end local v218    # "apkActivity":Z
    add-int/lit8 v3, v217, -0x1

    move-wide/from16 v125, v13

    move-object/from16 v1, v216

    move-object/from16 v216, v9

    .end local v217    # "ipkg":I
    .restart local v3    # "ipkg":I
    goto/16 :goto_8f

    .end local v13    # "batteryUptime":J
    .end local v216    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v1    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .restart local v125    # "batteryUptime":J
    :cond_c9
    move/from16 v11, p4

    move/from16 v217, v3

    move-wide/from16 v13, v125

    move-object/from16 v9, v216

    const/16 v50, 0x1

    move-object/from16 v216, v1

    .line 6873
    .end local v1    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v3    # "ipkg":I
    .end local v125    # "batteryUptime":J
    .restart local v13    # "batteryUptime":J
    .restart local v216    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    if-nez v202, :cond_ca

    .line 6874
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "    (nothing executed)"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6119
    .end local v79    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v96    # "countWakelock":I
    .end local v123    # "mobileRxBytes":J
    .end local v127    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v128    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .end local v136    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v142    # "uid":I
    .end local v143    # "mobileTxBytes":J
    .end local v146    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v147    # "wifiScanCount":I
    .end local v148    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v149    # "uidMobileActiveCount":I
    .end local v150    # "mobileWakeup":J
    .end local v153    # "wifiTxBytes":J
    .end local v155    # "mobileRxPackets":J
    .end local v157    # "mobileTxPackets":J
    .end local v159    # "wifiRxPackets":J
    .end local v161    # "wifiTxPackets":J
    .end local v164    # "wifiRxBytes":J
    .end local v166    # "screenOffCpuFreqTimes":[J
    .end local v167    # "wifiScanTime":J
    .end local v169    # "wifiScanCountBg":I
    .end local v170    # "wifiScanActualTime":J
    .end local v172    # "wifiScanActualTimeBg":J
    .end local v174    # "timesInFreqMs":[J
    .end local v176    # "uidWifiRunningTime":J
    .end local v178    # "wifiWakeup":J
    .end local v180    # "uidMobileActiveTime":J
    .end local v185    # "mcTimer":Landroid/os/BatteryStats$Timer;
    .end local v186    # "btRxBytes":J
    .end local v188    # "btTxBytes":J
    .end local v190    # "fullWifiLockOnTime":J
    .end local v192    # "totalWindowWakelock":J
    .end local v194    # "systemCpuTimeUs":J
    .end local v196    # "totalPartialWakelock":J
    .end local v198    # "totalDrawWakelock":J
    .end local v200    # "totalFullWakelock":J
    .end local v202    # "uidActivity":Z
    .end local v203    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v204    # "userCpuTimeUs":J
    .end local v208    # "NSE":I
    .end local v211    # "u":Landroid/os/BatteryStats$Uid;
    .end local v212    # "totalStateTime":J
    .end local v214    # "cpuFreqTimes":[J
    .end local v216    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    :cond_ca
    :goto_94
    add-int/lit8 v1, v145, 0x1

    move-object/from16 v136, v9

    move v5, v11

    move-wide/from16 v125, v13

    move-object/from16 v13, v66

    move-wide/from16 v10, v138

    move-object/from16 v8, v163

    move-object/from16 v79, v175

    move-wide/from16 v123, v182

    move-object/from16 v15, v184

    move-wide/from16 v127, v206

    move-object/from16 v146, v215

    move-object/from16 v14, p0

    move v9, v1

    move-object v1, v2

    move-wide/from16 v2, v209

    .end local v145    # "iu":I
    .local v1, "iu":I
    goto/16 :goto_3f

    .line 6877
    .end local v1    # "iu":I
    .end local v13    # "batteryUptime":J
    .end local v95    # "NU":I
    .end local v138    # "whichBatteryRealtime":J
    .end local v182    # "mobileActiveTime":J
    .end local v206    # "rawRealtimeMs":J
    .end local v209    # "rawRealtime":J
    .local v2, "rawRealtime":J
    .local v10, "whichBatteryRealtime":J
    .local v12, "NU":I
    .local v123, "mobileActiveTime":J
    .restart local v125    # "batteryUptime":J
    .local v127, "rawRealtimeMs":J
    :cond_cb
    return-void
.end method

.method public blacklist dumpProtoLocked(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/util/List;IJLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p4, "flags"    # I
    .param p5, "histStart"    # J
    .param p7, "dumpHelper"    # Landroid/os/BatteryStats$BatteryStatsDumpHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/FileDescriptor;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;IJ",
            "Landroid/os/BatteryStats$BatteryStatsDumpHelper;",
            ")V"
        }
    .end annotation

    .line 8018
    .local p3, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 8019
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    invoke-virtual {p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    .line 8021
    and-int/lit8 v1, p4, 0x18

    if-eqz v1, :cond_0

    .line 8022
    invoke-direct {p0, v0, p4, p5, p6}, Landroid/os/BatteryStats;->dumpProtoHistoryLocked(Landroid/util/proto/ProtoOutputStream;IJ)V

    .line 8023
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 8024
    return-void

    .line 8027
    :cond_0
    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 8029
    .local v1, "bToken":J
    const-wide v3, 0x10500000001L

    const/16 v5, 0x24

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8030
    const-wide v3, 0x10300000002L

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getParcelVersion()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8031
    const-wide v3, 0x10900000003L

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getStartPlatformVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8032
    const-wide v3, 0x10900000004L

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getEndPlatformVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8034
    and-int/lit8 v3, p4, 0x4

    if-nez v3, :cond_1

    .line 8035
    nop

    .line 8036
    const/4 v3, 0x0

    invoke-interface {p7, p0, v3}, Landroid/os/BatteryStats$BatteryStatsDumpHelper;->getBatteryUsageStats(Landroid/os/BatteryStats;Z)Landroid/os/BatteryUsageStats;

    move-result-object v3

    .line 8037
    .local v3, "stats":Landroid/os/BatteryUsageStats;
    new-instance v4, Landroid/os/BatteryStats$ProportionalAttributionCalculator;

    invoke-direct {v4, p1, v3}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;-><init>(Landroid/content/Context;Landroid/os/BatteryUsageStats;)V

    .line 8039
    .local v4, "proportionalAttributionCalculator":Landroid/os/BatteryStats$ProportionalAttributionCalculator;
    invoke-direct {p0, v0, v3, p3, v4}, Landroid/os/BatteryStats;->dumpProtoAppsLocked(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryUsageStats;Ljava/util/List;Landroid/os/BatteryStats$ProportionalAttributionCalculator;)V

    .line 8040
    invoke-direct {p0, v0, v3}, Landroid/os/BatteryStats;->dumpProtoSystemLocked(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryUsageStats;)V

    .line 8043
    .end local v3    # "stats":Landroid/os/BatteryUsageStats;
    .end local v4    # "proportionalAttributionCalculator":Landroid/os/BatteryStats$ProportionalAttributionCalculator;
    :cond_1
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8044
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 8045
    return-void
.end method

.method final greylist-max-o formatBytesLocked(J)Ljava/lang/String;
    .locals 5
    .param p1, "bytes"    # J

    .line 3761
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3763
    const-wide/16 v0, 0x400

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 3764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3765
    :cond_0
    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 3766
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    long-to-double v1, p1

    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%.2fKB"

    invoke-virtual {v0, v2, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 3767
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3768
    :cond_1
    const-wide/32 v0, 0x40000000

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 3769
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    long-to-double v1, p1

    const-wide/high16 v3, 0x4130000000000000L    # 1048576.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%.2fMB"

    invoke-virtual {v0, v2, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 3770
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3772
    :cond_2
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    long-to-double v1, p1

    const-wide/high16 v3, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%.2fGB"

    invoke-virtual {v0, v2, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 3773
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final greylist-max-o formatRatioLocked(JJ)Ljava/lang/String;
    .locals 4
    .param p1, "num"    # J
    .param p3, "den"    # J

    .line 3751
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    .line 3752
    const-string v0, "--%"

    return-object v0

    .line 3754
    :cond_0
    long-to-float v0, p1

    long-to-float v1, p3

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    .line 3755
    .local v0, "perc":F
    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3756
    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%.1f%%"

    invoke-virtual {v1, v3, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 3757
    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public abstract blacklist getActiveRadioDurationMs(IIIJ)J
.end method

.method public abstract blacklist getActiveRxRadioDurationMs(IIJ)J
.end method

.method public abstract blacklist getActiveTxRadioDurationMs(IIIJ)J
.end method

.method public blacklist getBatteryCapacity()I
    .locals 2

    .line 3638
    invoke-virtual {p0}, Landroid/os/BatteryStats;->getLearnedBatteryCapacity()I

    move-result v0

    .line 3639
    .local v0, "batteryCapacityUah":I
    if-lez v0, :cond_0

    .line 3640
    div-int/lit16 v1, v0, 0x3e8

    return v1

    .line 3642
    :cond_0
    invoke-virtual {p0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v0

    .line 3643
    if-lez v0, :cond_1

    .line 3644
    div-int/lit16 v1, v0, 0x3e8

    return v1

    .line 3646
    :cond_1
    invoke-virtual {p0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v1

    return v1
.end method

.method public abstract greylist-max-o getBatteryRealtime(J)J
.end method

.method public abstract greylist getBatteryUptime(J)J
.end method

.method public abstract blacklist getBluetoothBatteryStats()Landroid/os/BluetoothBatteryStats;
.end method

.method public abstract greylist-max-o getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract blacklist getBluetoothEnergyConsumptionUC()J
.end method

.method public abstract greylist-max-o getBluetoothScanTime(JI)J
.end method

.method public abstract blacklist getCameraEnergyConsumptionUC()J
.end method

.method public abstract greylist-max-o getCameraOnTime(JI)J
.end method

.method public abstract greylist-max-o getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract blacklist getCpuEnergyConsumptionUC()J
.end method

.method public abstract blacklist getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;
.end method

.method public abstract greylist-max-o getCurrentDailyStartTime()J
.end method

.method public abstract blacklist getCustomEnergyConsumerBatteryConsumptionUC()[J
.end method

.method public abstract blacklist getCustomEnergyConsumerNames()[Ljava/lang/String;
.end method

.method public abstract greylist-max-o getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract greylist-max-o getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract greylist-max-o getDailyItemLocked(I)Landroid/os/BatteryStats$DailyItem;
.end method

.method public abstract greylist-max-o getDailyPackageChanges()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getDeviceIdleModeCount(II)I
.end method

.method public abstract greylist-max-o getDeviceIdleModeTime(IJI)J
.end method

.method public abstract greylist-max-o getDeviceIdlingCount(II)I
.end method

.method public abstract greylist-max-o getDeviceIdlingTime(IJI)J
.end method

.method public abstract greylist-max-o getDischargeAmount(I)I
.end method

.method public abstract greylist-max-o getDischargeAmountScreenDoze()I
.end method

.method public abstract greylist-max-o getDischargeAmountScreenDozeSinceCharge()I
.end method

.method public abstract greylist-max-o getDischargeAmountScreenOff()I
.end method

.method public abstract greylist-max-o getDischargeAmountScreenOffSinceCharge()I
.end method

.method public abstract greylist-max-o getDischargeAmountScreenOn()I
.end method

.method public abstract greylist-max-o getDischargeAmountScreenOnSinceCharge()I
.end method

.method public abstract greylist-max-o getDischargeCurrentLevel()I
.end method

.method public abstract greylist-max-o getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract greylist-max-o getDischargeStartLevel()I
.end method

.method public abstract blacklist getDisplayCount()I
.end method

.method public abstract blacklist getDisplayScreenBrightnessTime(IIJ)J
.end method

.method public abstract blacklist getDisplayScreenDozeTime(IJ)J
.end method

.method public abstract blacklist getDisplayScreenOnTime(IJ)J
.end method

.method public abstract greylist-max-o getEndPlatformVersion()Ljava/lang/String;
.end method

.method public abstract greylist-max-o getEstimatedBatteryCapacity()I
.end method

.method public abstract greylist-max-o getFlashlightOnCount(I)J
.end method

.method public abstract greylist-max-o getFlashlightOnTime(JI)J
.end method

.method public abstract greylist getGlobalWifiRunningTime(JI)J
.end method

.method public abstract blacklist getGnssEnergyConsumptionUC()J
.end method

.method public abstract greylist-max-o getGpsBatteryDrainMaMs()J
.end method

.method public abstract greylist-max-o getGpsSignalQualityTime(IJI)J
.end method

.method public abstract greylist-max-o getHighDischargeAmountSinceCharge()I
.end method

.method public abstract greylist-max-o getHistoryStringPoolBytes()I
.end method

.method public abstract greylist-max-o getHistoryStringPoolSize()I
.end method

.method public abstract greylist-max-o getHistoryTagPoolString(I)Ljava/lang/String;
.end method

.method public abstract greylist-max-o getHistoryTagPoolUid(I)I
.end method

.method public abstract greylist-max-o getHistoryTotalSize()I
.end method

.method public abstract greylist-max-o getHistoryUsedSize()I
.end method

.method public abstract greylist-max-o getInteractiveTime(JI)J
.end method

.method public abstract greylist-max-o getIsOnBattery()Z
.end method

.method public abstract greylist-max-o getKernelMemoryStats()Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray<",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getKernelWakelockStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getLearnedBatteryCapacity()I
.end method

.method public abstract greylist-max-o getLongestDeviceIdleModeTime(I)J
.end method

.method public abstract greylist-max-o getLowDischargeAmountSinceCharge()I
.end method

.method public abstract greylist-max-o getMaxLearnedBatteryCapacity()I
.end method

.method public abstract greylist-max-o getMinLearnedBatteryCapacity()I
.end method

.method public abstract greylist-max-o getMobileRadioActiveAdjustedTime(I)J
.end method

.method public abstract greylist-max-o getMobileRadioActiveCount(I)I
.end method

.method public abstract greylist-max-p getMobileRadioActiveTime(JI)J
.end method

.method public abstract greylist-max-o getMobileRadioActiveUnknownCount(I)I
.end method

.method public abstract greylist-max-o getMobileRadioActiveUnknownTime(I)J
.end method

.method public abstract blacklist getMobileRadioEnergyConsumptionUC()J
.end method

.method public abstract greylist-max-o getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract greylist-max-p getNetworkActivityBytes(II)J
.end method

.method public abstract greylist-max-o getNetworkActivityPackets(II)J
.end method

.method public abstract greylist-max-o getNextMaxDailyDeadline()J
.end method

.method public abstract greylist-max-o getNextMinDailyDeadline()J
.end method

.method public abstract blacklist getNrNsaTime(J)J
.end method

.method public abstract greylist-max-o getNumConnectivityChange(I)I
.end method

.method public abstract greylist-max-o getParcelVersion()I
.end method

.method public abstract greylist-max-o getPhoneDataConnectionCount(II)I
.end method

.method public abstract greylist-max-o getPhoneDataConnectionTime(IJI)J
.end method

.method public abstract greylist-max-o getPhoneDataConnectionTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract blacklist getPhoneEnergyConsumptionUC()J
.end method

.method public abstract greylist-max-o getPhoneOnCount(I)I
.end method

.method public abstract greylist getPhoneOnTime(JI)J
.end method

.method public abstract greylist-max-o getPhoneSignalScanningTime(JI)J
.end method

.method public abstract greylist-max-o getPhoneSignalScanningTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getPhoneSignalStrengthCount(II)I
.end method

.method public abstract greylist getPhoneSignalStrengthTime(IJI)J
.end method

.method protected abstract greylist-max-o getPhoneSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getPowerSaveModeEnabledCount(I)I
.end method

.method public abstract greylist-max-o getPowerSaveModeEnabledTime(JI)J
.end method

.method public abstract greylist-max-o getRpmStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist getScreenBrightnessTime(IJI)J
.end method

.method public abstract greylist-max-o getScreenBrightnessTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getScreenDozeCount(I)I
.end method

.method public abstract blacklist getScreenDozeEnergyConsumptionUC()J
.end method

.method public abstract greylist-max-o getScreenDozeTime(JI)J
.end method

.method public abstract greylist-max-o getScreenOffRpmStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getScreenOnCount(I)I
.end method

.method public abstract blacklist getScreenOnEnergyConsumptionUC()J
.end method

.method public abstract greylist getScreenOnTime(JI)J
.end method

.method public abstract greylist-max-o getStartClockTime()J
.end method

.method public abstract greylist-max-o getStartCount()I
.end method

.method public abstract greylist-max-o getStartPlatformVersion()Ljava/lang/String;
.end method

.method public abstract blacklist getStatsStartRealtime()J
.end method

.method public abstract blacklist getSystemServiceTimeAtCpuSpeeds()[J
.end method

.method public abstract greylist-max-o getUahDischarge(I)J
.end method

.method public abstract greylist-max-o getUahDischargeDeepDoze(I)J
.end method

.method public abstract greylist-max-o getUahDischargeLightDoze(I)J
.end method

.method public abstract greylist-max-o getUahDischargeScreenDoze(I)J
.end method

.method public abstract greylist-max-o getUahDischargeScreenOff(I)J
.end method

.method public abstract greylist getUidStats()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/BatteryStats$Uid;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getWakeLockStats()Landroid/os/WakeLockStats;
.end method

.method public abstract greylist-max-o getWakeupReasonStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getWifiActiveTime(JI)J
.end method

.method public abstract greylist-max-o getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract blacklist getWifiEnergyConsumptionUC()J
.end method

.method public abstract greylist-max-o getWifiMulticastWakelockCount(I)I
.end method

.method public abstract greylist-max-o getWifiMulticastWakelockTime(JI)J
.end method

.method public abstract greylist getWifiOnTime(JI)J
.end method

.method public abstract greylist-max-o getWifiSignalStrengthCount(II)I
.end method

.method public abstract greylist-max-o getWifiSignalStrengthTime(IJI)J
.end method

.method public abstract greylist-max-o getWifiSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getWifiStateCount(II)I
.end method

.method public abstract greylist-max-o getWifiStateTime(IJI)J
.end method

.method public abstract greylist-max-o getWifiStateTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getWifiSupplStateCount(II)I
.end method

.method public abstract greylist-max-o getWifiSupplStateTime(IJI)J
.end method

.method public abstract greylist-max-o getWifiSupplStateTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o hasBluetoothActivityReporting()Z
.end method

.method public abstract greylist-max-o hasModemActivityReporting()Z
.end method

.method public abstract greylist-max-o hasWifiActivityReporting()Z
.end method

.method public abstract blacklist isProcessStateDataAvailable()Z
.end method

.method public abstract blacklist iterateBatteryStatsHistory(JJ)Lcom/android/internal/os/BatteryStatsHistoryIterator;
.end method

.method public greylist-max-o prepareForDumpLocked()V
    .locals 0

    .line 6933
    return-void
.end method
